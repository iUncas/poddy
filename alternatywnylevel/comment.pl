#!/usr/bin/perl 
use strict;
use warnings;
use CGI qw(:standard);
use CGI::Carp qw(warningsToBrowser fatalsToBrowser);

my $cgi = new CGI;

print $cgi->header();
print $cgi->start_html('My test text box');
print $cgi->startform;
open my $FHIN, '<', "./test.file" || die "$!";
my @fhin = <$FHIN>;
print $cgi->textarea(   -name=>'TEXT_AREA',
                        -default=>"@fhin");
print "<textarea> @fhin </textarea>";
print $cgi->end_html();
