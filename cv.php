<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="fontawesome/css/all.css">
    <link rel="stylesheet" href="style.css">
    <title>CV Gönderme</title>
</head>
<?php 
	include 'header.php'; 
    include 'baglanti.php'; 
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $ad = $_POST["ad"];
        $soyad = $_POST["soyad"];
        $email = $_POST["email"];
        
        $cv_dosya_adi = $_FILES['cv']['name'];
        $cv_gecici_yol = $_FILES['cv']['tmp_name'];
        
        $hedef_klasor = "cvler/";
        $cv_yeni_yol = $hedef_klasor . $cv_dosya_adi;
        
        if (move_uploaded_file($cv_gecici_yol, $cv_yeni_yol)) {
            try {
                $conn = new PDO("mysql:host=localhost;dbname=site-veritabanı", "root", "");
                $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                
                
                $sql = "INSERT INTO cv (cv_ad, cv_soyad, cv_email, cv_cv) VALUES (?, ?, ?, ?)";
                $stmt = $conn->prepare($sql);
                $stmt->execute([$ad, $soyad, $email, $cv_yeni_yol]);
                
                echo "<script> alert('CV başarıyla kaydedildi.')</script>";
            } catch (PDOException $e) {
                echo "<script> alert('Hata.')</script>" . $e->getMessage();
            }
        
            $conn = null;
        } else {
            echo "<script> alert('Dosya yükleme hatası.')</script>";
        }
    }
    
    
?>
<body>
<div class="ustbaslik">
		<h1>Son Dakika</h1>
		<hr size="135">
		<div class="news">
			<p>Yeni </p><p>Haberler</p>
		</div>
	</div>
	<div class="head " >
		<img class="slidersm" src="image/a.jpg">
		<div class="slider"><h3>Cv Gönder</h3></div>
	</div>

    <main >
        <form  action="#" method="post" enctype="multipart/form-data">
            <label for="ad">Adınız:</label>
            <input type="text" id="ad" name="ad" required>
            
            <label for="soyad">Soyadınız:</label>
            <input type="text" id="soyad" name="soyad" required>
            
            <label for="email">E-posta Adresiniz:</label>
            <input type="email" id="email" name="email" required>
            
            <label for="cv">CV'niz (PDF formatında):</label>
            <input type="file" id="cv" name="cv" accept=".pdf" required>
            
            <button type="submit">Gönder</button>
        </form>
    </main>
    <?php
		include 'footer.php';
	?>
</body>
</html>
