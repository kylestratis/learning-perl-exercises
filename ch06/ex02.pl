#!/usr/bin/perl
use 5.010;

my %wordlist;
say "Please enter some strings:";
chomp(my @input = <stdin>);
foreach $word (@input) {
    $wordlist{$word} += 1;
}

foreach $key (sort keys %wordlist) {
    if ($wordlist{$key} == 1) {
        say "We have seen $key 1 time.";
    }
    else {
        say "We have seen $key $wordlist{$key} times.";
    }
}