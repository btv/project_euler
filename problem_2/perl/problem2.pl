#!/usr/bin/perl

use List::Util qw(sum);

sub fibinaci
{
  my (@array, $input1, $input2) = @_;

  my $flip = 1;

  while ( $input1 + $input2 < 4000000)
  {
    if ( $flip == 1)
    {
      $input1 += $input2;
      if ( $input1 % 2 == 0)
      {
        push(@array, $input1);
      }
      $flip = 0;
    }
    else
    {
      $input2 += $input1;
      if ( $input2 % 2 == 0)
      {
        push(@array, $input2);
      }
      $flip = 1;
    }
  }
}

my @array;
fibinaci(\@array, 0 , 1);
print sum @array;
