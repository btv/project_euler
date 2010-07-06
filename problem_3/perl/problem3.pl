#!/usr/bin/perl

use strict;
use warnings;

my $top_number = 600851475143;

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
my $new_top = $top_number;

for(my $i = 3; $i <= $new_top; $i += 2)
{
  unless ($top_number % $i)
  {
    if (is_prime($i))
    {
      push @f, $i;
    }
  }
    $new_top = $top_number / $i;
}

print $f[-1];
