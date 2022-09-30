# Copyright 2022 Mitchell Kember. Subject to the MIT License.

define usage
Targets:
	all        Build website
	help       Show this help message
	check      Run before committing
	fmt        Format code
	lint       Lint code
	validate   Validate HTML files
	clean      Remove build output

Variables:
	DESTDIR    Destination directory for website
	FONT_PATH  Path to WOFF2 fonts relative to DESTDIR
	ANALYTICS  HTML file to include for analytics
endef

parts := notes4u mcv4u sch4u sph4u

.PHONY: all help watch check fmt lint validate clean fonts $(parts)

DESTDIR ?= public
FONT_PATH ?= ../fonts

ifneq ($(ANALYTICS),)
analytics_flag := -M analytics_file=$(ANALYTICS)
endif

stamps := $(parts:%=$(DESTDIR)/%/.stamp)
src_ts := math.ts
css := $(DESTDIR)/notes4u/style.css
# Note that SVGs aren't included here because we embed them in the HTML.
src_assets := $(shell find assets -type f -name "*.jpg" -o -name "*.pdf")
assets := $(src_assets:assets/%=$(DESTDIR)/%)

# Proprietary fonts that must be provided externally.
fonts := $(patsubst %,$(DESTDIR)/$(FONT_PATH)/%.woff2,\
	concourse_3_regular concourse_3_bold \
	equity_b_regular equity_b_italic equity_b_bold \
	equity_b_caps_regular equity_b_caps_bold)

# This must be lazy so we can mkdir $(DESTDIR)/$(FONT_PATH) before the wildcard.
missing_fonts = $(filter-out $(wildcard $(fonts)),$(fonts))

# HTML validation errors to ignore.
validate_exceptions := \
	'.*($\
	not allowed as child of element “mo”$\
	|Text run starts with a composing character$\
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
	find $(DESTDIR) -type f -name "*.html" \
	| xargs vnu --filterpattern $(validate_exceptions)

clean:
	rm -rf public

fonts: $(DESTDIR)/$(FONT_PATH)
	$(if $(missing_fonts),$(error Missing fonts: $(missing_fonts)),)

$(parts): %: $(DESTDIR)/%/.stamp

$(stamps): $(DESTDIR)/%/.stamp: notes/%.md | $(DESTDIR)/% $(css) $(assets) fonts
	pandoc -d config.yml -M destdir=$(DESTDIR) $(analytics_flag) $<
	touch $@

$(DESTDIR)/mcv4u/.stamp: $(wildcard assets/mcv4u/*.svg)
$(DESTDIR)/sch4u/.stamp: $(wildcard assets/sch4u/*.svg)
$(DESTDIR)/sph4u/.stamp: $(wildcard assets/sph4u/*.svg)

$(assets): $(DESTDIR)/%: assets/%
	mkdir -p $(dir $@)
	cp $< $@

$(css): $(DESTDIR)/notes4u/%: assets/% | $(DESTDIR)/notes4u
	sed 's#$$FONT_PATH#$(FONT_PATH)#' $< > $@

$(shell echo $(DESTDIR)/{notes4u,sch4u{,/images,/resources},sph4u,mcv4u,$\
		$(FONT_PATH)}):
	mkdir -p $@
