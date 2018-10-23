<?php if($_GET['result'] == 'catCreated')   {   ?>
	<div class="notify success-error mt-10">Категория успешно добавлена!</div>
<?php }  ?>

<?php if($_GET['result'] == 'catUpdated')   {   ?>
	<div class="notify success-error mt-10">Категория успешно отредактирована!</div>
<?php }  ?>

<?php if($_GET['result'] == 'catDeleted')   {   ?>
	<div class="notify notify--error mt-10">Категория успешно удалена!</div>
<?php }  ?>
