#!/usr/bin/perl

foreach (@ARGV) {
    print "Deleting $_...\n";
    unlink $file or warn "Delete failed on $_: $!\n";
}