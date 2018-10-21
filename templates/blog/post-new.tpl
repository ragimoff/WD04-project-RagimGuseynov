<div class="content">
	<div class="container user-content section-page">
		<div class="row">
			<form class="col-md-10 offset-md-1" action="<?=HOST?>blog/post-new" method="POST" enctype="multipart/form-data">
				<h1>Добавить пост</h1>
				<?php require ROOT . "templates/_parts/_errors.tpl" ?>
				<div class="form-group">
					<label class="label">
						Название
						<input class="input" name="postTitle" type="text" placeholder="Введите название"/>
					</label>
				</div>
				<div class="blog-edit__container">
					<b>Изображение</b>
					<p class="mb-10"> Изображение jpg или png, рекомендуемая ширина 945px и больше, высота от 400px и более, вес до 2Мб.</p>
				</div>
				<div class="blog-edit__fileUp">
					<input class="inputfile" type="file" name="postImg" id="file" />
					<label class="label-input-file" for="file">Выбрать файл</label>
					<span>Файл не выбран</span>
				</div>
				<div class="form-group">
					<label class="label">Содержание
						<textarea class="textarea" name="postText" type="type" placeholder="Введите текст"></textarea>
					</label>
				</div>
				<input type="submit" name="postNew" class="button button--save mr-20" value="Сохранить" placeholder="Сохранить" />
				<a class="button" href="<?=HOST?>blog">Отмена</a>
			</form>
		</div>
	</div>
</div>