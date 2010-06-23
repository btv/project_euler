#!/usr/bin/perl

my $total = 0;
my $count1 = 0;
my $count2 = 1;
my $flip = 1;

while( $count2 + $count1 < 4000000)
{
  if ( $flip == 1)
  {
    $count1 += $count2;
    if ( $count1 % 2 == 0)
    {
      $total += $count1;
    }
    $flip = 0;
  }
  else
  {
    $count2 += $count1;
    if ( $count2 % 2 == 0)
    {
      $total += $count2;
    }
    $flip = 1;
  }
}

print $total;

