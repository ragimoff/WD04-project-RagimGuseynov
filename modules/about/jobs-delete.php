<?php
if (!isAdmin()){	
	header("Location:" . HOST);
	die();
}

$title = "Удаление места работы";

$job = R::load('jobs', $_GET['id']);

if (isset($_POST['JobsDelete'])){ 

		R::trash($job);
		header(" Location: " . HOST . "profile-edit?result=jobsDelete");
		exit();
}


ob_start();
include ROOT. "templates/_parts/_header.tpl";
include ROOT."templates/about/jobs-delete.tpl";
$content = ob_get_contents();
ob_end_clean();
include ROOT. "templates/_parts/_head.tpl";
include ROOT. "templates/template.tpl";
include ROOT. "templates/_parts/_footer.tpl";
include ROOT. "templates/_parts/_foot.tpl";
?>