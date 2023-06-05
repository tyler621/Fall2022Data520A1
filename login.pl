#!/usr/bin/perl -w

use CGI;
print( "Content-type: text/html\n\n" );
$query = new CGI;
$act   = $query->param( "act" );
<<<<<<< HEAD
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
=======
$password  = $query->param('password');
$name  = $query->param( "name" ); 


if ( $act eq "Register" ) {
    system( "cat register.html" );
}
elsif ( $act eq "Enter" ) {
    if ( $password eq "tylerschoice" ) {
	print ( "Content-type: text/html\n\n" );
	system( "/bin/cat  select.html" );
    }
    else {
        print ( " FAILURE " );
    }
}
elsif ( $act eq "Clear system" ) {
    system( "cat clear.html" );
}
elsif ( $act eq "Bookstore" ) {
    print ( "Content-type: text/html\n\n" );
    system( "/bin/cat bookstore.html" );
}
elsif ( $act eq "Show Bookstore" ) {
    print ( "Content-type: text/html\n\n" );
    system( "/bin/cat show.html" );
}
elsif ( $act eq "Purchase" ) {
    print ( "Content-type: text/html\n\n" );
    system( "/bin/cat purchase.php" );
>>>>>>> 3149e9ad2320032dcd3b9f4beedc8ea328140d32
}
elsif( $act eq "Help" ) {
    print ( "Content-type: text/html\n\n" );
    system( "/bin/cat help.html" );
}
else {
    print( "<br /><br /><br /><center><h2>Error! No such action: <em>$act</em></h2></center>" );  
}
