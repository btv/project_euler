#!/usr/bin/perl

sub divide_11_to_20
{
  my ( $divided ) = @_;

  foreach (11..20)
  {
     return 0 if ($divided % $_);
  }

  return 1;
}

my $main_count = 2520;
while ( !divide_11_to_20($main_count) )
{
	$main_count += 2520;
}

print $main_count;
