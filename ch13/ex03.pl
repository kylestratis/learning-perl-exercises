#!/usr/bin/perl

print "Please enter a directory name:\n";
chomp(my $dirname = <STDIN>); 
if ($dirname =~ /\S/) {
    chdir $dirname or die "Can not chdir to $dirname: $!";
}
else {
    chdir or die "Can not chdir to home: $!";
}

opendir DOT, "." or die "Can't open $dirname: $!";
foreach $file (sort readdir DOT) {
    print "$file\n";
}