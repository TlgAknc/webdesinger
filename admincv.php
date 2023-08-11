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
				<th>Soyadı</th>
				<th>Email</th>
				<th>CV</th>
			</tr>
		</thead>
		<tbody>
			<?php
			try {
				$conn = new PDO("mysql:host=localhost;dbname=site-veritabanı", "root", "");
				$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

				$sql = "SELECT * FROM cv";
				$stmt = $conn->query($sql);

				if ($stmt->rowCount() > 0) {
					while ($row = $stmt->fetch()) {
						echo "<tr>";
						echo "<td>" . $row["cv_id"] . "</td>";
						echo "<td>" . $row["cv_ad"] . "</td>";
						echo "<td>" . $row["cv_soyad"] . "</td>";
						echo "<td>" . $row["cv_email"] . "</td>";
						echo "<td>";
						echo "<a href='" . $row["cv_cv"] . "' target='_blank'>CV'yi Göster</a>";
						echo "</td>";
						echo "</tr>";
					}
				} else {
					echo "<tr><td colspan='5'>Veri bulunamadı.</td></tr>";
				}
			} catch (PDOException $e) {
				echo "<tr><td colspan='5'>Hata: " . $e->getMessage() . "</td></tr>";
			}
			$conn = null;
			?>
		</tbody>
	</table>
</body>
</html>
