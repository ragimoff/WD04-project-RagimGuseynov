<div class="content">
	<div class="container user-content section-page">
		<div class="row">
			<form class="col-md-10 offset-md-1" action="<?=HOST?>blog/post-delete?id=<?=$post['id']?>" method="POST">
				<h1>Удалить блог</h1>
				<div class="form-group">
					<p>Вы действительно хотите удалить пост <strong><?=$post['title']?></strong> c id = <?=$post['id']?> ?</p>
				</div>
				<input type="submit" name="postDelete" class="button button--remove mr-20" value="Удалить" />
				<a class="button" href="<?=HOST?>blog/blog">Отмена</a>
			</form>
		</div>
	</div>
</div>