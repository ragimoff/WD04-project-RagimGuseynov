<?php 

include "libs/rb-mysql.php";

R::setup('mysql:host='.DB_HOST.';dbname='.DB_NAME, DB_USER, DB_PASS);
// R::freeze(TRUE); // когда мы публикуем свой сайт стоит это расскоментировать чтобы ьазу данных не изменялась

 ?>