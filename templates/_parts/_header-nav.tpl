<nav class="header-nav">
	<ul>
		<li class="header-nav__item">
			<a class="header-nav__link <?=($uri[0] == "") ? "header-nav__link--active": ""?>" href="<?=HOST?>">Главная</a>
		</li>
		<li class="header-nav__item">
			<a class="header-nav__link <?=($uri[0] == "about") ? "header-nav__link--active": ""?>" href="<?=HOST?>about">Обо мне</a>
		</li>
		<li class="header-nav__item">
			<a class="header-nav__link <?=($uri[0] == "portfolio") ? "header-nav__link--active": ""?>" href="<?=HOST?>portfolio">Работы</a>
		</li>
		<li class="header-nav__item">
			<a class="header-nav__link <?=($uri[0] == "blog") ? "header-nav__link--active": ""?>" href="<?=HOST?>blog">Блог</a>
		</li>
		<li class="header-nav__item">
			<a class="header-nav__link <?=($uri[0] == "contacts") ? "header-nav__link--active": ""?>" href="<?=HOST?>contacts">Контакты</a>
		</li>
	</ul>
</nav>