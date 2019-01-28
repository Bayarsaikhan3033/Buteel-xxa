<?php  
include('../config.php');
include(ROOT_PATH . '/admin/includes/admin_functions.php');

	// Get all admin users from DB
	$admins = getAdminUsers();
	$roles = ['Admin', 'Member'];				
include_once (ROOT_PATH.'/admin/includes/lessonfunc.php');
include(ROOT_PATH . '/admin/includes/post_functions.php');
include(ROOT_PATH. '/admin/includes/mail.php');
include(ROOT_PATH . '/admin/includes/head_section.php');
include(ROOT_PATH . '/admin/includes/navbar.php') 
?>

<div class="container-fluid">
    <div class="row">
    <?php require_once(ROOT_PATH . '/admin/includes/side.php'); ?>

<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Хичээлийн агуулгууд</h1>
        <?php include(ROOT_PATH . '/admin/includes/zam.php'); ?>
    </div>
<div class="row">

<div class="col-md-6">
<!-- hicheel харуулах-->
<?php include(ROOT_PATH . '/includes/messages.php') ?>

    <table class="table table-hover" style="width: 100%">
        <thead class="thead-light">
            <th>№</th>
            <th>Хичээлийн нэр</th>
            <th>Агуулга</th>
            <th>Засварлах</th>
            <th>Устгах</th>
        </thead>
        <tbody>
            <?php foreach ($lessons as $key => $lesson): ?>
                <tr>
                    <td><?php echo $key + 1; ?></td>
                    <td>
                    <?php echo $lesson['name']; ?>
                    </td>
                    <td><a class="fa fa-eye btn edit" href="lessoncontent.php?show-content=<?php echo $lesson['name'] ?>"></a></td>
                    <td>
                    <a class="fa fa-pencil btn edit" href="lessons.php?edit-leasson=<?php echo $lesson['id'] ?>"></a>
                    </td>
                    <td><a class="fa fa-trash btn delete" href="lessons.php?delete-lesasson=<?php echo $lesson['id'] ?>"></a>
                    </td>
                </tr>
            <?php endforeach ?>
        </tbody>
    </table>
    <!-- // hicheel харуулах -->
</div>
<div class="col-md-6">
</div>
    </div> <!-- //  Row -->
<hr>
    <!-- aguulga bolon  ,,  zaswar hiih-->
<div class="row">
<table class="table table-hover" style="width: 100%">
        <thead class="thead-light">
            <th>№</th>
            <th>Агуулга</th>
            <th>Тайлбар</th>
            <th>Код</th>
            <th>Үйлдэл</th>
        </thead>
        <tbody>
<?php foreach ($contents as $content): ?>
    <tr>
        <td><?php echo $content['sort']; ?></td>
        <td><?php echo $content['content']; ?></td>
        <td><?php echo htmlentities($content['body']); ?></td>
        <td><?php echo htmlentities($content['example']); ?></td>
        <td>
        <a class="fa fa-pencil btn edit" href="create_lesson.php?edit-lesson=<?php echo $content['id'] ?>"></a>&nbsp;
        <a class="fa fa-trash btn delete" href="lessoncontent.php?delete-lesson=<?php echo $content['id'] ?>"> </a>
        </td>
    </tr>
<?php endforeach ?>
        </tbody>
    </table>
</div>
<hr>
<br>

</main>
</div> <!--  //  row-->

</div><!--//  Container-Fluid-->

<?php require_once(ROOT_PATH . '/admin/includes/footer.php'); ?>

