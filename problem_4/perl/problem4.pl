#!/usr/bin/perl

use strict;
use warnings;

sub is_palimdrone
{
  my ($number) = @_;

  my @digits = split(//, $number);

  my $half = @digits / 2;

  my $count = 1;

  while( $count <= $half)
  {
    unless ($digits[$count -1] == $digits[-1 * $count])
    {
      return 0;
    }

    $count += 1;
  }

  return 1;
}

my $o;
my $product;
my @palimdromes;
my $flag = 0;

for (my $n = 1000; $n >= 100; $n -= 1)
{
  $o = $n;
  while ( $o >= 100)
  {
    $product = $o * $n;
    if (is_palimdrone($product))
    {
      print "$product\n";
      $flag = 1;
      last;
    }

    $o -= 1;

  }

  last if ($flag == 1);

}
