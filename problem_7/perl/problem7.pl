#!/usr/bin/perl
#
#
sub is_prime
{
  my ($divided) = @_;
  my $divisor = 3;
  my $sqrt_divided = sqrt($divided);

  while($divisor <= $sqrt_divided)
  {
    return 0 unless ($divided % $divisor);
    $divisor += 2;
  }

  1;
}


my $count = 1;
my $last;

for ( my $i = 3; $count < 10001; $i += 2)
{
  if (is_prime($i))
  {
    $count += 1;
    $last = $i;
  }
}

print $last;
