<?php
	foreach ($success as $item) {
		if (count($item) == 1) { ?>
		<div class="notify success-error mt-10"><?=$item['title']?></div>
		<?php } else if (count($item) == 2 ) { ?>
		<div class="notify no-radius-bottom success-error mt-10"><?=$item['title']?></div>
		<div class="notify no-radius-top"><?=$item['desc']?></div>
	<?php }
	}
?>