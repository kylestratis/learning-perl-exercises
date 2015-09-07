#!/usr/bin/perl
print "Give me a string to multiply!\n";
$stringInput = <STDIN>;
print "How many times?\n";
chomp($times = <STDIN>);
print $stringInput x $times;