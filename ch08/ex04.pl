#!/usr/bin/perl

while (<>) {
# take one input line at a time
    chomp;
    if (/(?<word>\b\w*a\b)/) {
         print "Matched: |$`<$&>$'|\n"; # the special match vars
        print "'word' contains '$+{word}'\n";
    } else {
    print "No match: |$_|\n";
    }
}