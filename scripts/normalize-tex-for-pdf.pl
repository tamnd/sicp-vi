#!/usr/bin/env perl
# normalize-tex-for-pdf.pl
#
# Reads a flat texi on stdin and rewrites quirks in @tex blocks that the
# book chapter texis carry over from MathJax/HTML conventions but xelatex
# can't digest:
#
#   1. MathJax aliases  \lt / \gt  ->  < / >
#   2. Blank lines inside \[ ... \] display math, which TeX reads as \par
#      and rejects with "Missing $ inserted".
#   3. \[ \begin{eqnarray} ... \end{eqnarray} \] — MathJax tolerates the
#      nested math mode, plain LaTeX doesn't. Strip the \[ ... \] wrapper
#      since eqnarray (and friends) open their own math mode.
#
# The en_US src/pdf/sicp.texi was hand-massaged to avoid these so its
# build pipeline never had to deal with them; the books/<lang>/ tree is
# authored against the HTML build and needs the cleanup pass.

use strict;
use warnings;

my $text = do { local $/; <STDIN> };

$text =~ s/\\lt\b/</g;
$text =~ s/\\gt\b/>/g;

$text =~ s{\@ref\{((?:[^{}]|\{[^{}]*\})*)\}}{
    my $body = $1;
    my ($depth, $cut) = (0, -1);
    for (my $i = 0; $i < length($body); $i++) {
        my $c = substr($body, $i, 1);
        if    ($c eq '{') { $depth++ }
        elsif ($c eq '}') { $depth-- }
        elsif ($c eq ',' && $depth == 0) { $cut = $i; last }
    }
    '@ref{' . ($cut < 0 ? $body : substr($body, 0, $cut)) . '}';
}ge;

my %plain_tex_env = (matrix => 'matrix', eqalign => 'aligned');
for my $cmd (keys %plain_tex_env) {
    my $env = $plain_tex_env{$cmd};
    $text =~ s{\\\Q$cmd\E\{((?:[^{}]|\{[^{}]*\})*)\}}{
        my $body = $1;
        $body =~ s/\\cr\b/\\\\/g;
        "\\begin{$env}$body\\end{$env}";
    }ge;
}

my $self_math = qr/eqnarray\*?|align\*?|gather\*?|multline\*?|equation\*?/;
$text =~ s{
    \\\[                                        # opening \[
    [ \t]* (?:%[^\n]*)? \s*                     # optional inline comment
    (\\begin\{($self_math)\} .*? \\end\{\2\})  # the math env body
    \s* \\\]                                    # closing \]
}{$1}gxs;

$text =~ s{(\\\[)(.*?)(\\\])}{
    my ($open, $body, $close) = ($1, $2, $3);
    $body =~ s|\n[ \t]*\n+|\n|g;
    "$open$body$close";
}ges;

print $text;
