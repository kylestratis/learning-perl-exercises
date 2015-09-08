#!/usr/bin/perl
use 5.010;

sub greet {
    state @greeted;
    my $name = shift;
    print "Hi $name! ";
    if (@greeted) {
        print "I've seen: @greeted\n";
    }
    else {
        print "You are the first one here!\n";
    }
    push @greeted, $name
}

greet("Fred");
greet("Barney");
greet("Wilma");
greet("Betty");