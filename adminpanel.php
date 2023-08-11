<?php

session_start();

    if(empty($_SESSION['kullanici_adi'])){
        header('Location:Adminpanelgiris.php');
        exit();
    }

?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" type="text/css" href="fontawesome/css/all.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Paneli</title>
</head>
<?php 
    include 'adminheader.php' ; 
?>
</body>
</html>