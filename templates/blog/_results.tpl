<?PHP if($_GET['result'] == 'postDeleted'){?>		
	<div class="notify no-radius-bottom notify--error mt-20 mb-10 " data-notify-hide>
		Пост успешно удален!
	</div>	
<?PHP } ?> 
<?PHP if($_GET['result'] == 'postCreated'){?>		
	<div class="notify no-radius-bottom success-error mt-20 mb-10 success-error " data-notify-hide>
		Пост успешно добавлен!
	</div>		
<?PHP } ?> 
<?PHP if($_GET['result'] == 'postUpdated'){?>	
	<div class="notify no-radius-bottom success-error mt-20 mb-10 success-error " data-notify-hide>
		Пост успешно отредактирован!
	</div>	
<?PHP } ?> 

<?php if ($_GET['result'] == 'messageDelete') {?>
	<div class="mt-20 notify notify--error mb-20" data-notify-hide>
		Сообщение было удалено.
	</div>
<?php } ?>