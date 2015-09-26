#!/usr/bin/perl
print "Please enter some numbers:\n";
my @numbers;
push @numbers, split while <>;
foreach (sort { $a <=> $b } @numbers) {
    printf "%20g\n", $_;
}