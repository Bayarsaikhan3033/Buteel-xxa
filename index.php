<?php require_once('config.php') ?>
<?php require_once( ROOT_PATH . '/includes/functions.php') ?>
<?php 
$user_too = getUserCount();
$post_too = getPostCount();
$comment_too = getCommentCount(); ?>
<?php require_once( ROOT_PATH . '/includes/head.php') ?>

	<title>Web Design | Нүүр хуудас</title>

<!-- Үндсэн цэс болон зураг -->
<?php include( ROOT_PATH . '/includes/home-header.php') ?>


<!-- Эхлэл Хичээлүүд хэсэг -->
	<div id="about" class="section md-padding">
		<div class="container">
			<div class="row">
				<div class="section-header text-center">
					<h2 class="title">Хичээлүүд</h2>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="service">
						<i class="fa fa-diamond"></i>
						<h3>Сургалт</h3>
						<p>Web designer зориулагдсан бүх төрлийн хичээлүүдийг агуулсан</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="service">
						<i class="fa fa-users"></i>
						<h3>Боломж</h3>
						<p>Тодорхой агуулгаар хэлэлцэж хамтдаа суралцах</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="service">
						<i class="fa fa-magic"></i>
						<h3>Батламж</h3>
						<p>Хичээлүүдийг судалж шалгалт өгөөд батламж авах</p>
					</div>
				</div>
			</div>
		</div>
	</div>
<!-- Хэрэглэгч, асуулт болон хариултийн хэсэг -->
<?php include( ROOT_PATH . '/includes/numbers.php') ?>

<!-- Код бичигч хэрхэн ашиглах вэ?-->
	<div id="features" class="section md-padding bg-grey">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="section-header">
						<h2 class="title">Код бичигч ашиглах</h2>
					</div>
					<p>Код бичигч нь HMTL, CSS, Javascript кодийг нэгэн зэрэг бичих боломжтой. Хичээлүүдийг уншаад жишээ кодуудыг турших жижиг хэмжээний хэрэгсэл юм. Үр дүн бичих явцад шууд харагддаг онцлогтой юм.</p>
					<div class="feature">
						<i class="fa fa-check"></i>
						<p>Ашиглахад хялбар</p>
					</div>
					<div class="feature">
						<i class="fa fa-check"></i>
						<p>Кодуудыг зэрэг бичих</p>
					</div>
					<div class="feature">
						<i class="fa fa-check"></i>
						<p>Үр дүн шууд гардаг</p>
					</div>
					<a href="#" data-toggle="modal" data-target=".bd-example-modal-sm"><button class="main-btn">Код бичих</button></a>
				</div>				
				<!-- Хажуугийн зургууд -->
				<div class="col-md-6">
					<div id="about-slider" class="owl-carousel owl-theme">
						<img class="img-responsive" src="img/code1.jpg" alt="">
						<img class="img-responsive" src="img/code2.jpg" alt="">
						<img class="img-responsive" src="simg/code1.jpg" alt="">
						<img class="img-responsive" src="img/code2.jpg" alt="">
					</div>
				</div>
			</div>
		</div>
	</div>






	<!--Хөгжүүлэгчид -->
	<div id="testimonial" class="section md-padding">
		<div class="bg-img" style="background-image: url('img/background3.jpg');">
			<div class="overlay"></div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-md-10 col-md-offset-1">
					<div id="testimonial-slider" class="owl-carousel owl-theme">
						<div class="testimonial">
							<div class="testimonial-meta">
								<img src="img/ava.jpg" alt="">
								<h3 class="white-text">Баярсайхан</h3>
								<span>Мэдээлэл зүйн багш</span>
							</div>
							<p class="white-text">Цаашид хөгжүүлэгдэх болно. Мөн олон төрлийн хичээлүүдийг оруулна.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>	

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
							<img class="img-responsive" src="./img/ava.jpg" alt="">
							<div class="overlay">
								<div class="team-social">
									<a href="https://facebook.com/"><i class="fa fa-facebook"></i></a>
									<a href="https://plus.google.com/"><i class="fa fa-google-plus"></i></a>
									<a href="https://twitter.com/login"><i class="fa fa-twitter"></i></a>
								</div>
							</div>
						</div>
						<div class="team-content">
							<h3>Баярсайхан</h3>
							<span>WEB DESIGNER</span>
						</div>
					</div>
				</div><!-- /team -->	
				
			</div><!-- /Row -->
		</div><!-- /Container -->	
	</div><!-- /Team -->
	

	
<!-- Хөл хэсгийн мэдээлэл -->
<?php include( ROOT_PATH . '/includes/footer.php') ?>