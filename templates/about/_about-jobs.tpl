<div class="row">
	<div class="col-md-9 offset-md-3">
		<div class="about-me__jobs-container justify-content-between mb-30">
			<div class="title-1 about-me__jobs-container-item">Опыт работы</div>
			<div class="button-edit__about-me-item">
				<?php if ( isAdmin() ) { ?>
				<a class="button button--edit" href="<?=HOST?>edit-jobs">Редактировать</a>
				<?php } ?>
			</div>
		</div>
		<ul class="about-me__definition-list">
			<?php foreach($jobs as $job) { ?>
				<?php include ROOT . "templates/about/_card-job.tpl" ?>
			<?php } ?>
		</ul>
	</div>
</div>