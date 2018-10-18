<form class="login-form pt-30 pb-30" id="registration-form" action="<?=HOST?>registration" method="POST">
	<h1 class="text-center login-heading mt-0 pt-0">Регистрация</h1>
	
	<?php require ROOT . "templates/_parts/_errors.tpl";?>
	
	<input id="email" class="input-form-registration" name="email" type="email" placeholder="Email" />
	<input id="password" class="input-form-registration" name="password" type="password" placeholder="Пароль" />
	<div class="text-center pt-30 mb-20">
		<input id="registration-form__submit" type="submit" name="register" class="button button--enter pl-50 pr-50" value="Регистрация">
	</div>
</form>