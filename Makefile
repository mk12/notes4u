courses := mcv4u sch4u sph4u

pandoc_aux := config.yml filter.lua template.html

validate_exceptions := \
	'.*not allowed as child of element “mo”.*'

define usage
Targets:
	all        Build the website in out/
	precommit  Run before committing
	help       Show this help message
	fmt        Format code
	lint       Lint code
	validate   Validate HTML output
	clean      Remove generated files
endef

.PHONY: all help precommit $(courses) fmt lint validate clean

all: $(courses)

help:
	$(info $(usage))
	@:

precommit: fmt lint all validate

$(courses): %: notes/%.md $(pandoc_aux)
#	pandoc -d config.yml $<
	pandoc -d config.yml test.md

fmt:
	find . -type f -name "*.ts" | xargs deno fmt

lint:
	find . -type f -name "*.sh" | xargs shellcheck
	find . -type f -name "*.ts" | xargs deno lint --unstable

validate:
	find out -type f -name "*.html" \
	| xargs vnu --filterpattern $(validate_exceptions)

clean:
	rm -f $(html)
