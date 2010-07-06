#!/usr/bin/perl

use strict;
use warnings;

sub is_palimdrone
{
  my ($number) = @_;

  my @digits = split(//, $number);

  my $half = @digits / 2;

  my $count = 1;

  while( $count <= $half)
  {
    unless ($digits[$count -1] == $digits[-1 * $count])
    {
      return 0;
    }

    $count += 1;
  }

  return 1;
}

my $flag = 0;
my $o;
my $product;

while( $flag == 0) 
{
   for my $n (1000..100)
   {
      while ( $o <= 100)
      {
       $o = $n;
       my $product = $o * $n;
       print $product;
       if (is_palimdrone($product))
       {
         print $product;
         $flag = 1;
         last;
       }

       $o -= 1;
        
      }

   }
}

