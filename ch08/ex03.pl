#!/usr/bin/perl

while (<>) {
# take one input line at a time
    chomp;
    if (/(\w+a)/) {
        print "\$1 contains '$1'\n";
    } else {
    print "No match: |$_|\n";
    }
}