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
    <h1 class="h2">Хичээл нэмэх, засварлах</h1>
        <?php include(ROOT_PATH . '/admin/includes/zam.php'); ?>
    </div>

<form method="post" enctype="multipart/form-data">
    <?php if ($isEditingPost === true): ?>
    <input type="hidden" name="lesson_id" value="<?php echo $lesson_id; ?>">
    <?php endif ?>
<div class="row">
    <div class="col-md-6">
        <div class="form-group">            
            <input type="text" name="lessonname" required class="form-control" placeholder="Хичээлийн нэр" value="<?php echo $lessonname; ?>">
        </div>
        <div class="form-group" style="margin-top: 1.5%;">
            <textarea name="body" class="form-control" id="body" rows="10" required placeholder="Агуулга" >
                <?php echo $content_body; ?>
            </textarea>
        </div>
        <div class="form-group">
            <input type="number" name="sort" required class="form-control" placeholder="Дарааллын дугаар" value="<?php echo $sort; ?>">
        </div>
    </div>
    <div class="col-md-6">
        <div class="form-group">
            <input type="text" name="contentname" required class="form-control" placeholder="Гарчиг" value="<?php echo $contentname; ?>">
        </div> 
        <div class="form-group" style="margin-top: 1.5%;">
            <textarea name="example" class="form-control" id="body" rows="10" required placeholder="Жишээ код"><?php echo $example; ?></textarea>
        </div>
        
            <!-- Засварлах эсвэл нийтлэх товчлуурын сонголт -->
        <?php if ($isEditingLesson === true): ?> 
            <button type="submit" class="btn btn-outline-primary btn-block" name="update-lesson">Засварлах</button>
        <?php else: ?>
            <button type="submit" class="btn btn-outline-primary btn-block" name="create-lesson">Нэмэх</button>
        <?php endif ?>
    </div>
</div> 
</form>


    <!-- aguulga bolon  ,,  zaswar hiih-->
<div class="row">
</div>



</main>
</div> <!--  //  row-->

</div><!--//  Container-Fluid-->
<?php require_once(ROOT_PATH . '/admin/includes/footer.php'); ?>

