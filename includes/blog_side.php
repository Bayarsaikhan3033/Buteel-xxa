<!-- Aside -->
<aside id="aside" class="col-md-3">
				<!-- Search -->
	<div class="widget">
		<div class="widget-search">
			<input class="search-input" type="text" placeholder="Мэдээлэл хайх">
			<button class="search-btn" type="button"><i class="fa fa-search"></i></button>
		</div>
	</div>
				<!-- /Search -->

<div class="blog-author widget">
	<div class="media media-body author-social">
		<a href="https://www.facebook.com/Bayraa.3033"><i class="fa fa-facebook"></i></a>&nbsp;&nbsp;		
		<a href="https://twitter.com/login"><i class="fa fa-twitter"></i></a>&nbsp;&nbsp;
		<a href="https://plus.google.com/"><i class="fa fa-google-plus"></i></a>&nbsp;&nbsp;
		<a href="https://www.instagram.com/"><i class="fa fa-instagram"></i></a>&nbsp;&nbsp;
		<a href="https://github.com/Bayarsaikhan3033"><i class="fa fa-github"></i></a>
	</div>
</div>

			 	<!-- Хичээлүүд -->
	<div class="widget">
		<h3 class="title">Хичээлүүд</h3>
		<div class="widget-category">
			<?php foreach ($lessons as $key => $lesson): ?>
				<a href="onelesson.php?show-content=<?php echo $lesson['name'] ?>"><?php echo $lesson['name']; ?><span><i class="fa fa-check"></i></span></a>
			<?php endforeach ?>
		</div>
	</div>
				<!-- /Хичээлүүд -->
				<!-- Сурах бичгүүд -->
	<div class="widget">
		<h3 class="title">Холбоотой номнууд</h3>
		<div class="widget-tags">
			<?php foreach ($books as $key => $book): ?>
				<a href="<?php echo BASE_URL."admin/".$book['pathh'] ?>" target="_blank"><?php echo $book['name']; ?></a>
			<?php endforeach ?>
		</div>
	</div>

</aside>
				<!-- /Aside -->