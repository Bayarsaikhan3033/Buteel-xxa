<?php  include('../config.php'); ?>
<?php  include(ROOT_PATH . '/admin/includes/admin_functions.php'); ?>
<?php  include(ROOT_PATH . '/admin/includes/post_functions.php'); ?>
<?php include(ROOT_PATH . '/admin/includes/head_section.php'); ?>

<!--body-->
<?php require_once(ROOT_PATH . '/admin/includes/navbar.php'); ?>

<div class="container-fluid">
    <div class="row">
    <?php require_once(ROOT_PATH . '/admin/includes/side.php'); ?>

<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Сэтгэгдэлүүд</h1>
        <?php include(ROOT_PATH . '/admin/includes/zam.php'); ?>
    </div>
  <!--main-->
  <div class="row">
	</div>
  <!--  //  main-->


</main>
</div>
</div>
<?php require_once(ROOT_PATH . '/admin/includes/footer.php'); ?>