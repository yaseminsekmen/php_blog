-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 04 Nis 2021, 02:18:08
-- Sunucu sürümü: 10.4.18-MariaDB
-- PHP Sürümü: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `blog`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blog`
--

CREATE TABLE `blog` (
  `blog_id` int(11) NOT NULL,
  `blog_adi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `blog_ozet` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `blog_aciklama` text COLLATE utf8_turkish_ci NOT NULL,
  `blog_resim` varchar(50) COLLATE utf8_turkish_ci DEFAULT 'img_src',
  `blog_tarih` datetime NOT NULL,
  `kategori_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `blog`
--

INSERT INTO `blog` (`blog_id`, `blog_adi`, `blog_ozet`, `blog_aciklama`, `blog_resim`, `blog_tarih`, `kategori_id`) VALUES
(1, 'iOS ve Android’te Covid-19 Maruz Kalma Bildirimleri Nasıl Etkinleştirilir', 'Apple ve Google’ın ortaklaşa geliştirdikleri Covid-19 Maruz Kalma Bildirimlerini açarak kendinizce gerekli önlemleri alabilirsiniz', 'İki teknoloji devi Apple ve Google’in işbirliği yaparak bu yılın başında geliştirmeye çalıştıkları Covid-19 Maruz Kalma Bildirimleri sayesinde kullanıcılar, potansiyel Covid-19’a maruz kalmış kişileri öğrenebiliyor. Bu sayede kişiler kendilerince önlem de alabiliyor.\r\n\r\nCovid-19 Maruz Kalma Bildirimleri Nasıl Çalışıyor\r\n\r\nApple ve Google’ın geliştirdikleri uygulama, gizliliğe oldukça fazla önem veriyor. Bu nedenle uygulama, kişilerin konumunu takip etmiyor ve kişisel bilgilerini saklamıyor. Covid-19 Maruz Kalma Bildirim Uygulaması şu şekilde çalışıyor; uygulamayı etkileştirdiğiniz durumda Covid-19’a maruz kalmış biriyle yakın yerde bulunursanız uygulama size Bluetooth bağlantısı üzerinden bildirim gönderiyor. Bu sayede yakınlarınızda Covid-19’a yakalanmış birinin olduğunu öğrenebiliyorsunuz. Böylece kendinizce daha fazla önlem alma imkânınız da oluyor.\r\n\r\nTabi uygulamanın sağlı bir şekilde çalışabilmesi için Covid-19’a yakalanan kişilerin uygulamaya test sonuçların girmesi gerekiyor.', 'uyg.webp', '2021-03-08 06:35:23', 1),
(2, 'Android Platformunda Karanlık Mod Desteğine Sahip Uygulamalar', 'Android 10 sürümünden sonra birçok uygulama Karanlık Mod desteğine sahip oldu. İşte Karanlık Mod desteği sunan Android uygulamalar', 'Karanlık mod desteği artık birçok uygulamada bulunuyor. Özellikle son yıllarda uygulamaları karanlık modda kullanmayı tercih eden kullanıcı sayısı da bir hayli yüksek. Gerek göz sağlığı gerek güç tüketimi tasarrufu sağlamak için kullanılan Karanlık mod, Android 10 ve iOS 12 gibi sürümlerin bu özelliği desteklemesinden sonra daha fazla kullanılmaya başlandı.\r\n\r\nİşletim sistemi sürümlerinin Karanlık mod özelliğini desteklemesi sayesinde kullanılan uygulamalarda karanlık mod özelliğini aktif etmek artık çok daha kolay. Telefonda karanlık mod aktif edilince karanlık modu destekleyen uygulamalar da otomatik olarak karanlık modda çalımlaya başlıyor. Bu da özelliğin daha fazla kullanılmasını sağlıyor. Peki, birçok nedenden dolayı tercih edilen Karanlık mod, Android platformunda hangi uygulamalarda bulunuyor? \r\n                                                                                                               Karanlık Mod Desteğine Sahip Android Uygulamalar\r\n\r\nYoutube\r\nTwitter\r\nFacebook\r\nInstagram\r\nWhatsapp\r\nGmail\r\nGoogle Haritalar\r\nGoogle Chrome\r\nTwitch\r\nReddit', 'uyg1.jpeg', '2021-03-09 07:35:23', 1),
(3, 'iOS 14.4.2 Güncellemesi Yayınladı', '<p>Apple, iPhone kullanıcıları için yeni güncellemesi iOS 14.4.2’yi yayınladı</p>', 'Güncelleme konusunda oldukça hassas olan Apple, iPhone kullanıcıları için yeni bir güncelleme daha yayınladı. Kısa bir süre önce iOS 14.4.2, iPad OS 14.4.2 ve watchOS 7.3.3 güncellemelerini yayınlayan teknoloji devi, bu güncellemelerden sadece birkaç gün sonra iOS 14.4.2 güncellemesini yayınladı.\r\n\r\nYayınlanan önceki güncellemeler, beraberinde herhangi bir yenilik getirmiyordu ve ilk açıklama bunların birer güvenlik güncellemesi olduğu yönündeydi. Ancak bugün Apple’dan gelen bilgiler bu güncellemelerin neden yayınladığını ortaya çıkardı. Apple, yaptığı açıklamada yeni güncellemenin sebebini keşfedilen bir güvenlik açığı olduğunu söyledi. Bu kapsamda\r\n\r\niPhone 6s ve üstü modeller, tüm iPad Pro modelleri, iPad Air 2 ve üstü modeller, iPad 5. nesil ve üstü modeller, iPad mini 4 ve üstü modeller ve iPod touch 7. nesil için sunulan güncellemelerde, tespit edilen güvenlik açığı giderildi.', 'ios.jpg', '2021-03-19 11:16:38', 3),
(4, 'Huawei’in Yeni Dizüstü Bilgisayarı MateBook X Pro Tanıtıldı', 'Huawei, yüksek ekran gövde oranı sunan yeni dizüstü bilgisayarı MateBook X Pro modelini tanıttı', 'Çinli teknoloji üreticisi Huawei, düzenlediği etkinlik kapsamında yeni dizüstü bilgisayarı Huawei MateBook X Pro modelini tanıttı. Oldukça ince çerçevelere sahip olan MateBook X Pro yüksek bir ekran gövde oranı sunuyor.\r\n\r\nHuawei MateBook X Pro\r\n\r\n13.9 inç QHD+ 3K FullView ekrana sahip olan Huawei MateBook X Pro, 60 Hz ekran yenileme oranı sunacak. Uzay grisi renk seçeneği ile gelecek olan Huawei MateBook X Pro, metal bir kasaya sahip ve sadece 1.33 kilogram. Bilgisayarın hafif olması seyahat esnasında kullanıcılara kolaylık oluşturuyor. Ayrıca Huawei MateBook X Pro, yüzde 91 gibi yüksek bir ekran gövde oranı sunuyor.\r\n\r\n16 GB LPDDR4x 4266 MHz RAM belleğe sahip olan Huawei MateBook X Pro’nun depolama tarafında 1 TB NVMe PCIe SSD bulunuyor. Ayrıca bilgisayar, 11. nesil Intel Core i7 işlemciden işlemcinden güç alıyor.\r\n\r\nEMUI arayüzü ile çalışan Huawei MateBook X Pro, Huawei akıllı telefonlarla Huawei Share üzerinden hızlı bir bağlantı sunuyor.\r\n\r\n56 Wh batarya ile gelecek olan Huawei MateBook X Pro, 1 saatlik şarj ile yüzde 78 batarya doluluğuna ulaşıyor.\r\n\r\nBağlantı özellikleri baktığımızda Wi-Fi 6 (802.11 a/b/g/n/ac/ax), Bluetooth 5.1 sürümleri, 1 adet USB-A 3.1 Gen 2, 1 adet HDMI, 2 adet USB-C ve 1 adet 3.5 mm kulaklık girişinin olduğunu görüyoruz.', 'lap.jpg', '2021-03-01 08:13:24', 4),
(5, 'Intel Core i9-11900K Hız Aşırtma İle 7 GHz’yi Geçti', 'Inetl’in yeni amiral gemisi işlemcilerinden Core i9-11900K hız aşırtma ile 7 GHz barajını geçmeyi başardı', 'ABD’li işlemci üreticisi Intel, çalışmalarına tüm hızıyla ediyor. Geçtiğimiz günlerde yeni işlemci serisi 11. nesil Rocket Lake-S modellerini tanıtan şirket şimdi ise amiral gemisi işlemcisi Core i9-11900K ile gündeme geldi. Intel’in 11. nesil işlemcisi hız aşırtma ile 7 GHz’yi geçmeyi başardı.\r\n\r\nIntel i9-11900K Hız Aşırtma İle 7 GHz’i Geçmeyi Başardı\r\n\r\nIntel’in yeni nesil amiral gemisi işlemcileri yapılan hız aşırtma testlerinde 6 GHz’yi rahatlıkla geçebiliyor. Bu hız aşırtma işlemleri el ile yapılıyor. Ancak sıvı nitrojen kullanılarak yapılan hız aşırtma testinde Intel i9-11900K, 7 GHz barajını geçmeyi başardı.', 'islem.jpg', '2021-02-09 17:17:31', 5),
(6, 'OnePlus 8 ve 8 Pro Modelleri İçin OxygenOS 11 Yayınlandı', 'Amiral gemisi katli lakaplı OnePlus 8 ve 8 Pro modelleri için Android 11 tabanlı OxygenOS 11 güncellemesi yayınladı', 'OnePlus, yeni amiral gemisi telefonları OnePlus 8 ve 8 Pro modelleri için Android 11 tabanlı OxygenOS 11 arayüz güncellemesini kullanıma sundu. Şimdilik yeni amiral gemisi modelleri için yayınlanan güncellemenin kısa süre sonra diğer modeller için yayınlanması bekleniyor. OnePlus’ın tanıtılacak olan yeni telefonu OnePlus 8T modeli ise kutudan Anroid 11 ve OxygenOS 11 arayüzü ile gelecek.\r\n\r\nOxygenOS 11 Güncellemesi\r\n\r\nSistem\r\n\r\nYeni kullanıcı arayüzü görsel tasarımı, çeşitli ayrıntı optimizasyonları ile size daha güzel bir deneyim sunuyor.\r\n\r\nYepyeni hava durumu kullanıcı arayüzü, gün doğumu ve gün batımı arasında dinamik geçişleri destekliyor.\r\n\r\nBazı üçüncü taraf uygulamalarda optimize edilmiş kararlılık ve iyileştirilmiş kullanıcı deneyimi sunuyor.', 'res.jpg', '2021-02-09 10:36:08', 2),
(7, 'OLED Ekranlı İlk Mi Notebook Pro 15 Görücüye Çıktı', 'Xiaomi, OLED ekrana sahip ilk notebook modeli olan Mi Notebook Pro 15’i duyurdu', 'Çinli teknoloji üreticisi Xiaomi, düzenlemiş olduğu etkinlik kapsamında akıllı telefonlarının yanı sıra diğer ürünlerini de tanıttı. Tanıtılan ürünlerinden biri de Mi Notebook Pro 15 modeliydi. Xiaomi’nin OLED ekrana sahip ilk notebook modeli olan Mi Notebook Pro 15, bakalım neler sunuyor…\r\n\r\nXiaomi Mi Notebook Pro 15\r\n\r\nDünyanın ilk OLED(E4) ekranlı notebook modeli olan Xiaomi Mi Notebook Pro 15, sadece 15.9 mm kalınlığa sahip. 3.5K çözünürlüğü destekleyen Xiaomi Mi Notebook Pro 15, 600 nite kadar da parlaklık sunuyor. 15.6 inç boyutundaki ekran ile gelecek olan Xiaomi Mi Notebook Pro 15, 261 ultra yüksek PPI yoğunluğunu da destekliyor.\r\n\r\nOldukça ince çerçevelere sahip olan Xiaomi Mi Notebook Pro 15, yüzde 93 gibi yüksek bir ekran gövde oranı ile geliyor. Hafif bir kasaya sahip olan Xiaomi Mi Notebook Pro 15, 1.8 kilogram ağırlığında ve 15.9 mm kalınlığında.', 'oled.jpeg', '2021-03-31 05:20:08', 4),
(8, 'Corsair Yeni Üst Düzey DDR4 Belleğini Tanıttı', 'Corsair, dünyanın en hızlı DDR4 RAM belleğini tanıttı. İşte fiyatı ve özellikleri', 'Oyun sektörüne üst düzey donanımlar kazandıran Corsair, bugün de yeni bir RAM belleğini tanıttı. 5000 MHz hızı ile kullanıcılarına sunulan yeni Corsair Vengeance LPX DDR4 RAM bellek, dünyanın en hızlı hızlı RAM’i olma özelliğine sahip.\r\n\r\nCorsair Vengeance LPX DDR4 RAM’de toplamada 16 GB olmak üzere 8 GB’lık iki adet modül bulunuyor. Oldukça yüksek kapasiteye sahip olan RAM’in fiyatı da biraz pahalı diyebiliriz. 1.224 dolar fiyat etiketine sahip olan RAM, CL 18-26-26-46 zamanlamaları ve 1.5V güç tüketim değerleri sunuyor.', 'ram.jpg', '2021-04-02 17:32:06', 6),
(9, 'WHY CHOOSE US', 'Consectetur tempora distinctio ipsam nesciunt recusandae repellendus asperiores amet.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus aliquid eius facilis voluptatem eligendi magnam accusamus vel commodi asperiores sint rem reprehenderit nobis nesciunt veniam qui fugit doloremque numquam quod.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur tempora distinctio ipsam nesciunt recusandae repellendus asperiores amet.', 'islem.jpg', '2021-04-01 17:32:06', 4),
(10, 'AUTO INSURANCE', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga, voluptate.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus aliquid eius facilis voluptatem eligendi magnam accusamus vel commodi asperiores sint rem reprehenderit nobis nesciunt veniam qui fugit doloremque numquam quod.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur tempora distinctio ipsam nesciunt recusandae repellendus asperiores amet.', 'img.jpg', '2021-01-12 04:36:18', 2),
(11, 'TRAVEL INSURANCE', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga, voluptate.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus aliquid eius facilis voluptatem eligendi magnam accusamus vel commodi asperiores sint rem reprehenderit nobis nesciunt veniam qui fugit doloremque numquam quod.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur tempora distinctio ipsam nesciunt recusandae repellendus asperiores amet.', 'img.jpg', '2020-01-12 04:36:18', 6),
(12, 'Business Insurance', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga, voluptate.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus aliquid eius facilis voluptatem eligendi magnam accusamus vel commodi asperiores sint rem reprehenderit nobis nesciunt veniam qui fugit doloremque numquam quod.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur tempora distinctio ipsam nesciunt recusandae repellendus asperiores amet.', 'img.jpg', '2020-01-24 04:36:18', 5),
(13, 'SOCIAL ICONS', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga, voluptate.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus aliquid eius facilis voluptatem eligendi magnam accusamus vel commodi asperiores sint rem reprehenderit nobis nesciunt veniam qui fugit doloremque numquam quod.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur tempora distinctio ipsam nesciunt recusandae repellendus asperiores amet.', 'img.jpg', '2020-01-27 04:36:18', 5),
(14, 'OUTSTANDING SERVICES', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga, voluptate.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus aliquid eius facilis voluptatem eligendi magnam accusamus vel commodi asperiores sint rem reprehenderit nobis nesciunt veniam qui fugit doloremque numquam quod.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur tempora distinctio ipsam nesciunt recusandae repellendus asperiores amet.', 'img.jpg', '2020-01-16 04:36:18', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategoriler`
--

CREATE TABLE `kategoriler` (
  `id` int(11) NOT NULL,
  `kategori_adi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kategori_url` varchar(100) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kategoriler`
--

INSERT INTO `kategoriler` (`id`, `kategori_adi`, `kategori_url`) VALUES
(1, 'Uygulama', ''),
(2, 'Android', ''),
(3, 'iOS', ''),
(4, 'Notebook', ''),
(5, 'İşlemci', ''),
(6, 'Ram', '');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blog_id`),
  ADD UNIQUE KEY `blog_id` (`blog_id`);

--
-- Tablo için indeksler `kategoriler`
--
ALTER TABLE `kategoriler`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `blog`
--
ALTER TABLE `blog`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Tablo için AUTO_INCREMENT değeri `kategoriler`
--
ALTER TABLE `kategoriler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
