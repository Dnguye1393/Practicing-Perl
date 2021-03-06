#!/usr/bin/perl
#
# The traditional first program.

# Strict and warnings are recommended.
use strict;
use warnings;

package regex;

sub findNum{
  my $arrRef = shift @_;
  my $regex = shift @_;
  my @array = @{$arrRef};
  my $num=0;
  my $fullString = "";
  for my $item (@array){
    my @piece = ($item =~ /$regex/g);
    $fullString .= $item .="\n";
    $num += @piece;
  }
  print $regex,"\n";
  return $fullString, $num;
}

sub replace{
  my $arrRef = shift @_;
  my $regex = shift @_;
  my $replace = shift @_;
  my @array = @{$arrRef};
  my $fullString = "";
  for my $item (@array){
    $item =~ s/$regex/$replace/g;
    $fullString .= $item .="\n";
  }
  print "Replacing ", $regex," with ", $replace,"\n";
  return $fullString;
}



sub findBegining{
  my $arrRef = shift @_;
  my $regex = shift @_;
  my @array = @{$arrRef};
  my $num = 0;
  my @lines;
  print "\nHello world\n";
  for my $elem (@array){
    print $num, " ", $elem, "\n";
    push (@lines , split("\n",$elem ));
    $num++;
  }
  print "\n\n\n\n";
  for my $item (@lines){
    print $item,"\n";
  }


}

return 1;
#print $string , "Matched ", $regex, " " , $num, " times", "\n";
