#!/usr/bin/perl
@names = qw( fred betty barney dino wilma pebbles bamm-bamm );
print "Please enter numbers 1-7 on separate lines, end input with Ctrl+D:\n";
@indices = <STDIN>;
print "The names are:\n";
foreach $index (@indices) {
    print @names[$index-1]."\n";
}