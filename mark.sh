#!/bin/bash

# This script converts some Writedown (used by iA Writer) plus some of my custom
# extensions to standard Markdown before letting Pandoc take over.

name=$(basename "$0")
usage="usage: $name [-smh] [pandoc options]"

standalone=
math=

while getopts ':smh' opt; do
	case $opt in
		s) standalone=1;;
		m) math=1;;
		h)
			echo "$usage"
			exit 0
			;;
		:)
			echo "$name: $OPTARG: missing argument" >&2
			echo "$usage" >&2
			exit 1
			;;
	esac
done
shift $(( $OPTIND -1 ))

perl -C0 -pe \
"$([[ -n "$math" ]] && echo \
's/^(> )?\t([^\t].*)/$1\<p\ style=\"text-align:center\"\>$2\<\/p\>/;'\
)"\
's/^([-+*]{2,5}) /"\t" x (length($1) - 1) . substr($1, 0, 1) . $"/e;'\
's/^((\d+\.){1,2})(\d+\. )/"\t" x ($1 =~ tr!.!!) . $3/e;' | \
pandoc -f markdown+mmd_title_block+ascii_identifiers-intraword_underscores -t html5 \
-S $([[ -n "$standalone" ]] && echo -s ) "$@" \
$([[ -n "$math" && -n "$standalone" ]] && echo --mathjax=\"https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=AM_HTMLorMML.js\" ) | \
perl -C0 -pe \
's/&quot;/"/g;'\
's/ – /—/g;'\
's/ × /&nbsp;×&nbsp;/;'\
's/∆/Delta\ /g;'\
's/\b(\d[\d\.]+) ((º)?[a-zA-Z]{1,3})/$1&nbsp;$2/g;'\
"$([[ -n "$math" ]] && echo \
's/\<\/?code\>/\`/g;'\
)"\
's/^([^`]*)ºC/$1\<span class=\"degree\"\>º\<\/span\>C/g;'

# 's/\b-(?![\s-])(.+?)(?<![\s-\\])-\b/\~\~$1\~\~/g;'\
# 's/\<pre\>\<code\>/\<pre\>/g;'\
# 's/\<\/code\>\<\/pre\>/\<\/pre\>/g;'\
# 's/\<pre\>/\<p\ style=\"text-align:center\"\>/g;'\
# 's/\<\/pre\>/\<\/p\>/g;'\
