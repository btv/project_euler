#!/usr/bin/perl

use strict;
use warnings;

my $top_number = 600851475143;
my $sqrt_top = sqrt($top_number);

sub zero_mod
{
  my ($divisor) = @_;

  return 1 if ( $top_number % $divisor == 0 );
  return 0;
}


sub is_prime
{
  my ($divided) = @_;

  my $divisor = 3;
  
  return 1 if ($divided == 1);

  my $sqrt_divided = sqrt($divided);

  do
  {
    return 1 if ($divided == $divisor);
    return 0 if ($divided % $divisor == 0);

    $divisor += 2;
  }while($divisor <= $sqrt_divided);
}

my @first_array = grep zero_mod($_), 1..$top_number;
my @second_array = grep is_prime($_), @first_array;

foreach(@second_array)
{
  print $_;
}
  
