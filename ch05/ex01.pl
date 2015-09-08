#!/usr/bin/perl
# Write a program that acts like cat but reverses the order 
# of the output lines. 
use 5.010;

@output;
while(<>) {
    push @output, $_;
}

print reverse @output;

# According to the book, this can be shortened to
# print reverse <>;