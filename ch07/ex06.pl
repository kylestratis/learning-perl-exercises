#!/usr/bin/perl
use 5.010;

while (<>) {
    if (/fred.*wilma|wilma.*fred/) {
        print;
    }
}