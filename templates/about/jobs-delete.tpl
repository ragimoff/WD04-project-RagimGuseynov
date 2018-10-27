<div class="content">
	<div class="container user-content section-page">
		<div class="row">
			<form class="col-md-10 offset-md-1" method="POST" action="<?=HOST?>about/jobs-delete?id=<?=$job['id']?>" >
				<h1>Удалить описание места работы </h1>
				<div class="user-message mb-20">
				<div class="user-message__top">
					<div class="user-message__date"><?=$job->period?></div>
				</div>
				<div class="user-message__header">
					<div class="user-message__name"><?=$job->title?></div>
				</div>
				<div class="user-message__text">
				<p><?=$job->description?></p>
				</div>
				</div>
				<input type="submit" value="Удалить" class="button button--remove mr-20" name='JobsDelete'>
				<a href="<?=HOST?>about" class="button ">Отмена</a>
			</form>
		</div>
	</div>
</div>