-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2018 at 03:41 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `audio`
--

-- --------------------------------------------------------

--
-- Table structure for table `multimedia`
--

CREATE TABLE `multimedia` (
  `id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `parentid` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `song` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `singer` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `owner` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `multimedia`
--

INSERT INTO `multimedia` (`id`, `parentid`, `song`, `singer`, `url`, `type`, `owner`) VALUES
('1dyYYGQvXhrA2W4lmLa9ACuTZN-r0FU5Y', '1dyYYGQvXhrA2W4lmLa9ACuTZN-r0FU5Y', 'Cho Họ Ghét Đi Em', 'Huỳnh James', 'https://drive.google.com/file/d/1dyYYGQvXhrA2W4lmLa9ACuTZN-r0FU5Y/view?usp=sharing', 'music', 'huynhtiensi'),
('1jj3QjAt_lfG4WBbXWwMC1b-pGIwu6l4o', '1jj3QjAt_lfG4WBbXWwMC1b-pGIwu6l4o', 'Life Will Change', 'Shoji Meguro ft. LYn ', 'https://drive.google.com/file/d/1jj3QjAt_lfG4WBbXWwMC1b-pGIwu6l4o/view?usp=sharing', 'music', 'huynhtiensi'),
('1Jr2MXD1P58Y_7PHfz4LtydrnhFeebr2U', '1oKQvvmuoefSc7b0rRY7_Ci4InB8ZVwOu', 'Ai khổ vì ai', 'Hương Lan', 'https://drive.google.com/file/d/1Jr2MXD1P58Y_7PHfz4LtydrnhFeebr2U/view?usp=sharing', 'music', 'sihuynh0601'),
('1knl17clAh_kNEAo32RR1Jv9G4oUvgx2u', '1knl17clAh_kNEAo32RR1Jv9G4oUvgx2u', 'Vị Thần Gọi Gió', 'Mons ft. TMinx', 'https://drive.google.com/file/d/1knl17clAh_kNEAo32RR1Jv9G4oUvgx2u/view?usp=sharing', 'music', 'huynhtiensi'),
('1oKQvvmuoefSc7b0rRY7_Ci4InB8ZVwOu', '1oKQvvmuoefSc7b0rRY7_Ci4InB8ZVwOu', 'Ai khổ vì ai', 'Hương Lan', 'https://drive.google.com/file/d/1oKQvvmuoefSc7b0rRY7_Ci4InB8ZVwOu/view?usp=sharing', 'music', 'huynhtiensi'),
('1pkI2mjODbrIse8fISuaQYmnGza7OrwzN', '1pkI2mjODbrIse8fISuaQYmnGza7OrwzN', 'Cùng Anh', 'Ngọc Doli', 'https://drive.google.com/file/d/1pkI2mjODbrIse8fISuaQYmnGza7OrwzN/view?usp=sharing', 'music', 'huynhtiensi'),
('1zTtrb5Frx-6RihbSBzlIe0kBXQidd4yQ', '1zTtrb5Frx-6RihbSBzlIe0kBXQidd4yQ', 'Túy Âm', 'Masew ft. Nhật Nguyễn ft. Xesi', 'https://drive.google.com/file/d/1zTtrb5Frx-6RihbSBzlIe0kBXQidd4yQ/view?usp=sharing', 'music', 'huynhtiensi'),
('logo', 'logo', NULL, NULL, 'http://localhost/audio/picture/logo.png', 'picture', 'huynhtiensi');

-- --------------------------------------------------------

--
-- Table structure for table `multimediatype`
--

CREATE TABLE `multimediatype` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `multimediatype`
--

INSERT INTO `multimediatype` (`id`) VALUES
('music'),
('picture'),
('video');

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`id`) VALUES
('admin'),
('user');

-- --------------------------------------------------------

--
-- Table structure for table `siteinfo`
--

CREATE TABLE `siteinfo` (
  `companyname` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `slogan` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seokeywords` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seodescription` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `copyright` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `copyright_ln2` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `siteinfo`
--

INSERT INTO `siteinfo` (`companyname`, `slogan`, `seokeywords`, `seodescription`, `facebook`, `logo`, `copyright`, `copyright_ln2`) VALUES
('Kĩ thuật giấu tin', 'Huynh Tien Si _ N14DCAT70 _ PTITHCM', 'audio, watermark, demo', 'Audio Watermark Demo', 'https://www.facebook.com/si.huynh.5', 'logo', '{companyname} © 2018', 'From Ho Chi Minh city with <span id=\"heart\">❤</span>');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(48) COLLATE utf8_unicode_ci NOT NULL,
  `permission` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `password`, `permission`) VALUES
('abcdef', '8693545b2b0eca500f0ee2b930716305162eb133', 'user'),
('bacdef', '8693545b2b0eca500f0ee2b930716305162eb133', 'user'),
('cabdef', '8693545b2b0eca500f0ee2b930716305162eb133', 'user'),
('huynhtiensi', '8693545b2b0eca500f0ee2b930716305162eb133', 'admin'),
('sihuynh0601', '8693545b2b0eca500f0ee2b930716305162eb133', 'user'),
('tester4', '8693545b2b0eca500f0ee2b930716305162eb133', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `multimedia`
--
ALTER TABLE `multimedia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `owner` (`owner`);

--
-- Indexes for table `multimediatype`
--
ALTER TABLE `multimediatype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siteinfo`
--
ALTER TABLE `siteinfo`
  ADD PRIMARY KEY (`companyname`),
  ADD KEY `logo` (`logo`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission` (`permission`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `multimedia`
--
ALTER TABLE `multimedia`
  ADD CONSTRAINT `multimedia_ibfk_1` FOREIGN KEY (`type`) REFERENCES `multimediatype` (`id`),
  ADD CONSTRAINT `multimedia_ibfk_2` FOREIGN KEY (`owner`) REFERENCES `user` (`id`);

--
-- Constraints for table `siteinfo`
--
ALTER TABLE `siteinfo`
  ADD CONSTRAINT `siteinfo_ibfk_1` FOREIGN KEY (`logo`) REFERENCES `multimedia` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`permission`) REFERENCES `permission` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
