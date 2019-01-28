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
    <h1 class="h2">Удирдлагын хэсэг</h1>
        <?php include(ROOT_PATH . '/admin/includes/zam.php'); ?>
    </div>

  <div class="row">
    	<div class="col-md-4" >
  		  <div class="card-counter primary"> 
          <i class="fa fa-users"></i>       
          <span class="count-numbers"><?php echo $user_too; ?></span>
          <span class="count-name">Хэрэглэгч</span>
			 </div>
    	</div>
    	<div class="col-md-4">
  			<div class="card-counter success">
          <i class="fa fa-edit"></i>
          <span class="count-numbers"><?php echo $post_too; ?></span>
          <span class="count-name">Нийтлэл</span>
			 </div>
    	</div>
    	<div class="col-md-4">
  			<div class="card-counter info">
          <i class="fa fa-comments"></i>
          <span class="count-numbers"><?php echo $comment_too; ?></span>
          <span class="count-name">Cэтгэгдэл</span>
			  </div>
    	</div>
      
	</div>
  <br>
  
<?php include(ROOT_PATH . '/includes/messages.php') ?>
  <form method="post" enctype="multipart/form-data" class="card card-body col-sm-6">
    <div class="form-group">
      <label>Имейл хаяг</label>
      <input type="email" name="admin-email" required="" class="form-control" value="<?php echo $admin_email ?>">
    </div>
    <div class="form-group">
      <label for="inlineFormInputGroup">Утасны дугаар</label>
      <div class="input-group mb-2">
        <div class="input-group-prepend">
          <div class="input-group-text">+976</div>
        </div>
        <input type="text" class="form-control" required="" name="admin-phone" value="<?php echo $admin_phone ?>">
      </div>
    </div>
    <div class="form-group">
      <label>Хаяг</label>
      <input type="text" name="admin-address" required="" class="form-control" value="<?php echo $admin_address ?>">
    </div>
    <button type="submit" class="btn btn-outline-secondary" name="save-contact">Хадгалах</button>
  </form>



</main>
</div>
</div>
<style type="text/css">
  .card-counter{
    box-shadow: 2px 2px 10px #DADADA;
    margin: 5px;
    padding: 20px 10px;
    background-color: #fff;
    height: 100px;
    border-radius: 5px;
    transition: .3s linear all;
  }

  .card-counter:hover{
    box-shadow: 4px 4px 20px #DADADA;
    transition: .3s linear all;
  }

  .card-counter.primary{
    background-color: #007bff;
    color: #FFF;
  }

  .card-counter.danger{
    background-color: #ef5350;
    color: #FFF;
  }  

  .card-counter.success{
    background-color: #66bb6a;
    color: #FFF;
  }  

  .card-counter.info{
    background-color: #26c6da;
    color: #FFF;
  }  

  .card-counter i{
    font-size: 5em;
    opacity: 0.2;
  }

  .card-counter .count-numbers{
    position: absolute;
    right: 35px;
    top: 20px;
    font-size: 32px;
    display: block;
  }

  .card-counter .count-name{
    position: absolute;
    right: 35px;
    top: 65px;
    font-style: italic;
    text-transform: capitalize;
    opacity: 0.5;
    display: block;
    font-size: 18px;
  }
</style>
<?php require_once(ROOT_PATH . '/admin/includes/footer.php'); ?>