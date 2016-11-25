#!/usr/bin/perl
use CGI;
use CGI::Session;
use CGI::Cookie;
use DBI;
use DBD::mysql;
use LWP;

use strict;
use warnings;
use CGI qw(:standard);
use HTML::Template;
use JSON;

## FP - functional programming issues
##Variables##

##my $logger    =    "";
##my $username  =    param("username");
#my $password  =    param("password");
##my $logout    =    param("logout");
##my $dType     =    param("myselect");
##my $dTypeG    =    param("myselectg");
##my $q         =    new CGI;
##my $session   =    new CGI;
##my $sid       =    "";
##my $cgi       =    "";
#my $logoutx  =    param("logout");
#my $message   =    "";
##my $parameter =    "%";

## Accessing DB to grant page access ##
## MySQL driver - required to build MSSQL driver ##

########################################
## NEW SUB IMPLEMENTATION sub login { ##
########################################	 


  ##  my $dbh = DBI->connect("DBI:mysql:database=mysql;host=localhost;port=2009", "root", "wojtek29")
   ## or die $DBI::errstr;
    ##my $statement = qq{SELECT username, password from USERS where username=? and password=?};
    ##my $sth = $dbh->prepare($statement) or die $dbh->errstr;
    ##$sth->execute($username, $password) or die $sth->errstr;
## Process the form ##
       ## if ($sth->fetchrow_array) {
        ##    $session = CGI::Session->new($sid);
            my $dbh = DBI->connect("DBI:mysql:database=mysql;host=localhost;port=2009", "root", "wojtek29")
                or die $DBI::errstr;
           ## my $template = HTML::Template->new(filename =>'request.html');
            my $statement = qq{SELECT DateT, Results FROM DRESULTS ORDER BY DateT DESC limit 10};
            my $sth = $dbh->prepare($statement) or die $dbh->errstr;
                $sth->execute() or die $sth->errstr;
            #$session->param("username", $username);
            #$template->param("USER", $username);
          ##  $logger = 1;
          #  my $cookie = CGI::Cookie->new(-name=>$session->name, -value=>$session->id);
            ##my $statement2 = qq{SELECT Greeting from DGREETING where ID=$dumb};
           ## my $sth1 = $dbh->prepare($statement2) or die $dbh->errstr;
           #     $sth1->execute() or die  $sth1->errstr;
          ##my $greeting = $sth1->fetchrow_array;
           ## $session->param("greeting", $greeting);
## fetching name for greetings ##
     ##       my $statement3 = qq{SELECT firstname from USERS where username="$username"};
     ##       my $sth3 = $dbh->prepare($statement3) or die $dbh->errstr;
       ##       my $firstname = $sth3->fetchrow_array;
        ##    $session->param("firstname", $firstname);
## end ##
## session logout active time ##
           ## $session->expire("1h");
          #  $session->expire("~logged-in", "10m");
## fetching main  result rows for table and JSON ##
            my $rows=[];
            push @{$rows}, $_ while $_ = $sth->fetchrow_hashref();
          ##  my $message = "GENERAL TEST RESULTS";
          ##  $template->param("MESSAGE", $message);
          #  $template->param("GREETING", $greeting);
		##	$template->param("FIRSTNAME", $firstname);
          #  $template->param(ROWS => $rows);
           ## $template->param(JSROWS =>  encode_json($rows));
          ##  print $session->header();
		  print "Content-type: text/html\n\n";
   print encode_json($rows);





##my $text = "adding ajax capabilities to handle a single request";

 #                      print "<html><h1>not much yupii you fucker and wrong password</h1></html>";
##print "<html><h1> $text </h1></html>";


