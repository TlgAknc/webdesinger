<?php
try {
    
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "site-veritabanı";

    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);


    $stmt = $conn->query("SELECT * FROM haberler");
    $haberler = $stmt->fetchAll(PDO::FETCH_ASSOC);
} catch (PDOException $e) {
    echo "Veritabanı hatası: " . $e->getMessage();
}
?>

<section class="haberler">
    <h1>Tüm Haberler</h1>

    <div class="owl-carousel owl-theme">
        <?php 
        $counter = 1;
        foreach ($haberler as $haber): 
        ?>
        <div class="card item" data-merge="1.3">
            <a href="haberdetay.php?id=<?php echo $haber['id']; ?>">
                <img src="image/<?php echo $haber['gorsel']; ?>">
                <h3 class="haberbaslik"><?php echo substr($haber['baslik'], 0, 30); ?>...</h3>
                <p class="cardp"><?php echo substr($haber['icerik'], 0, 150); ?>...</p>

                <p class="cardtarih"><?php echo $haber['tarih']; ?></p>
            </a>
        </div>
        <?php 
        if ($counter % 6 === 0) {
            echo '</div><div class="owl-carousel owl-theme">';
        }
        $counter++;
        endforeach; 
        ?>
    </div>
</section>

