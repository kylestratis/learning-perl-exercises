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
    s/fred/Larry/ig;
    print $out_fh, $_;
}