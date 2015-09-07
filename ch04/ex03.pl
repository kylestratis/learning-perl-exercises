#!/usr/bin/perl
use strict;

sub above_average {
    my $mean = &average(@_);
    my @aboves = ();
    foreach (@_) {
        if ($_ > $mean) {
            push @aboves, $_;
        }
    }
    return @aboves;
}

sub average {
    my $sum = total(@_);
    my $len = @_;
    $sum / $len;
}

sub total {
    my $total = 0;
    foreach (@_) {
        $total += $_;
    }
    $total;
}

my @fred = above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my @barney = above_average(100, 1..10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";