-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2020 at 02:51 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `etoon`
--

-- --------------------------------------------------------

--
-- Table structure for table `cartoon`
--

CREATE TABLE `cartoon` (
  `cartoon_id` int(11) NOT NULL,
  `cartoon_name` longtext NOT NULL,
  `linkEP` varchar(250) NOT NULL,
  `img` varchar(250) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cartoon`
--

INSERT INTO `cartoon` (`cartoon_id`, `cartoon_name`, `linkEP`, `img`, `type`) VALUES
(1, 'SoloLeveling', 'Sololeveling/index.php', 'Sololevel.jpg', 1),
(2, 'Me and My 26 year old', 'Me_and_My_26_year_old/index.php', 'Me and My 26 year old.jpg', 5),
(3, 'Haikyu', 'Haikyu/index.php', 'Haikyu.jpg', 3),
(4, 'Attack on titan', '#', 'Attack on titan.jpg', 1),
(5, 'Captain Tsubasa', 'Captain_Tsubasa/index.php', 'Captain Tsubasa.jpg', 2),
(7, 'My Lv999 love for yamada-kun', 'My_Lv999_love_for_yamada-kun/index.php', 'My Lv999 love for yamada-kun.jpg', 5),
(8, 'Onepunchman', 'Onepunchman/index.php', 'Onepunchman.jpg', 4),
(9, 'Pashiri na Boku to Koi suru Banchou-san', 'Pashiri_na_Boku_to_Koi_suru_Banchou-san/index.php', 'Pashiri na Boku to Koi suru Banchou-san.jpg', 5),
(10, 'Quanzhi Gaoshou', 'Quanzhi_Gaoshou/index.php', 'Quanzhi Gaoshou.jpg', 1),
(11, 'Tensei Ouji wa Daraketai', 'Tensei_Ouji_wa_Daraketai/index.php', 'Tensei Ouji wa Daraketai.jpg', 1),
(12, 'The Promised Neverland', 'The_Promised_Neverland/index.php', 'The Promised Neverland.jpg', 1),
(13, 'Why the Hell are You Here Teacher', 'Why_the_Hell_are_You_Here_Teacher/index.php', 'Why the Hell are You Here Teacher.jpg', 6),
(15, 'Itai no wa Iya nano de', 'Itai_no_wa_Iya_nano_de/index.php', 'Itai no wa Iya nano de.jpg', 1),
(16, 'Dr.Stone', 'Dr.Stone/index.php', 'Dr.Stone.jpg', 1),
(20, 'Toriko', '#', 'Toriko.jpg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `episode`
--

CREATE TABLE `episode` (
  `episode_id` int(11) NOT NULL,
  `episode_number` varchar(250) NOT NULL,
  `id_cartoon` int(11) NOT NULL,
  `link` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `episode`
--

INSERT INTO `episode` (`episode_id`, `episode_number`, `id_cartoon`, `link`) VALUES
(1, 'ตอนที่ 0', 1, 'chapter0/index.php'),
(2, 'ตอนที่ 1', 1, 'chapter1/index.php'),
(3, 'ตอนที่ 2', 1, 'chapter2/index.php'),
(4, 'ตอนที่ 1', 2, 'chapter1/index.php'),
(5, 'ตอนที่ 1', 3, 'chapter1/index.php'),
(6, 'ตอนที่ 1', 5, 'chapter1/index.php'),
(7, 'ตอนที่ 1', 7, 'chapter1/index.php'),
(8, 'ตอนที่ 1', 8, 'chapter1/index.php'),
(9, 'ตอนที่ 2', 8, 'chapter2/index.php'),
(10, 'ตอนที่ 1', 9, 'chapter1/index.php'),
(11, 'ตอนที่ 0', 10, 'chapter0/index.php'),
(12, 'ตอนที่ 1', 11, 'chapter1/index.php'),
(13, 'ตอนที่ 1', 12, 'chapter1/index.php'),
(14, 'ตอนที่ 1', 13, 'chapter1/index.php'),
(15, 'ตอนที่ 1', 15, 'chapter1/index.php'),
(19, 'ตอนที่ 1', 16, 'chapter1/index.php');

-- --------------------------------------------------------

--
-- Table structure for table `typecartoon`
--

CREATE TABLE `typecartoon` (
  `type_id` int(11) NOT NULL,
  `type_cartoon` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `typecartoon`
--

INSERT INTO `typecartoon` (`type_id`, `type_cartoon`) VALUES
(1, 'Fantasy'),
(2, 'Sport'),
(3, 'School'),
(4, 'Action'),
(5, 'Lovecomady'),
(6, 'Adult');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_Id` int(11) NOT NULL,
  `users_Name` tinytext NOT NULL,
  `users_Email` tinytext NOT NULL,
  `users_Pw` longtext NOT NULL,
  `profileImg` longtext NOT NULL,
  `type_users` varchar(250) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users_Id`, `users_Name`, `users_Email`, `users_Pw`, `profileImg`, `type_users`) VALUES
(1, 'Non', 'nnon2543@gmail.com', '$2y$10$wcYeBQhwTYZClx/RO0o2MOzsSg32zWePAH4ZHka.QL51d0YVeQrs.', 'profile5', 'admin'),
(4, 'zero', 'asd@gmail.com', '$2y$10$.yyVfGkTnkZ.X9E99a3G2OW950gY4m4.8izqnsNKyZlqWU7RNmW/O', 'profile4', 'user'),
(6, 'test', 'sharkky2000@gmail.com', '$2y$10$Hh1D2xv71CupeSD6Bd2QUexnmvXDFAcggIfoIkWxTpReMceiJfGDq', 'profile6', 'user'),
(7, 'test2', 'qwe@gmail.com', '$2y$10$IOFrJtG9QymRud4ZPMtkxeL1VKuNSdBjx6IZfQI5yu4lObQfC8MVG', 'profiledefault', 'user'),
(9, 'a', 'a@a.com', '$2y$10$mdU5x81b9Nzue0lUHIy85eOxdf0wA5xLkmeSM9U0PoXbOCza4zgyu', 'profile9', 'admin'),
(10, 'a', 'b@b.com', '$2y$10$otZQFfjoZHvqOFstF.wAheSf/08eYrnebNlajk4ioFyoweyAVrksq', 'profiledefault', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cartoon`
--
ALTER TABLE `cartoon`
  ADD PRIMARY KEY (`cartoon_id`),
  ADD KEY `cartoon_ibfk_1` (`type`);

--
-- Indexes for table `episode`
--
ALTER TABLE `episode`
  ADD PRIMARY KEY (`episode_id`),
  ADD KEY `episode_ibfk_1` (`id_cartoon`);

--
-- Indexes for table `typecartoon`
--
ALTER TABLE `typecartoon`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cartoon`
--
ALTER TABLE `cartoon`
  MODIFY `cartoon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `episode`
--
ALTER TABLE `episode`
  MODIFY `episode_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `typecartoon`
--
ALTER TABLE `typecartoon`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cartoon`
--
ALTER TABLE `cartoon`
  ADD CONSTRAINT `cartoon_ibfk_1` FOREIGN KEY (`type`) REFERENCES `typecartoon` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `episode`
--
ALTER TABLE `episode`
  ADD CONSTRAINT `episode_ibfk_1` FOREIGN KEY (`id_cartoon`) REFERENCES `cartoon` (`cartoon_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
