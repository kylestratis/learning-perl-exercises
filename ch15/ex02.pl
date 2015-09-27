#!/usr/bin/perl
use 5.010;

print "Please input a number: \n";
chomp(my $input = <STDIN>);
given( $input ) {
    when( $_ % 3 == 0 ) { print "Fizz\n"; continue }
    when($_ % 5 == 0) { print "Bin\n"; continue }
    when($_ % 7 == 0) { print "Sausage\n" }
}