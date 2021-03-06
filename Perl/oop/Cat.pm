#!/usr/bin/perl
# cat.pm, a number as an object

#@ISA = (Animal);

package Cat;    # This is the &quot;Class&quot;
use parent 'Animal';
sub new        # constructor, this method makes an object
        # that belongs to class Number
{
  my $class = shift;
  my $animalType = $_[0];
  #my $self = {};
  my $self = Animal->new("Cat");        # the internal structure we'll use to represent
              # the data in our class is a hash reference
  bless( $self, $class );    # make $self an object of class $class

  $self->{animalType} = $animalType;    # give $self->{num} the supplied value
              # $self->{num} is our internal number
  return $self;        # a constructor always returns an blessed()
            # object
}

sub getType    # return our number
{
  my $self = shift;
  return $self->{animalType};
}
sub setLife    # set our life
{
  my $self = shift;
  my $lifeNum = shift;
  $lifeNum = $lifeNum*9;
  $self->{life}= $lifeNum;
  return $self;
}





1;        # this 1; is neccessary for our class to work
