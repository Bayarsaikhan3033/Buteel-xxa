 </head>
<body>
	<!-- Header -->
	<header>
		<!-- Nav -->
		<nav id="nav" class="navbar">
			<div class="container">

				<div class="navbar-header">
					<!-- Logo -->
					<div class="navbar-brand">
						<h3 style="margin-top: 8%;"><a href="welcome.php">
							Веб суралцагч
						</a></h3>
					</div>
					<!-- /Logo -->

					<!-- Collapse nav button -->
					<div class="nav-collapse">
						<span></span>
					</div>
					<!-- /Collapse nav button -->
				</div>

<!--  Main navigation  -->
<ul class="main-nav nav navbar-nav navbar-right">
	<li><a href="welcome.php">Нүүр хуудас</a></li>
	<li><a href="blog.php">Блог</a></li>	
	<li><a href="lesson.php">Хичээлүүд</a></li>
	<li><a href="code.php">Код бичигч</a></li>
	<li><a href="#"></a></li>
	<li><a href="profile.php" style="color: #6195FF">
		<?php echo $_SESSION['user']['username'] ?></a>
	</li>
</ul>	
		<!-- /Main navigation -->
</div>
</nav>
		<!-- /Nav -->
</header>