-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2023 at 10:58 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_candidateweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_bio`
--

CREATE TABLE `tb_bio` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `degree` varchar(50) NOT NULL,
  `interest` varchar(50) NOT NULL,
  `dreamrole` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `linkedin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_bio`
--

INSERT INTO `tb_bio` (`id`, `name`, `degree`, `interest`, `dreamrole`, `image`, `linkedin`) VALUES
(1, 'Peiter Solarso Pasaribu', 'Bachelor of Telecommunication Engineering', 'Cloud Native, Virtualization, Containerization', 'Cloud-Devops-Site Reliability Engineer', 'mypics.jpg', 'https://www.linkedin.com/in/peiterspasaribu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_bio`
--
ALTER TABLE `tb_bio`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_bio`
--
ALTER TABLE `tb_bio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
