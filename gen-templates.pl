#!/usr/bin/env perl

# Copyright 2014 Mitchell Kember. Subject to the MIT License.

use strict;
use warnings;
use warnings qw(FATAL utf8);
use autodie;
use File::Slurp;
use utf8;
use open IN => ":encoding(utf8)", OUT => ":utf8";

my @filenames = qw(home course unit section 403 404);
my @substs = ();
for my $fn (@filenames) {
	open(my $fh, '<:utf8', 'templates/' . $fn . '.txt');
	my $multiline_key = 0;
	my %subst = ();
	while (<$fh>) {
		if ($multiline_key) {
			if (/^(.+)$/) {
				$subst{$multiline_key} .= $1 . "\n";
			} else {
				$multiline_key = 0;
			}
		} else {
			if (/^([^:=]+):(.+)$/) {
				$subst{$1} .= read_file('templates/' . $2, { binmode => ':utf8' });
			} elsif (/^([^:=]+)=\\$/) {
				$multiline_key = $1;
			} elsif (/^([^:=]+)=(.*)$/) {
				$subst{$1} .= $2;
			}
		}
	}
	push @substs, \%subst;
}

open(my $page_fh, '<:utf8', 'templates/page.html');
my @fhs = map { open my $fh, '>:utf8', 'templates/dist/' . $_ . '.html'; $fh } @filenames;
my $conditional;
my $if_else = 0;
while (my $line = <$page_fh>) {
	if ($conditional) {
		if ($line =~ /<!-- ELSE -->/) {
			$if_else = 1;
		} elsif ($line =~ /<!-- \/\/\/ -->/) {
			$conditional = 0;
		} else {
			for my $i (0 .. $#fhs) {
				if (($if_else == 1) xor (exists $substs[$i]->{$conditional})) {
					my $fh = $fhs[$i];
					print $fh $line;
				}
			}
		}
	} else {
		if ($line =~ /<!-- \?\?\?([^ \?]+)\?\?\? -->/) {
			$conditional = $1;
			$if_else = 0;
		} else {
			for my $i (0 .. $#fhs) {
				my $ln = $line;
				for my $key (keys %{$substs[$i]}) {
					$ln =~ s/<!-- ###\Q$key### -->/$substs[$i]->{$key}/;
				}
				my $fh = $fhs[$i];
				print $fh $ln;
			}
		}
	}
}
