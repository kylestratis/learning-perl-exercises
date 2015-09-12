#!/usr/bin/perl
use 5.010;

my %names = (
    fred => 'flintstone',
    barney => 'rubble',
    wilma => 'flintstone'
);
say "Please enter a name:";
chomp(my $input = <STDIN>);
if (exists $names{$input}) {
    say "$input $names{$input}";
}
else {
    say "Name doesn't exist."
}