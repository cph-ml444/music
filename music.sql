-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Vært: 127.0.0.1
-- Genereringstid: 05. 01 2018 kl. 01:21:04
-- Serverversion: 10.1.26-MariaDB
-- PHP-version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `album`
--

CREATE TABLE `album` (
  `artists_ID` int(255) NOT NULL,
  `title` varchar(100) NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `album`
--

INSERT INTO `album` (`artists_ID`, `title`, `year`) VALUES
(1, 'The Last Temptation', 1994),
(1, 'Trash', 1989),
(2, 'Where Are You?', 1957);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `artists`
--

CREATE TABLE `artists` (
  `artists_ID` int(50) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `artists`
--

INSERT INTO `artists` (`artists_ID`, `name`) VALUES
(1, 'Alice Cooper'),
(2, 'Frank Sinatra'),
(3, 'Queen');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`title`);

--
-- Indeks for tabel `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`artists_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
