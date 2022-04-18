DESTDIR ?= out

ifeq (,$(DESTDIR))
$(error DESTDIR cannot be empty)
endif

# TODO: need to copy css, svgs, and have webfonts linked without storing them in
# the GitHub repository. Possible also have a homepage.

courses := mcv4u sch4u sph4u
html_dirs := $(addprefix $(DESTDIR)/,$(courses))
pandoc_aux := config.yml filter.lua $(wildcard *.html)
validate_exceptions := '.*not allowed as child of element “mo”.*'

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

.PHONY: all help precommit $(courses) fmt lint validate clean

all: $(courses)

help:
	$(info $(usage))
	@:

precommit: fmt lint all validate

$(courses): %: notes/%.md $(pandoc_aux)
	mkdir -p $(DESTDIR)/$@
	pandoc -d config.yml -M destdir=$(DESTDIR)/$@ $<

fmt:
	find . -type f -name "*.ts" | xargs deno fmt

lint:
	find . -type f -name "*.sh" | xargs shellcheck
	find . -type f -name "*.ts" | xargs deno lint --unstable

validate:
	find $(html_dirs) -type f -name "*.html" \
	| xargs vnu --filterpattern $(validate_exceptions)

clean:
	rm -rf $(html_dirs)
