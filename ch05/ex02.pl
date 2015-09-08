#!/usr/bin/perl
use 5.010;

print "Please enter some strings:\n";
chomp(my @input = <stdin>);
print "0123456789" x 3, "\n"; #30 width
my $format = ("%20s\n" x @input);
printf $format, @input;

# @input is chomped then \n is added back on later because
# printf counts \n as a character when determining spacing