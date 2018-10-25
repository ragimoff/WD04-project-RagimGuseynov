<?php

if (!isAdmin() ) {
	header("Location: " . HOST);
	die();
}

$title = "Редактировать данные";
// $cats = R::find('categories', 'ORDER BY cat_title ASC');
$contacts = R::load('contacts', 1);


if (isset($_POST['contactsUpdate'])) {

	if (trim($_POST['email']) == '' ) {
		$errors[] = ['title' => 'Введите email'];	
	}

	if (trim($_POST['phone']) == '' ) {
		$errors[] = ['title' => 'Введите номер телефона'];	
	}

	if (trim($_POST['address']) == '' ) {
		$errors[] = ['title' => 'Введите адрес'];	
	}

	if (empty($errors)) {
		$contacts->email = htmlentities($_POST['email']);
		$contacts->phone = htmlentities($_POST['phone']);
		$contacts->address = htmlentities($_POST['address']);
		$contacts->firstname = htmlentities($_POST['firstname']);
		$contacts->secondname = htmlentities($_POST['secondname']);
		$contacts->skype = htmlentities($_POST['skype']);
		$contacts->vk = htmlentities($_POST['vk']);
		$contacts->fb = htmlentities($_POST['fb']);
		$contacts->github = htmlentities($_POST['github']);
		$contacts->twitter = htmlentities($_POST['twitter']);

		R::store($contacts);
		header('Location: ' . HOST . "contacts");
	}

}



// Готовим контент центральной части
ob_start();
include ROOT. "templates/_parts/_header.tpl";
include ROOT."templates/contacts/edit.tpl";
/*include ROOT. "templates/main/main.tpl";*/
$content = ob_get_contents();
ob_end_clean();


include ROOT. "templates/_parts/_head.tpl";
include ROOT. "templates/template.tpl";
include ROOT. "templates/_parts/_footer.tpl";
include ROOT. "templates/_parts/_foot.tpl";

?>