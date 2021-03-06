default_destdir := out
DESTDIR ?= $(default_destdir)
ifeq (,$(DESTDIR))
$(error DESTDIR cannot be empty)
endif

# Optionally include an analytics snippet in the header.
ifneq (,$(ANALYTICS))
analytics_flag := -M analytics_file=$(ANALYTICS)
endif

# Parts of the website generated by separate pandoc invocations.
parts := home mcv4u sch4u sph4u

# Assets to copy to the website (not SVGs since they are embedded).
src_assets := $(shell find assets -type f -name "*.jpg" -o -name "*.pdf")
assets := $(patsubst assets/%,$(DESTDIR)/%,$(src_assets))
css := $(DESTDIR)/notes4u/style.css

# Proprietary fonts that must be provided externally.
fonts := \
	fonts/concourse_t3_bold-webfont.woff2 \
	fonts/concourse_t3_regular-webfont.woff2 \
	fonts/equity_caps_b_bold-webfont.woff2 \
	fonts/equity_caps_b_regular-webfont.woff2 \
	fonts/equity_text_b_bold-webfont.woff2 \
	fonts/equity_text_b_italic-webfont.woff2 \
	fonts/equity_text_b_regular-webfont.woff2

ifneq ($(fonts),$(wildcard $(fonts)))
$(error Missing some fonts! Please provide: $(fonts))
endif

# HTML validation errors to ignore.
validate_exceptions := \
	'.*($\
	not allowed as child of element “mo”$\
	|Text run starts with a composing character$\
	|Document uses the Unicode Private Use Area\(s\)$\
	).*'

define usage
Targets:
	all        Generate website in $(DESTDIR)/
	help       Show this help message
	precommit  Run before committing
	fmt        Format code
	lint       Lint code
	validate   Validate HTML files
endef

.PHONY: all help precommit $(parts) subdirs assets fmt lint validate

all: $(parts)

help:
	$(info $(usage))
	@:

precommit: fmt lint all validate

$(parts): %: notes/%.md subdirs $(assets) $(css)
	pandoc -d config.yml -M destdir=$(DESTDIR) $(analytics_flag) $<

$(assets): $(DESTDIR)/%: assets/% | subdirs
	cp $< $@

$(css): assets/$(notdir $(css)) | subdirs
	cp $< $@

subdirs:
	mkdir -p $(DESTDIR)/{notes4u,sch4u{,/images,/resources},sph4u,mcv4u}

fmt:
	find . -type f -name "*.ts" | xargs deno fmt

lint:
	find . -type f -name "*.ts" | xargs deno lint --unstable

validate:
	find $(default_destdir) -type f -name "*.html" \
	| xargs vnu --filterpattern $(validate_exceptions)
