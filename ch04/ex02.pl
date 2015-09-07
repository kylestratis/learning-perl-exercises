#!/usr/bin/perl
use strict;

sub total {
    my $total = 0;
    foreach (@_) {
        $total += $_;
    }
    $total;
}

print "The sum of all integers from 1-1000 is ", &total(1..1000), ".\n";