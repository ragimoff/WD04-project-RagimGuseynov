<?php 


$title = "Блог - Добавить новый пост";


//Готовим контент ценртральной части
ob_start();
include ROOT . "templates/blog/post-new.tpl";
$content = ob_get_contents();
ob_end_clean();


// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";


?>