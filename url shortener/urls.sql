-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 09 juin 2023 à 17:30
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `api`
--

-- --------------------------------------------------------

--
-- Structure de la table `urls`
--

CREATE TABLE `urls` (
  `id` int(11) NOT NULL,
  `long_url` varchar(300) NOT NULL,
  `short_url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `urls`
--

INSERT INTO `urls` (`id`, `long_url`, `short_url`) VALUES
(9, 'https://chat.openai.com/?model=text-davinci-002-render-sha', 'BxsytT'),
(10, 'https://chat.openai.com/?model=text-davinci-002-render-sha', 'DLRx8L'),
(11, 'https://chat.openai.com/?model=text-davinci-002-render-sha', 'dAr6jh'),
(12, 'https://chat.openai.com/?model=text-davinci-002-render-sha', 'wWFopR'),
(13, 'https://chat.openai.com/?model=text-davinci-002-render-sha', 'XLBV27'),
(14, 'https://chat.openai.com/?model=text-davinci-002-render-sha', 'AMvp4H'),
(15, 'https://chat.openai.com/?model=text-davinci-002-render-sha', 'DllcMk'),
(16, 'https://chat.openai.com/?model=text-davinci-002-render-sha', 'M6M0cC'),
(17, 'https://chat.openai.com/?model=text-davinci-002-render-sha', 'gHVeEV'),
(18, 'https://chat.openai.com/?model=text-davinci-002-render-sha', '1hWcrt'),
(19, 'https://chat.openai.com/?model=text-davinci-002-render-sha', '8pwtpP'),
(20, 'https://chat.openai.com/?model=text-davinci-002-render-sha', 'yU6KUj'),
(21, 'https://chat.openai.com/?model=text-davinci-002-render-sha', 'vF9jNN'),
(22, 'https://chat.openai.com/?model=text-davinci-002-render-sha', 'x5ABAe'),
(23, 'https://www.youtube.com/watch?v=ipVx7J5Wn9Q', 'gUMI5s');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `urls`
--
ALTER TABLE `urls`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `urls`
--
ALTER TABLE `urls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
