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
my $logger = "";
my $username = param("username");
my $password = param("password");
my $q = new CGI;
my $session = new CGI;
my $template = HTML::Template->new(filename => 'home.tmpl');
my $sid = "";
my $cgi = "";
  #if(defined ($username)) {

                                                # connect to the database
                                               # my $dbh = DBI->connect("DBI:mysql:database=sznurawa;host=localhost;port=2009",  "root", "wojtek29")
                        #or die $DBI::errstr;
                                                #my $statement = qq{SELECT  username, password FROM login WHERE username=? and password=?};
                                                #my $sth = $dbh->prepare($statement)
                        #or die $dbh->errstr;
                        #$sth->execute($username, $password)
                       # or die $sth->errstr;
                                                        #process the form
                                                                #if($sth->fetchrow_array){
                                        $session = new CGI::Session();
                                        $sid = $session->id();
                                        #$session->param("username", $username);
                                        #$template->param("USER", $username);
                                        $logger = 1;
                                        #$session->expire('+1m');
                                        print $session->header(-type=>"text/html");
                                        print $template->output();
                                        #my $cookie = $cgi->cookie(CGISESSID => $session->id);
                                        #print $cgi->header ( -cookie=>$cookie);
					# print "Content-type: text/html\n\n";
 					# print "<html><h1>not much yupii you fucker</h1></html>";
					#print $q->header(-location=>'index.pl');
                                       # }
#						if($session->is_expired) {
#	print $q->header(-cache_control=>"no-cache, no-store, must-revalidate");
   	#print "Your has session expired. Please login again.";
	#print "adsdas";
	# print "<br/><a href='http://192.168.56.102/index.html>Login</a>";
#	}
# elsif ($session->is_empty ) {
#				print "Content-type: text/html\n\n";
 #	                        print "<html><h1>empty session</h1></html>"; 
#				 }
 
#				 else {
 #					my $session = CGI::Session->load();
 #                                       print $session->header(-type=>"text/html");
  #                                      print $template->output();
 #                                       my $cookie = $cgi->cookie(CGISESSID => $session->id);
#                                        print $cgi->header ( -cookie=>$cookie);
#}
 #else { 
#print "Content-type: text/html\n\n";
#print "<html><h1>empty session</h1></html>"; 
#}
