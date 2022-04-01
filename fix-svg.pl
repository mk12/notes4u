#!/usr/bin/env perl

# Copyright 2014 Mitchell Kember. Subject to the MIT License.

use strict;
use warnings;
use warnings qw(FATAL utf8);
use autodie;
use utf8;
use open IN => ":encoding(utf8)", OUT => ":utf8";

while(<>) {
	unless (/^<(\?xml version|!-- Generator|!DOCTYPE)/) {
		chomp;
		s/[\t\r]//g;
		s/ConcourseT3/Concourse T3/g;
		s/EquityTextB/Equity Text B/g;
		s/-Italic'"/'" font-style="italic"/g;
		s/-Bold'"/'" font-weight="bold"/g;
		print;
	}
}
