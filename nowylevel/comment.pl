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
my $comment = param("getcommented"); 
my $q = new CGI;
my $user = param("username");

if ($comment !=1) {
  my $dbh = DBI->connect("DBI:mysql:database=sznurawa;host=localhost;port=2009",
                "root", "wojtek29")
                        or die $DBI::errstr;
						my $statement = qq{INSERT INTO comment(comment, user) values(?, ?)};
                my $sth = $dbh->prepare($statement)
                                or die $dbh->errstr;
                        $sth->execute($comment, $user)
                                        or die $sth->errstr;
						my $statement1 = qq{SELECT comment FROM comment WHERE user = (?)};	
						my $sth1 = $dbh->prepare($statement1)
                                or die $dbh->errstr;
                        $sth1->execute($user)
                                        or die $sth1->errstr;
if($sth1->fetchrow_array) {						
my $template = HTML::Template->new(filename => 'comment.tmpl');
$template->param("COMMENT", $comment);
print $q->header(-type=>"text/html"); 
print $template->output();
print $comment;
}
}


