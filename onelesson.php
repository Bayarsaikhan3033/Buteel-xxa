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
<aside id="aside" class="col-md-3">
	<div class="widget">
		<h3 class="title">Агуулга</h3>
		<div class="widget-category">
			<?php foreach ($contents as $content): ?>
			<a href="onelesson.php?show-content=<?php echo $content['name']; ?>&content-name=<?php echo $content['content'];?>"><?php echo $content['content']; ?></a>
			<?php endforeach ?>
		</div>
	</div>
</aside>
				<!-- Main -->
<main id="main" class="col-md-6">
	<h4><?php echo $one['content'] ?></h4>
	<p><?php echo htmlentities($one['body']) ?></p>
	<form>
		<div class="form-group" style="margin-top: 1.5%;">
            <textarea name="body" class="form-control" id="body" rows="20" disabled>
                <?php echo htmlentities($one['example']); ?>
            </textarea>
        </div>
	</form>
</main>
<?php require_once (ROOT_PATH . '/includes/blog_side.php'); ?>
</div>
			<!-- /Row -->
</div>
		<!-- /Container -->
</div>
		<!-- /Blog -->
<?php require_once(ROOT_PATH . '/includes/footer.php'); ?>
