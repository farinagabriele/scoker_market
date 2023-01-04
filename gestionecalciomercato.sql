-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2023 at 03:36 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gestionecalciomercato`
--

-- --------------------------------------------------------

--
-- Table structure for table `contratto`
--

CREATE TABLE `contratto` (
  `codice_contratto` int(11) NOT NULL,
  `data_inizio` date NOT NULL,
  `data_scadenza` date NOT NULL,
  `stipendio_annuale` int(11) NOT NULL,
  `precentuale_possesso` float DEFAULT NULL,
  `numero_maglia` int(11) DEFAULT NULL,
  `codice_giocatore` char(11) DEFAULT NULL,
  `partita_iva` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giocatore`
--

CREATE TABLE `giocatore` (
  `Codice_Giocatore` char(11) NOT NULL,
  `Nome` char(40) NOT NULL,
  `Cognome` char(40) NOT NULL,
  `Ruolo` char(4) DEFAULT NULL,
  `Data_Nascita` date DEFAULT NULL,
  `Citta_Provenienza` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `squadra`
--

CREATE TABLE `squadra` (
  `Partita_IVA` char(11) NOT NULL,
  `Denominazione` char(15) NOT NULL,
  `Anno_fondazione` int(11) DEFAULT NULL,
  `Sede_indirizzo` varchar(30) DEFAULT NULL,
  `Sede_citta` varchar(30) DEFAULT NULL,
  `Email` varchar(40) DEFAULT NULL,
  `Telefono` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contratto`
--
ALTER TABLE `contratto`
  ADD PRIMARY KEY (`codice_contratto`),
  ADD KEY `codice_giocatore` (`codice_giocatore`),
  ADD KEY `partita_iva` (`partita_iva`);

--
-- Indexes for table `giocatore`
--
ALTER TABLE `giocatore`
  ADD PRIMARY KEY (`Codice_Giocatore`);

--
-- Indexes for table `squadra`
--
ALTER TABLE `squadra`
  ADD PRIMARY KEY (`Partita_IVA`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contratto`
--
ALTER TABLE `contratto`
  ADD CONSTRAINT `contratto_ibfk_1` FOREIGN KEY (`codice_giocatore`) REFERENCES `giocatore` (`Codice_Giocatore`),
  ADD CONSTRAINT `contratto_ibfk_2` FOREIGN KEY (`partita_iva`) REFERENCES `squadra` (`Partita_IVA`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
