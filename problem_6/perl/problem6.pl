#!/usr/bin/perl

use List::Util qw(sum);

my $sum1;
my $sum2;

for $n (1..100)
{
  $sum1 += $n;
  $sum2 += $n * $n;
}

print ($sum1 * $sum1 - $sum2);
