<?php 
	require_once('config.php');
	require_once( ROOT_PATH . '/includes/functions.php');
require_once(ROOT_PATH . '/includes/lessfunc.php');
	//Өгөгдлийн сангаас тохирох постийг дуудах
	if (isset($_GET['post_id'])) {
	$post = getPostById($_GET['post_id']);
	}
	$post_id = $_GET['post_id'];
	$user_id = $_SESSION['user']['id'];
	$count = getCommentsCountByPostId($post_id);
	$datas = getAllComments($post_id);
	$lasts = getPostsLimit3();
	createComment($post_id);
	$books = showbook();
	require_once( ROOT_PATH . '/includes/head.php') 
?>
	<title>Веб суралцагчид | Нийтлэл</title>
<?php require_once(ROOT_PATH.'/includes/navbar.php') ?>
		

<div id="blog" class="section md-padding">
		<div class="container">
			<div class="row">
				<main id="main" class="col-md-9">
					<div class="blog">



<!--Пост болон комментийн хэсэг-->
<div>
	<!--Пост-->
	<div>
		<div class="blog-content">
		<h3><?php echo $post['title']; ?></h3>
		<ul class="blog-meta">
			<li><i class="fa fa-user"></i>
			<?php echo $post['username'] ?> </li>
			<li><i class="fa fa-clock-o"></i><?php echo date("Mj,Y",strtotime($post['created_at'])); ?></li>
			<li><i class="fa fa-comments"></i><?php echo $count; ?></li>
		</ul>
		<p><?php echo $post['body']; ?></p>
		</div>
			
	</div>
	<!--/Пост-->
	<!-- Комментууд -->
	<div class="blog-comments" style="margin-left: 5%;">
		<!-- Коммент-->
		<?php foreach ($datas as $key => $data): ?>		
		<div class="media">
			<div class="media-body">
			<h4 class="media-heading">
				<?php echo $data['username']; ?>
			<span class="time">
			<?php echo date("M j,Y : H:i:s",strtotime($data['created_at'])); ?>				
			</span></h4>
			<p><?php echo $data['body']; ?></p>
			</div>
		</div>
		<?php endforeach ?>
		<!-- /Коммент -->

	</div>
	<!-- /Комментууд -->
</div>
<!--/Пост болон комментийн хэсэг-->



<!-- Коммент бичих -->
<div class="reply-form"> 
	<h3 class="title">Сэтгэгдэл бичих</h3>
	<form method="post" enctype="multipart/form-data">
		<textarea placeholder="Энд сэтгэгдлээ бичнэ үү" required="" name="body"></textarea>
		<button type="submit" class="main-btn" name="write_comment" >Хадгалах</button>
	</form>
</div>
<!-- /Коммент бичих -->
</div>

</main>
<!-- /Main -->

<?php require_once(ROOT_PATH . '/includes/blog_side.php'); ?>

</div>
			<!-- /Row -->
</div>
		<!-- /Container -->
</div>
	<!-- /Blog -->

	
<!-- Хөл хэсгийн мэдээлэл -->
<?php include( ROOT_PATH . '/includes/footer.php') ?>