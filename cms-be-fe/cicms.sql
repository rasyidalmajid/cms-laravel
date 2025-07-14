/*
 Navicat Premium Data Transfer

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 100411
 Source Host           : localhost:3306
 Source Schema         : cicms

 Target Server Type    : MySQL
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 19/04/2022 06:27:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for agenda
-- ----------------------------
DROP TABLE IF EXISTS `agenda`;
CREATE TABLE `agenda`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tgl` date NULL DEFAULT NULL,
  `meta_key` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `meta_desc` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `meta_text` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `picture` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `content` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `datepost` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 65 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of agenda
-- ----------------------------
INSERT INTO `agenda` VALUES (1, 'Sarasehan IPI', '2018-09-19', 'Sarasehan IPI', '', '', NULL, '', '2018-11-08');
INSERT INTO `agenda` VALUES (2, 'Seminar Perpustakaan Masyarakat', '2018-10-03', 'Seminar Perpustakaan Masyarakat', '', '', NULL, '', '2018-11-08');
INSERT INTO `agenda` VALUES (3, 'Sosialisasi Kearsipan', '2018-10-10', 'Sosialisasi Kearsipan', '', '', NULL, '', '2018-11-08');
INSERT INTO `agenda` VALUES (4, 'Rakor Monitoring Perpustakaan', '2018-10-16', 'Rakor Monitoring Perpustakaan', '', '', NULL, '<p>\n	Rakor Monitoring Peprustakaan merupakan program tahunan Dinpersip Salatiga, hal ni dilakukan untuk terus bersinergi dengan berbagai elemen di Kota Salatiga kaitannya dengan menumbuhkan minat baca serta membahas berbagai isu/tema untuk kemajuan dunia perpustakaan di Kota Salatiga. Rakor monitoring dilaksanakan di lantai 2 gedung Dinpersip Salatiga.</p>\n', '2018-11-08');
INSERT INTO `agenda` VALUES (5, 'Sosialisasi Kearsipan Masyarakat', '2018-10-17', 'Sosialisasi Kearsipan Masyarakat', '', '', NULL, '<p>\n	Sosialisasi Kearsipan Masyarakat merupakan kegiatan sosialisasi tentang kearsipan dengan sasaran kepada masyarakat di Kota Salatiga. kegiatan ini diselenggarakan di lantai 2 gedung Dinas Perpustakaan dan Kearsian Kota Salatiga.</p>\n', '2018-11-08');
INSERT INTO `agenda` VALUES (6, 'Sosialisasi Perpustakaan', '2018-10-18', 'Sosialisasi Perpustakaan', '', '', NULL, '<p>\n	Sosialisasi Peprustakan merupakan kegiatan dalam rangka terus membina perpustakaan-perpustakaan yang ada di Kota Salatiga. Kegiatan ini berupa seminar, rakor maupun diskusi antar petugas perpustakaan. kegiatan ini diselenggarakan di ruang serbaguna Dinpersip Salatiga.</p>\n', '2018-11-08');
INSERT INTO `agenda` VALUES (7, 'Seminar Perpustakaan Khusus', '2018-11-13', 'Seminar Perpustakaan Khusus', '', '', NULL, '<p>\n	Kegatan seminar perpustakaan khusus merupakan kegiatan penyampaian informasi, materi serta diskusi dengan para peserta petugas perpustakaan khusus yang ada di Kota Salatiga. Sama halnya dengan perpustakaan-perpustakaan yang lain di Salatiga, perpustakaan khusus juga memiliki peran penting dalam meningkatkan budaya baca. Perpustakaan khusus memiliki berbagai koleksi yang lebih spesifik dan unik. sehingga memiliki daya tarik tersendiri. Oleh karena itu, Dinpersip Salatiga sebagai OPD yang bergerak dalam pelayanan perpustakaan, berusaha untuk terus membina perpustakaan-perpustakaan yang ada di Kota Salatiga serta bersinergi untuk mewujudkan Salatiga Smart Salatiga Kota Literasi. Kgiatan ini diselenggarakan di ruang serbaguna Dinpersip Salatiga.</p>\n', '2018-11-08');
INSERT INTO `agenda` VALUES (8, 'Sosialisasi Kearsipan', '2018-11-15', 'Sosialisasi Kearsipan', '', '', NULL, '<p>\n	Sosialisai kearsipan merupakan salah satu program kerja Dinpersip Salatiga dalam rangka untuk terus membina dan memajukan khasanah arsip di Kota Salatiga. Kegiatan ini diselenggarakan secara bertahap dengan tahapan berbeda setiap sesinya, yaitu dengan seminar, rakor maupun monitoring dan diskusi. peseta dari kegiatan ini adalah para petugas kearsipan maupun pemangku kebijakan dari masing-masing OPD di Kota Salatiga. Kegiatan ini diselenggarakan di ruang serbaguna Dinpersip Salatiga.</p>\n', '2018-11-08');
INSERT INTO `agenda` VALUES (9, 'Pelatihan Otomasi Perpustakaan', '2018-11-19', 'Pelatihan Otomasi Perpustakaan', '', '', NULL, '<p>\n	Pelatihan otomasi perpustakaan merupakan kegiatan pembelajaran berbasis komputer dalam pengelolaan perpustakaan. Software yang digunakan sebagai bahan pelatihan ini&nbsp; adalah SEnayan Library Managemen System (SLiMS). Peserta dalam kegiatan adalah para petugas perpustakaan yang ada di Kota Salatiga. Kegiatan ini diselenggarakan di ruang pelatihan Badan Kepegawaian (BKDiklatda) Kota Salatiga.</p>\n', '2018-11-08');
INSERT INTO `agenda` VALUES (10, 'Seminar Perpustakaan Khusus', '2018-11-21', 'Seminar Perpustakaan Khusus', '', '', NULL, '<p>\n	Kegiatan ini akan berlangsung di ruang pertemuan lantai 2 gedung Dinpersip Salatiga, dengan peserta para petugas perpustakaan khusus yang ada di Kota Salatiga.</p>\n', '2018-11-19');
INSERT INTO `agenda` VALUES (11, 'Sosialisai Perpustakaan', '2018-11-22', 'Sosialisai Perpustakaan', '', '', NULL, '<p>\n	Kegiatan ini akan diselenggarakan di ruang pertemuan lantai 2 Gedung Dinpersip Salatiga, dengan peserta para petugas perpustakaan yang ada di Kota Salatiga. Selain akan berlangusng kegiatan dalam bentuk seminar, kegiatan ini juga akan dilaksanakan pemberian banyuan buku bagi perpustakaan kelurahan serta taman baca yang ada di Kota Salatiga. Kegiatan ini juga akan di hadiri oleh Ibu Walikota Salatiga.</p>\n', '2018-11-19');
INSERT INTO `agenda` VALUES (12, 'Display Inovasi Administrasi Negara (INAGARA)', '2018-11-23', 'Lomba Inovasi Inagara', '', '', NULL, '<p style=\"text-align: justify;\">\n	Dikemas dalam bentuk pameran, kegiatan ini diselenggarakan di Lapangan Pancasila Salatiga. Diikuti oleh seluruh OPD di Kota Salatiga, perusahaan, komunitas dan UMKM, kegiatan ini akan berlangsung selama dua hari yaitu mulai tanggal 23 November hingga 24 November 2018. kegiatan ini diselenggarakan dalam rangka mendukung penyebarluasan informasi mengenai inovasi dalam penyelenggraaan pemerintahan dan pelayanan publik di Kota Salatiga.</p>\n', '2018-11-19');
INSERT INTO `agenda` VALUES (13, 'Pengadaan Buku Perpustakaan Tahap I (Ebook)', '2019-03-18', '', '', '', NULL, '', '2019-03-13');
INSERT INTO `agenda` VALUES (14, 'Pelatihan Otomasi Perpustakaan', '2019-03-19', '', '', '', NULL, '<p>\n	Pelatihan otomasi perpustakaan merupakan salah satu kegiatan Dinpersip Salatiga yang dilaksanakan untuk pengembangan pengeloalaan perpustakaan berbasis aplikasi yaitu Senayan Library management System (SLiMS). kegiatan ini akan diikuti oleh para petugas perpustakaan yang ada di Kota Salatiga.</p>\n', '2019-03-13');
INSERT INTO `agenda` VALUES (15, 'Sarasehan Kepustakawanan', '2019-03-14', '', '', '', NULL, '<p>\n	Kegiatan ini merupakan kegiatan ruti yang dilakukan oleh Dinpersip guna membahas berbagai isu dan atau langkah dalam pengembagan perpustakaan di Kota Salatiga. Kegiatan ini akan dilaksanakan di ruang serbaguna lantai Dinpersip Salatiga, dengan format Forum Group Discussion (FGD) para pengelola perpustakaan maupun para pengambil kebijakan dalam perpustakaan.</p>\n', '2019-03-13');
INSERT INTO `agenda` VALUES (16, 'Visitasi dan Pembinaan Perpustakaan', '2019-03-08', '', '', '', NULL, '<p>\n	Visitasi dan pembinaan perpustakaan akan dilakukan selama kurang lebih 15 hari. Dinpeersip Salatiga melakukan visitasi dan pembinaan kepada perpustakaan-perpustakaan yang ada di Kota Salatiga, mulai dari perpustakaan sekolah hingga perpustakaan kelurahan.</p>\n', '2019-03-13');
INSERT INTO `agenda` VALUES (17, 'Fumigasi Perpustakaan', '2019-03-07', '', '', '', NULL, '<p>\n	Fumigasi bahan pustaka dilakukan dengan cara pengasapan pada koleksi-koleksi buku di perpustakaan. Hal ini dilakukan untuk menjaga kelestarian bahan pustaka dari kerusakan yang disebabkan oleh hama seperti rayap.</p>\n', '2019-03-13');
INSERT INTO `agenda` VALUES (18, 'Stock Opname Koleksi Bahan Pustaka', '2019-03-04', '', '', '', NULL, '<p>\n	Stock opanme koleksi bahan pustaka perpustakaan merupakan kegiatan pengecekan kembali koleksi yang dimiliki sesuai dengan database bahan pustaka yang telah tersimpan dalam sistem aplikasi perpustakaan. Selain pengecekan data, kegiatan ini juga merupakan kegiatan pemilihan buku yang masih relevan bagi pembaca, pemilihan buku rusak, serta penataan ulang layout rak serta penataan ulang buku dalam rak. Kegiatan ini dilaksanakan selama tiga hari di Dinas Perpustakaan dan Kearsioan Kota Salatiga</p>\n', '2019-03-13');
INSERT INTO `agenda` VALUES (19, 'Pelatihan Otomasi Perpustakaan', '2019-04-22', 'Pelatihan Otomasi Perpustakaan', '', '', NULL, '<p style=\"text-align: justify;\">\n	<span style=\"font-size:14px;\"><span style=\"font-family:tahoma,geneva,sans-serif;\"><span style=\"color: rgb(57, 57, 57); background-color: rgb(245, 245, 245);\">Pelatihan otomasi perpustakaan merupakan salah satu kegiatan Dinpersip Salatiga yang dilaksanakan untuk pengembangan pengeloalaan perpustakaan berbasis aplikasi yaitu Senayan Library management System (SLiMS). kegiatan ini akan diikuti oleh para petugas perpustakaan yang ada di Kota Salatiga.</span></span></span></p>\n', '2019-04-09');
INSERT INTO `agenda` VALUES (20, 'Public Hearing (Raperda Perpustakaan)', '2019-04-18', 'Public Hearing (Raperda Perpustakaan)', '', 'Public Hearing (Raperda Perpustakaan)', NULL, '<p>\n	<span style=\"font-size:14px;\"><span style=\"font-family:tahoma,geneva,sans-serif;\">Merupakan kegiatan lanjutan dari Forum Group Discussion (FGD) Perpustakaan. Kegiatan ini merupakan salah satu rangkaian kegiatan dalam pembentukan Raperda Perpustakaan di Kota Salatiga. Kegiatan ini akan berlangsung di ruang serbaguna lantai 2 Dinpersip Salatiga.</span></span></p>\n', '2019-04-09');
INSERT INTO `agenda` VALUES (21, 'FGD Kearsipan', '2019-04-15', '', '', '', NULL, '<p>\n	Dilaksanakan di ruang serbaguna lantai 2 Dinpersip Salatiga, kegiatan ini akan membahas pembentukan Raperda Kearsipan di Kota Salatiga. dengan para peserta adalah petugas kearsipan di lingkungan Pemerintah Kota Salatiga.</p>\n', '2019-04-09');
INSERT INTO `agenda` VALUES (22, 'Seminar Kepustakawanan', '2019-04-11', 'Seminar Kepustakawanan', '', '', NULL, '<p>\n	<span style=\"font-size:14px;\"><span style=\"font-family:tahoma,geneva,sans-serif;\"><span style=\"color: rgb(57, 57, 57); background-color: rgb(245, 245, 245);\">Pelatihan otomasi perpustakaan merupakan salah satu kegiatan Dinpersip Salatiga yang dilaksanakan untuk pengembangan pengeloalaan perpustakaan berbasis aplikasi yaitu Senayan Library management System (SLiMS). kegiatan ini akan diikuti oleh para petugas perpustakaan yang ada di Kota Salatiga.</span></span></span></p>\n', '2019-04-09');
INSERT INTO `agenda` VALUES (23, 'Pelatihan iSalatiga', '2019-04-08', 'Pelatihan iSalatiga', '', '', NULL, '<p>\n	<span style=\"font-family:tahoma,geneva,sans-serif;\"><span style=\"font-size:14px;\">Kegiatan pelatihan dilaksanakan di ruang komputer Badan Kepegawaian Daerah Kota Salatiga. Selain untuk lebih mengenalkan iSalatiga, pelatihan ini diselenggarakan guna menambah khazanah buku digital karya-karya Salatiga. Pelatihan ini mengajarkan bagaimana cara memanfaatkan fitu-fitur iSalatiga dan bagaimana cara mengunggah karya-karya/konten buku digital di aplikasi iSalatiga. Peserta dari kegiatan ini adalah para petugas perpustakaan yang ada di Kota Salatiga, penerbit, serta perwakilan dari beberapa lembaga daerah maupun swasta di Kota Salatiga.</span></span></p>\n', '2019-04-09');
INSERT INTO `agenda` VALUES (24, 'Lomba Dongeng', '2019-06-17', 'Lomba Dongeng', '', '', NULL, '<p>\n	Lomba Dongeng akan kembali diselenggarakan oleh Dinpersip Salatiga. Peserta lomba terdiri dari beberapa kategori yaitu kategori sekolah dasar dan sekolah menengah pertama. Kegiatan ini akan dilaksanakan di lingkungan Dinas Perpustakaan Dan Kearsipan Kota Salatiga.</p>\n', '2019-05-13');
INSERT INTO `agenda` VALUES (25, 'Sosialisasi Perpustakaan dan Ngabuburit Bersama Pertuni Salatiga', '2019-05-14', 'Sosialisasi Perpustakaan dan Ngabuburit Bersama Pertuni Salatiga', '', '', NULL, '<p>\n	Kegiatan ngabuburit dan buka bersama dengan kawan-kawan Pertuni merupakan kegiatan tahunan Dinpersip Salatiga. Selain bersama Pertuni Salatiga, kegiatan ini juga diikuti beberapa tamu undangan. Kegiatan ini akan diselenggarakan halaman Dinpersip Salatiga dengan panggung pentas seni.</p>\n', '2019-05-13');
INSERT INTO `agenda` VALUES (27, 'Hari Buku Nasional', '2019-05-17', '', '', '', NULL, '<p>\n	Hari buku nasional diperingati setiap tanggal 17 Mei. Hari buku nasional dicetuskan bertepatan dengan persemian Perpustakaan Nasional RI yaitu pada tanggal 17 Mei tahun 1980.</p>\n', '2019-05-17');
INSERT INTO `agenda` VALUES (28, 'Workshop Pantomin dan Workshop Kepenulisan', '2019-07-18', 'orkshop Pantomin dan Workshop Kepenulisan', 'orkshop Pantomin dan Workshop Kepenulisan', 'orkshop Pantomin dan Workshop Kepenulisan', NULL, '<p>\n	Workshop Pantomin dan Workshop Kepenulisan akan dilaksanakan di Dinpersip Salatiga pada hari Kamis 18 Juli 2019. Woekshop Pantomin akan dilaksanakan pada pkl. 10.00 - 12.00 WIB. sedangkan Workshop Kepenulisan dilaksanakan pukul 14.00-18.00 WIB.&nbsp; selain itu, kegiatan pada pukul 16.00 - 18.00 akan dilanjutkan dengan Bincang Kepenulisan &quot;Menulis di Salatiga&quot;</p>\n', '2019-07-10');
INSERT INTO `agenda` VALUES (29, 'Literasi Finansial dan Permainan Anak Tradisional', '2019-07-17', 'Literasi Finansial', '', 'Literasi Finansial', NULL, '<p>\n	Diselenggarakan di halaman Dinpersip Salatiga, kegiatan ini akan berlangsung dari pukul 08.00 s.d 11.00 WIB yang kemudian akan dilanjutkan dengan musik akustik dan parade puisi hingga pukul 15.00 WIB</p>\n', '2019-07-10');
INSERT INTO `agenda` VALUES (30, 'Lomba Dongeng, Workshop Membatik, Workshop Craft dan Wayang Kecil', '2019-07-16', 'Lomba Dongeng, Workshop Membatik, Workshop Craft dan Wayang Kecil', '', 'Lomba Dongeng, Workshop Membatik, Workshop Craft dan Wayang Kecil', NULL, '<p>\n	diselenggarakan di ruang serbaguana dan halaman Dinpersip Salatiga, kegiatan ini akan dimulai pukul 08.00 WIB dengan agenda sebagai berikut</p>\n<p>\n	Lomba Dongeng : 08.00 - 12.00 WIB</p>\n<p>\n	Workshop Membatik : 13.00 - 15.00 WIB</p>\n<p>\n	Workshop Craft : 15.00 - 17.00 WIB</p>\n<p>\n	Wayang Kecil : 19.00 - 20.00 WIB</p>\n', '2019-07-10');
INSERT INTO `agenda` VALUES (31, 'Pemutaran Film Konten Lokal \"Bongpay\"', '2019-07-15', 'Pemutaran Film Konten Lokal \"Bongpay\"', '', 'Pemutaran Film Konten Lokal \"Bongpay\"', NULL, '<p>\n	Kegiatan ini akan dilaksanakan di ruang Multimedia Dinpersip Salatiga mulai pukul 10.00 - 11.00 WIB</p>\n', '2019-07-10');
INSERT INTO `agenda` VALUES (32, 'Pemutaran Film Konten Lokal \"Malam 1 Suro di Benoyo\"\"', '2019-07-14', 'Pemutaran Film Konten Lokal \"Malam 1 Suro di Benoyo\"\"', '', 'Pemutaran Film Konten Lokal \"Malam 1 Suro di Benoyo\"\"', NULL, '<p>\n	Kegiatan ini akan dilaksanakan di ruang Multimedia Dinpersip Salatiga mulai pukul 10.00 - 11.00 WIB</p>\n', '2019-07-10');
INSERT INTO `agenda` VALUES (33, 'Pemutaran Film Konten Lokal \"Misteri Kereta Kuno di Salatiga\"', '2019-07-13', 'Pemutaran Film Konten Lokal \"Misteri Kereta Kuno di Salatiga\"', '', 'Pemutaran Film Konten Lokal \"Misteri Kereta Kuno di Salatiga\"', NULL, '<p>\n	Kegiatan ini akan dilaksanakan di ruang Multimedia Dinpersip Salatiga mulai pukul 10.00 - 11.00 WIB</p>\n', '2019-07-10');
INSERT INTO `agenda` VALUES (34, 'Pemutaran Film Konten Lokal \"Makna dan Nilai Saparan Desa Warak Salatiga\"', '2019-07-12', 'Pemutaran Film Konten Lokal \"Makna dan Nilai Saparan Desa Warak Salatiga\"', '', 'Pemutaran Film Konten Lokal \"Makna dan Nilai Saparan Desa Warak Salatiga\"', NULL, '<p>\n	Kegiatan ini akan dilaksanakan di ruang Multimedia Dinpersip Salatiga mulai pukul 10.00 - 11.00 WIB</p>\n', '2019-07-10');
INSERT INTO `agenda` VALUES (35, 'Pembukaan Pameran Buku Konten Lokal dan Terbitan Daerah', '2019-07-11', 'Pembukaan Pameran Buku Konten Lokal dan Terbitan Daerah', '', 'Pembukaan Pameran Buku Konten Lokal dan Terbitan Daerah', NULL, '<p>\n	Kegiatan Pameran Buku Konten Lokal dan Terbitan Daerah tahun 2019 mengambil tema &quot;Membaca Salatiga jilid IV&quot;. kegiatan ini diselenggarkan di halaman Dinpersip Salatiga mulai hari Kamis, 11 Juli 2019 s.d hari Kamis,18 Juli 2019, buka mulai pukul 08.00 s.d 20.00 WIB</p>\n', '2019-07-10');
INSERT INTO `agenda` VALUES (36, 'Bimtek Perpustakaan Masyarakat', '2019-11-19', 'Bimtek Perpustakaan Masyarakat', '', '', NULL, '<p>\n	Bimtek Perpustakaan Masyarakat akan diselenggarakan di ruang serba guna lantai 2 Dinpersip Salatiga. Kegiatan ini akan diikuti oleh seluruh petugas taman bacaan masyarakat dan kelurahan yang ada di Kota Salatiga.</p>\n', '2019-11-18');
INSERT INTO `agenda` VALUES (37, 'Gathering & Bazar Komunitas Salatiga', '2019-12-08', '', '', '', NULL, '<p>\n	Gathering dan Bazar Komunitas Salatiga akan dilaksanakan di halam Dinpersip Salatiga. Pameran ini akan menampilkan berbagai koleksi komunitas seperti Diecast, Action Figure, Gundam, Handmade, Air Softgun Cosplay dan lain sebagainya.&nbsp;</p>\n', '2019-11-18');
INSERT INTO `agenda` VALUES (38, 'Workshop iSalatiga', '2020-03-11', 'Workshop iSalatiga', '', '', NULL, '<p>\n	iSalatiga merupakan aplikasi perpustakaan digital Dinpersip Salatiga. Guna meningkatkan koleksi konten lokal Salatiga dalam perpustakaan digital ISalatiga, akan diselenggarakan workshop bagi petugas perpustakaan di Kota Salatiga. Kegiatan ini akan diselenggrakan pada tanggal 11 maret hingga 13 maret 2020.</p>\n', '2020-01-22');
INSERT INTO `agenda` VALUES (39, 'Stock Opname Bahan Pustaka', '2020-02-17', 'Stock Opname Bahan Pustaka', '', '', NULL, '<p>\n	Stock Opname bahan pustaka perpustakaan merupakan kegiatan pengecekan kembali koleksi yang dimiliki Perpusda Salatiga. Kegiatan stock opname akan dilaksanakan pada tanggal 17 s/d 20 Februari 2020. Dengan adanya kegiatan ini, maka pelayanan hanya dibuka untuk pengembalian buku saja.</p>\n', '2020-01-22');
INSERT INTO `agenda` VALUES (40, 'Sosialisasi Audit Kearsipan', '2020-01-23', 'Sosialisasi Audit Kearsipan', '', '', NULL, '<p>\n	Bertempat di ruang serbaguna Dinpersip Salatiga, kegiatan ini akan dilaksanakan pada tanggal 23 januari 2020. Peserta dari kegiatan ini adalah para petugas kearsipan pada masing-masing Organisasi Perangkat Daerah di lingkungan Pemerintah Kota Salatiga.</p>\n', '2020-01-22');
INSERT INTO `agenda` VALUES (41, 'Stock Opname Perpustakaan', '2020-02-17', 'Stock Opname Perpustakaan', '', 'Stock Opname Perpustakaan', NULL, '<p style=\"margin: 0cm 0cm 22.5pt; text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">\n	<span style=\"font-size: 9pt; font-family: Arial, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Stock Opname bahan pustaka perpustakaan merupakan kegiatan pengecekan kembali koleksi yang dimiliki Perpusda Salatiga. Kegiatan stock opname akan dilaksanakan pada tanggal 17 s/d 20 Februari 2020. Dengan adanya kegiatan ini, maka pelayanan hanya dibuka untuk pengembalian buku saja.</span><o:p></o:p></p>\n<p>\n	&nbsp;</p>\n', '2020-02-26');
INSERT INTO `agenda` VALUES (42, 'Workshop i-Salatiga', '2020-03-11', 'Workshop i-Salatiga', '', 'Workshop i-Salatiga', NULL, '<p style=\"margin: 0cm 0cm 22.5pt; text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">\n	<span style=\"font-size: 9pt; font-family: Arial, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">iSalatiga merupakan aplikasi perpustakaan digital Dinpersip Salatiga. Guna meningkatkan koleksi konten lokal Salatiga dalam perpustakaan digital ISalatiga, akan diselenggarakan workshop bagi petugas perpustakaan di Kota Salatiga. Kegiatan ini akan diselenggrakan pada tanggal 11 maret hingga 13 maret 2020.</span><span style=\"font-size:14.0pt;font-family:&quot;Arial&quot;,sans-serif\"><o:p></o:p></span></p>\n<p>\n	&nbsp;</p>\n', '2020-02-26');
INSERT INTO `agenda` VALUES (43, 'Penarikan Kuesioner Audit Kearsipan II', '2020-02-14', 'Penarikan Kuesioner Audit Kearsipan II', '', 'Penarikan Kuesioner Audit Kearsipan II', NULL, '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:\n collapse;width:188pt\" width=\"251\">\n	<tbody>\n		<tr height=\"42\" style=\"height:31.5pt\">\n			<td class=\"xl63\" height=\"42\" style=\"height:31.5pt;width:188pt\" width=\"251\">\n				Monitoring, Evaluasi dan Pelaporan Situasi Kondisi Data</td>\n		</tr>\n	</tbody>\n</table>\n<p>\n	&nbsp;</p>\n', '2020-02-26');
INSERT INTO `agenda` VALUES (44, 'Pertemuan Kelompok Kerja Pustakawan (1)', '2020-03-19', 'Pertemuan Kelompok Kerja Pustakawan (1)', '', 'Pertemuan Kelompok Kerja Pustakawan (1)', NULL, '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:\n collapse;width:188pt\" width=\"251\">\n	<tbody>\n		<tr height=\"42\" style=\"height:31.5pt\">\n			<td class=\"xl65\" height=\"42\" style=\"height:31.5pt;width:188pt\" width=\"251\">\n				Pelaksanaan Koordinasi Pengembangan Kepustakaan</td>\n		</tr>\n	</tbody>\n</table>\n<p>\n	&nbsp;</p>\n', '2020-02-26');
INSERT INTO `agenda` VALUES (45, 'Pengolahan Hasil Kuesioner Audit Kearsipan II', '2020-04-01', 'Pengolahan Hasil Kuesioner Audit Kearsipan II', 'Pengolahan Hasil Kuesioner Audit Kearsipan II', 'Pengolahan Hasil Kuesioner Audit Kearsipan II', NULL, '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:\n collapse;width:188pt\" width=\"251\">\n	<tbody>\n		<tr height=\"42\" style=\"height:31.5pt\">\n			<td class=\"xl65\" height=\"42\" style=\"height:31.5pt;width:188pt\" width=\"251\">\n				Monitoring, Evaluasi dan Pelaporan Situasi Kondisi Data</td>\n		</tr>\n	</tbody>\n</table>\n<p>\n	&nbsp;</p>\n', '2020-02-26');
INSERT INTO `agenda` VALUES (46, 'Seminar perpustakaan', '2020-04-08', 'Seminar perpustakaan', '', '', NULL, '<p>\n	Pelaksanaan Koordinasi Pengembangan Kepustakaan</p>\n', '2020-03-26');
INSERT INTO `agenda` VALUES (47, 'Pertemuan Kelompok Kerja Pustakawan (2)', '2020-04-14', 'Pertemuan Kelompok Kerja Pustakawan (2)', '', '', NULL, '<p>\n	Pelaksanaan Koordinasi Pengembangan Kepustakaan</p>\n', '2020-03-26');
INSERT INTO `agenda` VALUES (48, 'Seminar Kearsipan', '2020-04-16', 'Seminar Kearsipan', '', '', NULL, '<p>\n	Sosialisasi/Penyusunan Kearsipan di Lingkungan Instansi Pemerintah/Swasta</p>\n', '2020-03-26');
INSERT INTO `agenda` VALUES (49, 'Penyebaran Kuesioner Audit Kearsipan III/ Pengumuman Audit Kearsipan III', '2020-04-16', 'Penyebaran Kuesioner Audit Kearsipan III/ Pengumuman Audit Kearsipan III', '', '', NULL, '<p>\n	Monitoring, Evaluasi dan Pelaporan Situasi Kondisi Data</p>\n', '2020-03-26');
INSERT INTO `agenda` VALUES (50, 'Upacara Peringatan Hari Kesaktian Pancasila', '2020-10-01', '', '', '', NULL, '<p>\n	Upacara dilakukan secara virtual, disiarkan langsung dari Monumen Pancasila Sakti</p>\n', '2020-11-09');
INSERT INTO `agenda` VALUES (51, 'Pendaftaran Lomba Menulis Konten Lokal Salatiga', '2020-10-20', '', '', '', NULL, '<p>\n	Lomba menulis tingkat Kota Salatiga diselenggarakan oleh Dinas Perpustakaan dan Kearsipan Kota Salatiga. Lomba ini di peruntukkan bagi siswa-siswi sekolah dasar dan sekolah menengah pertama di Salatiga. Pendaftaran dibuka mulai tanggal 20-30 Oktober 2020. Batas pengumpuan naskha/artikel paling lambat tanggal 9 November 2020. Pengumumuman Pemenang tanggal 16 November 2020.</p>\n', '2020-11-09');
INSERT INTO `agenda` VALUES (52, 'Workshop Audit Kearsipan', '2020-10-21', '', '', '', NULL, '<p>\n	Workshop Pengawasan Kearsipan akan diselenggarakan di ruang serbagna Dinpersip dengan peserta para pegawai/karyawan dinpersip. Pembicara dalam kegiatan ini dalah Kepala Seksi Pengawasan Kearsipan Prov. Jawa Tengah Lutfi Hassan,SH</p>\n<p>\n	&nbsp;</p>\n', '2020-11-09');
INSERT INTO `agenda` VALUES (53, 'Rakor Monitoring Perpustakaan Tahun 2020', '2020-10-22', '', '', '', NULL, '<p>\n	Rakor monitoring perpustakaan tahun 2020 membahas tentang persiapan dan evaluasi akreditasi perpustakaan yang telah dilaksanakan di Salatiga. Kegiatan yang dilaksanakan di ruang plumpungan Setda Salatiga ini diikuti oleh para Kepala Sekolah dan para pustakawan di Salatiga. Selain kegiatan rakor juga dilaksanakan pembagian sertifikat akreditasi kepada 13 perpustakaan di salatiga yang telah selesai dilaksanakan pada tahun 2020.</p>\n', '2020-11-09');
INSERT INTO `agenda` VALUES (54, 'Sosialisasi Pengawasan Kearsipoan Internal', '2020-10-27', '', '', '', NULL, '<p>\n	Sosialisasi Penagwasan Internal diselenggarakan oleh Dinas Kearsipan dan Perpustakaan Provinsi Jawa Tengah secara virtual melalui aplikasi zoom. Kegiatan ini diselenggarakan dalam rangka mempersiapkan audit kearsipan internal yang akan dilakukan oleh Provinsi Jawa Tengah.</p>\n', '2020-11-09');
INSERT INTO `agenda` VALUES (55, 'Pengumpulan Naskah Lomba Menulis', '2020-11-09', '', '', '', NULL, '<p>\n	Batas pengumpulan naskah lomba menulis konten lokal salatiga. Naskah cetak dikumpulkan secara langsung pada perpustakaan daerah Kota Salatiga</p>\n', '2020-11-09');
INSERT INTO `agenda` VALUES (56, 'Pameran Arsip Virtual Provinsi Jawa Tengah', '2020-11-10', '', '', '', NULL, '<p>\n	Pameran Arsip Virtual diselenggarakan oleh Dinas Kearsipan dan Perpustakan Provinsi Jawa Tengah. Pameran ini akan menampilakan berbagai arsip baik foto maupun video dalam masa perjuangan di masing-masing di Jawa Tengah. Pameran ini dapat diakses melalui arpusda.jatengprov.go.id</p>\n', '2020-11-09');
INSERT INTO `agenda` VALUES (57, 'Pembinaan Perpustakaan Sekolah Melalui KKP', '2021-03-10', '', '', '', NULL, '<p>\n	Kegiatan pembinaan seluruh perpustakaan sekolah melalui Kelompok Kerja Pustakawan yang telah terbagi setiap daerah/kecamatan di Salatiga.</p>\n', '2021-04-30');
INSERT INTO `agenda` VALUES (58, 'Pelaksanaan Audit Kearsipan', '2021-04-15', '', '', '', NULL, '<p>\n	Audit Kearsipan di seluruh OPD di linkungan pemerintah Kota Salatiga. Kegiatan ini akan dilaksanakan mulai tanggal 15 s.d 25 Maret 2021</p>\n', '2021-04-30');
INSERT INTO `agenda` VALUES (59, 'Sosialiasi Kearsipan 1', '2021-04-01', '', '', '', NULL, '<p>\n	Dilaksanakan di ruang serbaguna Dinpersip, kegiatan sosialisai diikuti oleh arsiparis/petugas perpustakaan di masing-masing OPD pemerintah Kota Salatiga.&nbsp;</p>\n', '2021-04-30');
INSERT INTO `agenda` VALUES (60, 'Seminar Perpustakaan Khusus', '2021-04-06', '', '', '', NULL, '<p>\n	Dilaksanakan di ruang serbaguna Dinpersip, peserta kegiatan ini adalah para pustakawan/ petugas perpustakaan perpustakaan khusus yang ada di Salatiga dengan narasumber dari Dinas Kearsipan dan Perpuastakaan Provinsi Jawa Tengah dan internal Dinpersip</p>\n', '2021-04-30');
INSERT INTO `agenda` VALUES (61, 'Lokakarya Perpustakaan', '2021-04-27', '', '', '', NULL, '<p>\n	Lokakarya Perpustakaan mengambil tema pengenalan layanan berkebutuhan khusus di Perpustakaan Kota Salatiga. Kegiatan ini dilaksanakan di Dinpersip dan diikuti oleh para penyandang disabilitas netra yang tergabung dalam Persatuan Tunanetra Indonesia (Pertuni).</p>\n', '2021-04-30');
INSERT INTO `agenda` VALUES (63, 'Pelatihan Kepustakawanan', '2021-05-24', '', '', '', NULL, '<p>\n	Kegiatan pengembangan kemampuan pustakawanan dalam pengelola perpustakaan. Kegiatan ini dilaksanakan di ruang serbaguna Dinpersip Salatiga dengan peserta para pustakawan di Kota Salatiga dan akan dilaksanakan beberapa kali pertemuan.</p>\n', '2021-04-30');
INSERT INTO `agenda` VALUES (64, 'Pembinaan Perpustakaan Sekolah Melalui KKP', '2021-06-08', '', '', '', NULL, '<p>\n	Kegiatan pembinaan seluruh perpustakaan sekolah melalui Kelompok Kerja Pustakawan yang sudah terbagi di maing-masing kelurahan/kecamatan di Kota Salatiga</p>\n', '2021-04-30');

-- ----------------------------
-- Table structure for album
-- ----------------------------
DROP TABLE IF EXISTS `album`;
CREATE TABLE `album`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thumbnail` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_album` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of album
-- ----------------------------
INSERT INTO `album` VALUES (10, '20022013064.jpg', 'Bermain dan Belajar', 'foto');
INSERT INTO `album` VALUES (17, '1.JPG', 'Pameran konten lokal', 'foto');
INSERT INTO `album` VALUES (18, 'IMG_2599.JPG', 'Pameran konten lokal', 'foto');
INSERT INTO `album` VALUES (19, 'IMG_2618.JPG', 'Ngabuburit', 'foto');
INSERT INTO `album` VALUES (20, 'IMG_2640.JPG', 'Ngabuburit', 'foto');
INSERT INTO `album` VALUES (21, 'IMG_2654.JPG', 'Ngabuburit', 'foto');
INSERT INTO `album` VALUES (23, 'IMG_2924.JPG', 'Salatiga Expo', 'foto');
INSERT INTO `album` VALUES (24, 'IMG_2931.JPG', 'Salatiga Expo', 'foto');
INSERT INTO `album` VALUES (25, 'IMG_2954.JPG', 'Salatiga Expo', 'foto');
INSERT INTO `album` VALUES (26, 'IMG_2962.JPG', 'Salatiga Expo', 'foto');
INSERT INTO `album` VALUES (27, 'IMG_2967.JPG', 'Salatiga Expo', 'foto');
INSERT INTO `album` VALUES (28, 'IMG_2970.JPG', 'Salatiga Expo', 'foto');
INSERT INTO `album` VALUES (29, 'IMG_2977.JPG', 'Salatiga Expo', 'foto');
INSERT INTO `album` VALUES (30, 'IMG_2981.JPG', 'Salatiga Expo', 'foto');
INSERT INTO `album` VALUES (31, 'IMG_2983.JPG', 'Salatiga Expo', 'foto');
INSERT INTO `album` VALUES (32, 'IMG_3005.JPG', 'Salatiga Expo', 'foto');
INSERT INTO `album` VALUES (33, 'IMG_3042.JPG', 'Salatiga Expo', 'foto');
INSERT INTO `album` VALUES (34, 'IMG_3056.JPG', 'Salatiga Expo', 'foto');
INSERT INTO `album` VALUES (35, 'IMG_3057.JPG', 'Salatiga Expo', 'foto');
INSERT INTO `album` VALUES (36, 'IMG_3229.JPG', 'Pameran konten lokal', 'foto');
INSERT INTO `album` VALUES (37, 'IMG_3284.JPG', 'Pameran konten lokal', 'foto');
INSERT INTO `album` VALUES (38, 'IMG_3290.JPG', 'Pameran konten lokal', 'foto');
INSERT INTO `album` VALUES (39, 'IMG_3293.JPG', 'Pameran konten lokal', 'foto');
INSERT INTO `album` VALUES (40, 'IMG_3316.JPG', 'Pameran konten lokal', 'foto');
INSERT INTO `album` VALUES (41, 'IMG_3326.JPG', 'Pameran konten lokal', 'foto');
INSERT INTO `album` VALUES (42, 'IMG_3387.JPG', 'Pameran konten lokal', 'foto');
INSERT INTO `album` VALUES (43, 'IMG_3403.JPG', 'Pameran konten lokal', 'foto');
INSERT INTO `album` VALUES (44, 'IMG_3427.JPG', 'Pameran konten lokal', 'foto');
INSERT INTO `album` VALUES (45, 'IMG_3440.JPG', 'Pameran konten lokal', 'foto');
INSERT INTO `album` VALUES (46, 'IMG_3523.JPG', 'Pameran konten lokal', 'foto');
INSERT INTO `album` VALUES (47, 'IMG_3448.JPG', 'Pameran konten lokal', 'foto');
INSERT INTO `album` VALUES (48, 'IMG_3620.JPG', 'Pameran konten lokal', 'foto');
INSERT INTO `album` VALUES (49, 'IMG_3649.JPG', 'Pameran konten lokal', 'foto');
INSERT INTO `album` VALUES (50, 'IMG_3653.JPG', 'Pameran konten lokal', 'foto');
INSERT INTO `album` VALUES (51, 'IMG_3871.JPG', 'Pameran konten lokal', 'foto');
INSERT INTO `album` VALUES (52, 'IMG_3909.JPG', 'Pameran konten lokal', 'foto');
INSERT INTO `album` VALUES (53, 'IMG_3919.JPG', 'Pameran konten lokal', 'foto');
INSERT INTO `album` VALUES (54, 'IMG_3941.JPG', 'Pameran konten lokal', 'foto');
INSERT INTO `album` VALUES (55, 'IMG_20180713_091502.jpg', 'Salatiga Expo', 'foto');
INSERT INTO `album` VALUES (56, 'IMG_20180713_164937.jpg', 'Salatiga Expo', 'foto');
INSERT INTO `album` VALUES (57, 'IMG_20180713_201135.jpg', 'Salatiga Expo', 'foto');
INSERT INTO `album` VALUES (58, 'IMG_20180713_202341.jpg', 'Salatiga Expo', 'foto');
INSERT INTO `album` VALUES (59, 'IMG_20180714_144646.jpg', 'Salatiga Expo', 'foto');
INSERT INTO `album` VALUES (60, 'IMG_20180724_102624.jpg', 'Pameran konten lokal', 'foto');
INSERT INTO `album` VALUES (61, 'IMG_20180724_121806.jpg', 'Pameran konten lokal', 'foto');
INSERT INTO `album` VALUES (63, '2re.jpg', 'Ramah Tamah jamal Mirdad', 'foto');
INSERT INTO `album` VALUES (64, '5resize.jpg', 'Penyerahan Perling', 'foto');
INSERT INTO `album` VALUES (65, '6re.jpg', 'Penyerahan Perling', 'foto');
INSERT INTO `album` VALUES (66, '7re.jpg', 'Penyerahan Perling', 'foto');
INSERT INTO `album` VALUES (67, '8re.jpg', 'Kunjungan ', 'foto');
INSERT INTO `album` VALUES (68, '10re.jpg', 'Kunjungan ', 'foto');

-- ----------------------------
-- Table structure for android_image_carousel
-- ----------------------------
DROP TABLE IF EXISTS `android_image_carousel`;
CREATE TABLE `android_image_carousel`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of android_image_carousel
-- ----------------------------
INSERT INTO `android_image_carousel` VALUES (1, '/assets/slider/1.JPG', 'image 1', 1);
INSERT INTO `android_image_carousel` VALUES (2, '/assets/slider/Acara-Kolase-1.jpg', 'image 2', 1);
INSERT INTO `android_image_carousel` VALUES (3, '/assets/slider/IMG_1565.JPG', 'image 3', 1);
INSERT INTO `android_image_carousel` VALUES (4, '/assets/slider/Perpusda_Salatiga_06.jpg', 'iamge 4', 1);

-- ----------------------------
-- Table structure for berkas
-- ----------------------------
DROP TABLE IF EXISTS `berkas`;
CREATE TABLE `berkas`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_berkas` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `berkas` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of berkas
-- ----------------------------
INSERT INTO `berkas` VALUES (3, 'UU tentang Perpustakaan', 'UU_No.43_tahun_2007_tentang_Perpustakaan_6.pdf');
INSERT INTO `berkas` VALUES (5, 'Pelayanan Sirkulasi', 'Pelayanan_Sirkulasi.pdf');
INSERT INTO `berkas` VALUES (6, 'Pelayanan Keanggotaan', 'Pelayanan_Keanggotaan.pdf');
INSERT INTO `berkas` VALUES (7, 'Pelayanan Membaca Di Tempat', 'Pelayanan_Membaca_di_Tempat.pdf');
INSERT INTO `berkas` VALUES (8, 'Pelayanan Referensi', 'Pelayanan_Referensi.pdf');
INSERT INTO `berkas` VALUES (9, 'Pelayanan Koleksi Serial', 'Pelayanan_Koleksi_Serial.pdf');
INSERT INTO `berkas` VALUES (10, 'Pelayanan Perpustakaan Keliling', 'Pelayanan_Perpustakaan_Keliling.docx');
INSERT INTO `berkas` VALUES (11, 'Audio Visual', 'Pelayanan_Audio_Visual.pdf');
INSERT INTO `berkas` VALUES (12, 'bercerita', 'Pelayanan_Bercerita.pdf');
INSERT INTO `berkas` VALUES (13, 'Pelayanan Internet', 'Pelayanan_Internet.pdf');
INSERT INTO `berkas` VALUES (14, 'kunjungan anak', 'Pelayanan_Kunjungan_Anak.docx');
INSERT INTO `berkas` VALUES (15, 'peminjaman tempat', 'Pelayanan_Peminjaman_Tempat.pdf');

-- ----------------------------
-- Table structure for berkas_halaman
-- ----------------------------
DROP TABLE IF EXISTS `berkas_halaman`;
CREATE TABLE `berkas_halaman`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NULL DEFAULT NULL,
  `berkas_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for buku
-- ----------------------------
DROP TABLE IF EXISTS `buku`;
CREATE TABLE `buku`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_id` int(11) NULL DEFAULT NULL,
  `judul_buku` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tahun_pembuatan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `penulis` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `cover` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `narasi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `file_download` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `folder_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `halaman_awal` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `halaman_akhir` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of buku
-- ----------------------------
INSERT INTO `buku` VALUES (2, 1, 'Salatiga Selayang Pandang', '1995', 'Tim Penyusun', '001.jpg', 'Tentang Selayang Pandang kota Salatiga tercinta..', 'Buku_Besar_Penjualan_Maulana3.pdf', NULL, NULL, NULL);
INSERT INTO `buku` VALUES (3, 10, 'Laporan Penelitian Hari Jadi Salatiga ', '1995', 'tim penyusun  hari jadi kota salatiga', '0011.jpg', '', NULL, NULL, NULL, NULL);
INSERT INTO `buku` VALUES (4, 19, 'Profil Investasi Salatiga', '2011', 'tim penyusun BPPTPM', '0013.jpg', '', NULL, NULL, NULL, NULL);
INSERT INTO `buku` VALUES (5, 10, 'Riwayat Perjuangan Pahlawan Salatiga', '', '', '0014.jpg', '', NULL, NULL, NULL, NULL);
INSERT INTO `buku` VALUES (6, 9, 'perda_2016_01.pdf', '15 Januari 2016 ', 'https://peraturan.bpk.go.id/', 'logo_salatiga.png', 'Peraturan Daerah (PERDA) tentang Penyelenggaraan Kebersihan, Kesehatan, dan Ketertiban Umum. https://peraturan.bpk.go.id/Home/Details/20587', 'perda_2016_01.pdf', NULL, NULL, NULL);
INSERT INTO `buku` VALUES (7, 9, 'Peraturan Daerah (PERDA) TENTANG Perubahan Atas Peraturan Daerah Kota Salatiga Nomor 12 Tahun 2011 Tentang Retribusi Jasa Umum', '31 Mei 2017 ', 'LD.2017/No.1', 'logo_salatiga1.png', 'Peraturan Daerah (PERDA) tentang Perubahan Atas Peraturan Daerah Kota Salatiga Nomor 12 Tahun 2011 Tentang Retribusi Jasa Umum', 'perda_2017_01.pdf', NULL, NULL, NULL);
INSERT INTO `buku` VALUES (8, 9, 'PERATURAN DAERAH KOTA SALATIGA NOMOR TAHUN 2011 TENTANG RENCANA TATA RUANG WILAYAH KOTA SALATIGA TAHUN 201 0 - 2030', '', '', 'logo_salatiga2.png', 'PERATURAN DAERAH KOTA SALATIGA NOMOR TAHUN 2011 TENTANG RENCANA TATA RUANG WILAYAH KOTA SALATIGA TAHUN 201 0 - 2030', 'rtrw_241_2016.pdf', NULL, NULL, NULL);
INSERT INTO `buku` VALUES (9, 17, 'HATI BERIMAN PEMERINTAH KOTA SALATIGA EDISI 52 BULAN NOVEMBER 1997- DESEMBER 1998', 'EDISI 52 BULAN NOVEMBER 1997- DESEMBER 1998', 'PEMERINTAH KOTA SALATIGA', '0015.jpg', 'Buletin majalah HATI BERIMAN yang di terbitkan pemerintah Kota Salatiga', NULL, NULL, NULL, NULL);
INSERT INTO `buku` VALUES (10, 17, 'majalah HATI BERIMAN PEMERINTAH KOTA SALATIGA edisi oktober 1997', 'oktober 1997', 'PEMERINTAH KOTA SALATIGA', '0016.jpg', 'Buletin majalah HATI BERIMAN yang di terbitkan pemerintah Kota Salatiga', NULL, NULL, NULL, NULL);
INSERT INTO `buku` VALUES (11, 17, 'HATI BERIMAN PEMERINTAH KOTA SALATIGA september 1997', 'september 1997', 'PEMERINTAH KOTA SALATIGA', '0017.jpg', 'Buletin majalah HATI BERIMAN yang di terbitkan pemerintah Kota Salatiga', NULL, NULL, NULL, NULL);
INSERT INTO `buku` VALUES (12, 17, 'HATI BERIMAN PEMERINTAH KOTA SALATIGA agustus 1997', 'agustus 1997', 'PEMERINTAH KOTA SALATIGA', '0018.jpg', 'Buletin majalah HATI BERIMAN yang di terbitkan pemerintah Kota Salatiga', NULL, NULL, NULL, NULL);
INSERT INTO `buku` VALUES (13, 17, 'HATI BERIMAN PEMERINTAH KOTA SALATIGA mei 1997 ', 'mei 1997 ', 'PEMERINTAH KOTA SALATIGA', '0019.jpg', 'Buletin majalah HATI BERIMAN yang di terbitkan pemerintah Kota Salatiga', NULL, NULL, NULL, NULL);
INSERT INTO `buku` VALUES (14, 17, 'HATI BERIMAN PEMERINTAH KOTA SALATIGA april 1997', 'april 1997', 'PEMERINTAH KOTA SALATIGA', '00110.jpg', 'Buletin majalah HATI BERIMAN yang di terbitkan pemerintah Kota Salatiga', NULL, NULL, NULL, NULL);
INSERT INTO `buku` VALUES (15, 17, 'HATI BERIMAN PEMERINTAH KOTA SALATIGA maret 1997', 'maret 1997', 'PEMERINTAH KOTA SALATIGA', '00111.jpg', 'Buletin majalah HATI BERIMAN yang di terbitkan pemerintah Kota Salatiga', NULL, NULL, NULL, NULL);
INSERT INTO `buku` VALUES (16, 19, 'Profil Dinas Pertanian dan Perikanan 2013', '2013', 'Dinas pertanian ', '00112.jpg', 'Dinas Pertanian dan Perikanan', NULL, NULL, NULL, NULL);
INSERT INTO `buku` VALUES (17, 10, 'MONUMEN PERJUANGAN SALATIGA', '', '-', '00113.jpg', 'MONUMEN PERJUANGAN SALATIGA', NULL, NULL, NULL, NULL);
INSERT INTO `buku` VALUES (18, 12, 'Salatiga Dalam Angka', '1 mei 1973', 'penyusun ', '00114.jpg', 'Salatiga Dalam Angka', NULL, NULL, NULL, NULL);
INSERT INTO `buku` VALUES (19, 17, 'Salatiga Dalam Angka 1980', 'tahun 1980', '', '12.jpg', '', NULL, NULL, NULL, NULL);
INSERT INTO `buku` VALUES (20, 17, 'Salatiga Dalam Angka 1988', '1988', '', '11.jpg', '', NULL, NULL, NULL, NULL);
INSERT INTO `buku` VALUES (21, 12, 'Salatigad Selayang Pandang', '1995', 'Tim Penyusun', '00116.jpg', 'oke', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for card
-- ----------------------------
DROP TABLE IF EXISTS `card`;
CREATE TABLE `card`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `deskripsi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `link` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `gambar` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of card
-- ----------------------------
INSERT INTO `card` VALUES (2, 'BIDANG PERPUSTAKAAN', 'Melaksanakan Urusan Pemerintahan Yang Menjadi Kewenangan Daerah Bidang Perpustakaan Sub Urusan Pembinaan Perpustakaan Serta Pelestarian Koleksi Nasional Dan naskah Kuno', 'https://dinaspersip.salatiga.go.id/page/read/19/TUPOKSI', 'WhatsApp_Image_2020-04-01_at_10.32_.03_(1)_.jpeg');
INSERT INTO `card` VALUES (3, 'BIDANG KEARSIPAN', 'Melaksanakan Urusan Pemerintahan Yang Menjadi Kewenangan Daerah Bidang Kearsipan Sub Urusan Perizinan, Pengelolaan Arsip, Serta Perlindungan Dan Penyelamatan sesuai prosedur dan ketentuan yang berlaku, agar pelaksanaan pekerjaan dapat berjalan sesuai dengan yang diinginkan', 'https://dinaspersip.salatiga.go.id/page/read/19/TUPOKSI', 'WhatsApp_Image_2020-04-01_at_10.32_.03_.jpeg');
INSERT INTO `card` VALUES (4, 'BIDANG PEMBINAAN DAN PENGEMBANGAN', 'Melaksanakan Urusan Pemerintahan Yang Menjadi kewenangan Daerah Bidang Perpustakaan Kearsipan Sub Urusan Pembinaan Perpustakaan Serta  Pengelolaan Arsip Dilingkup Pembinaan Dan Pengembangan', 'https://dinaspersip.salatiga.go.id/page/read/19/TUPOKSI', 'WhatsApp_Image_2020-04-01_at_10.32_.04_.jpeg');
INSERT INTO `card` VALUES (5, 'BIDANG SEKRETARIAT', 'Menyelenggarakan Dukungan Perencanaan, Monitoring, Evaluasi dan Pelaporan Pelaksanaan Tugas dan Fungsi Dinas Serta Administrasi Kesekretariatan, Keuangan dan Kepegawaian Dinas', 'https://dinaspersip.salatiga.go.id/page/read/19/TUPOKSI', 'WhatsApp_Image_2020-04-01_at_10.32_.04_(1)_.jpeg');

-- ----------------------------
-- Table structure for content_buku
-- ----------------------------
DROP TABLE IF EXISTS `content_buku`;
CREATE TABLE `content_buku`  (
  `id` int(11) NOT NULL,
  `buku_id` int(11) NULL DEFAULT NULL,
  `page` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for daftar_pertanyaan
-- ----------------------------
DROP TABLE IF EXISTS `daftar_pertanyaan`;
CREATE TABLE `daftar_pertanyaan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pertanyaan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jawaban_a` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jawaban_b` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jawaban_c` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jawaban_d` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of daftar_pertanyaan
-- ----------------------------
INSERT INTO `daftar_pertanyaan` VALUES (1, 'Bagaimana Pendapat Saudara tentang kesesuaian persyaratan pelayanan dengan jenis pelayanannya?', 'tidak sesuai', 'kurang sesuai', 'sesuai', 'sangat sesuai');
INSERT INTO `daftar_pertanyaan` VALUES (2, 'Bagaimana pemahaman Saudara tentang kemudahan persyaratan prosedur pelayanan di Perpustakaan Daerah Kota Salatiga?', 'tidak sesuai', 'kurang sesuai', 'sesuai', 'sangat sesuai');
INSERT INTO `daftar_pertanyaan` VALUES (3, 'Bagaimana pendapat Saudara tentang kecepatan waktu dalam memberikan pelayanan?', 'tidak sesuai', 'kurang sesuai', 'sesuai', 'sangat sesuai');
INSERT INTO `daftar_pertanyaan` VALUES (4, 'Bagaimana Pendapat Saudara tentang kewajaran biaya/tarif dalam pelayanan?', 'sangat mahal', 'cukup mahal', 'murah', 'gratis');
INSERT INTO `daftar_pertanyaan` VALUES (5, 'Bagaimana pendapat Saudara tentang kesesuaian produk pelayanan antara yang tercantum dalam standar pelayanan dengan hasil yang diberikan?', 'Tidak Sesuai', 'Kurang Sesuai', 'Sesuai', 'Sangat Sesuai');
INSERT INTO `daftar_pertanyaan` VALUES (6, 'Bagaimana pendapat Saudara tentang kompetensi/kemampuan petugas dalam pelayanan?', 'Tidak kompeten', 'Kurang kompeten', 'Kompeten', 'Sangat kompeten');
INSERT INTO `daftar_pertanyaan` VALUES (7, 'Bagaimana pendapat Saudara tentang perilaku petugas dalam pelayanan terkait kesopanan dan keramahan?', 'Tidak sopan dan ramah', 'Kurang sopan dan ramah', 'Sopan dan ramah', 'Sangat sopan dan ramah');
INSERT INTO `daftar_pertanyaan` VALUES (8, 'Bagaimana pendapat Saudara tentang kualitas sarana dan prasarana?', 'Buruk', 'Cukup', 'Baik', 'Sangat baik');
INSERT INTO `daftar_pertanyaan` VALUES (9, 'Bagaimana pendapat Saudara tentang penanganan pengaduan pengguna layanan?', 'Tidak ada', 'Ada tetapi tidak berfungsi', 'Berfungsi kurang maksimal', 'Dikelola dengan baik');

-- ----------------------------
-- Table structure for ext_link
-- ----------------------------
DROP TABLE IF EXISTS `ext_link`;
CREATE TABLE `ext_link`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gambar` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `judul` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `no_urut` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ext_link
-- ----------------------------
INSERT INTO `ext_link` VALUES (20, 'logo-kemendikbud.png', 'Logo Kemendikbud', 'https://www.kemdikbud.go.id/', NULL);
INSERT INTO `ext_link` VALUES (21, 'dinas-pendidikan.png', 'Dinas Pendidikan Jawa Tengah', 'http://pdkjateng.go.id/', NULL);
INSERT INTO `ext_link` VALUES (22, 'logo-rumah-belajar.png', 'Belajar', 'https://belajar.kemdikbud.go.id/', NULL);
INSERT INTO `ext_link` VALUES (23, 'jatengpintar.png', 'Jateng Pintar', 'http://pintar.jatengprov.go.id/', NULL);

-- ----------------------------
-- Table structure for foto_gallery
-- ----------------------------
DROP TABLE IF EXISTS `foto_gallery`;
CREATE TABLE `foto_gallery`  (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gambar` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `album_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of foto_gallery
-- ----------------------------
INSERT INTO `foto_gallery` VALUES (4, 'bundaran', 'bundaran salatiga terkenal sebagai titik NOL salatiga', 'BUNDARAN.jpg', 9);
INSERT INTO `foto_gallery` VALUES (5, 'kauman ', '', 'Kauman.jpg', 9);
INSERT INTO `foto_gallery` VALUES (6, 'bundaran', '', 'salatiga4.jpg', 9);
INSERT INTO `foto_gallery` VALUES (7, 'rumah dinas walikota', '', 'salatiga25.jpg', 9);

-- ----------------------------
-- Table structure for isian
-- ----------------------------
DROP TABLE IF EXISTS `isian`;
CREATE TABLE `isian`  (
  `id` int(11) NOT NULL,
  `pertanyaan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori`  (
  `id` int(11) NOT NULL,
  `kategori` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kategori
-- ----------------------------
INSERT INTO `kategori` VALUES (1, 'Arsip Lama');
INSERT INTO `kategori` VALUES (9, 'Produk hukum');
INSERT INTO `kategori` VALUES (10, 'Seni budaya');
INSERT INTO `kategori` VALUES (11, 'Sosial ekonomi');
INSERT INTO `kategori` VALUES (12, 'Data dan Statistik');
INSERT INTO `kategori` VALUES (13, 'Pendidikan');
INSERT INTO `kategori` VALUES (14, 'Agama dan kepercayaan');
INSERT INTO `kategori` VALUES (15, 'Anak');
INSERT INTO `kategori` VALUES (16, ' Fiksi');
INSERT INTO `kategori` VALUES (17, 'Majalah');
INSERT INTO `kategori` VALUES (18, 'Jurnal dan penelitian');
INSERT INTO `kategori` VALUES (19, 'Media promosi ');
INSERT INTO `kategori` VALUES (20, 'Kategori lain');
INSERT INTO `kategori` VALUES (21, 'Peta');

-- ----------------------------
-- Table structure for kontak
-- ----------------------------
DROP TABLE IF EXISTS `kontak`;
CREATE TABLE `kontak`  (
  `id` int(11) NOT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pesan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for kritik_saran
-- ----------------------------
DROP TABLE IF EXISTS `kritik_saran`;
CREATE TABLE `kritik_saran`  (
  `id` int(11) NOT NULL,
  `tanggal_input` date NULL DEFAULT NULL,
  `nama_anggota` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `no_anggota` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `no_telp_hp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `konten` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kritik_saran
-- ----------------------------
INSERT INTO `kritik_saran` VALUES (1, '2019-06-21', '0', '0', '0', '0', '0');
INSERT INTO `kritik_saran` VALUES (2, '2019-07-05', '0', '0', '0', '0', '0');
INSERT INTO `kritik_saran` VALUES (10, '2019-07-26', '85596', 'tes', 'sala3', '086526555', 'tes');
INSERT INTO `kritik_saran` VALUES (11, '2019-07-30', '0', '0', '0', '0', '0');
INSERT INTO `kritik_saran` VALUES (12, '2019-08-04', '0', '0', '0', '0', '0');
INSERT INTO `kritik_saran` VALUES (13, '2019-08-06', '55', 'tre', 'gj', '5658', 'gj');
INSERT INTO `kritik_saran` VALUES (14, '2019-08-16', '0', '0', '0', '0', '0');
INSERT INTO `kritik_saran` VALUES (15, '2019-08-25', '0', '0', '0', '0', '0');
INSERT INTO `kritik_saran` VALUES (16, '2019-08-25', '0', '0', '0', '0', '0');
INSERT INTO `kritik_saran` VALUES (17, '2019-09-02', '0', '0', '0', '0', '0');
INSERT INTO `kritik_saran` VALUES (18, '2019-09-11', '0', '0', '0', '0', '0');
INSERT INTO `kritik_saran` VALUES (19, '2019-09-19', '0', '0', '0', '0', '0');
INSERT INTO `kritik_saran` VALUES (20, '2019-10-08', '0', '0', '0', '0', '0');
INSERT INTO `kritik_saran` VALUES (21, '2019-10-13', 'Salsabila', '29111998', 'Baskoro Raya, No 44B, Tembalang', '0895616705333', '0');
INSERT INTO `kritik_saran` VALUES (22, '2019-10-17', '0', '0', '0', '0', '0');
INSERT INTO `kritik_saran` VALUES (23, '2019-11-29', '0', '0', '0', '0', '0');
INSERT INTO `kritik_saran` VALUES (24, '2019-12-11', '0', '0', '0', '0', '0');
INSERT INTO `kritik_saran` VALUES (25, '2019-12-22', '0', '0', '0', '0', '0');
INSERT INTO `kritik_saran` VALUES (26, '2020-01-03', '0', '0', '0', '0', '0');
INSERT INTO `kritik_saran` VALUES (27, '2020-01-15', '0', '0', '0', '0', '0');
INSERT INTO `kritik_saran` VALUES (28, '2020-01-25', '0', '0', '0', '0', '0');
INSERT INTO `kritik_saran` VALUES (29, '2020-02-18', '0', '0', '0', '0', '0');
INSERT INTO `kritik_saran` VALUES (30, '2020-03-02', 'bella', '29111998', 'Kalicacing', '0895616705333', '0');
INSERT INTO `kritik_saran` VALUES (31, '2020-03-28', '0', '0', '0', '0', '0');
INSERT INTO `kritik_saran` VALUES (32, '2020-04-03', 'Achmad Darojat Jumadil Kubro', '26297', 'Reksosari, RT 09/01, Kec. Suruh, Kab. Semarang', '085640500817 - 0895638017840', '0');
INSERT INTO `kritik_saran` VALUES (33, '2020-05-11', '0', '0', '0', '0', '0');
INSERT INTO `kritik_saran` VALUES (34, '2020-05-26', '0', '0', '0', '0', '0');
INSERT INTO `kritik_saran` VALUES (35, '2020-06-08', '0', '0', '0', '0', '0');
INSERT INTO `kritik_saran` VALUES (36, '2020-06-14', '0', '0', '0', '0', '0');
INSERT INTO `kritik_saran` VALUES (37, '2020-07-02', '0', '0', '0', '0', '0');
INSERT INTO `kritik_saran` VALUES (38, '2020-10-15', '0', '0', '0', '0', '0');
INSERT INTO `kritik_saran` VALUES (39, '2020-10-29', '0', '0', '0', '0', '0');
INSERT INTO `kritik_saran` VALUES (40, '2020-11-28', '0', '0', '0', '0', '0');
INSERT INTO `kritik_saran` VALUES (41, '2020-12-01', '0', '0', '0', '0', '0');
INSERT INTO `kritik_saran` VALUES (42, '2021-04-09', '0', '0', '0', '0', '0');
INSERT INTO `kritik_saran` VALUES (43, '2021-04-12', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for kuisoner_jawab
-- ----------------------------
DROP TABLE IF EXISTS `kuisoner_jawab`;
CREATE TABLE `kuisoner_jawab`  (
  `id` int(11) NOT NULL,
  `pengisi_id` int(11) NULL DEFAULT NULL,
  `pertanyaan_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jawaban` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kuisoner_jawab
-- ----------------------------
INSERT INTO `kuisoner_jawab` VALUES (1, 1, '1', 'sangat sesuai');
INSERT INTO `kuisoner_jawab` VALUES (2, 1, '2', 'sangat sesuai');
INSERT INTO `kuisoner_jawab` VALUES (3, 1, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (4, 1, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (5, 2, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (6, 2, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (7, 2, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (8, 2, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (9, 2, '5', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (10, 2, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (11, 2, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (12, 2, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (13, 2, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (14, 3, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (15, 3, '2', 'kurang sesuai');
INSERT INTO `kuisoner_jawab` VALUES (16, 3, '3', 'kurang sesuai');
INSERT INTO `kuisoner_jawab` VALUES (17, 3, '4', 'murah');
INSERT INTO `kuisoner_jawab` VALUES (18, 3, '5', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (19, 3, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (20, 3, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (21, 3, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (22, 3, '9', 'Berfungsi kurang maksimal');
INSERT INTO `kuisoner_jawab` VALUES (23, 4, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (24, 4, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (25, 4, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (26, 4, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (27, 4, '5', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (28, 4, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (29, 4, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (30, 4, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (31, 4, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (32, 5, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (33, 5, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (34, 5, '3', 'sangat sesuai');
INSERT INTO `kuisoner_jawab` VALUES (35, 5, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (36, 5, '5', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (37, 5, '6', 'Sangat kompeten');
INSERT INTO `kuisoner_jawab` VALUES (38, 5, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (39, 5, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (40, 5, '9', 'Berfungsi kurang maksimal');
INSERT INTO `kuisoner_jawab` VALUES (41, 6, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (42, 6, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (43, 6, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (44, 6, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (45, 6, '5', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (46, 6, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (47, 6, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (48, 6, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (49, 6, '9', 'Berfungsi kurang maksimal');
INSERT INTO `kuisoner_jawab` VALUES (50, 7, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (51, 7, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (52, 7, '3', 'sangat sesuai');
INSERT INTO `kuisoner_jawab` VALUES (53, 7, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (54, 7, '5', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (55, 7, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (56, 7, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (57, 7, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (58, 7, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (59, 8, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (60, 8, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (61, 8, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (62, 8, '4', 'murah');
INSERT INTO `kuisoner_jawab` VALUES (63, 8, '5', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (64, 8, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (65, 8, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (66, 8, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (67, 8, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (68, 9, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (69, 9, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (70, 9, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (71, 9, '4', 'murah');
INSERT INTO `kuisoner_jawab` VALUES (72, 9, '5', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (73, 9, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (74, 9, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (75, 9, '8', 'Sangat baik');
INSERT INTO `kuisoner_jawab` VALUES (76, 9, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (77, 10, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (78, 10, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (79, 10, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (80, 10, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (81, 10, '5', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (82, 10, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (83, 10, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (84, 10, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (85, 10, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (86, 11, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (87, 11, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (88, 11, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (89, 11, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (90, 11, '5', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (91, 11, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (92, 11, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (93, 11, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (94, 11, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (95, 12, '1', 'sangat sesuai');
INSERT INTO `kuisoner_jawab` VALUES (96, 12, '2', 'sangat sesuai');
INSERT INTO `kuisoner_jawab` VALUES (97, 12, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (98, 12, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (99, 12, '5', 'Sangat Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (100, 12, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (101, 12, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (102, 12, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (103, 12, '9', 'Berfungsi kurang maksimal');
INSERT INTO `kuisoner_jawab` VALUES (104, 13, '1', 'sangat sesuai');
INSERT INTO `kuisoner_jawab` VALUES (105, 13, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (106, 13, '3', 'sangat sesuai');
INSERT INTO `kuisoner_jawab` VALUES (107, 13, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (108, 13, '5', 'Sangat Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (109, 13, '6', 'Sangat kompeten');
INSERT INTO `kuisoner_jawab` VALUES (110, 13, '7', 'Sangat sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (111, 13, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (112, 13, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (113, 14, '1', NULL);
INSERT INTO `kuisoner_jawab` VALUES (114, 14, '2', NULL);
INSERT INTO `kuisoner_jawab` VALUES (115, 14, '3', NULL);
INSERT INTO `kuisoner_jawab` VALUES (116, 14, '4', NULL);
INSERT INTO `kuisoner_jawab` VALUES (117, 14, '5', NULL);
INSERT INTO `kuisoner_jawab` VALUES (118, 14, '6', NULL);
INSERT INTO `kuisoner_jawab` VALUES (119, 14, '7', NULL);
INSERT INTO `kuisoner_jawab` VALUES (120, 14, '8', NULL);
INSERT INTO `kuisoner_jawab` VALUES (121, 14, '9', NULL);
INSERT INTO `kuisoner_jawab` VALUES (122, 15, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (123, 15, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (124, 15, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (125, 15, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (126, 15, '5', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (127, 15, '6', 'Sangat kompeten');
INSERT INTO `kuisoner_jawab` VALUES (128, 15, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (129, 15, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (130, 15, '9', 'Berfungsi kurang maksimal');
INSERT INTO `kuisoner_jawab` VALUES (131, 16, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (132, 16, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (133, 16, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (134, 16, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (135, 16, '5', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (136, 16, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (137, 16, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (138, 16, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (139, 16, '9', 'Berfungsi kurang maksimal');
INSERT INTO `kuisoner_jawab` VALUES (140, 17, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (141, 17, '2', 'sangat sesuai');
INSERT INTO `kuisoner_jawab` VALUES (142, 17, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (143, 17, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (144, 17, '5', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (145, 17, '6', 'Sangat kompeten');
INSERT INTO `kuisoner_jawab` VALUES (146, 17, '7', 'Sangat sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (147, 17, '8', 'Sangat baik');
INSERT INTO `kuisoner_jawab` VALUES (148, 17, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (149, 18, '1', 'sangat sesuai');
INSERT INTO `kuisoner_jawab` VALUES (150, 18, '2', 'sangat sesuai');
INSERT INTO `kuisoner_jawab` VALUES (151, 18, '3', 'sangat sesuai');
INSERT INTO `kuisoner_jawab` VALUES (152, 18, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (153, 18, '5', 'Sangat Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (154, 18, '6', 'Sangat kompeten');
INSERT INTO `kuisoner_jawab` VALUES (155, 18, '7', 'Sangat sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (156, 18, '8', 'Sangat baik');
INSERT INTO `kuisoner_jawab` VALUES (157, 18, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (158, 19, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (159, 19, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (160, 19, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (161, 19, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (162, 19, '5', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (163, 19, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (164, 19, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (165, 19, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (166, 19, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (167, 20, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (168, 20, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (169, 20, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (170, 20, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (171, 20, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (172, 20, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (173, 20, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (174, 20, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (175, 20, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (176, 21, '1', NULL);
INSERT INTO `kuisoner_jawab` VALUES (177, 21, '2', NULL);
INSERT INTO `kuisoner_jawab` VALUES (178, 21, '3', NULL);
INSERT INTO `kuisoner_jawab` VALUES (179, 21, '4', NULL);
INSERT INTO `kuisoner_jawab` VALUES (180, 21, '5', NULL);
INSERT INTO `kuisoner_jawab` VALUES (181, 21, '6', NULL);
INSERT INTO `kuisoner_jawab` VALUES (182, 21, '7', NULL);
INSERT INTO `kuisoner_jawab` VALUES (183, 21, '8', NULL);
INSERT INTO `kuisoner_jawab` VALUES (184, 21, '9', NULL);
INSERT INTO `kuisoner_jawab` VALUES (185, 22, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (186, 22, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (187, 22, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (188, 22, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (189, 22, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (190, 22, '6', 'Sangat kompeten');
INSERT INTO `kuisoner_jawab` VALUES (191, 22, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (192, 22, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (193, 22, '9', 'Berfungsi kurang maksimal');
INSERT INTO `kuisoner_jawab` VALUES (194, 23, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (195, 23, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (196, 23, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (197, 23, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (198, 23, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (199, 23, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (200, 23, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (201, 23, '8', 'Sangat baik');
INSERT INTO `kuisoner_jawab` VALUES (202, 23, '9', 'Berfungsi kurang maksimal');
INSERT INTO `kuisoner_jawab` VALUES (203, 24, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (204, 24, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (205, 24, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (206, 24, '4', 'murah');
INSERT INTO `kuisoner_jawab` VALUES (207, 24, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (208, 24, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (209, 24, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (210, 24, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (211, 24, '9', 'Berfungsi kurang maksimal');
INSERT INTO `kuisoner_jawab` VALUES (212, 25, '1', 'sangat sesuai');
INSERT INTO `kuisoner_jawab` VALUES (213, 25, '2', 'sangat sesuai');
INSERT INTO `kuisoner_jawab` VALUES (214, 25, '3', 'sangat sesuai');
INSERT INTO `kuisoner_jawab` VALUES (215, 25, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (216, 25, '5', 'Sangat Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (217, 25, '6', 'Sangat kompeten');
INSERT INTO `kuisoner_jawab` VALUES (218, 25, '7', 'Sangat sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (219, 25, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (220, 25, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (221, 26, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (222, 26, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (223, 26, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (224, 26, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (225, 26, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (226, 26, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (227, 26, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (228, 26, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (229, 26, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (230, 27, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (231, 27, '2', 'sangat sesuai');
INSERT INTO `kuisoner_jawab` VALUES (232, 27, '3', 'sangat sesuai');
INSERT INTO `kuisoner_jawab` VALUES (233, 27, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (234, 27, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (235, 27, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (236, 27, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (237, 27, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (238, 27, '9', 'Berfungsi kurang maksimal');
INSERT INTO `kuisoner_jawab` VALUES (239, 28, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (240, 28, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (241, 28, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (242, 28, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (243, 28, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (244, 28, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (245, 28, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (246, 28, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (247, 28, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (248, 29, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (249, 29, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (250, 29, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (251, 29, '4', 'murah');
INSERT INTO `kuisoner_jawab` VALUES (252, 29, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (253, 29, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (254, 29, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (255, 29, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (256, 29, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (257, 30, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (258, 30, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (259, 30, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (260, 30, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (261, 30, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (262, 30, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (263, 30, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (264, 30, '8', 'Cukup');
INSERT INTO `kuisoner_jawab` VALUES (265, 30, '9', 'Berfungsi kurang maksimal');
INSERT INTO `kuisoner_jawab` VALUES (266, 31, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (267, 31, '2', 'kurang sesuai');
INSERT INTO `kuisoner_jawab` VALUES (268, 31, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (269, 31, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (270, 31, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (271, 31, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (272, 31, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (273, 31, '8', 'Cukup');
INSERT INTO `kuisoner_jawab` VALUES (274, 31, '9', 'Berfungsi kurang maksimal');
INSERT INTO `kuisoner_jawab` VALUES (275, 32, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (276, 32, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (277, 32, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (278, 32, '4', 'murah');
INSERT INTO `kuisoner_jawab` VALUES (279, 32, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (280, 32, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (281, 32, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (282, 32, '8', 'Cukup');
INSERT INTO `kuisoner_jawab` VALUES (283, 32, '9', 'Tidak ada');
INSERT INTO `kuisoner_jawab` VALUES (284, 33, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (285, 33, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (286, 33, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (287, 33, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (288, 33, '5', 'Kurang Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (289, 33, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (290, 33, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (291, 33, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (292, 33, '9', 'Berfungsi kurang maksimal');
INSERT INTO `kuisoner_jawab` VALUES (293, 34, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (294, 34, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (295, 34, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (296, 34, '4', 'murah');
INSERT INTO `kuisoner_jawab` VALUES (297, 34, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (298, 34, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (299, 34, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (300, 34, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (301, 34, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (302, 35, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (303, 35, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (304, 35, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (305, 35, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (306, 35, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (307, 35, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (308, 35, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (309, 35, '8', 'Cukup');
INSERT INTO `kuisoner_jawab` VALUES (310, 35, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (311, 36, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (312, 36, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (313, 36, '3', 'kurang sesuai');
INSERT INTO `kuisoner_jawab` VALUES (314, 36, '4', 'murah');
INSERT INTO `kuisoner_jawab` VALUES (315, 36, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (316, 36, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (317, 36, '7', 'Kurang sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (318, 36, '8', 'Cukup');
INSERT INTO `kuisoner_jawab` VALUES (319, 36, '9', 'Ada tetapi tidak berfungsi');
INSERT INTO `kuisoner_jawab` VALUES (320, 37, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (321, 37, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (322, 37, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (323, 37, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (324, 37, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (325, 37, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (326, 37, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (327, 37, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (328, 37, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (329, 38, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (330, 38, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (331, 38, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (332, 38, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (333, 38, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (334, 38, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (335, 38, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (336, 38, '8', 'Sangat baik');
INSERT INTO `kuisoner_jawab` VALUES (337, 38, '9', 'Berfungsi kurang maksimal');
INSERT INTO `kuisoner_jawab` VALUES (338, 39, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (339, 39, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (340, 39, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (341, 39, '4', 'cukup mahal');
INSERT INTO `kuisoner_jawab` VALUES (342, 39, '5', 'Kurang Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (343, 39, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (344, 39, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (345, 39, '8', 'Cukup');
INSERT INTO `kuisoner_jawab` VALUES (346, 39, '9', 'Berfungsi kurang maksimal');
INSERT INTO `kuisoner_jawab` VALUES (347, 40, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (348, 40, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (349, 40, '3', 'kurang sesuai');
INSERT INTO `kuisoner_jawab` VALUES (350, 40, '4', 'murah');
INSERT INTO `kuisoner_jawab` VALUES (351, 40, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (352, 40, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (353, 40, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (354, 40, '8', 'Cukup');
INSERT INTO `kuisoner_jawab` VALUES (355, 40, '9', 'Berfungsi kurang maksimal');
INSERT INTO `kuisoner_jawab` VALUES (356, 41, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (357, 41, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (358, 41, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (359, 41, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (360, 41, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (361, 41, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (362, 41, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (363, 41, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (364, 41, '9', 'Berfungsi kurang maksimal');
INSERT INTO `kuisoner_jawab` VALUES (365, 42, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (366, 42, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (367, 42, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (368, 42, '4', 'murah');
INSERT INTO `kuisoner_jawab` VALUES (369, 42, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (370, 42, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (371, 42, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (372, 42, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (373, 42, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (374, 43, '1', 'kurang sesuai');
INSERT INTO `kuisoner_jawab` VALUES (375, 43, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (376, 43, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (377, 43, '4', 'murah');
INSERT INTO `kuisoner_jawab` VALUES (378, 43, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (379, 43, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (380, 43, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (381, 43, '8', 'Cukup');
INSERT INTO `kuisoner_jawab` VALUES (382, 43, '9', 'Berfungsi kurang maksimal');
INSERT INTO `kuisoner_jawab` VALUES (383, 44, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (384, 44, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (385, 44, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (386, 44, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (387, 44, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (388, 44, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (389, 44, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (390, 44, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (391, 44, '9', 'Berfungsi kurang maksimal');
INSERT INTO `kuisoner_jawab` VALUES (392, 45, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (393, 45, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (394, 45, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (395, 45, '4', 'murah');
INSERT INTO `kuisoner_jawab` VALUES (396, 45, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (397, 45, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (398, 45, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (399, 45, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (400, 45, '9', 'Berfungsi kurang maksimal');
INSERT INTO `kuisoner_jawab` VALUES (401, 46, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (402, 46, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (403, 46, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (404, 46, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (405, 46, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (406, 46, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (407, 46, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (408, 46, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (409, 46, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (410, 47, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (411, 47, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (412, 47, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (413, 47, '4', 'murah');
INSERT INTO `kuisoner_jawab` VALUES (414, 47, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (415, 47, '6', 'Sangat kompeten');
INSERT INTO `kuisoner_jawab` VALUES (416, 47, '7', 'Sangat sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (417, 47, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (418, 47, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (419, 48, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (420, 48, '2', 'sangat sesuai');
INSERT INTO `kuisoner_jawab` VALUES (421, 48, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (422, 48, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (423, 48, '5', 'Sangat Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (424, 48, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (425, 48, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (426, 48, '8', 'Cukup');
INSERT INTO `kuisoner_jawab` VALUES (427, 48, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (428, 49, '1', 'sangat sesuai');
INSERT INTO `kuisoner_jawab` VALUES (429, 49, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (430, 49, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (431, 49, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (432, 49, '5', 'Sangat Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (433, 49, '6', 'Sangat kompeten');
INSERT INTO `kuisoner_jawab` VALUES (434, 49, '7', 'Sangat sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (435, 49, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (436, 49, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (437, 50, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (438, 50, '2', 'sangat sesuai');
INSERT INTO `kuisoner_jawab` VALUES (439, 50, '3', 'sangat sesuai');
INSERT INTO `kuisoner_jawab` VALUES (440, 50, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (441, 50, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (442, 50, '6', 'Sangat kompeten');
INSERT INTO `kuisoner_jawab` VALUES (443, 50, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (444, 50, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (445, 50, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (446, 51, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (447, 51, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (448, 51, '3', 'kurang sesuai');
INSERT INTO `kuisoner_jawab` VALUES (449, 51, '4', 'murah');
INSERT INTO `kuisoner_jawab` VALUES (450, 51, '5', 'Kurang Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (451, 51, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (452, 51, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (453, 51, '8', 'Cukup');
INSERT INTO `kuisoner_jawab` VALUES (454, 51, '9', 'Berfungsi kurang maksimal');
INSERT INTO `kuisoner_jawab` VALUES (455, 52, '1', NULL);
INSERT INTO `kuisoner_jawab` VALUES (456, 52, '2', NULL);
INSERT INTO `kuisoner_jawab` VALUES (457, 52, '3', NULL);
INSERT INTO `kuisoner_jawab` VALUES (458, 52, '4', NULL);
INSERT INTO `kuisoner_jawab` VALUES (459, 52, '5', NULL);
INSERT INTO `kuisoner_jawab` VALUES (460, 52, '6', NULL);
INSERT INTO `kuisoner_jawab` VALUES (461, 52, '7', NULL);
INSERT INTO `kuisoner_jawab` VALUES (462, 52, '8', NULL);
INSERT INTO `kuisoner_jawab` VALUES (463, 52, '9', NULL);
INSERT INTO `kuisoner_jawab` VALUES (464, 53, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (465, 53, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (466, 53, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (467, 53, '4', 'murah');
INSERT INTO `kuisoner_jawab` VALUES (468, 53, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (469, 53, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (470, 53, '7', 'Sangat sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (471, 53, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (472, 53, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (473, 54, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (474, 54, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (475, 54, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (476, 54, '4', 'murah');
INSERT INTO `kuisoner_jawab` VALUES (477, 54, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (478, 54, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (479, 54, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (480, 54, '8', 'Cukup');
INSERT INTO `kuisoner_jawab` VALUES (481, 54, '9', 'Berfungsi kurang maksimal');
INSERT INTO `kuisoner_jawab` VALUES (482, 55, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (483, 55, '2', 'kurang sesuai');
INSERT INTO `kuisoner_jawab` VALUES (484, 55, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (485, 55, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (486, 55, '5', 'Kurang Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (487, 55, '6', 'Kurang kompeten');
INSERT INTO `kuisoner_jawab` VALUES (488, 55, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (489, 55, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (490, 55, '9', 'Tidak ada');
INSERT INTO `kuisoner_jawab` VALUES (491, 56, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (492, 56, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (493, 56, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (494, 56, '4', 'murah');
INSERT INTO `kuisoner_jawab` VALUES (495, 56, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (496, 56, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (497, 56, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (498, 56, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (499, 56, '9', 'Berfungsi kurang maksimal');
INSERT INTO `kuisoner_jawab` VALUES (500, 57, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (501, 57, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (502, 57, '3', 'kurang sesuai');
INSERT INTO `kuisoner_jawab` VALUES (503, 57, '4', 'cukup mahal');
INSERT INTO `kuisoner_jawab` VALUES (504, 57, '5', 'Kurang Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (505, 57, '6', 'Kurang kompeten');
INSERT INTO `kuisoner_jawab` VALUES (506, 57, '7', 'Kurang sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (507, 57, '8', 'Cukup');
INSERT INTO `kuisoner_jawab` VALUES (508, 57, '9', 'Ada tetapi tidak berfungsi');
INSERT INTO `kuisoner_jawab` VALUES (509, 58, '1', 'sangat sesuai');
INSERT INTO `kuisoner_jawab` VALUES (510, 58, '2', 'sangat sesuai');
INSERT INTO `kuisoner_jawab` VALUES (511, 58, '3', 'sangat sesuai');
INSERT INTO `kuisoner_jawab` VALUES (512, 58, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (513, 58, '5', 'Sangat Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (514, 58, '6', 'Sangat kompeten');
INSERT INTO `kuisoner_jawab` VALUES (515, 58, '7', 'Sangat sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (516, 58, '8', 'Sangat baik');
INSERT INTO `kuisoner_jawab` VALUES (517, 58, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (518, 59, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (519, 59, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (520, 59, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (521, 59, '4', 'murah');
INSERT INTO `kuisoner_jawab` VALUES (522, 59, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (523, 59, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (524, 59, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (525, 59, '8', 'Cukup');
INSERT INTO `kuisoner_jawab` VALUES (526, 59, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (527, 60, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (528, 60, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (529, 60, '3', 'kurang sesuai');
INSERT INTO `kuisoner_jawab` VALUES (530, 60, '4', 'murah');
INSERT INTO `kuisoner_jawab` VALUES (531, 60, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (532, 60, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (533, 60, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (534, 60, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (535, 60, '9', 'Berfungsi kurang maksimal');
INSERT INTO `kuisoner_jawab` VALUES (536, 61, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (537, 61, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (538, 61, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (539, 61, '4', 'murah');
INSERT INTO `kuisoner_jawab` VALUES (540, 61, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (541, 61, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (542, 61, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (543, 61, '8', 'Cukup');
INSERT INTO `kuisoner_jawab` VALUES (544, 61, '9', 'Berfungsi kurang maksimal');
INSERT INTO `kuisoner_jawab` VALUES (545, 62, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (546, 62, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (547, 62, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (548, 62, '4', 'murah');
INSERT INTO `kuisoner_jawab` VALUES (549, 62, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (550, 62, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (551, 62, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (552, 62, '8', 'Cukup');
INSERT INTO `kuisoner_jawab` VALUES (553, 62, '9', 'Berfungsi kurang maksimal');
INSERT INTO `kuisoner_jawab` VALUES (554, 63, '1', 'kurang sesuai');
INSERT INTO `kuisoner_jawab` VALUES (555, 63, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (556, 63, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (557, 63, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (558, 63, '5', 'Kurang Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (559, 63, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (560, 63, '7', 'Sangat sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (561, 63, '8', 'Cukup');
INSERT INTO `kuisoner_jawab` VALUES (562, 63, '9', 'Berfungsi kurang maksimal');
INSERT INTO `kuisoner_jawab` VALUES (563, 64, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (564, 64, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (565, 64, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (566, 64, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (567, 64, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (568, 64, '6', 'Sangat kompeten');
INSERT INTO `kuisoner_jawab` VALUES (569, 64, '7', 'Sangat sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (570, 64, '8', 'Sangat baik');
INSERT INTO `kuisoner_jawab` VALUES (571, 64, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (572, 65, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (573, 65, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (574, 65, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (575, 65, '4', 'murah');
INSERT INTO `kuisoner_jawab` VALUES (576, 65, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (577, 65, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (578, 65, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (579, 65, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (580, 65, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (581, 66, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (582, 66, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (583, 66, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (584, 66, '4', 'murah');
INSERT INTO `kuisoner_jawab` VALUES (585, 66, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (586, 66, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (587, 66, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (588, 66, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (589, 66, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (590, 67, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (591, 67, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (592, 67, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (593, 67, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (594, 67, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (595, 67, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (596, 67, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (597, 67, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (598, 67, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (599, 68, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (600, 68, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (601, 68, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (602, 68, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (603, 68, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (604, 68, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (605, 68, '7', 'Sangat sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (606, 68, '8', 'Cukup');
INSERT INTO `kuisoner_jawab` VALUES (607, 68, '9', 'Berfungsi kurang maksimal');
INSERT INTO `kuisoner_jawab` VALUES (608, 69, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (609, 69, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (610, 69, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (611, 69, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (612, 69, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (613, 69, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (614, 69, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (615, 69, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (616, 69, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (617, 70, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (618, 70, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (619, 70, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (620, 70, '4', 'murah');
INSERT INTO `kuisoner_jawab` VALUES (621, 70, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (622, 70, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (623, 70, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (624, 70, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (625, 70, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (626, 71, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (627, 71, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (628, 71, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (629, 71, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (630, 71, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (631, 71, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (632, 71, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (633, 71, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (634, 71, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (635, 72, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (636, 72, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (637, 72, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (638, 72, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (639, 72, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (640, 72, '6', 'Sangat kompeten');
INSERT INTO `kuisoner_jawab` VALUES (641, 72, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (642, 72, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (643, 72, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (644, 73, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (645, 73, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (646, 73, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (647, 73, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (648, 73, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (649, 73, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (650, 73, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (651, 73, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (652, 73, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (653, 74, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (654, 74, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (655, 74, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (656, 74, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (657, 74, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (658, 74, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (659, 74, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (660, 74, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (661, 74, '9', 'Berfungsi kurang maksimal');
INSERT INTO `kuisoner_jawab` VALUES (662, 75, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (663, 75, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (664, 75, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (665, 75, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (666, 75, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (667, 75, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (668, 75, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (669, 75, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (670, 75, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (671, 76, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (672, 76, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (673, 76, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (674, 76, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (675, 76, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (676, 76, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (677, 76, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (678, 76, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (679, 76, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (680, 77, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (681, 77, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (682, 77, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (683, 77, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (684, 77, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (685, 77, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (686, 77, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (687, 77, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (688, 77, '9', 'Berfungsi kurang maksimal');
INSERT INTO `kuisoner_jawab` VALUES (689, 78, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (690, 78, '2', 'kurang sesuai');
INSERT INTO `kuisoner_jawab` VALUES (691, 78, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (692, 78, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (693, 78, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (694, 78, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (695, 78, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (696, 78, '8', 'Cukup');
INSERT INTO `kuisoner_jawab` VALUES (697, 78, '9', 'Berfungsi kurang maksimal');
INSERT INTO `kuisoner_jawab` VALUES (698, 79, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (699, 79, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (700, 79, '3', 'sangat sesuai');
INSERT INTO `kuisoner_jawab` VALUES (701, 79, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (702, 79, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (703, 79, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (704, 79, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (705, 79, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (706, 79, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (707, 80, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (708, 80, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (709, 80, '3', 'kurang sesuai');
INSERT INTO `kuisoner_jawab` VALUES (710, 80, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (711, 80, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (712, 80, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (713, 80, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (714, 80, '8', 'Cukup');
INSERT INTO `kuisoner_jawab` VALUES (715, 80, '9', 'Berfungsi kurang maksimal');
INSERT INTO `kuisoner_jawab` VALUES (716, 81, '1', 'sangat sesuai');
INSERT INTO `kuisoner_jawab` VALUES (717, 81, '2', 'sangat sesuai');
INSERT INTO `kuisoner_jawab` VALUES (718, 81, '3', 'sangat sesuai');
INSERT INTO `kuisoner_jawab` VALUES (719, 81, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (720, 81, '5', 'Sangat Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (721, 81, '6', 'Sangat kompeten');
INSERT INTO `kuisoner_jawab` VALUES (722, 81, '7', 'Sangat sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (723, 81, '8', 'Sangat baik');
INSERT INTO `kuisoner_jawab` VALUES (724, 81, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (725, 82, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (726, 82, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (727, 82, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (728, 82, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (729, 82, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (730, 82, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (731, 82, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (732, 82, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (733, 82, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (734, 83, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (735, 83, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (736, 83, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (737, 83, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (738, 83, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (739, 83, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (740, 83, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (741, 83, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (742, 83, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (743, 84, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (744, 84, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (745, 84, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (746, 84, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (747, 84, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (748, 84, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (749, 84, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (750, 84, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (751, 84, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (752, 85, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (753, 85, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (754, 85, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (755, 85, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (756, 85, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (757, 85, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (758, 85, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (759, 85, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (760, 85, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (761, 86, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (762, 86, '2', 'sangat sesuai');
INSERT INTO `kuisoner_jawab` VALUES (763, 86, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (764, 86, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (765, 86, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (766, 86, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (767, 86, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (768, 86, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (769, 86, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (770, 87, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (771, 87, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (772, 87, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (773, 87, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (774, 87, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (775, 87, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (776, 87, '7', 'Sangat sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (777, 87, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (778, 87, '9', 'Berfungsi kurang maksimal');
INSERT INTO `kuisoner_jawab` VALUES (779, 88, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (780, 88, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (781, 88, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (782, 88, '4', 'murah');
INSERT INTO `kuisoner_jawab` VALUES (783, 88, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (784, 88, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (785, 88, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (786, 88, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (787, 88, '9', 'Tidak ada');
INSERT INTO `kuisoner_jawab` VALUES (788, 89, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (789, 89, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (790, 89, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (791, 89, '4', 'murah');
INSERT INTO `kuisoner_jawab` VALUES (792, 89, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (793, 89, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (794, 89, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (795, 89, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (796, 89, '9', 'Tidak ada');
INSERT INTO `kuisoner_jawab` VALUES (797, 90, '1', 'sangat sesuai');
INSERT INTO `kuisoner_jawab` VALUES (798, 90, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (799, 90, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (800, 90, '4', 'murah');
INSERT INTO `kuisoner_jawab` VALUES (801, 90, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (802, 90, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (803, 90, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (804, 90, '8', 'Sangat baik');
INSERT INTO `kuisoner_jawab` VALUES (805, 90, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (806, 91, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (807, 91, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (808, 91, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (809, 91, '4', 'murah');
INSERT INTO `kuisoner_jawab` VALUES (810, 91, '5', 'Kurang Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (811, 91, '6', 'Kurang kompeten');
INSERT INTO `kuisoner_jawab` VALUES (812, 91, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (813, 91, '8', 'Cukup');
INSERT INTO `kuisoner_jawab` VALUES (814, 91, '9', 'Ada tetapi tidak berfungsi');
INSERT INTO `kuisoner_jawab` VALUES (815, 92, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (816, 92, '2', 'sangat sesuai');
INSERT INTO `kuisoner_jawab` VALUES (817, 92, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (818, 92, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (819, 92, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (820, 92, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (821, 92, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (822, 92, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (823, 92, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (824, 93, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (825, 93, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (826, 93, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (827, 93, '4', 'murah');
INSERT INTO `kuisoner_jawab` VALUES (828, 93, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (829, 93, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (830, 93, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (831, 93, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (832, 93, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (833, 94, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (834, 94, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (835, 94, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (836, 94, '4', 'cukup mahal');
INSERT INTO `kuisoner_jawab` VALUES (837, 94, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (838, 94, '6', 'Kurang kompeten');
INSERT INTO `kuisoner_jawab` VALUES (839, 94, '7', 'Kurang sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (840, 94, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (841, 94, '9', 'Berfungsi kurang maksimal');
INSERT INTO `kuisoner_jawab` VALUES (842, 95, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (843, 95, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (844, 95, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (845, 95, '4', 'murah');
INSERT INTO `kuisoner_jawab` VALUES (846, 95, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (847, 95, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (848, 95, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (849, 95, '8', 'Cukup');
INSERT INTO `kuisoner_jawab` VALUES (850, 95, '9', 'Berfungsi kurang maksimal');
INSERT INTO `kuisoner_jawab` VALUES (851, 96, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (852, 96, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (853, 96, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (854, 96, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (855, 96, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (856, 96, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (857, 96, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (858, 96, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (859, 96, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (860, 97, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (861, 97, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (862, 97, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (863, 97, '4', 'cukup mahal');
INSERT INTO `kuisoner_jawab` VALUES (864, 97, '5', 'Kurang Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (865, 97, '6', 'Kurang kompeten');
INSERT INTO `kuisoner_jawab` VALUES (866, 97, '7', 'Kurang sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (867, 97, '8', 'Cukup');
INSERT INTO `kuisoner_jawab` VALUES (868, 97, '9', 'Tidak ada');
INSERT INTO `kuisoner_jawab` VALUES (869, 98, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (870, 98, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (871, 98, '3', 'kurang sesuai');
INSERT INTO `kuisoner_jawab` VALUES (872, 98, '4', 'cukup mahal');
INSERT INTO `kuisoner_jawab` VALUES (873, 98, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (874, 98, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (875, 98, '7', 'Kurang sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (876, 98, '8', 'Cukup');
INSERT INTO `kuisoner_jawab` VALUES (877, 98, '9', 'Berfungsi kurang maksimal');
INSERT INTO `kuisoner_jawab` VALUES (878, 99, '1', 'kurang sesuai');
INSERT INTO `kuisoner_jawab` VALUES (879, 99, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (880, 99, '3', 'kurang sesuai');
INSERT INTO `kuisoner_jawab` VALUES (881, 99, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (882, 99, '5', 'Kurang Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (883, 99, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (884, 99, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (885, 99, '8', 'Cukup');
INSERT INTO `kuisoner_jawab` VALUES (886, 99, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (887, 100, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (888, 100, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (889, 100, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (890, 100, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (891, 100, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (892, 100, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (893, 100, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (894, 100, '8', 'Cukup');
INSERT INTO `kuisoner_jawab` VALUES (895, 100, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (896, 101, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (897, 101, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (898, 101, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (899, 101, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (900, 101, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (901, 101, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (902, 101, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (903, 101, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (904, 101, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (905, 102, '1', NULL);
INSERT INTO `kuisoner_jawab` VALUES (906, 102, '2', NULL);
INSERT INTO `kuisoner_jawab` VALUES (907, 102, '3', NULL);
INSERT INTO `kuisoner_jawab` VALUES (908, 102, '4', NULL);
INSERT INTO `kuisoner_jawab` VALUES (909, 102, '5', NULL);
INSERT INTO `kuisoner_jawab` VALUES (910, 102, '6', NULL);
INSERT INTO `kuisoner_jawab` VALUES (911, 102, '7', NULL);
INSERT INTO `kuisoner_jawab` VALUES (912, 102, '8', NULL);
INSERT INTO `kuisoner_jawab` VALUES (913, 102, '9', NULL);
INSERT INTO `kuisoner_jawab` VALUES (914, 103, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (915, 103, '2', 'kurang sesuai');
INSERT INTO `kuisoner_jawab` VALUES (916, 103, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (917, 103, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (918, 103, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (919, 103, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (920, 103, '7', 'Sangat sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (921, 103, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (922, 103, '9', 'Berfungsi kurang maksimal');
INSERT INTO `kuisoner_jawab` VALUES (923, 104, '1', 'sangat sesuai');
INSERT INTO `kuisoner_jawab` VALUES (924, 104, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (925, 104, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (926, 104, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (927, 104, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (928, 104, '6', 'Kurang kompeten');
INSERT INTO `kuisoner_jawab` VALUES (929, 104, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (930, 104, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (931, 104, '9', 'Berfungsi kurang maksimal');
INSERT INTO `kuisoner_jawab` VALUES (932, 105, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (933, 105, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (934, 105, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (935, 105, '4', 'murah');
INSERT INTO `kuisoner_jawab` VALUES (936, 105, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (937, 105, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (938, 105, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (939, 105, '8', 'Cukup');
INSERT INTO `kuisoner_jawab` VALUES (940, 105, '9', 'Tidak ada');
INSERT INTO `kuisoner_jawab` VALUES (941, 106, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (942, 106, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (943, 106, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (944, 106, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (945, 106, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (946, 106, '6', 'Sangat kompeten');
INSERT INTO `kuisoner_jawab` VALUES (947, 106, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (948, 106, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (949, 106, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (950, 107, '1', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (951, 107, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (952, 107, '3', 'kurang sesuai');
INSERT INTO `kuisoner_jawab` VALUES (953, 107, '4', 'murah');
INSERT INTO `kuisoner_jawab` VALUES (954, 107, '5', 'Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (955, 107, '6', 'Sangat kompeten');
INSERT INTO `kuisoner_jawab` VALUES (956, 107, '7', 'Sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (957, 107, '8', 'Baik');
INSERT INTO `kuisoner_jawab` VALUES (958, 107, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (959, 108, '1', NULL);
INSERT INTO `kuisoner_jawab` VALUES (960, 108, '2', NULL);
INSERT INTO `kuisoner_jawab` VALUES (961, 108, '3', NULL);
INSERT INTO `kuisoner_jawab` VALUES (962, 108, '4', NULL);
INSERT INTO `kuisoner_jawab` VALUES (963, 108, '5', NULL);
INSERT INTO `kuisoner_jawab` VALUES (964, 108, '6', NULL);
INSERT INTO `kuisoner_jawab` VALUES (965, 108, '7', NULL);
INSERT INTO `kuisoner_jawab` VALUES (966, 108, '8', NULL);
INSERT INTO `kuisoner_jawab` VALUES (967, 108, '9', NULL);
INSERT INTO `kuisoner_jawab` VALUES (968, 109, '1', 'sangat sesuai');
INSERT INTO `kuisoner_jawab` VALUES (969, 109, '2', 'sangat sesuai');
INSERT INTO `kuisoner_jawab` VALUES (970, 109, '3', 'sangat sesuai');
INSERT INTO `kuisoner_jawab` VALUES (971, 109, '4', 'gratis');
INSERT INTO `kuisoner_jawab` VALUES (972, 109, '5', 'Sangat Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (973, 109, '6', 'Sangat kompeten');
INSERT INTO `kuisoner_jawab` VALUES (974, 109, '7', 'Sangat sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (975, 109, '8', 'Sangat baik');
INSERT INTO `kuisoner_jawab` VALUES (976, 109, '9', 'Dikelola dengan baik');
INSERT INTO `kuisoner_jawab` VALUES (977, 110, '1', NULL);
INSERT INTO `kuisoner_jawab` VALUES (978, 110, '2', NULL);
INSERT INTO `kuisoner_jawab` VALUES (979, 110, '3', NULL);
INSERT INTO `kuisoner_jawab` VALUES (980, 110, '4', NULL);
INSERT INTO `kuisoner_jawab` VALUES (981, 110, '5', NULL);
INSERT INTO `kuisoner_jawab` VALUES (982, 110, '6', NULL);
INSERT INTO `kuisoner_jawab` VALUES (983, 110, '7', NULL);
INSERT INTO `kuisoner_jawab` VALUES (984, 110, '8', NULL);
INSERT INTO `kuisoner_jawab` VALUES (985, 110, '9', NULL);
INSERT INTO `kuisoner_jawab` VALUES (986, 111, '1', NULL);
INSERT INTO `kuisoner_jawab` VALUES (987, 111, '2', NULL);
INSERT INTO `kuisoner_jawab` VALUES (988, 111, '3', NULL);
INSERT INTO `kuisoner_jawab` VALUES (989, 111, '4', NULL);
INSERT INTO `kuisoner_jawab` VALUES (990, 111, '5', NULL);
INSERT INTO `kuisoner_jawab` VALUES (991, 111, '6', NULL);
INSERT INTO `kuisoner_jawab` VALUES (992, 111, '7', NULL);
INSERT INTO `kuisoner_jawab` VALUES (993, 111, '8', NULL);
INSERT INTO `kuisoner_jawab` VALUES (994, 111, '9', NULL);
INSERT INTO `kuisoner_jawab` VALUES (995, 112, '1', NULL);
INSERT INTO `kuisoner_jawab` VALUES (996, 112, '2', NULL);
INSERT INTO `kuisoner_jawab` VALUES (997, 112, '3', NULL);
INSERT INTO `kuisoner_jawab` VALUES (998, 112, '4', NULL);
INSERT INTO `kuisoner_jawab` VALUES (999, 112, '5', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1000, 112, '6', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1001, 112, '7', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1002, 112, '8', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1003, 112, '9', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1004, 113, '1', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1005, 113, '2', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1006, 113, '3', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1007, 113, '4', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1008, 113, '5', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1009, 113, '6', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1010, 113, '7', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1011, 113, '8', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1012, 113, '9', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1013, 114, '1', 'kurang sesuai');
INSERT INTO `kuisoner_jawab` VALUES (1014, 114, '2', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (1015, 114, '3', 'sesuai');
INSERT INTO `kuisoner_jawab` VALUES (1016, 114, '4', 'cukup mahal');
INSERT INTO `kuisoner_jawab` VALUES (1017, 114, '5', 'Kurang Sesuai');
INSERT INTO `kuisoner_jawab` VALUES (1018, 114, '6', 'Kompeten');
INSERT INTO `kuisoner_jawab` VALUES (1019, 114, '7', 'Kurang sopan dan ramah');
INSERT INTO `kuisoner_jawab` VALUES (1020, 114, '8', 'Cukup');
INSERT INTO `kuisoner_jawab` VALUES (1021, 114, '9', 'Ada tetapi tidak berfungsi');
INSERT INTO `kuisoner_jawab` VALUES (1022, 115, '1', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1023, 115, '2', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1024, 115, '3', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1025, 115, '4', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1026, 115, '5', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1027, 115, '6', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1028, 115, '7', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1029, 115, '8', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1030, 115, '9', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1031, 116, '1', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1032, 116, '2', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1033, 116, '3', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1034, 116, '4', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1035, 116, '5', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1036, 116, '6', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1037, 116, '7', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1038, 116, '8', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1039, 116, '9', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1040, 117, '1', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1041, 117, '2', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1042, 117, '3', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1043, 117, '4', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1044, 117, '5', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1045, 117, '6', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1046, 117, '7', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1047, 117, '8', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1048, 117, '9', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1049, 118, '1', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1050, 118, '2', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1051, 118, '3', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1052, 118, '4', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1053, 118, '5', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1054, 118, '6', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1055, 118, '7', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1056, 118, '8', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1057, 118, '9', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1058, 119, '1', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1059, 119, '2', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1060, 119, '3', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1061, 119, '4', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1062, 119, '5', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1063, 119, '6', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1064, 119, '7', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1065, 119, '8', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1066, 119, '9', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1067, 120, '1', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1068, 120, '2', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1069, 120, '3', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1070, 120, '4', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1071, 120, '5', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1072, 120, '6', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1073, 120, '7', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1074, 120, '8', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1075, 120, '9', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1076, 121, '1', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1077, 121, '2', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1078, 121, '3', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1079, 121, '4', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1080, 121, '5', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1081, 121, '6', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1082, 121, '7', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1083, 121, '8', NULL);
INSERT INTO `kuisoner_jawab` VALUES (1084, 121, '9', NULL);

-- ----------------------------
-- Table structure for kuisoner_sartik
-- ----------------------------
DROP TABLE IF EXISTS `kuisoner_sartik`;
CREATE TABLE `kuisoner_sartik`  (
  `id` int(11) NOT NULL,
  `pengisi_id` int(11) NULL DEFAULT NULL,
  `usulan_layanan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `koleksi_buku` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `sartik` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `buku_tercetak` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `buku_elektronik` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jaringan_wifi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ruang_baca` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `perpustakaan_keliling` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `peminjaman_arsip` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `layanan_tambahan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kuisoner_sartik
-- ----------------------------
INSERT INTO `kuisoner_sartik` VALUES (1, 1, 'klf', 'sjksjks', 'kdj', '', '', '', '', '', '', '');
INSERT INTO `kuisoner_sartik` VALUES (2, 2, 'Layanan Internet ditambah', 'kkpk', 'sudah baik', '', '', '', '', '', '', '');
INSERT INTO `kuisoner_sartik` VALUES (3, 3, 'Koleksi buku', 'Koleksi arsip', 'kritik dan saran', 'Buku Tercetak', 'Buku Elektronik', 'Jaringan Wifi', 'Ruang Baca', 'Perpus Keliling', 'Peminjaman Arsip', 'Layanan Tambahan');
INSERT INTO `kuisoner_sartik` VALUES (4, 4, 'kkpk', 'n', 'sudah baik', 'baik', 'kurang banyak koleksinya', 'kurang banter', 'kurang luas', 'bagus', 'belum pernah pinjam', 'baik');
INSERT INTO `kuisoner_sartik` VALUES (5, 5, 'best seller', 'bangunan bersejarah', 'semakin lebih baik', 'perbanyak buku best seller', 'buku berseri mohon dilengkapi', 'kadang terputus', 'nyaman', 'persering di taman-taman atau pansi', 'belum pernah pinjam', 'layanan selasar diberikan ruang baca lesehan');
INSERT INTO `kuisoner_sartik` VALUES (6, 6, 'Akses dan layanan perpustakaan..Elva Rahma..Prenada Media Group..75.000', 'Arsip kewilayahan', 'Tambah koleksi buku yang beragam', 'Memadai', 'Tersedia cukup lengkap', 'Lancar', 'Memadai', 'Memadai', 'Memadai', 'Cukup');
INSERT INTO `kuisoner_sartik` VALUES (7, 7, 'Buku Sejarah', 'Buku-buku sejarah dunia', 'ruangan diperluas .', 'bagus', 'bagus', 'bagus', 'bagus', 'bagus', 'bagus', 'bagus');
INSERT INTO `kuisoner_sartik` VALUES (8, 8, '-', '-', 'meja gasebo terlalu besar shg ruang duduk agak sempit, perlu disediakan kantin agar pengunjung semakin betah di perpustakaan', 'buku tersedia lengkap dan kondisi relatif terpelihara baik', 'e-book yg tersedia sudah lumayan jumlahnya, terbaca jelas dan akses mudah / lancar', 'Internet wifi yg disediakan sangat membantu, shg menambah kenyamanan utk berlama2 berada di perpus', 'Ruang baca yg nyaman dan representatif', 'Kemudahan akses buku baca di ruang2 publik melalui perpustakaan keliling mengedukasi masyarakat untuk gemar membaca', 'Pelayanan peminjaman arsip sudah baik, dan tersedia aplikasi pinjam arsip', 'Layanan pemutaran film sangat menarik dan mengedukasi anak untuk mengenal perpustakaan');
INSERT INTO `kuisoner_sartik` VALUES (9, 9, 'ensiklopedia', 'sejarah kota\\\" lain', 'Dinas Perpustakaan dan Kerasipan Kota Salatiga dari segi pelayanan sudah OK banget.\r\nPerpustakaan keliling di lanjutkan lagi dunk, khusus untuk sekolah SMP', 'Buku yang disediakan sudah sesuain dengan kebutuhan masyarakat,, ', 'e-book sudah sesuai dengan kebutuhan, kemungkinan lebih diperbanyak buku pelajaran', 'wifi lancar', 'ruang baca sudah memenuhi standar yaitu nyaman, dan terang', 'perpustakaan keliling belum bisa di jalankan menyeluruh, karena ada sebagian sekolah yang sekarang sama sekali tidak pernah di kunjungi.', 'sudah sesuai kebutuhan', 'layanan dongeng ke sekolah-sekolah');
INSERT INTO `kuisoner_sartik` VALUES (10, 10, 'BUKU-BUKU KETERAMPILAN ... UNTUK BERKREASI DI MASA PANDEMI', 'KOLEKSI ARSIP KOTA SALATIGA', 'MENINGKATKAN LAYANAN PADA PEMUSTAKA DENGAN KETULUSAN, KERAMAHAN, DAN KESOPANAN', 'SUDAH SESUAI DENGAN KEBUTUHAN', 'SUDAH SESUAI DENGAN KEBUTUHAN', 'SUDAH SESUAI DENGAN KEBUTUHAN', 'SUHU UDARA DI RUANG BACA PANAS', 'PENATAAN BUKU PERLU DIKELOMPOKKAN', 'SUDAH SESUAI DENGAN KEBUTUHAN', 'LAYANAN BACA UNTUK ANAK TEMPATNYA KURANG LUAS');
INSERT INTO `kuisoner_sartik` VALUES (11, 11, 'Jatuh bangun Jack Ma, Pengarang Irma ElMira, Penerbit: Cheklistst Yogyakarta, Harga,54.000', 'Koleksi arsip mengenai Salatiga,\\\"Masa masuknya Hindu-Budha, Islam, Kolonialisme, Orde Lama, Orde Baru di Salatiga', 'Memberikan edukasi secara langsung mengenai peserta didik menghadapi \\\"New Normal\\\" dengan membuka \\\"video pembelajaran\\\" bioskop pembelajaran', 'Buku Tercetak sudah cukup memadai, namun butuh penambahan disetiap temanya', 'Buku Elektronik sudah ada, akan tetapi untuk peserta didik masih butuh penambahan', 'sudah memadahi, akan tetapi jaringan wifi dilantai 2 dan berikutnya perlu ditambah', 'Sudah sangat menarik, karena pengunjung banyak perlu ditambah', 'Untuk SMA/SMK mohon diberikan kembali perhatian mengenai perpustakaan keliling neskipun kami sudah pelimpahan ke provinsi', 'Arsip hanya bisa dibaca ditempat untuk kelestariannya, maka butuh lokasi dan alat khusus serta perizinan khusus dalam arsip', 'Diadakannya dokumentasi atau perlengkapan untuk pengelolaan arsip, khususnya arsip sejarah ');
INSERT INTO `kuisoner_sartik` VALUES (12, 12, 'Judul: Tembang Talijiwo, Pengarang: Sujiwo Tejo, Penerbit: Diva Press, Harga: Rp. 80.000,-', 'arsip tentang sejarah perjuangan kemerdekaan di kota Salatiga ', 'untuk sementara cukup', 'Pemutakhiran koleksi buku sesuai dengan perkembangan keilmuan. dengan tetap melestarikan koleksi-koleksi bernilai sejarah dan langka. ', 'Penambahan jumlah koleksi ebook khusus untuk anak-anak.', 'Mengupgrade kapasitas bandwith wifi.', 'Ruang baca kurang nyaman pada saat hujan. ', 'Mengupayakan layanan perpustakaan keliling untuk menjangkau area terluar kota Salatiga. ', 'Menambah ragam koleksi bernilai sejarah khususnya tentang kota Salatiga. ', 'Memaksimalkan layanan pemustaka berkebutuhan khusus (ruang braille) dan mengupayakan layanan pada penyandang disabilitas lainnya. ');
INSERT INTO `kuisoner_sartik` VALUES (13, 13, 'koleksi buku pewayangan', 'arsip tentang peninggalan bersejarah', 'mohon selalu berorientasi pada pemberian pelayanan terbaik untuk pemustaka baik. ', 'kwantitas buku kurang', 'judul buku kurang', 'lqncar', 'msh bocor', 'belum mereta ke semua sekolah', 'msh sangat kurang sekali', 'perlu kantin  dan perluasan layanan ');
INSERT INTO `kuisoner_sartik` VALUES (14, 14, '', '', '', '', '', '', '', '', '', '');
INSERT INTO `kuisoner_sartik` VALUES (15, 15, 'Fiksi', 'Sejarah salatiga', 'Varian koleksi dan layanan perlu dikaji dan ditingkatkan', 'Perlu ditambahkan', 'Perlu variatif', 'Baik', 'Baik', 'Baik', 'Baik', 'Baik');
INSERT INTO `kuisoner_sartik` VALUES (16, 16, 'komik', 'tidak ada', 'sudah baik perlu ditingkatkan', 'perlu disediakan lebih banyak', 'perlu disediakan lebih banyak', 'ditingkatkan', 'diperluas', 'baik', 'baikbaik', 'baik');
INSERT INTO `kuisoner_sartik` VALUES (17, 17, 'Koleksi buku', 'koleksi arsip', 'saran dan kritik', 'Buku tercetak', 'Buku elektronik', 'Jaringan Wifi', 'Ruang Baca', 'Perpustakaan Keliling', 'Peminjaman Arsip ', 'Layanan Tambahan');
INSERT INTO `kuisoner_sartik` VALUES (18, 18, 'asdjasnd', 'ajdnkajnd', 'jadsnjkasd', 'cetak', 'elektronik', 'wifi', 'tuang baca', 'PUSKEL', 'ARSiP', 'Layanan (++)');
INSERT INTO `kuisoner_sartik` VALUES (19, 19, 'buku novel best seller', 'baik', 'sudah baik', 'baik', 'baik', 'baik', 'baik', 'baik', 'baik', 'baik');
INSERT INTO `kuisoner_sartik` VALUES (20, 20, '-', 'Perlu', 'Untuk perpustakaan keliling supaya bisa rata ke sekolah sekolah se salatiga', 'Baik', 'Baik', 'Baik', 'Baik', 'Baik', 'Baik', 'Baik');
INSERT INTO `kuisoner_sartik` VALUES (21, 21, '', '', '', '', '', '', '', '', '', '');
INSERT INTO `kuisoner_sartik` VALUES (22, 22, '-', '-', 'terus semangat membangun perpustakaan', 'Diperbanyak untuk jenis buku anak', 'mohon diperbanyak konten e book nya dan diperpanjang masa peminjamannya', 'baik', '-', '-', '-', '-');
INSERT INTO `kuisoner_sartik` VALUES (23, 23, 'GRIT, i want to die but i want to eat teokpokki, filosofi teras, mantappu jiwa, going offline, loving the wounded soul, cadel, Kim Ki yeong, truly mars and Venus, men are from mars, women are from Venus, don\\\'t be angry mom, Montessori, rumah main anak', 'Buku Van bemmelen tentang sejarah geografis jawa', 'Semakin dilengkapi bukunya min, kalau bisa ditambah masa peminjaman misal jadi 4 hari', 'Ditambah koleksinya terutama buku fisika, buku blogging, self improvement, buku-buku indie yang gak banyak di medsos tapi gak ada di toko buku min..', 'Ditambah koleksinya min', 'Ditambah bandwithnya :)', 'Sudah oke', 'Belum pernah nyoba fasilitasnya', 'Ditambah koleksinya atau diadakan bedah bukunya min', 'Bedah buku, diskusi buku atau Adain komunitas literasi ( membaca dan menulis min)');
INSERT INTO `kuisoner_sartik` VALUES (24, 24, 'Guru Aini, Andrea Hirata, Penerbit Bentang, 60-70 IDR\r\nOrang-Orang Oetimu, Felix Nesi, Marjin Kiri, 60-65 IDR\r\nSister Fillah, You\\\'ll Never be Alone, Kalis Mardiasih Qanita Publisher, 75-79 IDR \r\nBelenggu Ilmuwan dan Pengetahuan, Andrew Goss, Komunitas Bambu, 100-105 IDR\r\nCendekiawan dan Politik, Kuntowijoyo DKK, LP3ES, 60-75 IDR', 'Sejarah mengenai Kota Salatiga sendiri...tersebar di ANRI dan Perpusnas', 'kantin/pojok coffee break di sekitar perpustakaan', 'Koleksinya semoga akan ditambah dan semakin beragam', 'Tidak banyak menggunakan, tidak banyak tahu. tapi sepertinya tidak banyak koleksinya', 'Sudah cukup baik, terima kasih', 'Karena membaca memakan waktu lama, kadang ada waktu mengantuk...mungkin di lantai 1/kantin luar bisa dimanfaatkan untuk ruang coffee break', 'Tidak banyak menggunakan', 'Tidak banyak menggunakan', '-');
INSERT INTO `kuisoner_sartik` VALUES (25, 25, 'Tidak tahu', 'Pustaka kuno', 'Pengembangan ruang baca perlu ditingkatkan', 'Sudah baik', 'Sudah baik', 'Kurang baik', 'Kurang luas', 'Sudah baik', 'Tidak tahu', 'Tidak tahu');
INSERT INTO `kuisoner_sartik` VALUES (26, 26, 'Perda kota Salatiga yg sudah di sahkan', 'Buku tentang sejarah kota Salatiga', 'Buku ny ditambah utk yg anak-anak', 'Baik', 'Baik', 'Baik', 'Baik', 'Baik', 'Baik', 'Baik');
INSERT INTO `kuisoner_sartik` VALUES (27, 27, 'Semoga konten lokal semakin bertambah terus', 'Diorama salatiga tempo dulu', 'Buat diorama/mini museum untuk menyajikan/mengenalkan arsip sejarah salatiga kepada masyarakat. \r\nLebih banyak kegiatan yang melibatkan masyarakat umum.\r\nRuang anak kalau bisa diperluas.', 'Buku cetak sudah cukup memadai. ', 'Buku elektronik di iSalatiga sudah lumayan banyak. Harapannya bisa ditambah lagi karena masih banyak juga koleksi dimana di perpusda ada tapi di iSalatiga tidak ada.', 'Jaringan wifi agar diperkuat', 'Buat ruang baca lebih nyaman (adem dan lesehan)', 'Harapannya perpusling tidak hanya kesekolah saja tapi ditambah intensitas layanannya kepada masyarakat umum.', 'Belum pernah pinjam. Harapannya dari bidang kearsipan ada semacam display arsip kesejarahan jadi masyarakat akan tahu arsip apa saja yang dimiliki.', 'Layanan peminjaman ditambah waktunya,');
INSERT INTO `kuisoner_sartik` VALUES (28, 28, 'Buku penulisan artikel untuk guru, lainnya tidak tahu', 'Legenda tempat yang populer', 'Perlu kerjasama dengan RW se Salatiga supaya warga pada umumnya menggunakan manfaat Perpusda', 'Perlu dipublikasikan ke sekolah-sekolah', 'Perlu dipublikasikan ke sekolah-sekolah', 'baik', 'Baik', 'Perlu ke perumahan-perumahan', 'Baik', 'Baik');
INSERT INTO `kuisoner_sartik` VALUES (29, 29, 'putra sang fajar , Gramedia ', 'buku babad tanah Jawi', 'perlu penambahan armada perpus keliling', 'tambah lagi biar makin juooos', 'perlu penambahan', 'perlu penambahan bandwidth', 'sudah cukup memadai', 'perlu penambahan armada perpus keliling', 'perlu penambahan koleksi', 'sudah cukup maksimal');
INSERT INTO `kuisoner_sartik` VALUES (30, 30, 'buku pendukung pelajaran sekolah maupun buku berbahasa asing', 'belum tahu', 'mungkin pegawai nya lebih ramah dan helpful apabila ditanya', 'kurang komplit', 'cukup', 'cukup', 'kurang nyaman', 'cukup', 'cukup', 'cukup');
INSERT INTO `kuisoner_sartik` VALUES (31, 31, 'buku kedokteran yang lebih lengkap', 'karena saya belum pernah, maka blum ada kritik atau masukan', 'mungkin untuk pelayanan dan fasilitas lebih ditingkatkn lagi', 'lengkap ', 'selama ini saya belum mencobanya ', 'kurang lancar', 'nyaman', 'untuk perpustakaan keliling menurut saya sudah baik', 'belum pernah melakukan peminjaman arsip', 'untuk gazebo sudah nyaman tetapi karena sedikit maka jikalau ramai maka tidak kebagian tempat');
INSERT INTO `kuisoner_sartik` VALUES (32, 32, 'Belum ada', 'Belum ada yang ingin ditambahkan', 'Baik kok', 'Baik', 'Baik', 'Lemot', 'Baik', 'Baik', 'Iya ', 'Tidak ada');
INSERT INTO `kuisoner_sartik` VALUES (33, 33, 'Buku mengenai kebudayaan-kebudayaan ', 'Cerita tentang sejarah dan kebudayaan ', 'lebih di lengkapkan lagi koleksi buku-buku tercetak maupun elektronik, dan tempat yang lebih nyaman dan menarik agar lebih banyak minat pengunjung untuk datang', 'Cukup baik', 'Cukup baik', 'Cukup baik', 'Cukup baik', 'Cukup baik', 'Cukup baik ', 'Cukup baik');
INSERT INTO `kuisoner_sartik` VALUES (34, 34, 'buku novel remaja seperti kata dari rintik sedu, perahu kertas dari dee lestari sekitar 90 ribuan ', 'buku buku sejarah ', 'cukup baik dan tempatnya juga nyaman ', 'sangat baik dan cukup lengkap', 'baik ', 'baik ', 'nyaman ', 'baik ', 'cukup aman', 'cukup baik ');
INSERT INTO `kuisoner_sartik` VALUES (35, 35, 'Buku buku sejarah', 'Kerajaan kerajaan', 'Buku buku harus diperbanyak', 'Sangat lengkap', 'Sangat lengkap', 'Harus lebih stabil', 'Bersih dan rapi', 'Sangat menarik', 'Belum pernah', 'Sangat bagus');
INSERT INTO `kuisoner_sartik` VALUES (36, 36, 'Buku pendidikan,buku informatif dan juga buku yang memberikan hiburan dan motivasi', 'Sejarah pemerintahan dan lain lain', 'Pembukaan perpustakaan sebaiknya dibuka sampai malam agar pengunjung merasa lebih terpuaskan', 'Perbaiki beberapa sampul dan rawat agar terlihat sedap dipandang jadi mengugah niat untuk membaca', 'Sangat dibutuhkan khususnya dimasa pandemi seperti sekarang', 'Diperluas', 'Diperbanyak ruang yang layak untuk dijadikan tempat baca', 'Lebih harus menjangkau daerah yang jauh dari kota/pinggiran kota', 'Sangat bermanfaat bagi yang ingin memperdalam ilmu dan wawasan', 'Tidak ada');
INSERT INTO `kuisoner_sartik` VALUES (37, 37, 'Tidak ada', 'Tidak ada', 'Perbanyak koleksi buku dan tingkatkan pelayanannya', 'Baik', 'Baik', 'Baik', 'Baik', 'Baik', 'Baik', 'Baik');
INSERT INTO `kuisoner_sartik` VALUES (38, 38, 'Buku tentang ragam bahasa', 'Referensi untuk bahasa asing ', 'Terapkan senyum sapa dan salam', 'Menuru saya sudah cukup lengkap tapi perlu di update sesuai perkembangan', 'Cukup baik', 'Bagus dan sangat membantu ', 'Bagus,fasilitasnya lengkap', 'Sangat baik ', 'Bagus', 'Adanya layanan fotocopy');
INSERT INTO `kuisoner_sartik` VALUES (39, 39, 'tidak ada', 'tidak ada', 'lebih baik lagi', 'cukup', 'cukup', 'cukup', 'cukup', 'cukup', 'cukup', 'cukup');
INSERT INTO `kuisoner_sartik` VALUES (40, 40, 'Cukup', 'Sejarah salatiga, kesenian.', 'Lebih ramah dan cekatan', 'Novel', 'Lebih diperluas', 'Lebih dopercepat', 'Lebih luas dan didesain lebih nyaman', 'Diperbanyak', 'Cukup', 'Cukup');
INSERT INTO `kuisoner_sartik` VALUES (41, 41, 'Novel2 terbaru', 'Cukup', 'Semakin baik..semakin ramah anak..', 'Baik', 'Baik', 'Baik', 'Baik', 'Baik', 'Baik', 'Baik');
INSERT INTO `kuisoner_sartik` VALUES (42, 42, 'Baik', 'Baik', 'Baik', 'Baik', 'Baik', 'Baik', 'Baik', 'Baik', 'Baik', 'Baik');
INSERT INTO `kuisoner_sartik` VALUES (43, 43, 'Tidak ad', 'Tidak tahu', 'Semuanya baik namun di gazebo banyak sekali nyamuk', 'Baik', 'Baik', 'Baik', 'Gazebo banyak nyamuk', 'Kurang sesuai dengan anak sekolah', 'Baik', 'Baik');
INSERT INTO `kuisoner_sartik` VALUES (44, 44, '-', '-', 'semoga lebih ketat penjagaannya, misalnya di perpustakaan ada yg berisik/bermain-main/pacaran(tidak belajar dengan serius) tolong diingatkan.', 'untuk buku tercetak sudah cukup lengkap', 'untuk buku elektronik saya blm pernah mencoba', 'jaringan wifi lancar', 'ruang baca nyaman', 'sangat membantu', '-', '-');
INSERT INTO `kuisoner_sartik` VALUES (45, 45, 'Buku novel romansa yang sedang trend belakangan ini di kalangan remaja, harganya sekitar 50-100k. Dengan begitu akan semakin banyak pengunjung yang datang ;)', 'Sejarah nasional dan internasional  akan menambah luas wawasan pada pembacanya', 'Layanannya sudah memuaskan, tingkatkan lagi supaya lebih baik ya ;)', 'Cukup, lebih baik jika di tingkatkan', 'Baik tapi lebih baik di tingkatkan', 'Lumayan', 'Nyaman dan sesuai', 'Baik', 'Sejarah bis esto', 'Bookstore');
INSERT INTO `kuisoner_sartik` VALUES (46, 46, '-', '-', 'Lebih diperbanyak bukunya dan diperluas jaringan wifinya dan ditingkatkan pelayanannya.', 'Lebih ditambah', '-', 'Diperluas', 'Nyaman', '-', '-', '-');
INSERT INTO `kuisoner_sartik` VALUES (47, 47, 'Belum ada menurut saya', 'Belum menurut saya', 'Layanan wifi diperbaiki lagi,karena sering agak lama', 'Baik', 'Bejerja dengan baik', 'Agak sedikit kurang signalnya', 'Memadahi', 'Sangat baik', 'Sebaiknya di kembalikan tepat waktu', 'Jaringan wifi diperbaiki lagi');
INSERT INTO `kuisoner_sartik` VALUES (48, 48, 'Menurut saya sudah cukup lengkap dan saya belum menemukan ide untuk buku buku tambahan.', 'Ada banyak sejarah sejarah tempat di salatiga yang mungkin bisa di jadikan tempat yang memiliki nilai sejarah . ', 'Untuk para karyawan agar tetap tegas dalam menegur orang orang yang menggangu ketenangan di dalam ruangan baca .', 'Sudah sangat lengkap dan menarik perhatian kepada setiap pembaca.', 'Cukup membantu ketika pembaca jenuh dengan ketika membaca buku.', 'Cukup baik dalam membantu mencari refrensi dan sumber sumber informasi.', 'Sangat nyaman karena ruangan yang dingin sehingga mebuat pembaca menjadi tenang.', 'Sangat membantu siswa untuk menambah pengetahuan juga menambah kegiatan membaca di sekolah.', 'Sangat sangat membantu terutama bagi para pelajar yang suka dengan pelajaran sejarah dan juga kepada orang yang rasa ingin tau nya tinggi dalam bidang sejarah.', 'Mungkin dapat di tambahkan berbagai simolator atau tayangan video sehingga anak anak pun juga senang saat berkunjung di perpusda Salatiga.');
INSERT INTO `kuisoner_sartik` VALUES (49, 49, 'novel , fiersa , 50.000', 'sejarah dalam pelajaran', 'sudah bagus , perlu ditingkatkan dan ditambah buku nya kembali', 'sudah baik', 'sudah baik', 'ditambah lagi ', 'sudah baik', 'sudah baik', 'sudah baik', 'sudah baik');
INSERT INTO `kuisoner_sartik` VALUES (50, 50, 'Buku tentang cerita inspirasi', 'Tidak ada', 'Semoga pelayanan kalian lebih baik lagi kedepannya.', 'Mungkin ada beberapa buku yg sobek/rusak yg perlu dibenahi.', 'Masih minim.', 'Masih minim kecepatannya karena sering dipakai bersama banyak orang.', 'Sudah bagus.', 'Sudah bagus.', 'Sudah sesuai.', 'Sudah bagus.');
INSERT INTO `kuisoner_sartik` VALUES (51, 51, '- The Lord Of The Rings, J.R.R. Tolkien \r\n- The Hobbit, J.R.R. Tolkien', 'Arsip\\\" sejarah Indonesia ', 'sudah baik dan ditingkatkan lagi pelayan bagi masyarakat umum dan lingkup pendidikan di kota salatiga', 'ditingkatkan lagi untuk bisa menambahkan referensi buku-buku baru yang lebih menarik dan bisa bermanfaat bagi masyarakat umum ', 'cukup memadai untuk ebook ', 'jaringan wifi berjalan dengan baik ', 'sudah memadai untuk ruang baca ', 'harus ditingkatkan lagi dalam memberikan pelayanan perpustakaan keliling dan mungkin adanya trobosan baru dalam perpustakaan keliling supaya minat baca meningkat ', 'lebih ditingkatkan lagi sejarah tentang kota Salatiga dan sejarah-sejarah kota lainnya', 'perlunya respon yang mendukung dalam membantu peningkatan pelayanan masyarakat umum dan perpustakaan-perpustakaan sekolah dalam membutuhkan bantuan dalam bentuk teknis atau pun lisan yang harus direspon dengan maksimal ');
INSERT INTO `kuisoner_sartik` VALUES (52, 52, '', '', '', '', '', '', '', '', '', '');
INSERT INTO `kuisoner_sartik` VALUES (53, 53, '-', '-', 'sudah baik', 'baik', 'tidak pernah saya pakai', 'tidak pernah pakai', 'bagus', '-', '-', 'sangat baik');
INSERT INTO `kuisoner_sartik` VALUES (54, 54, 'Berhubungan dengan Teknologi jaman sekarang', 'Sejarah serta gedung- bersejarah di kota Salatiga', 'Sudah baik', 'Lebih dilengkapi untuk variannya', 'Lebih dilengkapi', 'Cukup', 'Kurang tertutup', 'Bagus', 'Bagus', 'Diskon potongan denda pengembalian buku');
INSERT INTO `kuisoner_sartik` VALUES (55, 55, 'Komik, namun untuk info buku saya kurang mengerti', 'Menurut saya tidak ada', 'Menyediakan buku yang lebih baru', 'Kualitas ok', 'Kualitas ok', 'Cukup', 'Cukup nyaman', 'Layanan ok', 'Cukup', 'Tidak perlu');
INSERT INTO `kuisoner_sartik` VALUES (56, 56, 'BAik', 'Baik', 'Baik', 'Baik', 'Baik', 'Kurang baik', 'Baik', 'Kurang baik', 'Baik', 'BaikAik');
INSERT INTO `kuisoner_sartik` VALUES (57, 57, 'Buku cerita', 'Banyak', 'Ya ', 'Bagus banyak', 'Kurang cocok', 'Cepat', 'Rapi tenang', 'Bagus', 'Bagus', 'Bagus');
INSERT INTO `kuisoner_sartik` VALUES (58, 58, 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Sudah lengkap', 'Sudah lengkap', 'Bagus', 'Bagus', 'Baik', 'Baik', 'Bagus');
INSERT INTO `kuisoner_sartik` VALUES (59, 59, 'Buku yang tentang pelajaran dan juga komik seperti buku Why.', 'Buku why karena dapat belajar dan juga tidak menbosankan. ', 'Menurut saya buku nya di tambah lebih banyak dan buku yang menarik  agar banyak siswa lebih banyak membaca', 'Buku cetak di perpustakaan kota Salatiga sangat bagus.', 'Buku elektroniknya juga sangat bagus dan mudah untuk di baca', 'Jaringan wifi di perpustakaan kota salatiga sangat baik dan cepat. ', 'Ruang baca nya sangat nyaman. ', 'Perpustakan keliling lebih di perbanyak agar banyak sisea rajin membaca. ', 'Buku eksiklopedia. ', 'Layanan tambahannya sudah cukup banyak dan sangat membantu');
INSERT INTO `kuisoner_sartik` VALUES (60, 60, 'Why? \r\nHarga: 100', 'Apa saja', 'Tempat duduk lebih banyak', 'Bagus', 'Bagus', 'Kurang bagus', 'Kurang tempat duduk', 'Bagus', 'Bagus', 'Cukup');
INSERT INTO `kuisoner_sartik` VALUES (61, 61, 'Sudah cukup lengkap tapi memerlukan perawatan yang lebih memadai.', 'Sudah cukup.', 'Lebih sering dan gencar dalam membuat program membaca terutama untuk peserta didik Salatiga dan mengerahkan mobil perpustakaan keliling agar niat siswa untuk membaca menaik dan menghasilkan SDM yang maju dan mempertahankan posisi kota Salatiga yang disebut sebagai kota pendidikan dengan dana besar yang dimiliki kota Salatiga.', 'Cukup baik.', 'Cukup baik.', 'Cukup baik.', ' Baik.', 'Kurang baik.', 'Cukup baik.', 'Cukup baik.');
INSERT INTO `kuisoner_sartik` VALUES (62, 62, 'Tidak ada', 'Tidak ada', 'Perpustakaan ini rapi dan lingkungan nya pun bersih', 'Baik', 'Baik', 'Baik', 'Baik', 'Baik', 'Baik', 'Baik');
INSERT INTO `kuisoner_sartik` VALUES (63, 63, 'The final quest by Rick Joyner', 'Kurang tau', 'Mukin dibersihkan lebih sering, tempat parkiran lebih diatur, tempat duduk diluar dirawat lebih baik, tanaman lebih dirawat dan diperbanyak, tambahkan ac, barang barang elektronik di check bisa digunakan atau tidak, tambahkan sofa, membuat perpustakan lebih aesthetic.', 'Baik', 'Baik', 'Kurang', 'Sedikit kotor', 'Kurang tau', 'Baik', 'Baik');
INSERT INTO `kuisoner_sartik` VALUES (64, 64, 'Belum tahu', 'Belum tahu', 'Pertahankan dan tingkatkan fasilitas yang bagus sehingga pembaca dapat menikmati membaca buku dengan baik. ', 'Bagus', 'Belum pernah lihat', 'Belum pakai', 'Bagus', 'Bagus', 'Belum', 'Bagus');
INSERT INTO `kuisoner_sartik` VALUES (65, 65, '-', '-', 'Lebih dikembangkan lagi agar bisa menjadi lebih baik', '-', '-', '-', '-', '-', '-', '-');
INSERT INTO `kuisoner_sartik` VALUES (66, 66, 'Novel anak anak', 'Tidak tahu', 'Tidak ada', 'Baik', 'Baik', 'Baik', 'Baik', 'Baik', 'Baik', 'Baik');
INSERT INTO `kuisoner_sartik` VALUES (67, 67, 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Baik', 'Baik', 'Lancar', 'Nyaman', 'Baik', 'Baik', 'Tidak ada');
INSERT INTO `kuisoner_sartik` VALUES (68, 68, 'Tidak ada', 'Tidak ada', 'Tidak ada', 'sudah lengkap', 'Diperbanyak lagi\r\n\r\n', 'cukup cepat', 'Lebih dibersihkan', 'Baik', 'Sudah lengkap', 'Bagus');
INSERT INTO `kuisoner_sartik` VALUES (69, 69, 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Baik', 'Baik', 'Lancar', 'Nyaman', 'Baik', 'Baik', 'Tidak ada');
INSERT INTO `kuisoner_sartik` VALUES (70, 70, 'tidak ada', 'tidak ada', 'tidak ada', 'cukup lengkap', 'cukup baik', 'baik cukup lancar', 'bagus', 'baik', 'bagus', 'cukup memuaskan');
INSERT INTO `kuisoner_sartik` VALUES (71, 71, 'Harry Potter, Jk rowling', 'tidak ada karna sepertinya sudah lengkap ', 'sudah baik dan terawatw', 'buku yang tercetak baik dan cukup menarik ', 'saya belum bisa berpendapat karena belum pernah mencoba ', 'cukup baik', 'ruang baca nyaman dan terawat ', 'cukup baik dan dapat bermanfaat bagi orang ', 'informatif dan mengedukasi dengan baik', '-');
INSERT INTO `kuisoner_sartik` VALUES (72, 72, 'storm 20 rb ', 'kurang tau', 'baik dan bagus', 'baik', 'cukup baik', 'jelek', 'baik', 'kurang tau', 'baik', 'baik');
INSERT INTO `kuisoner_sartik` VALUES (73, 73, 'KKPK', 'KETERAMPILAN', 'Kurang nyaman saat membaca kalau ada yang bermain musik', 'Baik', 'Baik', 'Lancar', 'Nyaman', 'Sangat mendukung', 'Bagus', 'Tambahan bimbingan');
INSERT INTO `kuisoner_sartik` VALUES (74, 74, 'Baik', 'Baik', 'kalau saat pada main musik sangat mengganggu pengunjung', 'Cukup', 'Baik', ' Kurang lancar', 'Nyaman', 'Sangat bagus', 'Baik', 'Perlu bimbingan');
INSERT INTO `kuisoner_sartik` VALUES (75, 75, 'kesenian jawa terutama wayang, bahasa jawa', 'peta salatiga', 'perlu ditingkatkan lg kedihsiplinan, keramahan dalam layannan', 'penataannya perlu ditingkatkan krn sering tdk sesuai raknya', 'tambah lg koleksinya', 'kadang masih sua ngedown', 'perlu ruang baca yg lebih nyaman', 'peru ditingkatkan sistem administrasinya, banyak yg pinjam gak pake kartu', 'perlu lebih ditingkatkan', 'konsultasi kepustakawanan');
INSERT INTO `kuisoner_sartik` VALUES (76, 76, 'buku langka atau konten lokal', 'dokumentasi foto lama', 'sarana dan prasarana sudah cukup baik,  namun perlu d tingkatkan lagi', 'perlu penambahan buku best seller', 'koleksinya perlu di tambah lagi', 'wifinya perlu tambah bandwith dan perangkat', 'ruang baca sudah cukup baik', 'perpustakaan keliling perlu menambah koleksi untuk memikat daya tarik anak', 'bisa di akses dengan syarat dan ketentuan yang di tetapkan', 'kartu anggota perlu diperbaharui dengan bahan yang lebih baik');
INSERT INTO `kuisoner_sartik` VALUES (77, 77, 'Majalah majalah ', 'Buku buku sejarah kota', 'Perbanyak koleksi buku', 'Tertata rapi', 'Belum pernah memakai', 'Kuat', 'Nyaman', 'Belum pernah', 'Belum pernah', 'Belum pernab');
INSERT INTO `kuisoner_sartik` VALUES (78, 78, 'Buku yang menghibur seperti novel, komik, dan juga buku novel impor berbahasa inggris.', 'Tidak ada.', 'Menurut saya perpustakaan Salatiga kekurangan buku-buku impor yang berbahasa Inggris. Saya berharap buku-buku disana akan lebih bervariasi.', 'Kondisi buku ada yang kurang baik.', 'Belum pernah dilihat, tetapi sangat bermanfaat jika ada.', 'Kurang baik, tetapi cukup.', 'Cukup nyaman.', 'Baik.', 'Tidak tahu.', 'Tidak ada pendapat.');
INSERT INTO `kuisoner_sartik` VALUES (79, 79, 'Buku Warkop DKI Reborn, Anggy umbara, Rp 100,000', 'Tentang sejarah Dunia.', 'Saran saya buku ditambahkan lagi', 'Bagus', 'Bagus', 'Cepat', 'Bagus', 'Sangat bagus', 'Bagus', 'baik');
INSERT INTO `kuisoner_sartik` VALUES (80, 80, 'Buku motivasi, biografi orang sukses, ', 'Sejarah tokoh salatiga dan sekitarnya', 'Jaringan wifi di perkuat, kemudahan mencari koleksi buku melalui website ', 'Kurang lengkap koleksi nya', 'Kurang lengkap koleksi nya', 'Belum stabil', 'Cukup nyaman ', 'Bagus ', 'Tidak tau dan belum pernah mencoba', 'Tidak tau dan belum pernah mencoba');
INSERT INTO `kuisoner_sartik` VALUES (81, 81, 'Buku untuk pembelajaran anak usia dini', 'Foto-foto jaman dahulu yang dilengkapi dengan keterangan  waktunya', 'Pelayanan sudah baik, komputer untuk pencarian buku ada yang rusak,harap diperbaiki', 'Perlu ditambah buku konten lokal', 'Perlu ditambah jumlah judulnya', 'Bagus', 'Bisa dibuat lebih santai, seperti perpustakaan kekinian lainnya', 'Bagus', 'Kurang informasi mengenai cara peminjaman dll', 'Bagus');
INSERT INTO `kuisoner_sartik` VALUES (82, 82, 'Buku best seller ditambah', 'Arsip tentang 3 (tiga) pahlawan asal Salatiga,\r\nArsip tentang bangunan ikonik Kota Salatiga', 'Perlu menambah pendingin ruangan agar lebih nyaman membaca ditempat', 'Perbanyak buku best seller', 'Tambah koleksi komik\r\n', 'Tambah bandwidth', 'Kurang dingin', 'Tambah hotspot', 'Sediakan untuk preservasi online', 'Ruang bermain anak kurang luas dan nyaman');
INSERT INTO `kuisoner_sartik` VALUES (83, 83, '-', 'koleksi tentang tempat-tempat bersejarah di kota Salatiga', '-', '-', '-', '-', 'diperluas dan dilengkapi fasilitas untuk ruang anak', '-', '-', '-');
INSERT INTO `kuisoner_sartik` VALUES (84, 84, '-', '-', '-', 'Menambah lagi koleksi buku cetakan terbaru', 'Menambah lagi koleksi buku elektronik terbaru', 'Jaringan wifi sudah cukup lancar', 'Ruang baca sudah cukup nyaman', '-', '-', '-');
INSERT INTO `kuisoner_sartik` VALUES (85, 85, 'Buku tentang penagkaran hewan dan tumbuhan', 'koleksi foto jaman doeloe', 'Untuk menambah koleksi buku, dan arsip yang lebih bervariatif, dan membuat fasilitas layanan yg lebih nyaman lagi', 'Baik, koleksi bervariatif', 'baik, koleksi bervariatif', 'baik, kualitas cukup ngebut', 'baik, nyaman dan luas', 'baik, sangat membantu di daerah yang kurang terjangkau', 'baik, terlayani dengan baik', 'Layanan untuk nonton film/video salatiga zaman doeloe sudah bagua');
INSERT INTO `kuisoner_sartik` VALUES (86, 86, 'Nihil', 'Nihil', 'Lebih meningkatkan pelayanan dalam bidang kelengkapan koleksi baik buku bacaan ataupun arsip statis', 'perlu ditambah laginkoleksi buku cetak, utamanya buku hasil konten lokal', 'perlu ditambah koleksi buku elektronik', 'jaringan WiFi diperkuat lagi karena sering off', '1. ruang baca di dalam gedung dibuat lebih nyaman lagi \r\n2.ruang baca dibuat lebih asri/ada tanaman/hijau hijau an ', 'Lebih inten lagi waktunya dalam memberikan layanan kelililng dan memperluas jangkauan', 'Masih perlu ditingkatkan dalam layanan nya', 'Ditambahkan kantin/show room/wisata kuliner untuk menunjang peningkatan minat baca');
INSERT INTO `kuisoner_sartik` VALUES (87, 87, 'Buku anak', 'menambah Koleksi Arsip Statis, Sejarah Kota Salatiga lebih dilengkapi', 'Memberikan tempat yang memadai untuk depot Arsip ', 'menambah koleksi buku', 'promosi /sosialisasi ttg buku elektronik ke masyarakat', 'kurang kuat', 'nyaman', 'menambah koleksi buku', 'menambah arsip statis', 'mobile arsip ');
INSERT INTO `kuisoner_sartik` VALUES (88, 88, 'Buku bergenre action', 'Tidak ada', 'Perpustakaan ini sangat luar biasa', 'Banyak', 'Banyak', 'Bagus', 'Sangat nyaman', 'Bagus', 'Keren', 'Bagus');
INSERT INTO `kuisoner_sartik` VALUES (89, 89, 'Buku bergenre action', 'Tidak ada', 'Perpustakaan ini sangat luar biasa', 'Banyak', 'Banyak', 'Bagus', 'Sangat nyaman', 'Bagus', 'Keren', 'Bagus');
INSERT INTO `kuisoner_sartik` VALUES (90, 90, 'Menurut saya buku di Dinas Perpustakaan kota sudah lengkap.', 'Tidak ada', 'Sebaiknya, buku yang berdebu atau kotor dibersihkan. ', 'Tidak', 'Tidak', 'Lancar', 'Luas dan nyaman', 'Luas, rapi, dan bersih', 'Murah', 'Tidak');
INSERT INTO `kuisoner_sartik` VALUES (91, 91, 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Ada', 'Tidak ada', 'Ada', 'Ada', 'Tidak ada', 'Ada', 'Tidak ada');
INSERT INTO `kuisoner_sartik` VALUES (92, 92, 'saya suka dengan buku yang bertemakan sejarah dari sebuah kota', 'buku tentang salatiga, karena saya dulu suka pinjam, namun karena sudah beli jadi sudah jarang ke perpus. mungkin terbawa suasana korona jadi enggan untuk pergi-pergi', 'menyambut tamu dari pintu gerbang masuk dengan icon yang perpustakaan banget', 'memperbanyak jumlah stok buku tentang sejarah salatiga', 'belum pernah mencoba', 'bagus', 'diperbanyak lagi yang model lesehan', 'mungkin saya yang kurang jeli dengan sosialisasi dari perpusda, karena saya juga belum pernah menemui di jalan.', 'belum pernah mencoba', 'di gerbang pintu masuk kurang menarik karena kurang ada desain modern tentang  hal yang berbau perpustakaan, contoh misal dibuatkan gapura dengan bentuk desain buku atau sejenisnya, jadi orang dari luar salatiga jika lewat situ bisa langsung paham dengan icon perpustakaan dari gerbangnya saja. dan jika dari gerbangnya menarik kan pasti menambah semangat anak anak muda untuk mampir atau hanya sekedar selfi di gerbang perpustakaan yang sangat iconik itu.');
INSERT INTO `kuisoner_sartik` VALUES (93, 93, 'Tentang budaya Indonesia', 'Sejarah dan bangunan kota Salatiga', 'Pelayanan sudah baik, cukup ramah dan membantu dalam mencarikan buku.', 'Lebih diperbanyak variasi temanya', 'Baik', 'Cukup Baik', 'Baik', 'Baik', 'Cukup Baik', 'Tidak ada');
INSERT INTO `kuisoner_sartik` VALUES (94, 94, 'Buku komik conan, pengarang gosho aoyama, perkiraan harga 100 ribu', 'Tidak ada', 'Tidak ada karena sudah sangat bagus', 'Sudah cukup', 'Lengkap', 'Cukup lancar', 'Lebih dibersihkan', 'Cukup baik', 'Lengkap', 'Bagus');
INSERT INTO `kuisoner_sartik` VALUES (95, 95, 'Komik yang menarik.', 'Tidak ada.', 'Tempat untuk membaca dibuat menarik dan nyaman untuk di pakai untuk temapt menbaca.', 'Lumayan bagus.', 'Tidal begitu suka tetapi bagus.', 'Lancar.', 'Nyaman.', 'Lumayan bagus.', 'Bagus.', 'Tidka ada.');
INSERT INTO `kuisoner_sartik` VALUES (96, 96, 'Kurang tau', 'Buku sejarah perang Eropa', 'Semoga dapat menjadi yang terbaik', 'Kualitas baik', 'Kondisinya baik juga', 'Gratis, tapi lancar', 'Tenang sejuk rasanya', 'Belum pernah', 'Belum pernah', 'Belum pernah');
INSERT INTO `kuisoner_sartik` VALUES (97, 97, 'Murah', 'Baik', 'Sangat baik ', 'Baik', 'Baik', 'Baik', 'Baik', 'Baik', 'Baik', 'Baik');
INSERT INTO `kuisoner_sartik` VALUES (98, 98, 'Tambahkan koleksi novel-novel berbahasa inggris seperti.', 'Saya kurang tahu.', 'Semoga kualitas nya ditingkatkan khususnya dalam hal pelayanan dan lainnya.', 'Sudab baik', 'Saya belum pernah menggunakannya jadi saya kurang tahu. ', 'Bisa ditingkatkan lagi tetapi sudah cukup cepat.', 'Sudah baik dan bersih, mungkin hanya perlu ditambah lagi meja dan kursinya.', 'Saya belum pernah menggunakannya.', 'Saya belum pernah menggunakannya', 'Sudah baik tinggal ditingkatkan lagi.');
INSERT INTO `kuisoner_sartik` VALUES (99, 99, 'Buku tentang fakta-fakta menarik', 'Sudah cukup', 'Koneksi internet yang ditingkatkan', 'Kurang lengkap', 'Baik', 'Lambat', 'Baik', 'Baik', 'Baik', 'Internet yang lebih cepat dan baik');
INSERT INTO `kuisoner_sartik` VALUES (100, 100, 'tidak tahu', 'tidak tahu', 'pelayanan sudah baik', 'jangan sampai terlipat-lipat', 'cukup baik', 'cukup baik', 'cukup baik, tetapi kurang terang', 'cukip baik', 'cukup baik', 'cukup baik');
INSERT INTO `kuisoner_sartik` VALUES (101, 101, '-', 'sudah sesuai', 'sudah bagus', 'bagus', 'bagys', 'lancar', 'nyamam', 'bagua', '-', 'bagus');
INSERT INTO `kuisoner_sartik` VALUES (102, 102, '', '', '', '', '', '', '', '', '', '');
INSERT INTO `kuisoner_sartik` VALUES (103, 103, '-', '-', '-', 'sudah cukup namun ada beberapa buku\\\" yang saya cari tidak bisa ditemukan disana', '-', '-', '-', '-', '-', '-');
INSERT INTO `kuisoner_sartik` VALUES (104, 104, '-', '-', 'Ketelitian petugas perlu ditingkatkan.', 'Buku dalam kondisi baik, tapi buku-buku yang terbaru sulit dicari.', 'Belum pernah membaca', 'Jaringan wifi lumayan, kurang cepat tapi cukup.', 'Ruang baca terasa nyaman, berkumpul bersama teman-teman bercerita selagi membaca buku. (Sebelum pandemi Covid-19)', 'Belum pernah', 'Belum pernah', '-');
INSERT INTO `kuisoner_sartik` VALUES (105, 105, 'Buku panduan matematika terapan-triskaidekaman - GPU', '-', 'Saya harap makin ada kesempatan untuk menghadiri seminar-seminar terkait literasi. ', 'Ada buku-buku yang sering dipinjam dan masih belum lengkap. ', '-', 'Cukup baik. ', '-', '-', '-', '-');
INSERT INTO `kuisoner_sartik` VALUES (106, 106, 'Komik', 'Kurang tahu', 'Perbanyak komik untuk anak anak', 'Baik', 'Baik', 'Baik', 'Baik', 'Baik', 'Baik', 'Baik');
INSERT INTO `kuisoner_sartik` VALUES (107, 107, 'Komik', 'Sejarah dunia', 'Tingkatkan terus', 'Bagus', 'Bagus', 'Bagus', 'Bagus', 'Bagus', 'Bagus', 'Bagus');
INSERT INTO `kuisoner_sartik` VALUES (108, 108, '', '', '', '', '', '', '', '', '', '');
INSERT INTO `kuisoner_sartik` VALUES (109, 109, 'EGC Mikrobiologi Diagnostik untuk Teknologi Laboratorium Medik by Maria Dannessa Delost Buku Kedokteran -  Harga\r\nRp527.000', 'ARSIP DATANGNYA HINDU-BUDHA KE INDONESIA', 'SARANNYA HANYA MENAMBAH LAYANAN VR SAJA', 'MANTUL DAH :)', 'MASI KURANG', 'LANCAR, JOS GANDOS REWO-REWO', 'LESEHAN DITAMBAH LAGI PLISSS', 'WAW.. MERATA. SEMUA DIJANGKAU', 'BELUM PERNAH PINJAM', 'ADAIN LAYANAN VR YA KAKAK');
INSERT INTO `kuisoner_sartik` VALUES (110, 110, '', '', '', '', '', '', '', '', '', '');
INSERT INTO `kuisoner_sartik` VALUES (111, 111, '', '', '', '', '', '', '', '', '', '');
INSERT INTO `kuisoner_sartik` VALUES (112, 112, '', '', '', '', '', '', '', '', '', '');
INSERT INTO `kuisoner_sartik` VALUES (113, 113, '', '', '', '', '', '', '', '', '', '');
INSERT INTO `kuisoner_sartik` VALUES (114, 114, 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'w');
INSERT INTO `kuisoner_sartik` VALUES (115, 115, '', '', '', '', '', '', '', '', '', '');
INSERT INTO `kuisoner_sartik` VALUES (116, 116, '', '', '', '', '', '', '', '', '', '');
INSERT INTO `kuisoner_sartik` VALUES (117, 117, '', '', '', '', '', '', '', '', '', '');
INSERT INTO `kuisoner_sartik` VALUES (118, 118, '', '', '', '', '', '', '', '', '', '');
INSERT INTO `kuisoner_sartik` VALUES (119, 119, '', '', '', '', '', '', '', '', '', '');
INSERT INTO `kuisoner_sartik` VALUES (120, 120, '', '', '', '', '', '', '', '', '', '');
INSERT INTO `kuisoner_sartik` VALUES (121, 121, '', '', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for mega_menu
-- ----------------------------
DROP TABLE IF EXISTS `mega_menu`;
CREATE TABLE `mega_menu`  (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NULL DEFAULT NULL,
  `kelompok` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mega_menu
-- ----------------------------
INSERT INTO `mega_menu` VALUES (26, 18, 'selayang pandang');
INSERT INTO `mega_menu` VALUES (27, 18, 'Sejarah');
INSERT INTO `mega_menu` VALUES (28, 18, 'Tugas Pokok Dan Fungsi ');
INSERT INTO `mega_menu` VALUES (34, 20, 'Bidang Kearsipan');
INSERT INTO `mega_menu` VALUES (35, 20, 'Bidang Pembinaan dan Pengembangan.');
INSERT INTO `mega_menu` VALUES (36, 20, 'Bidang Perpustakaan');
INSERT INTO `mega_menu` VALUES (40, 18, 'Struktur Organisasi');

-- ----------------------------
-- Table structure for mega_sub_menu
-- ----------------------------
DROP TABLE IF EXISTS `mega_sub_menu`;
CREATE TABLE `mega_sub_menu`  (
  `id` int(11) NOT NULL,
  `mega_menu_id` int(11) NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `link_type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `page_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mega_sub_menu
-- ----------------------------
INSERT INTO `mega_sub_menu` VALUES (1, 36, 'Pelayanan Sirkulasi', 'page', '25', '');
INSERT INTO `mega_sub_menu` VALUES (2, 36, 'Pelayanan Keanggotaan', 'page', '26', '');
INSERT INTO `mega_sub_menu` VALUES (3, 36, 'Pelayanan Membaca Ditempat', 'page', '27', '');
INSERT INTO `mega_sub_menu` VALUES (4, 36, 'Pelayanan Referensi', 'page', '28', '');
INSERT INTO `mega_sub_menu` VALUES (5, 36, 'Pelayanan Koleksi Serial', 'page', '29', '');
INSERT INTO `mega_sub_menu` VALUES (6, 36, 'Pelayanan Perpustakaan Keliling', 'page', '30', '');
INSERT INTO `mega_sub_menu` VALUES (7, 36, 'Pelayanan Audio Visual', 'page', '31', '');
INSERT INTO `mega_sub_menu` VALUES (8, 35, 'Pelayanan Kunjungan Anak', 'page', '34', '');
INSERT INTO `mega_sub_menu` VALUES (9, 35, 'Pelayanan Peminjaman Tempat', 'page', '35', '');
INSERT INTO `mega_sub_menu` VALUES (11, 36, 'Pelayanan Bercerita (story Telling)', 'page', '32', '');
INSERT INTO `mega_sub_menu` VALUES (12, 36, 'Pelayanan Internet', 'page', '33', '');
INSERT INTO `mega_sub_menu` VALUES (15, 34, 'Pelayanan Arsip Pribadi', 'page', '45', '');
INSERT INTO `mega_sub_menu` VALUES (18, 34, 'Pelayanan Arsip Dinamis', 'page', '51', '');
INSERT INTO `mega_sub_menu` VALUES (19, 34, 'Galeri Arsip', 'page', '', '');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `link_type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `page_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `mega_menu` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, 'PROFIL SEKOLAH', 'main', '', '', NULL);
INSERT INTO `menu` VALUES (2, 'BIDANG KERJA', 'main', '', '', NULL);
INSERT INTO `menu` VALUES (6, 'INFORMASI UMUM', 'main', NULL, NULL, NULL);
INSERT INTO `menu` VALUES (7, 'UNDUHAN', 'main', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `meta_key` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `meta_desc` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `meta_text` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `picture` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `content` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `datepost` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 136 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (135, 'Pengumuman kelulusan SMAN 1 Salatiga Tahun Ajaran 2020 / 2021', 'Pengumuman kelulusan SMAN 1 Salatiga Tahun Ajaran 2020 / 2021', 'Pengumuman kelulusan SMAN 1 Salatiga Tahun Ajaran 2020 / 2021', 'Pengumuman kelulusan SMAN 1 Salatiga Tahun Ajaran 2020 / 2021', 'UN-2013.png', '<p><span style=\"color: rgb(34, 34, 34); font-family: -apple-system, &quot;.SFNSText-Regular&quot;, &quot;San Francisco&quot;, Roboto, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, &quot;Lucida Grande&quot;, sans-serif; font-size: 15px;\">Pengumuman kelulusan SMAN 1 Salatiga silahkan klik tautan berikut:</span><br style=\"color: rgb(34, 34, 34); font-family: -apple-system, &quot;.SFNSText-Regular&quot;, &quot;San Francisco&quot;, Roboto, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, &quot;Lucida Grande&quot;, sans-serif; font-size: 15px;\"><br style=\"color: rgb(34, 34, 34); font-family: -apple-system, &quot;.SFNSText-Regular&quot;, &quot;San Francisco&quot;, Roboto, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, &quot;Lucida Grande&quot;, sans-serif; font-size: 15px;\"><a href=\"http://hasilujian.sman1salatiga.sch.id/\" style=\"background-color: rgb(255, 255, 255); color: rgb(77, 178, 236); font-family: -apple-system, &quot;.SFNSText-Regular&quot;, &quot;San Francisco&quot;, Roboto, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, &quot;Lucida Grande&quot;, sans-serif; font-size: 15px;\">hasilujian.sman1salatiga.sch.id</a><br style=\"color: rgb(34, 34, 34); font-family: -apple-system, &quot;.SFNSText-Regular&quot;, &quot;San Francisco&quot;, Roboto, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, &quot;Lucida Grande&quot;, sans-serif; font-size: 15px;\"><br style=\"color: rgb(34, 34, 34); font-family: -apple-system, &quot;.SFNSText-Regular&quot;, &quot;San Francisco&quot;, Roboto, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, &quot;Lucida Grande&quot;, sans-serif; font-size: 15px;\"><span style=\"color: rgb(34, 34, 34); font-family: -apple-system, &quot;.SFNSText-Regular&quot;, &quot;San Francisco&quot;, Roboto, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, &quot;Lucida Grande&quot;, sans-serif; font-size: 15px;\">dengan menggunakan</span><br style=\"color: rgb(34, 34, 34); font-family: -apple-system, &quot;.SFNSText-Regular&quot;, &quot;San Francisco&quot;, Roboto, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, &quot;Lucida Grande&quot;, sans-serif; font-size: 15px;\"><span style=\"color: rgb(34, 34, 34); font-family: -apple-system, &quot;.SFNSText-Regular&quot;, &quot;San Francisco&quot;, Roboto, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, &quot;Lucida Grande&quot;, sans-serif; font-size: 15px;\">user name :”NISN”</span><br style=\"color: rgb(34, 34, 34); font-family: -apple-system, &quot;.SFNSText-Regular&quot;, &quot;San Francisco&quot;, Roboto, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, &quot;Lucida Grande&quot;, sans-serif; font-size: 15px;\"><span style=\"color: rgb(34, 34, 34); font-family: -apple-system, &quot;.SFNSText-Regular&quot;, &quot;San Francisco&quot;, Roboto, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, &quot;Lucida Grande&quot;, sans-serif; font-size: 15px;\">Password&nbsp;&nbsp; : “NIS”</span><br></p>', '2021-05-16');

-- ----------------------------
-- Table structure for page
-- ----------------------------
DROP TABLE IF EXISTS `page`;
CREATE TABLE `page`  (
  `id` int(11) NOT NULL,
  `meta_text` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `meta_key` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `meta_desc` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `key_page` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `picture` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `content` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `berkas_id` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id_2`(`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of page
-- ----------------------------
INSERT INTO `page` VALUES (1, 'Sejarah sma negeri 1 salatiga', 'Sejarah sma negeri 1 salatiga', 'Sejarah sma negeri 1 salatiga', 'SEJARAH (Mars dan Logo)', 'Sejarah sma negeri 1 salatiga', NULL, 'oie_transparent3.png', '<p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-bottom: 26px; color: rgb(34, 34, 34);\">Pada 1 Juli Yayasan SMA B didirikan oleh beberapa tokoh, terutama mereka yang berada di DPRD Salatiga dan beberapa ilmuwan seperti Mr Djoko Soetontro. Pembentukan yayasan ini dimaksudkan untuk membantu masyarakat Salatiga agar memiliki sarana dan prasarana dalam menempuh pendidikan lebih lanjut dan dapat melaksanakan ujian nasional mereka di Salatiga. Setelah mendapatkan surat izin dari Jakarta, SMA B didirikan sebagai sekolah tinggi swasta senior yang pada tanggal 1 Agustus 1954 di Jalan Diponegoro 39.</p><p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-bottom: 26px; color: rgb(34, 34, 34);\">Dua tahun kemudian pada 1 Agustus 1956 SMA B secara resmi diumumkan sebagai SMA Negeri 1 Salatiga (satu-satunya negara sekolah tingkat lanjut). Karena daerah sangat terbatas, hanya membuka kelas Ilmu Pengetahuan Alam saja. Setelah sekolah itu sudah stabil, memiliki sumber daya manusia yang memadai, dan didukung oleh administrasi yang lebih baik, SMA A (untuk kelas aliran bahasa) dan SMA C (untuk kelas ilmu sosial) dibuka pada tahun 1958/1959.</p><p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-bottom: 26px; color: rgb(34, 34, 34);\">Karena daerah yang sempit, SMAN 1 Salatiga meminjam SGTK di Jalan Kartini, kemudian di 1963/1964 harus digunakan SMP 2 dan pada tahun berikutnya juga digunakan oleh SMP 1 dimana pelajaran yang diadakan pada sore hari. Pada 27 Mei 1966 SMAN 1 Salatiga diizinkan oleh PEPEKUPER Salatiga untuk menempati bangunan CHKI di Jalan Kesatrian (sekarang Jalan A. Yani) di samping bangunan di Jalan Diponegoro 39, dan bangunan lainnya dikembalikan kembali.</p><p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-bottom: 26px; color: rgb(34, 34, 34);\">&nbsp;</p><p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-bottom: 26px; color: rgb(34, 34, 34);\">Pada tahun 1967 beberapa kelas SMAN 1 menempati Jalan Kemiri 1, di mana M. Soedijono, Wali kota serta Pemimpin yayasan SMAN 1, berhasil membuat lahan milik SMAN 1 Salatiga. Kemudian, kelas di Jalan Kesatrian dan Jalan Diponegoro, secara bertahap pindah ke Jalan Kemiri 1.</p><p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-bottom: 26px; color: rgb(34, 34, 34);\">Terlepas dari kenyataan bahwa sebagian tanah belum dapat ditempati (sekitar 7.749 meter persegi tanah masih diperdebatkan), semua kelas dapat diselenggarakan di daerah itu sehingga proses belajar mengajar dapat berjalan dengan baik.</p>', '');

-- ----------------------------
-- Table structure for pamer_gbr
-- ----------------------------
DROP TABLE IF EXISTS `pamer_gbr`;
CREATE TABLE `pamer_gbr`  (
  `id` int(11) NOT NULL,
  `gambar` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pamer_gbr
-- ----------------------------
INSERT INTO `pamer_gbr` VALUES (2, 'coronavirus-2312023-19201362.png', 'Sejak pemerintah mengendurkan pembatasan sosial, banyak yang menyerbu pusat perbelanjaan, restoran, hingga tempat hiburan malam. Bahkan, tak sedikit yang mengabaikan protokol kesehatan dan akhirnya terbentuk klaster baru penyebaran Covid-19.\n\nMelansir Express UK, Asosiasi Dokter di Texas, Amerika Serikat, mengurutkan peringkat risiko infeksi Covid-19 dalam kegiatan hidup sehari-hari. Diurutkan dari risiko rendah, sedang, dan tinggi, daftar ini bermanfaat memberikan wawasan ilmiah tentang kegiatan rutin mana yang layak dilakukan dan aktivitas mana yang harus dihindari.');
INSERT INTO `pamer_gbr` VALUES (3, 'DSC_5438re.jpg', 'kunjungan perpustakaan demak');

-- ----------------------------
-- Table structure for pengisi
-- ----------------------------
DROP TABLE IF EXISTS `pengisi`;
CREATE TABLE `pengisi`  (
  `id` int(11) NOT NULL,
  `survey_date` datetime(0) NULL DEFAULT NULL,
  `kelamin` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pendidikan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pekerjaan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jenis_pelayanan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pengisi
-- ----------------------------
INSERT INTO `pengisi` VALUES (1, '2020-06-19 05:51:08', '', 'SMA', 'TNI', 'OK');
INSERT INTO `pengisi` VALUES (2, '2020-06-22 02:46:36', '', 'S1', 'PNS', 'Peminjaman  Buku');
INSERT INTO `pengisi` VALUES (3, '2020-06-23 01:40:56', '', 'S1', 'Swasta', 'Peminjaman Arsip');
INSERT INTO `pengisi` VALUES (4, '2020-06-23 02:24:19', '', 'S1', 'PNS', 'peminjaman buku');
INSERT INTO `pengisi` VALUES (5, '2020-06-23 02:46:29', '', 'SMP', 'Other', 'perpustakaan');
INSERT INTO `pengisi` VALUES (6, '2020-06-23 02:52:23', '', 'SMA', 'PNS', 'Sirkulasi');
INSERT INTO `pengisi` VALUES (7, '2020-06-30 12:32:50', '', 'SMA', 'Other', 'Pelayanan Buku');
INSERT INTO `pengisi` VALUES (8, '2020-06-30 02:42:56', '', 'S1', 'PNS', 'Pinjam buku');
INSERT INTO `pengisi` VALUES (9, '2020-07-03 02:40:01', '', 'S1', 'Swasta', 'Pelayanan perpustakaan');
INSERT INTO `pengisi` VALUES (10, '2020-07-06 05:23:28', '', 'S1', 'PNS', 'sirkulasi');
INSERT INTO `pengisi` VALUES (11, '2020-07-13 04:14:49', '', 'S1', 'Other', 'Peminjaman buku');
INSERT INTO `pengisi` VALUES (12, '2020-07-14 07:23:09', '', 'S1', 'PNS', 'Layanan Pendaftaran Anggota');
INSERT INTO `pengisi` VALUES (13, '2020-07-14 08:14:51', '', 'S2', 'PNS', 'sirkulasi');
INSERT INTO `pengisi` VALUES (14, '2020-07-14 05:31:11', NULL, NULL, NULL, NULL);
INSERT INTO `pengisi` VALUES (15, '2020-07-15 04:29:06', '', 'S3', 'PNS', 'Kerjasama');
INSERT INTO `pengisi` VALUES (16, '2020-07-21 01:56:56', '', 'S1', 'PNS', 'Baca di tempat');
INSERT INTO `pengisi` VALUES (17, '2020-07-21 02:09:16', '', 'S1', 'TNI', 'Baca di tempat');
INSERT INTO `pengisi` VALUES (18, '2020-07-21 02:23:12', '', 'S1', 'TNI', 'Selasar Baca');
INSERT INTO `pengisi` VALUES (19, '2020-07-21 02:29:54', '', 'SMA', 'Other', 'Layanan anak');
INSERT INTO `pengisi` VALUES (20, '2020-07-24 09:46:20', '', 'S1', 'Other', 'Sirkulasi');
INSERT INTO `pengisi` VALUES (21, '2020-07-25 01:56:18', NULL, NULL, NULL, NULL);
INSERT INTO `pengisi` VALUES (22, '2020-07-27 07:45:19', '', 'S1', 'Other', 'Baca di tempat');
INSERT INTO `pengisi` VALUES (23, '2020-08-03 03:40:23', '', 'S1', 'Other', 'Lainnya');
INSERT INTO `pengisi` VALUES (24, '2020-08-03 03:40:37', '', 'S1', 'Other', 'Pendaftaran anggota');
INSERT INTO `pengisi` VALUES (25, '2020-08-03 05:04:27', '', 'S2', 'Swasta', 'Baca di tempat');
INSERT INTO `pengisi` VALUES (26, '2020-08-03 09:00:19', '', 'SMA', 'Other', 'Referensi');
INSERT INTO `pengisi` VALUES (27, '2020-08-03 11:01:58', '', 'S1', 'Swasta', 'Pendaftaran anggota');
INSERT INTO `pengisi` VALUES (28, '2020-08-04 02:50:40', '', 'S1', 'PNS', 'Lainnya');
INSERT INTO `pengisi` VALUES (29, '2020-08-04 03:51:29', '', 'SMA', 'Other', 'Pendaftaran anggota');
INSERT INTO `pengisi` VALUES (30, '2020-08-04 04:35:09', '', 'SMA', 'Other', 'Baca di tempat');
INSERT INTO `pengisi` VALUES (31, '2020-08-04 04:39:57', '', 'SMA', 'Other', 'Referensi');
INSERT INTO `pengisi` VALUES (32, '2020-08-04 05:00:03', '', 'SMA', 'Other', 'Baca di tempat');
INSERT INTO `pengisi` VALUES (33, '2020-08-04 05:09:17', '', 'SMA', 'Other', 'Baca di tempat');
INSERT INTO `pengisi` VALUES (34, '2020-08-04 05:14:40', '', 'SMA', 'Other', 'Referensi');
INSERT INTO `pengisi` VALUES (35, '2020-08-04 05:17:27', '', 'SMA', 'Other', 'Baca di tempat');
INSERT INTO `pengisi` VALUES (36, '2020-08-04 05:21:14', '', 'SMA', 'Other', 'Pendaftaran anggota');
INSERT INTO `pengisi` VALUES (37, '2020-08-04 05:21:39', '', 'SMA', 'Other', 'Baca di tempat');
INSERT INTO `pengisi` VALUES (38, '2020-08-04 05:30:23', '', 'SMA', 'Other', 'Pendaftaran anggota');
INSERT INTO `pengisi` VALUES (39, '2020-08-04 07:33:00', '', 'SMA', 'Other', 'Pendaftaran anggota');
INSERT INTO `pengisi` VALUES (40, '2020-08-04 07:35:43', '', 'SMA', 'Other', 'Pendaftaran anggota');
INSERT INTO `pengisi` VALUES (41, '2020-08-04 07:41:38', '', 'S1', 'PNS', 'Pendaftaran anggota');
INSERT INTO `pengisi` VALUES (42, '2020-08-04 10:12:36', '', 'SMA', 'Other', 'Layanan anak');
INSERT INTO `pengisi` VALUES (43, '2020-08-04 10:32:01', '', 'SMA', 'Other', 'Gazebo');
INSERT INTO `pengisi` VALUES (44, '2020-08-04 10:38:00', '', 'SMA', 'Other', 'Baca di tempat');
INSERT INTO `pengisi` VALUES (45, '2020-08-04 10:42:53', '', 'SMA', 'Other', 'Baca di tempat');
INSERT INTO `pengisi` VALUES (46, '2020-08-04 10:57:41', '', 'SMA', 'Other', 'Baca di tempat');
INSERT INTO `pengisi` VALUES (47, '2020-08-04 01:09:54', '', 'SMA', 'Other', 'Pendaftaran anggota');
INSERT INTO `pengisi` VALUES (48, '2020-08-04 03:05:52', '', 'SMA', 'Other', 'Baca di tempat');
INSERT INTO `pengisi` VALUES (49, '2020-08-05 12:12:37', '', 'SMA', 'Other', 'Pendaftaran anggota');
INSERT INTO `pengisi` VALUES (50, '2020-08-05 12:40:31', '', 'SMA', 'Other', 'Pendaftaran anggota');
INSERT INTO `pengisi` VALUES (51, '2020-08-05 01:24:00', '', 'S1', 'Swasta', 'Sirkulasi');
INSERT INTO `pengisi` VALUES (52, '2020-08-05 01:24:44', NULL, NULL, NULL, NULL);
INSERT INTO `pengisi` VALUES (53, '2020-08-05 02:17:11', '', 'SMP', 'Other', 'Baca di tempat');
INSERT INTO `pengisi` VALUES (54, '2020-08-05 02:19:42', '', 'S1', 'Swasta', 'Pendaftaran anggota');
INSERT INTO `pengisi` VALUES (55, '2020-08-05 02:20:20', '', 'SMP', 'Other', 'Lainnya');
INSERT INTO `pengisi` VALUES (56, '2020-08-05 02:24:40', '', 'SMP', 'Other', 'Bimbingan Membaca');
INSERT INTO `pengisi` VALUES (57, '2020-08-05 02:26:36', '', 'SMA', 'Other', 'Pendaftaran anggota');
INSERT INTO `pengisi` VALUES (58, '2020-08-05 02:29:42', '', 'SMP', 'Other', 'Pendaftaran anggota');
INSERT INTO `pengisi` VALUES (59, '2020-08-05 02:33:47', '', 'SMP', 'Other', 'Baca di tempat');
INSERT INTO `pengisi` VALUES (60, '2020-08-05 03:12:35', '', 'SMP', 'Other', 'Layanan anak');
INSERT INTO `pengisi` VALUES (61, '2020-08-05 05:26:55', '', 'SMP', 'Other', 'Layanan anak');
INSERT INTO `pengisi` VALUES (62, '2020-08-05 11:53:04', '', 'SMP', 'Other', 'Baca di tempat');
INSERT INTO `pengisi` VALUES (63, '2020-08-05 01:22:43', '', 'SMP', 'Other', 'Baca di tempat');
INSERT INTO `pengisi` VALUES (64, '2020-08-05 02:41:53', '', 'SMP', 'Other', 'Baca di tempat');
INSERT INTO `pengisi` VALUES (65, '2020-08-06 12:25:16', '', 'SMP', 'Other', 'Layanan anak');
INSERT INTO `pengisi` VALUES (66, '2020-08-06 12:27:27', '', 'SMP', 'Other', 'Lainnya');
INSERT INTO `pengisi` VALUES (67, '2020-08-06 12:35:18', '', 'SMP', 'Other', 'Layanan anak');
INSERT INTO `pengisi` VALUES (68, '2020-08-06 12:35:26', '', 'SMP', 'Other', 'Layanan anak');
INSERT INTO `pengisi` VALUES (69, '2020-08-06 12:35:38', '', 'SMP', 'Other', 'Layanan anak');
INSERT INTO `pengisi` VALUES (70, '2020-08-06 12:37:31', '', 'SMP', 'Other', 'Perpustakaan keliling');
INSERT INTO `pengisi` VALUES (71, '2020-08-06 12:40:07', '', 'SMP', 'Other', 'Layanan anak');
INSERT INTO `pengisi` VALUES (72, '2020-08-06 12:40:08', '', 'SMP', 'Other', 'Lainnya');
INSERT INTO `pengisi` VALUES (73, '2020-08-06 01:00:10', '', 'S2', 'PNS', 'Layanan anak');
INSERT INTO `pengisi` VALUES (74, '2020-08-06 01:03:50', '', 'S1', 'PNS', 'Layanan internet');
INSERT INTO `pengisi` VALUES (75, '2020-08-06 01:08:29', '', 'S1', 'Other', 'Referensi');
INSERT INTO `pengisi` VALUES (76, '2020-08-06 01:10:55', '', 'S1', 'Other', 'Layanan internet');
INSERT INTO `pengisi` VALUES (77, '2020-08-06 01:18:20', '', 'S1', 'Other', 'Baca di tempat');
INSERT INTO `pengisi` VALUES (78, '2020-08-06 01:36:42', '', 'SMP', 'Other', 'Layanan anak');
INSERT INTO `pengisi` VALUES (79, '2020-08-06 01:41:21', '', 'SMP', 'Other', 'Lainnya');
INSERT INTO `pengisi` VALUES (80, '2020-08-06 01:56:38', '', 'S1', 'Swasta', 'Lainnya');
INSERT INTO `pengisi` VALUES (81, '2020-08-06 02:12:04', '', 'S1', 'PNS', 'Lainnya');
INSERT INTO `pengisi` VALUES (82, '2020-08-06 03:26:52', '', 'S1', 'PNS', 'Layanan internet');
INSERT INTO `pengisi` VALUES (83, '2020-08-06 04:59:26', '', 'SMA', 'PNS', 'Baca di tempat');
INSERT INTO `pengisi` VALUES (84, '2020-08-06 04:59:35', '', 'SMA', 'PNS', 'Pendaftaran anggota');
INSERT INTO `pengisi` VALUES (85, '2020-08-06 06:43:39', '', 'S1', 'PNS', 'Lainnya');
INSERT INTO `pengisi` VALUES (86, '2020-08-06 07:34:14', '', 'SMA', 'PNS', 'Pendaftaran anggota');
INSERT INTO `pengisi` VALUES (87, '2020-08-06 08:04:42', '', 'S1', 'PNS', 'Arsip Statis');
INSERT INTO `pengisi` VALUES (88, '2020-08-07 12:21:41', '', 'SMP', 'Other', 'Layanan anak');
INSERT INTO `pengisi` VALUES (89, '2020-08-07 12:22:03', '', 'SMP', 'Other', 'Layanan anak');
INSERT INTO `pengisi` VALUES (90, '2020-08-07 12:27:09', '', 'SMP', 'Other', 'Layanan anak');
INSERT INTO `pengisi` VALUES (91, '2020-08-07 12:40:02', '', 'SMP', 'Other', 'Layanan anak');
INSERT INTO `pengisi` VALUES (92, '2020-08-07 12:58:11', '', 'S1', 'Swasta', 'Lainnya');
INSERT INTO `pengisi` VALUES (93, '2020-08-07 01:12:11', '', 'S1', 'Swasta', 'Pendaftaran anggota');
INSERT INTO `pengisi` VALUES (94, '2020-08-07 01:36:37', '', 'SMP', 'Other', 'Layanan anak');
INSERT INTO `pengisi` VALUES (95, '2020-08-07 01:57:48', '', 'SMP', 'Other', 'Baca di tempat');
INSERT INTO `pengisi` VALUES (96, '2020-08-07 02:00:15', '', 'SMP', 'Other', 'Lainnya');
INSERT INTO `pengisi` VALUES (97, '2020-08-07 04:49:21', '', 'SMP', 'Other', 'Pendaftaran anggota');
INSERT INTO `pengisi` VALUES (98, '2020-08-12 12:27:21', '', 'SMA', 'Other', 'Pendaftaran anggota');
INSERT INTO `pengisi` VALUES (99, '2020-08-12 12:29:51', '', 'SMA', 'Other', 'Layanan internet');
INSERT INTO `pengisi` VALUES (100, '2020-08-12 12:31:05', '', 'SMA', 'Other', 'Sirkulasi');
INSERT INTO `pengisi` VALUES (101, '2020-08-12 12:32:07', '', 'SMA', 'Other', 'Baca di tempat');
INSERT INTO `pengisi` VALUES (102, '2020-08-12 12:41:15', NULL, NULL, NULL, NULL);
INSERT INTO `pengisi` VALUES (103, '2020-08-12 12:43:28', '', 'SMA', 'Other', 'Pendaftaran anggota');
INSERT INTO `pengisi` VALUES (104, '2020-08-12 12:50:47', '', 'SMA', 'Other', 'Baca di tempat');
INSERT INTO `pengisi` VALUES (105, '2020-08-12 01:26:38', '', 'SMA', 'Other', 'Baca di tempat');
INSERT INTO `pengisi` VALUES (106, '2020-08-12 02:40:49', '', 'SMA', 'Other', 'Lainnya');
INSERT INTO `pengisi` VALUES (107, '2020-08-12 12:21:41', '', 'SMA', 'Other', 'Lainnya');
INSERT INTO `pengisi` VALUES (108, '2020-08-16 08:23:29', NULL, NULL, NULL, NULL);
INSERT INTO `pengisi` VALUES (109, '2020-08-17 04:37:05', '', 'S1', 'PNS', 'Layanan internet');
INSERT INTO `pengisi` VALUES (110, '2020-08-22 11:58:57', NULL, NULL, NULL, NULL);
INSERT INTO `pengisi` VALUES (111, '2020-09-03 05:56:04', NULL, NULL, NULL, NULL);
INSERT INTO `pengisi` VALUES (112, '2020-09-06 03:44:53', NULL, NULL, NULL, NULL);
INSERT INTO `pengisi` VALUES (113, '2020-09-16 05:10:33', NULL, NULL, NULL, NULL);
INSERT INTO `pengisi` VALUES (114, '2020-09-22 06:30:51', 'Laki-laki', 'SD', 'PNS', 'Layanan internet');
INSERT INTO `pengisi` VALUES (115, '2020-09-25 11:38:26', NULL, NULL, NULL, NULL);
INSERT INTO `pengisi` VALUES (116, '2020-10-10 08:47:33', NULL, NULL, NULL, NULL);
INSERT INTO `pengisi` VALUES (117, '2020-10-13 06:27:33', NULL, NULL, NULL, NULL);
INSERT INTO `pengisi` VALUES (118, '2020-10-30 11:41:39', NULL, NULL, NULL, NULL);
INSERT INTO `pengisi` VALUES (119, '2021-04-14 02:23:03', NULL, NULL, NULL, NULL);
INSERT INTO `pengisi` VALUES (120, '2021-05-08 09:10:04', NULL, NULL, NULL, NULL);
INSERT INTO `pengisi` VALUES (121, '2021-05-10 06:57:15', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for ppid
-- ----------------------------
DROP TABLE IF EXISTS `ppid`;
CREATE TABLE `ppid`  (
  `ppid_id` int(11) NOT NULL,
  `ppid_level` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ppid_parent_id` int(11) NULL DEFAULT NULL,
  `ppid_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ppid_doc_type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ppid_link_preview` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ppid_file_download` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ppid_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ppid
-- ----------------------------
INSERT INTO `ppid` VALUES (1, '1', 0, 'INFORMASI YANG DIUMUMKAN SECARA BERKALA', '', '', NULL);
INSERT INTO `ppid` VALUES (2, '1', 0, 'INFORMASI WAJIB TERSEDIA', '', '', NULL);
INSERT INTO `ppid` VALUES (3, '1', 0, 'INFORMASI SERTA MERTA', '', '', NULL);
INSERT INTO `ppid` VALUES (4, '1', 0, 'INFORMASI YANG Dikecualikan', '', '', NULL);
INSERT INTO `ppid` VALUES (6, '2', 1, 'INFORMASI PENGADAAN', '', '', NULL);
INSERT INTO `ppid` VALUES (7, '2', 1, 'RINGKASAN PROGRAM DAN KEGIATAN YANG SEDANG DIJALANKAN', '', '', NULL);
INSERT INTO `ppid` VALUES (8, '3', 6, 'Pengadaan Atk', 'Pdf', 'https://docs.google.com/document/d/e/2PACX-1vSAafC_sxiVHFnYkQcYnncvii3HIB7gUzq0AbcFhB0RdXPx6gRogsn7LBGxN898cXWiHkiZ1EFBwtft/pub?embedded=true', '[DRAFT]_PKS_Midtrans_-Sarana_kantor_.pdf');
INSERT INTO `ppid` VALUES (9, '3', 6, 'INFORMASI 2', 'Word', 'https://docs.google.com/document/d/e/2PACX-1vSAafC_sxiVHFnYkQcYnncvii3HIB7gUzq0AbcFhB0RdXPx6gRogsn7LBGxN898cXWiHkiZ1EFBwtft/pub?embedded=true', '[DRAFT]_PKS_Midtrans.docx');
INSERT INTO `ppid` VALUES (10, '1', 1, 'KEDUDUKAN DAN DOMISILI', '', '', NULL);

-- ----------------------------
-- Table structure for profil_kepala_desa
-- ----------------------------
DROP TABLE IF EXISTS `profil_kepala_desa`;
CREATE TABLE `profil_kepala_desa`  (
  `id` int(11) NOT NULL,
  `foto` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_kepala_desa` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sambutan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for register_pustakawan
-- ----------------------------
DROP TABLE IF EXISTS `register_pustakawan`;
CREATE TABLE `register_pustakawan`  (
  `id` int(11) NOT NULL,
  `tanggal` date NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kategori` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` int(1) NOT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of register_pustakawan
-- ----------------------------
INSERT INTO `register_pustakawan` VALUES (1, '2017-12-12', 'blognyaprast@gmail.com', 'prast', '12345', 'umum', 1);
INSERT INTO `register_pustakawan` VALUES (2, '2018-01-09', 'email@gmail.com', 'username', 'password', 'umum', 1);
INSERT INTO `register_pustakawan` VALUES (3, '2018-01-10', 'andis.oye@gmail.com', 'andis', 'perawan1', 'Lain', 1);
INSERT INTO `register_pustakawan` VALUES (4, '2018-01-10', 'carliaeriani@gmail.com', 'carlia', 'carlia', 'umum', 1);
INSERT INTO `register_pustakawan` VALUES (5, '2018-01-10', 'rinaldianggoro3@gmail.com', 'rinaldi', 'baca', 'Khusus', 1);
INSERT INTO `register_pustakawan` VALUES (6, '2018-01-10', 'mas.budisantoso82@gmail.com', 'budi', 'santoso', 'umum', 1);
INSERT INTO `register_pustakawan` VALUES (7, '2018-07-13', '0', '0', '0', '0', 0);
INSERT INTO `register_pustakawan` VALUES (8, '2018-07-28', '0', '0', '0', '0', 0);
INSERT INTO `register_pustakawan` VALUES (9, '2018-08-16', '0', '0', '0', '0', 0);

-- ----------------------------
-- Table structure for slider
-- ----------------------------
DROP TABLE IF EXISTS `slider`;
CREATE TABLE `slider`  (
  `id` int(11) NOT NULL,
  `picture` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `no_urut` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of slider
-- ----------------------------
INSERT INTO `slider` VALUES (12, '1_(2).jpg', '', '', '5', '');
INSERT INTO `slider` VALUES (46, '1re.jpg', '', '', '', '');
INSERT INTO `slider` VALUES (47, '2re.jpg', '', '', '', '');
INSERT INTO `slider` VALUES (48, '3re.jpg', '', '', '', '');
INSERT INTO `slider` VALUES (53, '1.jpg', '', '', '', '');

-- ----------------------------
-- Table structure for statistik
-- ----------------------------
DROP TABLE IF EXISTS `statistik`;
CREATE TABLE `statistik`  (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `hits` int(11) NOT NULL,
  `online` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sub_menu
-- ----------------------------
DROP TABLE IF EXISTS `sub_menu`;
CREATE TABLE `sub_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `link_type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `page_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id_2`(`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sub_menu
-- ----------------------------
INSERT INTO `sub_menu` VALUES (1, 1, 'SEJARAH (Mars dan Logo)', 'page', '1', '');

-- ----------------------------
-- Table structure for top_menu
-- ----------------------------
DROP TABLE IF EXISTS `top_menu`;
CREATE TABLE `top_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `link_type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `page_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `mega_menu` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of top_menu
-- ----------------------------
INSERT INTO `top_menu` VALUES (8, 'ALUMNI', 'external', '', 'https://ikasmanssa.org/', NULL);
INSERT INTO `top_menu` VALUES (9, 'DAPODIK', 'external', '', '', NULL);
INSERT INTO `top_menu` VALUES (10, 'PERPUSTAKAAN', 'external', '', '', NULL);
INSERT INTO `top_menu` VALUES (11, 'E-RAPORT', 'external', '', '', NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nik` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id_2`(`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '827ccb0eea8a706c4c34a16891f84e7b', 'admin', NULL);

-- ----------------------------
-- Table structure for user_kuisoner
-- ----------------------------
DROP TABLE IF EXISTS `user_kuisoner`;
CREATE TABLE `user_kuisoner`  (
  `id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_kuisoner
-- ----------------------------
INSERT INTO `user_kuisoner` VALUES (1, 'admin', '8140a0d0bc18bfba9c65ad5417b3b2b6');

-- ----------------------------
-- Table structure for usulan_buku
-- ----------------------------
DROP TABLE IF EXISTS `usulan_buku`;
CREATE TABLE `usulan_buku`  (
  `id` int(11) NOT NULL,
  `tanggal_input` date NULL DEFAULT NULL,
  `no_anggota` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_anggota` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `no_telp_hp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jenis_koleksi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `judul` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pengarang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `penerbit` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tahun_terbit` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usulan_buku
-- ----------------------------
INSERT INTO `usulan_buku` VALUES (2, '2019-07-20', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (3, '2019-07-27', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (4, '2019-08-01', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (5, '2019-08-05', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (6, '2019-08-06', '555', 'fhthth', 'gjg', '99988', 'Jurnal', 'jjjg', 'ghg', 'gjgjgj', '555');
INSERT INTO `usulan_buku` VALUES (7, '2019-08-11', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (8, '2019-08-19', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (9, '2019-08-22', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (10, '2019-08-29', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (11, '2019-08-30', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (12, '2019-09-06', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (13, '2019-09-09', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (14, '2019-09-14', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (15, '2019-09-16', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (16, '2019-09-23', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (17, '2019-09-26', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (18, '2019-10-03', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (19, '2019-10-05', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (20, '2019-10-21', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (21, '2019-11-05', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (22, '2019-11-11', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (23, '2019-11-16', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (24, '2019-11-23', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (25, '2019-11-26', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (26, '2019-12-04', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (27, '2019-12-07', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (28, '2019-12-15', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (29, '2019-12-18', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (30, '2019-12-30', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (31, '2020-01-12', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (32, '2020-02-14', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (33, '2020-02-27', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (34, '2020-05-09', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (35, '2020-05-30', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (36, '2020-06-06', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (37, '2020-06-12', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (38, '2020-06-19', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (39, '2020-06-25', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (40, '2020-07-01', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (41, '2020-07-06', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (42, '2020-07-11', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (43, '2020-07-16', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (44, '2020-07-20', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (45, '2020-07-23', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (46, '2020-07-26', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (47, '2020-07-30', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (48, '2020-08-02', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (49, '2020-08-03', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (50, '2020-08-03', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (51, '2020-08-05', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (52, '2020-08-09', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (53, '2020-08-26', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (54, '2020-09-14', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (55, '2020-09-17', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (56, '2020-10-02', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (57, '2020-10-05', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (58, '2020-10-11', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (59, '2020-10-14', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (60, '2020-10-31', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `usulan_buku` VALUES (61, '2021-05-07', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video`  (
  `id` int(11) NOT NULL,
  `thumbnail` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `video_url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `album_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES (2, 'DSC00990.JPG', 'Sharing, Seminar Dan Pelatihan Kepenulisan Di Perpusda Salatiga', 'https://www.youtube.com/watch?v=HX5bVP8zKsw', NULL);
INSERT INTO `video` VALUES (3, 'logo_kabupaten.png', 'Drumblek GADALISA Festival Drumblek Atlantic Dreamland Salatiga', 'https://www.youtube.com/embed/tK54Tstj4fI', NULL);
INSERT INTO `video` VALUES (4, 'logo_kabupaten1.png', 'Drumblek Grace Festival Drumblek Atlantic Dreamland Salatiga 2016', 'https://www.youtube.com/embed/FHMQbN4OaJo', NULL);

-- ----------------------------
-- Table structure for visitor
-- ----------------------------
DROP TABLE IF EXISTS `visitor`;
CREATE TABLE `visitor`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `ip_address` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `counter` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `browser` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 168 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of visitor
-- ----------------------------
INSERT INTO `visitor` VALUES (1, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (2, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (3, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (4, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (5, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (6, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (7, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (8, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (9, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (10, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (11, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (12, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (13, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (14, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (15, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (16, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (17, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (18, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (19, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (20, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (21, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (22, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (23, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (24, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (25, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (26, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (27, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (28, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (29, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (30, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (31, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (32, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (33, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (34, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (35, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (36, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (37, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (38, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (39, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (40, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (41, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (42, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (43, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (44, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (45, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (46, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (47, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (48, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (49, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (50, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (51, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (52, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (53, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (54, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (55, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (56, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (57, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (58, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (59, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (60, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (61, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (62, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (63, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (64, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (65, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (66, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (67, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (68, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (69, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (70, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (71, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (72, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (73, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (74, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (75, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (76, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (77, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (78, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (79, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (80, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (81, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (82, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (83, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (84, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (85, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (86, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (87, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (88, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (89, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (90, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (91, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (92, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (93, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (94, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (95, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (96, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (97, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (98, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (99, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (100, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (101, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (102, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (103, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (104, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (105, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (106, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (107, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (108, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (109, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (110, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (111, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (112, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (113, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (114, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (115, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (116, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (117, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (118, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (119, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (120, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (121, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (122, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (123, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (124, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (125, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (126, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (127, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (128, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (129, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (130, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (131, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (132, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (133, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (134, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (135, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (136, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (137, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (138, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (139, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (140, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (141, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (142, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (143, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (144, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (145, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (146, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (147, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (148, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (149, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (150, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (151, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (152, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (153, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (154, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (155, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (156, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (157, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (158, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (159, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (160, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (161, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (162, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (163, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (164, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (165, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (166, '2021-05-16', '::1', '1', 'Chrome/Opera');
INSERT INTO `visitor` VALUES (167, '2022-04-13', '::1', '1', 'Chrome/Opera');

-- ----------------------------
-- Table structure for web_setting
-- ----------------------------
DROP TABLE IF EXISTS `web_setting`;
CREATE TABLE `web_setting`  (
  `id` int(11) NOT NULL,
  `judul_website` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `meta_text` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `meta_key` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `meta_desc` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `twitter` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `google_plus` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `no_telp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `run_text` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of web_setting
-- ----------------------------
INSERT INTO `web_setting` VALUES (1, 'PKM JIMBARAN', 'PKM JIMBARAN', 'PKM JIMBARAN, PUSKESMAS LAYANAN UNGGUL, LAYANAN TERBAIK, PUSKESMAS JATENG', 'PKM JIMBARAN, PUSKESMAS LAYANAN UNGGUL, LAYANAN TERBAIK, PUSKESMAS JATENG', 'PKM JIMBARAN, PUSKESMAS LAYANAN UNGGUL, LAYANAN TERBAIK, PUSKESMAS JATENG', 'https://www.facebook.com/smansalatiga116', 'https://twitter.com/sman1salatiga', 'https://www.instagram.com/sman1salatiga_official/', 'sma_1_sltg@yahoo.com', ' Jl. Kemiri Raya, Salatiga, Kec. Sidorejo, Kota Salatiga, Jawa Tengah 50714', '(0298) 326867', 'Pengumuman : Selama Pandemi Covid-19, Perpustakaan Hanya Melayani Reservasi Peminjaman Buku dan Pengembalian Buku Saja');

SET FOREIGN_KEY_CHECKS = 1;
