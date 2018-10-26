<div class="content">
	<div class="container mb-100">
		<?php 
					if (isset($_GET['result'])) {
						include ROOT . 'templates/blog/_results.tpl';
					}
?>
		<div class="title-1 mb-0">Сообщение от пользователя </div>
		<?php foreach ($messages as $message): ?>
			<?php include ROOT . "/templates/contacts/message-card.tpl" ?>
		<?php endforeach ?>		
	</div>
</div>