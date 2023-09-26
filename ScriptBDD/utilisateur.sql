-- phpMyAdmin SQL Dump
-- version 5.1.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 14 fév. 2023 à 21:16
-- Version du serveur : 10.5.15-MariaDB-0+deb11u1
-- Version de PHP : 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `login` varchar(32) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `nom` varchar(32) NOT NULL,
  `prenom` varchar(32) NOT NULL,
  `adresseMail` varchar(100) NOT NULL,
  `confirmeKey` varchar(255) NOT NULL,
  `confirmer` int(1) NOT NULL,
  `adresseClient` varchar(32) NOT NULL,
  `statusClient` varchar(32) NOT NULL,
  `soldeClient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `login`, `password`, `nom`, `prenom`, `adresseMail`, `confirmeKey`, `confirmer`, `adresseClient`, `statusClient`, `soldeClient`) VALUES
(914, 'gaetang', '$2y$10$9g/LcYkbiaQxt.EpGPDsr.pykz1JaUynr1aZPj5iVVGf572rm8jzq', 'Gonfiantini', 'Gaetan', 'gaetan.gonfiantini@yopmail.com', '77707422788435', 1, 'Montpellier', 'fondateur', 98474),
(917, 'quentinb', '$2y$10$rvjK1JhDtzwnMe1p6sdH2.rJWMrrq37FxFi/9GZZ9VQBhuW2mXQoC', 'Beral', 'Quentin', 'quentin.beral@yopmail.com', '24834722912757', 1, 'Montpellier', 'fondateur', 87),
(926, 'frachea', '$2y$10$V3f.PF3pczkBywQngDF.b.sRMmZFhWCpPjmJ06WQu9Z9zEkTrPftq', 'Frache ', 'Axel', 'axel.frache@yopmail.com', '77077006996487', 1, 'Montpellier', 'fondateur', 83),

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=931;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
