#!/usr/bin/perl
use DateTime;
use Time::Piece;

my $current = localtime;

my $currentdt = DateTime->new(
    year    => $current->year,
    month   => $current->mon,
    day     => $current->mday,
    );
my $past = DateTime->new(
    year    => $ARGV[0],
    month   => $ARGV[1],
    day     => $ARGV[2],
    );

my $duration = $currentdt - $past;
my @units = $duration->in_units( qw(years months days) );
printf "%d years, %d months, and %d days\n", @units;