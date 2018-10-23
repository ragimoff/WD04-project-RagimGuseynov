<div class="content">
	<div class="container user-content section-page">
		<div class="row">
			<form class="col-md-10 offset-md-1" action="<?=HOST?>blog/post-edit?id=<?=$post['id']?>" method="POST" enctype="multipart/form-data">
				<h1>Редактировать пост</h1>
				<?php require ROOT . "templates/_parts/_errors.tpl" ?>
				<div class="form-group">
					<label class="label">
						Название
						<input class="input" name="postTitle" type="text" placeholder="Введите название" value="<?=$post['title']?>" />
					</label>
				</div>
				<div class="form-group">
					<label class="label">
						Категория
					</label>
					<select class="select" name="postCat">
						<?php foreach ($cats as $cat): ?>
							<option value="<?=$cat['id']?>"
								<?php echo ($post['cat']==$cat['id']) ? "selected" : ""; ?> ><?=$cat['cat_title']?>
							</option>
						<?php endforeach ?>
					</select>
				</div>
				<div class="blog-edit__container">
					<b>Изображение</b>
					<p class="mb-10"> Изображение jpg или png, рекомендуемая ширина 945px и больше, высота от 400px и более, вес до 2Мб.</p>
				</div>
				<div class="blog-edit__fileUp">
					<input class="inputfile" type="file" name="postImg" id="file" />
					<label class="label-input-file" for="file">Выбрать файл</label>
					<span>Файл не выбран</span>
					<?PHP if ($post['post_img_small'] !=''){?>
						<div class="section-ui">
							<div class="formInput-image">
								<img src="<?=HOST?>usercontent/blog/<?=$post['post_img_small']?>" alt="<?=$post->title?>" />
								<div class="formInput-image__delete-button">
									<a class="button button--small button--remove" href="#">Удалить</a>
								</div>		
							</div>
						</div>
					<?PHP } ?>		
				</div>
				
				<div class="form-group">
					<label class="label">Содержание
						<textarea id="ckEditor" class="textarea" name="postText" type="type" placeholder="Введите текст"><?=$post['text']?></textarea>
						<?php include_once ROOT . "templates/_parts/_ckEditorConnect.tpl" ?>
					</label>
				</div>
				<input type="submit" name="postUpdate" class="button button--save mr-20" value="Сохранить" placeholder="Сохранить" />
				<a class="button" href="<?=HOST?>blog">Отмена</a>
			</form>
		</div>
	</div>
</div>