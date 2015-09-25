#!/usr/bin/perl

print "Please enter a directory name:\n";
chomp(my $dirname = <STDIN>); 
if ($dirname =~ /\S/) {
    chdir $dirname or die "Can not chdir to $dirname: $!";
    print "In $dirname\n";
}
else {
    chdir;
    print "In home directory\n";
}

my @files = glob ".* *";
foreach $file (@files) {
    print "$file\n";
}