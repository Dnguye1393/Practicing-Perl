#!/usr/bin/perl
#
# The traditional first program.

# Strict and warnings are recommended.
use strict;
use warnings;


# Print a message.
my @array = ( 1, 2, 3 );
my $aref = \@array;
my @array2 = ($aref , @aref);

for my $elem ( @{ $aref } ){
    print $elem , "\n";
}


    print $array2[0]->[2] , "\n";
