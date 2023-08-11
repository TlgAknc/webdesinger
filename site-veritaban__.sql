-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 11 Ağu 2023, 22:11:43
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `site-veritabanı`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cv`
--

CREATE TABLE `cv` (
  `cv_id` int(11) NOT NULL,
  `cv_ad` varchar(255) NOT NULL,
  `cv_soyad` varchar(255) NOT NULL,
  `cv_email` varchar(255) NOT NULL,
  `cv_cv` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `haberler`
--

CREATE TABLE `haberler` (
  `id` int(11) NOT NULL,
  `kategori` varchar(250) NOT NULL,
  `baslik` varchar(255) NOT NULL,
  `icerik` text NOT NULL,
  `aciklama` text NOT NULL,
  `gorsel` varchar(255) NOT NULL,
  `tarih` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `haberler`
--

INSERT INTO `haberler` (`id`, `kategori`, `baslik`, `icerik`, `aciklama`, `gorsel`, `tarih`) VALUES
(29, 'Politika', 'Fransa Seçim Gününe Yaklaşıyor', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius.Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius.Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius.Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius.Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius.Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius.Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius.Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius.Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eiusLorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius.', 'a.jpg', '2023-08-07 10:59:29'),
(30, 'Politika', 'Fransa Seçim Gününe Yaklaşıyor', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius.Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eiusLorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius.Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius.Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eiusLorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius.Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius <br> <br> Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius.Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eiusLorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius.Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius', 'fixed.jpg', '2023-08-08 20:12:31'),
(31, 'Spor', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Excepturi omnis provident minus praesentium enim, nam accusamus. Adipisci animi nostrum beatae asperiores commodi? Facilis nulla culpa amet doloribus eos nostrum exercitationem.', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Excepturi omnis provident minus praesentium enim, nam accusamus. Adipisci animi nostrum beatae asperiores commodi? Facilis nulla culpa amet doloribus eos nostrum exercitationem.Lorem ipsum dolor, sit amet consectetur adipisicing elit. Excepturi omnis provident minus praesentium enim, nam accusamus. Adipisci animi nostrum beatae asperiores commodi? Facilis nulla culpa amet doloribus eos nostrum exercitationem.Lorem ipsum dolor, sit amet consectetur adipisicing elit. Excepturi omnis provident minus praesentium enim, nam accusamus. Adipisci animi nostrum beatae asperiores commodi? Facilis nulla culpa amet doloribus eos nostrum exercitationem.Lorem ipsum dolor, sit amet consectetur adipisicing elit. Excepturi omnis provident minus praesentium enim, nam accusamus. Adipisci animi nostrum beatae asperiores commodi? Facilis nulla culpa amet doloribus eos nostrum exercitationem.', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Excepturi omnis provident minus praesentium enim, nam accusamus. Adipisci animi nostrum beatae asperiores commodi? Facilis nulla culpa amet doloribus eos nostrum exercitationem.Lorem ipsum dolor, sit amet consectetur adipisicing elit. Excepturi omnis provident minus praesentium enim, nam accusamus. Adipisci animi nostrum beatae asperiores commodi? Facilis nulla culpa amet doloribus eos nostrum exercitationem.Lorem ipsum dolor, sit amet consectetur adipisicing elit. Excepturi omnis provident minus praesentium enim, nam accusamus. Adipisci animi nostrum beatae asperiores commodi? Facilis nulla culpa amet doloribus eos nostrum exercitationem.Lorem ipsum dolor, sit amet consectetur adipisicing elit. Excepturi omnis provident minus praesentium enim, nam accusamus. Adipisci animi nostrum beatae asperiores commodi? Facilis nulla culpa amet doloribus eos nostrum exercitationem.Lorem ipsum dolor, sit amet consectetur adipisicing elit. Excepturi omnis provident minus praesentium enim, nam accusamus. Adipisci animi nostrum beatae asperiores commodi? <br><br> Facilis nulla culpa amet doloribus eos nostrum exercitationem.Lorem ipsum dolor, sit amet consectetur adipisicing elit. Excepturi omnis provident minus praesentium enim, nam accusamus. Adipisci animi nostrum beatae asperiores commodi? Facilis nulla culpa amet doloribus eos nostrum exercitationem.Lorem ipsum dolor, sit amet consectetur adipisicing elit. Excepturi omnis provident minus praesentium enim, nam accusamus. Adipisci animi nostrum beatae asperiores commodi? Facilis nulla culpa amet doloribus eos nostrum exercitationem.Lorem ipsum dolor, sit amet consectetur adipisicing elit. Excepturi omnis provident minus praesentium enim, nam accusamus. Adipisci animi nostrum beatae asperiores commodi? Facilis nulla culpa amet doloribus eos nostrum exercitationem.Lorem ipsum dolor, sit amet consectetur adipisicing elit. Excepturi omnis provident minus praesentium enim, nam accusamus. Adipisci animi nostrum beatae asperiores commodi? Facilis nulla culpa amet doloribus eos nostrum exercitationem.', 'arda.jpg', '2023-08-09 10:31:51'),
(32, 'Eğlence', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Excepturi omnis provident minus praesentium enim, nam accusamus. Adipisci animi nostrum beatae asperiores commodi? Facilis nulla culpa amet doloribus', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Excepturi omnis provident minus praesentium enim, nam accusamus. Adipisci animi nostrum beatae asperiores commodi? Facilis nulla culpa amet doloribus eos nostrum exercitationem.Lorem ipsum dolor, sit amet consectetur adipisicing elit. Excepturi omnis provident minus praesentium enim, nam accusamus. Adipisci animi nostrum beatae asperiore', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Excepturi omnis provident minus praesentium enim, nam accusamus. Adipisci animi nostrum beatae asperiores commodi? Facilis nulla culpa amet doloribus eos nostrum exercitationem.Lorem ipsum dolor, sit amet consectetur adipisicing elit. Excepturi omnis provident minus praesentium enim, nam accusamus. Adipisci animi nostrum beatae asperiores commodi? Facilis nulla culpa amet doloribus eos nostrum exercitationem.Lorem ipsum dolor, sit amet consectetur adipisicing elit. Excepturi omnis provident minus praesentium enim, nam accusamus. Adipisci animi nostrum beatae asperiores commodi? Facilis nulla culpa amet doloribus eos nostrum exercitationem. <br><br>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Excepturi omnis provident minus praesentium enim, nam accusamus. Adipisci animi nostrum beatae asperiores commodi? Facilis nulla culpa amet doloribus eos nostrum exercitationem.', 'ilet.jpg', '2023-08-09 10:32:30'),
(34, 'Spor', 'Lorem ipsum dolor sit amet consectetur adipisicing elit', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius.Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eiusLorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius.Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius.Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eiusLorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius.Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eiusLorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius.Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eiusLorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius.Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius <br> <br> Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius.Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eiusLorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius.Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eiusLorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius.Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eiusLorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius.Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius', 'hakkımızda1.jpg', '2023-08-11 19:48:07'),
(35, 'Eğlence', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae place', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius.Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eiusLorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam ', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus  <br> <br> Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus ', '3.jpg', '2023-08-11 19:49:25'),
(36, 'Politika', ' Necessitatibus itaque deserunt, quibusdam molestiae placeat amet', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius.Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eiusLorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius.Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eiusLorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius.Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eiusLorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius.Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam cto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius.Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eiusLorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius.Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eiusLorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius.Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eiusLorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius.Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eiusLorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius.Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eiusLorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius.Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius <br> <br> Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius.Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eiusLorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius.Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus itaque deserunt, quibusdam molestiae placeat amet rem repellendus minima expedita corrupti velit architecto repudiandae blanditiis, dolore magnam sed? Animi, laudantium eius', 'earth.jpg', '2023-08-11 19:53:22');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkımızda`
--

CREATE TABLE `hakkımızda` (
  `id` int(11) NOT NULL,
  `metin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hakkımızda`
--

INSERT INTO `hakkımızda` (`id`, `metin`) VALUES
(1, ' Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. <br><br> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `icerik`
--

CREATE TABLE `icerik` (
  `icerik_id` int(11) NOT NULL,
  `icerik_ad` varchar(250) NOT NULL,
  `icerik_mail` varchar(250) NOT NULL,
  `icerik_telefon` int(11) NOT NULL,
  `icerik_mesaj` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

CREATE TABLE `kullanicilar` (
  `id` int(10) NOT NULL,
  `kullanici_adi` varchar(100) NOT NULL,
  `sifre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanicilar`
--

INSERT INTO `kullanicilar` (`id`, `kullanici_adi`, `sifre`) VALUES
(1, 'mehmet', '1234');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `cv`
--
ALTER TABLE `cv`
  ADD PRIMARY KEY (`cv_id`);

--
-- Tablo için indeksler `haberler`
--
ALTER TABLE `haberler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `hakkımızda`
--
ALTER TABLE `hakkımızda`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `icerik`
--
ALTER TABLE `icerik`
  ADD PRIMARY KEY (`icerik_id`);

--
-- Tablo için indeksler `kullanicilar`
--
ALTER TABLE `kullanicilar`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `cv`
--
ALTER TABLE `cv`
  MODIFY `cv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `haberler`
--
ALTER TABLE `haberler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Tablo için AUTO_INCREMENT değeri `hakkımızda`
--
ALTER TABLE `hakkımızda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `icerik`
--
ALTER TABLE `icerik`
  MODIFY `icerik_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Tablo için AUTO_INCREMENT değeri `kullanicilar`
--
ALTER TABLE `kullanicilar`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
