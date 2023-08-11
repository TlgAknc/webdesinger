<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css">       
    <link rel="stylesheet" type="text/css" href="fontawesome/css/all.css">
    <title>İletişim</title>
</head>
<body>
    <?php
         include 'header.php';
     ?>
     <div class="ustbaslik">
		<h1>Son Dakika</h1>
		<hr size="135">
		<div class="news">
		<p>Yeni </p><p>Haberler</p></div>
	</div>
    <div class="head" >
		<img class="slidersm" src="image/ilet.jpg">
		<div class="slider"><h3>İLETİŞİM</h3></div>
	</div>
    <div class="ilet">
        <div class="leftilet">
            <strong>Daha fazla bilgi arıyosanız. <br>Bizimle Temasa Geçin..</strong>
        </div>
        <div class="rightilet">
           <div class="bilgiler">
                <div class="iletmail">
                    <b>Email:</b><br><br>
                    <p>tolgakiinci@gmail.com</p>
                </div>
                <hr style= " margin-left: 15px;" size="75">
                <div class="iletmail">
                    <b>Telefon:</b><br><br>
                    <p>+90 537 816 90 82</p>
                </div> 
                <hr style= " margin-left: 15px;" size="75"> 
                <div class="iletmail">
                    <b>Takip Et:</b><br><br>
                     <p>
                        <a href="#"><i class="fa-brands fa-facebook-f"></i></a>
                           <a href="#"><i class="fa-brands fa-twitter"></i></a>
                          <a href="#"><i class="fa-brands fa-youtube"></i></a>
                    </p>
                </div>   
            </div> 
            <div class="iletisimform">
                <form action="iletisimislem.php" method="POST">
                    <input type="text" name="ad" placeholder="İsim" required><br>
                    <input type="Email" name="mail" placeholder="Email" required><br>
                    <input type="tel" name="telefon" placeholder="Telefon" required><br>
                    <textarea placeholder="Mesaj" name="mesaj"></textarea><br>
                    <input type="submit" name="mesajgonder">
                </form>
            </div>  
        </div>
    </div>




    <?php include 'footer.php'; ?>
</body>
</html>