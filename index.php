<?php 

require "config.php";
require "db.php";
require "libs/functions.php";
session_start();

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
	case '':
		include ROOT . "modules/main/index.php";
		break;

	//:::::::::::: USERS :::::::::::::

	case 'login':
		include ROOT . "modules/login/login.php";
		break;

	case 'registration':
		include ROOT . "modules/login/registration.php";
		break;	

	case 'logout':
		include ROOT . "modules/login/logout.php";
		break;

	case 'lost-password':
		include ROOT . "modules/login/lost-password.php";
		break;	

	case 'set-new-password':
		include ROOT . "modules/login/set-new-password.php";
		break;	

	case 'profile':
		include ROOT . "modules/profile/index.php";
		break;

	case 'profile-edit':
		include ROOT . "modules/profile/edit.php";
		break;



//::::::::::::::::::::::::: Categories ::::::::::::::::::::::

	case 'blog/categories':
		include ROOT . "modules/categories/all.php";
		break;

	case 'blog/category-new':
		include ROOT . "modules/categories/new.php";
		break;

	case 'blog/category-edit':
		include ROOT . "modules/categories/edit.php";
		break;

	case 'blog/category-delete':
		include ROOT . "modules/categories/delete.php";
		break;


//::::::::::::::::::::::::: BLOG ::::::::::::::::::::::
	case 'blog':
		include ROOT . "modules/blog/index.php";
		break;

	case 'blog/post-new':
		include ROOT . "modules/blog/post-new.php";
		break;

	case 'blog/post-edit':
		include ROOT . "modules/blog/post-edit.php";
		break;

	case 'blog/post-delete':
		include ROOT . "modules/blog/post-delete.php";
		break;

	 case 'blog/post':
		 include ROOT."modules/blog/post.php";
		 break;


//::::::::::::::::::::::::: About ::::::::::::::::::::::

	case 'about':
		include ROOT . "modules/about/index.php";
		break;

	case 'about/jobs-delete':
		 include ROOT."modules/about/jobs-delete.php";
		 break;

	case 'edit-text':
		include ROOT . "modules/about/edit-text.php";
		break;

	case 'edit-skills':
		include ROOT . "modules/about/edit-skills.php";
		break;

	case 'edit-jobs':
		include ROOT . "modules/about/edit-jobs.php";
		break;



	//::::::::::::::::::::::::: Contacts ::::::::::::::::::::::
	case 'contacts':
		include ROOT . "modules/contacts/index.php";
		break;

	case 'contacts-edit':
		include ROOT . "modules/contacts/edit.php";
		break;

	case 'messages':
		include ROOT . "modules/contacts/messages.php";
		break;

	case 'messages-delete':
		include "modules/contacts/messages-delete.php";
		break;



	case 'content':
		include ROOT . "modules/content/index.php";
		break;

		
//::::::::::::::::::::::::: MAIN/OTHER ::::::::::::::::::::::
	default:
		echo "404 and main page";
		break;				
}






 ?>