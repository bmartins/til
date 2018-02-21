#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper;
use File::Next;

#################################################################################
#
#  This script creates the README.md file, it must be run from the root of the 
#  repo.
#
#  The folder structure can have at most 2 levels
#
#  This script was made in 5 minutes , I know there are more elegant ways to do this, 
#  that would allow even more levels. No time for that, and this works.
#
#
#  Usage : ./.tools/create_tree.pl > README:md
#
#################################################################################



my $dir = './';
my $iter = File::Next::files( $dir );

my %skip_files = ('README.md' => 1);
open (my $fh, ">" , "README.md");
print $fh "# TIL\n\n";

my %tree = ();
my $level1 = '';
my $level2 = '';

while ( defined ( my $file = $iter->() ) ) {

    next if $file =~/^\./;
    next if $file!~/\.md$/i;
    next if defined $skip_files{$file};
    my @tok = split(/\//, $file);
    my $title = pop @tok;
    $title =~s/\.md$//i;

    print $fh "* [" .clean_name($tok[0])."](".$tok[0] . ")\n" if ($tok[0] ne $level1);
    if (defined $tok[1]) {
        print $fh "\t* [" . clean_name($tok[1]) ."](". $tok[0] ."/" . $tok[1]. ")\n" if ($tok[1] ne $level2);
    }
    print $fh "\t\t* [" . clean_name($title) . "](" . $file .")\n" ;
   
    $level1 = $tok[0];
    $level2 = $tok[1];


}


close($fh);

sub clean_name {
    my ($name) = @_;
    $name =~s/\_/ /g;
    return $name;

}

