<div class="content">
	<form class="container user-content section-page" method="POST" action="<?=HOST?>portfolio/work-new" enctype="multipart/form-data">
		<div class="row">
			<div class="col-md-10 offset-md-1">
				<h1>Добавить работу</h1>
				<?php require ROOT . "templates/_parts/_errors.tpl" ?>
				<div class="form-group">
					<label class="label">Название<input class="input" name="workTitle" type="text" placeholder="Введите название работы" /></label>
				</div>
				<p class="label mb-0">Изображение</p>		
				<p class="mt-0">Изображение jpg или png, рекомендуемая ширина 945px и больше, высота от 400px и более, вес до 2Мб.</p>
				<div>
					<input class="inputfile" type="file" name="workPhoto" id="file" />
					<label class="label-input-file" for="file">Выбрать файл</label>
					<span>Файл не выбран</span>
				</div>
				
				<div class="form-group">
					<label class="label"> Содержание<textarea class="textarea" name="workText" type="type" placeholder="Введите описание"></textarea></label>
				</div>
				<div class="form-group">
					<label class="label"> Результат<textarea class="textarea" name="workResult" type="type" placeholder="Введите описание"></textarea></label>
				</div>
				<div class="form-group">
					<label class="label"> Технологии<textarea class="textarea" id="ckEditor" name="workTech" type="type" placeholder="Введите описание"></textarea><?php include_once ROOT . "/templates/_parts/_ckEditorConnect.tpl" ?></label>
				</div>
			</div>
		</div>
		<div class="project-links">
			<div class="row">
				<div class="col-md-3 offset-md-1">
					<div class="form-group">
						<label class="label">Ссылка на проект<input class="input" name="workLink" type="text" placeholder="Введите ссылку" /></label>
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group">
						<label class="label">Ссылка на GitHub<input class="input" name="workGit" type="text" placeholder="Введите ссылку" /></label>
					</div>
				</div>
			</div>
		</div>
		<div class="project-buttons">
			<div class="row">
				<div class="col-md-12 offset-md-1">
					<input type="submit" name="workNew" class="button button--save" value="Сохранить">
					<a class="button" href="<?=HOST?>portfolio">Отмена</a>
				</div>
			</div>
		</div>
	</form>
</div>