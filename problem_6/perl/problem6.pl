#!/usr/bin/perl

my $sum1 = 0;
my $sum2 = 0;

for (1..100)
{
  $sum1 += $_;
  $sum2 += $_ **2;
}

print ($sum1 **2 - $sum2); 
