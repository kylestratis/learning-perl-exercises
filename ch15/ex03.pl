#!/usr/bin/perl
use 5.010;

for( @ARGV ) {
    say "Processing $_";

    when( ! -e ) { say "\tFile doesn't exist" }
    when( -r _ ) { say "\tFile is readable"; continue }
    when( -w _ ) { say "\tFile is writable"; continue }
    when( -x _ ) { say "\tFile is executable"}
}