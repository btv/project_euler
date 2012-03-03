#!/usr/bin/perl

use strict;
use warnings;

my $index = 7;
my $total = 28;
my $divisors = 0;

sub divisors
{
    my ($number) = @_;
    my $sq_n = sqrt($number);
    my $i = 1;
    my $t = 0;

    while ($i <= $sq_n)
    {
        if ($number % $i == 0)
        {
            $t += 2;
        }

        $i += 1;
    }

    return $t;
}

while( divisors($total) <= 500)
{
    $index += 1;
    $total += $index;
}

print "$total\n";
