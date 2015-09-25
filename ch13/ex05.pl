#!/usr/bin/perl
use File::Basename;
use File::Spec;

my($original, $destination) = @ARGV;

if (-d $destination) {
    my $basename = basename $original;
    $destination = File::Spec->catfile($original, $basename);
}   

rename $original, $destination or die "Move/rename didn't work! $!\n";