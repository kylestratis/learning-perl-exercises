#!/usr/bin/perl
print "Enter some stuff on multiple lines:\n";
@string = <STDIN>;
@string = reverse @string;
print "Reversed lines:\n";
print @string