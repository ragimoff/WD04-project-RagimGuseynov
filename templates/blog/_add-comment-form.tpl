<?php if ( isLoggedIn() ) { ?>
	<form class="comment-add-block" method="POST" id="commentForm" action="<?=HOST?>blog/post?id=<?=$post['id']?>">
		<div class="comment-add-block__left">
			<div class="avatar avatar--small">
				<?php if ( $_SESSION['logged_user']['avatar_small'] != "" ) { ?>
				<img src="<?=HOST?>usercontent/avatar/<?=$_SESSION['logged_user']['avatar_small']?>" alt="<?=$_SESSION['logged_user']['firstname']?><?=$_SESSION['logged_user']['secondname']?>" />
				<?php } ?>
			</div>
		</div>
		<div class="comment-add-block__right">
			<h6 class="comment-add-block__right-title">
				<?=$_SESSION['logged_user']['firstname']?>
				<?=$_SESSION['logged_user']['secondname']?>
			</h6>
			<?php require ROOT . "templates/_parts/_errors.tpl" ?>
			<textarea class="textarea textarea--comment-add" name="commentText" placeholder="Присоединиться к обсуждению..."></textarea>
			<input type="submit" class="button" name="addComment" value="Опубликовать">
		</div>
	</form>
<?php } else {?> 
	<!-- Секция "Комментарий - Зарегистрироваться"-->
	<div class="comment-register">
		<p>
			<a href="<?=HOST?>login">Войдите</a> или 
			<a href="<?=HOST?>registration">зарегистрируйтесь</a>
			<br />чтобы оставить комментарий
		</p>
	</div>
<?php } ?>
			<!-- //// Добавление комментария -->