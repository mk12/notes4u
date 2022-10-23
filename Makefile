# Copyright 2022 Mitchell Kember. Subject to the MIT License.

define usage
Targets:
	all        Build the website
	help       Show this help message
	check      Run before committing
	fmt        Format code
	lint       Lint code
	validate   Validate HTML files
	clean      Remove build output
	PART       Build PART (one of: $(parts))

Variables:
	DESTDIR    Destination directory (default: $(default_destdir))
	FONT_PATH  Path to WOFF2 fonts (default: $(default_font_path))
	ANALYTICS  HTML file to include for analytics
endef

parts := notes4u mcv4u sch4u sph4u

.PHONY: all help watch check fmt lint validate clean $(parts)

default_destdir := public
default_font_path := fonts

DESTDIR ?= $(default_destdir)
FONT_PATH ?= $(default_font_path)

ifdef ANALYTICS
analytics_flag := -M analytics_file=$(ANALYTICS)
endif

src_svg := $(wildcard assets/*/*.svg)
src_assets := $(wildcard assets/*/images/*.jpg assets/*/resources/*.pdf)
src_input := config.yml writer.lua $(wildcard templates/*.html)
src_css := assets/style.css
src_ts := math.ts

stamps := $(parts:%=$(DESTDIR)/%/.stamp)
assets := $(src_assets:assets/%=$(DESTDIR)/%)
css := $(DESTDIR)/notes4u/style.css

fonts_basename := $(shell rg '/([^/]+\.woff2)' -r '$$1' -o $(src_css))
fonts := $(fonts_basename:%=$(FONT_PATH)/%)

directories := $(DESTDIR) $(parts:%=$(DESTDIR)/%) $(sort $(dir $(assets)))
directories := $(directories:%/=%)

validate_exceptions := \
	'.*($\
	Text run starts with a composing character$\
	|Document uses the Unicode Private Use Area\(s\)$\
	).*'

.SUFFIXES:

all: $(parts)

help:
	$(info $(usage))
	@:

check: fmt lint all validate

fmt:
	deno fmt $(src_ts)

lint:
	deno lint --unstable $(src_ts)

validate: all
	fd -g '*.html' $(DESTDIR) | xargs vnu --filterpattern $(validate_exceptions)

clean:
	rm -rf $(default_destdir)

$(parts): %: $(DESTDIR)/%/.stamp

$(stamps): $(DESTDIR)/%/.stamp: notes/%.md config.yml $(src_input) | $(css)
	pandoc -d $(word 2,$^) -M destdir=$(DESTDIR) $(pandoc_flags) $<
	touch $@

$(assets): $(DESTDIR)/%: | assets/%
	ln -sf $(CURDIR)/$(firstword $|) $@

$(css): $(src_css) | $(fonts)
	sed 's#$$FONT_PATH#$(shell python3 -c '$\
		import os.path; $\
		print(os.path.relpath("$(FONT_PATH)", "$(@D)")) $\
	')#' $< > $@

$(fonts):
	$(if $(wildcard $@),,$(error Missing font file $@))

$(directories):
	mkdir -p $@

.SECONDEXPANSION:

$(stamps) $(assets) $(css) $(directories): | $$(@D)

percent := %
$(stamps): $(DESTDIR)/%/.stamp: \
	$$(filter assets/%/$$(percent),$$(src_svg)) \
	| $$(filter $$(DESTDIR)/%/$$(percent),$$(assets))
