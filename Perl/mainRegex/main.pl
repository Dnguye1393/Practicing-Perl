#!/usr/bin/perl
use warnings;
use strict;

use regex;


my $count;
my $fullString;
# Print a message.
my $filename = 'text.txt';
open(my $fh, '<', $filename)
  or die "Could not open file '$filename' $!";
my @ar;
while (my $row = <$fh>) {
  chomp $row;
  push(@ar,$row);
}
close($fh);
my $regex = "\\w{5,10}";
($fullString,$count) = regex::findNum(\@ar,$regex);


print "For this text: ", "\n", $fullString , "\n" ;
print "Number of ", $regex, " found: ", $count, "\n";

my $replace = "K";
$fullString = regex::replace(\@ar,$regex,$replace);
print "For this text: ", "\n", $fullString , "\n" ;
print "Number of ", $regex, " found: ", $count, "\n";


my $match = regex::findBegining(\@ar, $replace);
print "this is what beings with " , $replace , " : \n", $match; 
