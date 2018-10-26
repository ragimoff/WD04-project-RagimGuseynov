<div class="content">
	<div class="container user-content section-page">
		<div class="row">
			<form class="col-md-10 offset-md-1" action="edit-text" method="POST" enctype="multipart/form-data">
				<h1>Редактировать - Обо Мне</h1>
					<?php require ROOT . "templates/_parts/_errors.tpl" ?>
					<div class="form-group">
						<label class="label">Имя, фамилия<input class="input" name="firstname" type="text" placeholder="Введите имя" value="<?=$about->firstname?>" /></label>
					</div>
					<p class="label mb-0">Фотографии</p>
					<p class="mt-0">Изображение jpg или png, рекомендуемый размер 205px на 205px, вес до 2Мб.</p>
					<input class="inputfile" type="file" name="photo" id="file" />
					<label class="label-input-file" for="file">Выбрать файл</label>
					<span>Файл не выбран</span>
					<div class="mt-20">
						<div class="avatar avatar--small">

							<img src="<?=HOST?>usercontent/about/<?=$about->photo?>" alt="avatar" />
						</div>
					</div>
				<div class="form-group">
					<label class="label"> Информация на главной<textarea id="ckEditor" class="textarea" name="description" type="type" placeholder="Введите информацию о себе..."><?=$about->description?></textarea>
							<?php include_once ROOT . "templates/_parts/_ckEditorConnect.tpl" ?>
					</label>
				</div>
				<input class="button button--save mr-20" type="submit" name="textUpdate" value="Сохранить" />
				<a class="button" href="#">Отмена</a>
			</form>
		</div>
	</div>
</div>