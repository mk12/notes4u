#!/usr/bin/env perl

# Copyright 2014 Mitchell Kember. Subject to the MIT License.

use strict;
use warnings;
use warnings qw(FATAL utf8);
use autodie;
use File::Slurp;
use utf8;
use open IN => ":encoding(utf8)", OUT => ":utf8";

my $course = shift;
my $directory = shift;
my $course_code = uc($directory);

sub write_html {
	my ($name, $template, $subst) = @_;
	open(my $in_fh, '<:utf8', 'templates/dist/' . $template . '.html');
	open(my $out_fh, '>:utf8', $directory . '/' . $name);
	my $conditional;
	if (exists $subst->{'content'} and $subst->{'content'} =~ /\`/) {
		$subst->{'math'} = 'true';
	}
	while (my $line = <$in_fh>) {
		if ($conditional) {
			if ($line =~ /<!-- \{\/\/\/\} -->/) {
				$conditional = 0;
			} elsif ($subst->{$conditional}) {
				print $out_fh $line;
			}
		} else {
			if ($line =~ /<!-- \{\?\?\?([^ \?]+)\?\?\?\} -->/) {
				$conditional = $1;
			} else {
				for my $key (keys %{$subst}) {
					$line =~ s/<!-- ###\Q$key### -->/$subst->{$key}/;
				}
				print $out_fh $line;
			}
		}
	}
}

my ($unit, $section);
my ($u_slug, $s_slug, $prev_slug);

my %c_subst = (course => $course, 'course-code' => $course_code, 'course-toc' => '<ol>');
$prev_slug = 'index.html';
while (<>) {
	if (/<h1 id="(.+)">(.+)<\/h1>/) {
		$u_slug = $1 . '.html';
		$unit = $2;
		$c_subst{'next'} = $u_slug;
		goto UNIT;
	}
	$c_subst{'content'} .= $_;
}

goto THE_END;

UNIT:

$c_subst{'course-toc'} .= "<li><a href=\"$u_slug\">$unit</a><ol>";
my %u_subst = (unit => $unit, previous => $prev_slug, 'course-code' => $course_code, 'unit-toc' => '<ol>');

while (<>) {
	if (/<h1 id="(.+)">(.+)<\/h1>/) {
		$prev_slug = $u_slug;
		$u_subst{'unit-toc'} .= '</ol>';
		$c_subst{'course-toc'} .= '</ol></li>';
		$u_slug = $1 . '.html';
		$u_subst{'next'} = $u_slug;
		write_html($prev_slug, 'unit', \%u_subst);
		$unit = $2;
		goto UNIT;
	} elsif (/<h2 id="(.+)">(.+)<\/h2>/) {
		$prev_slug = $u_slug;
		$s_slug = $1 . '.html';
		$section = $2;
		$u_subst{'next'} = $s_slug;
		goto SECTION;
	}
	$u_subst{'content'} .= $_;
}

goto THE_END;

SECTION:

my $link = "<li><a href=\"$s_slug\">$section</a></li>";
$u_subst{'unit-toc'} .= $link;
$c_subst{'course-toc'} .= $link;
my %s_subst = (section => $section, previous => $prev_slug, 'course-code' => $course_code);

while (<>) {
	if (/<h1 id="(.+)">(.+)<\/h1>/) {
		$prev_slug = $s_slug;
		my $uslug = $u_slug;
		$u_subst{'unit-toc'} .= '</ol>';
		$c_subst{'course-toc'} .= '</ol></li>';
		$u_slug = $1 . '.html';
		$s_slug = 0;
		$s_subst{'next'} = $u_slug;
		write_html($prev_slug, 'section', \%s_subst);
		write_html($uslug, 'unit', \%u_subst);
		$unit = $2;
		goto UNIT;
	} elsif (/<h2 id="(.+)">(.+)<\/h2>/) {
		$prev_slug = $s_slug;
		$s_slug = $1 . '.html';
		$s_subst{'next'} = $s_slug;
		write_html($prev_slug, 'section', \%s_subst);
		$section = $2;
		goto SECTION;
	}
	if (/<img src="(.+).svg".*?>(.*)$/) {
		$s_subst{'content'} .= read_file("$directory/$1.svg", { binmode => ':utf8' });
		$s_subst{'content'} .= $2;
	} else {
		s/(<dt>.+?)(\([^\)]+\))<\/dt>/$1<span class="parens">$2<\/span>/;
		$s_subst{'content'} .= $_;
	}
}

THE_END:

if ($s_slug) {
	$s_subst{'next'} = 'index.html';
	write_html($s_slug, 'section', \%s_subst);
}

if ($u_slug) {
	unless (exists $u_subst{'next'}) {
		$u_subst{'next'} = 'index.html';
	}
	$u_subst{'unit-toc'} .= '</ol>';
	$c_subst{'course-toc'} .= '</ol></li>';
	write_html($u_slug, 'unit', \%u_subst);
}

$c_subst{'course-toc'} .= '</ol>';
write_html('index.html', 'course', \%c_subst);
