<div class="col-md-4">
	<div class="card card--portfolio mt-50">
		<div class="card__img">
			<?php if ($work->work_img_small !='') { ?>
				<img src="<?=HOST?>usercontent/portfolio/<?=$work->work_img_small?>" alt="<?=$work->title?>" />
			<?php } else { ?>
				<img src="<?=HOST?>usercontent/no-foto.jpg" alt="<?=$work->title?>" />
			<?php } ?>
		</div>
		<div class="card__desc pl-20 pr-20">

			<div class="card__title"><?=mbCutString($work->title, 48)?></div>
			<a class="button" href="<?=HOST?>portfolio/work?id=<?=$work->id?>">Смотреть кейс</a>
		</div>
	</div>
</div>