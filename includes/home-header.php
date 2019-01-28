 </head>
<body>
	<header id="home">
		<div class="bg-img" style="background-image: url('./img/background1.jpg');">
			<div class="overlay"></div>
		</div>
		<nav id="nav" class="navbar nav-transparent">
			<div class="container">
				<div class="navbar-header">
					<div class="navbar-brand">
						<h3 style="margin-top: 8%;"><a href="welcome.php">
							Веб суралцагч
						</a></h3>
					</div><!-- /Logo -->					

					<!-- Collapse nav button -->
					<div class="nav-collapse">
						<span></span>
					</div>
					<!-- /Collapse nav button -->
				</div>

				<!--  Main navigation  -->
				<ul class="main-nav nav navbar-nav navbar-right">
					<li><a href="index.php">Нүүр хуудас</a></li>
					<li><a href="#" data-toggle="modal" data-target=".bd-example-modal-sm">Блог</a></li>

					<li><a href="#" data-toggle="modal" data-target=".bd-example-modal-sm">Хичээлүүд</a></li>
					<li><a href="#" data-toggle="modal" data-target=".bd-example-modal-sm">Код бичигч</a></li>
				</ul>
				<!-- /Main navigation -->


			</div>
		</nav>

		<!-- home wrapper -->
		<div class="home-wrapper">
			<div class="container">
				<div class="row">

					<!-- home content -->
					<div class="col-md-10 col-md-offset-1">
						<div class="home-content">
							<h1 class="white-text">Веб Дизайн</h1>
							<p class="white-text">Вэб сонирхогчид, анхлан суралцагсад зориулагдсан веб дизайн болон веб программчлалын тухай хичээлүүд мөн хэлэлцүүлэг блог, код бичих хэсгүүдээс бүрдсэн
							</p>
							<a href="login.php"><button class="white-btn">Нэвтрэх</button></a>
							<a href="register.php"><button class="main-btn">Бүртгүүлэх</button></a>
						</div>
					</div>
					<!-- /home content -->
				</div>
			</div>
		</div>
		<!-- /home wrapper -->
</header>
<!-- /Header -->


<!-- Modal -->
<div class="modal fade bd-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Анхаар!</h5>
      </div>
      <div class="modal-body" role="alert">
        Мэдээллийг үзэх боломжгүй байна. Та нэвтэрж орсон байх шаардлагатай!
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Хаах</button>
        <a href="login.php"><button type="button" class="btn btn-primary">Нэвтрэх</button></a>
      </div>
    </div>
  </div>
</div>