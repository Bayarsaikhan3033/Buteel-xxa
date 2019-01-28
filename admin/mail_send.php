<?php  include('../config.php'); ?>
<?php  include(ROOT_PATH . '/admin/includes/admin_functions.php'); ?>
<?php 
	// Get all admin users from DB
	$admins = getAdminUsers();
	$roles = ['Admin', 'Member'];				
?>
<?php  include(ROOT_PATH . '/admin/includes/post_functions.php'); ?>
<?php include(ROOT_PATH. '/admin/includes/mail.php'); ?>
<?php include(ROOT_PATH . '/admin/includes/head_section.php'); ?>
<?php include(ROOT_PATH . '/admin/includes/navbar.php') ?>

<div class="container-fluid">
    <div class="row">
    <?php require_once(ROOT_PATH . '/admin/includes/side.php'); ?>

<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Имейл бичих</h1>
        <?php include(ROOT_PATH . '/admin/includes/zam.php'); ?>
    </div>


<?php include(ROOT_PATH . '/includes/messages.php') ?>
<form method="post" enctype="multipart/form-data" action="<?php echo BASE_URL . 'admin/mail_send.php'; ?>" >

	<?php include(ROOT_PATH . '/includes/errors.php') ?>

	<div class="form-group">
		<select name="to" class="form-control" required>
		<option value="" selected disabled>Хэнд:</option>
		<?php foreach ($admins as $key => $admin): ?>
		<option value="<?php echo $admin['email']; ?>"><?php echo $admin['username']."&nbsp&nbsp&nbsp&nbsp&nbsp".$admin['email'];  ?>
		</option>
		<?php endforeach ?>
		</select>
	</div>
	<div class="form-group">
		<input type="text" name="subject" class="form-control" placeholder="Гарчиг">
	</div>
	<div class="form-group" style="margin-top: 1.5%;">
		<textarea name="msg" class="form-control" id="body" rows="10" required></textarea>
	</div>
	<button type="submit" name="send" class="btn btn-outline-secondary">Илгээх</button>

</form>


</main>
</div> <!--  //  row-->

</div><!--//  Container-Fluid-->

<script>
	CKEDITOR.replace('body');
</script>
<?php require_once(ROOT_PATH . '/admin/includes/footer.php'); ?>

