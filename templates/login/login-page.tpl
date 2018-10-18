<body class="login-page">
	<div class="login-page-content">
		<div class="login-page">
			<div class="header-top pl-50 pt-45 mb-0">
				<div class="logo">
					<div class="logo-icon"><i class="far fa-paper-plane"></i></div>
					<div class="logo_description">
						<a class="header-logo__title" href="index.html">Супер сайт</a>
						<a class="header-logo__sub" href="index.html"></a>
					</div>
				</div>

				<div class="header-registration pr-50">
					<?php if ($uri[0] == 'registration') { ?>
						<a class="header-registration__link" href="<?=HOST?>login">Вход</a>
					<?php } else { ?>
						<a class="header-registration__link" href="<?=HOST?>registration">Регистрация</a>
					<?php } ?>
				</div>
			</div>
			<div class="login-page-conteiner">
				<div class="login-form__background">
					<?=$content?>
				</div>
			</div>
			<div class="login-page-footer">
				<div class="footer__item footer__copyright">
					<p class="text-center">Создано с <i class="fas fa-heart animation-pulse"></i>в
						<a href="http://webcademy.ru" target="_blank">
							<span>WebCademy.ru</span>
						</a>в 2018 году</p>
				</div>
			</div>
		</div>
	</div>