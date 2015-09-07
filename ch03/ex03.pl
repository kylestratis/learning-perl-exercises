#!/usr/bin/perl
print "Please enter some strings, terminate with Ctrl+D:\n";
print sort <STDIN>; # Separate lines

## Alternatively, all on the same line:
# chomp(@names = <STDIN>);
# print sort "@names ";