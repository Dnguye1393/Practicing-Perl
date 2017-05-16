#!/usr/bin/perl
# useit.pl using the Number module

use Animal;
use Cat;

$obj = Animal->new("Dog");    # call the constructor w/a value
# $obj now contains our object from before. remember
# that new() returned it ( in the guise of $self )
$obj->setLife(5);

print "the animal is a ",$obj->getType(),". It has ", $obj->getLife(), "lives \n";

$cat = Cat->new("Cat");

$cat->Cat::setLife(5);
print "The animal is a ",$cat->getType(),". It has ", $cat->getLife(), "lives \n";
