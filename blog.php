<?php 
require_once('config.php');
require_once(ROOT_PATH . '/includes/functions.php');
require_once(ROOT_PATH . '/includes/lessfunc.php');
#Өгөгдлийн сангаас бүх Постийг  дуудах
$posts = getPublishedPosts(); 
$lasts = getPostsLimit3();
$books = showbook(); 
$lessons = showLessons();
require_once( ROOT_PATH . '/includes/head.php'); ?>
<title>Веб суралцагчид | Блог - Нийтлэл</title>
<?php require_once(ROOT_PATH . '/includes/navbar.php'); ?>



			<!-- Blog -->
<div id="blog" class="section md-padding">
			<!-- Container -->
<div class="container">
			<!-- Row -->
<div class="row">
				<!-- Main -->
<main id="main" class="col-md-9">
	<?php foreach ($posts as  $post): ?>	
	<div class="blog row">
		<div class="blog-content">
			<h3><?php echo $post['title']; ?></h3>
			<p><?php echo $post['body']; ?></p>
		<div class="row">
			<div class="col-md-10">
				<ul class="blog-meta">
				<li><i class="fa fa-user"></i><?php echo $post['username'] ?></li>
				<li><i class="fa fa-clock-o"></i><?php echo date("M j,Y",strtotime($post['created_at'])); ?></li>
				<li><i class="fa fa-comments"></i>
					<?php echo getCommentsCountByPostId($post['id']); ?></li>
				</ul>
			</div>					
			<div class="col-md-2">
				<a href="post.php?post_id=<?php echo $post['id']; ?>">Сэтгэгдэлүүд</a>
			</div>
		</div>
		</div>			
	</div>	
	<?php endforeach ?>

</main>
				<!-- /Main -->


				<!-- Aside -->
<?php require_once (ROOT_PATH . '/includes/blog_side.php'); ?>

</div>
			<!-- /Row -->

</div>
		<!-- /Container -->
</div>
		<!-- /Blog -->
<?php require_once(ROOT_PATH . '/includes/footer.php'); ?>
