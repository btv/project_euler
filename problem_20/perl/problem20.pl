#!/usr/bin/perl
# this is my solution for problem 20 in perl.
use strict;
use List::Util qw(reduce);

my $product = reduce { $a * $b} 1..100;
print "$product\n";
