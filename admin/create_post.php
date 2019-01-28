<?php  include('../config.php'); ?>
<?php  include(ROOT_PATH . '/admin/includes/admin_functions.php'); ?>
<?php  include(ROOT_PATH . '/admin/includes/post_functions.php'); ?>
<?php include(ROOT_PATH . '/admin/includes/head_section.php'); ?>
<?php include(ROOT_PATH . '/admin/includes/navbar.php') ?>

<div class="container-fluid">
    <div class="row">
    <?php require_once(ROOT_PATH . '/admin/includes/side.php'); ?>

<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Нийтлэл бичих</h1>
        <?php include(ROOT_PATH . '/admin/includes/zam.php'); ?>
    </div>



<form method="post" enctype="multipart/form-data" action="<?php echo BASE_URL . 'admin/create_post.php'; ?>" >
	<!-- validation errors for the form -->
<?php include(ROOT_PATH . '/includes/errors.php') ?>

	<!-- if editing post, the id is required to identify that post -->
<?php if ($isEditingPost === true): ?>
	<input type="hidden" name="post_id" value="<?php echo $post_id; ?>">
<?php endif ?> 
	<div class="form-group">
		<input type="text" name="title" class="form-control" value="<?php echo $title; ?>" placeholder="Гарчиг">
	</div>
	<div class="form-group" style="margin-top: 1.5%;">
		<textarea name="body" class="form-control" id="body" rows="13" required><?php echo $body; ?></textarea>
	</div>

				
		<!-- Засварлах эсвэл нийтлэх товчлуурын сонголт -->
	<?php if ($isEditingPost === true): ?> 
		<button type="submit" class="btn btn-outline-primary" name="update_post">Засварлах</button>
	<?php else: ?>
		<button type="submit" class="btn btn-outline-primary" name="create_post">Нийтлэх</button>
	<?php endif ?>

</form>


</main>
</div> <!--  //  row-->

</div><!--//  Container-Fluid-->

<script>
	CKEDITOR.replace('body');
</script>
<?php require_once(ROOT_PATH . '/admin/includes/footer.php'); ?>

