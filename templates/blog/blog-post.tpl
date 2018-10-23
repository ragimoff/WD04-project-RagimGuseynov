<div class="content">
	<div class="container user-content section-page">
		<div class="row">
			<div class="col-md-10 offset-md-1">
				<div class="post">
					<div class="post-row-top">
						<?PHP if( isAdmin () ){
							$additionalHeaderClass = 'mright-100';	
						}?>
						<h1 class ='<?=@$additionalHeaderClass?>'><?=$post['title']?></h1>
						<?PHP if (isAdmin()) { ?>
							<div class="button-right-top">
								<a class="button_absolute button button--edit mt-25" href="<?=HOST?>blog/post-edit?id=<?=$post['id']?>">Редактировать</a>
								<a class="button button--remove mt-25" href="<?=HOST?>blog/post-delete?id=<?=$post['id']?>">Удалить</a>
							</div>
						<?PHP } ?>
					</div>
					<div class="post-info">
						<div class="post-info__author"><?=$post['firstname']?> <?=$post['secondname']?></div>
						<div class="post-info__topic">
							<a class="post-info__link" href="#"><?=$post['cat_title']?></a>
						</div>
						<div class="post-info__date"><? echo rus_date("j F Y H:i", strtotime($post['date_time']) );?></div>
						<!--<?PHP if (count($comments)>0){?> -->
							<div class="post-info__comments"><a class="post-info__link" href="#comment"><?PHP commentNumber(count($comments));?></a></div>
						<!-- <?PHP }?> -->
					</div>
					<!--<?PHP if ($post['post_image'] !=''){?>-->
						<div class="post-img">
							<img src="<?=HOST?>usercontent/blog/<?=$post['postImg']?>" alt="<?=$post['title']?>" />
						</div>
					<!--<?PHP }?>-->
					<div class="post-text">
						<p><?=$post['text']?></p>
					</div>
				</div>
				<div class="post-buttons-navigation">
					<a class="button button--icon-left" href="#"><i class="fas fa-arrow-left"></i>Назад</a>
					<a class="button button--icon-right button-blog-next" href="#">Вперёд<i class="fas fa-arrow-right"></i></a>
				</div>
				<!--<?PHP if (count($comments)>0){?>-->
					<h2 id='comment'> <?PHP commentNumber(count($comments));?></h2>
				<!-- 	<?PHP foreach ($comments as $comment){?>
					<?php include ROOT. "templates/blog/_comment-card.tpl"?>
					<?PHP }?>
				<?PHP }?> -->
				<div class="comments-item">
					<div class="avatar-block">
						<div class="avatar avatar--small"><img src="../img/avatars/avatar-2.jpg" alt="avatar" /></div>
					</div>
					<div class="comment-item__content">
						<div class="comment-item__top">
							<div class="user-name"> Джон До</div>
							<div class="comment-item__date">
								<span><i class="far fa-clock"></i></span>
								<span>  05 мая 2017 года в 15:45</span>
							</div>
						</div>
						<div class="comment-item__text">Замечательный парк, обязательно отправлюсь туда этим летом. </div>
					</div>
				</div>
				<div class="comments-item">
					<div class="avatar-block">
						<div class="avatar avatar--small"><img src="../img/avatars/avatar-3.jpg" alt="avatar" /></div>
					</div>
					<div class="comment-item__content">
						<div class="comment-item__top">
							<div class="user-name"> Джон До</div>
							<div class="comment-item__date">
								<span><i class="far fa-clock"></i></span>
								<span>  05 мая 2017 года в 15:45</span>
							</div>
						</div>
						<div class="comment-item__text">Замечательный парк, обязательно отправлюсь туда этим летом. </div>
					</div>
				</div>
				<h2> Оставить комментарий</h2>
				<div class="comment-add-block">
					<div class="comment-add-block__left">
						<div class="avatar avatar--small"><img src="../img/avatars/avatar-1.jpg" alt="avatar" /></div>
					</div>
					<div class="comment-add-block__right">
						<h6 class="comment-add-block__right-title">Юрий Ключевский</h6>
						<div class="notify notify--error">Комментарий не может быть пустым</div><textarea class="textarea textarea--comment-add" name="add_comment" placeholder="Присоединиться к обсуждению..."></textarea><a class="button" href="#">Опубликовать</a></div>
				</div>
			</div>
		</div>
	</div>
</div>