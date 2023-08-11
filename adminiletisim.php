<?php
session_start();

    if(empty($_SESSION['kullanici_adi'])){
        header('Location:Adminpanelgiris.php');
        exit();
    }
	include 'baglanti.php';
	$iletisimSorgulamasi = $db->prepare("SELECT * FROM icerik ORDER BY icerik_id DESC");
	$iletisimSorgulamasi->execute();
?>


<!DOCTYPE html>
<html>
<head>
	 <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" type="text/css" href="fontawesome/css/all.css">
	<title>İletişim</title>
</head>
<body>
	<?php 
    	include 'adminheader.php';  
	?>
	<table class="iletable">
		<thead>
			<tr>
				<th>#</th>
				<th>Adı</th>
				<th>Mail</th>
				<th>Telefon</th>
				<th>Mesaj</th>
			</tr>
		</thead>
		<tbody>
			<?php while($iletisimYaz = $iletisimSorgulamasi->fetch(PDO::FETCH_ASSOC)){?>
			<tr>
				<th scope="row"><?php echo $iletisimYaz['icerik_id'] ?></th>
				<td><?php echo $iletisimYaz['icerik_ad'] ?></td>
				<td><?php echo $iletisimYaz['icerik_mail'] ?></td>
				<td><?php echo $iletisimYaz['icerik_telefon'] ?></td>
				<td><?php echo $iletisimYaz['icerik_mesaj'] ?></td>
			</tr>
		<?php } ?>
		</tbody>
	</table>
</body>
</html>