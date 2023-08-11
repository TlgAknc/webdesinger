<?php
session_start();

if(empty($_SESSION['kullanici_adi'])){
    header('Location:Adminpanelgiris.php');
    exit();
}
include 'baglanti.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $baslik = $_POST["baslik"];
    $icerik = $_POST["icerik"];
    $aciklama = $_POST["aciklama"];
    $gorsel = $_FILES["gorsel"]["name"];
    $gorsel_tmp = $_FILES["gorsel"]["tmp_name"];
    $kategori = $_POST["kategori"];
    $allowed_categories = array("Politika", "Spor", "Eğlence");
    if (!in_array($kategori, $allowed_categories)) {
        echo "Geçersiz kategori seçimi.";
        exit;
    }

    try {
        $sql = "INSERT INTO haberler (baslik, icerik, aciklama, gorsel, kategori) VALUES (:baslik, :icerik, :aciklama, :gorsel, :kategori)";
        $stmt = $db->prepare($sql);
        $stmt->bindParam(':baslik', $baslik);
        $stmt->bindParam(':icerik', $icerik);
        $stmt->bindParam(':aciklama', $aciklama);
        $stmt->bindParam(':gorsel', $gorsel);
        $stmt->bindParam(':kategori', $kategori); 

        if ($stmt->execute()) {
            
            $target_dir = "image/";
            $target_file = $target_dir . basename($gorsel);

            if (move_uploaded_file($gorsel_tmp, $target_file)) {
                echo "<script>alert('Haber başarıyla eklendi!')</script>";
            } else {
                echo "Dosya yükleme hatası.";
            }
        } else {
            echo "Veritabanı hatası: " . $stmt->errorInfo()[2];
        }
    } catch (PDOException $e) {
        echo "Veritabanı hatası: " . $e->getMessage();
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" type="text/css" href="fontawesome/css/all.css">
    <title>Haber Ekle - Admin Paneli</title>
</head>
<body>
<?php 
    	include 'adminheader.php';  
	?>
    
    <form class="haberform" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post" enctype="multipart/form-data">
      <h2>Haber Ekle</h2>  
        <label for="baslik">Başlık:</label>
        <input type="text" id="baslik" name="baslik" required><br>

        <label for="icerik">Özet:</label><br>
        <textarea id="icerik" name="icerik" rows="4" cols="50" required></textarea><br>

        <label for="aciklama">Haber:</label><br>
        <textarea id="icerik" name="aciklama" rows="4" cols="50" required></textarea><br>

        <label for="gorsel">Görsel:</label>
        <input type="file" id="gorsel" name="gorsel" accept="image/*" required><br>

        <label for="kategori">Kategori:</label> 
        <select id="kategori" name="kategori" required>
            <option value="Politika">Politika</option>
            <option value="Spor">Spor</option>
            <option value="Eğlence">Eğlence</option>
        </select><br>

        <input type="submit" value="Haber Ekle">
    </form>
</body>
</html>
