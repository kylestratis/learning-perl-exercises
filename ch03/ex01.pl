#!/usr/bin/perl
print "Enter some stuff on multiple lines, terminate with Ctrl+D:\n";
@string = reverse <STDIN>;
print "Reversed lines:\n";
print @string