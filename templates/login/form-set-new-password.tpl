<form id="setNewPasswordForm" class="login-form p-10 mb-50" method="POST" action="<?=HOST?>set-new-password">

	<?php if ($newPasswordReady == false):?>
	<h1 class="text-center login-heading">Введите новый пароль</h1>
	<?php endif ?>

	<?php require ROOT . "templates/_parts/_errors.tpl"; ?>
	<?php require ROOT . "templates/_parts/_success.tpl";?>

		<?php if($newPasswordReady == false):?>
		<input class="input-form-registration" name="resetpassword" type="password" placeholder="Пароль" />
		<?PHP endif?>
		<div class="pt-20 checkbox-color mr-0">
			<a class="header-registration__link ml-45" href="<?=HOST?>login">Перейти на страницу входа</a>
		</div>
		<?PHP if ($newPasswordReady==false):?>
		<div class="text-center pt-30">
			<input  name="resetemail" type="hidden" value="<?=$_GET['email']?>" />
			<input name="onetimecode" type="hidden" value="<?=$_GET['code']?>" />
			<input id="registration-form__submit" type="submit" name="set-new-password" class="button button-login button--enter" value="Установить новый пароль">
		</div>
		<?PHP endif?>
</form>