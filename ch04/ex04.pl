#!/usr/bin/perl
use 5.010;

sub greet {
    state $last_greeted;
    my $name = shift;
    if (defined $last_greeted) {
        print "Hi ", $name, "! $last_greeted is also here!\n";
        $last_greeted = $name;
    }
    else {
        print "Hi ", $name, "! You are the first one here!\n";
        $last_greeted = $name;
    }
}

greet("Fred");
greet("Barney");