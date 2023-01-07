-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2023 at 11:29 PM
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

--
-- Dumping data for table `contratto`
--

INSERT INTO `contratto` (`codice_contratto`, `data_inizio`, `data_scadenza`, `stipendio_annuale`, `precentuale_possesso`, `numero_maglia`, `codice_giocatore`, `partita_iva`) VALUES
(1001, '2022-07-01', '2023-06-30', 4000000, 1, 30, 'A324F4536SD', '10005483728'),
(1002, '2023-01-01', '2023-06-30', 5500000, 0.8, 9, 'B685G0987SS', '17674763649'),
(1003, '2023-06-01', '2024-06-30', 12000000, 1, 21, 'C554Z4561LK', '06857453654'),
(1004, '2023-01-01', '2023-06-30', 1500000, 0.2, 7, 'B685G0987SS', '10547665474'),
(1005, '2019-01-01', '2019-06-30', 500000, 1, 18, 'E934P34125L', '10009890563');

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

--
-- Dumping data for table `giocatore`
--

INSERT INTO `giocatore` (`Codice_Giocatore`, `Nome`, `Cognome`, `Ruolo`, `Data_Nascita`, `Citta_Provenienza`) VALUES
('A324F4536SD', 'Francesco', 'Totti', 'ATT', '1976-09-27', 'Roma'),
('B685G0987SS', 'Alessandro', 'Del Piero', 'ATT', '1974-11-09', 'Conegliano'),
('C554Z4561LK', 'Paolo', 'Maldini', 'DC', '1968-06-26', 'Milano'),
('D101M2369AM', 'Diego Armando', 'Maradona', 'COC', '1960-10-30', 'Lanus'),
('E934P34125L', 'Sebastien', 'Frey', 'POR', '1980-03-18', 'Thonon-les-Bains');

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
-- Dumping data for table `squadra`
--

INSERT INTO `squadra` (`Partita_IVA`, `Denominazione`, `Anno_fondazione`, `Sede_indirizzo`, `Sede_citta`, `Email`, `Telefono`) VALUES
('06857453654', 'AC Milan', 1899, 'Via Aldo Rossi', 'Milano', 'hospitality@acmilan.com', '0262284545'),
('10005483728', 'AS Roma', 1927, 'Piazzale Dino Viola', 'Roma', 'romacares@asroma.it', '0689386000'),
('10009890563', 'ACF Fiorentina', 1926, 'Viale Manfredo Fanti', 'Firenze', 'fiorentinapoint@acffiorentina.it', '055571259'),
('10547665474', 'SSC Napoli', 1926, 'Via di Castel Volturno', 'Napoli', 'sponsorelicenze@sscn.it', '0815095344'),
('17674763649', 'FC Juventus', 1897, 'Via Druento', 'Torino', 'store-support@juventus.com', '0114530486');

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
