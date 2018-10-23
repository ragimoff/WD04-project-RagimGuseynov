<div class="content">
	<div class="container user-content section-page my-blog">
		<?PHP
		   	if( isset ($_GET['result'])){
			include ROOT ."templates/blog/_results.tpl";
  		}?>
  		
		<div class="row justify-content-between align-items-center pl-15 pr-15 mb-35">
			<div class="title-1">Блог веб-разработчика</div>
				<?php if (isAdmin() ) { ?>
				<a class="button button--edit" href="<?=HOST?>blog/post-new">Добавить пост</a>
				<?php } ?>
			</div>
			<div class="row ">	
				<?PHP foreach ($posts as $post){?>
					     <?PHP include ROOT."templates/_parts/_blog-card.tpl"?>    
				<?PHP }?>
			</div>
	</div>
</div>