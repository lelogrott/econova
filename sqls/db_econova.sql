-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 12, 2015 at 12:16 AM
-- Server version: 10.1.9-MariaDB-log
-- PHP Version: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `econova`
--

-- --------------------------------------------------------

--
-- Table structure for table `Coleta`
--

CREATE TABLE `Coleta` (
  `id` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idCooperativa` int(11) NOT NULL,
  `dataColetou` date NOT NULL,
  `dataSolicitou` date NOT NULL,
  `aval_user` int(11) NOT NULL,
  `aval_coop` int(11) NOT NULL,
  `endereco` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Cooperativa`
--

CREATE TABLE `Cooperativa` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `avaliacao` int(11) NOT NULL DEFAULT '0',
  `endereco` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Fotos`
--

CREATE TABLE `Fotos` (
  `id` int(11) NOT NULL,
  `caminho` varchar(100) NOT NULL,
  `idColeta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Promocao`
--

CREATE TABLE `Promocao` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `caminho_imagem` varchar(100) NOT NULL,
  `pts_min` int(11) NOT NULL,
  `codigo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Usuario`
--

CREATE TABLE `Usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pontos` int(11) NOT NULL DEFAULT '0',
  `avaliacao` int(11) NOT NULL DEFAULT '0',
  `avatar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Coleta`
--
ALTER TABLE `Coleta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUsuario` (`idUsuario`),
  ADD KEY `idCooperativa` (`idCooperativa`);

--
-- Indexes for table `Cooperativa`
--
ALTER TABLE `Cooperativa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Fotos`
--
ALTER TABLE `Fotos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idColeta` (`idColeta`);

--
-- Indexes for table `Promocao`
--
ALTER TABLE `Promocao`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- Indexes for table `Usuario`
--
ALTER TABLE `Usuario`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Coleta`
--
ALTER TABLE `Coleta`
  ADD CONSTRAINT `idCooperativa` FOREIGN KEY (`idCooperativa`) REFERENCES `Cooperativa` (`id`),
  ADD CONSTRAINT `idUsuario` FOREIGN KEY (`idUsuario`) REFERENCES `Usuario` (`id`);

--
-- Constraints for table `Fotos`
--
ALTER TABLE `Fotos`
  ADD CONSTRAINT `idColeta` FOREIGN KEY (`idColeta`) REFERENCES `Coleta` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
