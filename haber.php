<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" type="text/css" href="fontawesome/css/all.css">
    <link rel="stylesheet" href="owl/owl.carousel.min.css">
    <link rel="stylesheet" href="owl/owl.theme.default.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Haberler</title>
</head>
<body style='background-color :  #eeecec ;'>
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
    <ul class="kategoriler">
        <li><a href="haber.php">Tüm Haberler</a></li>
        <li><a href="kategori.php?kategori=Politika">Politika</a></li>
        <li><a href="kategori.php?kategori=Spor">Spor</a></li>
        <li><a href="kategori.php?kategori=Eğlence">Eğlence</a></li>
    </ul>
    <div class="sirahaber">
        <?php 
		
        include 'baglanti.php';

        try {
            $stmt = $db->query("SELECT * FROM haberler");
            $haberler = $stmt->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            echo "Veritabanı hatası: " . $e->getMessage();
        }
        foreach ($haberler as $haber): 
        ?>
        <div class="conta">
            <a href="haberdetay.php?id=<?php echo $haber['id']; ?>">
                <div class="habimg"><img src="image/<?php echo $haber['gorsel']; ?>"></div>
                <div class="basicerik">
                <h3 class="baslikhab"><?php echo substr($haber['baslik'], 0, 180); ?>...</h3>
                    <p class="icerik"><?php echo substr($haber['icerik'], 0, 650); ?>...</p>
                    <hr>
                </div>
            </a>
        </div>

        <?php endforeach; 
				include 'footer.php';?>        
    </div>
</body>
</html>
