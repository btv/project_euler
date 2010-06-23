#!/usr/bin/perl

use List::Util qw(sum);

sub fibinaci
{
  my (@array, $input1, $input2) = @_;

  my $flip = 1;

  while ( $input1 < 4000000 || $input2 < 4000000)
  {
    if ( $flip == 1)
    {
      $input1 += $input2;
      push(@array, $input1);
      $flip = 0;
    }
    else
    {
      $input2 += $input1;
      push(@array,$input1);
      $flip = 1;
    }
  }
}

my @array;
my $total = 0;
fibinaci(\@array, 0 , 1);
foreach (@array)
{
  $total += $_ if $_ % 2 == 0;
}
print $total;
