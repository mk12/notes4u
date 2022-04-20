DESTDIR ?= out

ifeq (,$(DESTDIR))
$(error DESTDIR cannot be empty)
endif

courses := mcv4u sch4u sph4u
html_dirs := $(addprefix $(DESTDIR)/,$(courses))
pandoc_aux := config.yml filter.lua $(wildcard templates/*.html)

validate_exceptions := \
	'.*($\
	not allowed as child of element “mo”$\
	|Text run starts with a composing character$\
	|Document uses the Unicode Private Use Area\(s\)$\
	).*'

define usage
Targets:
	all        Generate HTML in $(DESTDIR)/
	help       Show this help message
	precommit  Run before committing
	fmt        Format code
	lint       Lint code
	validate   Validate HTML files
	clean      Remove HTML files
endef

.PHONY: all help precommit home $(courses) fmt lint validate clean

all: home $(courses)

help:
	$(info $(usage))
	@:

precommit: fmt lint all validate

home: notes/home.md $(pandoc_aux)
	mkdir -p $(DESTDIR)
	pandoc -d config.yml $< -M home=true -M dest_dir=$(DESTDIR)

$(courses): %: notes/%.md $(pandoc_aux)
	mkdir -p $(DESTDIR)/$@
	pandoc -d config.yml $< \
	-M dest_dir=$(DESTDIR)/$@ \
	-M svg_dir=svg/$@

fmt:
	find . -type f -name "*.ts" | xargs deno fmt

lint:
	find . -type f -name "*.ts" | xargs deno lint --unstable

validate:
	find $(html_dirs) -type f -name "*.html" \
	| xargs vnu --filterpattern $(validate_exceptions)

clean:
	rm -rf $(html_dirs)
