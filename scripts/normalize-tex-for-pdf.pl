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
