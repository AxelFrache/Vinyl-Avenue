SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- Structure de la table `imagessite`
CREATE TABLE `imagessite` (
                              `id` int(10) NOT NULL,
                              `nom` varchar(100) NOT NULL,
                              `taille` int(11) NOT NULL,
                              `typeImage` varchar(20) NOT NULL,
                              `bin` longblob NOT NULL,
                              PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Structure de la table `produits`
CREATE TABLE `produits` (
                            `idProduit` int(10) NOT NULL AUTO_INCREMENT,
                            `nomProduit` varchar(50) NOT NULL,
                            `prixProduit` int(10) NOT NULL,
                            `descriptionProduit` varchar(1000) NOT NULL,
                            `idImageProduit` int(10) NOT NULL,
                            `stockProduit` int(10) NOT NULL,
                            PRIMARY KEY (`idProduit`),
                            KEY `idImageProduit` (`idImageProduit`),
                            CONSTRAINT `produits_ibfk_1` FOREIGN KEY (`idImageProduit`) REFERENCES `imagessite` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Structure de la table `utilisateur`
CREATE TABLE `utilisateur` (
                               `id` int(11) NOT NULL AUTO_INCREMENT,
                               `login` varchar(32) NOT NULL,
                               `password` varchar(1000) NOT NULL,
                               `nom` varchar(32) NOT NULL,
                               `prenom` varchar(32) NOT NULL,
                               `adresseMail` varchar(100) NOT NULL,
                               `confirmeKey` varchar(255) NOT NULL,
                               `confirmer` int(1) NOT NULL,
                               `adresseClient` varchar(32) NOT NULL,
                               `statusClient` varchar(32) NOT NULL,
                               `soldeClient` int(11) NOT NULL,
                               PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Structure de la table `amplis`
CREATE TABLE `amplis` (
                          `idProduitAmplis` int(10) NOT NULL AUTO_INCREMENT,
                          `puissanceAmplis` int(10) NOT NULL,
                          `sensibiliteAmplis` float NOT NULL,
                          `marqueAmplis` varchar(40) NOT NULL,
                          PRIMARY KEY (`idProduitAmplis`),
                          CONSTRAINT `amplis_ibfk_1` FOREIGN KEY (`idProduitAmplis`) REFERENCES `produits` (`idProduit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Structure de la table `enceinte`
CREATE TABLE `enceinte` (
                            `idProduitEnceinte` int(10) NOT NULL,
                            `sensibiliteEnceinte` float NOT NULL,
                            `puissanceEnceinte` float NOT NULL,
                            `marqueEnceinte` varchar(100) NOT NULL,
                            KEY `idProduitEnceinte` (`idProduitEnceinte`),
                            CONSTRAINT `enceinte_ibfk_1` FOREIGN KEY (`idProduitEnceinte`) REFERENCES `produits` (`idProduit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Structure de la table `platine`
CREATE TABLE `platine` (
                           `idProduitPlatine` int(10) NOT NULL AUTO_INCREMENT,
                           `formatVinyle` int(10) NOT NULL,
                           `bluetooth` varchar(10) NOT NULL,
                           `marquePlatine` varchar(100) NOT NULL,
                           PRIMARY KEY (`idProduitPlatine`),
                           CONSTRAINT `platine_ibfk_1` FOREIGN KEY (`idProduitPlatine`) REFERENCES `produits` (`idProduit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Structure de la table `commandes`
CREATE TABLE `commandes` (
                             `idcommande` int(11) NOT NULL AUTO_INCREMENT,
                             `idclient` int(11) NOT NULL,
                             `datecommande` datetime NOT NULL DEFAULT current_timestamp(),
                             `infocommande` varchar(100) NOT NULL,
                             PRIMARY KEY (`idcommande`),
                             KEY `commandes_utilisateur_id_fk` (`idclient`),
                             CONSTRAINT `commandes_utilisateur_id_fk` FOREIGN KEY (`idclient`) REFERENCES `utilisateur` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Structure de la table `vinyle`
CREATE TABLE `vinyle` (
                          `idProduitVinyle` int(10) NOT NULL,
                          `tailleVinyle` int(10) NOT NULL,
                          `artisteVinyle` varchar(300) NOT NULL,
                          `genreVinyle` varchar(100) NOT NULL,
                          KEY `idProduitVinyle` (`idProduitVinyle`),
                          CONSTRAINT `vinyle_ibfk_1` FOREIGN KEY (`idProduitVinyle`) REFERENCES `produits` (`idProduit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
