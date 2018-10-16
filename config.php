<?php 

// DB SETTINGS
define('DB_HOST', 'localhost');
define('DB_NAME', 'WD04-project-ragimguseynov');
define('DB_USER', 'root');
define('DB_PASS', '');

/*   
* Устанавливаем путь до корневой директории скрипта
* по протоколу HTTP
*
*/
// HOST sait
define('HOST', $_SERVER['REQUEST_SCHEME'] . '://' . $_SERVER['HTTP_HOST'] . '/');

/*
* Устанавливаем физический путь до корневой директории скрипта
*/
define('ROOT', dirname(__FILE__).'/');




 ?>