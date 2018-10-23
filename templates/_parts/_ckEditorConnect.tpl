<script src="<?=HOST?>libs/ckeditor/ckeditor.js"></script>

<script>
	document.addEventListener('DOMContentLoaded', function(){
		CKEDITOR.replace('ckEditor', {
		  	//uiColor: '#9ABBF3',
		  	customConfig: '<?=HOST?>templates/assets/js/ckEditorConfig.js'
		});
	});

</script>