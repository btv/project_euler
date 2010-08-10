#!/usr/bin/perl

my $sum1 = 0;
my $sum2 = 0;

for (1..100)
{
  $sum1 += $_;
  $sum2 += $_ * $_;
}

print ($sum1 * $sum1 - $sum2); 
