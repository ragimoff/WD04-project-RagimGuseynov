<div class="col-md-4 mb-50">
	<div class="card card--post">
		<div class="card__img">
			<?PHP if ($post->post_img_small !=''){?>
		
			<img src="<?=HOST?>usercontent/blog/<?=$post->post_img_small?>" alt="<?=$post->title?>" />
			<?PHP } else {?>
				<img src="<?=HOST?>usercontent/no-foto.jpg?>" alt="<?=$post->title?>" />
			<?PHP } ?>
		
		</div>
		<div class="card__desc">
			<div class="card__title">
		
			<?PHP 
				echo mbCutString($post->title, 48);
			?>
		
			</div>
			<a class="button" href="<?=HOST?>blog/post?id=<?=$post->id?>">Читать</a>
		</div>
	</div>
</div>