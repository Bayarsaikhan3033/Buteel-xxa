<?php 
require_once('config.php');
require_once(ROOT_PATH . '/includes/functions.php');
require_once(ROOT_PATH . '/includes/lessfunc.php');
#Өгөгдлийн сангаас бүх Постийг  дуудах
$posts = getPublishedPosts(); 
$lasts = getPostsLimit3();
$books = showbook(); 
$lessons = showLessons();
$username = $_SESSION['user']['username'];
$userposts = getProfilePost($username);
require_once( ROOT_PATH . '/includes/head.php'); ?>
<title>Веб суралцагчид | Блог - Нийтлэл</title>
<?php require_once(ROOT_PATH . '/includes/navbar.php'); ?>



			<!-- Blog -->
<div id="blog" class="section md-padding">
			<!-- Container -->
<div class="container">
			<!-- Row -->
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
				<!-- Main Post -->
<main id="main" class="col-md-6">	
			<!-- notification message haruulah -->
<?php include(ROOT_PATH . '/includes/messages.php') ?>
	<?php foreach ($userposts as  $post): ?>	
	<div class="blog row">
		<div class="blog-content">
			<div class="row">
				<div class="col-md-10"><h3><?php echo $post['title']; ?></h3>
				</div>
				<div class="col-md-2"><h4><a href="pcreatepost.php?edit-post=<?php echo $post['id'] ?>" class="reply"><i class="fa fa-pencil"></i>&nbsp;</a>
				<a href="profile.php?delete-post=<?php echo $post['id'] ?>" class="reply"><i class="fa fa-trash"></i>&nbsp;</a></h4></div>
			</div>
			
			<p><?php echo $post['body']; ?></p>
		<div class="row">
			<div class="col-md-9">
				<ul class="blog-meta">
				<li><i class="fa fa-user"></i><?php echo $post['username'] ?></li>
				<li><i class="fa fa-clock-o"></i><?php echo date("M j,Y",strtotime($post['created_at'])); ?></li>
				<li><i class="fa fa-comments"></i>
					<?php echo getCommentsCountByPostId($post['id']); ?></li>
				</ul>
			</div>					
			<div class="col-md-3">
				<a href="fpost.php?post_id=<?php echo $post['id']; ?>">Сэтгэгдэлүүд</a>
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
