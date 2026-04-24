#!/usr/bin/perl
# stage-texi.pl SRC_DIR DST_DIR
#
# Copy every *.texi file from SRC_DIR into DST_DIR (preserving the tree)
# and rewrite each "@include RELPATH" line so RELPATH is relative to
# DST_DIR rather than to the including file's directory.
#
# Texinfo 5.2's @include resolves paths against the top-level input
# file's directory and -I flags only — it does not search the directory
# of the including file. Flattening to root-relative paths sidesteps
# that limitation without touching the original source tree.

use strict;
use warnings;
use File::Find;
use File::Basename;
use File::Path qw(make_path);
use File::Copy;

my ($src, $dst) = @ARGV;
die "usage: stage-texi.pl SRC_DIR DST_DIR\n" unless $src && $dst;
die "not a dir: $src\n" unless -d $src;
make_path($dst);

find({ no_chdir => 1, wanted => sub {
    return unless /\.texi$/ && -f $_;
    my $rel = $File::Find::name;
    $rel =~ s|^\Q$src\E/?||;
    my $out = "$dst/$rel";
    make_path(dirname($out));

    my $reldir = dirname($rel);
    $reldir = '' if $reldir eq '.';

    open(my $in, '<', $File::Find::name) or die "read $File::Find::name: $!";
    open(my $of, '>', $out) or die "write $out: $!";
    while (my $line = <$in>) {
        $line =~ s{^(\@include\s+)(?!/)(\S+)}
                  { $1 . ($reldir ? "$reldir/$2" : $2) }e;
        print $of $line;
    }
    close $in;
    close $of;
}}, $src);
