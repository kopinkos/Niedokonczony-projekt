-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 29 Lis 2023, 11:26
-- Wersja serwera: 10.4.22-MariaDB
-- Wersja PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `milfinder`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `budowa_konta`
--

CREATE TABLE `budowa_konta` (
  `ID_konta` int(11) NOT NULL,
  `Imie_usera` text COLLATE utf8mb4_polish_ci NOT NULL,
  `Data_ur` date NOT NULL,
  `Miejscowosc` text COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `Zainteresowania` text COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `Opis_siebie` text COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `Life_style` text COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `More_about_me` text COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `Wzrost(w cm)` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `logowanie_do_konta`
--

CREATE TABLE `logowanie_do_konta` (
  `ID_konta` int(11) NOT NULL,
  `E-mail` text COLLATE utf8mb4_polish_ci NOT NULL,
  `Haslo` text COLLATE utf8mb4_polish_ci NOT NULL,
  `Telefon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `logowanie_do_konta`
--

INSERT INTO `logowanie_do_konta` (`ID_konta`, `E-mail`, `Haslo`, `Telefon`) VALUES
(1, 'bartek.b0@o2.pl', 'inteligent', 569873123);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownik_rejestracja`
--

CREATE TABLE `uzytkownik_rejestracja` (
  `ID_usera` int(11) NOT NULL,
  `Imie_usera` text COLLATE utf8mb4_polish_ci NOT NULL,
  `Haslo` text COLLATE utf8mb4_polish_ci NOT NULL,
  `Miejscowosc` text COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `Telefon` int(11) NOT NULL,
  `Data_ur` date NOT NULL,
  `E-mail` text COLLATE utf8mb4_polish_ci NOT NULL,
  `Zdjecie_prof` blob NOT NULL,
  `Zainteresowania` text COLLATE utf8mb4_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `budowa_konta`
--
ALTER TABLE `budowa_konta`
  ADD PRIMARY KEY (`ID_konta`);

--
-- Indeksy dla tabeli `logowanie_do_konta`
--
ALTER TABLE `logowanie_do_konta`
  ADD PRIMARY KEY (`ID_konta`);

--
-- Indeksy dla tabeli `uzytkownik_rejestracja`
--
ALTER TABLE `uzytkownik_rejestracja`
  ADD PRIMARY KEY (`ID_usera`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `budowa_konta`
--
ALTER TABLE `budowa_konta`
  MODIFY `ID_konta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `logowanie_do_konta`
--
ALTER TABLE `logowanie_do_konta`
  MODIFY `ID_konta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `uzytkownik_rejestracja`
--
ALTER TABLE `uzytkownik_rejestracja`
  MODIFY `ID_usera` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
