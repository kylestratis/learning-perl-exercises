#!/usr/bin/perl
print "Please input the radius of the circle:\n";
chomp($radius = <STDIN>);
if ($radius < 0) {
    $radius = 0;
}
$pi = 3.141592654;
$circumference = 2 * $pi * $radius;
print "The circumference is $circumference.\n";