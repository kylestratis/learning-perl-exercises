#!/usr/bin/perl

my $target = int(1 + rand 100);

while(1) {
    print "Please guess a number between 1 and 100: \n";
    chomp(my $input = <STDIN>);
    if ($input =~ /quit|exit|\A\s*\z/i) {
        print "Quitter\n";
        last;
    }
    elsif ($input < $target) {
        print "Too low!\n";
    }
    elsif ($input > $target) {
        print "Too high!\n";
    }
    else {
        print "Congratulations, you cheated!";
        last;
    }
}