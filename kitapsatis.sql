-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2020 at 11:26 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kitapsatis`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yazar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yayinci` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` date DEFAULT NULL,
  `fiyat` double DEFAULT NULL,
  `s_fiyat` double DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `detail` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `category_id`, `title`, `keywords`, `description`, `image`, `type`, `yazar`, `yayinci`, `year`, `fiyat`, `s_fiyat`, `status`, `created_at`, `updated_at`, `detail`, `userid`) VALUES
(2, 4, 'Akşam Yıldızı', 'Akşam Yıldızı,Roman Kitabı', 'Akşam Yıldızı,Roman Kitabı', 'e560100de920adfdfbac23a77bebedb7.jpeg', NULL, 'İskender Pala', 'Kapı Yayınları', '2019-03-06', NULL, 18.94, 'True', NULL, NULL, '<h4 style=\"text-align:center\">Kitap A&ccedil;ıklaması</h4>\r\n\r\n<p style=\"text-align:center\"><strong><em>&ldquo;Sana Kervankıran derler</em></strong></p>\r\n\r\n<p style=\"text-align:center\"><strong><em>Bana dertli Kerem derler</em></strong></p>\r\n\r\n<p style=\"text-align:center\"><strong><em>Yare ikrar veren derler</em></strong></p>\r\n\r\n<p style=\"text-align:center\"><strong><em>Niye doğdun sarı yıldız, mavi yıldız</em></strong></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><strong><em>Evler yıkan, beller b&uuml;ken</em></strong></p>\r\n\r\n<p style=\"text-align:center\"><strong><em>Kanım d&ouml;ken, Kervankıran&rdquo;</em></strong></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">D&uuml;n ve bug&uuml;n&hellip;</p>\r\n\r\n<p style=\"text-align:center\">İyi ve k&ouml;t&uuml;&hellip;</p>\r\n\r\n<p style=\"text-align:center\">Aşk ve inan&ccedil;&hellip;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">Akşam Yıldızı,&nbsp;&nbsp;okurlarını bug&uuml;nden alıp asırlar &ouml;ncesinin&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">G&ouml;beklitepe&rsquo;sine g&ouml;t&uuml;r&uuml;yor. İyi ile k&ouml;t&uuml;n&uuml;n m&uuml;cadelesinde&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">bir aşk yolculuğu bu&hellip; Sevginin inanca, inancın tutkuya, tutkunun hayata adım adım karıştığı noktadan&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">G&ouml;beklitepe hakkında bilinen her şeye&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">yeni bir bakış, bir ters y&uuml;z ediş&hellip;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">On iki bin yıl &ouml;nce yaşayan kadim insandan g&uuml;n&uuml;m&uuml;z&uuml;n modern insanına evrilen anlam arayışı&hellip;</p>\r\n\r\n<p style=\"text-align:center\">Duymak istediğimiz belki de ilk insanın var oluş hik&acirc;yesi&hellip;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">İskender Pala&rsquo;nın yetkin kalemi ve ustaca kurguya d&ouml;n&uuml;şen hayal g&uuml;c&uuml;, G&ouml;beklitepe &uuml;zerine herkesi yeniden d&uuml;ş&uuml;nd&uuml;recek;</p>\r\n\r\n<p style=\"text-align:center\">Akşam Yıldızı kendi ger&ccedil;ekliği ile ezber bozacak.</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">(Tanıtım B&uuml;lteninden)</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style=\"text-align: center;\">Kitap Adı:&nbsp;Akşam Yıldızı-Bir G&ouml;beklitepe Romanı</li>\r\n	<li style=\"text-align: center;\">Yazar:<a href=\"https://www.idefix.com/Yazar/iskender-pala/s=259611\">İskender Pala</a></li>\r\n	<li style=\"text-align: center;\">&nbsp;</li>\r\n	<li style=\"text-align: center;\">Yayınevi:&nbsp;<a href=\"https://www.idefix.com/Yayinevi/kapi-yayinlari/s=5355\">Kapı Yayınları</a></li>\r\n	<li style=\"text-align: center;\">Hamur Tipi:&nbsp;2. Hamur</li>\r\n	<li style=\"text-align: center;\">Ebat:&nbsp;13,5 x 19,5</li>\r\n	<li style=\"text-align: center;\">İlk Baskı Yılı:&nbsp;2020</li>\r\n	<li style=\"text-align: center;\">Baskı Sayısı:&nbsp;1. Basım</li>\r\n	<li style=\"text-align: center;\">Dil:&nbsp;T&uuml;rk&ccedil;e</li>\r\n	<li style=\"text-align: center;\">Barkod:&nbsp;9786057838407</li>\r\n</ul>', 3),
(6, 4, 'Dedemin Adası', 'Dedemin Adasi,Hikaye Kitabı', 'Dedemin Adasi,Hikaye Kitabı', '3782d2ba7ac3600ddb7a08ce4fe80d8b.jpeg', 'asdasd', 'Benji Davies', 'Redhouse Kidz Yayınları', NULL, NULL, 19.5, 'True', NULL, NULL, '<p style=\"text-align:center\">Sid&rsquo;in dedesi, evlerinin &ccedil;ok yakınında oturur ve Sid ne zaman istese dedesinin evine gider. Bir g&uuml;n Sid, yaşlı adamı evin &ccedil;atı katında bulur. Dedesi onu b&uuml;y&uuml;k metal bir kapının ardına saklanmış gizli bir d&uuml;nyada yolculuğa davet eder ve b&ouml;ylece birlikte hayvanlarla dolu yemyeşil bir adaya giderler. Eve d&ouml;n&uuml;ş vakti gelmiştir, ama Sid&rsquo;in dedesini adada bırakması gerekecektir...</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">D&uuml;nyaca &uuml;nl&uuml; yazar-&ccedil;izerden, bir aile b&uuml;y&uuml;ğ&uuml;n&uuml; kaybetmeyi konu alan bu resimli kitap, hassas bir temayı yumuşacık bir &ouml;yk&uuml; ile anlatıyor. Sevdiklerimizin ne kadar uzağa da gitseler hep yakınlarımızda olduğunu g&ouml;steren, &ouml;d&uuml;ll&uuml; bir eser.</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">2015 Sainsbury Yılın &Ccedil;ocuk Kitabı &Ouml;d&uuml;l&uuml;</p>\r\n\r\n<p style=\"text-align:center\">2015 AOI Uluslararası İll&uuml;strasyon &Ouml;d&uuml;l&uuml;</p>\r\n\r\n<p style=\"text-align:center\">Kate Greenway &Ouml;d&uuml;l&uuml; Adayı</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&ldquo;H&uuml;z&uuml;nl&uuml;, dokunaklı ve b&uuml;y&uuml;leyici.&rdquo;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">-Kirkus Reviews-</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&ldquo;Davies, Yalnız Balina&rsquo;da olduğu gibi yalnızlık ve bir arada olma konularını abartısız ve kalbe dokunan bir duygusallıkla, yosun kokan bir atmosferde anlatıyor.&rdquo;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">-Publishers Weekly-</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&ldquo;Davies&rsquo;in zarif ve bir &ccedil;ocuğun &ccedil;izgilerini andıran sade &ccedil;izimleri, &ouml;l&uuml;m konusunu abartıdan uzak bir hayal g&uuml;c&uuml; ile anlatıyor ve &ccedil;ocuklara nasıl hissetmeleri gerektiği konusunda parmak sallayan bir &uuml;sluptan uzak duruyor.&rdquo;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">-The New York Times Book Review-</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">(Tanıtım B&uuml;lteninden)</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><strong>Hamur Tipi :&nbsp;</strong>2. Hamur</p>\r\n\r\n<p style=\"text-align:center\"><strong>Ebat :&nbsp;</strong>28x24,5</p>\r\n\r\n<p style=\"text-align:center\"><strong>İlk Baskı Yılı :&nbsp;</strong>2017</p>\r\n\r\n<p style=\"text-align:center\"><strong>Baskı Sayısı :&nbsp;</strong>1. Basım</p>\r\n\r\n<p style=\"text-align:center\"><strong>Medya Cinsi :&nbsp;</strong>Ciltsiz</p>', 3),
(8, 13, 'Fenerbahçe', 'FB,Fenerbahçe', 'FB,Fenerbahçe', 'f1f3952b69f3704d44bb9f9b481ffd1b.jpeg', NULL, 'Ergun Hiçyılmaz', 'BİLGE KARINCA YAYINLARI / 2001', NULL, 15, 15, 'True', NULL, NULL, '<p>Elinizdeki eser, y&uuml;zyıllık bir spor kul&uuml;b&uuml;n&uuml;n ve d&uuml;nyanın en saygın kul&uuml;plerinin arasında yer alan, T&uuml;rkiye&rsquo;nin ise sayılı b&uuml;y&uuml;k spor kul&uuml;plerinden biri olan Şanlı Fenerbah&ccedil;e&rsquo;nin tarihidir. Mazisi, resmi kuruluş tarihi olarak bilinen 1907&rsquo;den &ccedil;ok &ouml;ncelere dayanan bu b&uuml;y&uuml;k kul&uuml;b&uuml;n A-dan Z-ye tarihi panoraması olan eser, sadece bir spor, bir Fenerbah&ccedil;e tarihi olmayıp, aynı zamanda yakın siyasi tarih olma &ouml;zelliğini de taşımaktadır. Bu kitap, Milli M&uuml;cadele d&ouml;neminin işgal kuvvetlerine yaptığı ma&ccedil;larda attığı gollerle onlara &ccedil;imen yoldurup, tarihine şan katarak, T&uuml;rk milletinin g&ouml;nl&uuml;nde vazge&ccedil;ilmesi m&uuml;mk&uuml;n olmayan saygın yerini alan Fenerbah&ccedil;e&rsquo;nin, zaferlerle dolu b&uuml;y&uuml;k tarihidir.</p>\r\n\r\n<p>YAZARIN BİYOGRAFİSİ<br />\r\n1942 yılında Eskişehir&rsquo;de doğdu. Gazetecilik hayatı 1960&rsquo;da başladı. Akşam, Yeni Sabah, Yeni İstanbul, G&uuml;naydın, Fotospor, Terc&uuml;man, G&uuml;neş, Nokta, Yankı, H&uuml;rg&uuml;n gibi yayınlarda &ccedil;alıştı. Bu yayınlarda muharrirlikten yayın m&uuml;d&uuml;rl&uuml;ğ&uuml;ne kadar etkin g&ouml;revler &uuml;stlendi.<br />\r\nYaprak Sanat Dergisi&rsquo;ni yayınlayan Hi&ccedil;yılmaz&rsquo;ın Yelken, G&uuml;ney, Varlık, Hisar gibi dergilerde şiir ve &ouml;yk&uuml;leri yayınlandı. Bu arada Banş Dergisi&rsquo;nin şiir &ouml;d&uuml;l&uuml;n&uuml; kazandı.<br />\r\nGazeteciler Cemiyeti, TSYD gibi kuruluşların 27 kez basarı &ouml;d&uuml;l&uuml;n&uuml; alan Hi&ccedil;yılmaz, 1986&rsquo;da T&uuml;rkiye Gazeteciler Cemiyeti&rsquo;nin spor yazarlığı dalında &ldquo;Yılın Gazetecisi&rdquo; &ouml;d&uuml;l&uuml;ne layık g&ouml;r&uuml;ld&uuml;. 1993 yılında ise Altın Kitaplar &ouml;d&uuml;l&uuml;n&uuml; kazandı. Ergim Hi&ccedil;yılmaz&rsquo;ın spor yazarlığı konusunda T&uuml;rk Spor Tarihi, Sporun Yapısal Analizi, Spor Yazan, Beşiktaş, Futbol, T&uuml;rkiye&rsquo;de Sporun &Ouml;yk&uuml;s&uuml;, Atat&uuml;rk&rsquo;&uuml;n Gen&ccedil;lik ve Spor Politikası, Sporda Batılılaşma Hareketi, Ni&ccedil;in Kitlesiz Spor Değil, Sporda &Uuml;nl&uuml;ler Ansiklopedisi, gibi kitapları vardır.<br />\r\nOsmanlı d&ouml;nemini inceleyen Teşkil&acirc;tı Mahsusa ve Kurtuluş Savaşında Casusluk &Ouml;rg&uuml;tleri, isimli yayınlardan sonra yazarın son &ccedil;ıkan kitapları şunlardır:<br />\r\nEski İstanbul&rsquo;da Muhabbet (cep), &Ccedil;engiler K&ouml;&ccedil;ek&ccedil;eler D&ouml;nmeler Lezolar (cep) Teşkil&acirc;tı Mahsusa&rsquo;dan Mit&rsquo;e (Varlık), B&uuml;y&uuml;k Sığınak (cep), Başverenler Başkaldıranlar, Gizli Servisler, Beni Toprağıma G&ouml;m&uuml;n, Cell&acirc;tları da Asarlar (Altın Kitaplar) Meyhaneler, Kabadayılar ve Yosmalar (Pera Orient), İsyan Benim Adımdır (Bilge Kannca) &Ccedil;erkeş Ethem (Varlık), Son İstanbullu, Fi Tarihi, İpsiz Recep (Bilge Karınca).<br />\r\nHi&ccedil;yılmaz&rsquo;ın Teşik&acirc;tı Mahsusa Casusluk &Ouml;rg&uuml;tleri ile Bozkurt Yazan Ajan Armstrong, Dargınam Sanrıa Hayat/Zeki M&uuml;ren, Kitapları da Kamer Yayınlan tarafından okurlarına ulaştırıldı.<br />\r\nT&uuml;rkiye&rsquo;de ilk sesli kitabın yazarı da olan Hi&ccedil;yılmaz, yazılarını &ldquo;Fi Tarihi,&rdquo; ve &ldquo;Hayat Sayfalan&rdquo; başlıklarıyla Sabah gurubunda s&uuml;rd&uuml;r&uuml;yor. Takvim ve Sabah&rsquo;ta yazan ve halen k&uuml;lt&uuml;r &Uuml;niversitesi &ouml;ğretim &Uuml;yesi bulunan Hi&ccedil;yılmaz bunun yanı sıra &ccedil;eşitli &ouml;ğretim kurumlarında da &Ouml;ğretim &Uuml;yeliği yapmaktadır.</p>\r\n\r\n<p>GENEL SPOR KAVRAMI VE FENERBAH&Ccedil;E<br />\r\nBu kitap Fenerbah&ccedil;e spor tarihi değildir.<br />\r\nBu kitap sayısallığı &ouml;ne alan &ldquo;skor&rdquo;la donatılmış bir kitap değildir. Bu kitap kimin kimi, &ldquo;ezip&rdquo; ge&ccedil;tiğine dair bir futbol kitabı değildir.<br />\r\nBu kitap, Futbol tarihine temel teşkil eden kul&uuml;plerin tarih&icirc; rekabetini, tarih&icirc; d&uuml;şmanlığa &ccedil;evirmeyi ama&ccedil;layan kitap da değildir.<br />\r\nBu kitap, &ldquo;Skor&rdquo; edebiyatı ile &ldquo;Spor&rdquo; ahk&acirc;mı kesen bir kitap değildir. Ve &Ouml;nemlisi bu kitap bırakın sırtını, tek harfini bile sponsor sistemine dayamamıştır.<br />\r\nBu kitap sadece sonraki &ccedil;alışmalara ışık tutmayı ama&ccedil;layan bir araştırmadır. Bu nedenle kitapta s&ouml;yleneni daha az s&ouml;ylemek, s&ouml;ylenmeyeni hi&ccedil; bir grup veya bireyi hedefe almadan, İfade etmek gayreti g&ouml;sterilmiştir.<br />\r\nToplum, bırakın Osmanlı Devleti yapısından Cumhuriyet temelleşmesine kadar ge&ccedil;en s&uuml;reci, 1950&rsquo;leri bile hatırlamayacak kadar hafıza kaybına uğratıldı. Sporun bu k&uuml;lt&uuml;r cinayetinden soyutlanması gerekir.<br />\r\nFutbol, sporun i&ccedil;inde en &ouml;nemli yeri teşkil ediyor. Sporcu sayısı yerine futbolcu, spor yapan yerine futbol seyircisi &ccedil;ığ gibi b&uuml;y&uuml;yor. Bu durum sporu da geniş bi&ccedil;imde etkiledi.<br />\r\nMaalesef birtakım sporseverin spor ahk&acirc;mı kesenlerden &ccedil;ok daha ileri gittiği bu d&uuml;zeysizlik, doğal olarak genel k&uuml;lt&uuml;r d&uuml;zeysizliğinden de soyutlanmıyor.<br />\r\nVe, şiddet ve zorbalığı trib&uuml;nlerde arayıp, &ldquo;k&uuml;f&uuml;r edebiyatı&rdquo; yapanlar, nasıl bir spor oluşturduklarına ve kimlerle spor kavramı geliştirdiklerine bakmıyor ve devamlı kitleyi eleştiriyor. Sanki onlar hi&ccedil; bir şeyden sorumlu değilmiş gibi&hellip; Hi&ccedil; kimsenin elbette geriye d&ouml;n&uuml;p bakmak gibi y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; yok&hellip; Ama ileriye baktıklarını iddia edenlerin ayna zamanda ne kadar bilgi gerilemesi i&ccedil;inde olduklarını &ouml;l&ccedil;mek gibi sorumluluktan var&hellip;<br />\r\nTaraf&rdquo; olmak demokratik yaşama d&uuml;zeninde gerekli bir Mhak&rdquo;tır. Milletin vekilleri aynı değil, ayrı partilerdendir. Seyirciler de spor kurumlannın ayn taraftarı olacaktır.<br />\r\nTaraftar&rdquo; olmanın &ldquo;bitaraf&rdquo; olmaktan daha gerekli olduğunu hep s&ouml;yl&uuml;yoruz, s&ouml;yledik. Ama sporu rekabetten kan d&acirc;vasına &ccedil;evirmenin toplumsal bir ihanet teşkil ettiğini de ifade ettik.<br />\r\nSpora inanmak başka şey, vitrine, tiraja ya da reytinge inanmak başka şey. Tarafı spor, daha doğrusu futbolla kullananlar, dibi &ccedil;ıkmış erdemlikte, ne kadar pay sahibi olduklarını elbet birg&uuml;n d&uuml;ş&uuml;necekler.<br />\r\nKimler mi? Kendilerini sporun i&ccedil;inde g&ouml;ren ama sporun ne olduğundan bile habersiz kim varsa&hellip;<br />\r\nT&uuml;rkiye&rsquo;de futbolun genel spordan ne kadar pay aldığını ama bu payın karşılığını gerekli bi&ccedil;imde kitleye tam olarak &Ouml;deyemediğini biliyoruz. Bazı problemler sağlıklı spor alanları, &ccedil;ocuklarımız ve gen&ccedil;lerimizin eğitimli ve sportif b&uuml;y&uuml;meleri kreş ve parklardan başlayan, beslenmeye kadar uzanan meselelerden dolayı &ccedil;&ouml;z&uuml;lemiyor.<br />\r\nFutbol bir &ccedil;are mi?<br />\r\nSporun yeterince &ouml;z&uuml;mlenmesi ve toplumun meselelerinin ortadan kalkmasından sonra coşkulu olarak evet&hellip; Hayatın bir par&ccedil;ası, kişinin se&ccedil;kinlik hakkını kullanması a&ccedil;ısından elbette futbol &ouml;nem taşıyor. Diğer spor dallarını peşinden s&uuml;r&uuml;klemesi ve kul&uuml;plerde mill&icirc; boyutta ortaya &ccedil;ıkan coşkunun b&uuml;y&uuml;mesinden daha olumlu ne olabilir.<br />\r\nKul&uuml;plerin amat&ouml;r anlayışla y&ouml;netilip, profesyonel bakışla uygulamaya girmesi sadece ekonomik kaynakları değil, gen&ccedil;liğin futbol oynamak hakkını da ortadan kaldırıyor. Gen&ccedil;lere sadece trib&uuml;n kapılarını değil, kul&uuml;plerin de spor kapılarını a&ccedil;mak d&uuml;ş&uuml;ncesi &ccedil;ok mu anlamsız&hellip;</p>\r\n\r\n<p>Hayır anlamlı diyorsak, neden &uuml;mitler, yıldızlar takımların oluşturup, ligler kuruyor, ama alt yapı anlayışına ihanet ediyoruz.<br />\r\nProfesyonel anlayışla y&ouml;netilen kul&uuml;plerin kendi b&uuml;nyelerinden yetişmiş futbolcu oranını bile hesaplamaktan aciz bulunuyoruz. &Ccedil;&uuml;nk&uuml; olmayanın oranı da yoktur. Başarılı olmanın nereye uzandığını 40 yıldır biz de s&ouml;yledik, başkaları da&hellip;<br />\r\n&Ouml;zetlersek, futbol kitabı yazmış olmamız ya da &ldquo;&ouml;mr&uuml;m Seni Sevmekle Nihayet Bulacak,&rdquo; dememiz Fenerbah&ccedil;e coşkusunu yansıtmaktadır, ilkelerimizin değişmediğini yine vurgulamak isteriz. Varlığını ekonomisi kadar donatmış sporu eğlence olarak g&ouml;rmemiş, toplumsal erdemlik ve ahl&acirc;kı &ccedil;iğnememiş kişilerin y&ouml;neticiliğini istemekten daha doğal ne olabilir? &Ouml;rnek y&ouml;neticilik, sporculuk kavramları ile &ouml;rnek seyirci/tarafların oluşacağını ve kitlenin kamplara ayrılmayacağını unutmamak gerekiyor.<br />\r\nY&ouml;netici olmak, &ldquo;İş adamı,&rdquo; &ldquo;Futbol adamı&rdquo; &ldquo;Siyaset adamı&rdquo; olmaktan &ccedil;ok &ldquo;Adam&rdquo; olmayı gerektiriyor. Toplum bu nedenle her y&ouml;ndeki &ccedil;abanın &ldquo;Adam&rdquo; gibi olmasını istiyor.<br />\r\nFenerbah&ccedil;e kitle boyutuyla d&uuml;zey &ouml;rneklemesinde her zaman &ouml;nde gidiyor. &Ccedil;&uuml;nk&uuml; kitle kul&uuml;b&uuml;, &ccedil;&uuml;nk&uuml; hem coşkusu hem de h&uuml;zn&uuml; ile T&uuml;rkiye&rsquo;yi bir anlamda &ouml;nemli &ouml;l&ccedil;&uuml;de yansıtıyor.<br />\r\nKitabımızın ekonomik kaynaklara dayanmadığını okur anlayacaktır.<br />\r\nAsırlık ge&ccedil;mişe 40 yıllık Hatıralar Galerisini a&ccedil;mak ve yeni nesillere Neden Fenerbah&ccedil;eli oldukları kadar, nasıl Fenerbah&ccedil;eli olmaları gerektiğini ifade etmeye &ccedil;alıştık. D&uuml;ş&uuml;ncelerimiz elbette bağlayıcı değildir ama bireyin d&uuml;ş&uuml;nce &ouml;zg&uuml;rl&uuml;ğ&uuml;n&uuml;n ifadesidir.<br />\r\nFenerbah&ccedil;eli olmanın, Fenerbah&ccedil;eli olmayandan nefret etmeyi gerektirmediğini, Fenerbah&ccedil;eli olmanın, daha başarılı &ccedil;izgiye ulaşanları takdir etmeye engel teşkil etmeyeceğini s&ouml;ylemeye bile gerek yok.<br />\r\nT&uuml;rkiye&rsquo;nin sevgi ve saygıyla b&uuml;y&uuml;yeceğini s&ouml;yleyenler olarak arkasında kan izleri bırakmış coşku dolu şampiyonluklar istemediğimizi bir kez daha tekrarlayalım.<br />\r\nBiz ustalarımızdan b&ouml;yle &ouml;ğrendik ve kendimizi onların yanında her daim &ldquo;&Ccedil;ırak&rsquo; kabul ettik.<br />\r\nFutbolcusundan y&ouml;neticisine, yazarından taraftarına kadar o g&uuml;nleri yaşatanlara, benimle bu hayatı paylaştıkları i&ccedil;in teşekk&uuml;r ediyorum.</p>', 3),
(12, 7, 'Değirmen', 'Değirmen Kitabı,Değirmen', 'Değirmen Kitabı,Değirmen Oku', 'db5c4ad1778eeab2e7166377ee7413ce.jpeg', NULL, 'Sabahattin Ali', 'Yapı Kredi Yayınları', NULL, NULL, 9.9, 'True', NULL, NULL, '<h4 style=\"text-align:center\">Kitap A&ccedil;ıklaması</h4>\r\n\r\n<p style=\"text-align:center\"><br />\r\n&quot;İşte adaşım, sana seven bir &Ccedil;ingene&#39;nin hikayesi. &Ccedil;i&ccedil;eklerin a&ccedil;tığı bir mevsimde, senin kollarına yaslanan ve &ccedil;i&ccedil;ekler kadar g&uuml;zel kokan bir v&uuml;cutla uzak su kenarlarında oturtmak ve &ouml;p&uuml;şmek, yoruluncaya kadar &ouml;p&uuml;şmek hoş şeydir... (...) Fakat sevgili bir v&uuml;cutta bulunmayan bir şeyi kendisinde taşımaya tahamm&uuml;l etmeyerek onu koparıp atabilmek, işte adaşım, yalnız bu sevmektir.&quot;<br />\r\n<br />\r\n<br />\r\n<strong><u>İnce Kapak:</u></strong><br />\r\n<br />\r\n<strong>Sayfa Sayısı:&nbsp;</strong>148<br />\r\n<br />\r\n<strong>Baskı Yılı:&nbsp;</strong>2016<br />\r\n<br />\r\n<br />\r\n<strong><u>e-Kitap:</u></strong><br />\r\n<br />\r\n<strong>Sayfa Sayısı:&nbsp;</strong>129<br />\r\n<br />\r\n<strong>Baskı Yılı:&nbsp;</strong>2015<br />\r\n<br />\r\n<br />\r\n<strong>Dili:&nbsp;</strong>T&uuml;rk&ccedil;e<br />\r\n<strong>Yayınevi:&nbsp;</strong>Yapı Kredi Yayınları</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style=\"text-align:center\">Kitap Adı:&nbsp;Değirmen</li>\r\n	<li style=\"text-align:center\">Yazar:<a href=\"https://www.idefix.com/Yazar/sabahattin-ali/s=253771\">Sabahattin Ali</a></li>\r\n	<li style=\"text-align:center\">&nbsp;</li>\r\n	<li style=\"text-align:center\">Yayınevi:&nbsp;<a href=\"https://www.idefix.com/Yayinevi/yapi-kredi-yayinlari/s=10615\">Yapı Kredi Yayınları</a></li>\r\n	<li style=\"text-align:center\">İlk Baskı Yılı:&nbsp;2003</li>\r\n	<li style=\"text-align:center\">Dil:&nbsp;T&uuml;rk&ccedil;e</li>\r\n	<li style=\"text-align:center\">Barkod:&nbsp;9789750806605</li>\r\n</ul>', 6),
(13, 14, 'Hackerlığa Giriş', 'Hackerlığa Giriş,Hackerlığa Giriş satın al', 'Hackerlığa Giriş,Hackerlığa Giriş satın al', 'dd3f0d4e9abee927a0c527d4f02a5047.jpeg', NULL, 'İsmail Bülbül , Poyraz Emre Bingöl', 'HAYY KİTAP', '2018-03-09', NULL, 14, 'True', NULL, NULL, '<p style=\"text-align:center\">Siber g&uuml;venlik, d&ouml;n&uuml;şen d&uuml;nyanın en ciddi silahı. Artık tankla, topla verilemeyecek zararlar, dakikalar i&ccedil;inde klavyeyle verilebiliyor.<br />\r\nHepimizin vahşice kullandığı sosyal medya bile neredeyse 24 saat izleniyor. Yemek yeme alışkanlıklarından, nelerden hoşlandığımıza ve her t&uuml;rl&uuml; eğilimimize kadar her şey bir yerlerde depolanmakta. Bir &ccedil;ocuk, tablet kullanmaya başladığı o ilk andan itibaren ekrana dokunduğunda alınan parmak izi sayesinde hayatı boyunca izlenmekte&hellip;<br />\r\nSiber g&uuml;venlik, futbol mantığı gibi işlerse daha etkili olur. Ofansif olanlar her zaman bir adım &ouml;ndedir. Defansif olanlar ise ancak ve ancak saldırıya karşı s&uuml;rekli tedbir almaktadır. Bir hackerın g&ouml;revi sisteme sızmaktır, asla sistemi korumak değildir. Ancak bir sistemi en iyi koruyacak kişiler de hackerlardır.<br />\r\n&ldquo;Nasıl hacker olacağım?&rdquo; sorusuna yanıt bulacağınız teknik bir kitap bu. Deneyimlerden &ccedil;ok, adım adım sizi sonuca g&ouml;t&uuml;recek teknik bilgiler sunuyor. Kitapta bir hackerın g&ouml;z&uuml;nden d&uuml;şmanın bize doğrulttuğu silahı kendisine nasıl &ccedil;evireceğinizi g&ouml;receksiniz. &Ouml;yleyse haydi klavyeler omuza!</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:right\">&nbsp; &nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\">Yayın Tarihi</td>\r\n			<td style=\"text-align:center\">2018-11-08</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">ISBN</td>\r\n			<td style=\"text-align:center\">9752477100</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Baskı Sayısı</td>\r\n			<td style=\"text-align:center\">2. Baskı</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Dil</td>\r\n			<td style=\"text-align:center\">T&Uuml;RK&Ccedil;E</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Sayfa Sayısı</td>\r\n			<td style=\"text-align:center\">168</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Cilt Tipi</td>\r\n			<td style=\"text-align:center\">Karton Kapak</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Kağıt Cinsi</td>\r\n			<td style=\"text-align:center\">Kitap Kağıdı</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Boyut</td>\r\n			<td style=\"text-align:center\">13.5 x 21 cm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 8),
(14, 14, 'Phyton', 'PHYTON öğren, Phyton yaz', 'PHYTON öğren, Phyton', '493f8326d34de4b70a532fff4f162d20.jpeg', NULL, 'Onur Sevli', 'KodLAB', NULL, NULL, 35, 'True', NULL, NULL, '<pre style=\"text-align:center\">\r\nPython, az kod ile &ccedil;ok iş yapmayı sağlayan, nesne y&ouml;nelimli, yorumsal, mod&uuml;ler ve y&uuml;ksek seviyeli bir dildir. Basit bir s&ouml;zdizimine sahip olan Python\r\nile kolay ve keyifli bir şekilde masa&uuml;st&uuml; uygulamaları, web uygulamaları, veri analizi ve g&ouml;rselleştirme uygulamaları gibi pek &ccedil;ok alanda yazılımlar\r\ngeliştirilebilir. Programlamaya yeni başlayanlar i&ccedil;in son derece uygun bir dil olmanın yanında profesyonel geliştiriciler i&ccedil;in de pratik &ccedil;&ouml;z&uuml;mler\r\nsunmaktadır.Bu kitapta Python diline ait temel &ouml;zelliklerin yanında, temel programlama mantığını da &ouml;ğrenecek, basitten gelişmişe doğru yazılım\r\nbileşenleri ve tekniklerini tanıma olanağı bulacaksınız. Komut ezberlemek yerine yazılım dilinin felsefesine hakim olacak ve bu sayede farklı\r\nprogramlama dillerini de rahatlıkla &ouml;ğrenebilecek bir altyapıya sahip olacaksınız.\r\n&bull; Python nedir? Neden Python?\r\n&bull; Python s&uuml;r&uuml;mleri\r\n&bull; Python Geliştirme Ortamı\r\n&bull; Temel veri t&uuml;rleri ve değişkenler\r\n&bull; Sayısal t&uuml;rler\r\n&bull; Karakter dizileri ve karakter işlemleri\r\n&bull; Mantıksal t&uuml;rler\r\n&bull; T&uuml;r d&ouml;n&uuml;ş&uuml;m&uuml;\r\n&bull; Operat&ouml;rler\r\n&bull; Karar yapıları\r\n&bull; D&ouml;ng&uuml; yapıları\r\n&bull; Atlama deyimleri\r\n&bull; Listeler\r\n&bull; Demetler\r\n&bull; S&ouml;zl&uuml;kler\r\n&bull; K&uuml;meler\r\n&bull; Fonksiyonlar\r\n&bull; &Ouml;zyineli fonksiyonlar\r\n&bull; Mod&uuml;ller\r\n&bull; Tarih &ndash; zaman işlemleri\r\n&bull; Hata y&ouml;netimi\r\n&bull; Dosya işlemleri\r\n&bull; Nesne y&ouml;nelimli programlama\r\n&bull; Sınıflar ve &uuml;yeleri\r\n&bull; Miras\r\nYazar(lar) Hakkında\r\nOnur SEVLİ\r\nOnur SEVLİ, 2009 yılında lisans, 2011 yılında y&uuml;ksek lisans ve 2016 yılında doktora derecelerini Bilgisayar M&uuml;hendisliği alanında almıştır. Yazılım ile\r\nlisans d&ouml;neminde yoğun bir şekilde ilgilenmeye başlamış k&uuml;&ccedil;&uuml;k, orta ve b&uuml;y&uuml;k &ouml;l&ccedil;ekte, &ouml;zel ve kurumsal pek &ccedil;ok yazılım projesinde geliştirici ve y&uuml;r&uuml;t&uuml;c&uuml;\r\nolarak g&ouml;rev almıştır. İstemci uygulamaları, web, mobil ve bulut tabanlı uygulamalar, oyun programlama, sosyal ağ tabanlı analiz uygulamaları gibi farklı\r\nalan ve platformlarda &ccedil;ok sayıda proje geliştirmiştir. Microsoft T&uuml;rkiye desteğiyle ger&ccedil;ekleştirilen &Ccedil;anakkale Savaşı Destanı, Boğaz Harbi isimli 3\r\nboyutlu FPS oyun projesinin geliştirici ekibinde yer almıştır. 2011 yılında yine Microsoft desteğiyle, akademik alanda, T&uuml;rkiye&rsquo;deki ilk Windows Azure\r\nbulut bilişim projesini ger&ccedil;ekleştirmiştir. Farklı alan ve yetkinliklerde Microsoft Certified Professional, Microsoft Certified Technology Specialist,\r\nMicrosoft Certified Professional Developer sertifika ve &uuml;nvanlarına sahip olup, uzun s&uuml;re bilişim akademilerinde yazılım uzmanlığı eğitimleri vermiştir.\r\n2011 yılından bu yana Mehmet Akif Ersoy &Uuml;niversitesi&rsquo;nde &ouml;ğretim &uuml;yesi olarak g&ouml;rev yapmaktadır. Yazılım projelerine ek olarak b&uuml;y&uuml;k veri, bulut bilişim,\r\nmakine &ouml;ğrenmesi, derin &ouml;ğrenme gibi konularda akademik &ccedil;alışmalar da y&uuml;r&uuml;tmektedir.</pre>', 8),
(15, 14, 'Html5Css3', 'Html5Css3 Kitabı,Html5Css3 Öğren', 'Html5Css3 Öğren', '21cb80f4ef3d8cf5b51dd169dea28ab8.jpeg', NULL, 'Fahrettin Erdinç', 'Pusula Yayıncılık', NULL, NULL, 21.9, 'True', NULL, NULL, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Html5 &amp; Css3 - Fahrettin Erdin&ccedil;</p>\r\n\r\n			<p>HTML 5 ve CSS 3; web sayfası hazırlarken kullanılabilecek en yeni ara&ccedil;lar.</p>\r\n\r\n			<p>Fahrettin Erdin&ccedil;, web tasarımına ve HTML&#39;e yeni başlayanları hedef alarak yazdığı bu kitapta, fazla teoriye ka&ccedil;madan, konuya odaklanarak, kolay anlaşılacak &ouml;rneklerle web tasarım mantığını anlatıyor, HTML 5 ve CSS 3&#39;&uuml;n yeni olanaklarını &ouml;rneklerle okura sunuyor.</p>\r\n\r\n			<p>Kitapta Web sayfalarının oluşturulması s&uuml;reci anlatılırken, Steve Champeon&rsquo;ın &ldquo;Aşamalı Geliştirme&rdquo; yaklaşımını kullanıldı. Bu yaklaşımda ama&ccedil;, &ouml;nce basit bir sayfa oluşturup zamanla eklemeler yaparak daha karmaşık sayfalar oluşturmaktır. Bu y&ouml;ntemde, &ouml;nce HTML kodları yazılıyor ve okurla birlikte doğru &ccedil;alışıp &ccedil;alışmadığı test ediliyor. Daha sonra CCS kodları eklenip sayfa daha g&ouml;rsel hale getiriliyor. Son olarak da Javascript ve ilgili k&uuml;t&uuml;phaneleri kullanarak daha etkileşimli sayfalar oluşturuluyor.</p>\r\n\r\n			<p>Fahrettin Erdin&ccedil;, web teknolojisinin en yeni ara&ccedil;larını kullanarak, web sayfası tasarımının temel mantığını herkesin anlayabileceği bir şekilde adım adım anlatıyor. Bu da kitabı, hi&ccedil; HTML ve CSS bilmeyip &ouml;ğrenmek isteyen veya var olan HTML/CSS bilgisini geliştirmek isteyenler i&ccedil;in ideal başvuru kaynağı haline getiriyor</p>\r\n\r\n			<p><strong>Yazar Hakkında:</strong></p>\r\n\r\n			<p>Fahrettin Erdin&ccedil;, 1972 yılında Yunanistan&rsquo;ın İske&ccedil;e ilinde doğdu. 1985 yılında T&uuml;rkiye&rsquo;ye g&ouml;&ccedil; etti. 1991 yılında Dokuz Eyl&uuml;l &Uuml;niversitesi Elektrik-Elektronik M&uuml;hendisliği&rsquo;nde okumaya başladı ve aynı yıl programlamayla tanıştı. Okulda C, Mikroişlemci ve PIC mikrokontrol&ouml;r programlama &ouml;ğrendi. Mezun olduktan sonra, sistem destek ve bilgisayar ağları konusunda &ccedil;alıştı. 1996 yılında kendi firması olan Bilimsel Akademi&rsquo;yi kurdu ve bilgisayar eğitimleri vermeye başladı. 1996 yılından beri Yazılım Uzmanlığı, Sistem ve Ağ Uzmanlığı, Web Programlama ve PLC Programlama konularında Dersler vermektedir. Ders dışında, bilişim sekt&ouml;r&uuml;n&uuml;n gelişmesine katkıda bulunmak i&ccedil;in makale ve kitaplar yazan Fahrettin Erdin&ccedil;, boş zamanlarında hobi olarak 3D modelleme ve motorsikletlerle ilgilenmektedir.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table>\r\n				<tbody>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table>\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<table>\r\n							<caption>&nbsp;</caption>\r\n							<tbody>\r\n								<tr>\r\n									<th>Basım Dili</th>\r\n									<td>T&uuml;rk&ccedil;e</td>\r\n								</tr>\r\n								<tr>\r\n									<th>Boyut</th>\r\n									<td>Normal Boy</td>\r\n								</tr>\r\n								<tr>\r\n									<th>Cilt Durumu</th>\r\n									<td>Ciltsiz</td>\r\n								</tr>\r\n								<tr>\r\n									<th>Sayfa Sayısı</th>\r\n									<td>280</td>\r\n								</tr>\r\n								<tr>\r\n									<th>Yazar</th>\r\n									<td>Fahrettin Erdin&ccedil;</td>\r\n								</tr>\r\n							</tbody>\r\n						</table>\r\n\r\n						<table>\r\n							<caption>Diğer</caption>\r\n							<tbody>\r\n								<tr>\r\n									<th>Yurt Dışı Satış</th>\r\n									<td>Var</td>\r\n								</tr>\r\n								<tr>\r\n									<th>Stok Kodu</th>\r\n									<td>KPUSULA06379</td>\r\n								</tr>\r\n							</tbody>\r\n						</table>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 8),
(16, 16, '2020 Genel Kültür Genel Yetenek', '2020 Genel Kültür Genel Yetenek,yediiklim', 'yediklim', '49c1e39d277f18fa54c00626d568f6d1.jpeg', NULL, 'Komisyon', 'Yediiklim Yayınevi', NULL, NULL, 65, 'True', NULL, NULL, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Yediiklim Yayınevi 2020 Genel K&uuml;lt&uuml;r Genel Yetenek Tamamı &Ccedil;&ouml;z&uuml;ml&uuml; Soru Bankası Mod&uuml;ler Set</p>\r\n\r\n			<pre>\r\nTARİH TAMAMI &Ccedil;&Ouml;Z&Uuml;ML&Uuml; SORU BANKASI : 316 SAYFA\r\nCOĞRAFYA TAMAMI &Ccedil;&Ouml;Z&Uuml;ML&Uuml; SORU BANKASI : 285 SAYFA\r\nMATEMATİK TAMAMI &Ccedil;&Ouml;Z&Uuml;ML&Uuml; SORU BANKASI : 493 SAYFA\r\nT&Uuml;RK&Ccedil;E TAMAMI &Ccedil;&Ouml;Z&Uuml;ML&Uuml; SORU BANKASI : 253 SAYFA\r\nVATANDAŞLIK TEMEL YURTTAŞLIK BİLGİSİ SORU BANKASI : 189 SAYFA</pre>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table>\r\n				<tbody>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table>\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<table>\r\n							<caption>&nbsp;</caption>\r\n							<tbody>\r\n								<tr>\r\n									<th>Basım Dili</th>\r\n									<td>T&uuml;rk&ccedil;e</td>\r\n								</tr>\r\n								<tr>\r\n									<th>Boyut</th>\r\n									<td>Normal Boy</td>\r\n								</tr>\r\n								<tr>\r\n									<th>Cilt Durumu</th>\r\n									<td>Ciltsiz</td>\r\n								</tr>\r\n								<tr>\r\n									<th>Sayfa Sayısı</th>\r\n									<td>1552</td>\r\n								</tr>\r\n								<tr>\r\n									<th>Sınıfı</th>\r\n									<td>&Uuml;niversite Hazırlık</td>\r\n								</tr>\r\n								<tr>\r\n									<th>Yayın Tarihi</th>\r\n									<td>2019</td>\r\n								</tr>\r\n								<tr>\r\n									<th>Yazar</th>\r\n									<td>Komisyon</td>\r\n								</tr>\r\n							</tbody>\r\n						</table>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 2),
(17, 1, '2020 KPSS Genel Yetenek Genel Kültür', 'KPSS Genel Yetenek Genel Kültür', '2020 KPSS', '738f93d9a0e47652e96b5586c8273404.jpeg', NULL, 'Komisyon', 'Pegem Akademi Yayıncılık', NULL, NULL, 140, 'True', NULL, NULL, '<p>Değerli KPSS Adayları,</p>\r\n\r\n<p>KPSS&rsquo;ye hazırlıkta beklenti ve ihtiya&ccedil;larınızı karşılayacak yayınlarımızı sizlere sunmaktayız. Yine yoğun bir emek vererek hazırladığımız elinizdeki bu kitap da geleceğe hazırlığınızda size &ouml;nemli bir destek sağlayacaktır. T&uuml;m yayınlarımızda olduğu gibi bu yayınımızla da;</p>\r\n\r\n<p>&bull; yeterli bilgi d&uuml;zeyine ulaşacak</p>\r\n\r\n<p>&bull; &ccedil;ok sayıda soruyu anlayarak</p>\r\n\r\n<p>&bull; hızlı bir şekilde cevaplama becerisine</p>\r\n\r\n<p>sahip olacaksınız!</p>\r\n\r\n<p>Tarih alanında &ouml;zenle hazırlanan &ccedil;&ouml;z&uuml;ml&uuml; sorular sizi KPSS&rsquo;de başarıya ulaştıracaktır.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Aktivasyon Kodu ile aktif ettiğiniz video dersler 31 Temmuz 2020 tarihine kadar ge&ccedil;erlidir.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tarih Soru Bankası&nbsp;kitabı incelemek i&ccedil;in linke tıklayabilirsiniz&nbsp;<a href=\"https://www.pegem.net/UserFiles/File/Pages%20from%20Tarih%20SB%20ilk%2015%20sayfa.pdf\">https://www.pegem.net/UserFiles/File/Pages from Tarih SB ilk 15 sayfa.pdf</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>T&uuml;rk&ccedil;e - S&ouml;zel Mantık Soru Bankası&nbsp;kitabı incelemek i&ccedil;in linke tıklayabilirsiniz&nbsp;<a href=\"https://www.pegem.net/UserFiles/File/Pages%20from%20T%C3%BCrk%C3%A7e%20Soru%20Bankas%C4%B1ilk%2015%20sayfa.pdf\">https://www.pegem.net/UserFiles/File/Pages from T&uuml;rk&ccedil;e Soru Bankasıilk 15 sayfa.pdf</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Vatandaşlık Soru Bankası&nbsp;kitabı incelemek i&ccedil;in linke tıklayabilirsiniz&nbsp;<a href=\"https://www.pegem.net/UserFiles/File/Pages%20from%20Vatandaslik%20Soru%20Bankasi%20ilk%2015%20sayfa.pdf\">https://www.pegem.net/UserFiles/File/Pages from Vatandaslik Soru Bankasi ilk 15 sayfa.pdf</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Coğrafya Soru Bankası&nbsp;kitabı incelemek i&ccedil;in linke tıklayabilirsiniz&nbsp;<a href=\"https://www.pegem.net/UserFiles/File/Pages%20from%20Co%C4%9Frafya%20Soru%20Bankasi%20ilk%2015%20sayfa.pdf\">https://www.pegem.net/UserFiles/File/Pages from Coğrafya Soru Bankasi ilk 15 sayfa.pdf</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Matematik - Geometri Soru Bankası&nbsp;kitabı incelemek i&ccedil;in linke tıklayabilirsiniz&nbsp;<a href=\"https://www.pegem.net/UserFiles/File/Pages%20from%20Mat%20SB%20ilk%2015%20sayfa.pdf\">https://www.pegem.net/UserFiles/File/Pages from Mat SB ilk 15 sayfa.pdf</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>ISBN:</strong>&nbsp;9786052417379</p>\r\n\r\n<hr />\r\n<p><strong>Baskı Sayısı:</strong>&nbsp;9.Baskı</p>\r\n\r\n<hr />\r\n<p><strong>Basım Tarihi:</strong>&nbsp;Ağustos 2019</p>\r\n\r\n<hr />\r\n<p><strong>Baskı Yeri:</strong>&nbsp;Ankara</p>\r\n\r\n<hr />\r\n<p><strong>Sayfa Sayısı:</strong>&nbsp;1472</p>\r\n\r\n<hr />\r\n<p><strong>Ebat:</strong>&nbsp;19.5x27.5</p>', 2),
(18, 6, 'Sebahattin Alinin Bütün Şiirleri', 'Sebahattin Ali', 'Sebahattin Alinin Bütün Şiirler', 'd0a66a5a88ef6b429fd1cfa8e1237946.jpeg', NULL, 'Sebahattin Ali', 'Yapı Kredi Yayınları', NULL, NULL, 8.9, 'True', NULL, NULL, '<p style=\"text-align:center\">&quot;Aşkını candan duymuşum<br />\r\nCanım yoluna koymuşum<br />\r\nTam dokuz yaşındaymışım<br />\r\nD&uuml;nyaya geldiğin zaman.<br />\r\n<br />\r\nKimbilir nasıl g&uuml;zeldin,<br />\r\nG&ouml;klerden yere s&uuml;z&uuml;ld&uuml;n<br />\r\nBenim alnıma yazıldın<br />\r\nD&uuml;nyaya geldiğin zaman.&quot;<br />\r\n<br />\r\nDağlar ve R&uuml;zgar, Kurbağanın Serenadı ve &ouml;teki şiirler...<br />\r\n<br />\r\n<br />\r\n<strong><u>İnce Kapak:</u></strong><br />\r\n<br />\r\n<strong>Sayfa Sayısı:&nbsp;</strong>152<br />\r\n<br />\r\n<strong>Baskı Yılı:&nbsp;</strong>2016<br />\r\n<br />\r\n<br />\r\n<strong><u>e-Kitap:</u></strong><br />\r\n<br />\r\n<strong>Sayfa Sayısı:&nbsp;</strong>161<br />\r\n<br />\r\n<strong>Baskı Yılı:&nbsp;</strong>2015<br />\r\n<br />\r\n<br />\r\n<strong>Dili:&nbsp;</strong>T&uuml;rk&ccedil;e<br />\r\n<strong>Yayınevi:&nbsp;</strong>Yapı Kredi Yayınları</p>\r\n\r\n<p style=\"text-align:center\"><strong>İlk Baskı Yılı :&nbsp;</strong>2012</p>\r\n\r\n<p style=\"text-align:center\"><strong>Dil :&nbsp;</strong>T&uuml;rk&ccedil;e</p>', 4),
(19, 6, 'Ben Sana Mecburum', 'Ben Sana Mecburum,Attila İlhan', 'Ben Sana Mecburum', 'c24d2ce8d86726be8e3d287b0dc729c1.jpeg', NULL, 'Attila İlhan', 'İş Bankası Kültür Yayınları', NULL, NULL, 7.9, 'True', NULL, NULL, '<p style=\"text-align:center\">Bizi en ince yerimizden yakalıyor hep; birimizi, bazılarımızı değil, hepimizi... Kendini anlatıyor ama, dizelerinde hepimiz kendimizi buluyoruz, &uuml;stelik onlarda sadece biz varız sanarak. &Ouml;znel sevdalarımızı, &quot;bize ait olanı&quot; duyuyoruz onun sesinde. Hepimiz onun şiirinin kahramanlarıyız; bir t&uuml;rl&uuml; layıkıyla s&ouml;ylemeyi beceremediğimizi &uuml;&ccedil; kelimeye sığdırıveriyor o:<br />\r\n&quot;Ben sana mecburum!&quot;<br />\r\nAttila İlhan şiirinin tek teması aşk değil elbette; bu kitapta beş b&ouml;l&uuml;mde topladığı şiirlerinde, d&ouml;nemin siyasi havasını, &ccedil;alkantılarını, gerilimi, direnişi, başkaldırıyı, imkansız aşkları ve &ouml;zg&uuml;rl&uuml;k &ouml;zlemini bulacaksınız.<br />\r\n<br />\r\n<br />\r\n<br />\r\n<strong>Sayfa Sayısı:&nbsp;</strong>156<br />\r\n<br />\r\n<strong>Baskı Yılı:&nbsp;</strong>2016<br />\r\n<br />\r\n<br />\r\n<strong>Dili:&nbsp;</strong>T&uuml;rk&ccedil;e<br />\r\n<strong>Yayınevi:&nbsp;</strong>İş Bankası K&uuml;lt&uuml;r Yayınları</p>\r\n\r\n<p style=\"text-align:center\"><strong>Dil :&nbsp;</strong>T&uuml;rk&ccedil;e</p>', 4),
(20, 14, 'Siber Güvenlik - Hacking Atölyesi', 'Siber Güvenlik', 'Hacking Atölyesi', '755dce63d8be228b0f2f9cdfd1d6770c.jpeg', NULL, 'Onur Aktaş', 'Gazi Kitabevi', NULL, NULL, 13, 'True', NULL, NULL, '<h4>Siber G&uuml;venlik - Hacking At&ouml;lyesi Kısa &Ouml;zet</h4>\r\n\r\n<p>Kimler İ&ccedil;in?</p>\r\n\r\n<ul>\r\n	<li>Hacking, siber g&uuml;venlik, sızma testleri gibi konularda meraklı,</li>\r\n	<li>Siber saldırı y&ouml;ntemlerini derinlemesine &ouml;ğrenmek isteyen,</li>\r\n	<li>&Ouml;ğrendiklerini deneyebileceği bir ortam arayan,</li>\r\n	<li>Kopyala/yapıştır yaparak uzman olamayacağını bilen,</li>\r\n	<li>G&uuml;venlik konusunda bir başlangı&ccedil; noktası arayan,</li>\r\n	<li>Hacking yazılımlarının arkasındaki &ccedil;alışma mantığını anlamak isteyen,</li>\r\n	<li>Yazılım bağımsız teknik siber g&uuml;venlik eğitimi arayan,</li>\r\n	<li>Diğer konulardaki bilgilerini siber g&uuml;venlik a&ccedil;ısından test etmek isteyen,</li>\r\n	<li>Yazılım geliştiren ve geliştirdiği yazılıma gelebilecek saldırıları &ouml;ğrenmek isteyen,</li>\r\n	<li>&Ouml;zel &quot;lab* ortamıyla ger&ccedil;ek hayatta karşılaşabileceği bir &quot;hacking* deneyimini yaşamak isteyen,</li>\r\n	<li>Bol bol &quot;nasıl* ile başlayan sorular soran,</li>\r\n	<li>Siber g&uuml;venlik ve hacking konularında yeterli T&uuml;rk&ccedil;e kaynak bulamayan,</li>\r\n	<li>&quot;Az temelim var, nasıl geliştirmeliyim?* diye soran,</li>\r\n	<li>&quot;G&uuml;venlik (!) nedir?*, &quot;Hacker nedir?* gibi sorulardan bıkmış,</li>\r\n	<li>Teknik anlamda yetkin bir uzman olmak isteyen,</li>\r\n</ul>', 3),
(21, 15, 'Yapı Statiği İzostatik Sistemler Teori ve Uygulamalar', 'Yapı Statiği İzostatik Sistemler Teori', 'Yapı Statiği', '490318b818b600a44beb9df221991d04.jpeg', NULL, 'Bülent Yeğin', 'Birsen Yayınevi', NULL, NULL, 22, 'True', NULL, NULL, '<p><strong>&Ouml;NS&Ouml;Z</strong><br />\r\n&Uuml;niversitelerin inşaat m&uuml;hendisliği b&ouml;l&uuml;mlerinde okutulmakta olan ve izostatik sistemlerin ince-lendiği YAPI STATİĞİ &ndash; I dersi, b&ouml;l&uuml;m&uuml;n temel derslerinden biridir. Daha sonraki s&ouml;mestrlerde g&ouml;r&uuml;lecek olan derslerde başarılı olabilmek i&ccedil;in, iyice &ouml;z&uuml;msenerek &ouml;ğrenilmesi şarttır.<br />\r\nKitap 8 b&ouml;l&uuml;mden oluşmakta olup, her b&ouml;l&uuml;m&uuml;n sonunda olduk&ccedil;a fazla sayısal uygulama mev-cuttur ve her d&uuml;zeydeki &ouml;ğrenciye cevap verebilmesi i&ccedil;in gayret sarfedilmiştir.<br />\r\nHer ne kadar betonarme derslerinde ve ge&ccedil;erli olan y&ouml;netmeliklerde kN ve kNm birimleri kulla-nılıyor olsa da, burada b&uuml;y&uuml;k sayılar kullanmamak ve daha kolay y&uuml;k tahminleri yapabilmek adına, ton ve tm birimleri tercih edilmiştir. Kuvvetler, momentler ve sonu&ccedil;lar (10) ile &ccedil;arpıla-rak, kolayca kN ve kNm ye d&ouml;n&uuml;şt&uuml;r&uuml;lebilir.<br />\r\nŞekillerin &ccedil;iziminde yardımlarını esirgemeyen TUNA PROJE LİMİTED ŞİRKETİ&rsquo;nin değerli y&ouml;ne-ticileri, Sn. Şakir Tuna, Sn. Osman Yılmaz ve m&uuml;hendis Sn. Ecem Odabaş&rsquo;a, sevgili dostum Sn. Mehmet &Ouml;zkan&rsquo;a i&ccedil;tenlikle teşekk&uuml;r ederim.<br />\r\nBu vesile ile, bizlere Yapı Statiğinin temellerini &ouml;ğreten, uluslararası bir &uuml;ne sahip merhum ho-cam Prof. Dr. - Ing. Yavuz Başar&rsquo;ın (Ruhr Universität) aziz hatırasını bir kere daha anmak isterim.<br />\r\nKitabın basımını ve dağıtımını &uuml;stlenen Birsen Yayınevi&rsquo;ne ve Sn. Bahadır Algın&rsquo;a da teşekk&uuml;rle-rimi sunarım.<br />\r\nB&uuml;lent YEĞİN<br />\r\nŞubat 2019</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>İ&Ccedil;İNDEKİLER</strong><br />\r\nGİRİŞ 7<br />\r\nB&Ouml;L&Uuml;M-1<br />\r\nGENEL BİLGİLER 9<br />\r\nB&Ouml;L&Uuml;M-2<br />\r\n Kabuller 13<br />\r\n Taşıyıcı elemanların sınıflandırılması 14<br />\r\n Mekanik&rsquo;den &ouml;n bilgiler 16<br />\r\n Genel kuvvetlerin dengesi 21<br />\r\n D&uuml;zlemsel kuvvetlerin dengesi 22<br />\r\n Mafsal şartları 23<br />\r\n İzostatik olma şartı 29<br />\r\n Taşıyıcı sisteme etki eden kuvvetler 34<br />\r\n D&uuml;zlemsel &ccedil;ubuk sistemler 38<br />\r\n &Ccedil;ubuk sistemlerde tanımlar 39<br />\r\n Mesnetler 39<br />\r\n Yapı statiği krokisi 42<br />\r\n Sayısal uygulamalar 43<br />\r\nB&Ouml;L&Uuml;M-3<br />\r\nKESİT TESİRLERİ 67<br />\r\n Kesit tesirleri diyagramları 71<br />\r\n Y&uuml;k ve kesit tesirleri arasındaki bağıntılar 72<br />\r\n Kesit tesirlerinin tayininde izlenecek yol 74<br />\r\n Fonksiyon yazma y&ouml;ntemi 75<br />\r\n Kesit tesirlerinin bulunmasında kolaylık sağlayan y&ouml;ntemler 77<br />\r\n Basit kirişlerde &omega; sayıları 79<br />\r\n Y&uuml;k d&uuml;zenleme y&ouml;ntemi 82<br />\r\n Sayısal uygulamalar 85<br />\r\nB&Ouml;L&Uuml;M-4<br />\r\nGERBER KİRİŞLERİ 203<br />\r\n Mafsalların d&uuml;zenlenmesinde dikkat edilecek hususlar 204<br />\r\n Hesapta izlenen yol 205<br />\r\n Taşıma şemaları 206<br />\r\n Sayısal uygulamalar 209<br />\r\n4<br />\r\nB&Ouml;L&Uuml;M-5<br />\r\nKAFES SİSTEMLER<br />\r\n Genel bilgiler 251<br />\r\n Kafes sistemlerin d&uuml;zenlenme şekilleri 253<br />\r\n Temel kafes sistemler 253<br />\r\n İzostatik olma şartı 254<br />\r\n &Ccedil;ubuk kuvvetlerinin bulunması 255<br />\r\n D&uuml;ğ&uuml;m noktaları y&ouml;ntemi 255<br />\r\n Ritter kesim y&ouml;ntemi 257<br />\r\n Karışık y&ouml;ntem 258<br />\r\n Sayısal uygulamalar 260<br />\r\nB&Ouml;L&Uuml;M-6<br />\r\n&Uuml;&Ccedil; MAFSALLI KEMERLER<br />\r\n Genel bilgiler 275<br />\r\n &Uuml;&ccedil; mafsallı gergisiz kemerler 277<br />\r\n &Uuml;&ccedil; mafsallı gergili kemerler 278<br />\r\n &Uuml;&ccedil; mafsallı kemerlerin basit kiriş yardımıyla &ccedil;&ouml;z&uuml;m&uuml; 279<br />\r\n Sayısal uygulamalar 282<br />\r\nB&Ouml;L&Uuml;M-7<br />\r\nKARMA SİSTEMLER<br />\r\n Genel bilgiler 291<br />\r\n Langer kirişi 291<br />\r\n Sayısal uygulamalar 294<br />\r\nB&Ouml;L&Uuml;M-8<br />\r\nSİSTEMLERİN HAREKETLİ Y&Uuml;KLERE G&Ouml;RE HESABI<br />\r\n Genel bilgiler 309<br />\r\n Kiriş &uuml;zerinde bir adet tekil y&uuml;k hali 309<br />\r\n Kiriş &uuml;zerinde iki adet tekil y&uuml;k hali 311<br />\r\n Kiriş &uuml;zerinde &uuml;&ccedil; adet tekil y&uuml;k hali 314<br />\r\n Kiriş &uuml;zerinde bir&ccedil;ok tekil y&uuml;k hali 317<br />\r\n Maksimum değeri veren y&uuml;klemenin bulunması 317<br />\r\n Katar konumunun grafik metodla bulunması 321<br />\r\n Sayısal uygulamalar 323<br />\r\n Tesir hatları (Tesir &ccedil;izgileri) 330<br />\r\n Hareketli y&uuml;k tipleri 331<br />\r\n Basit kirişlerde tesir hatları 332<br />\r\n Konsol kirişlerde tesir hatları 334<br />\r\n5<br />\r\n &Ccedil;ıkmalı kirişlerde tesir hatları 336<br />\r\n Tesir hatlarının kullanılması 342<br />\r\n Gerber kirişlerinde tesir hatları 343<br />\r\n Kafes sistemlerde tesir hatları 346<br />\r\n &Uuml;&ccedil; mafsallı kemerlerde tesir hatları 349<br />\r\n Kinematik metod 353<br />\r\n Virt&uuml;el iş teoremi 353<br />\r\n Bağ kuvvetlerinin hesabında virt&uuml;el iş prensibi 354<br />\r\n Tesir hatlarının &ccedil;iziminde virt&uuml;el iş prensibi 355<br />\r\n Sayısal uygulamalar 360<br />\r\nTABLOLAR 403<br />\r\nLİTERAT&Uuml;R 405</p>', 3),
(22, 15, 'Mühendisler İçin Mekanik', 'Statik + Mühendisler İçin Mekanik Cilt 1', 'Statik Problemlerin Çözümleri', '8aa454e380e86606ed0f9cecd8b8a21a.jpeg', NULL, 'Prof. Dr. Ferdinand P. Beer,Prof. Dr. E. Russell Johnston, Jr.', 'Birsen Yayınevi', NULL, NULL, 65, 'True', NULL, NULL, '<p>toplam değerleri 90TL olan M&uuml;hendisler İ&ccedil;in Mekanik: Statik + M&uuml;hendisler İ&ccedil;in Mekanik Cilt 1: Statik Problemlerin &Ccedil;&ouml;z&uuml;mleri kitapları set olarak birlikte sadece</p>\r\n\r\n<h4><strong>65TL</strong></h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kitapların yazarları:<br />\r\nProf. Dr. Ferdinand P. Beer<br />\r\nProf. Dr. E. Russell Johnston, Jr.</p>', 3),
(23, 13, 'Jose Mourinho-Kazanmanın Anatomisi', 'Jose Mourinho,Mourinho', 'Mourinho', '4338d0f76ea247f490e42f8dd956ce64.jpeg', NULL, 'Robert W. Beasley', 'İndigo Kitap', NULL, NULL, 21, 'True', NULL, NULL, '<p style=\"text-align:center\">Mourinho futbol severlerin dikkatini 2004 yılında &ldquo;R&uuml;yalar Tiyatrosu&rdquo; Old Trafford&rsquo;da &ccedil;ekmişti. Porto Mourinho&rsquo;nun taktikleriyle Manchester United&rsquo;ı Şampiyonlar Ligi turnuvasından elemeyi başarmıştı.</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">Portekizli teknik adam Chelsea&rsquo;ye transfer olduktan sonra yazar Robert Beasley onu yakın markajına aldı ve profesyonel anlamda, bu sıra dışı adamla sıkı bir dostluk kurmayı başardı. Mourinho&rsquo;nun antrenmanları, ma&ccedil;ları ve &ouml;zel hayatıyla yakından ilgilenen Beasley, kapalı kapılar ardında yaşadıklarını Jos&eacute; Mourinho kitabında t&uuml;m futbolseverlere aktardı.</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">İngiltere Milli Takımı&rsquo;nın kapısından d&ouml;nen, Tottenham&rsquo;ın kıskacından sıyrılan, Ars&egrave;ne Wenger&rsquo;e her fırsatta saldıran, onu ne kadar sevmediğini a&ccedil;ıklayan ve arka planda belki de t&uuml;m kariyerine y&ouml;n veren Roman Abramovi&ccedil;&rsquo;le dirsek temasını hi&ccedil; kaybetmeyen Mourinho, aynı zamanda kariyeri boyunca satın aldığı oyuncuları, alamadıklarını ve i&ccedil;inde hep ukde kalanları t&uuml;m &ccedil;ıplaklığıyla anlatıyor.</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">Sporun bir akıl ve felsefe oyunu olduğunu savunan Mourinho, kariyeri boyunca &ccedil;ıraklıktan ustalığa tecr&uuml;be ettiklerini, futbol k&uuml;lt&uuml;r&uuml;n&uuml;n d&uuml;nya &uuml;zerinde ne kadar farklılıklar g&ouml;sterdiğini anlatırken bir yandan da futbol hakkında t&uuml;yolar vermeyi de ihmal etmiyor&hellip;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">(Tanıtım B&uuml;lteninden)</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><strong>Kapak Tasarım:&nbsp;</strong>Yasin &Ouml;ks&uuml;z</p>\r\n\r\n<p style=\"text-align:center\"><strong>Edit&ouml;r:&nbsp;</strong>Nil Tuna</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><strong>Hamur Tipi :&nbsp;</strong>2. Hamur</p>\r\n\r\n<p style=\"text-align:center\"><strong>Ebat :&nbsp;</strong>13,5 x 21</p>\r\n\r\n<p style=\"text-align:center\"><strong>İlk Baskı Yılı :&nbsp;</strong>2018</p>\r\n\r\n<p style=\"text-align:center\"><strong>Baskı Sayısı :&nbsp;</strong>1. Basım</p>', 3);
INSERT INTO `book` (`id`, `category_id`, `title`, `keywords`, `description`, `image`, `type`, `yazar`, `yayinci`, `year`, `fiyat`, `s_fiyat`, `status`, `created_at`, `updated_at`, `detail`, `userid`) VALUES
(24, 13, 'Benim Adım Ronaldo', 'Cristiano Ronaldo', 'Ronaldo,Cristiano', 'cb1f7aa992255f0078bcea24b91a4d46.jpeg', NULL, 'Michael Part', 'Beyaz Balina Yayınları', NULL, NULL, 9.9, 'True', NULL, NULL, '<p style=\"text-align:center\">Cristiano Ronaldo&#39;nun başarı &ouml;yk&uuml;s&uuml;&hellip; O, topu olmadığı i&ccedil;in &ccedil;oraplarını top yapıp onlarla oynayan, yoksul bir &ccedil;ocuktu. En b&uuml;y&uuml;k tutkusu futboldu. Tutkusunun peşinden gitmeye, gelmiş ge&ccedil;miş en iyi futbol oyuncularından biri olmaya kararlıydı. Ve bunu başardı&hellip; Bu kitapta d&uuml;nyanın en iyi futbol oyuncularından sayılan Cristiano Ronaldo&#39;nun Portekiz&#39;in Madeira Adası&#39;ndan Real Madrid&#39;e uzanan yolculuğunu okuyacaksınız.<br />\r\n(Tanıtım B&uuml;lteninden)<br />\r\n<br />\r\n<br />\r\n<br />\r\n<strong>Sayfa Sayısı:&nbsp;</strong>176<br />\r\n<br />\r\n<strong>Baskı Yılı:&nbsp;</strong>2015<br />\r\n<br />\r\n<br />\r\n<strong>Dili:&nbsp;</strong>T&uuml;rk&ccedil;e<br />\r\n<strong>Yayınevi:&nbsp;</strong>Beyaz Balina Yayınları</p>\r\n\r\n<p style=\"text-align:center\"><strong>İlk Baskı Yılı :&nbsp;</strong>2015</p>\r\n\r\n<p style=\"text-align:center\"><strong>Dil :&nbsp;</strong>T&uuml;rk&ccedil;e</p>', 3),
(25, 16, 'Mesleki İngilizce', 'Mesleki İngilizce,mesleki', 'Mesleki,ing', '0191d629154d093c036e944d287f8340.jpeg', NULL, 'Güven Özal', 'Seçkin Yayıncılık', NULL, NULL, 30.5, 'True', NULL, NULL, '<p style=\"text-align:center\">Kitap, uzun yıllar &uuml;niversitelerde &quot;Mesleki Yabancı Dil&quot; derslerini anlatan, &ccedil;eşitli kuruluşlarda &quot;İngilizce&quot; eğitimler veren yazarın notlarından, mesleki tecr&uuml;belerinden ve konu &uuml;zerine yazılmış &ouml;nemli kaynak kitapların taranılmasından oluşmaktadır.</p>\r\n\r\n<p style=\"text-align:center\">Eser, b&uuml;t&uuml;n &uuml;niversitelerdeki&nbsp; Mesleki Yabancı Dil (İngilizce) ders i&ccedil;eriğine uygun olarak hazırlanmış, temel seviyede genel bilgiler i&ccedil;eren bir kaynak kitap olarak hazırlanmıştır.</p>\r\n\r\n<p style=\"text-align:center\">Eser, ders kitabı olarak hazırlanmış olmasının yanısıra; yurt dışı ile ilişkileri olan işletmelerde ve organizasyonlarda g&ouml;rev yapan profesyonellerin yararlanabileceği, iş hayatında sık karşılaşılan, telefonla konuşma, randevular, siparişler ve problemler, iş mektupları, konuk karşılama, u&ccedil;ak-otel-restaurant rezervasyonları vb. genel konularla ilgili teorik ve pratik bilgilere yer verdiğinden, İngilizcesini geliştirmek ve bu dili &ouml;ğrenmek isteyen herkese hitap etmektedir.</p>\r\n\r\n<p style=\"text-align:center\">Kitapta Bulunan Konu Başlıkları</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">Telefon G&ouml;r&uuml;şmeleri &ndash; Phone Calls.</p>\r\n\r\n<p style=\"text-align:center\">Mesajlar &ndash; Randevular &ndash; Messages .</p>\r\n\r\n<p style=\"text-align:center\">Appointments.</p>\r\n\r\n<p style=\"text-align:center\">Otel, Restaurant ve U&ccedil;ak Reservasyonları &ndash; Hotel, Restaurant and Flight Reservations.</p>\r\n\r\n<p style=\"text-align:center\">Temas Kurma &ndash; Contacts.</p>\r\n\r\n<p style=\"text-align:center\">Problemlerin &Ccedil;&ouml;z&uuml;m&uuml; &ndash; Dealing with Problems.</p>\r\n\r\n<p style=\"text-align:center\">Siparişler &ndash; Banka ve Finans &ndash; Orders &ndash; Banking and Finance.</p>\r\n\r\n<p style=\"text-align:center\">Adres Sorma&ndash;Tarif Etme &ndash;&nbsp; Asking&ndash;Giving Directions.</p>\r\n\r\n<p style=\"text-align:center\">İş Mektupları &ndash; Business Letters.</p>\r\n\r\n<p style=\"text-align:center\">Memorandum &ndash; Memorandum.</p>\r\n\r\n<p style=\"text-align:center\">&Ouml;z&uuml;r Dileme .</p>\r\n\r\n<p style=\"text-align:center\">Talimat Verme&ndash;Alma&ndash;&nbsp; Apologising .</p>\r\n\r\n<p style=\"text-align:center\">Giving and Receiving Instructions.</p>\r\n\r\n<p style=\"text-align:center\">Dış Ticarette Teslim ve &Ouml;deme Y&ouml;ntemleri &ndash; Delivery and Payment Methods in Foreign Trade.</p>\r\n\r\n<p style=\"text-align:center\">Konukları Karşılama &ndash; Welcoming Visitors&ndash;Tanıştırma &ndash; Toplantılar &ndash; Introductions &ndash; Meetings.</p>\r\n\r\n<p style=\"text-align:center\">Yardım İsteme&ndash;Teklif Etme &ndash; Asking&ndash; Offering Help</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">(Tanıtım B&uuml;lteninden)</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><strong>Hamur Tipi :&nbsp;</strong>2. Hamur</p>\r\n\r\n<p style=\"text-align:center\"><strong>Ebat :&nbsp;</strong>18 x 24</p>\r\n\r\n<p style=\"text-align:center\"><strong>İlk Baskı Yılı :&nbsp;</strong>2018</p>\r\n\r\n<p style=\"text-align:center\"><strong>Baskı Sayısı :&nbsp;</strong>1. Basım</p>', 3);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `parentid` int(11) DEFAULT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `parentid`, `title`, `keywords`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hikaye', 'Hikaye kitabı,Hikaye oku', 'Hikaye kitabı oku', NULL, 'TRUE', NULL, NULL),
(4, 0, 'Roman', 'Roman Kitabı,Roman kitap', 'Roman Kitap oku', NULL, 'TRUE', NULL, NULL),
(6, 0, 'Şiir', 'Şiir kitabı,Şiir oku', 'Şiir kitabı oku', NULL, 'TRUE', NULL, NULL),
(7, 0, 'Öykü', 'Öykü kitabı , Öykü oku', 'Öykü kitabı oku', NULL, 'TRUE', NULL, NULL),
(11, 0, 'Bilim', 'Bilim kitapları, Bilim Kitapları', 'Bilim Kitapları', NULL, 'TRUE', NULL, NULL),
(13, 0, 'Spor', 'spor kitapları, spor kitap', 'spor kitapları oku', NULL, 'TRUE', NULL, NULL),
(14, 11, 'Bilgisayar', 'Bilgisayar kitapları, Bilgisayar  Kitap', 'Bilgisayar kitapları, Bilgisayar  Kitap', NULL, 'TRUE', NULL, NULL),
(15, 11, 'İnşaat Kitapları', 'İnşaat Kitapları,İnşaat Kitap', 'İnşaat Kitapları', NULL, 'TRUE', NULL, NULL),
(16, 0, 'Eğitim Kitapları', 'Eğitim', 'Eğitimasndans', NULL, 'TRUE', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `subject` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `bookid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `subject`, `comment`, `status`, `ip`, `userid`, `created_at`, `updated_at`, `rate`, `bookid`) VALUES
(1, 'test sub', 'test com', 'True', NULL, 3, NULL, NULL, 2, 2),
(2, 'Good book', 'I love this book', 'True', '127.0.0.1', 3, NULL, NULL, 4, 2),
(5, 'Güzel', 'Harika bir kitap', 'True', '::1', 3, NULL, NULL, 4, 2),
(6, 'İyi ki', 'İyi ki Fenerbahçeliyim :)', 'True', '::1', 3, NULL, NULL, 5, 8),
(7, 'Güzel', 'Kitabı aldım çok memnun kaldım :)', 'True', '::1', 8, NULL, NULL, 4, 6),
(8, 'İyi ki', 'Satın aldığım için çok mutluyum :)', 'new', '::1', 8, NULL, NULL, 4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `book_id`, `title`, `image`) VALUES
(14, 6, 'dede2', '7a352f858e5a782fdba181c3a2dc6d5b.jpeg'),
(15, 6, 'dede3', '8bf50259330400f91f8a757cbd301064.jpeg'),
(16, 6, 'dede4', '50fb8280b39b604dbb6350516d9b5cb7.jpeg'),
(17, 8, 'fb', 'b60204babec95ae31ad79ffd956f24f7.jpeg'),
(18, 8, 'fenerbahçelogo', 'c0d0462625d2eece8e7108cc3ae38d57.jpeg'),
(19, 2, 'AksamYildizi', '38845cb968f6680db4c4e51c6db78c2d.jpeg'),
(20, 2, 'aksamyildizi2', 'fd9de3d3a416aab69ea54c1271d9b958.jpeg'),
(21, 12, 'Ön KAPAK', '533e6f882f6cf0a6bfc975a956400122.jpeg'),
(22, 12, 'Arka Kapak', 'ddabc0b372405fae31b9304d59bb3762.jpeg'),
(23, 13, 'Hackerliga giris 2', 'e2a486364a6f3a1d614de249548c4338.jpeg'),
(24, 14, 'phyton2', 'f8bef1f9e1da3dd30749819bcc710d4b.jpeg'),
(25, 14, 'phyton3', '4bcde8af0b51b9b4c0bb29c5799c29ca.jpeg'),
(26, 15, 'html', 'aa2727f739a927041c3882862ba75f36.jpeg'),
(27, 15, 'html2', '3b24abeccd082a608ea691c75bff52db.jpeg'),
(28, 16, 'kpss1', 'd7da4364435a2d5889cdfcea9d8b198d.jpeg'),
(29, 16, 'kpss3', '7f9ad54418c7bd1867c69b000b16f8db.jpeg'),
(30, 18, 'Arka Kapak', '043e7020f7347916396b7897af48f00e.jpeg'),
(31, 18, 'Ön KAPAK', 'c0a2b7a36a9953939bd5d5767c6fb389.jpeg'),
(32, 19, NULL, 'f462a6663c85f8239d5a5ef055325778.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `subject`, `message`, `status`, `ip`, `note`, `created_at`, `updated_at`, `email`) VALUES
(1, 'Mete', 'Konu', 'sasdnasndasnfkasnfksanfkasnfknaslnglanglasnflnsaldnasljfnljanfljsanfljasnfljsanfljasnfljasnfjlasnfljnaslfjnasljfnasnl', NULL, NULL, NULL, NULL, NULL, 'mete@gmail.com'),
(2, 'Mete', 'konu', 'message', NULL, NULL, NULL, NULL, NULL, 'mete@gmail.com'),
(3, 'Mete', 'konu', 'message', 'Read', '::1', 'Thats answer', NULL, NULL, 'mete@gmail.com'),
(4, 'Metehan Kafadar', 'Konu gizem', 'asdsandjasnfjnasjfsa', 'new', '::1', NULL, NULL, NULL, 'metehankafadar@gmail.com'),
(5, 'ayşe', 'admamdkamadmla', 'amdkmadlmlad', 'new', '::1', NULL, NULL, NULL, 'ayse@gmail.com'),
(6, 'Metehan Kafadar', 'asfasf', 'asfasdasd', 'new', '::1', NULL, NULL, NULL, 'asf@gmail.com'),
(7, 'Metehan Kafadar', 'Konu gizem', 'fafasdasfasda', 'new', '::1', NULL, NULL, NULL, 'ayse@gmail.com'),
(8, 'Mete', 'asfasknfkasnfkasnfkas', 'akdsnskanflksafnaslfnas', 'new', '::1', NULL, NULL, NULL, 'metehankafadar@gmail.com'),
(9, 'Mete', 'asfasknfkasnfkasnfkas', 'akdsnskanflksafnaslfnas', 'new', '::1', NULL, NULL, NULL, 'metehankafadar@gmail.com'),
(10, 'Mete', 'asfasknfkasnfkasnfkas', 'akdsnskanflksafnaslfnas', 'new', '::1', NULL, NULL, NULL, 'metehankafadar@gmail.com'),
(11, 'Mete', 'asfasknfkasnfkasnfkas', 'akdsnskanflksafnaslfnas', 'new', '::1', NULL, NULL, NULL, 'metehankafadar@gmail.com'),
(12, 'Metehan Kafadar', 'asfasknfkasnfkasnfkas', 'asdasfasdas', 'new', '::1', NULL, NULL, NULL, 'metehankafadar@gmail.com'),
(13, 'Metehan Kafadar', 'asfasknfkasnfkasnfkas', 'asdasfasdas', 'new', '::1', NULL, NULL, NULL, 'metehankafadar@gmail.com'),
(14, 'Metehan Kafadar', 'asfasknfkasnfkasnfkas', 'asdasfasdas', 'new', '::1', NULL, NULL, NULL, 'metehankafadar@gmail.com'),
(15, 'Metehan Kafadar', 'asfasknfkasnfkasnfkas', 'asdasfasdas', 'new', '::1', NULL, NULL, NULL, 'metehankafadar@gmail.com'),
(16, 'Metehan Kafadar', 'asfasknfkasnfkasnfkas', 'asdasfasdas', 'new', '::1', NULL, NULL, NULL, 'metehankafadar@gmail.com'),
(17, 'Metehan Kafadar', 'asfasknfkasnfkasnfkas', 'asdasfasdas', 'new', '::1', NULL, NULL, NULL, 'metehankafadar@gmail.com'),
(18, 'Metehan Kafadar', 'afasdas', 'asfsafasdasdas', 'new', '::1', NULL, NULL, NULL, 'metehankafadar@gmail.com'),
(19, 'Metehan Kafadar', 'afasdas', 'asfsafasdasdas', 'new', '::1', NULL, NULL, NULL, 'metehankafadar@gmail.com'),
(20, 'Metehan Kafadar', 'konu', 'afasdasdsa', 'new', '::1', NULL, NULL, NULL, 'metehankafadar@gmail.com'),
(21, 'Metehan Kafadar', 'konu', 'afasdasdsa', 'new', '::1', NULL, NULL, NULL, 'metehankafadar@gmail.com'),
(22, 'Metehan Kafadar', 'konu', 'afasdasdsa', 'new', '::1', NULL, NULL, NULL, 'metehankafadar@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20191213185600', '2019-12-13 18:56:56'),
('20191220205544', '2019-12-20 20:57:54'),
('20191223213926', '2019-12-23 21:39:52'),
('20191223221515', '2019-12-23 22:15:47'),
('20191224190957', '2019-12-24 19:11:02'),
('20191224210353', '2019-12-24 21:04:22'),
('20191225233204', '2019-12-25 23:32:27'),
('20200110220445', '2020-01-10 22:05:03'),
('20200110222734', '2020-01-10 22:27:46'),
('20200112185055', '2020-01-12 18:51:15'),
('20200112191515', '2020-01-12 19:15:29'),
('20200113183617', '2020-01-13 18:37:00'),
('20200114201210', '2020-01-14 20:12:57'),
('20200114220508', '2020-01-14 22:05:45'),
('20200114235924', '2020-01-14 23:59:50');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipinfo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userid`, `amount`, `name`, `address`, `city`, `phone`, `shipinfo`, `status`, `updated_at`, `created_at`) VALUES
(1, 3, 63.93, 'mete Kafadar', 'Esatpaşa mah.', 'İzmir', NULL, NULL, 'NEW', NULL, NULL),
(3, 3, 63.93, 'mete Kafadar', NULL, NULL, NULL, NULL, 'NEW', NULL, NULL),
(5, 3, 63.93, 'mete Kafadar', NULL, NULL, NULL, ' kardeşim', 'ORDERED', NULL, NULL),
(6, 3, 63.93, 'mete Kafadar', NULL, NULL, NULL, ' adsadas ', 'Shipping', NULL, NULL),
(7, 3, 63.93, 'mete Kafadar', NULL, NULL, NULL, NULL, 'NEW', NULL, NULL),
(8, 3, 63.93, 'mete Kafadar', NULL, NULL, NULL, NULL, 'Canceled', NULL, NULL),
(9, 3, 0, 'mete Kafadar', NULL, NULL, NULL, NULL, 'NEW', NULL, NULL),
(10, 3, 0, 'mete Kafadar', 'Esatpaşa mah.', 'İzmir', '15155', NULL, NULL, NULL, NULL),
(12, 4, 44, 'melike kafadar', NULL, 'İzmir', NULL, NULL, 'NEW', NULL, NULL),
(13, 3, 75, 'mete Kafadar', NULL, 'İzmir', NULL, NULL, NULL, NULL, NULL),
(14, 3, 37.88, 'mete Kafadar', 'Esatpaşa mah.', '262526', NULL, ' En kısa sürede eline ulaşacak', 'Shipping', NULL, NULL),
(15, 8, 58.5, 'muhendis bey', 'Karabük cd.', '5554447788', NULL, 'Kitabı hemen kargoya verdik.', 'Shipping', NULL, NULL),
(16, 3, 39.6, 'mete Kafadar', 'menemen', '55544887453', NULL, NULL, 'NEW', NULL, NULL),
(17, 3, 72.88, 'mete Kafadar', NULL, NULL, NULL, NULL, 'NEW', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `orderid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `orderid`, `userid`, `productid`, `price`, `quantity`, `amount`, `name`, `status`) VALUES
(1, 8, 3, NULL, NULL, 2, 30, 'Fenerbahçe', 'ORDERED'),
(2, 1, 3, NULL, NULL, 1, 18.93, 'Dedemin Adası', 'ORDERED'),
(3, 8, 3, NULL, NULL, 1, 15, 'Fenerbahçe', 'ORDERED'),
(4, 8, 3, NULL, NULL, 1, 15, 'Fenerbahçe', 'ORDERED'),
(5, 12, 4, 5, NULL, 2, 44, 'asfsafas', 'ORDERED'),
(6, 13, 3, 8, NULL, 5, 75, 'Fenerbahçe', 'ORDERED'),
(7, 14, 3, 2, NULL, 2, 37.88, 'Akşam Yıldızı', 'ORDERED'),
(8, 15, 8, 6, NULL, 3, 58.5, 'Dedemin Adası', 'ORDERED'),
(9, 16, 3, 24, NULL, 4, 39.6, 'Benim Adım Ronaldo', 'ORDERED'),
(10, 17, 3, 14, NULL, 1, 35, 'Phyton', 'ORDERED'),
(11, 17, 3, 2, NULL, 1, 18.94, 'Akşam Yıldızı', 'ORDERED'),
(12, 17, 3, 2, NULL, 1, 18.94, 'Akşam Yıldızı', 'ORDERED');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `bookid` int(11) DEFAULT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkin` datetime DEFAULT NULL,
  `checkout` datetime DEFAULT NULL,
  `total` double DEFAULT NULL,
  `ip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpserver` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpemail` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtppassword` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpport` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aboutus` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `title`, `keywords`, `description`, `company`, `address`, `phone`, `fax`, `email`, `smtpserver`, `smtpemail`, `smtppassword`, `smtpport`, `facebook`, `instagram`, `twitter`, `aboutus`, `contact`, `reference`, `status`) VALUES
(1, 'KitapSat', 'KitapSatis,kitap satışı', 'Books Sell', 'KitapSat', 'İzmir, Karşıyaka , 35000, Turkey', '5151513132', '232323332', 'info@kitapsatt.com', 'gmail', 'mkafadar7@gmail.com', 's31t4nm4n', '578', 'kitapsatt.com', 'kitapsatt.com', 'kitapsatt.com', '<p>&nbsp;</p>\r\n<!--StartFragment-->\r\n\r\n<div class=\"paragraph\" style=\"-webkit-text-stroke-width:0px; background-color:#ffffff; color:#3f3f3f !important; font-family:Montserrat !important; font-size:16px; font-style:normal; font-variant-caps:normal; font-variant-ligatures:normal; font-weight:300; letter-spacing:0.02em; line-height:30px !important; margin-bottom:0px; margin-left:30px; margin-right:30px; margin-top:0px; orphans:2; overflow-wrap:break-word; padding:0px; text-align:left; text-decoration-color:initial; text-decoration-style:initial; text-indent:0px; text-transform:none; white-space:normal; widows:2; word-spacing:0px\"><span style=\"color:#3f3f3f\">Bookstores are special places, full of the smell of new books, browsing the shelves for your next great read, booksellers you know you can count on for great, personal recommendations, a community you know will be open and welcoming.<br />\r\n<br />\r\nWe know that booksellers help readers discover and share the magic of books. They are dedicated to helping you find the book you need--the book that could change your life. When they recommend a book to you, they are genuinely looking to make a connection and create an experience for you.&nbsp;<br />\r\n<br />\r\nWe want to give you a way to celebrate your favorite bookstore with with other book lovers: just use the&nbsp;<strong>#loveyourbookstore&nbsp;</strong>hashtag and post a photo, quote, or story about your favorite bookstore.<br />\r\n<br />\r\n<em>​The Love Your Bookstore initiative is the brainchild of booklover Dominique Raccah, the Publisher and CEO of Sourcebooks and PW&#39;s Publishing Person of the Year (2016).</em></span></div>\r\n\r\n<div style=\"-webkit-text-stroke-width:0px; background-color:#ffffff; color:#000000; font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif; font-size:16px; font-style:normal; font-variant-caps:normal; font-variant-ligatures:normal; font-weight:400; letter-spacing:normal; orphans:2; text-align:left; text-decoration-color:initial; text-decoration-style:initial; text-indent:0px; text-transform:none; white-space:normal; widows:2; word-spacing:0px\">\r\n<div class=\"wsite-multicol\" style=\"direction:ltr; position:relative\">\r\n<div class=\"wsite-multicol-table-wrap\" style=\"margin-bottom:0px; margin-left:-15px; margin-right:-15px; margin-top:0px\">\r\n<table cellspacing=\"0\" class=\"wsite-multicol-table\" style=\"border-collapse:collapse; border:0px !important; margin:0px !important; padding:0px !important; position:relative; table-layout:fixed; width:1316px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"border-width:0px; vertical-align:top; width:336.4px\">\r\n			<div>\r\n			<div class=\"wsite-image wsite-image-border-none\" style=\"margin-left:0px; margin-right:0px; padding-bottom:10px; padding-top:10px; position:relative; text-align:center\"><img alt=\"Picture\" src=\"https://www.loveyourbookstore.com/uploads/1/1/5/5/115507011/2ndandcharles_orig.jpg\" style=\"border-color:initial; border-image:initial; border-style:none; border-width:0px !important; margin-bottom:10px; max-width:100%; width:auto\" />\r\n			<div style=\"display:block; font-size:14.4px\">&nbsp;</div>\r\n			</div>\r\n			</div>\r\n			</td>\r\n			<td style=\"border-width:0px; vertical-align:top; width:919.6px\">\r\n			<h2 style=\"margin-left:20px; margin-right:20px\">What People Are Saying&nbsp;About #loveyourbookstore&nbsp;</h2>\r\n\r\n			<div class=\"paragraph\" style=\"color:#3f3f3f !important; font-family:Montserrat !important; font-size:16px !important; font-weight:300; letter-spacing:0.02em; line-height:30px !important; margin-bottom:0px; margin-left:30px; margin-right:30px; margin-top:0px; overflow-wrap:break-word; padding:0px\"><a href=\"https://www.publishersweekly.com/pw/by-topic/industry-news/bookselling/article/78186-campaign-to-promote-physical-bookstores-launched.html\" style=\"color: inherit; text-decoration: none; opacity: 0.7; border-bottom: 1px solid rgba(0, 0, 0, 0.5); transition: opacity 200ms ease-in-out 0s;\" target=\"_blank\">Publishers Weekly Announces the #loveyourbookstore Challenge</a><br />\r\n			Publishers Weekly Soapbox:&nbsp;<a href=\"https://www.publishersweekly.com/pw/by-topic/columns-and-blogs/soapbox/article/78313-don-t-forget-to-love-your-bookstore.html\" style=\"color: inherit; text-decoration: none; opacity: 0.7; border-bottom: 1px solid rgba(0, 0, 0, 0.5); transition: opacity 200ms ease-in-out 0s;\" target=\"_blank\">Don&#39;t Forget to Love Your Bookstore</a><br />\r\n			Bookselling This Week:&nbsp;<a href=\"https://www.bookweb.org/news/love-your-bookstore-celebrate-brick-and-mortar-bookstores-november-107215\" style=\"color: inherit; text-decoration: none; opacity: 0.7; border-bottom: 1px solid rgba(0, 0, 0, 0.5); transition: opacity 200ms ease-in-out 0s;\" target=\"_blank\">Love Your Bookstore Celebrates Brick and Mortar Bookstores</a><br />\r\n			SIBA:&nbsp;<a href=\"https://sibaweb.site-ym.com/blogpost/1157249/311338/The-Love-Your-Bookstore-Challenge\" style=\"color: inherit; text-decoration: none; opacity: 0.7; border-bottom: 1px solid rgba(0, 0, 0, 0.5); transition: opacity 200ms ease-in-out 0s;\" target=\"_blank\">The Love Your Bookstore Challenge!</a><br />\r\n			FINN Partners:&nbsp;<a href=\"http://bookmarketingbuzzblog.blogspot.com/2018/10/loveyourbookstore-movement-that-needs.html\" style=\"color: inherit; text-decoration: none; opacity: 0.7; border-bottom: 1px solid rgba(0, 0, 0, 0.5); transition: opacity 200ms ease-in-out 0s;\" target=\"_blank\">#loveyourbookstore - The Movement That Needs You</a></div>\r\n\r\n			<div>\r\n			<div class=\"wsite-multicol\" style=\"direction:ltr; position:relative\">\r\n			<div class=\"wsite-multicol-table-wrap\" style=\"margin-bottom:0px; margin-left:-15px; margin-right:-15px; margin-top:0px\">\r\n			<table cellspacing=\"0\" class=\"wsite-multicol-table\" style=\"border-collapse:collapse; border:0px !important; margin:0px !important; padding:0px !important; position:relative; table-layout:fixed; width:949.6px\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"border-width:0px; vertical-align:top; width:286.8px\">\r\n						<div>\r\n						<div class=\"wsite-image wsite-image-border-none\" style=\"margin-left:0px; margin-right:0px; padding-bottom:10px; padding-top:10px; position:relative; text-align:center\"><img alt=\"Picture\" src=\"https://www.loveyourbookstore.com/uploads/1/1/5/5/115507011/foggypine-lyb_orig.png\" style=\"border-color:initial; border-image:initial; border-style:none; border-width:0px !important; margin-bottom:10px; max-width:100%; width:auto\" />\r\n						<div style=\"display:block; font-size:14.4px\">&nbsp;</div>\r\n						</div>\r\n						</div>\r\n						</td>\r\n						<td style=\"border-width:0px; vertical-align:top; width:286.8px\">\r\n						<div>\r\n						<div class=\"wsite-image wsite-image-border-none\" style=\"margin-left:0px; margin-right:0px; padding-bottom:10px; padding-top:10px; position:relative; text-align:center\"><img alt=\"Picture\" src=\"https://www.loveyourbookstore.com/uploads/1/1/5/5/115507011/readitagain-lyb_orig.png\" style=\"border-color:initial; border-image:initial; border-style:none; border-width:0px !important; margin-bottom:10px; max-width:100%; width:auto\" />\r\n						<div style=\"display:block; font-size:14.4px\">&nbsp;</div>\r\n						</div>\r\n						</div>\r\n						</td>\r\n						<td style=\"border-width:0px; vertical-align:top; width:286px\">\r\n						<div>\r\n						<div class=\"wsite-image wsite-image-border-none\" style=\"margin-left:0px; margin-right:0px; padding-bottom:10px; padding-top:10px; position:relative; text-align:center\"><img alt=\"Picture\" src=\"https://www.loveyourbookstore.com/uploads/1/1/5/5/115507011/loveyourbookstore-hashtag-on-twitter_orig.png\" style=\"border:none; margin-bottom:10px; max-width:100%; width:auto\" /></div>\r\n						</div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</div>\r\n			</div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n<!--EndFragment-->', '<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Adres</strong></td>\r\n			<td>Karab&uuml;k &Uuml;niversitesi Demir &Ccedil;elik Kamp&uuml;s&uuml;<br />\r\n			Kılavuzlar K&ouml;y&uuml; &Ouml;te Karşı &Uuml;niversite Kamp&uuml;s&uuml; Merkez Karab&uuml;k</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Telefon</strong></td>\r\n			<td><a href=\"tel:4440478\">444 0 478</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>E-mail</strong></td>\r\n			<td><a href=\"mailto:iletisim@karabuk.edu.tr\">iletisim@karabuk.edu.tr</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Web</strong></td>\r\n			<td>www.karabuk.edu.tr</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><iframe frameborder=\"0\" height=\"450\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3001.2550114756!2d32.64944681495948!3d41.21621291455287!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x408354ac4492953f%3A0xab3b48ed0392a743!2sKarab%C3%BCk+%C3%9Cniversitesi!5e0!3m2!1str!2str!4v1471528432043\" width=\"100%\"></iframe></p>\r\n\r\n<p>&nbsp;</p>', NULL, 'True');

-- --------------------------------------------------------

--
-- Table structure for table `shopcart`
--

CREATE TABLE `shopcart` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `bookid` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shopcart`
--

INSERT INTO `shopcart` (`id`, `userid`, `bookid`, `quantity`) VALUES
(3, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `name`, `surname`, `image`, `status`, `created_at`, `updated_at`, `address`, `phone`, `city`) VALUES
(1, 'huseyin@gmail.com', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$ZnRLTHl6T2V6R1hINFlxTQ$ZrXm5/VsFcjMnqi3AfEwQ/fZCsc1jsrEdCujuG1Pk1w', 'huseyin', 'yildiz', '49be0361f5e104ba4d42481eb17e6f6d.png', 'True', NULL, NULL, NULL, NULL, NULL),
(2, 'ekrem@gmail.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$NDI5TXYyQVpYZ1RZVTBXLg$qS7IiJw3++Who5any0wgcekRuwWFSxKQt0+dCb36PlM', 'ekrem', 'nalbant', '20ac5783f840a6f37761a996c15e0554.jpeg', 'True', NULL, NULL, NULL, NULL, NULL),
(3, 'mete@gmail.com', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$VnU1SWZNekpUckI3UmlTMA$cXf9kaPT8Bq32l6e6rxjf33erNC323pQkyRnbWD3LEI', 'mete', 'Kafadar', '3443efbdeebab0b17baa82cf92f5fa82.png', 'True', NULL, NULL, NULL, NULL, NULL),
(4, 'melike@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$NEQ3dmhKWWJlTk9vT0t3Uw$jdUlqITVcEgN6kI5YrU3vQozj3/N2vtj5+b/1NxDq9I', 'melike', 'kafadar', '2dfa2853381f3c38bc805880af25d321.jpeg', 'True', NULL, NULL, NULL, NULL, NULL),
(6, 'murat@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$a3NXbnB6djFoWTA2SE4xQQ$AUP3/I7DMt2bojpQUbEQAmnzTNqNBWw048F96qX8XWQ', 'murat', 'ati', 'd55e93e87ba2b2ee4f74096cac4d905f.jpeg', 'True', NULL, NULL, NULL, NULL, NULL),
(8, 'mrmuhendis@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$LlozaE1ZckhuTVI1UUJzZQ$9HhPBfu+I8vkL8riyV5Z+kam8kD51x7sqrnIBh0OGpQ', 'muhendis', 'bey', 'aa999f5170f29071b5e957a275195f13.jpeg', 'True', NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CBE5A33112469DE2` (`category_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C53D045F16A2B381` (`book_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopcart`
--
ALTER TABLE `shopcart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shopcart`
--
ALTER TABLE `shopcart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `FK_CBE5A33112469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `FK_C53D045F16A2B381` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
