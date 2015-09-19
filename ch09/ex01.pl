#!/usr/bin/perl

use strict;

my $what = 'fred|barney';

while (<>){
    chomp;
    if (/($what){3}/) {
         print "Matched: |$`<$&>$'|\n"; 
    } else {
        print "No match: |$_|\n";
    }
}
