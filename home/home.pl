#!/usr/bin/perl
use CGI; 
use CGI::Session qw(:-ip_match); 
use DBI; 
use DBD::mysql; 
use LWP; use strict; 
use warnings; 
use CGI qw(:standard); 
use HTML::Template;
## VARIABLES ##
my $q = new CGI;
my $logger = ""; 
my $username = $q->param("username"); 
my $password = $q->param("password"); 

my $logout = $q->param("Logout"); 
my $message = ""; 
if(defined ($username)) {
# connect to the database
my $dbh = DBI->connect("DBI:mysql:database=sznurawa;host=localhost;port=2009", "root", "wojtek29") or die $DBI::errstr; 
my $statement = qq{SELECT username, password FROM login WHERE username=? and password=?}; 
my $sth = $dbh->prepare($statement) or die $dbh->errstr; 
$sth->execute($username, $password) or die $sth->errstr;
#process the form
if($sth->fetchrow_array){ 
my $session = new CGI::Session();
my $template = HTML::Template->new(filename => 'home.tmpl', associate=>$session); 
#my $time = (localtime);
#$template->param("TIME", $time);
$session ->expire('+1M');
$session->param("username", $username); 
$template->param("USER", $username); 
$logger = 1;
print $session->header(-type=>"text/html"); 
print $template->output();
		}
else { 
my $template1 = HTML::Template->new(filename => 'login.tmpl'); 
$message = "Invalid username or password, please try again"; 
$template1-> param("MESSAGE", $message); 
print $q->header(-type=> "text/html"); 
print $template1->output();
    }
}
##LOGOUT BLOCK IMPLEMENTATION UNDER HOME.PL REQUIRED, CURRENTLY ON LOG.PL##
#elsif ($q->param('action') eq 'Logout') { 
#my $session = CGI::Session->load() or die CGI::Session->errstr; 
#$session->delete(); 
#my $template4 = HTML::Template->new(filename => 'login.tmpl'); 
#$message = "You are now logged out!"; 
#$template4-> param("MESSAGE", $message); 
#print $session->header(-type=> "text/html"); 
#print $template4->output();
#}
else {
print $q->header(-location=>'sessioncheck.pl');
	}

