<?php $work = R::load('works', $_GET['id']); ?>
<div class="content">
	<section class="my-portfolio">
		<div class="my-portfolio__gradient">
			<div class="my-portfolio__logo pt-55 mb-100 ml-50">
				<div class="logo">
					<div class="logo-icon"><i class="far fa-paper-plane"></i></div>
					<div class="logo_description">
						<a class="header-logo__title" href="#">Digital Lifestyle</a>
						<a class="header-logo__sub" href="#">Сайт IT специалиста</a></div>
				</div>
			</div>
			<div class="container user-content">
				<div class="row">
					<div class="col-md-11 mt-25 mb-10 offset-md-1 my-portfolio__row">
						<h1 class="mright-100 button-right-top"><?=$work['title']?></h1>
						<?php if ( isAdmin() ) { ?>
							<a class="button button_absolute-right button--edit" href="<?=HOST?>portfolio/work-edit?id=<?=$work['id']?>">Редактировать</a>
							<a class="button button--remove " href="<?=HOST?>portfolio/work-delete?id=<?=$work['id']?>">Удалить</a>
						<?php } ?>
					</div>
				</div>
				<div class="row">
					<div class="col-md-10 offset-md-1">
						<div class="post mb-0">
							<div class="post-infom mt-0">
								<div class="post-info__subtitle mb-55 my-portfolio__row">
									<div class="post-info__author"><?=$work['firstname']?> <?=$work['secondname']?></div>
									<div class="post-info__topic">
										<a class="post-info__link" href="#">Работы</a>
									</div>
									<div class="post-info__date"><?php echo rus_date("j F Y H:i", strtotime($work['date_time'])); ?></div>
								</div>
							</div>
							<?php if ($work['workPhoto'] !='') { ?>
							<div class="post-img">
								<img src="<?=HOST?>usercontent/portfolio/<?=$work['workPhoto']?>" alt="ausmaids-home" />
							</div>
							<?php } ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="my-portfolio__description">
		<div class="container user-content">
			<div class="row">
				<div class="mb-50 col-md-10 my-portfolio__row offset-md-1">
					<div class="col-md-6 ml-md-0 pl-md-0">
						<h3>Кратко о проекте</h3>
						<p><?=$work['text']?></p>
					</div>
					<div class="col-md-4">
						<h3>Технологии</h3>
						<nav class="my-portfolio__nav">
							<ul>
								<li class="my-portfolio__item"><?=$work['tech']?></li>
								<!-- <li class="my-portfolio__item">JavaScript, jQuery.</li>
								<li class="my-portfolio__item">LESS, PUG, Gulp, npm, bower.</li> -->
							</ul>
						</nav>
						<?php if ($work->link !='') { ?>
						<h3>Ссылка на проект</h3>
						<a href="<?=$work['link']?>" target="_blank"><?=$work['link']?></a>
						<?php } ?>
						<?php if ($work->github !='') { ?>
						<h3>Код на github</h3>
						<a href="<?=$work['github']?>" target="_blank"><?=$work['github']?></a>
						<?php } ?>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-10 my-portfolio__buttons-nav offset-md-1">
					<a class="button button--icon-left" href="#"><i class="fas fa-arrow-left"></i>Все работы</a>
					<a class="button button--icon-right" href="#">Следующая работа<i class="fas fa-arrow-right"></i></a>
				</div>
			</div>
		</div>
	</section>
</div>