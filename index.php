<?php 

require "config.php";
require "db.php";

/*  ----------------------------
Роутер
-------------------------------*/

// Request URL = http://webdev-team04/portfolio/blog/post?id=15
$uri = $_SERVER["REQUEST_URI"];
$uri = rtrim($uri, "/");
$uri = filter_var($uri, FILTER_SANITIZE_URL);
$uri = substr($uri, 1);
$uri = explode('?', $uri);

switch ( $uri[0] ) {
	case 'main':
		include "modules/main/index.php";
		break;

	case 'blog':
		include "modules/blog/index.php";
		break;

	case 'about':
		include "modules/about/index.php";
		break;

	case 'contacts':
		include "modules/contacts/index.php";
		break;

	case 'content':
		include "modules/content/index.php";
		break;
		
	default:
		echo "404 and main page";
		break;				
}






 ?>