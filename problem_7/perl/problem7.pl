#!/usr/bin/perl
#
import List::Util qw(sum);
#
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
