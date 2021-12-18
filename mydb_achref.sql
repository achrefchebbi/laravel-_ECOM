-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 13 déc. 2021 à 19:37
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mydb_achref`
--

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_tel` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adress` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `user_id`, `quantity`, `status`, `payment_method`, `payment_status`, `fullName`, `num_tel`, `adress`, `created_at`, `updated_at`) VALUES
(1, '3', '1', '2', 'pending', 'card', 'pending', 'fghh', '8828555', 'fghf', NULL, NULL),
(2, '6', '1', '5', 'pending', 'bank', 'pending', 'rtsfjuryj', '875858', 'yjggjgu', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery` varchar(2555) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `category`, `description`, `gallery`, `created_at`, `updated_at`) VALUES
(1, 'Huawei P30 Pro', 191, 'phone', 'Le Huawei P30 Pro est un smartphone haut de gamme annoncé par Huawei en mars 2019. Équipé d\'une puce Kirin 980, il dispose d\'un quadruple capteur photo compatible zoom 10x, d\'un SoC Kirin 980', 'https://c2.lestechnophiles.com/images.frandroid.com/wp-content/uploads/2019/04/huawei-p30-pro-2019-frandroid.png?resize=580,580', NULL, NULL),
(2, 'Huawei P30 Pro', 191, 'phone', 'Le Huawei P30 Pro est un smartphone haut de gamme annoncé par Huawei en mars 2019. Équipé d\'une puce Kirin 980, il dispose d\'un quadruple capteur photo compatible zoom 10x, d\'un SoC Kirin 980', 'https://c2.lestechnophiles.com/images.frandroid.com/wp-content/uploads/2019/04/huawei-p30-pro-2019-frandroid.png?resize=580,580', NULL, NULL),
(3, 'Huawei P20', 265, 'phone', 'Le Huawei P20 est le nouveau flagship de Huawei annoncé le 27 Mars 2018 à Paris. Il dispose d\'un SoC Kirin 970 et d\'un double capteur photo arrière de 12+20 mégapixels et d\'un écran borderles', 'https://c1.lestechnophiles.com/images.frandroid.com/wp-content/uploads/2019/04/huawei-p20.png?resize=580,580', NULL, NULL),
(4, 'Huawei P20', 342, 'phone', 'Le Mate 10 est un smartphone de Huawei qui sorti à la fin d\'année 2017. Il dispose d\'un SoC Kirin 970 épaulé par 6 Go de RAM, d\'un écran de 5,9 pouces borderless et d\'un double capteur photo ', 'https://c2.lestechnophiles.com/images.frandroid.com/wp-content/uploads/2019/04/huawei-mate-10-final.png?resize=580,580', NULL, NULL),
(5, 'Huawei P20', 265, 'phone', 'Le Huawei P20 est le nouveau flagship de Huawei annoncé le 27 Mars 2018 à Paris. Il dispose d\'un SoC Kirin 970 et d\'un double capteur photo arrière de 12+20 mégapixels et d\'un écran borderles', 'https://c1.lestechnophiles.com/images.frandroid.com/wp-content/uploads/2019/04/huawei-p20.png?resize=580,580', NULL, NULL),
(6, 'Huawei P20', 342, 'phone', 'Le Mate 10 est un smartphone de Huawei qui sorti à la fin d\'année 2017. Il dispose d\'un SoC Kirin 970 épaulé par 6 Go de RAM, d\'un écran de 5,9 pouces borderless et d\'un double capteur photo ', 'https://c2.lestechnophiles.com/images.frandroid.com/wp-content/uploads/2019/04/huawei-mate-10-final.png?resize=580,580', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$N93q28E2PgNkP.0IBK1oLumMQH9FtDeGJUtr/eh/RLeLFpxDNq9lO', '2021-12-13 16:47:23', '2021-12-13 16:47:23'),
(2, 'SOA', 'soa@gmail.com', '$2y$10$l8LEWgV9Zj71SilzIvCoDe3Z/wzkrScljwrvJpsZNoclx/BYXmlOa', '2021-12-13 16:47:59', '2021-12-13 16:47:59');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
