<?php 
require_once('config.php');
require_once(ROOT_PATH . '/includes/functions.php');
require_once(ROOT_PATH . '/includes/lessfunc.php');
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
	<?php foreach ($lessons as  $lesson): ?>	
	<div class="col-md-6">
		<div class="about">
			<h3><?php echo $lesson['name']; ?></h3>
			<a href="onelesson.php?show-content=<?php echo $lesson['name'] ?>">Суралцах</a>
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
