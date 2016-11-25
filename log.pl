#!/usr/bin/perl
use CGI; 
use CGI::Session qw(:-ip_match); 
use DBI; 
use DBD::mysql; 
use LWP; 
use strict; 
use warnings; 
use CGI qw(:standard); 
use HTML::Template; 
use Data::Dumper;
##VARIABLES##
my $logout = param("Logout"); 
my $session = CGI::Session->load(); 
my $q = new CGI;
my $message = "";
#my $sid = ""; 
my $cgi = "";
if ( $logout !=1)  {
$session = CGI::Session->load() or die CGI::Session->errstr;
$session->delete();
my $template = HTML::Template->new(filename => 'login.tmpl');
$message = "You are now logged out!";
$template-> param("MESSAGE", $message); print $q->header(-type=> "text/html"); 
print $template->output();
}
