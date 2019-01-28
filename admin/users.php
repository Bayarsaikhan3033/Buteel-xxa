<?php  include('../config.php'); ?>
<?php  include(ROOT_PATH . '/admin/includes/admin_functions.php'); ?>
<?php  include(ROOT_PATH . '/admin/includes/post_functions.php'); ?>
<?php include(ROOT_PATH . '/admin/includes/head_section.php'); ?>
<?php 
	// Get all admin users from DB
	$admins = getAdminUsers();
	$roles = ['Admin', 'Member'];				
?>
<?php require_once(ROOT_PATH . '/admin/includes/navbar.php'); ?>
<div class="container-fluid">
    <div class="row">
    <?php require_once(ROOT_PATH . '/admin/includes/side.php'); ?>

<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Хэрэглэгчид</h1>
        <?php include(ROOT_PATH . '/admin/includes/zam.php'); ?>
    </div>

<div class="row"> <!--row hereglegch-->
	<!-- Хэрэглэгч бүртгэх болон засварлах  -->
<div class="col-md-4">
<form method="post" action="<?php echo BASE_URL . 'admin/users.php'; ?>">
	<!-- Алдааг хэвлэх -->
	<?php include(ROOT_PATH . '/includes/errors.php') ?>
	<!-- Хэрэглэгчидын мэдээллийг засах -->
	<?php if ($isEditingUser === true): ?>
		<input type="hidden" name="admin_id" value="<?php echo $admin_id; ?>">
	<?php endif ?>
	<div class="form-group">
		<input type="text" name="username" class="form-control" value="<?php echo $username; ?>" placeholder="Хэрэглэгчийн нэр" required>
	</div>
	<div class="form-group">
		<input type="email" class="form-control" name="email" value="<?php echo $email ?>" placeholder="Имейл хаяг" required>
	</div>
	<div class="form-group">
		<input type="password" class="form-control" name="password" placeholder="Нууц үг" required>
	</div>
	<div class="form-group">
		<input type="password" class="form-control" name="passwordConfirmation" placeholder="Нууц үг дахин оруулах" required>
	</div>
	<div class="form-group">
		<select name="role" class="form-control" required>
		<option value="" selected disabled>Дүрэм</option>
		<?php foreach ($roles as $key => $role): ?>
		<option value="<?php echo $role; ?>"><?php echo $role; ?></option>
		<?php endforeach ?>
	</select>
	</div>

<!-- Хэрэглэгч засварлах болон бүртгэх товчлуурын сонголт -->
	<?php if ($isEditingUser === true): ?> 
		<button type="submit" class="btn btn-outline-secondary" name="update_admin">Засварлах</button>
	<?php else: ?>
		<button type="submit" class="btn btn-outline-secondary" name="create_admin">Хэрэглэгч бүртгэх</button>
	<?php endif ?>
</form>
</div>
<div class="col-md-8">
<!-- Хэрэглэгчидыг харуулах-->
	<!-- Display notification message -->
<?php include(ROOT_PATH . '/includes/messages.php') ?>

	<table class="table table-hover" style="width: 100%">
		<thead class="thead-light">
			<th>№</th>
			<th>Хэрэглэгч</th>
			<th>Дүрэм</th>
			<th>Засварлах</th>
			<th>Устгах</th>
		</thead>
		<tbody>
			<?php foreach ($admins as $key => $admin): ?>
				<tr>
					<td><?php echo $key + 1; ?></td>
					<td>
					<?php echo $admin['username']; ?>, &nbsp;
					<?php echo $admin['email']; ?>	
					</td>
					<td><?php echo $admin['role']; ?></td>
					<td>
					<a class="fa fa-pencil btn edit" href="users.php?edit-admin=<?php echo $admin['id'] ?>"></a>
					</td>
					<td><a class="fa fa-trash btn delete" href="users.php?delete-admin=<?php echo $admin['id'] ?>"></a>
					</td>
				</tr>
			<?php endforeach ?>
		</tbody>
	</table>
	<!-- // Хэрэглэгчидийг харуулах -->

</div><!--col md 5-->
</div><!--row hereglegch-->
	

		



</main>
</div>
</div>
<?php require_once(ROOT_PATH . '/admin/includes/footer.php'); ?>