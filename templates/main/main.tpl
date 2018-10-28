<div class="content">
		<div class="container user-content section-page about-me__description-wrapper mb-60">
			<?php require_once ROOT . "templates/about/_about-text.tpl"; ?>
		</div>
		<div class="hr-line"> </div>
		<div class="container section-page">
			<div class="title-1">Новые <a href="<?=HOST?>portfolio">работы</a></div>
			<div class="row mb-70">
				<?php foreach ($works as $work) { 
					include ROOT . "templates/portfolio/_work-card.tpl"; 
				} ?>
			</div>
			<div class="title-1">Новые записи в <a href="<?=HOST?>blog">блоге</a></div>
			<div class="row">
				<?php foreach ($posts as $post) { ?>
					<?php include ROOT . "templates/_parts/_blog-card.tpl" ?>
				<?php } ?>
			</div>
		</div>
</div>


