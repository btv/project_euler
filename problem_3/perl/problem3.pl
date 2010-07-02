#!/usr/bin/perl

use strict;
use warnings;
use List::Util;

my $top_number = 600851475143;
my $sqrt_top = int(sqrt($top_number));

sub is_prime
{
  my ($divided) = @_;
  return 1 if ($divided == 1);

  my $divisor = 3;
  my $sqrt_divided = sqrt($divided);

  while($divisor <= $sqrt_divided)
  {
    return 0 unless ($divided % $divisor);
    $divisor += 2;
  }

  1;
}

my @f;

for(my $i = 1; $i < $sqrt_top; $i++)
{
  unless ($top_number % $i)
  {
    if (is_prime($i))
    {
      push @f, $i;
    }
  }
}

print $f[-1];
