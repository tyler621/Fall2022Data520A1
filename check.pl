#!/usr/bin/perl
use CGI; 
$query     = new CGI;
$act       = $query->param('act');
$password  = $query->param('password');
$interface = $query->url_param('interface');

if ( $act eq "Display source" ) {
    if ( $password eq "tylerschoice" ) {
	print( "Content-type: text/plain\n\n" );
<<<<<<< HEAD
	if ( $interface == 1 ) {
	    system("cat login.cgi;echo '\n\n\n\n\n';cat login.pl;echo '\n\n\n\n\n';cat login.java" );
	}
	elsif ( $interface == 2 ) {
	    system("cat enterlist.cgi;echo '\n\n\n\n\n';cat enterlist.pl;echo '\n\n\n\n\n';cat enterlist.java" );
	}
	elsif ( $interface == 3) {
	    system("cat updatelist.cgi;echo '\n\n\n\n\n\';cat updatelist.pl; echo '\n\n\n\n\n';cat updatelist.java");
	}
	else {
	    print( "\n\n\n     No such interface: $interface" );
	}
=======
	system("cat login.cgi;echo '\n\n\n\n\n';cat login.pl;echo '\n\n\n\n\n';cat login.java" );
	system("cat bookstore.html;echo '\n\n\n\n\n';cat bookstore.php;echo '\n\n\n\n\n';cat show.html" );
	system("cat show.php;echo '\n\n\n\n\n\';cat purchase.html; echo '\n\n\n\n\n';cat purchase.php");
>>>>>>> 3149e9ad2320032dcd3b9f4beedc8ea328140d32
    }  
    else {
	print( "Content-type: text/html\n\n" );
	print( "<center><font size='+2'><b>Wrong password: </b>" );
	print( "<i>$password</i></font>" );
	print( "<form><input type='button' value='Back' onclick='history.go(-1);return false;' /></center>" );
    }
}
elsif ( $act eq "Help" ) {
    print ( "Content-type: text/html\n\n" );
    system( "/bin/cat help.html" );
}

else {
    print( "Content-type: text/html\n\n" );
    print( "<center><font size='+2'><b>No such option: </b>" );
    print( "<i>$act</i></font></center>" );
}
