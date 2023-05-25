-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 23 mars 2023 à 10:52
-- Version du serveur : 8.0.27
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `belle_table`
--

-- --------------------------------------------------------

--
-- Structure de la table `candidature`
--

DROP TABLE IF EXISTS `candidature`;
CREATE TABLE IF NOT EXISTS `candidature` (
  `idc` int NOT NULL AUTO_INCREMENT,
  `idu` int NOT NULL,
  `ido` int NOT NULL,
  `date` datetime NOT NULL,
  `noteQcm` int DEFAULT NULL,
  PRIMARY KEY (`idc`),
  KEY `idu` (`idu`),
  KEY `ido` (`ido`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `offre_emploi`
--

DROP TABLE IF EXISTS `offre_emploi`;
CREATE TABLE IF NOT EXISTS `offre_emploi` (
  `ido` int NOT NULL AUTO_INCREMENT,
  `libellee` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `salaire` int NOT NULL,
  `contrat` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ido`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

DROP TABLE IF EXISTS `question`;
CREATE TABLE IF NOT EXISTS `question` (
  `idq` int NOT NULL AUTO_INCREMENT,
  `ido` int NOT NULL,
  `libelleeq` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idq`),
  KEY `ido` (`ido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reponse`
--

DROP TABLE IF EXISTS `reponse`;
CREATE TABLE IF NOT EXISTS `reponse` (
  `idr` int NOT NULL AUTO_INCREMENT,
  `idq` int NOT NULL,
  `ido` int NOT NULL,
  `libelleer` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `verite` tinyint(1) NOT NULL,
  PRIMARY KEY (`idr`),
  KEY `idq` (`idq`),
  KEY `ido` (`ido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `idu` int NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `nom` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `prenom` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `mail` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mdp` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `niveau` int NOT NULL,
  PRIMARY KEY (`idu`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`idu`, `pseudo`, `nom`, `prenom`, `mail`, `mdp`, `niveau`) VALUES
(7, 'admin', 'admin', 'admin', 'admin.site@belle-table.fr', '8C6976E5B5410415BDE908BD4DEE15DFB167A9C873FC4BB8A81F6F2AB448A918', 2),
(8, 'Dark89', 'MOULE', 'Etienne', 'etienne.moule@gmail.com', 'etienne', 1),
(9, 'Do', 'Nagui', 'Dorcas', 'dorcas.nagui', 'lala2022', 1),
(10, 'Jr242', 'Sambo', 'Danijr', 'sqdsqdsqd@dsfsd.cqsc', '4321', 1),
(11, 'test', 'test', 'test', 'test@gmail.com', 'test', 1),
(12, 'test2', 'test2', 'test', 'test', 'test', 1),
(15, 'test3', 'test3', 'test3', 'test3@gmail.com', 'fd61a03af4f77d870fc21e05e7e80678095c92d808cfb3b5c279ee04c74aca13', 1);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `candidature`
--
ALTER TABLE `candidature`
  ADD CONSTRAINT `candidature_ibfk_1` FOREIGN KEY (`ido`) REFERENCES `offre_emploi` (`ido`),
  ADD CONSTRAINT `candidature_ibfk_2` FOREIGN KEY (`idu`) REFERENCES `users` (`idu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
