#!/usr/bin/perl -w

use CGI;
print( "Content-type: text/html\n\n" );
$query = new CGI;
$act   = $query->param( "act" );
$name  = $query->param( "name" ); 

if ( $act eq "Register" ) {
    system( "cat login.html" );
}
elsif ( $act eq "Enter" ) {
    print ( "Content-type: text/html\n\n" );
    system( "/bin/cat  enterlist.html" );
}
elsif ( $act eq "Clear system" ) {
    system( "cat login.html" );
}
elsif( $act eq "Help" ) {
    print ( "Content-type: text/html\n\n" );
    system( "/bin/cat help.html" );
}
else {
    print( "<br /><br /><br /><center><h2>Error! No such action: <em>$act</em></h2></center>" );  
}
