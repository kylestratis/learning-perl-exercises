#!/usr/bin/perl

while (<>) {
# take one input line at a time
    chomp;
    if (/(\s)\z/) {
         print "Your whitespace is $1.\n";
    } else {
        print "No match: |$_|\n";
    }
}