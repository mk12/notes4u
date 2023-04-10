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
	FONT_URL   WOFF2 font directory URL (default: $(default_font_url))
	HOME_URL   Homepage URL to link to when embedding in a larger site
	ANALYTICS  HTML file to include for analytics
endef

parts := notes4u mcv4u sch4u sph4u

.PHONY: all help watch check fmt lint validate clean $(parts)

default_destdir := public
default_font_url := ../../fonts

DESTDIR ?= $(default_destdir)
FONT_URL ?= $(default_font_url)

pandoc_flags := -M year=$$(date +%Y)
ifdef HOME_URL
pandoc_flags += -M site_home_url=$(HOME_URL)
endif
ifdef ANALYTICS
pandoc_flags += -M analytics_file=$(ANALYTICS)
endif

src_svg := $(wildcard assets/*/*.svg)
src_assets := $(wildcard assets/*/images/*.jpg assets/*/resources/*.pdf)
src_input := config.yml writer.lua $(wildcard templates/*.html)
src_css := assets/style.css
src_ts := math.ts

stamps := $(parts:%=$(DESTDIR)/%/.stamp)
assets := $(src_assets:assets/%=$(DESTDIR)/%)
css := $(DESTDIR)/notes4u/style.css
all := $(stamps) $(assets) $(css)

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

$(stamps): $(DESTDIR)/%/.stamp: notes/%.md $(src_input) | $(css)
	pandoc -d config.yml -M destdir=$(DESTDIR) $(pandoc_flags) $<
	touch $@

$(assets): $(DESTDIR)/%: | assets/%
	ln -sfn $(CURDIR)/$(firstword $|) $@

$(css): $(src_css)
	sed 's#$$FONT_URL#$(FONT_URL)#' $< > $@

$(sort $(dir $(all))):
	mkdir -p $@

.SECONDEXPANSION:

$(all): | $$(@D)/

percent := %
$(stamps): $(DESTDIR)/%/.stamp: \
	$$(filter assets/%/$$(percent),$$(src_svg)) \
	| $$(filter $$(DESTDIR)/%/$$(percent),$$(assets))
