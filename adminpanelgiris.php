<?php
	
	session_start();

	if(!empty($_SESSION['kullanici_adi'])){
		header('Location:adminpanel.php');
		exit();
	}

	$kullaniciAdi = $_POST['kullanici_adi'] ?? null;
	$sifre = $_POST['sifre'] ?? null;


	if($_POST){
		include("baglanti.php");
		$sorgu = $db->prepare("SELECT * FROM kullanicilar WHERE kullanici_adi = :kullaniciAdi");
		$sorgu->execute(['kullaniciAdi' => $kullaniciAdi]);

		$kullanici =  $sorgu->fetch(PDO::FETCH_ASSOC);

		if($kullanici){
			if($sifre === $kullanici['sifre']){
				$_SESSION['kullanici_adi'] = $kullaniciAdi;
				header("Location:adminpanel.php");
			} else {
				echo "<script>alert('Sifre Yanlis')</script>";
			}
		} else {
			echo "<script>alert('Kullanici Bulunamadi')</script>";
		}
	}
?>

<!DOCTYPE html>
<html>
<head>
	<title>Admin Panel Giriş</title>
</head>
<body>
	<form action="adminpanelgiris.php" method="post" style="text-align: center; padding-top: 25px;">
		<h1>Giriş Yap</h1>
		Kullanici Adi:
		<input type="text" name="kullanici_adi" require/><br><br>
		Parola:
		<input type="password" name="sifre" require/><br><br>
		<button>Giriş</button>
	</form>
</body>
</html>