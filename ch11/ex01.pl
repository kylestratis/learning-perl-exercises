#!/usr/bin/perl
use Module::CoreList;

foreach $module (my %modules = %{ $Module::CoreList::version{5.014} } ) {
    print "$module\n";
}