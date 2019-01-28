<?php require_once('config.php') ?>
<?php  include('includes/server.php'); ?>
 
<?php require_once( ROOT_PATH . '/includes/head.php') ?>
   <title>Веб суралцагчид | Нэвтрэх хуудас </title>
<link rel="stylesheet" type="text/css" href="css/logreg.css">
</head>

<body>
    <form class="form-signin" action="login.php" method="post">
      <div class="text-center mb-4">
        <a href="index.php">
           <img class="mb-4" src="img/logo.png" alt="" width="72" height="72">
        </a>
        <h1 class="h3 mb-3 font-weight-normal">Нэвтрэх хуудас</h1>
        <p></p>
      </div>

      <div class="form-label-group">
         <input name="username" type="text" id="inputEmail" class="form-control" placeholder="Хэрэглэгчийн нэр" required autofocus
         value="<?php if(isset($_COOKIE['username'])){ echo $_COOKIE['username'];}?>">
         <label for="inputEmail">Хэрэглэгчийн нэр</label>
      </div>

      <div class="form-label-group">
        <input name="password" type="password" id="inputPassword" class="form-control" placeholder="Нүүц үг" required
        value="<?php if(isset($_COOKIE['password'])) echo $_COOKIE['password'];?>" >
        <label for="inputPassword">Нүүц үг</label>
      </div>
      <div class="checkbox mb-3">
        <label>
          <input type="checkbox" name="remember" 
<?php if(isset($_COOKIE['username'])){ ?> checked <?php } ?> 
          >Нүүг үг сануулах
        </label>
        <label>
          <a href="register.php">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Бүртгүүлэх</a>
        </label>
      </div>     

      <button class="btn btn-lg btn-primary btn-block" type="submit" name="login">Нэвтрэх</button>

      <?php include(ROOT_PATH . '/includes/errors.php') ?>
      <p class="mt-5 mb-3 text-muted text-center">&copy; 2018</p>
    </form>
  </body>
</html>