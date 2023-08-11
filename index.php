<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="stylesheet" type="text/css" href="fontawesome/css/all.css">
	<link rel="stylesheet" href="owl/owl.carousel.min.css">
	<link rel="stylesheet" href="owl/owl.theme.default.min.css">
	<link rel="icon"  href="image/favicon.ico">
	<title>Haber</title>
</head>
<body>
<?php 
	include 'header.php'; 
?>

	<div class="ustbaslik">
		<h1>Son Dakika</h1>
		<hr size="135">
		<div class="news">
			<p>Yeni </p><p>Haberler</p>
		</div>
	</div>
	<div class="head " >
		<img class="slidersm zoom-in-out-box" src="image/a.jpg">
		<div class="slider"><h3>Flaş haber :<marquee direction="right"class="marquee">Zam..</marquee></h3></div>
	</div>

	<?php
		include 'haberler.php';
		include 'footer.php';
	?>
	 <script src="https://code.jquery.com/jquery-3.7.0.slim.min.js" integrity="sha256-tG5mcZUtJsZvyKAxYLVXrmjKBVLd6VpVccqz/r4ypFE=" crossorigin="anonymous"></script>
<script src="owl/owl.carousel.min.js"></script>
<script src="owl/script.js"></script>
</body>
</html>