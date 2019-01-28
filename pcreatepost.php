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
	<form method="post" enctype="multipart/form-data" action="pcreatepost.php" >
	<!-- if editing post, the id is required to identify that post -->
<?php if ($isEditingPost === true): ?>
	<input type="hidden" name="post_id" value="<?php echo $post_id; ?>">
	<h3 style="color: #81AAFF;">Нийтлэл засварлах</h3>
<?php else: ?>
	<h3 style="color: #81AAFF;">Нийтлэл бичих</h3>
<?php endif ?>
	<div class="form-group">
		<input type="text" name="title" class="form-control" value="<?php echo $title; ?>" placeholder="Гарчиг">
	</div>
	<div class="form-group" style="margin-top: 1.5%;">
		<textarea name="body" class="form-control" id="body" rows="13" required><?php echo $body; ?></textarea>
	</div>

				
		<!-- Засварлах эсвэл нийтлэх товчлуурын сонголт -->
	<?php if ($isEditingPost === true): ?> 
		<button type="submit" class="main-btn" name="update_post">Засварлах</button>
	<?php else: ?>
		<button type="submit" class="main-btn" name="create_post">Нийтлэх</button>
	<?php endif ?>

</form>

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
