<?php function showIndicator($title, $value, $color = ''){ 
	$offset = 314.16 * ( 1 - intval($value)/100 ); 
?>
	<div class="indicator">
		<svg class="svg-box" viewBox="0 0 112 112">
			<circle class="circle-1" cx="56" cy="56" r="50"></circle>
			<circle 
				<?php if ($color == '') { ?>
					class="circle-2"
				<? } else { ?>
					class="circle-2 <?=$color?>"
				<? } ?> 
			cx="56" cy="56" r="50" stroke-dasharray="314.16" stroke-dashoffset="<?=$offset?>"></circle>
		</svg>
		<div class="indicator__value"><?=$title?></div>
	</div>	
<?php } ?>

<div class="container">
	<div class="row justify-content-between align-items-center">
		<div class="col-md-9 offset-md-3">
			<div class="about-me__tech-title-container justify-content-between mb-40">
				<div class="about-me__tech-title-container-block">
					<div class="title-3">Технологии <br /></div>
					<p class="about-me__tech-title-container-item">Которые использую в работе</p>
				</div>
				<div class="button-edit__about-me-item">
					<?php if ( isAdmin() ) { ?>
					<a class="button button--edit" href="<?=HOST?>edit-skills">Редактировать</a>
					<?php } ?>
				</div>
			</div>
		</div>
	</div>
	<div class="row justify-content-between align-items-center">
		<div class="col-md-3 text-center">
			<div class="title-3 pb-40">Frontend</div>
		</div>
		<div class="col-md-9">
			<div class="indicators-section dark">
				<div class="indicators-row">
					<?php showIndicator('HTML5', $skills['html'], 'green'); ?>
					<?php showIndicator('CSS3', $skills['css'], 'green'); ?>
					<?php showIndicator('JS', $skills['js'], 'green'); ?>
					<?php showIndicator('Jquery', $skills['jquery'], 'green'); ?>
				</div>
			</div>
		</div>
	</div>
	<div class="row justify-content-between align-items-center">
		<div class="col-md-3 text-center">
			<div class="title-3 pb-40">Backend</div>
		</div>
		<div class="col-md-9">
			<div class="indicators-section dark">
				<div class="indicators-row">
					<?php showIndicator('PHP', $skills['php'], 'blue'); ?>
					<?php showIndicator('MySql', $skills['mysql'], 'blue'); ?>
				</div>
			</div>
		</div>
	</div>
	<div class="row justify-content-between align-items-center">
		<div class="col-md-3 text-center">
			<div class="title-3 pb-40">Workflow</div>
		</div>
		<div class="col-md-9">
			<div class="indicators-section dark">
				<div class="indicators-row">
					<?php showIndicator('Git', $skills['git'], 'yellow'); ?>
					<?php showIndicator('Gulp', $skills['gulp'], 'yellow'); ?>
					<?php showIndicator('Yarn', $skills['yarn'], 'yellow'); ?>
					<!-- <div class="indicator">
						<svg class="svg-box" viewBox="0 0 112 112">
							<circle class="circle-1" cx="56" cy="56" r="50"></circle>
							<circle class="circle-2" cx="56" cy="56" r="50" stroke-dashoffset="31.415999999999997" stroke="#ffcc00"></circle>
						</svg>
						<div class="indicator__value">WebPack </div>
					</div> -->
				</div>
			</div>
		</div>
	</div>
</div>