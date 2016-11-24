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
#my $comment = param("getcommented"); 
my $q = new CGI;
#my $user = param("username");
open my $FHIN, '<', "./test.txt" || die "$!";
my $fhin = <$FHIN>;					
my $template = HTML::Template->new(filename => 'comment.tmpl');
$template->param("COMMENT", $fhin);
print $q->header(-type=>"text/html"); 
print $template->output();
#print $comment;
#}
#}

