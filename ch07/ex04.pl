#!/usr/bin/perl
use 5.010;

while (<>) {
    if (/[A-Z][a-z]+/) {
        print;
    }
}