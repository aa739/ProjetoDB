-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 04, 2026 at 12:47 PM
-- Server version: 12.2.2-MariaDB
-- PHP Version: 8.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ReceitasDB`
--
CREATE DATABASE IF NOT EXISTS `ReceitasDB` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `ReceitasDB`;

-- --------------------------------------------------------

--
-- Table structure for table `ingredientes`
--

DROP TABLE IF EXISTS `ingredientes`;
CREATE TABLE `ingredientes` (
  `ingredientes_id` int(11) NOT NULL,
  `ingrediente_nome` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `ingredientes`:
--

--
-- Dumping data for table `ingredientes`
--

INSERT INTO `ingredientes` (`ingredientes_id`, `ingrediente_nome`) VALUES
(1, 'sal'),
(2, 'porco'),
(3, 'pimenta'),
(4, 'vinho branco'),
(5, 'alho'),
(6, 'pimentão moído'),
(7, 'amêijoas'),
(8, 'limão'),
(9, 'pickles'),
(10, 'banha'),
(11, 'coentros'),
(12, 'carne de vaca'),
(13, 'azeite'),
(14, 'cebola'),
(15, 'cenoura'),
(16, 'aipo'),
(17, 'vinho tinto'),
(18, 'pure de tomate'),
(19, 'massa'),
(20, 'tofu'),
(21, 'molho soja'),
(22, 'pure de abobora'),
(23, 'Chips de Batata Doce'),
(24, 'quinoa'),
(25, 'abobora'),
(26, 'roma'),
(27, 'lentilhas'),
(28, 'mistura de sementes'),
(29, 'tomilho'),
(30, 'alecrim'),
(31, 'batata');

-- --------------------------------------------------------

--
-- Table structure for table `quantidade`
--

DROP TABLE IF EXISTS `quantidade`;
CREATE TABLE `quantidade` (
  `id` int(11) NOT NULL,
  `receitas_id` int(11) NOT NULL,
  `ingredientes_id` int(11) NOT NULL,
  `unidade` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `quantidade`:
--   `ingredientes_id`
--       `ingredientes` -> `ingredientes_id`
--   `receitas_id`
--       `receitas` -> `receitas_id`
--   `ingredientes_id`
--       `ingredientes` -> `ingredientes_id`
--

--
-- Dumping data for table `quantidade`
--

INSERT INTO `quantidade` (`id`, `receitas_id`, `ingredientes_id`, `unidade`) VALUES
(1, 1, 8, '1'),
(2, 1, 4, '2 dl'),
(3, 1, 6, '2 colheres'),
(4, 1, 9, '100g'),
(5, 1, 1, 'q.b'),
(6, 1, 3, 'q.b'),
(7, 1, 5, '3 dentes'),
(8, 1, 2, '750g'),
(9, 1, 10, '100g'),
(10, 1, 11, '1 ramo'),
(11, 1, 7, '1 kg'),
(12, 2, 13, '3 colheres'),
(13, 2, 14, '70g'),
(14, 2, 15, '100g'),
(15, 2, 16, '50g'),
(16, 2, 12, '500g'),
(17, 2, 17, '100ml'),
(18, 2, 18, '600g'),
(19, 2, 1, ''),
(20, 2, 3, ''),
(21, 3, 25, '300g'),
(22, 3, 24, '200g'),
(23, 3, 26, '1'),
(24, 3, 27, '400g'),
(25, 3, 28, '3 colheres'),
(26, 3, 3, '1 q.b'),
(27, 3, 29, '1 q.b'),
(28, 3, 13, '3 colheres'),
(29, 4, 20, '500g'),
(30, 4, 8, '1/2'),
(31, 4, 13, 'q.b'),
(32, 4, 30, '2 colheres'),
(33, 4, 5, ''),
(34, 4, 21, '3 colheres'),
(35, 4, 14, ''),
(36, 4, 6, '2 colheres'),
(37, 4, 1, ''),
(38, 4, 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `receitas`
--

DROP TABLE IF EXISTS `receitas`;
CREATE TABLE `receitas` (
  `receitas_id` int(11) NOT NULL,
  `nome_receitas` varchar(30) NOT NULL,
  `calorias` float DEFAULT NULL,
  `link` varchar(2083) DEFAULT NULL,
  `vegan` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `receitas`:
--

--
-- Dumping data for table `receitas`
--

INSERT INTO `receitas` (`receitas_id`, `nome_receitas`, `calorias`, `link`, `vegan`) VALUES
(1, 'Carne de Porco à Alentejana', 530, 'https://pt.petitchef.com/receitas/prato-principal/carne-de-porco-a-alentejana-fid-297665', 0),
(2, 'Massa a Bolonhesa', 364, 'https://pt.petitchef.com/receitas/prato-principal/macarrao-a-bolonhesa-como-na-italia-receita-de-tagliatelle-com-ragu-caseiro-fid-1597088', 0),
(3, 'Sala de quinoa com abobora', 348, 'https://www.pingodoce.pt/receitas/salada-de-quinoa-com-abobora-e-roma/', 1),
(4, ' Assado de Tofu', 144, 'https://proveg.org/pt/receitas/assado-de-tofu-com-pure-de-abobora/', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ingredientes`
--
ALTER TABLE `ingredientes`
  ADD PRIMARY KEY (`ingredientes_id`);

--
-- Indexes for table `quantidade`
--
ALTER TABLE `quantidade`
  ADD PRIMARY KEY (`id`),
  ADD KEY `receitas_id` (`receitas_id`),
  ADD KEY `ingredientes_id` (`ingredientes_id`);

--
-- Indexes for table `receitas`
--
ALTER TABLE `receitas`
  ADD PRIMARY KEY (`receitas_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ingredientes`
--
ALTER TABLE `ingredientes`
  MODIFY `ingredientes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `quantidade`
--
ALTER TABLE `quantidade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `receitas`
--
ALTER TABLE `receitas`
  MODIFY `receitas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `quantidade`
--
ALTER TABLE `quantidade`
  ADD CONSTRAINT `1` FOREIGN KEY (`receitas_id`) REFERENCES `receitas` (`receitas_id`),
  ADD CONSTRAINT `2` FOREIGN KEY (`ingredientes_id`) REFERENCES `ingredientes` (`ingredientes_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
