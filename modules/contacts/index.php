<?php

$title = "Контакты";

$contacts = R::load('contacts', 1);

if ( isset($_POST['newMessage']) ){

	if (trim($_POST['email']) == ''){
		$errors[] = ['title' => 'Введите email'];
	}

	if (trim($_POST['message']) == ''){
		$errors[] = ['title' => 'Введите сообщение'];
	}

	if ( empty($errors) ) {
		$message = R::dispense('messages');
		$message->email = htmlentities($_POST['email']);
		$message->firstname = htmlentities($_POST['firstname']);
		$message->message = htmlentities($_POST['message']);
		$message->dataTime = R::isoDateTime();

		if ( isset($_FILES["file"]["name"]) && $_FILES["file"]["tmp_name"] != "" ) {

			// Write file image params in variables
			$fileName = $_FILES["file"]["name"];
			$fileTmpLoc = $_FILES["file"]["tmp_name"];
			$fileType = $_FILES["file"]["type"];
			$fileSize = $_FILES["file"]["size"];
			$fileErrorMsg = $_FILES["file"]["error"];
			$kaboom = explode(".", $fileName);
			$fileExt = end($kaboom);

			$db_file_name = rand(100000000000,999999999999) . "." . $fileExt;

			if($fileSize > 4194304) {
				$errors[] = ['title' => 'Загруженный файл больше 4mb' ];
			} else if (!preg_match("/\.(gif|jpg|png|pdf|doc)$/i", $fileName) ) {
				$errors[] = ['title' => 'Файл должен иметь следующие расширения: jpg, gif, png, pdf, doc' ];
			} else if ($fileErrorMsg == 1) {
				$errors[] = ['title' => 'Произошла ошибка' ];
			}
			$postImgFolderLocation = ROOT . 'usercontent/upload_files/';

			// Перемещаем загруженный файл в нужную директорию
			$uploadfile = $postImgFolderLocation . $db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);

			if ($moveResult != true) {
				$errors[] = ['title' => 'Произошла ошибка файл не загружен' ];
			}

			$message->message_file_name_original = $fileName;
			$message->message_file = $db_file_name;

		}

		R::store($message);

		$success[] = ['title' => 'Сообщение было успешно отправлено!' ];

	}
	
}

// Готовим контент центральной части
ob_start();
include ROOT. "templates/_parts/_header.tpl";
include ROOT."templates/contacts/contacts.tpl";
/*include ROOT. "templates/main/main.tpl";*/
$content = ob_get_contents();
ob_end_clean();


include ROOT. "templates/_parts/_head.tpl";
include ROOT. "templates/template.tpl";
include ROOT. "templates/_parts/_footer.tpl";
include ROOT. "templates/_parts/_foot.tpl";

?>