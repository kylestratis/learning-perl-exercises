#!/usr/bin/perl
use 5.010;

while (<>) {
    if (/(\p{^Space})\1/) { # can also use /(\S)\1/
        print;
    }
}