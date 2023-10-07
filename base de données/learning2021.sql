-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 17 déc. 2021 à 14:37
-- Version du serveur : 8.0.27
-- Version de PHP : 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `learning2021`
--
CREATE DATABASE IF NOT EXISTS `learning2021` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `learning2021`;

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `author_id` int NOT NULL,
  `course_id` int NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `rating` int NOT NULL,
  `comment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9474526CF675F31B` (`author_id`),
  KEY `IDX_9474526C591CC992` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=451 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id`, `author_id`, `course_id`, `created_at`, `rating`, `comment`, `title`, `is_published`) VALUES
(397, 646, 243, '2021-12-16 20:59:35', 4, 'Eveniet et eos rerum porro sit. Mollitia officiis sit incidunt deserunt doloremque adipisci quo numquam. Dolor est repudiandae rerum aut. In sed aperiam at.', 'similique id sed', 1),
(398, 640, 237, '2021-12-16 20:59:35', 2, 'Maiores beatae quae ducimus facilis accusantium. Voluptas saepe et ipsum minima labore velit. Et eum dolorem pariatur veniam.', 'temporibus ut corporis', 1),
(399, 676, 234, '2021-12-16 20:59:35', 2, 'Deserunt minus voluptatem quibusdam et facilis quidem. Doloremque quaerat voluptas qui aut. Dicta labore qui natus.', 'tempora ut quas', 1),
(400, 676, 230, '2021-12-16 20:59:35', 3, 'Ex dicta dicta aperiam in et. Ut quo nulla nobis nam. Dolores veritatis at quas error consequatur enim. Quisquam eum rerum voluptates unde laboriosam.', 'tempora omnis culpa', 1),
(402, 616, 249, '2021-12-16 20:59:35', 3, 'Odio voluptates velit est enim sit. Adipisci aspernatur ad in ab reiciendis culpa. Consequatur ipsam esse non nulla possimus ex ex.', 'dicta aut qui', 1),
(403, 666, 233, '2021-12-16 20:59:35', 2, 'Et et sit ut exercitationem dolor suscipit. Laboriosam modi qui vel iure culpa repellat. Ut est quo iste aliquam. Harum ad voluptatibus natus.', 'assumenda quis at', 1),
(404, 667, 253, '2021-12-16 20:59:35', 4, 'Dolores culpa quis beatae quia fugiat qui dignissimos. Voluptas et sit velit quod architecto.', 'corporis molestiae explicabo', 1),
(406, 655, 244, '2021-12-16 20:59:35', 3, 'Sed deleniti cupiditate dolore optio. Eligendi qui nam voluptatem soluta in iusto dolores. Quia magnam qui natus voluptatum architecto pariatur et. Et ratione neque officiis delectus adipisci laborum.', 'fuga dignissimos fuga', 1),
(407, 651, 244, '2021-12-16 20:59:35', 5, 'Consequatur suscipit non fugiat accusantium vel exercitationem impedit. Quia magni quia magnam rerum.', 'vitae labore doloremque', 0),
(409, 663, 230, '2021-12-16 20:59:35', 1, 'Iusto veritatis id sint sit illo ratione magnam ex. Quae officia quibusdam unde voluptatem et. In est nihil quam expedita animi eum.', 'sequi quia facilis', 1),
(410, 620, 242, '2021-12-16 20:59:35', 3, 'Quidem quam consequatur et vel nisi deserunt temporibus. Quia tempore veritatis dicta facere sed voluptatem.', 'nisi et voluptatem', 1),
(411, 630, 249, '2021-12-16 20:59:35', 4, 'Excepturi sed eius voluptas deserunt doloremque porro. Perferendis corporis quam odit praesentium. Consequatur est voluptate necessitatibus sunt quibusdam.', 'amet sunt necessitatibus', 1),
(412, 662, 252, '2021-12-16 20:59:35', 3, 'Impedit enim rerum enim aperiam minus amet earum. Occaecati vero aspernatur enim est qui porro. Non et deserunt quia fuga tempora quaerat.', 'aliquid autem omnis', 1),
(413, 678, 241, '2021-12-16 20:59:35', 1, 'Quam voluptatem fugit voluptatem pariatur ipsum laborum et. Dicta esse consequatur ut aut rerum sit.', 'eius deleniti vitae', 1),
(414, 668, 237, '2021-12-16 20:59:35', 2, 'Veritatis iusto perspiciatis voluptatem ab. Illo qui totam doloribus eum. Et ut omnis aliquid atque nihil sapiente nihil.', 'quis sequi et', 1),
(415, 658, 233, '2021-12-16 20:59:35', 4, 'Nesciunt aperiam unde eius. Voluptatem laudantium repudiandae autem iusto sequi iusto. Sunt omnis dolorum molestias in placeat qui aut.', 'accusantium quibusdam suscipit', 1),
(417, 636, 249, '2021-12-16 20:59:35', 3, 'Et hic odio consectetur nam. At fugiat magnam quisquam laboriosam sit repellendus inventore ea. Est ut animi rerum non modi. Suscipit quia vero ducimus et.', 'aspernatur est dicta', 1),
(418, 650, 247, '2021-12-16 20:59:35', 3, 'Minus beatae consectetur sunt impedit est. Neque sunt qui eligendi fuga sapiente perferendis. Et omnis ad tempora recusandae ut. Et omnis eos non est assumenda qui mollitia est. Voluptates voluptatem dignissimos rerum sint dolorem sint quisquam.', 'ducimus quis nam', 1),
(419, 616, 244, '2021-12-16 20:59:35', 2, 'Non saepe aliquam sed et corporis. Necessitatibus qui dolorum dolore aut.', 'occaecati consequuntur assumenda', 1),
(420, 669, 246, '2021-12-16 20:59:35', 3, 'Voluptatem et ut totam. Hic rerum vel aut enim consequatur. Harum nesciunt corrupti quas odio corrupti.', 'voluptas laudantium maxime', 0),
(421, 661, 247, '2021-12-16 20:59:35', 2, 'Et rem fugit consequuntur alias. Deleniti recusandae in perspiciatis eum ducimus. Culpa qui nulla reprehenderit enim. Eum mollitia qui perferendis ut et consequatur enim.', 'rerum architecto dolor', 1),
(422, 619, 238, '2021-12-16 20:59:35', 2, 'Sed accusantium et et hic omnis architecto consequatur. Sint voluptatem perspiciatis eligendi nulla eveniet aut eos. Eaque et sapiente odit dolorem pariatur voluptatem.', 'enim et magni', 1),
(423, 665, 251, '2021-12-16 20:59:35', 3, 'Ad ut ex et temporibus perferendis vel dolorem officiis. Rerum suscipit dignissimos ut dolores neque aspernatur. Qui laboriosam sapiente atque maxime non nulla. Quasi occaecati quis ut tenetur est et.', 'culpa eum dicta', 1),
(424, 676, 231, '2021-12-16 20:59:35', 1, 'Tenetur at voluptatem dolor nesciunt odio. Saepe pariatur magnam non ratione ut.', 'minima fugit suscipit', 1),
(425, 645, 249, '2021-12-16 20:59:35', 2, 'In quia autem odio doloremque voluptatem tenetur quia porro. Nihil et qui quia temporibus delectus debitis. Illo expedita facere dolor voluptatem architecto animi. Delectus impedit ut aspernatur quaerat vero quo eum.', 'blanditiis ut repellat', 1),
(427, 616, 237, '2021-12-16 20:59:35', 4, 'Eos soluta reprehenderit tenetur aliquam. Voluptatem id et saepe error. Repellendus aut omnis saepe non et. Ipsam aut laboriosam delectus quisquam sit hic.', 'dolor in itaque', 1),
(428, 619, 252, '2021-12-16 20:59:35', 2, 'Provident quae nihil autem repellat quae iure. Quia dolorem mollitia rerum tempore quidem eius. Qui explicabo dignissimos sint ut eaque ducimus dolor.', 'fuga ea enim', 1),
(429, 650, 238, '2021-12-16 20:59:35', 2, 'Atque atque quam ea incidunt eos. Iste ut aliquid deserunt totam id. Ratione nisi ut consequuntur non. Praesentium nihil porro tempore illo neque et molestias recusandae. Consequatur reiciendis ab maxime earum ratione molestiae.', 'consectetur dolores non', 1),
(430, 676, 244, '2021-12-16 20:59:35', 2, 'Rerum qui corporis aut. Nostrum deserunt est esse voluptas. Pariatur eaque pariatur unde perferendis nostrum non. Excepturi error omnis quibusdam quis dolore sunt.', 'dolorem qui dolor', 1),
(431, 652, 239, '2021-12-16 20:59:35', 2, 'Odit totam veritatis ipsum qui culpa. Repellendus rem at est ut quibusdam. Aut excepturi nostrum quis ea.', 'explicabo velit doloremque', 1),
(432, 624, 246, '2021-12-16 20:59:35', 4, 'Optio rem dolores aliquid quibusdam pariatur. Id corrupti at et qui cupiditate et. Qui vel aut suscipit dolores atque.', 'ratione rerum fuga', 1),
(434, 646, 245, '2021-12-16 20:59:35', 1, 'Sunt blanditiis blanditiis beatae consequatur consequatur. Corporis quis numquam aut labore sequi recusandae. Dolor est occaecati aut porro consequatur minima. Doloribus laborum occaecati eius assumenda.', 'nam earum officia', 1),
(435, 662, 235, '2021-12-16 20:59:35', 1, 'Dolores in explicabo eius ut. Voluptate molestiae est hic voluptates expedita.', 'aut atque et', 1),
(436, 652, 231, '2021-12-16 20:59:35', 5, 'Et quia quia sit est ipsum sequi aliquid. Et modi qui est officiis qui dolorum. Quo totam voluptates sed laudantium et.', 'officiis qui quasi', 1),
(446, 621, 236, '2021-12-17 14:08:38', 4, 'jtjgtj', 'Veronique', 1),
(447, 686, 247, '2021-12-17 14:10:18', 4, 'kuk', 'Frederic lucas', 1),
(449, 684, 230, '2021-12-17 14:27:28', 4, 'iykyu', 'Veronique', 1),
(450, 684, 255, '2021-12-17 14:28:55', 4, 'hjtjtjn', 'Veronique', 0);

-- --------------------------------------------------------

--
-- Structure de la table `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `level_id` int NOT NULL,
  `professeur_id` int NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` int NOT NULL,
  `price` double NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `is_published` tinyint(1) NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `schedule` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `program` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_169E6FB912469DE2` (`category_id`),
  KEY `IDX_169E6FB95FB14BA7` (`level_id`),
  KEY `IDX_169E6FB9BAB22EE9` (`professeur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `course`
--

INSERT INTO `course` (`id`, `category_id`, `level_id`, `professeur_id`, `name`, `small_description`, `full_description`, `duration`, `price`, `created_at`, `is_published`, `slug`, `image`, `schedule`, `program`) VALUES
(230, 66, 39, 148, 'Sed non', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla. Fusce dapibus dui sit amet aliquam sollicitudin. Phasellus scelerisque eu augue a volutpat. In condimentum lorem laoreet ligula finibus, sit amet elementum elit ornare. Sed ipsum eros, facilisis et est sit amet, tristique tempor enim. Quisque ut laoreet neque. Quisque nunc mi, molestie sed pharetra a, faucibus id velit.', 600, 300, '2021-12-17 14:26:46', 1, 'sed-non', '22-61bc9e26751b5015041427.jpg', 'Saturday', '3.pdf'),
(231, 67, 40, 149, 'Fuga est rerum.m', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.m', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla. Fusce dapibus dui sit amet aliquam sollicitudin. Phasellus scelerisque eu augue a volutpat. In condimentum lorem laoreet ligula finibus, sit amet elementum elit ornare. Sed ipsum eros, facilisis et est sit amet, tristique tempor enim. Quisque ut laoreet neque. Quisque nunc mi, molestie sed pharetra a, faucibus id velit.', 360, 80, '2021-12-17 09:50:56', 1, 'fuga-est-rerum-m', '7.jpg', 'Lundi matin', '9-61bc5d8093b95997239997.pdf'),
(233, 70, 37, 145, 'Temporibus facere qui.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla. Fusce dapibus dui sit amet aliquam sollicitudin. Phasellus scelerisque eu augue a volutpat. In condimentum lorem laoreet ligula finibus, sit amet elementum elit ornare. Sed ipsum eros, facilisis et est sit amet, tristique tempor enim. Quisque ut laoreet neque. Quisque nunc mi, molestie sed pharetra a, faucibus id velit.', 600, 150, '2021-12-16 20:59:35', 1, 'temporibus-facere-qui', '6.jpg', 'Tuesday', '6.pdf'),
(234, 70, 39, 145, 'Eaque accusantium doloremque.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla. Fusce dapibus dui sit amet aliquam sollicitudin. Phasellus scelerisque eu augue a volutpat. In condimentum lorem laoreet ligula finibus, sit amet elementum elit ornare. Sed ipsum eros, facilisis et est sit amet, tristique tempor enim. Quisque ut laoreet neque. Quisque nunc mi, molestie sed pharetra a, faucibus id velit.', 60, 120, '2021-12-16 20:59:35', 1, 'eaque-accusantium-doloremque', '7.jpg', 'Friday', '7.pdf'),
(235, 69, 38, 145, 'Quos non nulla.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla. Fusce dapibus dui sit amet aliquam sollicitudin. Phasellus scelerisque eu augue a volutpat. In condimentum lorem laoreet ligula finibus, sit amet elementum elit ornare. Sed ipsum eros, facilisis et est sit amet, tristique tempor enim. Quisque ut laoreet neque. Quisque nunc mi, molestie sed pharetra a, faucibus id velit.', 600, 80, '2021-12-16 20:59:35', 1, 'quos-non-nulla', '8.jpg', 'Wednesday', '8.pdf'),
(236, 64, 40, 146, 'Assumenda et.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla. Fusce dapibus dui sit amet aliquam sollicitudin. Phasellus scelerisque eu augue a volutpat. In condimentum lorem laoreet ligula finibus, sit amet elementum elit ornare. Sed ipsum eros, facilisis et est sit amet, tristique tempor enim. Quisque ut laoreet neque. Quisque nunc mi, molestie sed pharetra a, faucibus id velit.', 200, 200, '2021-12-16 20:59:35', 1, 'assumenda-et', '9.jpg', 'Thursday', '9.pdf'),
(237, 65, 37, 145, 'Inventore laudantium aspernatur.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla. Fusce dapibus dui sit amet aliquam sollicitudin. Phasellus scelerisque eu augue a volutpat. In condimentum lorem laoreet ligula finibus, sit amet elementum elit ornare. Sed ipsum eros, facilisis et est sit amet, tristique tempor enim. Quisque ut laoreet neque. Quisque nunc mi, molestie sed pharetra a, faucibus id velit.', 120, 150, '2021-12-16 20:59:35', 1, 'inventore-laudantium-aspernatur', '10.jpg', 'Tuesday', '10.pdf'),
(238, 68, 39, 145, 'Mollitia voluptatibus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla. Fusce dapibus dui sit amet aliquam sollicitudin. Phasellus scelerisque eu augue a volutpat. In condimentum lorem laoreet ligula finibus, sit amet elementum elit ornare. Sed ipsum eros, facilisis et est sit amet, tristique tempor enim. Quisque ut laoreet neque. Quisque nunc mi, molestie sed pharetra a, faucibus id velit.', 360, 120, '2021-12-16 20:59:35', 1, 'mollitia-voluptatibus', '11.jpg', 'Tuesday', '11.pdf'),
(239, 68, 38, 148, 'Rerum nemo consectetur.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla. Fusce dapibus dui sit amet aliquam sollicitudin. Phasellus scelerisque eu augue a volutpat. In condimentum lorem laoreet ligula finibus, sit amet elementum elit ornare. Sed ipsum eros, facilisis et est sit amet, tristique tempor enim. Quisque ut laoreet neque. Quisque nunc mi, molestie sed pharetra a, faucibus id velit.', 500, 300, '2021-12-16 20:59:35', 1, 'rerum-nemo-consectetur', '12.jpg', 'Sunday', '12.pdf'),
(240, 67, 37, 147, 'Illum rerum.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla. Fusce dapibus dui sit amet aliquam sollicitudin. Phasellus scelerisque eu augue a volutpat. In condimentum lorem laoreet ligula finibus, sit amet elementum elit ornare. Sed ipsum eros, facilisis et est sit amet, tristique tempor enim. Quisque ut laoreet neque. Quisque nunc mi, molestie sed pharetra a, faucibus id velit.', 180, 80, '2021-12-16 20:59:35', 1, 'illum-rerum', '13.jpg', 'Thursday', '13.pdf'),
(241, 70, 39, 147, 'Nihil fugit deserunt.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla. Fusce dapibus dui sit amet aliquam sollicitudin. Phasellus scelerisque eu augue a volutpat. In condimentum lorem laoreet ligula finibus, sit amet elementum elit ornare. Sed ipsum eros, facilisis et est sit amet, tristique tempor enim. Quisque ut laoreet neque. Quisque nunc mi, molestie sed pharetra a, faucibus id velit.', 180, 250, '2021-12-16 20:59:35', 1, 'nihil-fugit-deserunt', '14.jpg', 'Friday', '14.pdf'),
(242, 65, 38, 145, 'Aliquid facilis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla. Fusce dapibus dui sit amet aliquam sollicitudin. Phasellus scelerisque eu augue a volutpat. In condimentum lorem laoreet ligula finibus, sit amet elementum elit ornare. Sed ipsum eros, facilisis et est sit amet, tristique tempor enim. Quisque ut laoreet neque. Quisque nunc mi, molestie sed pharetra a, faucibus id velit.', 120, 250, '2021-12-16 20:59:35', 0, 'aliquid-facilis', '15.jpg', 'Friday', '15.pdf'),
(243, 67, 40, 145, 'Occaecati laudantium.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla. Fusce dapibus dui sit amet aliquam sollicitudin. Phasellus scelerisque eu augue a volutpat. In condimentum lorem laoreet ligula finibus, sit amet elementum elit ornare. Sed ipsum eros, facilisis et est sit amet, tristique tempor enim. Quisque ut laoreet neque. Quisque nunc mi, molestie sed pharetra a, faucibus id velit.', 120, 200, '2021-12-16 20:59:35', 1, 'occaecati-laudantium', '16.jpg', 'Friday', '16.pdf'),
(244, 68, 38, 146, 'Vero dolorum dolorem.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla. Fusce dapibus dui sit amet aliquam sollicitudin. Phasellus scelerisque eu augue a volutpat. In condimentum lorem laoreet ligula finibus, sit amet elementum elit ornare. Sed ipsum eros, facilisis et est sit amet, tristique tempor enim. Quisque ut laoreet neque. Quisque nunc mi, molestie sed pharetra a, faucibus id velit.', 180, 250, '2021-12-16 20:59:35', 1, 'vero-dolorum-dolorem', '17.jpg', 'Saturday', '17.pdf'),
(245, 70, 38, 147, 'Nobis vitae id.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla. Fusce dapibus dui sit amet aliquam sollicitudin. Phasellus scelerisque eu augue a volutpat. In condimentum lorem laoreet ligula finibus, sit amet elementum elit ornare. Sed ipsum eros, facilisis et est sit amet, tristique tempor enim. Quisque ut laoreet neque. Quisque nunc mi, molestie sed pharetra a, faucibus id velit.', 500, 200, '2021-12-16 20:59:35', 1, 'nobis-vitae-id', '18.jpg', 'Tuesday', '18.pdf'),
(246, 66, 40, 148, 'Officiis eos.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla. Fusce dapibus dui sit amet aliquam sollicitudin. Phasellus scelerisque eu augue a volutpat. In condimentum lorem laoreet ligula finibus, sit amet elementum elit ornare. Sed ipsum eros, facilisis et est sit amet, tristique tempor enim. Quisque ut laoreet neque. Quisque nunc mi, molestie sed pharetra a, faucibus id velit.', 180, 150, '2021-12-16 20:59:35', 1, 'officiis-eos', '19.jpg', 'Friday', '19.pdf'),
(247, 64, 37, 148, 'Praesentium ducimus est.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla. Fusce dapibus dui sit amet aliquam sollicitudin. Phasellus scelerisque eu augue a volutpat. In condimentum lorem laoreet ligula finibus, sit amet elementum elit ornare. Sed ipsum eros, facilisis et est sit amet, tristique tempor enim. Quisque ut laoreet neque. Quisque nunc mi, molestie sed pharetra a, faucibus id velit.', 600, 400, '2021-12-16 20:59:35', 1, 'praesentium-ducimus-est', '20.jpg', 'Tuesday', '20.pdf'),
(248, 68, 39, 147, 'Consequatur magnam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla. Fusce dapibus dui sit amet aliquam sollicitudin. Phasellus scelerisque eu augue a volutpat. In condimentum lorem laoreet ligula finibus, sit amet elementum elit ornare. Sed ipsum eros, facilisis et est sit amet, tristique tempor enim. Quisque ut laoreet neque. Quisque nunc mi, molestie sed pharetra a, faucibus id velit.', 500, 250, '2021-12-16 20:59:35', 0, 'consequatur-magnam', '21.jpg', 'Wednesday', '21.pdf'),
(249, 68, 39, 146, 'Iusto quam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla. Fusce dapibus dui sit amet aliquam sollicitudin. Phasellus scelerisque eu augue a volutpat. In condimentum lorem laoreet ligula finibus, sit amet elementum elit ornare. Sed ipsum eros, facilisis et est sit amet, tristique tempor enim. Quisque ut laoreet neque. Quisque nunc mi, molestie sed pharetra a, faucibus id velit.', 60, 250, '2021-12-16 20:59:35', 1, 'iusto-quam', '22.jpg', 'Sunday', '22.pdf'),
(250, 67, 40, 147, 'Omnis sit.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla. Fusce dapibus dui sit amet aliquam sollicitudin. Phasellus scelerisque eu augue a volutpat. In condimentum lorem laoreet ligula finibus, sit amet elementum elit ornare. Sed ipsum eros, facilisis et est sit amet, tristique tempor enim. Quisque ut laoreet neque. Quisque nunc mi, molestie sed pharetra a, faucibus id velit.', 600, 250, '2021-12-16 20:59:35', 1, 'omnis-sit', '23.jpg', 'Saturday', '23.pdf'),
(251, 70, 37, 145, 'Voluptas quisquam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla. Fusce dapibus dui sit amet aliquam sollicitudin. Phasellus scelerisque eu augue a volutpat. In condimentum lorem laoreet ligula finibus, sit amet elementum elit ornare. Sed ipsum eros, facilisis et est sit amet, tristique tempor enim. Quisque ut laoreet neque. Quisque nunc mi, molestie sed pharetra a, faucibus id velit.', 600, 250, '2021-12-16 20:59:35', 1, 'voluptas-quisquam', '24.jpg', 'Wednesday', '24.pdf'),
(252, 66, 40, 146, 'Ut cumque.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla. Fusce dapibus dui sit amet aliquam sollicitudin. Phasellus scelerisque eu augue a volutpat. In condimentum lorem laoreet ligula finibus, sit amet elementum elit ornare. Sed ipsum eros, facilisis et est sit amet, tristique tempor enim. Quisque ut laoreet neque. Quisque nunc mi, molestie sed pharetra a, faucibus id velit.', 120, 120, '2021-12-16 20:59:35', 1, 'ut-cumque', '25.jpg', 'Sunday', '25.pdf'),
(253, 65, 39, 146, 'In quis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla. Fusce dapibus dui sit amet aliquam sollicitudin. Phasellus scelerisque eu augue a volutpat. In condimentum lorem laoreet ligula finibus, sit amet elementum elit ornare. Sed ipsum eros, facilisis et est sit amet, tristique tempor enim. Quisque ut laoreet neque. Quisque nunc mi, molestie sed pharetra a, faucibus id velit.', 60, 250, '2021-12-16 20:59:35', 1, 'in-quis', '26.jpg', 'Friday', '26.pdf'),
(255, 68, 40, 146, 'potte', 'potte', 'potte', 140, 140, '2021-12-17 14:29:44', 1, 'potte', '17.jpg', 'Lundi soir', '8-61bc9ed8697f3425336249.pdf');

-- --------------------------------------------------------

--
-- Structure de la table `course_category`
--

DROP TABLE IF EXISTS `course_category`;
CREATE TABLE IF NOT EXISTS `course_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `course_category`
--

INSERT INTO `course_category` (`id`, `name`, `description`) VALUES
(64, 'Artisanat', 'Excepturi dicta eum laudantium dolores.'),
(65, 'Bien être', 'Explicabo iure id et porro non itaque qui aliquam.'),
(66, 'Webdeveloper', 'Expedita deserunt voluptate rerum repellat tempora similique.'),
(67, 'Langues', 'Qui ratione qui repellat omnis aut dignissimos.'),
(68, 'Technique', 'Id aliquam cupiditate ratione.'),
(69, 'Informatique', 'Enim laborum corrupti eveniet velit.'),
(70, 'Pédagogique', 'Vitae autem rerum nihil.');

-- --------------------------------------------------------

--
-- Structure de la table `course_level`
--

DROP TABLE IF EXISTS `course_level`;
CREATE TABLE IF NOT EXISTS `course_level` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prerequisite` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `course_level`
--

INSERT INTO `course_level` (`id`, `name`, `prerequisite`) VALUES
(37, 'Débutant', 'Certificat de base'),
(38, 'Confirmé', 'Connaissances de base'),
(39, 'Spécialisé', 'Connaissances avancées'),
(40, 'Expert', 'Pratique professionnelle et expertise');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20211215210939', '2021-12-15 21:09:47', 414);

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `author_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1DD39950F675F31B` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=571 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `news`
--

INSERT INTO `news` (`id`, `author_id`, `name`, `created_at`, `updated_at`, `content`, `image`, `is_published`, `slug`) VALUES
(484, 645, 'iusto itaque magnam', '2021-06-16 20:59:35', '2021-12-16 20:59:35', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', '01.png', 1, 'iusto-itaque-magnam'),
(525, 684, 'est mollitia quo', '2021-12-05 20:59:35', '2021-07-16 20:59:35', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', '016.png', 0, 'est-mollitia-quo'),
(526, 684, 'est mollitia quo', '2021-12-13 20:59:35', '2021-07-16 20:59:35', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', '017.png', 0, 'est-mollitia-quo'),
(527, 684, 'est mollitia quo', '2021-12-11 20:59:35', '2021-07-16 20:59:35', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', '018.png', 0, 'est-mollitia-quo'),
(556, 645, 'iusto itaque magnam', '2021-06-16 20:59:35', '2021-12-16 20:59:35', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', '02.png', 1, 'iusto-itaque-magnam'),
(557, 645, 'iusto itaque magnam', '2021-10-16 20:59:35', '2021-12-16 20:59:35', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', '03.png', 1, 'iusto-itaque-magnam'),
(558, 645, 'iusto itaque magnam', '2021-08-16 20:59:35', '2021-12-16 20:59:35', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', '04.png', 1, 'iusto-itaque-magnam'),
(559, 645, 'iusto itaque magnam', '2021-06-16 20:59:35', '2021-12-16 20:59:35', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', '05.png', 1, 'iusto-itaque-magnam'),
(560, 645, 'iusto itaque magnam', '2021-05-16 20:59:35', '2021-12-16 20:59:35', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', '06.png', 1, 'iusto-itaque-magnam'),
(561, 645, 'iusto itaque magnam', '2021-09-16 20:59:35', '2021-12-16 20:59:35', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', '07.png', 1, 'iusto-itaque-magnam'),
(562, 645, 'iusto itaque magnam', '2021-10-16 20:59:35', '2021-12-16 20:59:35', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', '08.png', 1, 'iusto-itaque-magnam'),
(563, 645, 'iusto itaque magnam', '2021-09-16 20:59:35', '2021-12-16 20:59:35', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', '09.png', 1, 'iusto-itaque-magnam'),
(564, 645, 'iusto itaque magnam', '2021-11-16 20:59:35', '2021-12-16 20:59:35', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', '010.png', 1, 'iusto-itaque-magnam'),
(565, 645, 'iusto itaque magnam', '2021-06-16 20:59:35', '2021-12-16 20:59:35', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', '011.png', 1, 'iusto-itaque-magnam'),
(566, 645, 'iusto itaque magnam', '2021-05-16 20:59:35', '2021-12-16 20:59:35', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', '012.png', 1, 'iusto-itaque-magnam'),
(567, 645, 'iusto itaque magnam', '2021-08-16 20:59:35', '2021-12-16 20:59:35', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', '013.png', 1, 'iusto-itaque-magnam'),
(568, 645, 'iusto itaque magnam', '2021-09-16 20:59:35', '2021-12-16 20:59:35', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', '014.png', 1, 'iusto-itaque-magnam'),
(569, 645, 'iusto itaque magnam', '2021-05-16 20:59:35', '2021-12-16 20:59:35', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', '015.png', 1, 'iusto-itaque-magnam'),
(570, 684, 'est mollitia quo', '2021-12-17 20:59:35', '2021-07-16 20:59:35', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.', '019.png', 0, 'est-mollitia-quo');

-- --------------------------------------------------------

--
-- Structure de la table `professeur`
--

DROP TABLE IF EXISTS `professeur`;
CREATE TABLE IF NOT EXISTS `professeur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `professeur`
--

INSERT INTO `professeur` (`id`, `first_name`, `last_name`, `image`) VALUES
(145, 'Zoé', 'Benoit', '010f.jpg'),
(146, 'Stéphane', 'Duhamel', '011m.jpg'),
(147, 'Clémence', 'Legros', '012f.jpg'),
(148, 'Thierry', 'Wagner', '013m.jpg'),
(149, 'Suzanne', 'Martineau', '014f.jpg'),
(150, 'Théodore', 'Noel', '015m.jpg'),
(151, 'Gilbert', 'Joseph', '016m.jpg'),
(152, 'Alphonse', 'Durand', '017m.jpg'),
(153, 'Odette', 'Dupuis', '018f.jpg'),
(154, 'Franck', 'Menard', '019m.jpg'),
(155, 'Louise', 'Lombard', '020f.jpg'),
(156, 'Olivier', 'Verdier', '021m.jpg'),
(157, 'Dominique', 'Lebreton', '022m.jpg'),
(158, 'Océane', 'Legros', '023f.jpg'),
(159, 'Isabelle', 'Lejeune', '024f.jpg'),
(160, 'Joséphine', 'Pereira', '025f.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `last_log_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `is_disabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=688 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `first_name`, `last_name`, `image`, `created_at`, `updated_at`, `last_log_at`, `is_disabled`) VALUES
(616, 'manon.francois@gmail.com', '[\"ROLE_USER\"]', '$2y$13$ImnZfTJJOBe4PnWD1uu6me0OzAwKjyqiOqv8JoKkNtSMaH8Qz0B2y', 'Manon', 'Francois', '010f.jpg', '2021-12-16 20:59:08', '2021-12-16 20:59:08', '2021-12-16 20:59:08', 1),
(617, 'suzanne.fleury@gmail.com', '[\"ROLE_USER\"]', '$2y$13$8LSO/03K7c3xYpBSOd7MiuGWwXIIEeFEWDYQiM4UU5qflpriTQcPu', 'Suzanne', 'Fleury', '011f.jpg', '2021-12-16 20:59:08', '2021-12-16 20:59:08', '2021-12-16 20:59:08', 0),
(618, 'charlotte.chartier@gmail.com', '[\"ROLE_USER\"]', '$2y$13$nEoGQTw.p/4qFlUOuQGheuoCmOiuHU9UM2qo0iFP2i6WZWg6NO6DC', 'Charlotte', 'Chartier', '012f.jpg', '2021-12-16 20:59:09', '2021-12-16 20:59:09', '2021-12-16 20:59:09', 0),
(619, 'aurelie.guichard@gmail.com', '[\"ROLE_USER\"]', '$2y$13$Bt94q2dcd4dSwXTyUnIwyuVYR1yHbO.HhlG10b/BUMngQe1nNriT2', 'Aurélie', 'Guichard', '013f.jpg', '2021-12-16 20:59:09', '2021-12-16 20:59:09', '2021-12-16 20:59:09', 0),
(620, 'celine.gosselin@gmail.com', '[\"ROLE_USER\"]', '$2y$13$IUBjEIc5dDZ1GiaKyyGeJ.i0LKnfKAu3tJgRblp/uv7JxwFKfwaY6', 'Céline', 'Gosselin', '014f.jpg', '2021-12-16 20:59:09', '2021-12-16 20:59:09', '2021-12-16 20:59:09', 0),
(621, 'emmanuel.raymond@gmail.com', '[\"ROLE_USER\"]', '$2y$13$Nc5dHCjw6y7D37VYpQgzhurKsLycLwB99FfEBAQglBr/MBGBASBbi', 'Emmanuel', 'Raymond', '023m-61bc99d76afe6581332010.jpg', '2021-12-17 14:08:23', '2021-12-17 14:08:23', '2021-12-17 14:08:23', 1),
(622, 'edith.charles@gmail.com', '[\"ROLE_USER\"]', '$2y$13$6V/V.E7Bj3jqvK70Tv.PxuJhEp7u02WKk9b6QoiPy0AcJ42lW3Xo6', 'Édith', 'Charles', '016f.jpg', '2021-12-16 20:59:10', '2021-12-16 20:59:10', '2021-12-16 20:59:10', 0),
(623, 'martin.descamps@gmail.com', '[\"ROLE_USER\"]', '$2y$13$ZavQ6XIpLudH8omrknWvteqAugnI5mtHkVhwQ0otWVeHSGfSxsHrS', 'Martin', 'Descamps', '017m.jpg', '2021-12-16 20:59:11', '2021-12-16 20:59:11', '2021-12-16 20:59:11', 0),
(624, 'gilbert.vasseur@gmail.com', '[\"ROLE_USER\"]', '$2y$13$97Q.WalIfQmY8xhQwBSVX.5Zo9wUbduE3jFCXxM12Wb0pNow9X0yC', 'Gilbert', 'Vasseur', '018m.jpg', '2021-12-16 20:59:11', '2021-12-16 20:59:11', '2021-12-16 20:59:11', 0),
(625, 'frederique.bouvet@gmail.com', '[\"ROLE_USER\"]', '$2y$13$qLkXD5ohzT8ydzi9URB9L.p/dJmstmydu97SYRZtfS3CRwZeEF4hS', 'Frédérique', 'Bouvet', '019f.jpg', '2021-12-16 20:59:11', '2021-12-16 20:59:11', '2021-12-16 20:59:11', 0),
(626, 'susan.bourdon@gmail.com', '[\"ROLE_USER\"]', '$2y$13$eBwjl2r2J1utKbnQi2EIz.UQoNvcdVVhxiY4mqs5d1GIaoKGhcL6C', 'Susan', 'Bourdon', '020f.jpg', '2021-12-16 20:59:12', '2021-12-16 20:59:12', '2021-12-16 20:59:12', 0),
(627, 'mathilde.germain@gmail.com', '[\"ROLE_USER\"]', '$2y$13$A/cRnK.Ef50w0gyuj0olyOlxwrYwGNOPFGt8oItbNaDR0tFyyMRBe', 'Mathilde', 'Germain', '021f.jpg', '2021-12-16 20:59:12', '2021-12-16 20:59:12', '2021-12-16 20:59:12', 0),
(628, 'corinne.adam@gmail.com', '[\"ROLE_USER\"]', '$2y$13$bZdg7PqBzy0wV9S2TAZ/9e2qb.D3.8VNMDMzIkVqFq/WBn27SW3CK', 'Corinne', 'Adam', '022f.jpg', '2021-12-17 09:44:04', '2021-12-17 09:44:04', '2021-12-17 09:44:04', 0),
(629, 'arthur.bertrand@gmail.com', '[\"ROLE_USER\"]', '$2y$13$aY3OXaicovkhef2OTL6Ereay/Uivayb6G/Lh80uVvlWrkh8ad7R/G', 'Arthur', 'Bertrand', '023m.jpg', '2021-12-16 20:59:13', '2021-12-16 20:59:13', '2021-12-16 20:59:13', 0),
(630, 'robert.bailly@gmail.com', '[\"ROLE_USER\"]', '$2y$13$3YBNHf2.4aKzOFR57j2mFuRKtmDPIhKZtaiEfd5cmWIm6no6pursW', 'Robert', 'Bailly', '024m.jpg', '2021-12-16 20:59:13', '2021-12-16 20:59:13', '2021-12-16 20:59:13', 0),
(631, 'bertrand.denis@gmail.com', '[\"ROLE_USER\"]', '$2y$13$BvbKbdxOQ7//sIRoIABzmelXP9R8/BaQqXk.yQYD4qy41l/t24hxG', 'Bertrand', 'Denis', '025m.jpg', '2021-12-16 20:59:14', '2021-12-16 20:59:14', '2021-12-16 20:59:14', 0),
(632, 'marguerite.neveu@gmail.com', '[\"ROLE_USER\"]', '$2y$13$Pq88M8kzyObqK5LXEpGSGe2H2Z7zvW5SPrPPC7qibglX1AgWPteXW', 'Marguerite', 'Neveu', '026f.jpg', '2021-12-16 20:59:14', '2021-12-16 20:59:14', '2021-12-16 20:59:14', 1),
(633, 'julie.duhamel@gmail.com', '[\"ROLE_USER\"]', '$2y$13$lAjsNgDyw.XJs1bT0XFjWurEzLAOiaU0fRLMLafb7OG0Mqod58tE.', 'Julie', 'Duhamel', '027f.jpg', '2021-12-16 20:59:15', '2021-12-16 20:59:15', '2021-12-16 20:59:15', 0),
(634, 'juliette.clerc@gmail.com', '[\"ROLE_USER\"]', '$2y$13$nxbjQ9SSH4vihmBssVmzL.D5XKFIe9.RyszlrGDLjcxQcrRlHUPtu', 'Juliette', 'Clerc', '028f.jpg', '2021-12-16 20:59:15', '2021-12-16 20:59:15', '2021-12-16 20:59:15', 0),
(635, 'guy.brun@gmail.com', '[\"ROLE_USER\"]', '$2y$13$miDqPWPP5ezr6qozopXusOYLFC..4KYx3j/Eio6w4M4QHfKghfjNa', 'Guy', 'Brun', '029m.jpg', '2021-12-16 20:59:15', '2021-12-16 20:59:15', '2021-12-16 20:59:15', 0),
(636, 'luc.pineau@gmail.com', '[\"ROLE_USER\"]', '$2y$13$paun.6EZGBw4QboxeU8oS.qhlHzwbfSIOPHyBzGEC6LPTe.iPDlnW', 'Luc', 'Pineau', '030m.jpg', '2021-12-16 20:59:16', '2021-12-16 20:59:16', '2021-12-16 20:59:16', 0),
(637, 'sylvie.gomes@gmail.com', '[\"ROLE_USER\"]', '$2y$13$nuayx5bxJ2/mdiJKYj5p6e5Lv3HcSLLMSC2gozZL68M0eNkEyx3/y', 'Sylvie', 'Gomes', '031f.jpg', '2021-12-16 20:59:16', '2021-12-16 20:59:16', '2021-12-16 20:59:16', 0),
(638, 'alain.traore@gmail.com', '[\"ROLE_USER\"]', '$2y$13$0LFVtgQoTnD0UVdOmw.ZjOEPtPcVsEUfwt4nnHS.obqQHYdE8bsBa', 'Alain', 'Traore', '032m.jpg', '2021-12-16 20:59:16', '2021-12-16 20:59:16', '2021-12-16 20:59:16', 0),
(639, 'vincent.maillet@gmail.com', '[\"ROLE_USER\"]', '$2y$13$L6WJgkLqwqWoIpRHHgjZUuUqxVrINHeWDAHMDmE/H2AExpRfnoFNe', 'Vincent', 'Maillet', '033m.jpg', '2021-12-16 20:59:17', '2021-12-16 20:59:17', '2021-12-16 20:59:17', 0),
(640, 'antoine.pons@gmail.com', '[\"ROLE_USER\"]', '$2y$13$P1VKPyeSp3EmsQ1GWDRBe.ql5y/g7dFFhrzE78FRlxPHAmqvoXuMW', 'Antoine', 'Pons', '034m.jpg', '2021-12-16 20:59:17', '2021-12-16 20:59:17', '2021-12-16 20:59:17', 0),
(641, 'gilbert.leconte@gmail.com', '[\"ROLE_USER\"]', '$2y$13$6P43h7rrEARcdWwkP9NVouVVCJB8IYhz6PXMD1vLoBP8DlDV5wvvC', 'Gilbert', 'Leconte', '035m.jpg', '2021-12-16 20:59:18', '2021-12-16 20:59:18', '2021-12-16 20:59:18', 0),
(642, 'gilles.leconte@gmail.com', '[\"ROLE_USER\"]', '$2y$13$zxEPz7Q1oQgLu/5JBfpsp.bttqxi/ABk5e4YCsmRIXB9PTTbcXmU.', 'Gilles', 'Leconte', '036m.jpg', '2021-12-16 20:59:18', '2021-12-16 20:59:18', '2021-12-16 20:59:18', 0),
(643, 'brigitte.samson@gmail.com', '[\"ROLE_USER\"]', '$2y$13$JAvQTPYocrbOtKJnn9/lCuW.kkavorzOD9k0LHOdr4BQ1/SZcpei2', 'Brigitte', 'Samson', '037f.jpg', '2021-12-16 20:59:18', '2021-12-16 20:59:18', '2021-12-16 20:59:18', 0),
(644, 'maggie.blin@gmail.com', '[\"ROLE_USER\"]', '$2y$13$5ilgblBQoh2eHH8JJQGZeeiKkM9A5uFA5Gim5x5/HUsTUvbVuVaNO', 'Maggie', 'Blin', '038f.jpg', '2021-12-16 20:59:19', '2021-12-16 20:59:19', '2021-12-16 20:59:19', 0),
(645, 'thibaut.philippe@gmail.com', '[\"ROLE_USER\"]', '$2y$13$SK3a7Ocbq92Ov.t7tWCuNOpgmf0d.RKybsMiKUzDEpFFO7IYFk61K', 'Thibaut', 'Philippe', '039m.jpg', '2021-12-16 20:59:19', '2021-12-16 20:59:19', '2021-12-16 20:59:19', 0),
(646, 'margaux.thierry@gmail.com', '[\"ROLE_USER\"]', '$2y$13$zDKcECUIW9dPtbqNgHXy5uXHQ5amEDEAejutTMKY6cuzzhpAO9u.K', 'Margaux', 'Thierry', '040f.jpg', '2021-12-16 20:59:20', '2021-12-16 20:59:20', '2021-12-16 20:59:20', 0),
(647, 'antoinette.roy@gmail.com', '[\"ROLE_USER\"]', '$2y$13$536qzl/yvkiNsUU2vV8tbetkmf.EjTqauJ/PJ1TgTRuqL7ruq8Xuy', 'Antoinette', 'Roy', '041f.jpg', '2021-12-16 20:59:20', '2021-12-16 20:59:20', '2021-12-16 20:59:20', 0),
(648, 'jacques.monnier@gmail.com', '[\"ROLE_USER\"]', '$2y$13$wXWehdWJ6rmMB1NlqfGPEeX0uIHWR6pzh5l3h2fFlzT12U74gMkxS', 'Jacques', 'Monnier', '042m.jpg', '2021-12-16 20:59:20', '2021-12-16 20:59:20', '2021-12-16 20:59:20', 0),
(649, 'laurent.lebreton@gmail.com', '[\"ROLE_USER\"]', '$2y$13$nZ4TuqVOSujPqt7gNxsGGeHDOVc/jQf/Fbd/IQIF3atp5LkhXuqyu', 'Laurent', 'Lebreton', '043m.jpg', '2021-12-16 20:59:21', '2021-12-16 20:59:21', '2021-12-16 20:59:21', 0),
(650, 'daniel.levy@gmail.com', '[\"ROLE_USER\"]', '$2y$13$yzbLpGxJyldS761LbWIbvOoyovVRQc1ps0tXn8qSC3Trg5XTCcE8u', 'Daniel', 'Levy', '044m.jpg', '2021-12-16 20:59:21', '2021-12-16 20:59:21', '2021-12-16 20:59:21', 0),
(651, 'gabriel.legros@gmail.com', '[\"ROLE_USER\"]', '$2y$13$RUTIrDjKLoijVqGqIbtXb.gm5rpwtTmAWXK1X0GF1eFTgJy9PnSKe', 'Gabriel', 'Legros', '045m.jpg', '2021-12-16 20:59:22', '2021-12-16 20:59:22', '2021-12-16 20:59:22', 0),
(652, 'laurent.gilles@gmail.com', '[\"ROLE_USER\"]', '$2y$13$l9kZne6wzEFl7.igewCY/OXfrUTHt.iYlrynXNQ0jIaYO63nmW65C', 'Laurent', 'Gilles', '046m.jpg', '2021-12-16 20:59:22', '2021-12-16 20:59:22', '2021-12-16 20:59:22', 0),
(653, 'jacques.alexandre@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$7w6ARnYtD.mh96oiTpXRPOmxAfLELgNDzKgjRKgF6Y24OE7TCvWgu', 'Jacques', 'Alexandre', '047m.jpg', '2021-12-16 20:59:22', '2021-12-16 20:59:22', '2021-12-16 20:59:22', 0),
(654, 'elise.lacroix@gmail.com', '[\"ROLE_USER\"]', '$2y$13$fI8ylVuHt4TlHA79dyo1u.xvOKOwiWg3zplasB5aLZYbakfS5HtL2', 'Élise', 'Lacroix', '048f.jpg', '2021-12-16 20:59:23', '2021-12-16 20:59:23', '2021-12-16 20:59:23', 0),
(655, 'michelle.michel@gmail.com', '[\"ROLE_USER\"]', '$2y$13$K96DcuLpZYGqKwiC2WveOepp8VS6hb9w0BlU6jjq0AtIk3782/mIi', 'Michelle', 'Michel', '049f.jpg', '2021-12-16 20:59:23', '2021-12-16 20:59:23', '2021-12-16 20:59:23', 0),
(656, 'maurice.hernandez@gmail.com', '[\"ROLE_USER\"]', '$2y$13$FWLZkl8brLC3L3n3jpwO6OZaD0GYraR0YsBARBRbj4IvLSzYTlhDS', 'Maurice', 'Hernandez', '050m.jpg', '2021-12-16 20:59:24', '2021-12-16 20:59:24', '2021-12-16 20:59:24', 0),
(657, 'patrick.le-roux@gmail.com', '[\"ROLE_USER\"]', '$2y$13$efzYdYCCnAm46njXIwOfVeR5m4lD.LAWMZusiDD5VRKppLhPZJOKi', 'Patrick', 'Le Roux', '051m.jpg', '2021-12-16 20:59:24', '2021-12-16 20:59:24', '2021-12-16 20:59:24', 0),
(658, 'lucas.laroche@gmail.com', '[\"ROLE_USER\"]', '$2y$13$GbjzwRf5BqOwGfaj7VZSfOrS4po7Hxc75LZAl3umA85oIDTYAy7ce', 'Lucas', 'Laroche', '052m.jpg', '2021-12-16 20:59:24', '2021-12-16 20:59:24', '2021-12-16 20:59:24', 0),
(659, 'celine.renard@gmail.com', '[\"ROLE_USER\"]', '$2y$13$cjHVOAeP19BZR3UtsXRDx.9fIfETvfPMpBvVKPlzShxHdpshPviZq', 'Céline', 'Renard', '053f.jpg', '2021-12-16 20:59:25', '2021-12-16 20:59:25', '2021-12-16 20:59:25', 0),
(660, 'martin.mace@gmail.com', '[\"ROLE_USER\"]', '$2y$13$zKTZAcnujbIxo96.esJS6eSj/m/awnCrQp.sFTNd1ZOJ8h3lz7hLW', 'Martin', 'Mace', '054m.jpg', '2021-12-16 20:59:25', '2021-12-16 20:59:25', '2021-12-16 20:59:25', 0),
(661, 'lucas.roche@gmail.com', '[\"ROLE_USER\"]', '$2y$13$zSgy.gQK0FZUenA3wNGeV.bjz5cn88d410BBI6cQLf.9YON9Tmdy2', 'Lucas', 'Roche', '055m.jpg', '2021-12-16 20:59:26', '2021-12-16 20:59:26', '2021-12-16 20:59:26', 0),
(662, 'caroline.antoine@gmail.com', '[\"ROLE_USER\"]', '$2y$13$ku5W2Nwj6gKj9HaR4P0b0.OIMEJwJ9VVLNydSkeGR/j0GdbPjhsh6', 'Caroline', 'Antoine', '056f.jpg', '2021-12-16 20:59:26', '2021-12-16 20:59:26', '2021-12-16 20:59:26', 1),
(663, 'pierre.guilbert@gmail.com', '[\"ROLE_USER\"]', '$2y$13$44DpQqTNO2n5yckjzrYbs.86WaGpyVkyHBCxR7TeHW5Ccgnx9r7/S', 'Pierre', 'Guilbert', '057m.jpg', '2021-12-16 20:59:26', '2021-12-16 20:59:26', '2021-12-16 20:59:26', 0),
(664, 'tristan.charrier@gmail.com', '[\"ROLE_USER\"]', '$2y$13$fSNk5sPxHRq4iT9AM0hNZulbWeIVB0S9Qvr2zXvAtBAjfRmDW1prK', 'Tristan', 'Charrier', '058m.jpg', '2021-12-16 20:59:27', '2021-12-16 20:59:27', '2021-12-16 20:59:27', 0),
(665, 'noel.dias@gmail.com', '[\"ROLE_USER\"]', '$2y$13$1tncR2kJNSpA3FMf0tAwdutut23m4Boc7TvwYQ3v.bYyBHnosga9i', 'Noël', 'Dias', '059m.jpg', '2021-12-16 20:59:27', '2021-12-16 20:59:27', '2021-12-16 20:59:27', 0),
(666, 'antoine.guillon@gmail.com', '[\"ROLE_USER\"]', '$2y$13$9wmQVSGtMwAMPvH07ryFz.ahaqQfqj2ZisIYYWF0697HTpaq87BQ6', 'Antoine', 'Guillon', '060m.jpg', '2021-12-16 20:59:28', '2021-12-16 20:59:28', '2021-12-16 20:59:28', 0),
(667, 'michelle.legendre@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$zdp7d7FzXNgWDOvc1weJgeinqdv2XosB9vvenIYiM6eAeOlxtObba', 'Michelle', 'Legendre', '010f.jpg', '2021-12-16 20:59:28', '2021-12-16 20:59:28', '2021-12-16 20:59:28', 1),
(668, 'michele.de-oliveira@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$8yhcKuOkgbjxFKpdiZkfpOF1gzdzjh6b.WasnvVQpiVzySA64sBOe', 'Michèle', 'De Oliveira', '011f.jpg', '2021-12-16 20:59:28', '2021-12-16 20:59:28', '2021-12-16 20:59:28', 1),
(669, 'laurent.techer@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$xPiBbrUYmTsjKragjk/y4eHd6xic4xsuk5ccWBFSQcMOnHMPGBIf6', 'Laurent', 'Techer', '012m.jpg', '2021-12-16 20:59:29', '2021-12-16 20:59:29', '2021-12-16 20:59:29', 0),
(670, 'margaud.delattre@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$BSadNbtNAS0Z/rXb1l4sA.WFOPTVn4PHMbzOTlwNpVc0VTbhL9D.6', 'Margaud', 'Delattre', '013f.jpg', '2021-12-16 20:59:29', '2021-12-16 20:59:29', '2021-12-16 20:59:29', 0),
(671, 'pauline.lemaitre@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$Tp.rSm21sjGwoJdtLm7jm.bMgstlv.rENRVJu0/w1E3ouB6oPYAmG', 'Pauline', 'Lemaitre', '014f.jpg', '2021-12-16 20:59:30', '2021-12-16 20:59:30', '2021-12-16 20:59:30', 0),
(672, 'nath.tessier@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$m3tPkMozk92QltuHgzz7V.9NjLCGCptABszWAadTO19Q83Fd00Opi', 'Nath', 'Tessier', '015f.jpg', '2021-12-16 20:59:30', '2021-12-16 20:59:30', '2021-12-16 20:59:30', 0),
(673, 'noemi.mace@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$8mJe2GYZTSBhyLXNeH7Zm.Ok058cRb52dNQmO9TrBaoyzJMSpJv.i', 'Noémi', 'Mace', '016f.jpg', '2021-12-16 20:59:30', '2021-12-16 20:59:30', '2021-12-16 20:59:30', 0),
(674, 'adrienne.rousset@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$UbWvxdOz0UGC02qHLhk/eeKMzg./bzj9Q6gaYw91Hvs9OPGbaCmHy', 'Adrienne', 'Rousset', '017f.jpg', '2021-12-16 20:59:31', '2021-12-16 20:59:31', '2021-12-16 20:59:31', 0),
(675, 'philippine.humbert@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$KRaP7jyVyo9YwrJRwt.IF.yTeBaVyMOBHUbJSwxdgCFOvWil53T9u', 'Philippine', 'Humbert', '018f.jpg', '2021-12-16 20:59:31', '2021-12-16 20:59:31', '2021-12-16 20:59:31', 0),
(676, 'paul.pages@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$zHoy0Ygh39LpFKJgPzQ8/.NY.sCN3lSRR4c9TBd7BlEgpvNuo19jy', 'Paul', 'Pages', '019m.jpg', '2021-12-16 20:59:32', '2021-12-16 20:59:32', '2021-12-16 20:59:32', 0),
(677, 'etienne.nicolas@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$VIZe0opMIWpo8MnC1ZpE4u133xcq9tPDtqxvJPlkvD6AodPeYCxOG', 'Étienne', 'Nicolas', '020m.jpg', '2021-12-16 20:59:32', '2021-12-16 20:59:32', '2021-12-16 20:59:32', 1),
(678, 'thibaut.legendre@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$tnmrQoM57Ue9Rex8.1oe.uZUqHtHJzRHgcplKG71efLxT/mpdHOvG', 'Thibaut', 'Legendre', '021m.jpg', '2021-12-16 20:59:32', '2021-12-16 20:59:32', '2021-12-16 20:59:32', 0),
(679, 'christine.maurice@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$EqWt9eTuQJKVcK.ueDhLYOWCoaO5e1nP5gp6ExQjapst2IyLIOQ1K', 'Christine', 'Maurice', '022f.jpg', '2021-12-16 20:59:33', '2021-12-16 20:59:33', '2021-12-16 20:59:33', 0),
(680, 'gabrielle.leclerc@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$mEppSFaH8G4ACjse7aDNBumIJMU27eiOOuXmeEh4rRTl5hgYf9ICy', 'Gabrielle', 'Leclerc', '023f.jpg', '2021-12-16 20:59:33', '2021-12-16 20:59:33', '2021-12-16 20:59:33', 0),
(681, 'marcel.baudry@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$Gjdf8KLUygATbYWpISudoOQHqESNPx7YS1ynT8Yi4ow4q0/l7Jl2C', 'Marcel', 'Baudry', '024m.jpg', '2021-12-16 20:59:34', '2021-12-16 20:59:34', '2021-12-16 20:59:34', 0),
(682, 'gilles.vallee@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$q.z4e6GbNvzFf5rD.tmJZe4CCfLE7Sz0T9DnUAKEpHVJiBnRrTBqe', 'Gilles', 'Vallee', '025m.jpg', '2021-12-16 20:59:34', '2021-12-16 20:59:34', '2021-12-16 20:59:34', 0),
(683, 'fred.louis@gmail.com', '[\"ROLE_SUPER_ADMIN\"]', '$2y$13$VGRijqE5rMpErUg0h3Vcju5i1FVeolW79ctG7UjiNHCZeZfP99pDe', 'Frederic', 'Louis', '071m.jpg', '2021-12-16 20:59:34', '2021-12-16 20:59:34', '2021-12-16 20:59:34', 0),
(684, 'bruno.louis@gmail.com', '[\"ROLE_SUPER_ADMIN\"]', '$2y$13$h7aE/qQOPaBNNxZerRQYW.Y2ZviK.SRz/E2ZVzcEs9kzLjccVK3qa', 'Bruno', 'Louis', '014m.jpg', '2021-12-17 14:03:20', '2021-12-17 14:03:20', '2021-12-17 14:03:20', 1),
(685, 'dsds@gmail.com', '[\"ROLE_USER\"]', '$2y$13$gw.wgIhyAVsNiJZfTZ6XmuKnXUQ9t08JLB4GggF11LMlqzbAb6ZwK', 'dds', 'dsds', '014m.jpg', '2021-12-17 09:43:42', '2021-12-17 09:43:42', '2021-12-17 09:43:42', 1),
(686, 'olivier.michel@gmail.com', '[\"ROLE_USER\"]', '$2y$13$uWrupfTAtpLOoPO/w8SI2uB7K/hbqZ114YgBj0qvv6tyAFNIk3Oby', 'Olivier', 'Michel', '014m.jpg', '2021-12-17 14:11:18', '2021-12-17 14:11:18', '2021-12-17 14:11:18', 1),
(687, 'pierre.sanchez@gmail.com', '[\"ROLE_USER\"]', '$2y$13$zpF5DrBW0pmvd9Nk62xFTedc6YOC45gv9DN7O.v7eCG0oaM3J7juu', 'Pierre', 'Sanchez', '016m-61bca004c0a06811071219.jpg', '2021-12-17 14:34:44', '2021-12-17 14:34:44', '2021-12-17 14:34:44', 1);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526C591CC992` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  ADD CONSTRAINT `FK_9474526CF675F31B` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `FK_169E6FB912469DE2` FOREIGN KEY (`category_id`) REFERENCES `course_category` (`id`),
  ADD CONSTRAINT `FK_169E6FB95FB14BA7` FOREIGN KEY (`level_id`) REFERENCES `course_level` (`id`),
  ADD CONSTRAINT `FK_169E6FB9BAB22EE9` FOREIGN KEY (`professeur_id`) REFERENCES `professeur` (`id`);

--
-- Contraintes pour la table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `FK_1DD39950F675F31B` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
