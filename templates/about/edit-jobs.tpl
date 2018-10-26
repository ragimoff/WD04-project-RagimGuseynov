<div class="content">
	<div class="section-page">
		<div class="container">
			<div class="row">
				<div class="col-md-10 offset-md-1 user-content">
					<div class="title-1 mb-35">Редактировать - Опыт работы</div>
						<?php foreach($jobs as $job) { ?>
							<?php include ROOT . "templates/about/_card-job-edit.tpl" ?>
						<?php } ?>
					<div class="title-1 mb-35">Добавить новое место</div>
					<?php require ROOT . "templates/_parts/_errors.tpl" ?>
					<form class="add-job-block" action="<?=HOST?>edit-jobs" method="POST">
						<div class="form-group">
							<label class="label">Период<input class="input" name="period" type="text" placeholder="Введите даты начала и окончания работы" value="<?=@$_POST['period']?>" />
							</label>
						</div>
						<div class="form-group">
							<label class="label">Название должности<input class="input" name="title" type="text" placeholder="Введите название должности" value="<?=@$_POST['title']?>" />
							</label>
						</div>
						<div class="form-group">
							<label class="label">Описание работы, должностные обязанности, достигнутые результаты<textarea class="textarea" name="description" type="type" placeholder="Напишите интересное краткое содержательное описание"><?=@$_POST['description']?></textarea>
							</label>
						</div>
						<input class="button button--save" name="newJob" type="submit" value="Добавить">
					</form>
				</div>
			</div>
		</div>
	</div>
</div>