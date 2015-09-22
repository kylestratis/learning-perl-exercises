#!/usr/bin/perl

foreach $file (@ARGV) {
    print "File $file is readable\n" if -r $file;
    print "File $file is writable\n" if -w _;
    print "File $file is executable\n" if -x _;
    print "File $file does not exist\n" if  !-e _;
}