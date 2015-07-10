#!/usr/bin/perl
my $l = shift; # leading spaces
my $f = shift; # field width
my $n = shift; # number of field widths in a line

my $col = 0; # column number (after leading spaces)

for (@ARGV) { # for each of the remaining arguments
  # if just starting out, print leading and the arg
  if ($col == 0) { 
    print " " x $l, $_;
  }
  # else if line is full, start a new line
  elsif ( $col + length $_ > $f * $n ) {
    $col = 0;
    print "\n", " " x $l, $_;
  }
  # else print a new element
  else {
    print;
  }
  # update the column indicator
  $col += length $_;
  # print separator spaces until you reach a field boundary.
  do {print " ";} while ++$col % $f;
}
print "\n";
