<form id="form-lost" class="login-form p-10 mb-50" method="POST" action="<?=HOST?>lost-password">
	<h1 class="text-center login-heading">Забыл пароль</h1>

	<?php require ROOT . "templates/_parts/_errors.tpl"; ?>
	<?php require ROOT . "templates/_parts/_success.tpl";?>
		<input class="input-form-registration" name="email" type="email" placeholder="Email" />
		<div class="pt-20 checkbox-color mr-0">
			<a class="header-registration__link ml-45" href="<?=HOST?>login">Перейти на страницу входа</a>
		</div>
		<div class="text-center pt-30">
			<input id="registration-form-lost__submit" type="submit" name="lost-password" class="button button-login button--enter" value="Восстановить пароль">
		</div>
</form>