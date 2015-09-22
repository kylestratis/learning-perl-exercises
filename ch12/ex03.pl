#!/usr/bin/perl

die "No file names specified!\n" unless @ARGV;
print "Displaying my files that are both readable and writable:\n";

foreach (@ARGV) {
    print "$_\n" if (-r -w -o);
}
