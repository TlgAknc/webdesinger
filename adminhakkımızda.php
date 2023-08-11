<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" type="text/css" href="fontawesome/css/all.css">
    <title>Hakkımızda - Admin Paneli</title>
</head>
<body>
<?php 
session_start();

if(empty($_SESSION['kullanici_adi'])){
    header('Location:Adminpanelgiris.php');
    exit();
}
    include 'adminheader.php'; 
    error_reporting(E_ALL);
ini_set('display_errors', 1);

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
            $metin = '';
        }
    } catch (PDOException $e) {
        echo "Veritabanı hatası: " . $e->getMessage();
    }

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $metin = $_POST["metin"];

        try {
            $stmt = $db->prepare("UPDATE hakkımızda SET metin = :metin WHERE id = 1");
            $stmt->bindParam(':metin', $metin);
            $stmt->execute();
            header("Location: adminhakkımızda.php");
            exit;
        } catch (PDOException $e) {
            echo "Veritabanı hatası: " . $e->getMessage();
        }
    }
?>
    <form class="hakkimizdaform" action="" method="post" style="text-align: center;">
    <h2>Hakkımızda Düzenle</h2>
    <textarea name="metin" rows="10" cols="80"><?php  $metin ?> </textarea><br>
    <input type="submit" value="Kaydet">
    </form>
<?php
    echo $metin;
?>
</body>
</html>
