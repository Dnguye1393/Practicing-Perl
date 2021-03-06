#!/usr/bin/perl
use strict;
use warnings;
use lib '/Documents/Perl';
#
# A demonstration of perl references.
#

# Any scalar may be a reference to any other variable.
my $dark = "It is dark outside.";
my $dref = \$dark;
print ${$dref},"\n";
$$dref = "No, it's daylight!";
print "$dark\n";

sub fred {
    my ($a, $b, $c) = @_;

    $$a = 17;                           # Set scalar the $a refers to
    @$b = ("Hi", "there", "fred");      # Set array that $b refers to
    $b->[1] = "ho";                     # Set a member of that array.
    $$c{"wilp"} = "nope";               # Set wilp in hash $c refers to
    $c->{"wumpus"} = "bumpus";          # Set wumpus, different syntax.
}

# Init demo values.
my $x = 88;
my @y = ("bill", "sue", "mike", "alex");
my %z = ( woop => "pie" );

# Make and send references to these things.
fred(\$x, \@y, \%z);

# Spit it out.
print "[$x] [@y]\n";
print $z{"woop"} . " " . $z{"wilp"} . " " . $z{"wumpus"} . "\n";


my $string = "I am a human being";
my @arr = split(' ',$string);
my @final;
for(my $i=@arr-1; $i>=0;$i--){
    $_=@arr[$i].' ';
    my @word = split('',$_);
    foreach my $n (@word){

        unshift(@final,$n)
    }
}
print @final,"\n";
