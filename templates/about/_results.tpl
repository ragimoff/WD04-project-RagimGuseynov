<?PHP if($_GET['result']=='catCreated'){?>		
	<div class="notify no-radius-bottom success-error mt-10 success-error" data-notify-hide>
		Место работы успешно добавлено!
	</div>	
<?PHP } ?> 

<?PHP if($_GET['result']=='catUpdate'){?>		
	<div class="notify no-radius-bottom success-error mt-10 success-error" data-notify-hide>
		Место работы успешно отредактировано!
	</div>	
<?PHP } ?> 

<?PHP if($_GET['result']=='catDelete'){?>
	<div class="notify no-radius-bottom notify--error mt-10 " data-notify-hide>
		Место работы успешно удалено!
	</div>	
<?PHP } ?> 