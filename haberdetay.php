<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "site-veritabanı";

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    if (isset($_GET['id'])) {
        $haber_id = $_GET['id'];

        $sql = "SELECT * FROM haberler WHERE id = :haber_id";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':haber_id', $haber_id, PDO::PARAM_INT);
        $stmt->execute();

        if ($stmt->rowCount() > 0) {
            $haber = $stmt->fetch(PDO::FETCH_ASSOC);
            $baslik = $haber['baslik'];
            $icerik = $haber['icerik'];
            $aciklama = $haber['aciklama'];
        } else {
            $baslik = "Haber Bulunamadı";
            $icerik = "Seçilen haber bulunamadı.";
        }
    } else {
        $baslik = "Haber ID'si Belirtilmedi";
        $icerik = "Haber ID'si eksik veya geçersiz.";
    }
} catch (PDOException $e) {
    die("Veritabanı bağlantı hatası: " . $e->getMessage());
}
try {
    $stmt = $conn->query("SELECT * FROM haberler");
    $haberler = $stmt->fetchAll(PDO::FETCH_ASSOC);
} catch (PDOException $e) {
    echo "Veritabanı hatası: " . $e->getMessage();
}

?>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="stylesheet" type="text/css" href="fontawesome/css/all.css">
    <link rel="stylesheet" href="owl/owl.carousel.min.css">
	<link rel="stylesheet" href="owl/owl.theme.default.min.css">
    <title><?php echo $baslik; ?></title>
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
    <ul class="kategoriler">
        <li><a href="index.php">Tüm Haberler</a></li>
        <li><a href="kategori.php?kategori=Politika">Politika</a></li>
        <li><a href="kategori.php?kategori=Spor">Spor</a></li>
        <li><a href="kategori.php?kategori=Eğlence">Eğlence</a></li>
    </ul>
    <div class="habdetay">
        <div class="bos"></div>
        <div class="ort">
            <h1><?php echo $baslik; ?></h1><br>
            <p><?php echo $icerik; ?></p><br>
            <div class="res"> 
                <img src="image/<?php echo $haber['gorsel']; ?>">
            </div><br><br>
            <p><?php echo $aciklama; ?></p><br><br><br><br><br>
            <p class="cardtarih"><?php echo $haber['tarih']; ?></p>
            <div class="sosyalmedya">
                <li><a href="#"><i class="fa-brands fa-facebook-f"></i></a></li>
                <li><a href="#"><i class="fa-brands fa-twitter"></i></a></li>
                <li><a href="#"><i class="fa-brands fa-youtube"></i></a></li>
                <li class="kategori"><?php echo $haber['kategori']; ?></li>
            </div>
        </div>
    </div>
    <div class="bos"></div>
    <h2 class="yzm" style="color:#b9b6b6;">Diğer Haberler</h2>
    <div class="owl-carousel owl-theme yzm haberler">
    <?php foreach ($haberler as $haber): ?>
        <div class="card item" data-merge="1.3">
            <a href="haberdetay.php?id=<?php echo $haber['id']; ?>">
                <img src="image/<?php echo $haber['gorsel']; ?>">
                <h3 class="haberbaslik"><?php echo substr($haber['baslik'], 0, 30); ?>...</h3>
                <p class="cardp"><?php echo substr($haber['icerik'], 0, 150); ?>...</p>
                <p class="cardtarih"><?php echo $haber['tarih']; ?></p>
            </a>
        </div>
    <?php endforeach; ?>
</div>

<?php
	include 'footer.php';
?>
<script src="https://code.jquery.com/jquery-3.7.0.slim.min.js" integrity="sha256-tG5mcZUtJsZvyKAxYLVXrmjKBVLd6VpVccqz/r4ypFE=" crossorigin="anonymous"></script>
<script src="owl/owl.carousel.min.js"></script>
<script src="owl/script.js"></script>
</body>
</html>
