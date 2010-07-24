#!/usr/bin/perl

use strict;
use List::Util qw(reduce);

my $product = reduce { $a * $b} 1..100;
print "$product\n";
