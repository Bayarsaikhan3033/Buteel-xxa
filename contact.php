<?php require_once('config.php') ?>
<?php require_once( ROOT_PATH . '/includes/functions.php') ?>


<!--Өгөгдлийн сангаас бүх Постийг  дуудах-->
<?php $posts = getPublishedPosts(); ?>

<?php require_once( ROOT_PATH . '/includes/head.php') ?>

	<title>Веб суралцагчид | Холбоо барих</title>

<!-- Үндсэн цэс болон зураг -->
<?php include( ROOT_PATH . '/includes/navbar.php') ?>
<!-- Хэрэглэгч, асуулт болон хариултийн хэсэг -->
<?php include( ROOT_PATH . '/includes/numbers.php') ?>

<!-- Бидний мэдээлэл -->
	<div id="team" class="section md-padding">
		<div class="container">
			<div class="row">
				<div class="section-header text-center">
					<h2 class="title">Хамт олон</h2>
				</div>
				<!-- team -->
				<div class="col-sm-4">
					<div class="team">
						<div class="team-img">
							<img class="img-responsive" src="./img/team1.jpg" alt="">
							<div class="overlay">
								<div class="team-social">
									<a href="#"><i class="fa fa-facebook"></i></a>
									<a href="#"><i class="fa fa-google-plus"></i></a>
									<a href="#"><i class="fa fa-twitter"></i></a>
								</div>
							</div>
						</div>
						<div class="team-content">
							<h3>John Doe</h3>
							<span>Web Designer</span>
						</div>
					</div>
				</div><!-- /team -->	
				<!-- team -->
				<div class="col-sm-4">
					<div class="team">
						<div class="team-img">
							<img class="img-responsive" src="./img/team2.jpg" alt="">
							<div class="overlay">
								<div class="team-social">
									<a href="#"><i class="fa fa-facebook"></i></a>
									<a href="#"><i class="fa fa-google-plus"></i></a>
									<a href="#"><i class="fa fa-twitter"></i></a>
								</div>
							</div>
						</div>
						<div class="team-content">
							<h3>John Doe</h3>
							<span>Web Designer</span>
						</div>
					</div>
				</div><!-- /team -->		
				<!-- team -->
				<div class="col-sm-4">
					<div class="team">
						<div class="team-img">
							<img class="img-responsive" src="./img/team3.jpg" alt="">
							<div class="overlay">
								<div class="team-social">
									<a href="#"><i class="fa fa-facebook"></i></a>
									<a href="#"><i class="fa fa-google-plus"></i></a>
									<a href="#"><i class="fa fa-twitter"></i></a>
								</div>
							</div>
						</div>
						<div class="team-content">
							<h3>John Doe</h3>
							<span>Web Designer</span>
						</div>
					</div>
				</div><!-- /team -->		
			</div><!-- /Row -->
		</div><!-- /Container -->	
	</div><!-- /Team -->
	




	
<!-- Голын урсдаг мэдээлэл -->
	<div id="testimonial" class="section md-padding">
		<div class="bg-img" style="background-image: url('img/background3.jpg');">
			<div class="overlay"></div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-md-10 col-md-offset-1">
					<div id="testimonial-slider" class="owl-carousel owl-theme">
						<!-- Нэг мэдээлэл -->
						<div class="testimonial">
							<div class="testimonial-meta">
								<img src="img/perso1.jpg" alt="">
								<h3 class="white-text">John Doe</h3>
								<span>Web Designer</span>
							</div>
							<p class="white-text">Molestie at elementum eu facilisis sed odio. Scelerisque in dictum non consectetur a erat. Aliquam id diam maecenas ultricies mi eget mauris.</p>
						</div><!-- /Нэг мэдээлэл -->	
						<div class="testimonial">
							<div class="testimonial-meta">
								<img src="img/perso2.jpg" alt="">
								<h3 class="white-text">John Doe</h3>
								<span>Web Designer</span>
							</div>
							<p class="white-text">Molestie at elementum eu facilisis sed odio. Scelerisque in dictum non consectetur a erat. Aliquam id diam maecenas ultricies mi eget mauris.</p>
						</div><!-- /testimonial -->
					</div>
				</div><!-- /Testimonial slider -->
			</div><!-- /Row -->			
		</div><!-- /Container -->
	</div><!-- /Testimonial -->
	

<!-- Санал хүсэлт илгээх -->
	<div id="contact" class="section md-padding">
		<div class="container">
			<div class="row">
				<div class="section-header text-center">
					<h2 class="title">Санал хүсэлт бичих</h2>
				</div>
				<!-- contact -->
				<div class="col-sm-4">
					<div class="contact">
						<i class="fa fa-phone"></i>
						<h3>Утас</h3>
						<p>+976 *** *** **</p>
					</div>
				</div>
				<!-- /contact -->
				<!-- contact -->
				<div class="col-sm-4">
					<div class="contact">
						<i class="fa fa-envelope"></i>
						<h3>Email</h3>
						<p>mgl.tuurgatan11@gmail.com</p>
					</div>
				</div>
				<!-- /contact -->
				<!-- contact -->
				<div class="col-sm-4">
					<div class="contact">
						<i class="fa fa-map-marker"></i>
						<h3>Хаяг</h3>
						<p>СБДүүрэг Улаанбаатар хот Монгол улс</p>
					</div>
				</div>
				<!-- /contact -->

				<!-- contact form -->
				<div class="col-md-8 col-md-offset-2">
					<form class="contact-form">
						<input type="text" class="input" placeholder="Name">
						<input type="email" class="input" placeholder="Email">
						<input type="text" class="input" placeholder="Subject">
						<textarea class="input" placeholder="Message"></textarea>
						<button class="main-btn">Илгээх
					</form>
				</div>
				<!-- /contact form -->

			</div>
			<!-- /Row -->

		</div>
		<!-- /Container -->

	</div>
	<!-- /Contact -->



<!-- Хөл хэсгийн мэдээлэл -->
<?php include( ROOT_PATH . '/includes/footer.php') ?>