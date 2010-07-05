#!/usr/bin/perl

use strict;
use warnings;

# @digits = split(//, $inputline);

sub is_palimdrone
{
  my ($number) = @_;

  my $digits = split(//, $number);

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
