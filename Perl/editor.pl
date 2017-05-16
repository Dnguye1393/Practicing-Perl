#!/usr/local/bin/perl
# server.pl, my mini-server in perl
my $filename = 'text.txt';
open(my $fh, '<', $filename)
  or die "Could not open file '$filename' $!";
my @ar;
while (my $row = <$fh>) {
  chomp $row;
  push(@ar,$row);
}
close($fh);
foreach my $val (@ar){
  print $val."\n";
}
open ($fh,'>>',$filename);
for(my $i=0; $i<4;$i++){
  $fh->print("Testing"."\n");
}
close($fh);
