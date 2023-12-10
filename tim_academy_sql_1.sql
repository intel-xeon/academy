-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Dic 10, 2023 alle 13:57
-- Versione del server: 10.4.28-MariaDB
-- Versione PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tim_academy_sql_1`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `proprietari`
--

CREATE TABLE `proprietari` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `cognome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `proprietari`
--

INSERT INTO `proprietari` (`id`, `nome`, `cognome`) VALUES
(1, 'Giovanni', 'Allegri'),
(2, 'Giovanni', 'Verdi'),
(3, 'Federico', 'Esposito'),
(4, 'Luca', 'Marsilia'),
(5, 'Luigi', 'Coppola'),
(6, 'Mario', 'Rossi'),
(7, 'Laura', 'Bianchi'),
(8, 'Luca', 'Verdi'),
(9, 'Giulia', 'Ferrari'),
(10, 'Antonio', 'Russo'),
(11, 'Valentina', 'Gallo'),
(12, 'Davide', 'Conti'),
(13, 'Martina', 'Pellegrini'),
(14, 'Alessandro', 'Mancini'),
(15, 'Elena', 'Gatti'),
(16, 'Francesco', 'Lombardi'),
(17, 'Sara', 'De Angelis'),
(18, 'Riccardo', 'Moretti'),
(19, 'Anna', 'Marchetti'),
(20, 'Marco', 'Colombo'),
(21, 'Elisa', 'Barbieri'),
(22, 'Simone', 'Vitali'),
(23, 'Alessia', 'Santoro'),
(24, 'Giovanni', 'Orlando'),
(25, 'Chiara', 'Caruso'),
(26, 'Giuseppe', 'Ricci'),
(27, 'Cristina', 'Mazza'),
(28, 'Luigi', 'Esposito'),
(29, 'Alessandra', 'Rizzo'),
(30, 'Giovanni', 'Galli'),
(31, 'Elena', 'Martini'),
(32, 'Fabio', 'Caputo'),
(33, 'Rosa', 'Palumbo'),
(34, 'Salvatore', 'Greco'),
(35, 'Francesca', 'Sanna'),
(36, 'Mauro', 'Piras'),
(37, 'Paola', 'Costa'),
(38, 'Roberto', 'Marchesi'),
(39, 'Sergio', 'Ferraro'),
(40, 'Angela', 'Santini');

-- --------------------------------------------------------

--
-- Struttura della tabella `vendite_auto`
--

CREATE TABLE `vendite_auto` (
  `id` int(11) NOT NULL,
  `marca` varchar(80) NOT NULL,
  `modello` varchar(50) NOT NULL,
  `prezzo` float NOT NULL,
  `colore` varchar(20) NOT NULL,
  `id_proprietario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `vendite_auto`
--

INSERT INTO `vendite_auto` (`id`, `marca`, `modello`, `prezzo`, `colore`, `id_proprietario`) VALUES
(1, 'Chevrolet', 'Aveo', 8000, 'Rossa', 1),
(2, 'Citroen', 'C2', 5000, 'Blu', 40),
(3, 'Subaru', 'Forester', 38400, 'Bianca', 2),
(4, 'Lancia', 'Ypsilon', 17500, 'Gialla', 3),
(5, 'Toyota', 'Corolla', 25000, 'Blu', 1),
(6, 'Honda', 'Civic', 22000, 'Rosso', 2),
(7, 'Ford', 'Focus', 23000, 'Nero', 39),
(8, 'Chevrolet', 'Malibu', 28000, 'Argento', 4),
(9, 'Volkswagen', 'Golf', 26000, 'Bianco', 5),
(10, 'Nissan', 'Altima', 24000, 'Grigio', 6),
(11, 'Hyundai', 'Elantra', 21000, 'Nero', 7),
(12, 'BMW', 'X3', 35000, 'Blu', 8),
(13, 'Mercedes-Benz', 'C-Class', 32000, 'Argento', 9),
(14, 'Audi', 'A4', 30000, 'Rosso', 10),
(15, 'Fiat', '500', 15000, 'Giallo', 11),
(16, 'Jeep', 'Cherokee', 32000, 'Verde', 12),
(17, 'Mazda', 'CX-5', 27000, 'Blu', 13),
(18, 'Kia', 'Soul', 18000, 'Arancione', 14),
(19, 'Subaru', 'Outback', 31000, 'Rosso', 15),
(20, 'Tesla', 'Model 3', 45000, 'Nero', 16),
(21, 'Volvo', 'XC60', 38000, 'Bianco', 17),
(22, 'Lexus', 'RX', 40000, 'Argento', 18),
(23, 'Jaguar', 'F-PACE', 42000, 'Blu', 19),
(24, 'Land Rover', 'Discovery', 48000, 'Nero', 20),
(25, 'Chrysler', 'Pacifica', 33000, 'Grigio', 21),
(26, 'Buick', 'Encore', 26000, 'Bianco', 22),
(27, 'Lincoln', 'Navigator', 60000, 'Nero', 23),
(28, 'GMC', 'Terrain', 29000, 'Rosso', 24),
(29, 'Acura', 'MDX', 36000, 'Blu', 25),
(37, 'Subaru', 'Outback', 31000, 'Grigio', 26),
(38, 'Subaru', 'Outback', 31000, 'Bianco', 27),
(39, 'Subaru', 'Outback', 31000, 'Blu', 28),
(40, 'Subaru', 'Outback', 31000, 'Nero', 29),
(41, 'Subaru', 'Outback', 31000, 'Rosso', 30),
(42, 'Subaru', 'Outback', 31000, 'Verde', 31),
(43, 'Subaru', 'Outback', 31000, 'Argento', 32),
(44, 'Chevrolet', 'Malibu', 28000, 'Nero', 33),
(45, 'Chevrolet', 'Malibu', 28000, 'Blu', 34),
(46, 'Chevrolet', 'Malibu', 28000, 'Rosso', 35),
(47, 'Chevrolet', 'Malibu', 28000, 'Argento', 36),
(48, 'Toyota', 'Corolla', 25000, 'Bianco', 37),
(49, 'Toyota', 'Corolla', 25000, 'Nero', 38);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `proprietari`
--
ALTER TABLE `proprietari`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `vendite_auto`
--
ALTER TABLE `vendite_auto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_proprietario` (`id_proprietario`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `proprietari`
--
ALTER TABLE `proprietari`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT per la tabella `vendite_auto`
--
ALTER TABLE `vendite_auto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `vendite_auto`
--
ALTER TABLE `vendite_auto`
  ADD CONSTRAINT `vendite_auto_ibfk_1` FOREIGN KEY (`id_proprietario`) REFERENCES `proprietari` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
