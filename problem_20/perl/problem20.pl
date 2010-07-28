#!/usr/bin/perl
# this is my solution for problem 20 in perl.
use strict;
use feature 'say';
use List::Util qw(reduce);

say reduce { $a * $b} 1..100;
