<div class="content">
	<div class="container user-content section-page">
		<div class="row">
			<form class="col-md-10 offset-md-1" action="<?=HOST?>blog/category-edit?id=<?=$cat['id']?>" method="POST">
				<h1>Редактировать категорию</h1>
				<?php require ROOT . "templates/_parts/_errors.tpl" ?>

				<div class="form-group">
					<label class="label">
						Название категории
						<input class="input" name="catTitle" type="text" placeholder="Введите название" value="<?=$cat['cat_title']?>" />
					</label>
				</div>
				<input type="submit" name="catEdit" class="button button--save mr-20" value="Сохранить" placeholder="Сохранить" />
				<a class="button" href="<?=HOST?>blog/categories">Отмена</a>
			</form>
		</div>
	</div>
</div>