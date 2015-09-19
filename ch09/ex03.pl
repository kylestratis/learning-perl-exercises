#!/usr/bin/perl

my $input = $ARGV[0];
if (! defined $input) {
    die "Use $0 filename";
}

my $output = $input;
$output =~ s/(\.\w+)?$/.out/; # replace file extension with '.out'

if (! open $in_fh, '<', $input) {
    die "Can't open '$input': $!";
}

if (! open $out_fh, '>', $output) {
    die "Can't write '$output': $!";
}

while(<$in_fh>) {
    chomp;
    s/Fred/\n/ig;
    s/wilma/Fred/ig;
    s/\n/Wilma/g;
    print "$_\n";
}