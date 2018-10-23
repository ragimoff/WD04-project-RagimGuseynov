<?php if ( isAdmin() ) {include ROOT . "templates/_parts/_admin-panel.tpl";} ?>
<header class="header">
	<div class="header-admin__container">
		<div class="header-top">
			<?php include(ROOT . "templates/_parts/_header-logo.tpl"); ?>
			
			<?php 
				if ( isLoggedIn() ) {
					// Пользователь на сайте
					if ($_SESSION['role'] != 'admin') {
						// Пользователь на сайте не админ
						include(ROOT . "templates/_parts/_header-user-profile.tpl");
					} 
				} else {
					// Нет Пользователя на сайте
					include(ROOT . "templates/_parts/_header-user-login.tpl");
			} ?>

			
		</div>
		<?php include(ROOT . "templates/_parts/_header-nav.tpl"); ?>
	</div>
</header>