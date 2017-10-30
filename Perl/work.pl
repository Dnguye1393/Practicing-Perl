#!/usr/bin/perl
#
# The traditional first program.

# Strict and warnings are recommended.
use strict;
use warnings;
my $test = "kForaewr 234Te stMaP I!12";
my @array = ["test thsi here for\n rawr \n", "hi \n f"];



my @lines = split("\n", @array);
for my $item (@lines){
  print $item,"\n";
}
