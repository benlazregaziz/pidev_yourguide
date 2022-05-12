-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 04, 2022 at 05:04 PM
-- Server version: 5.7.31
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pidevv`
--

-- --------------------------------------------------------

--
-- Table structure for table `activite`
--

DROP TABLE IF EXISTS `activite`;
CREATE TABLE IF NOT EXISTS `activite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeact_id` int(11) DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lieu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lattitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B875551555913043` (`typeact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activite`
--

INSERT INTO `activite` (`id`, `typeact_id`, `nom`, `lieu`, `description`, `image`, `longitude`, `lattitude`) VALUES
(2, 3, 'camping', 'bizerte', 'kedkddkdkdlpdpodd', '48714a2aa155dceb02cb76da9fe7665b.jpg', '36.8189700    ', '10.1657900'),
(3, 2, 'aze', 'aze', 'eza', 'ea57e9cfccb5271bc973a93ffbb8145d.jpg', '9.322400', '33.584800');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `nom`) VALUES
(1, 'mug'),
(19, 'poo'),
(20, 'bbb'),
(25, 'csc'),
(26, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `codepromo`
--

DROP TABLE IF EXISTS `codepromo`;
CREATE TABLE IF NOT EXISTS `codepromo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_debut` date DEFAULT NULL,
  `date_fin` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `codepromo`
--

INSERT INTO `codepromo` (`id`, `code`, `date_debut`, `date_fin`) VALUES
(1, '2020', '2022-02-08', '2022-02-25'),
(2, '1515', '2022-04-05', '2022-04-29'),
(3, 'hj', '2022-04-06', '2022-04-22');

-- --------------------------------------------------------

--
-- Table structure for table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rue` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `ville` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `etat` varchar(255) DEFAULT 'Non verifiée',
  `prix` int(11) NOT NULL DEFAULT '0',
  `idUser` int(11) NOT NULL,
  `timestamp` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idUser` (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commande`
--

INSERT INTO `commande` (`id`, `rue`, `code`, `ville`, `adresse`, `etat`, `prix`, `idUser`, `timestamp`) VALUES
(2, 'r', 'villeadre', 'post', 'adresse', 'Non verifiée	', 0, 1, '1651668524286'),
(4, 'rue', 'ville', 'code', 'adresse', 'Non verifiée	', 0, 1, '1651670368271'),
(5, 'rue', 'ville', 'code', 'adresse', 'Non verifiée', 1500, 1, '1651676243501'),
(6, 'rue', 'ville1', 'code1', 'adresse', 'Non verifiée', 1500, 1, '1651676371535'),
(7, 'rrr', 'aa', 'e', 'aa', 'Non verifiée', 1500, 1, '1651682130819');

-- --------------------------------------------------------

--
-- Table structure for table `commande_produit`
--

DROP TABLE IF EXISTS `commande_produit`;
CREATE TABLE IF NOT EXISTS `commande_produit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idCommande` int(11) NOT NULL,
  `idProduit` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkCommande` (`idCommande`),
  KEY `fk` (`idProduit`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commande_produit`
--

INSERT INTO `commande_produit` (`id`, `idCommande`, `idProduit`) VALUES
(1, 4, 48),
(2, 4, 47),
(3, 4, 52),
(4, 4, 50),
(5, 4, 49),
(6, 4, 51),
(7, 5, 48),
(8, 5, 47),
(9, 5, 52),
(10, 5, 50),
(11, 5, 49),
(12, 5, 51),
(13, 6, 48),
(14, 6, 47),
(15, 6, 52),
(16, 6, 50),
(17, 6, 49),
(18, 6, 51),
(19, 7, 48),
(20, 7, 47),
(21, 7, 52),
(22, 7, 50),
(23, 7, 49),
(24, 7, 51);

-- --------------------------------------------------------

--
-- Table structure for table `commentaire`
--

DROP TABLE IF EXISTS `commentaire`;
CREATE TABLE IF NOT EXISTS `commentaire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description_commentaire` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_commentaire` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `commentaire`
--

INSERT INTO `commentaire` (`id`, `description_commentaire`, `date_commentaire`) VALUES
(1, 'fdsxx', '2022-04-01'),
(2, '', '2022-04-01'),
(4, '', '2022-04-01'),
(5, '', '2022-04-01'),
(6, '', '2022-04-02');

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220331215925', '2022-03-31 23:59:44', 834),
('DoctrineMigrations\\Version20220401105238', '2022-04-01 12:52:50', 378);

-- --------------------------------------------------------

--
-- Table structure for table `guide`
--

DROP TABLE IF EXISTS `guide`;
CREATE TABLE IF NOT EXISTS `guide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activite_id` int(11) DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CA9EC7359B0F88B1` (`activite_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guide`
--

INSERT INTO `guide` (`id`, `activite_id`, `nom`, `tel`, `image`) VALUES
(2, 2, 'aziz', 12345678, 'de458666927e69495cbf25f14cadc144.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `like`
--

DROP TABLE IF EXISTS `like`;
CREATE TABLE IF NOT EXISTS `like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commentaire_id` int(11) DEFAULT NULL,
  `nom_like` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` int(11) NOT NULL,
  `note` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_AC6340B3BA9CD190` (`commentaire_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `like`
--

INSERT INTO `like` (`id`, `commentaire_id`, `nom_like`, `rate`, `note`) VALUES
(1, 1, '8520', 6, 10),
(6, 1, 'nom', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `livraison`
--

DROP TABLE IF EXISTS `livraison`;
CREATE TABLE IF NOT EXISTS `livraison` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `panier_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `nom_livreur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom_livreur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel_livreur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse_livraison` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_A60C9F1FF77D927C` (`panier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `livraison`
--

INSERT INTO `livraison` (`id`, `panier_id`, `date`, `nom_livreur`, `prenom_livreur`, `tel_livreur`, `adresse_livraison`) VALUES
(2, 1, '2022-09-01', 'steve', 'steve', '588606', '1050za');

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `panier`
--

DROP TABLE IF EXISTS `panier`;
CREATE TABLE IF NOT EXISTS `panier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idProduit` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkProduit` (`idProduit`),
  KEY `fkUser` (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `panier`
--

INSERT INTO `panier` (`id`, `idProduit`, `idUser`) VALUES
(26, 48, 1),
(27, 47, 1),
(28, 52, 1),
(29, 50, 1),
(30, 49, 1),
(31, 51, 1);

-- --------------------------------------------------------

--
-- Table structure for table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_29A5EC2712469DE2` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produit`
--

INSERT INTO `produit` (`id`, `category_id`, `nom`, `description`, `prix`, `image`) VALUES
(41, NULL, 'hjkl', 'bjk', 74, 'Capture d’écran (3).png'),
(42, NULL, 'hjkl', '84', 74, 'Capture d’écran (3).png'),
(43, NULL, 'cghjk', 'ghj', 742, 'Capture d’écran (3).png'),
(45, NULL, 'hjk', 'je', 152, 'Capture d’écran (3).png'),
(47, NULL, 'hedi', 'azerazer', 250, 'image'),
(48, NULL, 'hedi', 'azerazer', 250, 'image'),
(49, NULL, 'hedi', 'azerazer', 250, 'image'),
(50, NULL, 'hedi', 'azerazer', 250, 'image'),
(51, NULL, 'hedi', 'azerazer', 250, 'image'),
(52, NULL, 'hedi', 'azerazer', 250, 'image'),
(53, NULL, 'hedi', 'azerazer', 250, 'image'),
(54, NULL, 'hedi', 'azerazer', 250, 'image'),
(55, NULL, 'hedi', 'azerazer', 250, 'image');

-- --------------------------------------------------------

--
-- Table structure for table `promo`
--

DROP TABLE IF EXISTS `promo`;
CREATE TABLE IF NOT EXISTS `promo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codepromo_id` int(11) DEFAULT NULL,
  `pourcentage` double DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B0139AFB9C2FDF1E` (`codepromo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promo`
--

INSERT INTO `promo` (`id`, `codepromo_id`, `pourcentage`, `image`) VALUES
(1, 1, 52, 'dda99c62efe681bdcb56c4f027d4a5fe.jpg'),
(2, 2, 50, '56c4ac49524a9c8f92290f2204656f2d.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reclamation`
--

DROP TABLE IF EXISTS `reclamation`;
CREATE TABLE IF NOT EXISTS `reclamation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_reclamation` date NOT NULL,
  `type_reclamation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `etat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_reclamation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reclamation`
--

INSERT INTO `reclamation` (`id`, `date_reclamation`, `type_reclamation`, `etat`, `desc_reclamation`) VALUES
(1, '2022-04-01', '4', '85', 'jk'),
(2, '2022-04-01', '541', 'k', 'j'),
(3, '2022-05-02', 'dee', 'ezd', 'dez');

-- --------------------------------------------------------

--
-- Table structure for table `type_activite`
--

DROP TABLE IF EXISTS `type_activite`;
CREATE TABLE IF NOT EXISTS `type_activite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `type_activite`
--

INSERT INTO `type_activite` (`id`, `nom`) VALUES
(2, 'sport'),
(3, 'excursion'),
(4, 'musique');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mdp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649AA08CB10` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `login`, `roles`, `mdp`, `nom`, `image`) VALUES
(1, 'ahmed.lourimi@esprit.tn', 'ROLE_USER', '$2y$13$bmAdtWYuhGyyjfNdyla0GOE59YP0D8lMZuwPUnEQnHNZcNtkO/M06', 'hedi', '0b41578f2b57a5c1b80f0721746e2c1b.jpg'),
(2, 'mohamedhedi.ayari@esprit.tn', 'ROLE_USER', '$2y$13$zCN8UeAmWXZ9Qz6JDFXkfOg8Fll/2qq79PRIw5BMiEXeKhlX9XVMe', 'hedi', '9987d6201cbf15b9c1b9284272d59472.jpg'),
(3, 'a', 'ROLE_USER', '$2y$13$Ch8Poqv0MoqQJ1jEOoRnGeOpsQiFiE8d.YFn7QpXJw5nw5QqzZdpK', 'a', '598384a82b373bacda19e6217bd7b600.jpg'),
(4, 'mohamedsouhail.amri@esprit.tn', 'ROLE_USER', '$2y$13$UF3HoPtWKYP8WtrlVlHozuV1LQI.LgYvBCv09K0GhQ/YJIXb2ahP2', 'aa', '7011a8d50c5cb3c74574d376a548a53e.jpg');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activite`
--
ALTER TABLE `activite`
  ADD CONSTRAINT `FK_B875551555913043` FOREIGN KEY (`typeact_id`) REFERENCES `type_activite` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `idUser` FOREIGN KEY (`idUser`) REFERENCES `user` (`id`);

--
-- Constraints for table `commande_produit`
--
ALTER TABLE `commande_produit`
  ADD CONSTRAINT `fk` FOREIGN KEY (`idProduit`) REFERENCES `produit` (`id`),
  ADD CONSTRAINT `fkCommande` FOREIGN KEY (`idCommande`) REFERENCES `commande` (`id`);

--
-- Constraints for table `guide`
--
ALTER TABLE `guide`
  ADD CONSTRAINT `FK_CA9EC7359B0F88B1` FOREIGN KEY (`activite_id`) REFERENCES `activite` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `like`
--
ALTER TABLE `like`
  ADD CONSTRAINT `FK_AC6340B3BA9CD190` FOREIGN KEY (`commentaire_id`) REFERENCES `commentaire` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `panier`
--
ALTER TABLE `panier`
  ADD CONSTRAINT `fkProduit` FOREIGN KEY (`idProduit`) REFERENCES `produit` (`id`),
  ADD CONSTRAINT `fkUser` FOREIGN KEY (`idUser`) REFERENCES `user` (`id`);

--
-- Constraints for table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `FK_29A5EC2712469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `promo`
--
ALTER TABLE `promo`
  ADD CONSTRAINT `FK_B0139AFB9C2FDF1E` FOREIGN KEY (`codepromo_id`) REFERENCES `codepromo` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
