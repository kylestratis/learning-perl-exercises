#!/usr/bin/perl

while (<>) {
# take one input line at a time
    chomp;
    if (/(?<word>\w+a)/) {
        print "'word' contains '$+{word}'\n";
    } else {
    print "No match: |$_|\n";
    }
}