<?php  
include('../config.php');
include(ROOT_PATH . '/admin/includes/admin_functions.php');
include(ROOT_PATH . '/admin/includes/post_functions.php');
include(ROOT_PATH . '/admin/includes/head_section.php');
$books = showbook();
#body
require_once(ROOT_PATH . '/admin/includes/navbar.php'); ?>

<div class="container-fluid">
    <div class="row">
    <?php require_once(ROOT_PATH . '/admin/includes/side.php'); ?>

<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Ном</h1>
        <?php include(ROOT_PATH . '/admin/includes/zam.php'); ?>
    </div>
  
<div class="row"> <!--row hereglegch-->
  <!-- Хэрэглэгч бүртгэх болон засварлах  -->
<div class="col-md-4">
<form method="post" enctype="multipart/form-data">
  <!-- Алдааг хэвлэх -->
  <?php include(ROOT_PATH . '/includes/errors.php') ?>
  <div class="form-group">
    <input type="text" name="book-name" class="form-control"  placeholder="Номын нэр" required>
  </div>
  <div class="custom-file">
    <input type="file" class="custom-file-input" id="customFile" name="uploaded_file" required>
    <label class="custom-file-label" for="customFile">
    Ном сонгох</label>
  </div>

    <button type="submit" class="btn btn-outline-secondary" name="save-book" style="margin-top: 5%;">Ном бүртгэх</button>
</form>
</div>
<div class="col-md-8">
<!-- Хэрэглэгчидыг харуулах-->
  <!-- Display notification message -->
<?php include(ROOT_PATH . '/includes/messages.php') ?>

  <table class="table table-hover" style="width: 100%">
    <thead class="thead-light">
      <th>№</th>
      <th>Номын нэр</th>
      <th>Унших</th>
      <th>Устгах</th>
    </thead>
    <tbody>
      <?php foreach ($books as $key => $book): ?>
        <tr>
          <td><?php echo $key + 1; ?></td>
          <td>
          <?php echo $book['name']; ?>
          </td>
          <td>
          <a class="fa fa-eye btn edit" href="<?php echo $book['pathh'] ?>" target="_blank" ></a>
          </td>
          <td><a class="fa fa-trash btn delete" href="books.php?delete-book=<?php echo $book['id'] ?>"></a>
          </td>
        </tr>
      <?php endforeach ?>
    </tbody>
  </table>
  <!-- // ном харуулах -->

</div><!--col md 5-->
</div><!--row ном-->



</main>
</div>
</div>
<?php require_once(ROOT_PATH . '/admin/includes/footer.php'); ?>