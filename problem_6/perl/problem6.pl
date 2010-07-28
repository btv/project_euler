#!/usr/bin/perl

my $sum1 = 0;
my $sum2 = 0;

for $n (1..100)
{
  $sum1 += $n;
  $sum2 += $n * $n;
}

print ($sum1 * $sum1 - $sum2); 
