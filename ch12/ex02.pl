#!/usr/bin/perl

die "No file names specified!\n" unless @ARGV;
my $oldest_time;
my $oldest_name;
foreach $file (@ARGV) {
    my $age = -M $file;
    if ($age > $oldest_time) {
        $oldest_time = $age;
        $oldest_name = $file;
    }
}

printf "The oldest file is %s which is %.1f days old.\n", $oldest_name, $oldest_time;
