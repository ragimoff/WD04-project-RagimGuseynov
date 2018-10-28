<?php 
if (!isAdmin()) {
	header("Location: " . HOST);
	die();
}

$title = "Редактировать работу";

$work = R::load('works', $_GET['id']);

$cats = R::find('categories', 'ORDER BY cat_title ASC');

if (isset($_POST['workUpdate'])) {
		if ( trim($_POST['workTitle']) == '' ) {
			$errors[] = ['title' => 'Введите заголовок работы'];
		}
		if ( trim($_POST['workText']) == '' ) {
			$errors[] = ['title' => 'Введите описание работы'];
		}
		if (empty($errors)) {
		$work->title = htmlentities($_POST['workTitle']);
		$work->text = $_POST['workText'];
		$work->result = $_POST['workResult'];
		$work->tech = $_POST['workTech'];
		$work->link = $_POST['workLink'];
		$work->github = $_POST['workGit'];
		$work->authorID = $_SESSION['logged_user']['id'];
		$work->updateTime = R::isoDateTime();
		
		if (isset($_POST['deleteImg']) &&  $_POST['deleteImg'] == "Удалить" ) {
			unlink( ROOT . 'usercontent/portfolio/' . $work->workPhoto );
			unlink( ROOT . 'usercontent/portfolio/' . $work->workImgSmall );
			$work->workPhoto = '';
			$work->workImgSmall = '';
		}
		// Проверяем, пришла ли картинка 
		if (isset($_FILES['workPhoto']['name']) && $_FILES['workPhoto']['tmp_name'] != '') {
			// записываем параметры изображения в переменные
			$fileName = $_FILES['workPhoto']['name'];
			$fileTmpLoc = $_FILES['workPhoto']['tmp_name'];
			$fileType = $_FILES['workPhoto']['type'];
			$fileSize = $_FILES['workPhoto']['size'];
			$fileErrorMsg = $_FILES['workPhoto']['error'];
			$kaboom = explode(".", $fileName);
			$fileExt = end($kaboom);
			// Проверяем, действительно ли это - изображение
			list($width, $height) = getimagesize($fileTmpLoc);
			if ($width < 10 || $height < 10) {
				$errors[] = ['title' => 'Картинка слишком маленькая'];
			}
			if ( $fileSize > 4194304 ) {
				$errors[] = ['title' => 'Изображение превышает размер в 4Мб'];
			}
			if (!preg_match("/\.(gif|jpg|png|jpeg)$/i", $fileName)) {
				$errors[] = [
											'title' => 'Неверный формат файла',
											'desc' => '<p>Изображение должно быть в формате jpg, jpeg, gif или png. Выберите другое изображение.</p>',
										];
			}
			if ( $fileErrorMsg == 1 ) {
				$errors[] = ['title' => 'При загрузке изображения произошла ошибка'];
			}
			// Перемещаем загруженный файл в нужную директорию
			$db_file_name = rand(100000000000, 999999999999) . "." . $fileExt;
			$workImgFolderLocation = ROOT . 'usercontent/portfolio/';
			$uploadFile = $workImgFolderLocation . $db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadFile);
			// Если есть загруженное ранее изображение, то удаляем его
			$workImg = $work->workPhoto;
			if ($workImg !='') {
				$picurl = $workImgFolderLocation . $workImg;
				// Удаляем изображение
				if (file_exists($picurl)) {
					unlink($picurl);
				}
				$picurl320 = $workImgFolderLocation . '320-' . $workImg;
			  if ( file_exists($picurl320) ) { 
			  	unlink($picurl320); 
			  }
			}
			
			if ($moveResult != true) {
				$errors[] = ['title' => 'Ошибка загрузки файла'];
			}
			include_once( ROOT . "libs/image_resize_imagick.php" );
			$target_file = $workImgFolderLocation . $db_file_name;
			$wmax = 920;
			$hmax = 620;
			$img = createThumbnailBig($target_file, $wmax, $hmax);
			$img->writeImage($target_file);
			$work->workPhoto = $db_file_name;
			$target_file = $workImgFolderLocation . $db_file_name;
			$resized_file = $workImgFolderLocation  . "320-" . $db_file_name;
			$wmax = 350;
			$hmax = 140;
			$img = createThumbnailCrop($target_file, $wmax, $hmax);
			$img->writeImage($resized_file);
			$work->workImgSmall = "320-" . $db_file_name;
		}
		R::store($work);
		header('Location: ' . HOST . "portfolio?result=workUpdated");
		exit();
	}
}
// Готовим контент для центральной части
ob_start();
include ROOT . 'templates/_parts/_header.tpl';
include ROOT . 'templates/portfolio/work-edit.tpl';
$content = ob_get_contents();
ob_end_clean();
// Выводим шаблоны
include ROOT . 'templates/_parts/_head.tpl';
include ROOT . 'templates/template.tpl';
include ROOT . 'templates/_parts/_footer.tpl';
include ROOT . 'templates/_parts/_foot.tpl';
?>