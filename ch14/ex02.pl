#!/usr/bin/perl

my %last_name = qw{ 
    fred flintstone Wilma Flintstone Barney Rubble 
    betty rubble Bamm-Bamm Rubble PEBBLES FLINTSTONE 
};

my @keys = sort by_last_name keys %last_name;
foreach (@keys) {
    print "$last_name{$_}, $_\n";
}

sub by_last_name {
    "\L$last_name{$a}" cmp "\L$last_name{$b}"
        or
    "\L$a" cmp "\L$b"
}