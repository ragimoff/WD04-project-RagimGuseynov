<div class="content">
	<div class="container mb-100">
		<div class="title-1 mb-0">Сообщение от пользователя </div>
		<?php foreach ($messages as $message): ?>
			<?php include ROOT . "/templates/contacts/message-card.tpl" ?>
		<?php endforeach ?>		
	</div>
</div>