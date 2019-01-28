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
	createProComment($post_id);
	$books = showbook();
	require_once( ROOT_PATH . '/includes/head.php') 
?>
	<title>Веб суралцагчид | Нийтлэл</title>
<?php require_once(ROOT_PATH.'/includes/navbar.php') ?>
		

<div id="blog" class="section md-padding">
		<div class="container">
			<div class="row">
				<!-- Profile config -->
<aside class="col-md-3">
	<div class="widget">
		<h3 class="title"><?php echo $_SESSION['user']['username']; ?></h3>
		<div class="widget-category">
			<a href="pcreatepost.php"><span><i class="fa fa-edit"></i></span>Нийтлэл бичих</a>
			<a href="logout.php"><span><i class="fa fa-sign-out"></i></span>Гарах</a>
		</div>		
	</div>
	<br><br>
	<div class="widget">
		<h3>Тохиргоо</h3>
		<form method="post" action="profile.php">
	<!-- Алдааг хэвлэх -->
	<?php include(ROOT_PATH . '/includes/errors.php') ?>
			<div class="form-group">
				<input type="text" name="username" class="form-control" value="<?php echo $_SESSION['user']['username']; ?>" required>
			</div>
			<div class="form-group">
				<input type="email" class="form-control" name="email" value="<?php echo $_SESSION['user']['email'] ?>" placeholder="Имейл хаяг" required>
			</div>
			<div class="form-group">
				<input type="password" class="form-control" name="password" placeholder="Нууц үг" required>
			</div>
			<div class="form-group">
				<input type="password" class="form-control" name="passwordConfirmation" placeholder="Нууц үг дахин оруулах" required>
			</div>
				<button type="submit" class="main-btn" name="update_user">Засварлах</button>
		</form>
	</div>
</aside>


				<main id="main" class="col-md-6">
					<div class="blog">
<!--Пост болон комментийн хэсэг-->
<div>
	<!--Пост-->
	<div>
		<div class="blog-content">
		<h3><?php echo $post['title']; ?></h3>
		<div class="row">
<div class="col-md-10">
	<ul class="blog-meta">
	<li><i class="fa fa-user"></i>
	<?php echo $post['username'] ?> </li>
	<li><i class="fa fa-clock-o"></i><?php echo date("Mj,Y",strtotime($post['created_at'])); ?></li>
	<li><i class="fa fa-comments"></i><?php echo $count; ?></li>
	</ul>
</div>

<div class="col-md-2"><h4><a href="pcreatepost.php?edit-post=<?php echo $_GET['post_id'] ?>" class="reply"><i class="fa fa-pencil"></i>&nbsp;</a>
		<a href="profile.php?delete-post=<?php echo $_GET['post_id'] ?>" class="reply"><i class="fa fa-trash"></i>&nbsp;</a></h4>
</div>
		</div><!-- // Row -->

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