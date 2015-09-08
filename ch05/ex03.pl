#!/usr/bin/perl
use 5.010;

print "Please enter some strings, first input will be width:\n";
chomp(my @input = <stdin>);
my $width = shift @input;
print "0123456789" x (($width + 9) / 10), "\n"; 
my $format = ("%${width}s\n" x @input);
printf $format, @input;