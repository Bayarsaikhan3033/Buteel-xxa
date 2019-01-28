<?php  include('../config.php'); ?>
<?php  include(ROOT_PATH . '/admin/includes/admin_functions.php'); ?>
<?php  include(ROOT_PATH . '/admin/includes/post_functions.php'); ?>
<?php include(ROOT_PATH . '/admin/includes/head_section.php'); ?>
<!-- Get all admin posts from DB -->
<?php $posts = getAllPosts(); ?>
<!--body-->
<?php require_once(ROOT_PATH . '/admin/includes/navbar.php'); ?>

<div class="container-fluid">
    <div class="row">
    <?php require_once(ROOT_PATH . '/admin/includes/side.php'); ?>

<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Нийтлэлүүд</h1>
        <?php include(ROOT_PATH . '/admin/includes/zam.php'); ?>
    </div>

    <!-- Бүх нийтлэлүүүдийг харуулах-->
    <!-- Display records from DB-->
<div class="table-responsive"  style="width: 100%;">
			<!-- Display notification message -->
<?php include(ROOT_PATH . '/includes/messages.php') ?>

<?php if (empty($posts)): ?>
	<h1 style="text-align: center; margin-top: 20px;">Блогт нийтлэл бичигдээгүй байна!.</h1>
<?php else: ?>

<table class="table table-hover">
	<thead class="thead-light">
		<th>№</th>
		<th>Бичсэн</th>
		<th>Гарчиг</th>
		<th>Үзсэн</th>
		<th>Нийтлэх</th>
		<th>Засварлах</th>
		<th>Устгах</th>
	</thead>
<tbody >
	<?php foreach ($posts as $key => $post): ?>
		<tr>
			<td><?php echo $key + 1; ?></td>
			<td><?php echo $post['author']; ?></td>
		<td><?php echo $post['title']; ?></td>
		<td>123</td>
		<!-- Админ нийтлэх/нийтлэхгүй байх  -->
	<td><?php if ($post['published'] == true): ?>
		<a class="fa fa-check btn unpublish" href="posts.php?unpublish=<?php echo $post['id'] ?>"></a>
<?php else: ?>
	<a class="fa fa-times btn publish" href="posts.php?publish=<?php echo $post['id'] ?>"></a>
<?php endif ?>
	</td>

	<td>
		<a class="fa fa-pencil btn edit" href="create_post.php?edit-post=<?php echo $post['id'] ?>"></a>
	</td>
	<td>
		<a  class="fa fa-trash btn delete" href="create_post.php?delete-post=<?php echo $post['id'] ?>">
		</a>
	</td>
</tr>
					<?php endforeach ?>
					</tbody>
				</table>
			<?php endif ?>
		</div>


</main>
</div>
</div>
<?php require_once(ROOT_PATH . '/admin/includes/footer.php'); ?>