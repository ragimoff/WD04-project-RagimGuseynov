<?php 


$title = "Редактировать профиль";

$currentUser = $_SESSION['logged_user'];
$user = R::load('users', $currentUser->id);

if (isset($_POST['profile-update']) ) {

	if (trim($_POST['email']) == '') {
		$errors[] = ['title' => 'Введите email'];
	}

	if (trim($_POST['firstname']) == '') {
		$errors[] = ['title' => 'Введите имя'];
	}

	if (trim($_POST['secondname']) == '') {
		$errors[] = ['title' => 'Введите Фамилию'];
	}

	if (empty($errors) ) {
		$user->firstname = htmlentities($_POST['firstname']);
		$user->secondname = htmlentities($_POST['secondname']);
		$user->email = htmlentities($_POST['email']);
		$user->city = htmlentities($_POST['city']);
		$user->country = htmlentities($_POST['country']);

		if (isset($_FILES['avatar']['name']) && $_FILES['avatar']['tmp_name'] != "") {
			$fileName = $_FILES["avatar"]["name"];
			$fileTmpLoc = $_FILES["avatar"]["tmp_name"];
			$fileType = $_FILES["avatar"]["type"];
			$fileSize = $_FILES["avatar"]["size"];
			$fileErrorMsg = $_FILES["avatar"]["error"];
			$kaboom = explode(".", $fileName);
			$fileExt = end($kaboom);

			// Будем проверять свойства на разнае условия
			list($width, $height) = getimagesize($fileTmpLoc);
			if ($width < 10 || $height < 10) {
				$errors[] = ['title' => 'Изображение не имеет размеров. Загрузите изображение побольше'];
			} 
			// Задаем ограничение в 4мб
			if ($fileSize > 4194304) {
				$errors[] = ['title' => 'Файл изображения не должен быть более 4 mb'];
			}
			// Задаем ограничение по типу файла
			if ( !preg_match("/\.(gif|jpg|jpeg|png)$/i", $fileName) ) {
				$errors[] = ['title' => 'Невенрный формат файла', 'desc' => '<p>Файл изображения должен быть в формате gif, jpg, jpeg, png.</p>'];
			}

			if ( $fileErrorMsg == 1 ) {
				$errors[] = ['title' => 'При зарузке изображения произошла ошибка'];
			}

			// Проверяем установлен ли автар у пользовтеля
			$avatar = $user->avatar;
			$avatarFolderLocation = ROOT . 'usercontent/avatar/';

			// Если аватар установлен то есть загружен ранее то удаляем файл аватара
			if ( $avatar != "" ) {
				$picurl = $avatarFolderLocation . $avatar;//usercontent/avatar/foto.png
				// Удаляем аватар
				if ( file_exists($picurl) ) { unlink($picurl); }
				$picurl48 = $avatarFolderLocation . '50-' . $avatar;
				if ( file_exists($picurl48) ) { unlink($picurl48); }
			}

			// Перемещаем загруженный файл в нужную директорию
			$db_file_name = rand(100000000000,999999999999) . "." . $fileExt;
			$uploadFile = $avatarFolderLocation . $db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadFile);

			if ( $moveResult != true ) {
				$errors[] = ['title' => 'Ошибка сохранения файла '];
			}

			include_once( ROOT . "/libs/image_resize_imagick.php");
			// Большая картинка
			$target_file = $avatarFolderLocation . $db_file_name;
			//$resized_file = $avatarFolderLocation . $db_file_name;
			$wmax = 222;
			$hmax = 222;
			$img = createThumbnail($target_file, $wmax, $hmax);
			$img->writeImage($target_file);

			$user->avatar = $db_file_name;

			$target_file = $avatarFolderLocation . $db_file_name;
			$resized_file = $avatarFolderLocation . "50-" . $db_file_name;
			$wmax = 50;
			$hmax = 50;
			$img = createThumbnail($target_file, $wmax, $hmax);
			$img->writeImage($resized_file);

			$user->avatarSmall = "50-" . $db_file_name;
		}

		R::store($user);
		$_SESSION['logged_user'] = $user;
		header('Location: ' . HOST . "profile");
		exit();
	}
	
}

//Готовим контент ценртральной части
ob_start();
include ROOT . "templates/profile/profile-edit.tpl";
$content = ob_get_contents();
ob_end_clean();


// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";


?>