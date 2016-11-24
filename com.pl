#!/usr/bin/perl
#use CGI; 
use CGI::Carp qw(fatalsToBrowser);
use CGI::Session qw(:-ip_match); 
use DBI; 
use DBD::mysql; 
use LWP; use strict; 
use warnings; 
use CGI qw(:standard); 
use HTML::Template;
## VARIABLES ##
#my @comment = param("getcommented"); 
#if (@comment) {
my @comment = "chcialbym to wreszcie zakonczyc";
open my $FHIN, '>>', "./test.txt" || die "$!";
#print "Content-type: text/html\n\n";
print $FHIN @comment;
close $FHIN;
#}
