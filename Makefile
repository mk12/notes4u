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
	DESTDIR    Destination directory
	FONT_PATH  Path to WOFF2 fonts relative to DESTDIR
	ANALYTICS  HTML file to include for analytics
endef

parts := notes4u mcv4u sch4u sph4u

.PHONY: all help watch check fmt lint validate clean $(parts) foo-sch4u

DESTDIR ?= public
FONT_PATH ?= ../fonts

ifdef ANALYTICS
analytics_flag := -M analytics_file=$(ANALYTICS)
endif

src_svg := $(wildcard assets/*/*.svg)
src_assets := $(wildcard assets/*/images/*.jpg assets/*/resources/*.pdf)
src_css := assets/style.css
src_ts := math.ts

stamps := $(parts:%=$(DESTDIR)/%/.stamp)
assets := $(src_assets:assets/%=$(DESTDIR)/%)
css := $(DESTDIR)/notes4u/style.css

fonts_basename := $(shell rg '/([^/]+\.woff2)' -r '$$1' -o $(src_css))
fonts := $(abspath $(fonts_basename:%=$(DESTDIR)/$(FONT_PATH)/%))

subdirs := $(DESTDIR)/ $(parts:%=$(DESTDIR)/%/) $(sort $(dir $(assets)))

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
	rm -rf public

$(parts): %: $(DESTDIR)/%/.stamp

$(stamps): $(DESTDIR)/%/.stamp: notes/%.md | $(css)
	pandoc -d config.yml -M destdir=$(DESTDIR) $(analytics_flag) $<
	touch $@

$(assets): $(DESTDIR)/%: assets/%
	cp $< $@

$(css): $(src_css) | $(fonts)
	sed 's#$$FONT_PATH#$(FONT_PATH)#' $< > $@

$(fonts):
	$(error Missing font file $@)

$(subdirs):
	mkdir $@

.SECONDEXPANSION:

$(stamps) $(assets) $(css) $(subdirs): | $$(dir $$(patsubst %/,%,$$@))

percent := %
$(stamps): $(DESTDIR)/%/.stamp: \
	$$(filter assets/%/$$(percent),$$(src_svg)) \
	| $$(filter $$(DESTDIR)/%/$$(percent),$$(assets))
