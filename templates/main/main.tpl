

<div class="content">

		<div class="container user-content section-page about-me__description-wrapper mb-60">
			<?php require_once ROOT . "templates/about/_about-text.tpl"; ?>
		
		</div>
		<div class="hr-line"> </div>
		<div class="container section-page">
			<div class="title-1">Новые <a href="#">работы</a></div>
			<div class="row mb-70">
				<div class="col-md-4">
					<div class="card card--portfolio">
						<div class="card__img"><img src="../img/blog/Portfolio-1.png" alt="img" /></div>
						<div class="card__desc pl-20 pr-20">
							<div class="card__title">Верстка Landing Page</div><a class="button" href="Смотреть кейс">Смотреть кейс</a>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card card--portfolio">
						<div class="card__img"><img src="../img/blog/Portfolio-2.png" alt="img" /></div>
						<div class="card__desc pl-20 pr-20">
							<div class="card__title">Верстка UI набора</div><a class="button" href="Смотреть кейс">Смотреть кейс</a>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card card--portfolio">
						<div class="card__img"><img src="../img/blog/Portfolio-3.png" alt="img" /></div>
						<div class="card__desc pl-20 pr-20">
							<div class="card__title">Верстка интернет магазина</div><a class="button" href="Смотреть кейс">Смотреть кейс</a>
						</div>
					</div>
				</div>
			</div>
			<div class="title-1">Новые записи в <a href="<?=HOST?>blog">блоге</a></div>
			<div class="row">
				<?php foreach ($posts as $post) { ?>
				<?php include ROOT . "templates/_parts/_blog-card.tpl" ?>
				<?php } ?>
			</div>
		</div>

</div>


