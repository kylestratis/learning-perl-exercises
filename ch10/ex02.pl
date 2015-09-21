#!/usr/bin/perl

my $debug = $ENV{DEBUG} // 1;
my $target = int(1 + rand 100);
print "The target number is $target\n" if $debug;

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