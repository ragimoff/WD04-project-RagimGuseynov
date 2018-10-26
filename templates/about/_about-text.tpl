<div class="row">
	<div class="col-md-3">
		<div class="avatar">
			<img src="<?=HOST?>usercontent/about/<?=$about->photo?>" alt="avatar" />
		</div>
	</div>
	<div class="col-md-9">
		<div class="about-me__title-container justify-content-between">
			<div class="title-1 about-me__title-container-item"><?=$about->firstname?></div>
			<div class="button-edit__about-me-item">
				<?php if ( isAdmin() ) { ?>
					<a class="button button--edit" href="<?=HOST?>edit-text">Редактировать</a>
				<?php } ?>
			</div>
		</div>
		<div class="about-me__description">
			<p><?=$about->description?></p>
		</div>
	</div>
</div>