#!/usr/bin/perl

use strict;
use warnings;
use List::MoreUtils qw(pairwise);

sub is_palimdrone
{
  my ($number) = @_;

  my @digits = split(//, $number);
  my @reversed_digits = reverse(@digits);

  # got this code idea from, I've modified it slightly:
  # http://perl.active-venture.com/pod/perlfaq4-dataarrays.html
  for (my $i = 0; $i < @digits; $i++)
  {
    return 0 if $digits[$i] != $reversed_digits[$i];
  }

  return 1;
}

my @two = my @one = reverse((1..1000));

my @join = pairwise { $a * $b } @one, @two;

foreach(@join)
{
  if ( is_palimdrone($_))
  {
    print "$_\n";
    last;
  }
}

