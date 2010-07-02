#!/usr/bin/perl

use strict;
use warnings;

my $top_number = 600851475143;
my $sqrt_top = int(sqrt($top_number));

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

my @f;
my $i;
my $rest= $top_number;

#for( $i = 1; $i < $rest; $i++)
#{
#  unless ($top_number % $i)
#  {
#    push @f, $i;
#    $rest = $top_number/$i;
#  }
#}

for( $i = 1; $i < $top_number; $i++)
{
  unless ($top_number % $i)
  {
    push @f, $i;
  }
}

#my @g = grep is_prime($_), @f;

foreach(@f)
{
  print $_;
}
