<div class="comments-item mt-20">
	<div class="avatar-block">
		<div class="avatar avatar--small">
			<?php if ($comment['avatar_small'] != '') {?>
			<img src="<?=HOST?>usercontent/avatar/<?=$comment['avatar_small']?>" alt='<?=$comment["firstname"]?> <?=$comment["secondname"]?>' />
			<?php } ?>
		</div>
	</div>
	<div class="comment-item__content">
		<div class="comment-item__top">
			<div class="user-name"><?=$comment['firstname']?> <?=$comment['secondname']?></div>
			<div class="comment-item__date">
				<span><i class="far fa-clock"></i></span>
				<span><?=$comment['date_time']?></span>
			</div>
		</div>
		<div class="comment-item__text"><?=$comment['text']?></div>
	</div>
</div>