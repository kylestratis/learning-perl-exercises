#!/usr/bin/perl

while (<>) {
# take one input line at a time
    chomp;
    if (/(?<word>\b\w*a\b)(.{0,5})/xs) {
         print "Matched: |$`<$&>$'|\n"; # the special match vars
        print "'word' contains '$+{word}' and '$2'\n";
    } else {
    print "No match: |$_|\n";
    }
}