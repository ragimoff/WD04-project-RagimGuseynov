<?php 

$title = "Вход на сайт";
//Если форма отправлена - то делаем ренистрацию
if (isset($_POST['login'])) {

	if(trim($_POST['email']) == ''){
		$errors[] = ['title' => 'Введите Email'];
	}

	if(trim($_POST['password']) == ''){
		$errors[] = ['title' => 'Введите Пароль'];
	}

	$user = R::findOne('users', 'email=?', [$_POST['email']]);
		
	if ( $user ) {
		if ( password_verify( $_POST['password'], $user->password) ) {
			$_SESSION['logged_user'] = $user;
			$_SESSION['login'] = "1";
			$_SESSION['role'] = $user->role;
								
			header('Location:' . HOST);
			exit();
			
		} else {
			$errors[] = ['title'=>'Неверный пароль'];
		}
	} else $errors[] = ['title'=>'Неверный email'];
	}



// Готовим Контент для центроальной части
ob_start();
include ROOT . "templates/login/form-login.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/login/login-page.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>