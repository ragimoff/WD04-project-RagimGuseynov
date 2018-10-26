<?php 

if ( !isAdmin() ){
	header("Location: " . HOST);
	die();
}


$title = "Редактировать - Обо Мне";

$about = R::load('about', 1);

if ( isset($_POST['textUpdate'])) {
	if ( trim($_POST['firstname']) == ''){
		$errors[] = ['title' => 'Введите имя'];
	}

	if ( trim($_POST['description']) == '' ) {
		$errors[] = ['title' => 'Введите описание'];
	}

	if ( empty($errors)) {
		$about->firstname = htmlentities($_POST['firstname']);
		$about->description = $_POST['description'];

		if (isset($_FILES['photo']['name']) && $_FILES['photo']['tmp_name'] != "") {
			$fileName = $_FILES['photo']['name'];
			$fileTmpLoc = $_FILES['photo']['tmp_name'];
			$fileType = $_FILES['photo']['type'];
			$fileSize = $_FILES['photo']['size'];
			$fileErrorMsg = $_FILES['photo']['error'];
			$kaboom = explode('.', $fileName);
			$fileExt = end($kaboom);


			// Проверка каринка на ширину и высоту
			list($width, $height) = getimagesize($fileTmpLoc);
			if($width < 10 || $height < 10) {
				$errors[] = ['title' => 'Изображение не имеет размеров. Загрузите изображение побольше.'];
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

			// Перемещаем загруженный файл в нужную директорию
			$db_file_name = rand(100000000000,999999999999) . "." . $fileExt;
			$postImgFolderLocation = ROOT . 'usercontent/about/';
			$uploadFile = $postImgFolderLocation . $db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadFile);

			if ( $moveResult != true ) {
				$errors[] = ['title' => 'Ошибка сохранения файла '];
			}

			include_once( ROOT . "/libs/image_resize_imagick.php");

			// Большая картинка
			$target_file = $postImgFolderLocation . $db_file_name;
			// Изменение размеров картинки
			$wmax = 222;
			$hmax = 222;
			$img = createThumbnail($target_file, $wmax, $hmax);
			$img->writeImage($target_file);
			$about->photo = $db_file_name;
		
		}

		R::store($about);
		header("Location: " . HOST . "about");
		exit();
	}
	
}


// Готовим контент центральной части
ob_start();
include ROOT. "templates/_parts/_header.tpl";
include ROOT. "templates/about/edit-text.tpl";
/*include ROOT. "templates/main/main.tpl";*/
$content = ob_get_contents();
ob_end_clean();


include ROOT. "templates/_parts/_head.tpl";
include ROOT. "templates/template.tpl";
include ROOT. "templates/_parts/_footer.tpl";
include ROOT. "templates/_parts/_foot.tpl";
 ?>