<div class="content">
	<?php
		if( isset ($_GET['result']) ) {
			include ROOT . "templates/categories/_results.tpl";
		}
	?>
	<div class="container user-content section-page about-me__description-wrapper mb-60">
		<?php include(ROOT.'templates/about/_about-text.tpl')?>
	</div>
	<div class="user-content section-page about-me__tech-wrapper indicators-section dark mt-60 pt-50 mb-80 pb-40">
		<?php include(ROOT . 'templates/about/_about-skills.tpl')?>
	</div>
	<div class="container user-content section-page about-me__jobs-list-wrapper">
		<?php include(ROOT . 'templates/about/_about-jobs.tpl')?>
	</div>
</div>