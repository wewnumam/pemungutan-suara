-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 03, 2022 at 03:55 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pemungutan_suara_calon_ketua_hima_gametech_2023`
--

-- --------------------------------------------------------

--
-- Table structure for table `kandidat`
--

CREATE TABLE `kandidat` (
  `id` int(11) NOT NULL,
  `id_mahasiswa` int(11) NOT NULL,
  `no_urut` int(11) NOT NULL,
  `foto_profil` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kandidat`
--

INSERT INTO `kandidat` (`id`, `id_mahasiswa`, `no_urut`, `foto_profil`) VALUES
(1, 35, 1, '965c417076a0bb19a761e5756c7a6aef'),
(2, 49, 2, 'a202c6f89b550966f37527e2299523a5'),
(3, 1, 3, '5fd40a0210f2b351f265acc1ad39a133');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nim` int(11) NOT NULL,
  `nama` varchar(32) NOT NULL,
  `angkatan` year(4) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `angkatan`, `email`) VALUES
(1, 1806089675, 'Amy Snelling', 2019, 'asnelling0@newsvine.com'),
(2, 2122346218, 'Roddy Phillcox', 2020, 'rphillcox1@ask.com'),
(3, 2052297873, 'Mufi Rowett', 2019, 'mrowett2@examiner.com'),
(4, 1927463102, 'Ronica Adelsberg', 2019, 'radelsberg3@paginegialle.it'),
(5, 1989959150, 'Tiebold Lewsey', 2022, 'tlewsey4@geocities.jp'),
(6, 1946286765, 'Carlyle Frayn', 2021, 'cfrayn5@soup.io'),
(7, 2121365985, 'Wesley Sweeten', 2021, 'wsweeten6@nasa.gov'),
(9, 1931339628, 'Mead Turbard', 2019, 'mturbard8@google.nl'),
(10, 1855708653, 'Urbain Tofful', 2022, 'utofful9@bizjournals.com'),
(11, 1789442987, 'Tabbie Seif', 2019, 'tseifa@bbc.co.uk'),
(12, 1792368527, 'Rosie Palluschek', 2019, 'rpalluschekb@macromedia.com'),
(13, 1916365636, 'Iorgo Barnsley', 2022, 'ibarnsleyc@ehow.com'),
(14, 1930879787, 'Petronille Linham', 2021, 'plinhamd@nymag.com'),
(15, 1909042521, 'Gerty MacAnelley', 2022, 'gmacanelleye@feedburner.com'),
(16, 2146223744, 'Clarice Inold', 2019, 'cinoldf@craigslist.org'),
(17, 1872349866, 'Sybila Piccop', 2018, 'spiccopg@so-net.ne.jp'),
(19, 1829737996, 'Paulita Esherwood', 2020, 'pesherwoodi@yelp.com'),
(20, 1754697321, 'Evie Thurlbourne', 2019, 'ethurlbournej@edublogs.org'),
(21, 1799942486, 'Haily McKernon', 2020, 'hmckernonk@goo.ne.jp'),
(22, 2059439842, 'Jacquie Ardron', 2022, 'jardronl@imdb.com'),
(23, 1721565577, 'Kirsten Brenstuhl', 2019, 'kbrenstuhlm@nifty.com'),
(24, 2028928167, 'Brigida Pursey', 2018, 'bpurseyn@1688.com'),
(25, 1854557854, 'Ronny Jorg', 2020, 'rjorgo@opera.com'),
(26, 2140367992, 'Lyndy Philippet', 2019, 'lphilippetp@ebay.co.uk'),
(27, 1776564689, 'Merridie Corkan', 2019, 'mcorkanq@icio.us'),
(28, 1868238001, 'Yetty Tizard', 2019, 'ytizardr@rakuten.co.jp'),
(29, 1943951939, 'Luigi Craighill', 2020, 'lcraighills@netscape.com'),
(30, 2072003826, 'Con Merryfield', 2018, 'cmerryfieldt@apache.org'),
(31, 2008844582, 'Claudina Mityushkin', 2022, 'cmityushkinu@prlog.org'),
(32, 2083928637, 'Dill Peet', 2022, 'dpeetv@yelp.com'),
(33, 1868283195, 'Karoly Pesic', 2020, 'kpesicw@gmpg.org'),
(34, 1732858547, 'Berthe Leffek', 2021, 'bleffekx@adobe.com'),
(35, 1775059230, 'Ailee Nuccitelli', 2022, 'anuccitelliy@globo.com'),
(36, 2033076668, 'Hortense Gowman', 2020, 'hgowmanz@ovh.net'),
(38, 1785184649, 'Giralda O\'Hannay', 2022, 'gohannay11@hexun.com'),
(40, 1740450440, 'Filippo Fettiplace', 2019, 'ffettiplace13@linkedin.com'),
(41, 2072581187, 'Sarena Simionescu', 2021, 'ssimionescu14@booking.com'),
(42, 1852989028, 'Kain Arghent', 2018, 'karghent15@apple.com'),
(43, 1876623475, 'Thurstan Tumber', 2019, 'ttumber16@ucoz.com'),
(44, 2023496386, 'Hewe Rowlson', 2021, 'hrowlson17@a8.net'),
(45, 1742889287, 'Annecorinne Leek', 2020, 'aleek18@cbslocal.com'),
(46, 1724948163, 'Carie Nolder', 2018, 'cnolder19@ask.com'),
(48, 2144613280, 'Brent Skein', 2020, 'bskein1b@weibo.com'),
(49, 2136966012, 'Alana Scotchmoor', 2020, 'ascotchmoor1c@oakley.com'),
(50, 1923242106, 'Denise Cabena', 2021, 'dcabena1d@cdbaby.com'),
(51, 1842220179, 'Ase Pateman', 2020, 'apateman1e@about.me');

-- --------------------------------------------------------

--
-- Table structure for table `pemilihan`
--

CREATE TABLE `pemilihan` (
  `id` int(11) NOT NULL,
  `id_mahasiswa` int(11) NOT NULL,
  `kode_registrasi` varchar(5) NOT NULL,
  `telah_memilih` tinyint(1) NOT NULL DEFAULT 0,
  `memilih_pada` timestamp NULL DEFAULT NULL,
  `id_kandidat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pemilihan`
--

INSERT INTO `pemilihan` (`id`, `id_mahasiswa`, `kode_registrasi`, `telah_memilih`, `memilih_pada`, `id_kandidat`) VALUES
(52, 1, 'caecb', 1, '2022-11-06 17:00:00', 3),
(53, 2, '872c7', 0, NULL, NULL),
(54, 3, '14856', 0, NULL, NULL),
(55, 4, 'c626c', 1, '2022-11-06 17:00:00', 2),
(56, 5, 'c108d', 1, '2022-11-06 17:00:00', 1),
(57, 6, 'ae410', 1, '2022-11-06 17:00:00', 3),
(58, 7, 'fe4d4', 1, '2022-11-06 17:00:00', 3),
(60, 9, '8d38b', 0, NULL, NULL),
(61, 10, '091d4', 1, '2022-11-06 17:00:00', 1),
(62, 11, '4e271', 1, '2022-11-06 17:00:00', 1),
(63, 12, '10f3c', 1, '2022-11-06 17:00:00', 2),
(64, 13, '73d55', 1, '2022-11-06 17:00:00', 1),
(65, 14, 'a10ff', 1, '2022-11-06 17:00:00', 3),
(66, 15, '6ba3b', 1, '2022-11-06 17:00:00', 2),
(67, 16, 'ef3f3', 1, '2022-11-06 17:00:00', 1),
(68, 17, '4a92b', 1, '2022-11-06 17:00:00', 1),
(70, 19, '2814f', 1, '2022-11-06 17:00:00', 3),
(71, 20, 'f6e84', 1, '2022-11-06 17:00:00', 3),
(72, 21, '98471', 1, '2022-11-06 17:00:00', 1),
(73, 22, '260c0', 0, NULL, NULL),
(74, 23, '1d31f', 1, '2022-11-06 17:00:00', 2),
(75, 24, '0f545', 1, '2022-11-06 17:00:00', 3),
(76, 25, '67a3e', 1, '2022-11-06 17:00:00', 1),
(77, 26, '3fc18', 1, '2022-11-06 17:00:00', 3),
(78, 27, 'f1a18', 1, '2022-11-06 17:00:00', 3),
(79, 28, 'a47c8', 1, '2022-11-06 17:00:00', 3),
(80, 29, '479e9', 1, '2022-11-06 17:00:00', 2),
(81, 30, 'dc682', 1, '2022-11-06 17:00:00', 1),
(82, 31, '17466', 0, NULL, NULL),
(83, 32, 'ae259', 1, '2022-11-06 17:00:00', 1),
(84, 33, '546e7', 0, NULL, NULL),
(85, 34, '4c357', 1, '2022-11-06 17:00:00', 3),
(86, 35, '4d912', 1, '2022-11-06 17:00:00', 2),
(87, 36, 'b9228', 1, '2022-11-06 17:00:00', 2),
(89, 38, 'dd25e', 0, NULL, NULL),
(91, 40, '6ba12', 0, NULL, NULL),
(92, 41, '3674e', 1, '2022-11-06 17:00:00', 3),
(93, 42, '24653', 1, '2022-11-06 17:00:00', 3),
(94, 43, '4277b', 1, '2022-11-06 17:00:00', 1),
(95, 44, 'a050e', 1, '2022-11-06 17:00:00', 1),
(96, 45, '2e7f7', 1, '2022-11-06 17:00:00', 1),
(97, 46, '06b2a', 0, NULL, NULL),
(99, 48, 'bc4ae', 0, NULL, NULL),
(100, 49, 'b9a7e', 1, '2022-11-06 17:00:00', 1),
(101, 50, '42789', 0, NULL, NULL),
(102, 51, '40dbb', 0, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kandidat`
--
ALTER TABLE `kandidat`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kandidat_id_mahasiswa_unique` (`id_mahasiswa`),
  ADD UNIQUE KEY `kandidat_no_urut_unique` (`no_urut`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mahasiswa_nim_unique` (`nim`),
  ADD UNIQUE KEY `mahasiswa_email_unique` (`email`);

--
-- Indexes for table `pemilihan`
--
ALTER TABLE `pemilihan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pemilih_id_mahasiswa_unique` (`id_mahasiswa`),
  ADD KEY `pemilihan_foreign_kandidat` (`id_kandidat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kandidat`
--
ALTER TABLE `kandidat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `pemilihan`
--
ALTER TABLE `pemilihan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kandidat`
--
ALTER TABLE `kandidat`
  ADD CONSTRAINT `kandidat_foreign_mahasiswa` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id`);

--
-- Constraints for table `pemilihan`
--
ALTER TABLE `pemilihan`
  ADD CONSTRAINT `pemilihan_foreign_kandidat` FOREIGN KEY (`id_kandidat`) REFERENCES `kandidat` (`id`),
  ADD CONSTRAINT `pemilihan_foreign_mahasiswa` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
