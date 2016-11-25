#!/usr/bin/perl
#use Data::Dumper;
use CGI;
use CGI::Session qw(:-ip_match);
use DBI;
use DBD::mysql;
use LWP;
use strict;
use warnings;
use CGI qw(:standard);
use Data::Dupmer;
use HTML::Template;
my $session = CGI::Session->load();
my $username = param("username");
my $password = param("password");
my $logout = param("Logout");
my $input = param("input");
#my @text = ();
#my $include = INPUT_MESSAGE;
my $url = "http://192.168.56.102/index.html";
#my $q = new CGI;
#my session = new CGI;
my $template = HTML::Template->new(filename => 'home.tmpl');
#print Dumper $input;
 #if(param("username") !=1) {
                                                # connect to the database
#my $dbh = DBI->connect("DBI:mysql:database=sznurawa;host=localhost;port=2009",  "root", "wojtek29")
#or die $DBI::errstr;
#my $statement = qq{SELECT  username, password FROM login WHERE username=? and password=?};
#my $sth = $dbh->prepare($statement)
#or die $dbh->errstr;
 #   $sth->execute($username, $password)
  #      or die $sth->errstr;
                #process the form
   #                     if($sth->fetchrow_array){
            #$session = new CGI::Session();
            #$session->expire('+1m');
            #print $session->header(-type=>"text/html");
    #            print "Content-type: text/html\n\n";
     #               print $template->output();
      #                                                                  }
#else   {
#print $q->header(-type=>"text/html",-location=>"sessioncheck.pl");
#print "Location: $url\n\n";
# print "Content-type: text/html\n\n";
#                       print "<html><h1>niewlasciwy username or password</h1></html>";
#}
#}
       #                 elsif(param("Logout") !=1) {
        #                #$session = CGI::Session->load() or die CGI::Session->errstr;
                        #$session->delete();
                        #print $session->header(-location=>'sessioncheck.pl');
                        #print "Location: $url\n\n";
         #               print "Content-type: text/html\n\n";
          #              print "<html><h1>fuckoff</h1></html>";
                            #                                     }
                        if(param("intput") !=1) {
# my $include = $input;
#$template->param(INPUT_MESSAGE =>$input);
# print $template->output();
#			$session = CGI::Session->load();
#			$template->param("INPUT" =>$input);
			#print $session->header(-type=>"text/html");
                       #                 print $template->output();
#			$session->param("username", $username);
		#	$template->param("USER", $username);
#			print $session->header(-type=>"text/html");
#	                print $template->output();
                        print "Content-type: text/html\n\n";
                        print "<html><h1>yupii you fucker</h1></html>";
                       
                                         }
                                #else {
                                #$q->header(-type=>"text/html",-location=>"http://192.168.56.102/index.html");
                                #print "Location: $url\n\n";
                                #        }

#else   {
#print $q->header(-type=>"text/html",-location=>"sessioncheck.pl");
#print "Location: $url\n\n";
#print "Content-type: text/html\n\n";
#                       print "<html><h1>niewlasciwy username or password</h1></html>";
#}
#}
 # else {
#                                $q->header(-type=>"text/html",-location=>"http://192.168.56.102/index.html");
  #                              print "Location: $url\n\n";
   #                                     }


#$url = "http://192.168.56.102/index.html";
#print "Location: $url\n\n";
