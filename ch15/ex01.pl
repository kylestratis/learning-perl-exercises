#!/usr/bin/perl
use 5.010;

my $target = int(1 + rand 100);
LOOP: {
        print "Please guess a number between 1 and 100: \n";
        chomp(my $input = <STDIN>);
        my $found = 0;
        given( $input ) {
            when( ! /\A\d+\Z/ ) { print "Quitter\n" }
            when($_ < $target) { print "Too low!\n" }
            when($_ > $target) { print "Too high!\n" }
            default { print "Congratulations, you cheated!\n"; $found++ }
        }
        last LOOP if $found;
        redo LOOP;
}