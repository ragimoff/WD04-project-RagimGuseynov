<div class="content">
	<form class="container user-content section-page" action="<?=HOST?>portfolio/work-edit?id=<?=$work['id']?>" method="POST" enctype="multipart/form-data">
		<div class="row">
			<div class="col-md-10 offset-md-1">
				<h1>Редактировать работу</h1>
				<?php require ROOT . "templates/_parts/_errors.tpl" ?>
				<div class="form-group">
					<label class="label">Название<input class="input" name="workTitle" type="text" value="<?=$work['title']?>" placeholder="Введите название" /></label>
				</div>
				
				<p class="label mb-0">Изображение</p>
				
				<p class="mt-0">Изображение jpg или png, рекомендуемая ширина 945px и больше, высота от 400px и более, вес до 2Мб.</p>
				<div>
					<input class="inputfile" type="file" name="workPhoto" id="file" />
					<label class="label-input-file" for="file">Выбрать файл</label>
					<span>Файл не выбран</span>
				</div>
				<?php if ($work['work_img_small'] !='') { ?>
					<div class="form-group formInput-image">
						<img src="<?=HOST?>usercontent/portfolio/<?=$work['work_img_small']?>" alt="<?=$work->title?>" />
						<div class="formInput-image__delete-button mt-10 delete-img">
							<input class="delete-img__check" id="deleteImg" type="checkbox" name="deleteImg" value="Удалить">
							<label class="" for="deleteImg"> + удалить изображение из системы</label>
						</div>
					</div>
				<?php } ?>
				<div class="form-group">
					<label class="label"> Содержание<textarea class="textarea" name="workText" type="type" placeholder="Введите описание"><?=$work['text']?></textarea></label>
				</div>
				<div class="form-group">
					<label class="label"> Результат<textarea class="textarea" name="workResult" type="type" placeholder="Введите описание" ><?=$work['result']?></textarea></label>
				</div>
				<div class="form-group">
					<label class="label"> Технологии<textarea class="textarea" id="ckEditor" name="workTech" type="type" placeholder="Введите описание"><?=$work['tech']?></textarea><?php include_once ROOT . "/templates/_parts/_ckEditorConnect.tpl" ?></label>
				</div>
			</div>
		</div>
		<div class="project-links">
			<div class="row">
				<div class="col-md-3 offset-md-1">
					<div class="form-group">
						<label class="label">Ссылка на проект<input class="input" name="workLink" type="text" placeholder="<?=$work['link']?>" value="<?=$work['link']?>" /></label>
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group">
						<label class="label">Ссылка на GitHub<input class="input" name="workGit" type="text" placeholder="<?=$work['github']?>" value="<?=$work['github']?>" /></label>
					</div>
				</div>
			</div>
		</div>
		<div class="project-buttons">
			<div class="row">
				<div class="col-md-12 offset-md-1">
					<input type="submit" name="workUpdate" class="button button--save" value="Сохранить">
					<a class="button" href="<?=HOST?>portfolio">Отмена</a></div>
			</div>
		</div>
	</form>
</div>