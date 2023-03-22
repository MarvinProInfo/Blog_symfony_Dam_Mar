-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 22 mars 2023 à 16:49
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blogsymfony`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `contenu` longtext NOT NULL,
  `date_de_creation` datetime NOT NULL,
  `date_de_modification` datetime DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `auteur_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `titre`, `contenu`, `date_de_creation`, `date_de_modification`, `image`, `auteur_id`) VALUES
(1, 'Test', 'test', '2023-03-20 16:50:16', '2023-03-20 16:51:20', 'Test641880f7eb505.webp', 1),
(2, 'Test 75', 'Test', '2023-03-21 16:10:58', '2023-03-21 16:52:48', NULL, 2),
(3, 'Les miserables', 'Test * 6', '2023-03-22 12:22:50', NULL, NULL, 1),
(4, 'DB', 'Dragon Ball (ドラゴンボール, Doragon Bōru?, litt. Dragon Ball) est un manga d\'Akira Toriyama librement inspiré de Sun Wukong, personnage d\'un roman chinois de la fin du xvie siècle, La Pérégrination vers l\'Ouest de Wu Cheng\'en. Il est prépublié dans le magazine Weekly Shōnen Jump du 20 novembre 1984 au 23 mai 1995 et édité par Shūeisha en 42 volumes reliés du 10 septembre 1985 au 4 août 1995. Glénat publie l\'édition française depuis février 1993.', '2023-03-22 13:53:09', NULL, 'DB641afa35bd824.jpg', 5);

-- --------------------------------------------------------

--
-- Structure de la table `article_categorie`
--

CREATE TABLE `article_categorie` (
  `article_id` int(11) NOT NULL,
  `categorie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article_categorie`
--

INSERT INTO `article_categorie` (`article_id`, `categorie_id`) VALUES
(3, 1),
(3, 4),
(4, 7);

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

CREATE TABLE `auteur` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `datede_naissance` date NOT NULL,
  `biographie` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `auteur`
--

INSERT INTO `auteur` (`id`, `nom`, `prenom`, `datede_naissance`, `biographie`) VALUES
(1, 'Hugo', 'Victor', '1802-02-26', 'Victor Hugo est un poète, dramaturge, écrivain, romancier et dessinateur romantique français, né le 26 février 1802 (7 ventôse an X) à Besançon et mort le 22 mai 1885 à Paris. Il est considéré comme l\'un des plus importants écrivains de la langue française. Il est aussi une personnalité politique et un intellectuel engagé qui a eu un rôle idéologique majeur et occupe une place marquante dans l\'histoire des lettres françaises au xixe siècle.'),
(2, 'de Balzac', 'Honoré', '1799-05-20', 'Honoré de Balzac, né Honoré Balzacn 1 le 20 mai 1799 (1er prairial an VII du calendrier républicain) à Tours et mort le 18 août 1850 à Paris, est un écrivain français. Romancier, dramaturge, critique littéraire, critique d\'art, essayiste, journaliste et imprimeur, il a laissé l\'une des plus imposantes œuvres romanesques de la littérature française, avec plus de quatre-vingt-dix romans et nouvelles parus de 1829 à 1855, réunis sous le titre de La Comédie humaine. À cela s\'ajoutent Les Cent Contes drolatiques, ainsi que des romans de jeunesse publiés sous des pseudonymes et quelque vingt-cinq œuvres ébauchées.'),
(3, 'Zola', 'Émile', '1840-04-02', 'Émile Zola est un écrivain et journaliste français, né le 2 avril 1840 à Paris et mort le 29 septembre 1902 dans la même ville. Considéré comme le chef de file du naturalisme, c\'est l\'un des romanciers français les plus populaires2, les plus publiés, traduits et commentés dans le monde entier. Il a durablement marqué de son empreinte le monde littéraire français. Ses romans ont connu de très nombreuses adaptations au cinéma et à la télévisionN 1.'),
(5, 'Toriyama', 'Akira', '1955-04-22', 'Akira Toriyama (鳥山 明, Toriyama Akira?) est un auteur de manga et character designer japonais né le 5 avril 1955 à Nagoya dans la préfecture d\'Aichi.\r\n\r\nSon œuvre la plus célèbre, Dragon Ball, connaît un très grand succès mondial. En 2007, les Japonais le classent troisième « meilleur manga de tous les temps » à l\'occasion du dixième anniversaire du Japan Media Arts Festival, derrière Slam Dunk et JoJo\'s Bizarre Adventure1.\r\n\r\nEn 1981, il remporte le prix Shogakukan Manga Award du meilleur manga shōnen avec Dr Slump, qui est vendu à plus de 35 millions d\'exemplaires au Japon. Il a été adapté en une série d\'anime à succès, avec un deuxième anime créé en 1997, 13 ans après la fin du manga. Sa série suivante, Dragon Ball, est devenu l\'un des mangas les plus populaires au monde. Après avoir été vendus entre 250 et 300 millions d\'exemplaires dans le monde entier, il s\'agit d\'un des mangas les plus vendus de tous les temps, considéré comme l\'une des principales raisons de la période où la circulation du manga était à son maximum entre le milieu des années 1980 et le milieu des années 1990. À l\'étranger, les adaptations en dessins animés ont eu plus de succès que le manga et ont contribué à renforcer la popularité de ces dessins dans le monde occidental.');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `nom`, `slug`) VALUES
(1, 'Roman', 'Roman'),
(2, 'Science-fiction', 'Science-fiction'),
(4, 'Histoire', 'Histoire'),
(5, 'Comedie', 'Comedie'),
(6, 'Fantastique', 'Fantastique'),
(7, 'Bande-dessiné', 'Bande-dessine');

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `id` int(11) NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `contenu` longtext NOT NULL,
  `date_de_creation` datetime NOT NULL,
  `date_de_modification` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commentaire`
--

INSERT INTO `commentaire` (`id`, `article_id`, `contenu`, `date_de_creation`, `date_de_modification`) VALUES
(1, NULL, 'Test', '2023-03-22 16:40:42', NULL),
(2, NULL, 'Test', '2023-03-22 16:44:36', NULL),
(3, NULL, 'Test', '2023-03-22 16:44:57', NULL),
(4, NULL, 'Test', '2023-03-22 16:45:18', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230314131416', '2023-03-14 14:26:53', 6),
('DoctrineMigrations\\Version20230316091156', '2023-03-16 10:12:40', 30),
('DoctrineMigrations\\Version20230317091248', '2023-03-17 10:13:40', 38),
('DoctrineMigrations\\Version20230317103012', '2023-03-17 11:30:27', 20),
('DoctrineMigrations\\Version20230317140524', '2023-03-17 15:05:39', 8),
('DoctrineMigrations\\Version20230320152604', '2023-03-20 16:26:22', 53),
('DoctrineMigrations\\Version20230321111933', '2023-03-21 12:19:46', 80),
('DoctrineMigrations\\Version20230322111649', '2023-03-22 12:17:06', 38),
('DoctrineMigrations\\Version20230322112012', '2023-03-22 12:20:24', 53),
('DoctrineMigrations\\Version20230322135529', '2023-03-22 14:55:40', 40);

-- --------------------------------------------------------

--
-- Structure de la table `exo`
--

CREATE TABLE `exo` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `exo`
--

INSERT INTO `exo` (`id`, `nom`, `prenom`) VALUES
(1, 'SAINTE-ROSE', 'Marvin'),
(2, 'SAINTE-ROSE', 'Mirella'),
(3, 'Sletten', 'Debra J.');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_23A0E6660BB6FE6` (`auteur_id`);

--
-- Index pour la table `article_categorie`
--
ALTER TABLE `article_categorie`
  ADD PRIMARY KEY (`article_id`,`categorie_id`),
  ADD KEY `IDX_934886107294869C` (`article_id`),
  ADD KEY `IDX_93488610BCF5E72D` (`categorie_id`);

--
-- Index pour la table `auteur`
--
ALTER TABLE `auteur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_67F068BC7294869C` (`article_id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `exo`
--
ALTER TABLE `exo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `auteur`
--
ALTER TABLE `auteur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `exo`
--
ALTER TABLE `exo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E6660BB6FE6` FOREIGN KEY (`auteur_id`) REFERENCES `auteur` (`id`);

--
-- Contraintes pour la table `article_categorie`
--
ALTER TABLE `article_categorie`
  ADD CONSTRAINT `FK_934886107294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_93488610BCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `FK_67F068BC7294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
