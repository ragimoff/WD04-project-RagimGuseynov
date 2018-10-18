<?php
	foreach ($errors as $error) {
		if (count($error) == 1) { ?>

	<div class="notify notify--error mt-10"><?=$error['title']?></div>
		<?php } else if (count($error) == 2 ) { ?>
		<div class="notify no-radius-bottom notify--error mt-10"><?=$error['title']?></div>
		<div class="notify no-radius-top"><?=$error['desc']?></div>
	<?php }
	}
?>