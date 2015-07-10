#!/usr/bin/perl

# Print the arguments in columns.
# The first three arguments are for left-offset, width, number in a row.
my $l = shift; # leading spaces
my $f = shift; # field width
my $n = shift; # number of fields
while ($#ARGV >= 0) {
  print " " x $l;
  while ($#ARGV >= 0) {
    printf "%-${f}s", shift;
    last if ++$r%$n==0 or $#ARGV < 0;
  }
  print "\n";
}




