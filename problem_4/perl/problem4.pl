#!/usr/bin/perl

use strict;
use warnings;
use List::Util qw(max);

sub is_palimdrone
{
  my ($number) = @_;

  my @digits = split(//, $number);
  my @reversed_digits = reverse(@digits);

  # got this code idea from url below;  I've modified it slightly.
  # http://perl.active-venture.com/pod/perlfaq4-dataarrays.html
  for (my $i = 0; $i < @digits; $i++)
  {
    return 0 if $digits[$i] != $reversed_digits[$i];
  }

  return 1;
}

my @two = my @one = reverse((100..999));
my @three;

for my $one (@one)
{
  for my $two (@two)
  {
    my $three = $two * $one;
    next unless is_palimdrone($three);
    push @three, $three;
  }
}

print max(@three);
