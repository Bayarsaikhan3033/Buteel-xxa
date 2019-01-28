<?php require_once('config.php') ?>
<?php  include('includes/server.php'); ?>

<?php require_once( ROOT_PATH . '/includes/head.php') ?>
   <title>Веб суралцагчид | Бүртгүүлэх хуудас </title>
<link rel="stylesheet" type="text/css" href="css/logreg.css">
</head>

<body>
    <form class="form-signin" action="register.php" method="post">
      <div class="text-center mb-4">
        <a href="index.php">
           <img class="mb-4" src="img/logo.png" alt="" width="72" height="72">
        </a>
        <h1 class="h3 mb-3 font-weight-normal">Бүртгүүлэх хуудас</h1>
        <p></p>
      </div>

      <div class="form-label-group">
         <input name="username" type="text" id="inputName" class="form-control" placeholder="Хэрэглэгчийн нэр" required autofocus>
         <label for="inputName">Хэрэглэгчийн нэр</label>
      </div>
      <div class="form-label-group">
         <input name="email" type="email" id="inputEmail" class="form-control" placeholder="Email хаяг" required>
         <label for="inputEmail">Email хаяг</label>
      </div>

      <div class="form-label-group">
        <input name="password1" type="password" id="inputPassword1" class="form-control" placeholder="Нүүц үг" required>
        <label for="inputPassword1">Нүүц үг</label>
      </div>

      <div class="form-label-group">
        <input name="password2" type="password" id="inputPassword2" class="form-control" placeholder="Нүүц үг дахин" required>
        <label for="inputPassword2">Нүүц үг дахин</label>
      </div>

      <p>Та бүртгэлтэй бол <a href="login.php"> энд </a> дар!</p>

      <button class="btn btn-lg btn-primary btn-block" type="submit" name="register">Бүртгүүлэх</button>
      <?php include(ROOT_PATH . '/includes/errors.php') ?>
      <p class="mt-5 mb-3 text-muted text-center">&copy; 2018</p>
    </form>
  </body>
</html>