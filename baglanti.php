<?php
	
	try {
		$db = new PDO('mysql:host=localhost;dbname=site-veritabanı;charset=utf8', 'root','');
	} catch (Exception $e) {
		echo $e->getMessage();
		exit();
	}
?>