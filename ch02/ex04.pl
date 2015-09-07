#!/usr/bin/perl
print "Please enter the first number to multiply:\n";
chomp($fac1 = <STDIN>);
print "Please enter the second number to multiply:\n";
chomp($fac2 = <STDIN>);
$prod = $fac1 * $fac2;
print "The product of $fac1 and $fac2 is $prod\n";