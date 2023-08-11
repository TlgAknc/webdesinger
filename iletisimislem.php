<?php 
    include 'baglanti.php';

    if(isset($_POST["ad"]) && isset($_POST["mail"]) && isset($_POST["telefon"]) && isset($_POST["mesaj"])){
        $adveritabani = htmlspecialchars(htmlspecialchars_decode($_POST["ad"]));
        $mailveritabani = htmlspecialchars(htmlspecialchars_decode($_POST["mail"]));
        $telefonveritabani = htmlspecialchars(htmlspecialchars_decode($_POST["telefon"]));
        $mesajveritabani = htmlspecialchars(htmlspecialchars_decode($_POST["mesaj"]));

        $iletisimFormuEkle = $db->prepare("INSERT INTO icerik (icerik_ad, icerik_mail, icerik_telefon, icerik_mesaj) 
                                            VALUES (:icerik_ad, :icerik_mail, :icerik_telefon, :icerik_mesaj)");
        $ekle = $iletisimFormuEkle->execute(array(
                                    'icerik_ad' => $adveritabani,
                                    'icerik_mail' => $mailveritabani,
                                    'icerik_telefon' => $telefonveritabani,
                                    'icerik_mesaj' => $mesajveritabani,
        ));

        if($ekle){
            echo "<script>alert('Mesajınız Başarıyla Gönderildi')</script>";
            echo "<meta http-equiv='refresh' content='0;url=iletisim.php'>"; 
            exit;
        }
        else {
            echo "<script>alert('Mesajınız Gönderilmedi')</script>";
            echo "<meta http-equiv='refresh' content='0;url=iletisim.php'>"; 
            exit;
        }
    }
?>
