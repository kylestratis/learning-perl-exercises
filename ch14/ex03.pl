#!/usr/bin/perl

my @indices;

print "Please enter some words:\n";
chomp(my $long_string = <STDIN>);
print "Please enter a substring:\n";
chomp(my $substring = <STDIN>);

for (my $pos = -1; ; ) {
    $pos = index($long_string, $substring, $pos + 1);
    last if $pos == -1;
    push @indices, $pos;
}

print "Locations of '$substring' in '$long_string' were @indices\n";