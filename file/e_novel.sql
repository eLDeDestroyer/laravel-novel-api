-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 04, 2025 at 07:24 AM
-- Server version: 8.0.42-0ubuntu0.24.04.1
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_novel`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image_path` text NOT NULL,
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `description`, `image_path`, `user_id`) VALUES
(1, 'Kala Itu Langit Biru', 'Di sebuah kota kecil yang tenang, Awan kembali setelah sepuluh tahun merantau. Hanya ada satu alasan: kenangan. Kenangan tentang langit biru di suatu siang yang sunyi—dan tentang Biru, gadis yang dulu mengajarkannya bagaimana mencintai tanpa kata, dan melepaskan tanpa air mata.\n			Saat masa lalu mulai mengetuk kembali lewat tempat-tempat yang mereka lalui bersama, Awan menemukan bahwa tak semua hal bisa dikembalikan ke tempat semula. Namun, langit tetap biru—seperti janjinya yang tak pernah diucap.\n			“Kala Itu Langit Biru” adalah kisah tentang pertemuan, kehilangan, dan keberanian untuk melihat ke belakang agar bisa benar-benar melangkah ke depan.', 'uploads/01.jpg', 1),
(2, 'Bersama Kamu', 'Bagi Langit, hidup selalu berjalan lurus dan teratur, sampai ia bertemu dengan Dara—gadis dengan senyum musim semi dan cara pandang yang mengubah segalanya. Di antara hujan sore, musik indie, dan tumpukan catatan kuliah yang tak selesai-selesai, tumbuhlah perasaan yang tak pernah ia rencanakan.\n			“Bersama Kamu” adalah kisah tentang persahabatan yang menjelma jadi cinta, tentang memilih untuk tetap tinggal meski dunia meminta pergi. Sebuah perjalanan emosional untuk mengerti bahwa kadang, pulang bukanlah tempat—tapi seseorang.', 'uploads/02.jpg', 1),
(3, 'Merajut Mimpi', 'Nara adalah anak penjual kain yang tinggal di pinggir pasar kota. Hidupnya sederhana, penuh warna, dan kadang diselimuti kekhawatiran tentang masa depan. Namun, ia punya satu impian yang tak pernah ia lepaskan: menjadi perancang busana yang bisa mempersembahkan karyanya ke panggung dunia.\n			Suatu hari, ia bertemu dengan Elang, pemuda perantau yang diam-diam sedang mencari arti hidup setelah meninggalkan pekerjaan kantoran. Dari kain-kain yang dijahit dengan harapan hingga percakapan larut malam tentang hidup dan kehilangan, mereka mulai menenun sesuatu yang lebih besar dari sekadar mimpi.\n			“Merajut Mimpi” adalah kisah tentang kerja keras, keberanian mengejar cita, dan menemukan makna hidup di sela-sela benang takdir.', 'uploads/03.jpg', 1),
(4, 'Petualangan Anna', 'Anna adalah gadis kecil berusia sembilan tahun yang gemar membaca buku-buku fantasi dan menjelajah alam sekitar rumahnya di desa pelangi. Suatu hari, saat mengikuti seekor kupu-kupu berwarna-warni, ia tersesat di sebuah hutan misterius yang tak pernah ia lihat sebelumnya—Hutan Pelangi. Tapi hutan ini bukan hutan biasa. Pohonnya bisa bicara, sungainya berkilau seperti kaca pelangi, dan hewan-hewannya menyimpan rahasia kuno.', 'uploads/04.jpg', 1),
(5, 'Hai, Nak', 'Sinta, seorang ibu muda yang baru saja kehilangan anaknya karena kecelakaan tragis, memutuskan pindah ke rumah tua di pinggir kota untuk memulihkan diri. Namun sejak malam pertama, ia mendengar suara-suara aneh dari kamar anak yang kosong—suara mainan bergemerincing, bisikan lirih, dan suara anak kecil yang berkata, \"Hai, Nak.\"\n			Awalnya Sinta mengira semua itu adalah halusinasinya sendiri. Namun perlahan, suara-suara itu menjadi nyata. Mainan bergerak sendiri. Lukisan keluarga bergeser. Dan yang paling mengerikan: suara anak kecil itu memanggilnya setiap malam, semakin dekat... semakin nyata.\n			Apakah itu arwah anaknya? Ataukah sesuatu yang lebih gelap sedang mencoba masuk ke hidupnya melalui celah kehilangan?', 'uploads/05.jpg', 1),
(6, 'Indgigo Tapi Penakut', 'Aira, seorang gadis indigo berusia 15 tahun, pindah ke rumah tua warisan neneknya di desa terpencil Lereng Wana. Dengan kemampuan melihat makhluk gaib sejak kecil, ia terbiasa dengan dunia lain. Tapi rumah ini berbeda. Ada lorong yang tak pernah berujung, pintu terkunci dengan segel gaib, dan makhluk-makhluk yang tak hanya ingin dilihat—tapi juga ingin keluar. Dalam upayanya mengungkap rahasia rumah itu, Aira menemukan bahwa kemampuan indigonya bukan sekadar anugerah, melainkan kunci ke dalam petualangan gelap yang berbahaya dan menantang nyawanya.', 'uploads/06.jpg', 1),
(7, 'Penjelajah Antariksa: Bencana di Planet Poe', 'Tahun 3127, manusia telah menjelajahi berbagai sudut galaksi. Kapten Elara, pemimpin muda dari armada ekspedisi bintang Orionis VII, ditugaskan menjelajahi planet misterius bernama Poe—planet yang dulunya dihuni peradaban tinggi, tapi kini sunyi tak berpenghuni. Namun sesampainya di sana, mereka menemukan bahwa Poe tidak mati… ia tertidur. Dan sesuatu sedang menunggu untuk terbangun. Dengan krunya yang terdiri dari ilmuwan, penjelajah, dan makhluk alien sahabat, Elara harus menghadapi misteri, bencana alam kosmik, dan kekuatan kuno yang bisa menghancurkan lebih dari sekadar planet. Ia harus memilih antara menyelamatkan misi… atau menyelamatkan alam semesta.', 'uploads/07.jpg', 1),
(8, 'Skripsick', 'Bayangkan hidup tenang di semester tua, saat semua teman sudah wisuda... kecuali kamu. Inilah kisah Gani, mahasiswa abadi jurusan Ilmu Komunikasi, yang sudah lima kali ganti judul skripsi dan tiga kali ganti dosen pembimbing. Dari perjuangan menghadapi dosen killer, printer ngadat, sampai drama dengan teman seperjuangan yang mulai buka bisnis kopi, skripsi bukan lagi soal penelitian — tapi soal bertahan hidup. Satu-satunya tujuan Gani: lulus tahun ini... atau kabur ke luar negeri.', 'uploads/08.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `book_category`
--

CREATE TABLE `book_category` (
  `id` int NOT NULL,
  `book_id` int NOT NULL,
  `category_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `book_category`
--

INSERT INTO `book_category` (`id`, `book_id`, `category_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 4, 3),
(5, 5, 4),
(6, 6, 3),
(7, 6, 4),
(8, 7, 3),
(9, 7, 5),
(10, 8, 6);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`) VALUES
(1, 'romance'),
(2, 'drama'),
(3, 'adventure'),
(4, 'horror'),
(5, 'fantasy'),
(6, 'comedy');

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `book_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `book_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `book_id`) VALUES
(1, 1, 3),
(2, 2, 3),
(3, 3, 3),
(4, 4, 3),
(5, 5, 3),
(6, 6, 3),
(7, 1, 2),
(8, 2, 2),
(9, 3, 2),
(10, 4, 2),
(11, 5, 2),
(12, 1, 5),
(13, 2, 5),
(14, 3, 5),
(15, 4, 5),
(16, 1, 7),
(17, 2, 7),
(18, 3, 7),
(19, 1, 8),
(20, 2, 8),
(21, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int NOT NULL,
  `page` int NOT NULL,
  `text` text NOT NULL,
  `book_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page`, `text`, `book_id`) VALUES
(1, 1, 'Kereta berhenti perlahan di stasiun kota kecil itu. Awan melangkah turun, menenteng koper kecil berwarna cokelat yang sudah mulai terkelupas di sudut-sudutnya. Angin sore menyambutnya dengan bau tanah dan suara jangkrik yang tak pernah benar-benar ia lupakan.\nLangkahnya terhenti sejenak di pintu keluar stasiun. Ia mengangkat kepalanya, memandang langit yang masih biru seperti dulu. Ada sesuatu yang menggantung di sana—bukan awan, bukan juga cahaya. Mungkin kenangan.\nKota ini tak banyak berubah. Toko kelontong di pojok jalan masih berdiri, meski catnya mulai pudar. Anak-anak kecil berlari di tepi jalan sambil tertawa, seperti versi kecil dari dirinya dan Biru dulu.\nIa menelusuri jalanan pelan-pelan, setiap langkahnya seperti membuka kembali halaman lama buku hidupnya. Ia melewati taman kecil tempat dulu mereka biasa duduk sambil berbagi mimpi. Pohon flamboyan di tengah taman itu masih berdiri, kini jauh lebih besar dari ingatannya.\nSaat malam mulai turun, Awan tiba di rumah kosong peninggalan orang tuanya. Ia membuka pintu perlahan, mencium bau kayu tua dan debu yang tertahan waktu. Di ruang tamu, jam dinding masih menggantung—berhenti di pukul dua siang, seolah menunggu waktu yang sama datang kembali.\n“Selamat datang kembali, Awan,” bisiknya pada dirinya sendiri, pada rumah, pada masa lalu yang belum usai', 1),
(2, 2, 'Langkah kaki Awan membawanya ke bangunan tua dengan papan nama kusam: \"Perpustakaan Daerah Nusa.\" Pintu kayunya berderit saat dibuka, seperti menyapa pengunjung lama yang pulang dari pengembaraan.\n\nIa berjalan di antara rak-rak buku yang berdebu, menyentuh punggung buku dengan jari-jarinya yang gemetar pelan. Di sudut ruangan, masih ada meja kayu tua tempat ia dan Biru dulu duduk berjam-jam, membaca tanpa suara.\n\nTiba-tiba, matanya tertumbuk pada sebuah buku puisi karya Sapardi Djoko Damono. Ia menariknya, membuka halaman pertama—dan di sana, pada halaman ketiga puluh dua, ada tulisan tangan yang sangat ia kenal:\n\n\"Jika suatu hari kamu kembali, lihatlah langit dari tempat ini. Aku mungkin tidak ada, tapi biru akan selalu menyapa kita.\"\n\nTanda tangan di bawahnya hanya satu kata: Biru.\n\nAwan menutup buku itu perlahan. Ia menatap langit dari jendela perpustakaan yang retak. Masih biru. Masih sama. Tapi dadanya terasa berat, seperti ada yang belum selesai.\n\nIa duduk lama di kursi itu, mencoba merangkai waktu yang sudah pecah. Ia tahu, ini bukan sekadar perjalanan pulang. Ini perjalanan untuk menyusun kembali serpihan yang dulu ia tinggalkan', 1),
(3, 3, 'Warung nasi Bu Rini berdiri di pojok jalan seperti dulu. Aroma nasi goreng dan sambal terasi menyambutnya saat ia melangkah masuk. Ruangan kecil itu penuh dengan kursi plastik biru dan meja kayu yang dilapisi taplak bunga-bunga.\n\n\"Mas Awan?\" Bu Rini menyapanya, matanya membelalak mengenali wajah yang lama tak ia lihat.\n\n\"Iya, Bu. Lama nggak ke sini.\"\n\n\"Sudah sepuluh tahun, ya? Duduk, duduk. Saya buatkan teh hangat dan nasi rawon favoritmu.\"\n\nAwan tersenyum kecil, duduk di meja yang biasa ia dan Biru tempati. Ia bisa melihat bayangan gadis itu di seberang meja—senyumnya yang cerah, cara ia menyendok nasi perlahan, dan tawanya saat mereka berbicara tentang puisi atau langit.\n\nIa menyentuh permukaan meja, berharap waktu bisa benar-benar mundur. Tapi tidak. Hanya ingatan yang terus bermain seperti film usang di benaknya.\n\nSaat makanan datang, Awan makan pelan-pelan. Seolah setiap sendok membawa kembali rasa yang dulu, rasa yang tak berubah meski segalanya telah berlalu. Dan di tiap tegukan teh, ia merasa semakin dekat dengan masa lalu yang ingin ia pahami kembali.', 1),
(4, 4, 'Hari itu cerah. Langit membentang biru tanpa cela, seperti kanvas yang belum disentuh kuas. Awan berdiri di taman kota, memandangi langit dari tempat Biru pernah mengajaknya duduk diam.\n\n\"Kalau langit ini masih biru, aku masih di sini,\" begitu kata Biru, sepuluh tahun lalu. Kata-kata itu terus membayang dalam pikirannya, seperti gema yang tak mau pergi.\n\nAwan duduk di bangku yang sama. Ia memejamkan mata, membiarkan cahaya matahari menembus kelopak matanya yang tertutup. Dalam keheningan, ia mencoba mendengar suara Biru. Tapi yang terdengar hanya suara angin dan dedaunan yang gugur pelan.\n\nIa meraih buku catatan kecil dari sakunya. Di sana, ia menulis satu kalimat: “Langit masih biru, tapi aku tak tahu di mana kamu.”', 1),
(5, 5, 'Di rumah lamanya, Awan menemukan kotak kayu kecil di bawah tempat tidur. Ia membukanya perlahan. Di dalamnya ada tumpukan kertas, foto-foto lama, dan satu amplop berwarna krem dengan namanya tertulis di depan: \"Untuk Awan.\"\n\nTangannya gemetar saat membuka surat itu. Tertanggal dua minggu setelah ia pergi meninggalkan kota. Tulisan Biru rapi dan halus, seperti suaranya yang lembut.\n\n“Awan, jika kamu membaca ini, berarti kamu akhirnya pulang. Aku tidak tahu apakah kamu masih mengingatku, atau langit biru itu. Tapi aku ingin kamu tahu bahwa aku menunggumu. Bukan untuk kembali, tapi untuk mengerti.”\n\nSurat itu diakhiri dengan satu kalimat yang membuat Awan menutup mata, menahan air yang menggantung di ujung pelupuk:\n\n“Kita tak perlu kembali untuk bersama, cukup mengenang tanpa kehilangan.”', 1),
(6, 6, 'Di toko buku kecil yang baru direnovasi, Awan membeli buku secara acak. Penjaga toko, perempuan seusia Biru, menatapnya lama.\n\n\"Kamu Awan? Temannya Biru, ya?\"\n\n\"Iya... kamu siapa?\"\n\n\"Aku Rani. Teman kuliah Biru. Dia sering cerita tentang kamu. Tentang langit biru.\"\n\nAwan tersenyum kaku. Hatinya bergetar mendengar nama itu disebut oleh orang asing. Rani mengajaknya duduk, lalu bercerita. Tentang Biru yang memilih tetap tinggal, tentang mimpinya membangun taman baca untuk anak-anak, dan tentang satu janji yang tak pernah ia lupakan.\n\n\"Biru selalu bilang, kalau Awan kembali, dia pasti akan tahu lewat langit.\"', 1),
(7, 7, 'Rani mengajak Awan ke sebuah taman kecil di pinggir kota. Ada papan bertuliskan \"Taman Baca Biru Langit\". Di sana, anak-anak duduk membaca, tertawa, berlari. Di sudut taman, ada bangku kayu dengan ukiran kecil:\n\n“Untuk Awan, yang mengajarkanku melihat langit.”\n\nAwan berdiri lama di situ. Dadanya sesak, tapi hangat. Ia merasa dekat, seolah Biru tak benar-benar pergi. Ia duduk, mengambil buku anak-anak, dan mulai membaca bersama mereka. Dalam tawa dan cerita, ia merasa utuh kembali.', 1),
(8, 8, 'Hujan turun saat malam. Awan berjalan di bawah payung, menyusuri jalanan sepi yang dulu mereka lewati bersama. Di sebuah gang sempit, ia berhenti. Dindingnya penuh coretan puisi, sebagian dari Biru.\n\nIa membaca satu per satu. Lalu menambahkan satu baris miliknya:\n\n“Aku pulang, Biru. Dan langit masih sama.”', 1),
(9, 9, 'Malam itu, Awan bermimpi. Ia melihat Biru duduk di bangku taman, mengenakan gaun putih, tersenyum padanya. Mereka tidak bicara, hanya saling pandang.\n\nSaat Awan hendak meraih tangannya, Biru berkata lirih:\n\n\"Jangan berhenti hanya karena aku tak di sini. Lihat langit, dan kamu akan tahu jawabannya.\"\n\nIa terbangun dengan mata basah. Tapi kali ini, ia tersenyum.', 1),
(10, 10, 'Pagi itu, Awan menulis surat. Surat balasan untuk Biru, yang akan ia tinggalkan di bangku taman tempat mereka dulu duduk.\n\n“Aku sudah kembali. Aku sudah tahu. Terima kasih telah menungguku lewat langit.”\n\nIa menatap ke atas. Langit masih biru. Dan untuk pertama kalinya, ia merasa bisa benar-benar melangkah maju.\n\nKarena meski tak lagi bersama, mereka telah menyatu dalam langit yang sama.', 1),
(11, 1, 'Langit tidak menyukai hujan. Baginya, hujan hanya memperlambat langkah, mengaburkan pandangan, dan mengingatkan pada masa kecil yang sepi. Tapi hari itu berbeda. Hujan turun deras di luar gedung kampus saat ia sedang membaca buku sendirian di kantin. Suasana dingin, gemericik di jendela, aroma kopi yang basi. Ia sendirian, seperti biasa.\n\nTiba-tiba seorang gadis datang, duduk di depannya tanpa permisi, mengibaskan air hujan dari jaket jeans lusuhnya, dan tersenyum.\n\n\"Boleh nebeng duduk? Semua kursi penuh.\"\n\nLangit menoleh, sedikit terkejut. Ia mengangguk pelan. Tidak tahu bahwa senyum itu akan tinggal jauh lebih lama dari hujan yang saat itu mengguyur kota.\n\nGadis itu memperkenalkan diri. Dara. Mahasiswi jurusan seni. Satu angkatan di bawah Langit. Pembicaraan mereka ringan, soal kopi yang hambar, soal dosen killer, soal buku yang belum sempat dibaca sampai habis.\n\nTapi ada sesuatu dalam cara Dara tertawa yang membuat waktu terasa lebih lambat. Sesuatu yang membuat Langit ingin bertanya lebih banyak, tapi memilih diam dan mengamati.\n\n“Nama kamu Langit?”\n\nIa mengangguk. “Iya.”\n\nDara tersenyum lebar. “Nama yang bagus. Aku suka langit.”\n\nLangit menatapnya lama. Entah kenapa, hatinya ikut hangat meski tubuhnya masih kedinginan. Hujan berhenti, tapi mereka belum ingin beranjak. Saat akhirnya Dara berdiri, ia berkata,\n\n“Semoga kita ketemu lagi, Langit.”\n\nItu kalimat sederhana. Tapi cukup untuk membuat Langit menutup bukunya dan tersenyum kecil. Ia tahu, ia akan mengingat hari ini.', 2),
(12, 2, 'Hari-hari setelah itu, Langit kembali ke kantin di jam yang sama. Kadang sambil membaca, kadang hanya duduk tanpa tujuan. Tapi Dara tidak datang.\n\nLalu, beberapa minggu kemudian, mereka bertemu lagi. Kali ini di perpustakaan. Dara mengenali Langit duluan. Ia datang sambil membawa tumpukan buku tentang seni dan filsafat, lalu duduk di seberang meja.\n\n“Langit, si penyendiri dari kantin!” katanya sambil tersenyum.\n\nMereka tertawa. Dan sejak saat itu, mereka mulai sering bertemu. Di kelas, di taman kampus, di toko roti favorit Langit. Mereka mulai berbagi makanan, cerita, dan tawa.\n\nSuatu malam, mereka duduk berdampingan di taman kampus, berbagi earphone sambil memutar lagu-lagu yang mereka suka. Langit memutar lagu dari ponselnya.\n\n“Ternyata kamu suka Efek Rumah Kaca juga?”\n\n“Banget,” jawab Dara. “Apalagi lagu yang ini…”\n\nLagu pun mengalun. Pelan. Tenang. Dan untuk beberapa menit, dunia terasa tidak penting. Hanya ada musik, mereka berdua, dan senyap yang nyaman.\n\n“Rasanya seperti lagi dengerin isi kepala sendiri,” kata Dara sambil menatap langit malam.\n\nLangit mengangguk. “Dan kamu bagian yang bikin suaranya lebih tenang.”\n\nDara tertawa kecil. Malam itu, di bawah langit berbintang, Langit tahu bahwa hidupnya perlahan sedang berubah. Ada seseorang yang mulai mengambil tempat di ruang paling tenang dalam dirinya.', 2),
(13, 3, 'Minggu sore. Dara mengajak Langit ke ruang seni, tempat ia sering melukis. Ruangan itu seperti dunia kecil yang asing tapi hangat bagi Langit. Dindingnya penuh kanvas, sebagian masih kosong, sebagian penuh warna yang kacau dan indah. Ada aroma cat minyak yang khas.\n\n“Aku nggak melukis untuk jadi bagus,” kata Dara sambil mencelupkan kuas. “Aku melukis supaya aku bisa tetap waras.”\n\nLangit duduk di lantai, memperhatikan Dara bekerja. Ia tidak bicara banyak. Ia hanya menikmati caranya menggores warna, caranya diam tapi hidup.\n\nDara mulai menggambar sesuatu yang tak bisa dijelaskan dengan kata-kata. Sosok dua orang di tengah hujan, berdiri berhadapan, saling memayungi dengan tangan mereka sendiri.\n\n“Apa itu kita?” tanya Langit akhirnya.\n\nDara tersenyum. “Mungkin.”', 2),
(14, 4, 'Tiap Jumat malam, mereka punya kebiasaan: naik ke atap gedung lama kampus. Di sana mereka berbagi cerita, melihat langit, dan membicarakan hal-hal kecil yang tak pernah sempat disampaikan di bawah cahaya lampu.\n\nMalam itu langit bersih, hanya ada sedikit awan dan banyak bintang. Dara bersandar di dinding, memeluk lututnya.\n\n“Langit, aku pernah takut banget sama kesepian.”\n\nLangit menatap wajahnya yang hanya disinari lampu jalan jauh di bawah. “Sekarang?”\n\n“Aku masih takut. Tapi sejak ada kamu... takutnya jadi berkurang.”\n\nLangit menggenggam tangannya. Diam. Tapi erat.', 2),
(15, 5, 'Mereka memutuskan untuk membolos sehari penuh dari rutinitas. Tanpa ponsel. Tanpa jam tangan. Tanpa rencana. Mereka naik angkot entah ke mana, turun di pasar lama, makan bakso kaki lima, lalu naik bus ke pantai.\n\nDi tepi pantai, mereka berjalan tanpa sepatu. Air laut menyentuh kaki mereka. Dara menggambar di pasir, Langit menulis puisi.\n\nSaat matahari hampir tenggelam, mereka duduk di bebatuan, diam dan damai.\n\n“Kalau waktu bisa berhenti,” kata Langit, “aku mau di sini, sama kamu.”\n\nDara tidak menjawab. Ia hanya menyandarkan kepala di bahu Langit.', 2),
(16, 6, 'Langit menulis surat untuk Dara. Bukan karena ia ingin romantis. Tapi karena ada terlalu banyak hal yang sulit diucap.\n\nIa menulis tentang ketakutan. Tentang rasa kagum. Tentang keinginan untuk tetap bersama tapi juga kecemasan bahwa semuanya bisa berubah kapan saja.\n\n“Aku jatuh cinta. Diam-diam. Dalam-dalam. Tapi aku takut kamu akan pergi kalau aku bilang.”\n\nSurat itu tidak pernah dikirim. Tapi ia simpan di buku harian—dan di dada.\n\n', 2),
(17, 7, 'Perasaan Langit tumbuh semakin dalam. Ia mulai memerhatikan cara Dara mengeja kata. Cara ia tertawa saat gugup. Cara ia menatap matahari sore seolah sedang berbicara dengan masa lalunya sendiri.\n\nTapi ia tetap diam. Karena Dara pernah bilang, “Aku takut kalau semuanya berubah hanya karena satu kata.”\n\nDan Langit mengerti. Maka ia memilih menjaga. Meski dari kejauhan.', 2),
(18, 8, 'Tiba-tiba, Dara menghilang.\n\nTidak ada pesan. Tidak ada kabar. Tidak di kelas. Tidak di taman.\n\nLangit menunggu. Satu hari. Dua hari. Tujuh hari. Ia mulai resah. Ia menulis pesan tapi tidak dikirim. Ia mendatangi ruang seni, tapi kosong.\n\nLalu suatu sore, Dara muncul. Wajahnya letih. Matanya sembab.\n\n“Maaf aku pergi. Aku... butuh waktu.”\n\nLangit tidak bertanya. Ia hanya menatapnya. Dan dalam diam, Dara tahu: Langit tetap ada.', 2),
(19, 9, 'Dara menghilang lagi. Lebih lama. Kali ini Langit khawatir sungguhan. Ia mencari tahu lewat teman-teman. Lewat dosen. Lewat Raka, sahabat Dara.\n\nDari Raka, ia tahu: Dara sedang menjalani terapi. Depresi. Tekanan batin dari masa lalu yang belum selesai.\n\nLangit menulis surat lagi. Dan kali ini, ia kirimkan.\n\n“Kalau kamu merasa dunia terlalu berat, kamu boleh istirahat di pundakku. Aku tidak akan menuntut apa-apa. Hanya ingin kamu tahu: kamu nggak sendirian.', 2),
(20, 10, 'Beberapa minggu kemudian, Dara datang lagi. Pelan. Tidak langsung tertawa. Tidak langsung bercerita. Tapi cukup untuk duduk di sebelah Langit dan berkata,\n\n“Terima kasih karena nggak pergi.”\n\nLangit menatapnya. “Aku nggak bisa pergi. Karena kamu adalah tempat aku pulang.”\n\nDara menghela napas, lalu tersenyum. “Kalau begitu, kita pulang bareng.”\n\nDan sore itu, di bawah langit senja yang temaram, mereka tahu satu hal pasti:\n\nMereka tidak perlu saling memiliki untuk saling tinggal. Karena yang paling penting adalah...\n\n...bersama kamu.', 2),
(21, 1, 'Mesin jahit tua di pojok ruang berderak pelan, nyaris tenggelam oleh riuh suara pasar pagi yang menggema dari luar. Nara duduk bersila di lantai ruang belakang kios kecil ibunya, tangannya cekatan menuntun jarum dan benang di atas kain polos berwarna hijau zaitun. Cahaya matahari menerobos kisi jendela, menyinari wajahnya yang serius dan kening yang mulai berkeringat meski hari masih pagi.\n\nIa bukan anak desain. Ia tidak pernah sekolah mode. Ia hanya anak dari penjual kain yang sejak kecil bermain di antara gulungan katun dan sutra, mendengar kisah hidup pelanggan dari balik tirai kios. Tapi satu hal yang ia warisi dari mendiang ayahnya adalah semangat: bahwa mimpi besar bisa dimulai dari benang yang paling kecil.\n\n“Kalau kamu sabar, benang yang kusut pun bisa jadi pola yang indah,” kata ayahnya suatu kali, sambil memperbaiki mesin jahit yang sudah tua itu.\n\nMesin itulah yang kini ia pakai untuk menyelesaikan kebaya pesanan Bu Retno, langganan lama mereka yang akan merayakan ulang tahun pernikahan ke-30. Nara tak dibayar banyak. Tapi tiap jahitan yang ia buat selalu ia niatkan dengan sungguh-sungguh, seolah tiap helai kain adalah pijakan menuju panggung impiannya sendiri.\n\n“Ra, kamu nggak telat kuliah?” suara Ibu terdengar dari depan kios.\n\nNara menghentikan mesin, melirik jam dinding. “Astaga! Sudah hampir jam delapan!”\n\nIa buru-buru menggunting sisa benang, menata kain jadi rapi, lalu menggenggam map sketsa yang selalu ia bawa ke mana-mana. Di dalamnya, ada puluhan rancangan gaun yang belum pernah dilirik siapa pun—rancangan dari hati, dari impian yang belum punya nama.\n\nSebelum pergi, ia mencium tangan ibunya. “Nanti aku bantu lagi sore, ya.”\n\n“Jangan lupa makan siang,” pesan Ibu, sambil menyelipkan uang dua puluh ribu ke tas kecil Nara.\n\nDi jalan menuju halte, Nara berjalan cepat di antara kaki-kaki orang dewasa yang sibuk berdagang. Angin pagi membawa bau rempah dari warung seberang dan suara tawa anak-anak yang berlarian dengan seragam kusut. Ini bukan kota besar. Tapi bagi Nara, setiap sudutnya menyimpan alasan untuk bermimpi lebih jauh.\n\nDi dalam angkot, Nara membuka map-nya. Salah satu sketsa terbaru bergambarkan gaun dengan motif awan dan langit senja. Ia menulis di bawahnya: “Untuk mereka yang berjalan perlahan, tapi tak pernah berhenti.”\n\nDan ia tahu, meski ia belum punya panggung, belum punya studio, belum punya modal—ia punya benang. Dan benang itu cukup untuk memulai.', 3),
(22, 2, 'Elang kembali datang ke kios dua hari kemudian. Kali ini ia membawa beberapa potong kain yang sudah dijahitnya—hasil latihan pertamanya. Jahitannya masih miring, banyak simpul yang kurang rapi, tapi mata Nara menangkap sesuatu yang lebih penting: ketekunan.\n\n“Mau belajar serius?” tanya Nara sambil menatap jahitan itu.\n\nElang mengangguk. “Aku ingin mulai dari bawah. Aku sudah lelah kerja di belakang meja, duduk dari pagi sampai malam tanpa tahu apa yang benar-benar aku buat.”\n\nSejak hari itu, Elang sering muncul. Kadang sekadar duduk di kursi kecil dekat pintu kios, kadang membantu Ibu Nara menata kain, kadang datang membawa hasil belajar dari buku-buku yang ia pinjam dari perpustakaan kota.\n\nDi antara tumpukan kain dan suara mesin jahit, mereka mulai bicara banyak hal. Tentang impian, tentang kegagalan, dan tentang betapa kerasnya dunia saat seseorang mencoba membangun jalan sendiri.', 3),
(23, 3, 'Nara kini punya rutinitas baru. Sepulang dari kampus, ia langsung membantu ibunya. Lalu malam hari, ia menghabiskan waktu bersama Elang di ruang belakang kios. Mereka membuat pola, menjahit ulang, memperbaiki kesalahan.\n\n“Kenapa kamu nggak ikut lomba desain yang diselenggarakan kampus?” tanya Elang suatu malam.\n\nNara tertawa lirih. “Pendaftaran mahal. Dan aku bukan anak desain, jadi pasti kalah dari mereka yang punya guru dan fasilitas.”\n\n“Tapi kamu punya sesuatu yang mereka nggak punya. Kamu kerja lebih keras.”\n\nElang membuat Nara mulai percaya pada dirinya sendiri. Sedikit demi sedikit, sketsanya berubah jadi prototipe. Gaun sederhana dengan pola yang ia pelajari sendiri. Kemeja dengan motif tenun yang ia kembangkan dari pola tradisional daerah.', 3),
(24, 4, 'Satu malam, kios mereka kemalingan. Beberapa gulung kain mahal hilang. Ibunya hampir pingsan karena syok. Nara menatap mesin jahit tua mereka yang hampir dibawa kabur—hanya selamat karena ia menguncinya di lemari kayu.\n\nHari-hari berikutnya berat. Mereka kehilangan banyak pelanggan karena tidak bisa segera mengisi ulang stok. Nara harus meminjam uang ke koperasi pasar demi menyambung hidup. Tapi ia tidak menyerah.\n\nIa mulai menjahit dari kain sisa, membuat aksesoris sederhana untuk dijual online. Elang membantunya membuka akun media sosial dan memfoto produknya. Satu demi satu, pesanan kecil mulai masuk.', 3),
(25, 5, 'Dua minggu menjelang batas pendaftaran lomba desain di kampus, Elang datang membawa kabar baik.\n\n“Ada beasiswa khusus untuk peserta dari luar jurusan. Aku sudah bantu isi formulirnya. Kamu tinggal tanda tangan.”\n\nNara terkejut, lalu meneteskan air mata. Ia tahu ini kesempatannya. Ia bekerja siang malam menyelesaikan gaun yang terinspirasi dari kisah ibunya—kain batik yang diwariskan dari generasi ke generasi, dipadukan dengan potongan modern yang berani.\n\nHari lomba tiba. Nara gemetar saat mempresentasikan karyanya. Tapi saat ia melihat Elang dan ibunya duduk di deretan kursi belakang, ia merasa kuat..', 3),
(26, 6, 'Nara tidak menang. Namanya bahkan tidak disebut dalam nominasi.\n\nIa menangis malam itu. Bukan karena kalah, tapi karena kecewa pada dirinya sendiri.\n\nTapi Elang mendekatinya dan berkata pelan, “Kamu mungkin tidak menang hari ini, tapi kamu baru saja membuat dirimu dikenal. Lihat akun media sosialmu. Ratusan orang mulai bertanya tentang desainmu.”\n\nDan benar. Keesokan harinya, akun kecil mereka dibanjiri pesan. Ada yang tertarik membeli desain, ada yang ingin bekerja sama.\n\n', 3),
(27, 7, 'Hari-hari berikutnya penuh perjuangan. Pesanan datang, tapi mereka masih terbatas peralatan. Mesin jahit mereka rusak dua kali, dan Nara sempat sakit karena kelelahan.\n\nNamun, ia terus bekerja. Ia bangun jam lima, bantu ibunya, kuliah, menjahit, tidur hanya empat jam sehari. Elang juga mulai menjual kemeja rancangannya secara online.\n\nSatu malam, saat mereka duduk menatap langit dari atap kios, Elang berkata, “Ternyata, merajut mimpi itu butuh jarum yang kuat. Tapi juga tangan yang sabar.”', 3),
(28, 8, 'Sebuah brand kecil dari Jakarta menghubungi mereka lewat media sosial. Mereka tertarik dengan kombinasi desain tradisional dan modern yang dibuat Nara.\n\nMereka menawarkan kerja sama: Nara diminta mengirim tiga sampel dan akan dikurasi untuk acara pameran desain muda nasional.\n\nKembali, Nara berjibaku. Ia pinjam mesin jahit dari tetangga, membeli bahan dari hasil jualan online, dan menyelesaikan tiga gaun dalam empat hari.', 3),
(29, 9, 'Hari keberangkatan ke Jakarta, Nara berdiri lama di depan kios kecil mereka. Ia mencium tangan ibunya, menggenggam erat map berisi desain.\n\n“Bukan soal menang atau kalah,” kata ibunya. “Tapi soal berani maju.”\n\nElang ikut mengantarnya ke stasiun. Di sana, Nara menatap kereta yang mulai bergerak, lalu menoleh pada Elang.\n\n“Terima kasih sudah percaya.”\n\n“Selalu,” jawab Elang. “Jahit mimpimu. Aku tunggu hasilnya.”', 3),
(30, 10, 'Pameran di Jakarta berlangsung meriah. Nara berdiri di antara desainer muda dari seluruh Indonesia. Gaunnya dipajang di pojok ruangan, tapi menarik banyak perhatian karena ceritanya yang mengalir dari tiap jahitan.\n\nSeorang juri menghampirinya. “Desainmu sederhana, tapi jujur. Itu kekuatanmu.”\n\nNara tersenyum. Ia tidak tahu apakah akan menang. Tapi untuk pertama kalinya, ia merasa pantas berada di sini.\n\nDan malam itu, saat lampu sorot panggung menyala ke arah gaunnya, Nara tahu: kerja kerasnya tidak sia-sia. Ia sudah memulai. Ia sedang menjahit jalannya sendiri.\n\nKarena mimpi, seperti kain, tak akan berarti tanpa usaha untuk menjahitnya.', 3),
(31, 1, 'Pagi itu, langit di atas Desa Pelangi tampak lebih cerah dari biasanya. Awan-awan putih menggantung pelan seperti kapas, dan angin semilir meniupkan aroma bunga liar dari bukit utara. Di antara padang rumput yang membentang, Anna berlari kecil sambil membawa buku cerita kesayangannya—tentang kerajaan yang terapung di langit dan naga yang menjaga pelangi.\n\nNamun hari itu berbeda. Saat ia duduk di bawah pohon apel tua untuk membaca, seekor kupu-kupu besar dengan sayap berwarna-warni mendarat di halaman bukunya. Sayapnya memantulkan cahaya seperti kaca mozaik.\n\n\"Wow... kamu dari mana?\" bisik Anna.\n\nKupu-kupu itu mengepakkan sayapnya dan terbang pelan, seakan mengundang Anna untuk mengikutinya. Tanpa ragu, ia berlari mengikuti kupu-kupu itu, melintasi pagar kayu, menyeberangi ladang, dan akhirnya... masuk ke dalam semak lebat yang belum pernah ia lihat sebelumnya.\n\nIa terus berjalan, ranting-ranting menyentuh pipinya, tanahnya lembap, dan udara terasa harum. Hingga ia sadar—ini bukan hutan biasa. Cahaya di dalamnya seperti pelangi yang berpendar di udara. Daun-daunnya berwarna merah muda, ungu, biru laut. Ada suara denting lonceng entah dari mana.\n\n“Ini… Hutan Pelangi?” gumam Anna.\n\nIa tersenyum lebar. Petualangannya baru saja dimulai.', 4),
(32, 2, 'Anna berjalan pelan di antara pepohonan berwarna-warni yang daunnya seperti kristal. Saat ia mendongak, langit di atas hutan ini tak seperti langit biasa. Awan berwarna ungu muda, dan sinar matahari berpendar seperti pelangi.\n			Tiba-tiba, suara lembut memecah keheningan. “Kamu bukan dari sini, kan?”\n			Anna menoleh dan melihat seekor burung ungu besar bertengger di dahan. Burung itu memakai semacam syal dari benang emas, dan matanya cerdas seperti manusia.\n			“Aku Sora. Penjaga langit Hutan Pelangi,” katanya.\n			Anna tersenyum kaget. “Kamu bisa bicara?”\n			“Tentu saja. Semua makhluk di sini bisa, kalau kamu cukup berani untuk mendengar.”\n			Sora lalu terbang melingkari Anna dan menceritakan bahwa warna-warna di hutan perlahan menghilang. “Kabut hitam itu datang dari Utara. Kalau tidak dihentikan, hutan ini akan menjadi abu-abu untuk selamanya.”\n			Anna mengepalkan tangan. “Aku mau bantu.”\n			Sora menatapnya dengan kagum. “Kalau begitu, ikuti aku. Kita mulai petualanganmu.”', 4),
(33, 3, 'Perjalanan pertama mereka membawa Anna ke sebuah danau berkilau seperti cermin pelangi. Airnya tenang, tapi tidak memantulkan bayangan. Di tengah danau, ada batu mengapung—tempat pertama yang menyimpan petunjuk menuju Inti Pelangi.\n			Sora menjelaskan bahwa Anna harus menatap ke dalam air dan menjawab pertanyaan dari dirinya sendiri. “Ini ujian pertama: Kejujuran.”\n			Anna melihat ke dalam air. Alih-alih bayangan, ia melihat dirinya menangis sendirian di ruang kelas, saat teman-temannya mengolok-olok mimpinya menjadi penjelajah dunia.\n			“Apakah kamu takut?” suara dari air bertanya.\n			Anna menarik napas dalam. “Aku takut. Tapi aku tidak mau berhenti.”\n			Air danau berkilau lebih terang. Batu di tengah danau pecah menjadi pelangi kecil, lalu membentuk jalan menuju sisi lain hutan.', 4),
(34, 4, 'Di tengah padang berumput merah, mereka bertemu rusa bermata emas. Rusa itu terlihat tenang namun waspada.\n			“Kenapa kalian datang ke wilayahku?” tanya sang rusa.\n			“Kami mencari Inti Pelangi,” jawab Sora.\n			Rusa menunduk. “Aku bisa bantu. Tapi hanya jika kalian bisa menyeberangi Jembatan Bayangan tanpa ketakutan.”\n			Jembatan Bayangan terbuat dari cahaya. Di bawahnya jurang gelap tak berdasar. Saat Anna melangkah, bayangan ketakutannya muncul: orang tuanya marah, dirinya gagal, sendirian di hutan.\n			Tapi ia terus melangkah. Ia percaya.\n			Saat ia mencapai sisi lain, rusa tersenyum dan menyerahkan sebutir batu kecil yang bersinar. “Bagian dari Inti Pelangi. Kumpulkan tujuh.”', 4),
(35, 5, 'Perjalanan membawa mereka ke lembah bunga yang dihuni peri kecil. Tapi peri ini tak berbicara biasa. Ia hanya menyampaikan pesan lewat teka-teki:\n			\"Tanpa suara, aku bisa bicara. Tanpa tubuh, aku bisa terbang. Aku adalah...?\"\n			Anna berpikir keras. “Mimpi?”\n			Peri tersenyum. “Benar.”\n			Ia menyerahkan kelopak bunga perak yang berubah menjadi kristal warna-warni. Batu kedua berhasil didapat.', 4),
(36, 6, 'Tiba-tiba, hujan turun. Tapi bukan air biasa. Ini hujan warna. Saat hujan menyentuh kulit, warnanya berubah mengikuti suasana hati.\n			Anna yang sedang ragu berubah biru. Tapi perlahan, saat ia mulai percaya diri, tubuhnya bersinar hijau cerah.\n			Hujan ini adalah ujian ketiga: Emosi. Anna belajar bahwa mengenali dan mengendalikan perasaan adalah bagian penting dari perjalanan.\n			Setelah hujan reda, mereka menemukan batu ketiga di bawah pelangi ganda.\n			', 4),
(37, 7, 'Akhirnya mereka memasuki wilayah kabut. Semua warna menghilang. Sora menjadi lemah.\n			Anna harus berjalan sendiri. Di dalam kabut, ia bertemu bayangannya sendiri yang mengolok-olok: “Kamu cuma anak kecil. Tidak ada yang percaya padamu.”\n			Tapi Anna melawan. Ia mengingat semua yang sudah ia lakukan. Ia berteriak, “Aku bukan takut. Aku hanya belum selesai.”\n			Kabut terbelah. Batu keempat muncul dari dalam tanah.', 4),
(38, 8, 'Di tengah hutan paling dalam, berdiri Pohon Tertua. Dahan-dahannya menyentuh langit.\n			Pohon ini memberi ujian terakhir: Pengorbanan.\n			Anna diminta menyerahkan sesuatu yang paling ia sayangi. Ia membuka tas kecil dan mengeluarkan buku cerita favoritnya.\n			“Aku ingin menyelamatkan dunia ini lebih dari membaca tentang dunia lain.”\n			Pohon menyerap buku itu dan memberikan tiga batu terakhir—melengkapi Inti Pelangi.', 4),
(39, 9, 'Dengan semua batu di tangan, Anna dan Sora kembali ke tengah hutan. Mereka menyatukan ketujuh batu di atas altar cahaya.\n			Pelangi meledak di langit. Warna kembali. Kabut hilang.\n			Hutan bersorak. Peri menari. Rusa berlari bebas. Sora mengepak tinggi ke langit.', 4),
(40, 10, 'Anna terbangun di bawah pohon apel. Kupu-kupu masih di atas bukunya.\n			Ia pulang ke rumah sambil membawa bunga kristal dari hutan.\n			Saat ibunya bertanya, “Kamu dari mana?”\n			Anna hanya tersenyum. “Aku baru saja menjahit pelangi.”\n			Dan meski tak ada yang percaya sepenuhnya, Anna tahu satu hal:\n			Petualangan itu nyata. Dan ia tidak akan pernah sama lagi.', 4),
(41, 1, 'Kabut turun cepat sore itu saat Sinta berhenti di depan rumah barunya—sebuah bangunan tua bergaya kolonial yang berdiri sendirian di ujung jalan berbatu. Rumah itu besar, terlalu besar untuk ia tinggali sendiri, tapi sepi dan murah. Agen properti tak banyak bicara saat ia membayar tunai dua bulan lalu. Ia tidak peduli. Ia hanya ingin pergi jauh dari kota, jauh dari ingatan akan kecelakaan itu.\n\nTangannya menggenggam erat kunci tua yang baru saja ia ambil dari bawah pot bunga depan pintu. Ia sempat mengira tak ada orang yang akan mempercayakan rumah sebesar ini untuk ditinggali sendirian, tapi anehnya, proses pembelian berjalan sangat cepat—terlalu cepat. Tanpa banyak pertanyaan, tanpa banyak syarat.\n\nSinta membawa dua koper, satu kotak mainan anak, dan sebuah bingkai foto kecil yang selalu ia letakkan di sisi tempat tidur. Di dalamnya, foto putranya, Dion, tersenyum dengan gigi ompong dan tangan kecilnya menggenggam boneka kelinci. Hatinya teriris setiap kali menatap foto itu, tapi ia belum sanggup menyimpannya.\n\nRuangan dalam rumah dipenuhi debu dan aroma kayu tua yang lembap. Lantai kayunya berderit setiap kali diinjak, dan cat di dinding mengelupas seperti kulit yang menua. Tapi Sinta merasa, setidaknya di tempat ini ia bisa sendiri. Menangis sendiri. Rindu sendiri.\n\nMalam pertama terasa tenang. Terlalu tenang. Sinta duduk di kursi rotan tua di dekat jendela, menatap angin menggerakkan tirai tipis. Ia menyeduh teh hangat dan membuka buku yang tak pernah ia sentuh sejak Dion meninggal. Di luar, suara jangkrik samar-samar terdengar, diselingi deru angin yang sesekali mengetuk jendela.\n\nSaat jarum jam mendekati tengah malam, Sinta hampir tertidur di kursinya. Tapi tiba-tiba...\n\n“Kriiiing... krijiing...”\n\nBunyi mainan bergemerincing terdengar dari lantai atas.\n\nSinta membuka matanya lebar. Jantungnya berdegup keras. Ia mengenal suara itu. Itu suara dari bola mainan Dion—bola warna-warni dengan lonceng di dalamnya yang akan berbunyi jika terguling.\n\nTidak mungkin. Bola itu disimpan di dalam kotak mainan yang belum ia buka.\n\nIa berdiri perlahan, menahan napas, menaiki anak tangga satu per satu sambil memegang senter dari dapur. Setiap anak tangga berderit pelan, seperti mengeluh karena beban waktu. Lorong di lantai dua tampak lebih gelap dari seharusnya, meski bulan purnama bersinar terang di luar.\n\nDi ujung lorong gelap, pintu kamar yang ia siapkan sebagai kamar Dion terbuka sedikit. Ia yakin telah menutupnya sore tadi. Lampu di langit-langit tidak menyala. Ia hanya mengandalkan cahaya senter kecil yang berkedip-kedip.\n\nTangannya gemetar saat mendorong pintu itu. Ruangan itu kosong. Dindingnya polos, hanya ada kotak mainan yang belum dibuka di pojok ruangan.\n\nDan di tengah lantai kayu... bola warna-warni Dion terguling pelan ke arahnya.\n\n“Tidak...” bisik Sinta.\n\nIa mundur perlahan. Tapi sebelum ia sempat keluar dari ruangan, terdengar suara pelan di belakangnya.\n\n“...Hai, Nak...”\n\nSuara itu bukan suara Dion. Terlalu dalam. Terlalu hampa. Dan terlalu... dekat.', 5),
(42, 2, 'Keesokan paginya, Sinta duduk di dapur dengan secangkir kopi yang sudah dingin. Bola Dion masih berada di atas meja makan, bukti bahwa suara semalam bukan mimpi. Ia memandang ke arah kotak mainan yang belum dibuka sejak pindahan.\n\nDengan tangan gemetar, ia membuka tutupnya. Di dalamnya tersusun rapi mainan-mainan Dion: mobil-mobilan kecil, buku gambar, boneka kelinci kesayangannya. Tapi yang membuatnya tercekat adalah lembaran kertas lusuh di bawah boneka.\n\nSebuah catatan dengan tulisan tangan kecil yang sangat ia kenal.\n\n\"Aku di sini, Bu. Jangan menangis.\"\n\nAir matanya jatuh tanpa suara. Ia meremas kertas itu, memeluk boneka kelinci Dion, dan menangis lama. Tapi saat ia mengangkat kepalanya, boneka itu seolah... tersenyum.\n\nDan dari atas, terdengar suara langkah kaki kecil—berlari. Padahal rumah itu hanya dihuni oleh dirinya seorang.', 5),
(43, 3, 'Matahari belum sepenuhnya muncul ketika Sinta terbangun karena suara derit pelan dari lantai bawah. Ia mengira itu suara rumah yang mengembang karena suhu malam, tapi perasaannya mengatakan lain. Ia turun perlahan, menyusuri lorong menuju ruang tengah, dan berhenti di depan dinding tempat ia menggantung dua lukisan besar—satu foto keluarga terakhir bersama Dion, satu lagi lukisan tua yang sudah menempel sejak rumah itu dibeli.\n\nTapi kini posisi keduanya berubah.\n\nFoto keluarganya yang sebelumnya menggantung lurus di tengah kini bergeser ke kanan, nyaris menempel pada lukisan tua berbingkai emas yang menggambarkan seorang ibu dan anak dengan wajah yang samar, hampir memudar. Sinta yakin benar, semalam ia memastikan posisi semua bingkai sudah rapi.\n\nIa mendekat. Lukisan tua itu kini terlihat berbeda. Warna wajah anak kecil di dalam lukisan itu memucat, seolah-olah semakin menyerupai Dion. Ia mengerjap beberapa kali, mencoba menyangkal ilusi matanya sendiri. Tapi saat ia mendekat, ia melihat sesuatu terjepit di antara bingkai dan dinding.\n\nSebuah kertas kecil, kekuningan, hampir rapuh.\n\nDengan hati-hati, ia menariknya keluar. Tulisannya buram, seperti bekas tinta lama yang mulai luntur. Namun ia masih bisa membaca kalimat pendek yang tertulis:\n\n\"Jangan gantikan aku, Bu.\"\n\nSinta berdiri terpaku. Tangan yang memegang kertas itu gemetar. Ia menoleh ke arah lukisan tua itu, dan kini... mata anak kecil dalam lukisan itu seolah menatap langsung ke arahnya.\n\nBahkan saat ia menunduk dan menjauh, tatapan itu seperti terus mengikutinya. Untuk pertama kalinya, Sinta merasa rumah itu bukan tempat yang aman, melainkan tempat yang sedang mengamatinya.\n\n', 5),
(44, 4, 'Malam itu, langit mendung pekat tanpa bintang. Sinta sedang menutup jendela ketika angin kencang menerpa rumah tua itu, menyebabkan kaca bergetar. Tak lama kemudian, terdengar petir menyambar. Lampu di seluruh rumah mati seketika.\n\nSinta mengambil lilin dari dapur dan menyalakannya. Nyala kecil itu menari-nari, memantulkan bayangan di dinding. Ia mencoba mengalihkan pikiran dengan membaca, tapi suara ketukan dari arah atap mengganggu konsentrasinya.\n\nDug. Dug. Dug.\n\nSuara itu semakin keras. Lalu sunyi.\n\nTiba-tiba, lilin padam tanpa sebab. Ruangan gelap gulita. Sinta berdiri, jantungnya berdegup cepat. Ia mendengar napas berat—tapi bukan napasnya sendiri.\n\nDari arah lemari... terdengar suara bisikan:\n\n\"Main yuk, Bu.\"\n\nSinta menyalakan senter. Perlahan-lahan ia arahkan cahayanya ke lemari. Pintu lemari terbuka sedikit. Di dalamnya, boneka kelinci Dion duduk diam, menghadap keluar. Di dada boneka itu tertempel secarik kertas:\n\n\"Kamu janji akan main lagi.\"', 5),
(45, 5, 'Esok paginya, saat membersihkan kamar Dion, lantai di pojok ruangan mengeluarkan suara aneh saat diinjak. Sinta membongkar lantai kayu yang longgar dan menemukan sesuatu yang dibungkus kain.\n\nIa membuka bungkusan itu—sebuah buku harian.\n\nIa mengenali tulisan tangan Dion. Awalnya berisi gambar-gambar lucu dan cerita kecil. Tapi di halaman terakhir, coretannya berubah.\n\n\"Temanku bilang ibu tidak sayang aku lagi. Tapi aku lihat Ibu menangis. Aku akan tetap di sini. Sampai Ibu percaya.\"\n\nTangan Sinta gemetar. Ia menutup buku itu dan berbisik, \"Ibu percaya, Nak... Ibu percaya.\"\n\nDari cermin, bayangan anak kecil tersenyum—tapi tidak ada siapa-siapa di ruangan itu.', 5),
(46, 6, 'Setiap malam, lorong lantai dua terasa lebih panjang. Tapi malam ini, ia merasa lorong itu berubah. Dindingnya lebih sempit, langit-langitnya lebih rendah. Lampu redup di langit-langit berkedip pelan.\n\nDi ujung lorong, berdiri sosok anak kecil. Tak bergerak. Menghadap ke dinding.\n\n\"Dion...?\"\n\nSosok itu berlari masuk ke kamar Dion. Sinta mengejar, tapi kamar kosong.\n\nNamun di cermin, ia melihat sosok itu masih berdiri di belakangnya. Perlahan, ia mengangkat tangannya... menunjuk ke arah perut Sinta.\n\n“Ada yang harus keluar…”\n			', 5),
(47, 7, 'Pagi hari, Sinta turun tangga dan melihat jejak kaki kecil berwarna merah di anak tangga—berdarah. Ia panik, mengikuti jejak itu hingga dapur. Kompor menyala sendiri, air mendidih tanpa sebab.\n\nDi atas meja dapur, ada tulisan embun di permukaan kaca:\n\n“Kami lapar.”\n\nPanci jatuh sendiri. Sinta berlari keluar rumah, terengah-engah. Tapi rumah tetangga terdekat terlalu jauh, dan sinyal ponsel hilang.\n\nSaat ia kembali ke dalam, semua jejak darah menghilang. Tapi di cermin dapur, ada tangan kecil menempel dari dalam.', 5),
(48, 8, 'Dalam loteng yang hampir rubuh, Sinta menemukan koper tua milik pemilik sebelumnya. Di dalamnya ada surat-surat, dan salah satunya tertulis dengan tergesa:\n\n“Anak kami menghilang. Ia sering bicara dengan seseorang di balik lemari. Ia bilang itu Dion. Kami tak pernah punya anak bernama itu.”\n\nDi sisi surat, terdapat foto lama seorang anak perempuan. Di baliknya tertulis:\n\n“Rina, 1987 – menghilang tanpa jejak.”\n\nSinta jatuh terduduk. Rina... adalah nama tengahnya sendiri.', 5),
(49, 9, 'Telepon rumah berbunyi keras. Padahal tidak ada sambungan aktif. Sinta angkat dengan tangan gemetar.\n\n\"Halo?\"\n\n\"Ibu... mau Dion kembali?\"\n\n\"Siapa ini?!\"\n\n\"Berikan tubuhmu. Maka kami beri dia kembali.\"\n\n\"Tidak... jangan...\"\n\nTelepon mati. Tapi suara itu tetap terdengar dari ruang keluarga. Sinta berlari ke arah sumbernya. Televisi menyala sendiri. Menampilkan video Dion tertawa di taman, lalu perlahan... layar dipenuhi bayangan hitam.', 5),
(50, 10, 'Malam terakhir. Sinta mengambil boneka Dion dan kembali ke kamar anaknya. Ia menyalakan semua lilin yang ia punya, duduk di tengah lantai dan berdoa.\n\nAngin tiba-tiba berhembus dari jendela yang tertutup rapat. Lilin-lilin padam satu per satu.\n\nDalam kegelapan, terdengar suara:\n\n\"Ibu… dingin. Aku sendiri.\"\n\nSosok anak kecil muncul dari bayangan, tubuhnya samar, wajahnya... bukan milik Dion. Suara-suara lain mulai berbisik dari dinding, dari lantai, dari langit-langit.\n\nSinta menjerit, \"Aku cuma ingin Dion kembali! Bukan yang lain!\"\n\nTiba-tiba semua senyap.\n\nIa terbangun pagi harinya di atas lantai kayu. Sinar matahari menyinari kamar. Semua tampak normal.\n\nKecuali satu hal: bingkai foto Dion di meja kini kosong.\n\nDan dari ruang tamu, terdengar suara pelan:\n\n\"...Hai, Nak...\"', 5),
(51, 1, 'Namanya Aira. Seorang gadis 15 tahun dengan mata tajam yang mampu melihat sesuatu yang tak kasatmata. Sejak kecil, ia tahu ia berbeda. Orang-orang menyebutnya anak indigo—dikaruniai kemampuan lebih untuk melihat dan merasakan dunia lain. Tapi Aira bukan tipe yang bersembunyi ketakutan. Justru ia tertarik. Ingin tahu. Sampai hari itu, saat ia dan keluarganya pindah ke rumah tua warisan nenek di desa terpencil bernama Lereng Wana.\n\nRumah itu besar dan gelap. Penuh debu dan bayangan. Lorong-lorongnya panjang dan berliku seperti labirin. Di malam pertama, Aira mendengar suara-suara dari lorong belakang rumah. Suara berbisik. Tertawa kecil. Dan satu suara berat berbisik namanya: “Aira...”\n\nIa bangkit dari tempat tidur, membawa senter, dan menelusuri lorong yang dingin itu. Jantungnya berdetak cepat tapi ia terus berjalan. Di ujung lorong, ia melihat pintu tua yang tertutup rantai. Neneknya dulu pernah berkata, “Jangan pernah buka pintu belakang, apa pun yang terjadi.” Tapi malam itu, rantainya jatuh ke lantai.\n\nDan di balik celah pintu yang perlahan terbuka, Aira melihat sepasang mata merah menyala. Mata itu tak hanya melihat. Ia merasa... dia sedang dipanggil.', 6),
(52, 2, 'Pagi harinya, Aira bangun dengan perasaan aneh. Saat bercermin, ia melihat garis merah di lehernya—seperti bekas jari. Ibunya bilang mungkin Aira menggaruk saat tidur. Tapi Aira tahu, semalam dia tidak tidur nyenyak. Mimpi buruk membayangi, dan perasaan tertindih membuatnya terbangun berkali-kali.\n\nSaat sarapan, ayahnya menyebut tentang suara hewan di malam hari. Aira tidak menjawab. Ia tahu itu bukan suara hewan. Itu suara... napas. Dalam dan berat. Ia kembali ke lorong tempat ia melihat mata merah itu, tapi pintunya kini tertutup rapat dan rantainya terkunci lagi. Seolah tak pernah disentuh.\n\nNamun lantai di depan pintu itu meninggalkan bekas jejak kaki... kaki kecil dan telanjang, basah seperti baru keluar dari sungai. Dan dindingnya basah. Seperti baru saja dilewati sesuatu yang dingin dan berlendir.', 6),
(53, 3, 'Hari ketiga di rumah itu, Aira mulai melihat sesuatu yang lebih aneh. Cermin di kamarnya kadang menampilkan bayangan yang tidak sinkron dengan geraknya. Ia menoleh ke kanan, bayangan menoleh ke kiri. Ia tersenyum, bayangan tetap diam. Semakin sering terjadi, semakin jelas bahwa cermin itu bukan pantulan biasa.\n\nSuatu malam, sosok anak kecil muncul dalam pantulan cermin itu. Rambutnya panjang, kulitnya pucat, dan matanya kosong. Ia hanya berdiri, menatap Aira dari dunia seberang cermin. Anak itu tak berbicara. Tapi selalu menunjuk ke arah lantai kamarnya.\n\nSetelah beberapa malam, Aira memberanikan diri menggali di bawah papan lantai. Ia menemukan sebuah boneka kayu dan catatan kecil yang hanya bertuliskan: \"Dia masih di sini. Jangan buka pintunya.\"\n\n', 6),
(54, 4, 'Di pekarangan belakang, Aira menemukan sebuah sumur tua yang tertutup semak. Tertarik oleh suara aneh yang terus ia dengar tiap malam, ia memberanikan diri mendekat. Saat merapatkan telinganya, ia mendengar suara samar dari dalamnya—suara anak-anak menangis dan kadang tertawa. Kadang suara itu berubah menjadi teriakan.\n\nIa melempar batu ke dalam, tapi tak pernah mendengar bunyinya jatuh. Sumur itu terlalu dalam... atau mungkin tidak punya dasar sama sekali. Saat berdiri di sisi sumur, Aira merasa angin hangat dari dalamnya menyentuh wajahnya—angin yang berbau amis.\n\nMalam-malam berikutnya, Aira terus bermimpi tentang sumur itu. Dalam mimpinya, ada tali yang tergantung... dan bayangan yang menariknya turun. Suatu saat, ia tahu ia akan ditarik masuk.', 6),
(55, 5, 'Aira tidak pernah menyukai loteng. Tangga kayunya sempit dan setiap pijakan mengeluarkan bunyi mencicit. Tapi suatu malam, saat listrik mati, ia mendengar langkah kaki di atas langit-langit—berjalan perlahan, lalu berhenti tepat di atas kamarnya.\n\nIa membawa lilin, menaiki tangga loteng sambil menahan napas. Pintu loteng terbuka sendiri saat ia menyentuh gagangnya. Di dalam, ruangan penuh debu dan sarang laba-laba, tapi ada satu hal yang tak seharusnya ada: boneka kayu yang sama seperti yang ia temukan di bawah lantai.\n\nBoneka itu duduk menghadap tembok, dan di belakangnya tertempel selembar kertas: \"Aku hanya ingin bermain. Tapi dia mengurungku.\"', 6),
(56, 6, 'Setiap pagi, Aira menemukan tanda aneh di dinding kamarnya. Awalnya seperti noda. Tapi lama-lama membentuk pola: tangan. Jejak tangan kecil yang muncul perlahan, dari lantai menuju langit-langit. Saat malam tiba, tangan-tangan itu mengeluarkan cahaya redup.\n\nSuatu malam, Aira melihatnya bergerak. Perlahan, tangan-tangan itu menjulur ke bawah, menelusuri dinding. Salah satunya sempat menyentuh rambutnya.\n\nIa menjerit. Tapi saat orang tuanya masuk, semua menghilang. Dinding bersih. Tapi di bawah bantalnya, tertinggal satu pesan:\n\n\"Kita belum selesai.\"\n			', 6),
(57, 7, 'Di ruang kerja tua milik nenek, Aira menemukan jurnal tua tersembunyi di balik tumpukan buku. Isinya adalah catatan harian neneknya sendiri—tentang makhluk yang terjebak di balik pintu rantai. Makhluk yang dulu datang lewat mimpi, menyamar sebagai anak kecil, dan memohon dibebaskan.\n\nNenek menuliskan bahwa ia berhasil menyegelnya dengan mantra kuno dan simbol-simbol di seluruh rumah. Tapi jika salah satu pintu terbuka, semuanya bisa kembali.\n\nHalaman terakhir hanya berisi satu kalimat besar, ditulis dengan tinta merah:\n\n\"JANGAN BUKA PINTU BELAKANG.\"', 6),
(58, 8, 'Aira mulai bermimpi buruk setiap malam. Dalam mimpinya, ia berlari di lorong rumah yang tak berujung, dikejar oleh makhluk tinggi, kurus, tanpa wajah. Makhluk itu bisa merayap di dinding dan langit-langit, dan mengeluarkan suara seperti tangisan bayi.\n\nSuatu malam, ia melihatnya tidak dalam mimpi. Makhluk itu berdiri di ujung lorong nyata. Tidak bergerak. Hanya mengamati. Tapi setiap kali Aira berpaling, makhluk itu lebih dekat.\n\nIa mencoba menyegelnya dengan simbol dari jurnal nenek. Tapi makhluk itu menertawakannya. Simbol-simbol itu sudah pudar.', 6),
(59, 9, 'Dengan pengetahuan dari jurnal, Aira menyusun ulang segel di sekitar rumah. Ia menggunakan kapur, air garam, dan benda-benda milik Dion, saudara jauhnya yang dulu hilang secara misterius. Semua simbol diaktifkan kembali.\n\nTapi pada malam ketujuh, makhluk itu mengamuk. Rumah bergetar. Jendela terbuka sendiri. Pintu belakang bergetar hebat. Suara-suara anak-anak menangis terdengar dari semua sudut rumah.\n\nAira berdiri di depan pintu belakang, menahan tubuhnya agar tidak jatuh, dan berteriak mantra terakhir yang diajarkan dalam jurnal. Pintu berhenti bergetar. Semua menjadi gelap.', 6),
(60, 10, 'Pagi menjelang. Rumah itu sunyi. Tidak ada lagi suara. Tidak ada lagi makhluk. Aira merasa lelah, tapi lega. Ia duduk di depan cermin kamarnya, menatap wajahnya yang pucat dan mata yang sembab.\n\nTapi cermin kembali mempermainkannya.\n\nBayangannya tidak meniru gerakannya. Bayangan itu... tersenyum.\n\nDan dari belakang, suara yang sangat dikenalnya kembali berbisik:\n\n\"Aira... ayo main lagi.\"', 6),
(61, 1, 'Langit malam di stasiun luar angkasa Astra Prime tidak pernah benar-benar gelap. Kilatan dari bintang, satelit, dan kapal pengangkut silih berganti melintasi pandangan. Di sinilah Kapten Elara menerima misi paling berbahaya dalam kariernya: mengeksplorasi Planet Poe. Sebuah planet di tepi sistem Galarion yang selama ratusan tahun dinyatakan \"mati\". Namun dua minggu lalu, stasiun pemantau menerima sinyal kuno dari sana. Sinyal dalam bahasa yang sudah ribuan tahun tak digunakan.\n\nElara berdiri di dek utama kapal Orionis VII, matanya menatap peta bintang holografik. Ia tahu misi ini bukan sekadar pencarian, tapi sebuah misteri galaksi yang menuntut jawaban. Kru yang ia bawa bukan orang biasa: Yarin si teknisi alien dari ras Khraltor, Lio si ahli astrobiologi, dan Syra, navigator yang bisa membaca medan magnet planet seperti membaca peta daratan.\n\nSesaat sebelum keberangkatan, layar komunikasi bergetar. Sebuah gambar muncul—potongan visual dari permukaan Poe. Sebuah kota, reruntuhan, dan... bayangan besar bergerak di antara bangunan yang rubuh. \"Apa itu...?\" tanya Syra pelan. Elara mengatur helmnya dan menjawab, \"Itulah yang akan kita cari tahu.\"', 7),
(62, 2, 'Pendaratan di Poe tidak berjalan mulus. Atmosfernya tidak stabil, menyebabkan turbulensi hebat. Awan ungu pekat menutupi langit, dan petir menyambar secara acak. Kapal mereka berhasil mendarat di dataran tinggi yang menghadap ke kota tua yang terlihat dalam gambar.\n\nBegitu keluar dari kapal, udara Poe terasa berat meskipun layak hirup. Tanahnya berdenyut perlahan, seolah planet ini memiliki denyut nadi sendiri. Suasana sunyi. Terlalu sunyi. Tidak ada hewan, tidak ada angin. Hanya reruntuhan dan patung-patung batu raksasa yang mengawasi mereka dalam diam.\n\nSaat mereka mulai menelusuri jalanan kota kuno, Lio menunjuk ke satu mural di dinding. Lukisan yang menggambarkan makhluk bersayap keluar dari dasar planet, membawa api dan kehancuran. Di bawahnya tertulis kalimat dalam bahasa Poe: \"Jangan bangunkan dewa yang tidur.\"\n\nElara mulai menyadari bahwa ada alasan mengapa planet ini ditinggalkan. Rasanya seperti berjalan di atas tanah suci yang dikutuk oleh waktu dan kenangan. Satu langkah salah, dan seluruh sejarah kelam Poe bisa bangkit kembali.', 7),
(63, 3, 'Di pusat kota tua, mereka menemukan struktur setengah runtuh yang disebut sebagai Makam Cahaya oleh para arkeolog dahulu. Saat memasuki ruang dalamnya, langit-langit gua berpendar biru, seolah dipenuhi fosfor alami. Yarin menyentuh salah satu dinding, dan hologram kuno menyala, memperlihatkan gambaran tentang makhluk bersayap emas yang terbang meninggalkan planet.\n\nSyra menemukan jalan rahasia yang menuju ke ruangan bawah tanah. Di sana terdapat kristal besar, yang tampak seperti sumber energi. Tapi saat didekati, kristal itu berdenyut… dan mengeluarkan suara berbisik. Suara yang hanya Elara bisa dengar: \"Pewaris cahaya telah tiba.\"\n\nSeluruh ruangan tiba-tiba bergetar. Lantai di bawah kaki mereka membentuk pola melingkar yang bergerak. Lio panik dan mencoba merekam data energi dari kristal, tetapi alatnya mati mendadak. Sumber kekuatan ini tidak ingin disentuh.\n\nElara merasa ada sesuatu dalam dirinya berubah. Seperti resonansi antara jiwanya dan kristal itu. Ia belum menyadari, tapi kristal mengenalinya. Dan dalam waktu dekat, mereka akan terikat lebih dalam dari yang ia kira.	\n\n', 7);
INSERT INTO `pages` (`id`, `page`, `text`, `book_id`) VALUES
(64, 4, 'Reruntuhan kota Poe bukan sekadar tumpukan batu dan logam tua. Saat malam menjelang, perubahan aneh terjadi. Dinding-dinding mulai memantulkan cahaya lembut berwarna biru dan ungu, seperti napas yang keluar dari paru-paru planet yang tertidur. Pola-pola kuno muncul di lantai, mengalir seperti sungai energi yang hidup.\n\nElara memimpin ekspedisi kecil bersama Syra dan Lio menyusuri jalan utama kota menuju pusat reruntuhan. Aroma logam dan ozon memenuhi udara. Tiba-tiba, suara langkah mereka mulai bergema… bukan sekali, tapi dua kali lipat. Seolah ada yang meniru jejak mereka dari kejauhan. Mereka berhenti sejenak, saling menatap dengan cemas, tapi tidak menemukan apa pun—hanya bayangan mereka sendiri yang tampak memanjang dan bergerak aneh di dinding.\n\nDi persimpangan antara dua bangunan roboh, mereka menemukan sebuah ukiran yang tidak ada sebelumnya. Ukiran itu menggambarkan empat penjaga raksasa yang menjaga gerbang cahaya. Tapi yang membuat Lio panik adalah bahwa salah satu penjaga di ukiran itu—berbentuk makhluk kristal transparan—sama persis seperti yang mereka temui sebelumnya. “Apakah makhluk itu yang membuat ukiran ini… semalam?” gumamnya pelan.\n\nTiba-tiba, tanah di bawah mereka bergetar ringan, dan suara gemuruh pelan terdengar dari bawah permukaan. Bangunan di sekitar mereka memancarkan getaran halus, dan reruntuhan perlahan bergerak, membuka jalur baru ke bawah tanah. Elara mengaktifkan pelindung energinya, menyadari bahwa kota ini merespons kehadiran mereka. Poe, rupanya, memiliki sistem pertahanan otomatis yang belum sepenuhnya mati.\n\nMereka mundur ke kapal untuk berdiskusi, tapi Elara tidak bisa mengabaikan firasat bahwa kota ini ingin menunjukkan sesuatu. Mungkin bukan untuk menyakiti mereka… tapi memperingatkan. Dan dalam hati kecilnya, ia tahu: reruntuhan ini masih bernyawa—dan ia sedang mencoba berbicara.\n\n', 7),
(65, 5, 'Setelah kejadian di reruntuhan, kru Orionis VII kembali ke kapal untuk mengevaluasi penemuan mereka. Elara tidak bisa berhenti memikirkan apa yang dilihatnya dalam kilatan ingatan saat menyentuh makhluk kristal. Sebuah perang purba, kehancuran, dan makhluk bersayap kegelapan yang dikurung oleh leluhur Poe di pusat planet. Apakah mereka benar-benar terbangunkan?\n\nYarin mulai menyelidiki pola energi dari kristal dan menemukan bahwa planet Poe menunjukkan aktivitas anomali—denyut energi dari pusat planet naik drastis setiap dua jam. Tidak hanya itu, medan magnet Poe berubah arah, seolah-olah ada kekuatan besar yang sedang bangkit dari dalam.\n\nLio menyarankan penggalian ke bawah reruntuhan untuk menemukan sumber utama energi tersebut. Mereka menemukan sebuah lorong spiral batu yang mengarah ke bawah tanah. Saat mereka menyusuri lorong itu, mereka mulai mendengar suara—ratapan, nyanyian dalam bahasa kuno, dan suara dentuman logam yang tidak berasal dari alat mereka.\n\nDi ujung lorong, mereka menemukan gerbang besar yang tertutup oleh pelat emas, dihiasi ukiran makhluk bersayap dan matahari hitam. Di tengah-tengah gerbang, terukir peringatan dalam bahasa Poe: “Siapa yang membangunkannya, menanggung kehancurannya.”\n\nElara menyadari sesuatu yang mengerikan: kristal yang mereka sentuh mungkin bukan hanya penjara. Ia adalah kunci. Dan mereka telah membukanya.', 7),
(66, 6, 'Keesokan harinya, mereka dikejutkan oleh gempa hebat. Tanah Poe bergetar, menciptakan celah besar di dataran tempat mereka mendarat. Kapal hampir terguling. Dari retakan bumi, semburan cahaya ungu dan partikel kristal keluar seperti geyser.\n\nYarin dan Syra segera menuju sumber retakan untuk menstabilkan kapal. Tapi Syra terpeleset dan jatuh ke dalam celah. Elara dan Yarin berhasil menariknya kembali, namun Syra berubah. Tatapannya kosong dan kulitnya mulai menyerap kilau kristal. Lio mendiagnosisnya terinfeksi oleh semacam organisme energi—mungkin bagian dari makhluk yang tertidur.\n\nDalam kekacauan, makhluk kristal pertama yang mereka temui muncul kembali. Kali ini ia membentuk tubuh humanoid yang lebih jelas dan memperingatkan Elara: “Dia telah membuka matanya.” Elara berteriak, “Siapa DIA?” Tapi makhluk itu menghilang menjadi debu bercahaya.\n\nKru kini dihadapkan pada dua pilihan: melarikan diri atau mencari cara menutup kembali celah yang telah terbuka. Tapi Elara tahu satu hal—melarikan diri sekarang berarti membiarkan Poe bangkit dan menyeret galaksi ke dalam kegelapan.\n			', 7),
(67, 7, 'Saat mencoba menghubungi markas di Astra Prime, mereka menerima sinyal balasan dalam bentuk aneh—gelombang simbol cahaya. Lio berhasil mendekripsinya menjadi pesan visual dari ras kuno Poe. Dalam pesan holografik, seorang tetua Poe menjelaskan bahwa makhluk bernama Vhalagor disegel di inti Poe karena kekuatannya dapat memusnahkan sistem bintang hanya dengan kehendak.\n\nTetua itu mengatakan hanya satu garis keturunan yang bisa mengendalikan kembali segel: keturunan pembawa cahaya. Dan kristal mengenali Elara sebagai salah satunya. Ia tidak hanya pemimpin misi. Ia adalah kunci terakhir pertahanan galaksi.\n\nElara terpukul. Bagaimana mungkin ia memiliki hubungan darah dengan bangsa kuno ini? Tapi bukti dalam tubuh Syra, dalam pantulan matanya, dan dalam mimpi-mimpi Elara yang mulai muncul sejak pendaratan—semua mengarah ke satu kenyataan. Darah Poe mengalir dalam dirinya.\n\nDengan kekuatan dan kutukan itu, Elara memutuskan untuk menyusuri pusat planet dan mencari altar penyegelan. Ia tahu waktu tidak berpihak pada mereka. Vhalagor semakin dekat untuk bangkit sepenuhnya.\n\n', 7),
(68, 8, 'Perjalanan ke pusat planet memakan waktu lebih dari 20 jam melalui koridor alami dan medan lava yang hampir tak bisa dilewati. Di kedalaman, mereka menemukan ruangan besar berbentuk kubah, dengan altar mengambang di tengah ruangan, dikelilingi cahaya yang terus berubah warna.\n\nAltar itu dijaga oleh empat makhluk transparan seperti penjaga gerbang dimensi. Makhluk-makhluk ini menguji Elara—bukan secara fisik, tetapi secara mental dan spiritual. Mereka menggali ingatan Elara, ketakutannya, keraguannya, dan niat sebenarnya.\n\nDalam salah satu ujian, Elara dihadapkan pada bayangan ibunya yang telah lama meninggal. “Apakah kamu akan mengorbankan dirimu untuk dunia yang tak kamu kenal?” tanya sang bayangan. Elara menjawab, “Jika dunia itu akan menghancurkan semua yang aku cintai, maka ya.”\n\nPenjaga pun membuka jalan. Elara melangkah ke altar, dan cahaya dari kristal utama menyerap ke dalam tubuhnya. Kini ia tidak hanya memimpin. Ia adalah bagian dari Poe. Dan ia adalah satu-satunya harapan menyegel kembali Vhalagor.', 7),
(69, 9, 'Meski Elara sudah terhubung dengan energi planet, proses penyegelan tidak berjalan cepat. Sementara itu, dari celah yang terbuka, Vhalagor bangkit. Makhluk raksasa yang tak berbentuk, dengan suara yang bergema di seluruh langit Poe. Cakar-cakar bayangannya merusak atmosfer, dan planet mulai terpecah dari inti.\n\nOrionis VII mencoba mengaktifkan sistem pertahanan orbit, tapi Vhalagor menembus medan perlindungan. Satelit hancur, dan langit berubah merah. Suara Vhalagor menggemakan kesedihan, kemarahan, dan rasa lapar akan kehancuran.\n\nDi altar, Elara berjuang melawan pengaruh Vhalagor yang mencoba mengambil alih tubuhnya. Kristal di jantung altar pecah menjadi serpihan cahaya, menyatu dengan darah Elara, memberi kekuatan yang tak manusiawi. Ia mulai mengucapkan mantra terakhir dari hologram Poe—mantra penyegelan yang hanya bisa diaktifkan oleh pewaris cahaya.\n\nYarin dan Lio bertarung untuk menahan Vhalagor secara fisik, menggunakan teknologi dan kekuatan medan frekuensi tinggi. Tapi Vhalagor terus tumbuh. Satu-satunya harapan tinggal pada Elara.', 7),
(70, 10, 'Elara melayang di atas altar, tubuhnya menyatu dengan cahaya planet. Ia mengangkat kedua tangannya, dan cahaya dari semua reruntuhan, dari semua kristal, dan dari makhluk-makhluk penjaga mengalir ke arahnya. Suara mantra memenuhi udara, dan langit Poe pecah menjadi ribuan cahaya.\n\nVhalagor meraung. Tubuhnya pecah-pecah, mencoba membentuk ulang, tapi cahaya itu lebih kuat. Dalam momen terakhir, Elara melihat wajah Vhalagor—wajah penuh kesepian dan kesalahan. Ia bukan hanya monster. Ia makhluk yang dibuang dan ingin kembali.\n\nDengan air mata mengalir, Elara mengucapkan kata terakhir. Ledakan cahaya menghabisi Vhalagor dan menutup kembali inti planet. Poe tenang. Dan Elara jatuh tak sadarkan diri.\n\nSaat ia terbangun di kapal, Syra memegang tangannya dan berkata, “Kau berhasil.” Tapi Elara tahu, harga dari keberhasilan itu adalah ikatan abadi dengan planet itu. Ia bukan lagi hanya manusia. Ia adalah penjaga baru Poe.\n\nDan di langit malam, sebuah bintang baru bersinar—cahaya dari planet yang dulu terlupakan, kini hidup kembali.', 7),
(71, 1, 'Pagi itu Gani terbangun dengan keringat dingin. Bukan karena mimpi buruk, tapi karena notifikasi dari grup Line \"Pejuang Skripsi 2025\" yang isinya sudah 157 chat. Sebagian besar update tentang sidang, ACC bab lima, dan template revisi. Sementara Gani masih bertanya-tanya: \"Judul gue apaan, ya?\"\n\nIa duduk di meja belajarnya, memandangi tumpukan kertas draft yang isinya coretan dari empat tahun lalu. Ada bekas kopi, bekas mie instan, dan highlight warna-warni yang kini tidak relevan lagi. \"Hari ini gue harus ke kampus. HARUS!\" katanya sambil memakai hoodie yang sama sejak tiga hari lalu.\n\nSesampainya di kampus, ia bertemu dengan Pak Bagus, dosen pembimbingnya yang ketiga. Pak Bagus menatap Gani dari atas kacamata bulatnya dan berkata, \"Mas Gani, saya senang kamu masih hidup.\" Kalimat itu bukan sarkasme—lebih kepada keheranan tulus karena Gani terakhir konsultasi setahun lalu.\n\nGani tersenyum kaku. Ia duduk, membuka laptop (yang bunyinya seperti pesawat mau lepas landas), dan berkata, \"Pak, saya mau lanjut skripsi...\" Tapi dalam hati, dia justru bertanya, \"Gimana caranya bilang saya lupa password email buat login OJS?\"', 8),
(72, 2, 'Tiga hari kemudian, Gani resmi mengajukan judul baru. Lagi. Judul ke-lima. Dan untuk yang kelima kalinya pula, dia bingung mau nulis apa setelah kata “analisis”. Judul terakhirnya adalah “Analisis Semiologi dalam Iklan Mie Instan: Studi pada Kalimat ‘Kenyangnya Melekat’”. Pak Bagus hanya mengangkat alis.\n\n“Kalau kamu ganti judul terus, nanti malah jadi koleksi, bukan skripsi,” ujar Pak Bagus sambil menyeruput kopinya. Gani nyengir, mencoba melucu: “Minimal bisa jadi buku, Pak. ‘101 Judul Skripsi yang Tidak Jadi.’” Tidak lucu. Bahkan satpam di depan fakultas pun kelihatan lebih stres.\n\nGani akhirnya menyusun ulang judul dengan bantuan ChatGPT dan tiga teman seperjuangannya yang semuanya sudah wisuda. Judulnya sekarang: “Pengaruh Konten TikTok terhadap Perilaku Konsumtif Mahasiswa Generasi Z.” Pak Bagus membaca pelan-pelan lalu mengangguk, “Judul ini... bisa. Asal kamu jangan ngilang lagi.”\n\nPulang ke kosan dengan perasaan campur aduk, Gani merasa seperti baru saja memenangkan medali perunggu dalam olimpiade skripsi. Belum menang, tapi setidaknya nggak gugur di babak awal. Ia langsung merayakan dengan gorengan dan teh manis hangat, sambil berkata pada dirinya sendiri, “Besok gue nulis Bab 1!”\n\nTapi seperti biasa, “besok” adalah kata yang bisa ditunda selamanya.', 8),
(73, 3, 'Hari Minggu, Gani akhirnya duduk di depan laptop. File Word berjudul “Bab1_fix_beneran_fix.docx” terbuka. Tapi layar itu kosong selama satu jam. Ia mengetik satu kalimat: “Bab ini membahas mengenai latar belakang.” Lalu berhenti.\n\nIa membuka YouTube sebentar untuk cari inspirasi. Tiga jam kemudian, ia sudah tahu cara masak tteokbokki, sejarah perang dunia ke-2, dan kenapa alien mungkin menyukai kentang goreng. Tapi Bab 1? Masih tetap satu kalimat.\n\nIa putuskan buat nulis di warung kopi. Katanya suasana bisa bantu fokus. Tapi baru lima menit di sana, dia sudah ketemu temannya, Arul, yang sekarang jualan kopi di situ. “Bro, lo belum lulus juga? Wah, gue kira lo udah kerja di agensi!” kata Arul sambil menyodorkan cappuccino gratis.\n\nMalu, Gani berusaha fokus. Akhirnya, ia nulis dua paragraf. Tapi ketika listrik di warung padam, laptopnya mati dan ia lupa nge-save. Ia menatap layar hitam sambil berkata pelan, “Kenapa Tuhan mengujiku lewat file Word?”	\n\n', 8),
(74, 4, 'Setelah seminggu bergulat dengan Bab 1, akhirnya Gani berhasil menyelesaikannya. Kali ini dia ingin mencetak dan menunjukkannya langsung ke Pak Bagus. Tapi printer kosan? Ah, printer legendaris itu lebih tua dari niat Gani lulus kuliah.\n\nGani menghidupkan printer dengan doa dan sedikit tamparan sayang. Tiga lembar pertama keluar mulus. Tapi lembar keempat... macet. Kertas terlipat, tinta muncrat seperti darah di film horor. Ia mencoba mencabut kertas, hasilnya printer error permanen.\n\n“Tenang, tenang, masih bisa ke warnet,” pikirnya. Tapi di warnet, ia lupa bawa flashdisk. File-nya ada di email, dan seperti biasa... password email-nya lupa.\n\nAkhirnya dia login dengan verifikasi lewat nomor lama. Gagal. Opsi terakhir: minta kirim kode ke email cadangan, yang... juga lupa passwordnya. Dalam keputusasaan, Gani menatap layar dan berteriak lirih, “Kenapa Gmail kayak mantan? Nggak bisa dilupain, tapi juga nggak bisa dibuka.”\n\n', 8),
(75, 5, 'Pak Bagus mulai curiga. Gani memang sudah menyerahkan Bab 1, tapi kenapa setelah itu hilang lagi? Tiga minggu tak ada kabar, tak ada chat, tak ada email. Pak Bagus pun iseng membuat instastory: “Ada yang lihat Gani? Terakhir katanya nulis Bab 2.” Mahasiswa lain ikut komentar, “Wah Pak, itu udah jadi urban legend.”\n\nSebenarnya Gani tidak hilang. Ia hanya terjebak dalam siklus nonton ulang serial Korea dan meyakinkan dirinya bahwa memahami psikologi karakter itu bagian dari riset. Tapi yang dia pahami justru bahwa cinta segitiga lebih mudah dipahami daripada teori komunikasi massa.\n\nSampai akhirnya, dia mimpi buruk: Pak Bagus datang dalam bentuk Godzilla dan mengamuk di kampus karena Bab 2 belum dikumpulkan. Gani terbangun, basah kuyup oleh keringat, dan langsung mengetik Bab 2 tanpa napas. Hasilnya? Empat halaman penuh referensi... yang semua berasal dari artikel blog tidak jelas.\n\nDia sadar, kalau ini dibaca Pak Bagus, bisa langsung kena mental. Maka dia konsultasi dulu ke Rani, teman sekelas yang sudah sidang. Rani membaca cepat dan hanya berkata, “Gani, kamu mau skripsi... atau cerpen?”', 8),
(76, 6, 'Bab 2 dikumpulkan. Dan seperti yang sudah bisa ditebak, revisinya lebih panjang dari Bab 2 itu sendiri. Komentar dari Pak Bagus berwarna merah mencolok, memenuhi margin kiri sampai kanan. “Tolong jelaskan ini.” “Sumbernya mana?” “Ini opini, bukan akademik.” “Kenapa ada kata ‘kayaknya’ di kalimat ilmiah?”\n\nGani menghela napas sambil memutar lagu sedih di Spotify. Ia merasa seperti karakter utama drama tragedi. Tapi, ia tidak menyerah. Ia duduk di depan laptop, membuka kembali referensi (yang sekarang benar), dan mulai memperbaiki paragraf demi paragraf sambil menyeruput kopi sachet yang sudah dingin.\n\nMalam makin larut, mata makin berat, tapi semangatnya justru naik. Ia merasa seperti pahlawan yang akhirnya menyadari tujuan hidupnya. Setiap koreksi dari Pak Bagus menjadi peluru semangat. “Gue harus buktiin gue bisa,” katanya sambil menghapus kata “mungkin” dari semua kalimatnya.\n\nKeesokan paginya, Bab 2 versi revisi dikirimkan. Kali ini, balasan Pak Bagus hanya satu baris: “Sudah jauh lebih baik. Lanjutkan ke Bab 3.” Gani hampir menangis. Kalimat itu seperti surat cinta dari langit. Ia mencetaknya dan menempelkannya di dinding kosan.\n			', 8),
(77, 7, 'Bab 3 berarti pengumpulan data. Gani memutuskan untuk membuat kuesioner daring. Ia membuat 20 pertanyaan dengan desain warna-warni dan mengirimkannya ke semua grup WhatsApp, Line, Telegram, bahkan alumni. Tapi tak ada yang respon. Seakan dunia ikut skripsi juga—dan sedang hiatus.\n\nIa ganti strategi: menyamar jadi admin giveaway. “Isi survei ini dan menangkan pulsa 50 ribu!” Dalam sehari, 300 respon masuk. Sayangnya, 250 respon diisi oleh akun palsu bernama ‘Budi Skripsi’, ‘Skripsi Mulu’, dan ‘SkripsiSucks123’.\n\nPanitia penelitian palsu ini membuat Gani frustasi. Ia putuskan untuk turun langsung ke kampus, membawa kertas kuesioner, dan memburu mahasiswa yang lewat. Ia dikejar satpam karena dikira jualan MLM.\n\nAkhirnya ia dapat 50 data valid. Ia pulang dengan wajah berseri, seperti habis menang olimpiade. Tapi saat mau input data ke Excel... laptopnya hang. File rusak. Semua hilang. “Ya Tuhan,” bisik Gani sambil menatap langit-langit, “Aku nggak minta kaya, cuma minta fileku balik.”\n', 8),
(78, 8, 'Di tengah keputusasaan, Gani bertemu lagi dengan Arul. Ternyata Arul diam-diam juga sedang skripsi. Mereka berdua pun sepakat membuat grup WhatsApp bernama “Tumbal Skripsi”. Isinya hanya mereka berdua. Tujuannya: saling menyemangati dan... curhat.\n\nSetiap malam mereka video call, saling baca Bab masing-masing, saling kritik, dan saling ketawa. Tapi makin lama, Gani merasa Arul makin cepat progress-nya. “Bro, Bab 4 gue udah kelar. Tinggal daftar sidang.” Gani menelan ludah.\n\nRasa iri mulai muncul. Gani mulai banding-bandingin diri. Kenapa dia stuck, sedangkan Arul bisa begitu cepat? Tapi dalam satu percakapan, Arul bilang, “Gue cepet bukan karena pinter, Gan. Tapi karena gue takut dikeluarin sama orang tua.”\n\nGani tertawa. “Sama, bro. Gue juga takut... tapi kayaknya udah pasrah.” Mereka berdua pun tertawa bersama. Ternyata bukan kompetisi. Mereka saling dorong.', 8),
(79, 9, 'Akhirnya, hari yang ditunggu tiba. Gani berhasil menyelesaikan semua bab. ACC didapat. Ia mendaftar sidang. Dosen penguji sudah ditentukan. Jadwal keluar: Selasa, jam 10 pagi. Gani tidur cepat, baju rapi sudah disiapkan, power point sudah dicetak.\n\nTapi pagi itu... dia kesiangan. Alarm tidak bunyi. Listrik kosan padam. Gani bangun jam 09.45. Dengan kecepatan sonic, ia sikat gigi, ganti baju (masih pakai sandal jepit), dan naik ojek ke kampus. Dalam perjalanan, hujan turun.\n\nBaju basah, rambut acak-acakan, dan sepatu pinjaman hilang satu di selokan. Gani masuk ke ruang sidang seperti peserta bentrok demo. Tapi ajaibnya, sidang belum dimulai karena dosen penguji telat.\n\nSaat presentasi, Gani grogi setengah mati. Tapi setelah lima menit, ia mulai lancar. Ia menjelaskan latar belakang, data, sampai kesimpulan. Suaranya mantap. Matanya menyala. Dosen penguji mengangguk.', 8),
(80, 10, 'Setelah 30 menit presentasi dan 20 menit tanya-jawab, Gani diminta keluar ruangan. Lima menit menunggu terasa seperti lima tahun. Ia menggigil, bukan karena AC, tapi karena takut ditanya, “Kenapa referensinya dari Wikipedia?”\n\nPintu dibuka. Pak Bagus memanggil. “Selamat, Mas Gani. Anda dinyatakan... LULUS.” Dunia hening sesaat. Gani tidak percaya. Ia menatap langit-langit dan hampir menangis. “Beneran, Pak?”\n\n“Iya. Tapi revisi ya,” kata Pak Bagus. Gani tertawa lemas. Tapi itu tidak masalah. Yang penting: LULUS.\n\nGani berjalan keluar ruang sidang dengan senyum lebar, disambut oleh Arul yang sudah bawa kopi. Mereka saling tos. “Bro, kita akhirnya bebas.”\n\nDan di sore itu, Gani duduk di taman kampus, membuka laptop, dan mengubah nama file: “Skripsi_Gani_FINAL_beneran_FINAL_SIDANG.docx.” Untuk pertama kalinya... tanpa tanda bintang, tanpa versi.', 8);

-- --------------------------------------------------------

--
-- Table structure for table `save_book`
--

CREATE TABLE `save_book` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `book_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` bigint NOT NULL,
  `dirty` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`, `dirty`) VALUES
(20250523032905, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `password`) VALUES
(1, 'username0', 'name0', '$2a$10$6iJmwcuLSx26vZJowfNBweEHGItrk5pibhFAmPlBWK9K/6zUg1b7C'),
(2, 'username1', 'name1', '$2a$10$heNPkyjnRhkmIN6mJYkO6uyVEb9s9djgq9nB4vLCCEjuLG3yWZcPy'),
(3, 'username2', 'name2', '$2a$10$M/xTRnvC3CKuEVNvW2nKJ.IjxHngeLW1giFi6nq0ixncQ0OsUppcq'),
(4, 'username3', 'name3', '$2a$10$cEOU6uHRdF82xuH3VeVk6uxXBAIUkS8t8AoAO2mDZNvfB63KfPGru'),
(5, 'username4', 'name4', '$2a$10$BxvG1SbVkwNp6w1UTu5zj.I45F4B.jghl0/uQbmDJ2JUIuFTzdAeq'),
(6, 'username5', 'name5', '$2a$10$l3rork6hXs4WBW7p87uULe.u7JITT/EHx3tw..2lwk5KUw9D6gVEK');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `save_book`
--
ALTER TABLE `save_book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `book_category`
--
ALTER TABLE `book_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `save_book`
--
ALTER TABLE `save_book`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `book_category`
--
ALTER TABLE `book_category`
  ADD CONSTRAINT `book_category_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `book_category_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `histories`
--
ALTER TABLE `histories`
  ADD CONSTRAINT `histories_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `histories_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `save_book`
--
ALTER TABLE `save_book`
  ADD CONSTRAINT `save_book_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `save_book_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
