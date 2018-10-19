<!DOCTYPE html>
<html lang="ru">

<head>
	<meta charset="UTF-8" />
	<title>
		<?php if ( @$title != '' ) {
			echo "$title - " . SITE_NAME;
		} else {
			echo SITE_NAME;
		} ?>
	</title>
	<link rel="stylesheet" href="<?=HOST?>templates/assets/libs/normalize-css/normalize.css" />
	<link rel="stylesheet" href="<?=HOST?>templates/assets/libs/bootstrap-4-grid/grid.min.css" />
	<link rel="stylesheet" href="<?=HOST?>templates/assets/css/main.css" />
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800&amp;subset=cyrillic-ext" rel="stylesheet">
	<script defer="defer" src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
</head>