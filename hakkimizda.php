<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="stylesheet" type="text/css" href="fontawesome/css/all.css">
	<title>Hakkımızda</title>
</head>
<body>
<?php 
	include 'header.php'; 

	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "site-veritabanı";

	try {
	    $db = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
	    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	} catch (PDOException $e) {
	    echo "Veritabanı hatası: " . $e->getMessage();
	}
	try {
	    $stmt = $db->prepare("SELECT * FROM hakkımızda");
	    $stmt->execute();
	    $result = $stmt->fetch(PDO::FETCH_ASSOC);
	    if ($result !== false) {
	        $metin = $result['metin'];
	    } else {
	        $metin = 'Bu site hakkında bir açıklama bulunmamaktadır.';
	    }
	} catch (PDOException $e) {
	    echo "Veritabanı hatası: " . $e->getMessage();
	}
?>

<div class="ustbaslik">
	<h1>Hakkımızda</h1>
	<hr size="135">
	<div class="news">
		<p>Yeni </p><p>Haberler</p>
	</div>
</div>

<div class="head">
	<img class="slidersm" src="image/hakkımızda.jpg">
	<div class="slider">
		<h3>Hakkımızda</h3>
	</div>
</div>

<div class="hak">
	<div class="lefthak">
		<b>Kaliteli haberler, istediğiniz yerde, istediğiniz zaman.</b>
	</div>
	<div class="righthak">
		<p>
			<?php echo $metin; ?>
		</p>
	</div>
</div>

<div class="kadro">
	<h1>Kadro</h1>
	<div class="ekip">
		<img src="image/kadro.jpg">
		<div class="ekipbilgi">
			<h3>Genel yayın Yönetmeni</h3><br>
			<p>Burak Yılmaz</p><br>
			<p>info@burak.com</p><br>
			<p>+90 123 456 78 98</p>
		</div>
	</div>
	<div class="ekip">
		<img src="image/2.jpg">
		<div class="ekipbilgi">
			<h3>Üretim Uzmanı</h3><br>
			<p>Zehra Koç</p><br>
			<p>info@burak.com</p><br>
			<p>+90 123 456 78 98</p>
		</div>
	</div>
	<div class="ekip">
		<img src="image/3.jpg">
		<div class="ekipbilgi">
			<h3>Satış Yöneticisi</h3><br>
			<p>Medine Tok</p><br>
			<p>info@burak.com</p><br>
			<p>+90 123 456 78 98</p>
		</div>
	</div>
</div>

<?php
	include 'footer.php';
?>
</body>
</html>
