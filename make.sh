#!/bin/bash

# Copyright 2014 Mitchell Kember. Subject to the MIT License.

C='sch4u'
P='sph4u'
M='mcv4u'
mark="$(cd "$(dirname "$0")" && pwd)/mark.sh"

notes="$HOME/ia/Website"

export PERL_UNICODE=SDA

if [[ "$1" == 'clean' ]]; then
	find $C -name "*.html" -delete
	find $P -name "*.html" -delete
	find $M -name "*.html" -delete
fi

if [[ "$1" == 'all' || "$1" == 'gen' ]]; then
	echo "Don't forget!"
	echo "- current school term or co-op company"
	echo "- When I'm not studying / When I'm not at work"
	echo "- latest project"
	./gen-templates.pl
	cp -nf ./templates/dist/home.html ./index.html
fi

# No longer doing this automatically with "all".
if [[ "$1" == 'svg' ]]; then
	fmap.sh ./fix-svg.pl $C/images/*.svg $P/images/*.svg $M/images/*.svg
fi

if [[ "$1" == 'all' || "$1" == "$C" ]]; then
	"$mark" -m < "$notes/Chemistry.md" | ./build-course.pl Chemistry sch4u
fi

if [[ "$1" == 'all' || "$1" == "$P" ]]; then
	"$mark" -m < "$notes/Physics.md" | ./build-course.pl Physics sph4u
fi

if [[ "$1" == 'all' || "$1" == "$M" ]]; then
	"$mark" -m < "$notes/Calculus & Vectors.md" | ./build-course.pl "Calculus & Vectors" mcv4u
fi
