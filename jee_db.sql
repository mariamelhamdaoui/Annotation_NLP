-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2025 at 10:47 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jee_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrateur`
--

CREATE TABLE `administrateur` (
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `administrateur`
--

INSERT INTO `administrateur` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `annotateur`
--

CREATE TABLE `annotateur` (
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `annotateur`
--

INSERT INTO `annotateur` (`id`) VALUES
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(11),
(12),
(13),
(14);

-- --------------------------------------------------------

--
-- Table structure for table `annotation`
--

CREATE TABLE `annotation` (
  `annotateur_id` bigint(20) NOT NULL,
  `couple_texte_id` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL,
  `classe` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `annotation`
--

INSERT INTO `annotation` (`annotateur_id`, `couple_texte_id`, `id`, `classe`) VALUES
(8, 217, 1, 'agree'),
(8, 164, 2, 'agree'),
(8, 183, 3, 'not sure'),
(8, 221, 4, 'not sure'),
(8, 224, 5, 'disagree'),
(8, 190, 6, 'disagree'),
(8, 245, 7, 'agree'),
(2, 556, 8, 'similar'),
(2, 554, 9, 'not similar'),
(2, 549, 10, 'similar'),
(2, 559, 11, 'not similar'),
(2, 564, 12, 'not similar'),
(5, 566, 13, 'similar'),
(5, 558, 14, 'not similar'),
(5, 550, 15, 'similar'),
(5, 567, 16, 'similar'),
(5, 568, 17, 'not similar'),
(6, 551, 18, 'similar'),
(6, 563, 19, 'not similar'),
(6, 561, 20, 'similar'),
(6, 553, 21, 'not similar'),
(6, 565, 22, 'not similar'),
(7, 562, 23, 'similar'),
(7, 560, 24, 'not similar'),
(7, 552, 25, 'similar'),
(7, 555, 26, 'not similar'),
(7, 557, 27, 'similar'),
(4, 574, 28, 'neutral'),
(4, 572, 29, 'contradiction'),
(4, 580, 30, 'entails'),
(9, 594, 31, 'not spam'),
(9, 593, 32, 'spam'),
(9, 590, 33, 'not spam');

-- --------------------------------------------------------

--
-- Table structure for table `classes_possibles`
--

CREATE TABLE `classes_possibles` (
  `dataset_id` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL,
  `texte_class` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classes_possibles`
--

INSERT INTO `classes_possibles` (`dataset_id`, `id`, `texte_class`) VALUES
(1, 1, 'positive'),
(1, 2, 'negative'),
(2, 3, 'entails'),
(2, 4, 'contradiction'),
(2, 5, 'neutral'),
(3, 6, 'spam'),
(3, 7, 'not spam'),
(4, 8, 'agree'),
(4, 9, 'disagree'),
(4, 10, 'not sure'),
(5, 11, 'related'),
(5, 12, 'unrelated'),
(6, 13, 'similar'),
(6, 14, 'not similar'),
(7, 15, 'entails'),
(7, 16, 'contradiction'),
(7, 17, 'neutral'),
(8, 18, 'spam'),
(8, 19, 'not spam');

-- --------------------------------------------------------

--
-- Table structure for table `couple_texte`
--

CREATE TABLE `couple_texte` (
  `dataset_id` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL,
  `text1` text NOT NULL,
  `text2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `couple_texte`
--

INSERT INTO `couple_texte` (`dataset_id`, `id`, `text1`, `text2`) VALUES
(2, 1, 'All dogs bark.', 'Some dogs bark.'),
(2, 2, 'She likes chocolate.', 'She is allergic to chocolate.'),
(2, 3, 'The book is on the table.', 'There is a book somewhere.'),
(2, 4, 'All dogs bark.', 'Some dogs bark.'),
(2, 5, 'She likes chocolate.', 'She is allergic to chocolate.'),
(2, 6, 'The book is on the table.', 'There is a book somewhere.'),
(2, 7, 'All dogs bark.', 'Some dogs bark.'),
(2, 8, 'She likes chocolate.', 'She is allergic to chocolate.'),
(2, 9, 'The book is on the table.', 'There is a book somewhere.'),
(2, 10, 'All dogs bark.', 'Some dogs bark.'),
(2, 11, 'She likes chocolate.', 'She is allergic to chocolate.'),
(2, 12, 'The book is on the table.', 'There is a book somewhere.'),
(2, 13, 'All dogs bark.', 'Some dogs bark.'),
(2, 14, 'She likes chocolate.', 'She is allergic to chocolate.'),
(2, 15, 'The book is on the table.', 'There is a book somewhere.'),
(2, 16, 'All dogs bark.', 'Some dogs bark.'),
(2, 17, 'She likes chocolate.', 'She is allergic to chocolate.'),
(2, 18, 'The book is on the table.', 'There is a book somewhere.'),
(2, 19, 'All dogs bark.', 'Some dogs bark.'),
(2, 20, 'She likes chocolate.', 'She is allergic to chocolate.'),
(2, 21, 'The book is on the table.', 'There is a book somewhere.'),
(2, 22, 'All dogs bark.', 'Some dogs bark.'),
(2, 23, 'She likes chocolate.', 'She is allergic to chocolate.'),
(2, 24, 'The book is on the table.', 'There is a book somewhere.'),
(2, 25, 'All dogs bark.', 'Some dogs bark.'),
(2, 26, 'She likes chocolate.', 'She is allergic to chocolate.'),
(2, 27, 'The book is on the table.', 'There is a book somewhere.'),
(2, 28, 'All dogs bark.', 'Some dogs bark.'),
(2, 29, 'She likes chocolate.', 'She is allergic to chocolate.'),
(2, 30, 'The book is on the table.', 'There is a book somewhere.'),
(2, 31, 'All dogs bark.', 'Some dogs bark.'),
(2, 32, 'She likes chocolate.', 'She is allergic to chocolate.'),
(2, 33, 'The book is on the table.', 'There is a book somewhere.'),
(2, 34, 'All dogs bark.', 'Some dogs bark.'),
(2, 35, 'She likes chocolate.', 'She is allergic to chocolate.'),
(2, 36, 'The book is on the table.', 'There is a book somewhere.'),
(2, 37, 'All dogs bark.', 'Some dogs bark.'),
(2, 38, 'She likes chocolate.', 'She is allergic to chocolate.'),
(2, 39, 'The book is on the table.', 'There is a book somewhere.'),
(2, 40, 'All dogs bark.', 'Some dogs bark.'),
(2, 41, 'She likes chocolate.', 'She is allergic to chocolate.'),
(2, 42, 'The book is on the table.', 'There is a book somewhere.'),
(2, 43, 'All dogs bark.', 'Some dogs bark.'),
(2, 44, 'She likes chocolate.', 'She is allergic to chocolate.'),
(2, 45, 'The book is on the table.', 'There is a book somewhere.'),
(2, 46, 'All dogs bark.', 'Some dogs bark.'),
(2, 47, 'She likes chocolate.', 'She is allergic to chocolate.'),
(2, 48, 'The book is on the table.', 'There is a book somewhere.'),
(3, 49, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 50, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 51, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 52, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 53, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 54, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 55, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 56, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 57, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 58, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 59, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 60, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 61, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 62, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 63, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 64, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 65, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 66, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 67, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 68, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 69, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 70, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 71, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 72, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 73, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 74, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 75, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 76, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 77, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 78, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 79, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 80, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 81, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 82, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 83, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 84, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 85, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 86, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 87, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 88, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 89, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 90, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 91, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 92, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 93, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 94, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 95, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 96, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 97, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 98, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 99, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 100, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 101, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 102, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 103, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 104, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 105, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 106, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 107, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 108, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 109, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 110, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 111, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 112, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 113, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 114, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 115, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 116, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 117, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 118, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 119, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 120, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 121, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 122, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 123, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 124, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 125, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 126, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 127, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 128, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 129, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 130, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 131, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 132, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 133, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 134, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 135, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 136, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 137, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 138, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 139, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 140, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 141, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 142, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 143, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 144, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 145, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 146, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(3, 147, 'Buy now and get 50% off!', 'Limited time offer.'),
(3, 148, 'Your meeting is at 10 AM tomorrow.', 'Please confirm attendance.'),
(4, 149, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 150, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 151, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 152, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 153, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 154, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 155, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 156, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 157, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 158, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 159, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 160, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 161, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 162, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 163, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 164, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 165, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 166, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 167, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 168, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 169, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 170, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 171, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 172, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 173, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 174, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 175, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 176, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 177, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 178, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 179, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 180, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 181, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 182, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 183, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 184, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 185, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 186, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 187, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 188, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 189, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 190, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 191, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 192, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 193, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 194, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 195, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 196, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 197, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 198, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 199, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 200, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 201, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 202, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 203, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 204, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 205, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 206, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 207, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 208, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 209, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 210, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 211, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 212, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 213, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 214, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 215, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 216, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 217, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 218, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 219, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 220, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 221, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 222, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 223, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 224, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 225, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 226, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 227, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 228, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 229, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 230, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 231, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 232, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 233, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 234, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 235, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 236, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 237, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 238, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 239, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 240, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 241, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 242, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 243, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 244, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 245, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 246, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 247, 'The earth is flat.', 'That\'s clearly incorrect.'),
(4, 248, 'The earth is flat.', 'That\'s clearly incorrect.'),
(5, 249, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 250, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 251, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 252, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 253, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 254, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 255, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 256, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 257, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 258, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 259, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 260, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 261, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 262, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 263, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 264, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 265, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 266, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 267, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 268, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 269, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 270, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 271, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 272, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 273, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 274, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 275, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 276, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 277, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 278, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 279, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 280, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 281, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 282, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 283, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 284, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 285, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 286, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 287, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 288, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 289, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 290, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 291, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 292, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 293, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 294, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 295, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 296, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 297, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 298, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 299, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 300, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 301, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 302, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 303, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 304, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 305, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 306, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 307, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 308, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 309, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 310, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 311, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 312, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 313, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 314, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 315, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 316, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 317, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 318, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 319, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 320, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 321, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 322, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 323, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 324, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 325, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 326, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 327, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 328, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 329, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 330, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 331, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 332, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 333, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 334, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 335, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 336, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 337, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 338, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 339, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 340, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 341, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 342, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 343, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 344, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 345, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 346, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 347, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 348, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 349, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 350, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 351, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 352, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 353, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 354, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 355, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 356, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 357, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 358, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 359, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 360, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 361, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 362, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 363, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 364, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 365, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 366, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 367, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 368, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 369, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 370, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 371, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 372, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 373, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 374, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 375, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 376, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 377, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 378, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 379, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 380, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 381, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 382, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 383, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 384, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 385, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 386, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 387, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 388, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 389, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 390, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 391, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 392, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 393, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 394, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 395, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 396, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 397, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 398, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 399, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 400, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 401, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 402, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 403, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 404, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 405, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 406, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 407, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 408, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 409, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 410, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 411, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 412, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 413, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 414, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 415, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 416, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 417, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 418, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 419, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 420, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 421, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 422, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 423, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 424, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 425, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 426, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 427, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 428, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 429, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 430, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 431, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 432, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 433, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 434, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 435, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 436, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 437, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 438, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 439, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 440, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 441, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 442, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 443, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 444, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 445, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 446, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 447, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 448, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 449, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 450, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 451, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 452, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 453, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 454, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 455, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 456, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 457, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 458, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 459, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 460, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 461, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 462, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 463, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 464, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 465, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 466, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 467, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 468, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 469, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 470, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 471, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 472, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 473, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 474, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 475, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 476, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 477, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 478, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 479, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 480, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 481, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 482, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 483, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 484, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 485, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 486, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 487, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 488, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 489, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 490, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 491, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 492, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 493, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 494, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 495, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 496, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 497, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 498, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 499, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 500, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 501, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 502, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 503, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 504, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 505, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 506, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 507, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 508, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 509, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 510, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 511, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 512, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 513, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 514, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 515, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 516, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 517, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 518, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 519, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 520, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 521, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 522, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 523, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 524, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 525, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 526, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 527, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 528, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 529, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 530, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 531, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 532, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 533, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 534, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 535, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 536, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 537, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 538, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 539, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 540, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 541, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 542, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 543, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 544, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 545, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 546, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(5, 547, 'The president gave a speech.', 'The stock market reacted positively.'),
(5, 548, 'Cats love to sleep.', 'The Eiffel Tower is in Paris.'),
(6, 549, 'An engineer paints nature.', 'A student teaches art.'),
(6, 550, 'A student supports science.', 'A scientist supports mathematics.'),
(6, 551, 'An engineer develops sports.', 'The government hates nature.'),
(6, 552, 'A scientist develops science.', 'The dog teaches nature.'),
(6, 553, 'The dog develops technology.', 'The teacher hates nature.'),
(6, 554, 'The teacher is studying sports.', 'A doctor discovers sports.'),
(6, 555, 'An engineer supports technology.', 'A student paints philosophy.'),
(6, 556, 'The government is studying science.', 'The teacher creates philosophy.'),
(6, 557, 'A student teaches technology.', 'An engineer paints history.'),
(6, 558, 'An engineer observes books.', 'A scientist develops mathematics.'),
(6, 559, 'The teacher is studying books.', 'The dog develops books.'),
(6, 560, 'The government is studying science.', 'The cat hates music.'),
(6, 561, 'The teacher supports books.', 'A student develops technology.'),
(6, 562, 'The cat creates books.', 'An engineer creates books.'),
(6, 563, 'The artist hates philosophy.', 'A doctor teaches books.'),
(6, 564, 'The government develops history.', 'A doctor is studying technology.'),
(6, 565, 'A doctor teaches books.', 'A student is studying art.'),
(6, 566, 'A doctor is studying books.', 'A scientist develops history.'),
(6, 567, 'A doctor likes mathematics.', 'A student supports music.'),
(6, 568, 'The cat likes science.', 'The artist teaches philosophy.'),
(7, 569, 'An engineer paints philosophy.', 'A doctor supports mathematics.'),
(7, 570, 'The dog creates history.', 'The teacher is studying music.'),
(7, 571, 'The cat develops science.', 'The cat discovers books.'),
(7, 572, 'A scientist creates history.', 'A student hates music.'),
(7, 573, 'A scientist discovers technology.', 'A student is studying science.'),
(7, 574, 'My friend likes music.', 'The artist teaches technology.'),
(7, 575, 'The artist teaches technology.', 'The dog hates sports.'),
(7, 576, 'The artist hates nature.', 'My friend paints art.'),
(7, 577, 'The dog discovers history.', 'A scientist supports books.'),
(7, 578, 'The government observes technology.', 'My friend hates technology.'),
(7, 579, 'The dog teaches philosophy.', 'A student paints art.'),
(7, 580, 'A student paints sports.', 'The artist likes art.'),
(7, 581, 'A student paints history.', 'A scientist paints mathematics.'),
(7, 582, 'The teacher discovers music.', 'The government develops history.'),
(7, 583, 'The cat creates sports.', 'The dog teaches philosophy.'),
(8, 584, 'An engineer paints philosophy.', 'A doctor supports mathematics.'),
(8, 585, 'The dog creates history.', 'The teacher is studying music.'),
(8, 586, 'The cat develops science.', 'The cat discovers books.'),
(8, 587, 'A scientist creates history.', 'A student hates music.'),
(8, 588, 'A scientist discovers technology.', 'A student is studying science.'),
(8, 589, 'My friend likes music.', 'The artist teaches technology.'),
(8, 590, 'The artist teaches technology.', 'The dog hates sports.'),
(8, 591, 'The artist hates nature.', 'My friend paints art.'),
(8, 592, 'The dog discovers history.', 'A scientist supports books.'),
(8, 593, 'The government observes technology.', 'My friend hates technology.'),
(8, 594, 'The dog teaches philosophy.', 'A student paints art.'),
(8, 595, 'A student paints sports.', 'The artist likes art.'),
(8, 596, 'A student paints history.', 'A scientist paints mathematics.'),
(8, 597, 'The teacher discovers music.', 'The government develops history.'),
(8, 598, 'The cat creates sports.', 'The dog teaches philosophy.');

-- --------------------------------------------------------

--
-- Table structure for table `dataset`
--

CREATE TABLE `dataset` (
  `avancement` double NOT NULL,
  `taille` int(11) NOT NULL,
  `id` bigint(20) NOT NULL,
  `description` text DEFAULT NULL,
  `nom_dataset` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dataset`
--

INSERT INTO `dataset` (`avancement`, `taille`, `id`, `description`, `nom_dataset`) VALUES
(0, 0, 1, 'premier test', 'dataset_1'),
(0, 48, 2, 'deuxieme test', 'dataset_2'),
(0, 100, 3, 'troisieme test', 'dataset_3'),
(7.142857142857143, 100, 4, 'quatrieme test', 'dataset_4'),
(0, 300, 5, 'cinquieme test', 'dataset_5'),
(100, 20, 6, 'sixieme test', 'dataset_6'),
(20, 15, 7, 'septieme test', 'dataset_7'),
(20, 15, 8, 'tst', 'dtaset_8');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL,
  `nom_role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `nom_role`) VALUES
(1, 'ADMINISTRATEUR'),
(2, 'ANNOTATEUR');

-- --------------------------------------------------------

--
-- Table structure for table `tache`
--

CREATE TABLE `tache` (
  `avancement` double NOT NULL,
  `date_limite` date NOT NULL,
  `taille` int(11) NOT NULL,
  `annotateur_id` bigint(20) DEFAULT NULL,
  `dataset_id` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tache`
--

INSERT INTO `tache` (`avancement`, `date_limite`, `taille`, `annotateur_id`, `dataset_id`, `id`) VALUES
(0, '2025-06-01', 10, 2, 2, 1),
(0, '2025-06-01', 10, 5, 2, 2),
(0, '2025-06-01', 10, 6, 2, 3),
(0, '2025-06-01', 9, 9, 2, 4),
(0, '2025-06-01', 9, 11, 2, 5),
(0, '2025-06-29', 20, 5, 3, 6),
(0, '2025-06-29', 20, 6, 3, 7),
(0, '2025-06-29', 20, 7, 3, 8),
(0, '2025-06-29', 20, 8, 3, 9),
(0, '2025-06-29', 20, 9, 3, 10),
(0, '2025-08-09', 15, 4, 4, 11),
(0, '2025-08-09', 15, 5, 4, 12),
(0, '2025-08-09', 14, 6, 4, 13),
(0, '2025-08-09', 14, 3, 4, 14),
(50, '2025-08-09', 14, 8, 4, 15),
(0, '2025-08-09', 14, 9, 4, 16),
(0, '2025-08-09', 14, 11, 4, 17),
(0, '2025-08-30', 38, 3, 5, 18),
(0, '2025-08-30', 38, 4, 5, 19),
(0, '2025-08-30', 38, 5, 5, 20),
(0, '2025-08-30', 38, 6, 5, 21),
(0, '2025-08-30', 37, 7, 5, 22),
(0, '2025-08-30', 37, 8, 5, 23),
(0, '2025-08-30', 37, 9, 5, 24),
(0, '2025-08-30', 37, 11, 5, 25),
(100, '2025-07-05', 5, 2, 6, 26),
(100, '2025-07-05', 5, 5, 6, 27),
(100, '2025-07-05', 5, 6, 6, 28),
(100, '2025-07-05', 5, NULL, 6, 29),
(0, '2025-06-01', 5, 2, 7, 30),
(0, '2025-06-01', 5, 3, 7, 31),
(60, '2025-06-01', 5, 5, 7, 32),
(0, '2025-06-01', 5, 8, 8, 33),
(60, '2025-06-01', 5, 9, 8, 34),
(0, '2025-06-01', 5, 3, 8, 35);

-- --------------------------------------------------------

--
-- Table structure for table `tache_couple_texte`
--

CREATE TABLE `tache_couple_texte` (
  `couple_texte_id` bigint(20) NOT NULL,
  `tache_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tache_couple_texte`
--

INSERT INTO `tache_couple_texte` (`couple_texte_id`, `tache_id`) VALUES
(38, 1),
(12, 1),
(24, 1),
(13, 1),
(18, 1),
(15, 1),
(27, 1),
(21, 1),
(7, 1),
(48, 1),
(44, 2),
(17, 2),
(40, 2),
(22, 2),
(47, 2),
(2, 2),
(31, 2),
(43, 2),
(46, 2),
(6, 2),
(39, 3),
(20, 3),
(8, 3),
(1, 3),
(9, 3),
(16, 3),
(19, 3),
(29, 3),
(45, 3),
(32, 3),
(37, 4),
(5, 4),
(36, 4),
(25, 4),
(23, 4),
(35, 4),
(3, 4),
(33, 4),
(34, 4),
(42, 5),
(11, 5),
(26, 5),
(30, 5),
(10, 5),
(28, 5),
(4, 5),
(41, 5),
(14, 5),
(123, 6),
(95, 6),
(96, 6),
(107, 6),
(98, 6),
(68, 6),
(61, 6),
(59, 6),
(53, 6),
(66, 6),
(51, 6),
(121, 6),
(135, 6),
(131, 6),
(97, 6),
(60, 6),
(109, 6),
(142, 6),
(147, 6),
(71, 6),
(104, 7),
(83, 7),
(57, 7),
(54, 7),
(124, 7),
(136, 7),
(84, 7),
(110, 7),
(134, 7),
(63, 7),
(132, 7),
(69, 7),
(100, 7),
(62, 7),
(55, 7),
(112, 7),
(120, 7),
(72, 7),
(122, 7),
(93, 7),
(111, 8),
(52, 8),
(138, 8),
(118, 8),
(116, 8),
(113, 8),
(64, 8),
(140, 8),
(99, 8),
(143, 8),
(114, 8),
(89, 8),
(101, 8),
(117, 8),
(65, 8),
(128, 8),
(85, 8),
(105, 8),
(49, 8),
(86, 8),
(137, 9),
(125, 9),
(58, 9),
(146, 9),
(73, 9),
(70, 9),
(56, 9),
(145, 9),
(91, 9),
(115, 9),
(127, 9),
(119, 9),
(130, 9),
(78, 9),
(87, 9),
(106, 9),
(88, 9),
(144, 9),
(108, 9),
(148, 9),
(102, 10),
(80, 10),
(133, 10),
(50, 10),
(92, 10),
(129, 10),
(126, 10),
(67, 10),
(74, 10),
(94, 10),
(82, 10),
(81, 10),
(79, 10),
(77, 10),
(90, 10),
(75, 10),
(139, 10),
(103, 10),
(76, 10),
(141, 10),
(226, 11),
(174, 11),
(242, 11),
(235, 11),
(186, 11),
(171, 11),
(230, 11),
(248, 11),
(178, 11),
(168, 11),
(215, 11),
(162, 11),
(151, 11),
(208, 11),
(236, 11),
(246, 12),
(231, 12),
(244, 12),
(175, 12),
(195, 12),
(156, 12),
(197, 12),
(163, 12),
(241, 12),
(201, 12),
(223, 12),
(176, 12),
(166, 12),
(181, 12),
(167, 12),
(155, 13),
(238, 13),
(173, 13),
(193, 13),
(218, 13),
(202, 13),
(191, 13),
(225, 13),
(149, 13),
(239, 13),
(204, 13),
(229, 13),
(185, 13),
(212, 13),
(247, 14),
(214, 14),
(179, 14),
(170, 14),
(160, 14),
(240, 14),
(234, 14),
(161, 14),
(187, 14),
(207, 14),
(172, 14),
(157, 14),
(184, 14),
(211, 14),
(217, 15),
(164, 15),
(183, 15),
(221, 15),
(224, 15),
(190, 15),
(245, 15),
(237, 15),
(152, 15),
(198, 15),
(203, 15),
(196, 15),
(209, 15),
(210, 15),
(220, 16),
(213, 16),
(153, 16),
(169, 16),
(182, 16),
(222, 16),
(158, 16),
(206, 16),
(188, 16),
(165, 16),
(180, 16),
(228, 16),
(189, 16),
(199, 16),
(205, 17),
(216, 17),
(192, 17),
(243, 17),
(232, 17),
(219, 17),
(227, 17),
(177, 17),
(154, 17),
(194, 17),
(200, 17),
(150, 17),
(159, 17),
(233, 17),
(524, 18),
(270, 18),
(509, 18),
(433, 18),
(394, 18),
(469, 18),
(298, 18),
(510, 18),
(426, 18),
(427, 18),
(519, 18),
(505, 18),
(414, 18),
(369, 18),
(262, 18),
(517, 18),
(476, 18),
(456, 18),
(257, 18),
(475, 18),
(315, 18),
(291, 18),
(333, 18),
(500, 18),
(317, 18),
(448, 18),
(537, 18),
(376, 18),
(347, 18),
(308, 18),
(418, 18),
(423, 18),
(497, 18),
(493, 18),
(282, 18),
(546, 18),
(420, 18),
(307, 18),
(405, 19),
(340, 19),
(529, 19),
(260, 19),
(279, 19),
(256, 19),
(397, 19),
(538, 19),
(288, 19),
(416, 19),
(372, 19),
(324, 19),
(249, 19),
(511, 19),
(325, 19),
(296, 19),
(512, 19),
(328, 19),
(396, 19),
(349, 19),
(277, 19),
(364, 19),
(292, 19),
(447, 19),
(472, 19),
(401, 19),
(473, 19),
(412, 19),
(259, 19),
(536, 19),
(393, 19),
(494, 19),
(303, 19),
(271, 19),
(289, 19),
(548, 19),
(428, 19),
(382, 19),
(346, 20),
(499, 20),
(290, 20),
(309, 20),
(507, 20),
(523, 20),
(253, 20),
(387, 20),
(280, 20),
(385, 20),
(533, 20),
(313, 20),
(345, 20),
(514, 20),
(314, 20),
(479, 20),
(283, 20),
(359, 20),
(463, 20),
(380, 20),
(422, 20),
(284, 20),
(490, 20),
(312, 20),
(384, 20),
(366, 20),
(374, 20),
(319, 20),
(436, 20),
(269, 20),
(252, 20),
(276, 20),
(390, 20),
(439, 20),
(543, 20),
(363, 20),
(274, 20),
(465, 20),
(365, 21),
(450, 21),
(502, 21),
(286, 21),
(458, 21),
(326, 21),
(310, 21),
(495, 21),
(496, 21),
(470, 21),
(535, 21),
(321, 21),
(343, 21),
(544, 21),
(267, 21),
(516, 21),
(352, 21),
(508, 21),
(431, 21),
(348, 21),
(440, 21),
(501, 21),
(518, 21),
(486, 21),
(504, 21),
(341, 21),
(417, 21),
(316, 21),
(342, 21),
(302, 21),
(373, 21),
(434, 21),
(332, 21),
(484, 21),
(492, 21),
(329, 21),
(547, 21),
(402, 21),
(437, 22),
(525, 22),
(268, 22),
(360, 22),
(334, 22),
(335, 22),
(383, 22),
(381, 22),
(275, 22),
(532, 22),
(467, 22),
(491, 22),
(513, 22),
(461, 22),
(526, 22),
(407, 22),
(344, 22),
(250, 22),
(421, 22),
(410, 22),
(337, 22),
(368, 22),
(304, 22),
(488, 22),
(261, 22),
(379, 22),
(455, 22),
(522, 22),
(409, 22),
(322, 22),
(413, 22),
(293, 22),
(459, 22),
(355, 22),
(258, 22),
(300, 22),
(371, 22),
(419, 23),
(305, 23),
(295, 23),
(464, 23),
(485, 23),
(338, 23),
(408, 23),
(323, 23),
(545, 23),
(457, 23),
(272, 23),
(357, 23),
(287, 23),
(398, 23),
(482, 23),
(403, 23),
(515, 23),
(306, 23),
(430, 23),
(506, 23),
(429, 23),
(530, 23),
(471, 23),
(330, 23),
(255, 23),
(481, 23),
(445, 23),
(301, 23),
(356, 23),
(297, 23),
(498, 23),
(477, 23),
(266, 23),
(351, 23),
(370, 23),
(392, 23),
(400, 23),
(424, 24),
(399, 24),
(336, 24),
(358, 24),
(391, 24),
(451, 24),
(539, 24),
(415, 24),
(278, 24),
(528, 24),
(460, 24),
(452, 24),
(480, 24),
(534, 24),
(432, 24),
(386, 24),
(411, 24),
(483, 24),
(404, 24),
(474, 24),
(441, 24),
(263, 24),
(377, 24),
(354, 24),
(331, 24),
(327, 24),
(449, 24),
(503, 24),
(378, 24),
(454, 24),
(320, 24),
(444, 24),
(251, 24),
(531, 24),
(487, 24),
(265, 24),
(541, 24),
(446, 25),
(285, 25),
(527, 25),
(468, 25),
(264, 25),
(362, 25),
(442, 25),
(489, 25),
(406, 25),
(273, 25),
(435, 25),
(520, 25),
(318, 25),
(281, 25),
(388, 25),
(395, 25),
(389, 25),
(462, 25),
(478, 25),
(375, 25),
(438, 25),
(361, 25),
(521, 25),
(443, 25),
(542, 25),
(367, 25),
(540, 25),
(425, 25),
(453, 25),
(350, 25),
(311, 25),
(339, 25),
(299, 25),
(294, 25),
(466, 25),
(353, 25),
(254, 25),
(556, 26),
(554, 26),
(549, 26),
(559, 26),
(564, 26),
(566, 27),
(558, 27),
(550, 27),
(567, 27),
(568, 27),
(551, 28),
(563, 28),
(561, 28),
(553, 28),
(565, 28),
(562, 29),
(560, 29),
(552, 29),
(555, 29),
(557, 29),
(582, 30),
(583, 30),
(573, 30),
(570, 30),
(578, 30),
(576, 31),
(579, 31),
(569, 31),
(577, 31),
(571, 31),
(574, 32),
(572, 32),
(580, 32),
(575, 32),
(581, 32),
(587, 33),
(586, 33),
(596, 33),
(585, 33),
(595, 33),
(594, 34),
(593, 34),
(590, 34),
(589, 34),
(588, 34),
(598, 35),
(597, 35),
(592, 35),
(584, 35),
(591, 35);

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `deleted` bit(1) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `utilisateur`
--

INSERT INTO `utilisateur` (`deleted`, `id`, `email`, `login`, `nom`, `password`, `prenom`) VALUES
(b'0', 1, 'admin@example.com', 'admin', 'Admin', '$2a$10$1CpNe8Ngs.3egC2sZMV8L.idUbBfK.Ii15D0kgJlisnb9rf9aon56', 'Principal'),
(b'0', 2, 'maryamelhamdaoui03@gmail.com', 'mariam', 'EL HAMDAOUI', '$2a$10$kWYXcQVHK7yBGMtz0vm0Hem9xxozDXMPkZdlkXhk7WL.HDmUeX8Uq', 'Mariam'),
(b'0', 3, 'm.aryamelhamdaoui03@gmail.com', 'salma', 'EL HADRI', '$2a$10$2.xRdMwHsKfX8RMi9hthi.W1Pw0Qcej5gYQZ.Dhkqgjle0Vrfk2qO', 'Salma'),
(b'0', 4, 'mar.yamelhamdaoui03@gmail.com', 'mohamed', 'DRIOUACH', '$2a$10$xm0xqEugUIRJyAU7LblyseeTW0ZnUPURcbPoBkl1KxEBWOTeWXX2C', 'Mohamed'),
(b'0', 5, 'mary.amelhamdaoui03@gmail.com', 'nassira', 'HADDAOUI', '$2a$10$Uf9.YcjXyI/D8NgMIgtNSuNGGiV9WhffcSSQplqdDZ3XthsLWYlm.', 'Nassira'),
(b'0', 6, 'maryam.elhamdaoui03@gmail.com', 'omaima', 'EL AZZOUZI', '$2a$10$.iXvahtkmYcDYK58KATui.WYAavG4ZULxZ98MKL38etljOmsr/q.W', 'Omaima'),
(b'0', 7, 'maryamelhamdao.ui03@gmail.com', 'zainab', 'SALHI', '$2a$10$CW./sIwTtTt3eO5WYIgd4Owzx2HTZs1hH8Npn3Xbu/i/CoQ0liDZW', 'Zainab'),
(b'0', 8, 'maryamel.hamdaoui03@gmail.com', 'fatima', 'AALILOUCH', '$2a$10$Md7uB0KG5IV3hteYXJ3X3.b8btkuhKimsA2PkJM3.fMRoyaA7QdQS', 'Fatima'),
(b'0', 9, 'maryamelhamd.aoui03@gmail.com', 'bilal', 'EL HAMDAOUI', '$2a$10$BjqZZEQlBHID896Vbph.n.eG3X3plpVhK7sxJdcNnfkhu/G8shJZu', 'Bilal'),
(b'0', 11, 'maryamelhamdaoui03@g.mail.com', 'ahmed', 'EL KACIMI', '$2a$10$BcenzLWC61h/DtxqvQto4.HumO9DZHhU2BWgvfeKW9IkceWuCc6AO', 'Ahmed'),
(b'1', 12, 'maryamelhamdaoui0.3@gmail.com', 'massin', 'ACHAHBAR', '$2a$10$FOiPziQxlE70ttAMgeMkCeGyrcize1Bk57yJJ6UPkxMv5bLcFWXZ6', 'Massin'),
(b'1', 13, 'mariam.elhamdaoui@etu.uae.ac.ma', 'assia', 'BENTOUHAMI', '$2a$10$5WuYj.Jz/7Z.jXf4wmWYTOEjTZDes0WQvEt4vumzsS4bTj54EFumi', 'Assia'),
(b'0', 14, 'maryamelha..mdaoui03@gmail.com', 'hana', 'jalol', '$2a$10$E3NnrIzqQf8q4RfsyQQBreReBaNhPQSM/UhT3/J38OI7Ov8OlQPRG', 'hana');

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur_role`
--

CREATE TABLE `utilisateur_role` (
  `role_id` bigint(20) NOT NULL,
  `utilisateur_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `utilisateur_role`
--

INSERT INTO `utilisateur_role` (`role_id`, `utilisateur_id`) VALUES
(1, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 11),
(2, 12),
(2, 13),
(2, 14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrateur`
--
ALTER TABLE `administrateur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `annotateur`
--
ALTER TABLE `annotateur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `annotation`
--
ALTER TABLE `annotation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKoqf0bnu6n4nxoq8knisclci1q` (`annotateur_id`),
  ADD KEY `FK38qa3w9gati7cdh6socc5w2id` (`couple_texte_id`);

--
-- Indexes for table `classes_possibles`
--
ALTER TABLE `classes_possibles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKg0twqso95dj11hgc8y7u33pdf` (`dataset_id`);

--
-- Indexes for table `couple_texte`
--
ALTER TABLE `couple_texte`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKdvmycmj4kc5dnej4ojj6khr8m` (`dataset_id`);

--
-- Indexes for table `dataset`
--
ALTER TABLE `dataset`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK89diep5s1t49xnysvajl3pee9` (`nom_dataset`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKpkeodm13a32nsbrnpi69biytw` (`nom_role`);

--
-- Indexes for table `tache`
--
ALTER TABLE `tache`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKakv14loywg6y8v7nr01gcl2hi` (`annotateur_id`),
  ADD KEY `FK44tv00nov08nalyyj4e1ebr23` (`dataset_id`);

--
-- Indexes for table `tache_couple_texte`
--
ALTER TABLE `tache_couple_texte`
  ADD KEY `FKos02fdo1dbmneny8h6gnhhjoj` (`couple_texte_id`),
  ADD KEY `FKj0riklve1ono0fuhmtdqvc5kg` (`tache_id`);

--
-- Indexes for table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKrma38wvnqfaf66vvmi57c71lo` (`email`),
  ADD UNIQUE KEY `UK18vwp4resqussqmlpqnymfqxk` (`login`);

--
-- Indexes for table `utilisateur_role`
--
ALTER TABLE `utilisateur_role`
  ADD KEY `FKad9wf1u7gjbx2p2y9hs8ow39x` (`role_id`),
  ADD KEY `FK6kifvrsfkpqn502r5ipjl5pvu` (`utilisateur_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `annotation`
--
ALTER TABLE `annotation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `classes_possibles`
--
ALTER TABLE `classes_possibles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `couple_texte`
--
ALTER TABLE `couple_texte`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=599;

--
-- AUTO_INCREMENT for table `dataset`
--
ALTER TABLE `dataset`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tache`
--
ALTER TABLE `tache`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `administrateur`
--
ALTER TABLE `administrateur`
  ADD CONSTRAINT `FKawt6kv01mreprfwbksw65mm8y` FOREIGN KEY (`id`) REFERENCES `utilisateur` (`id`);

--
-- Constraints for table `annotateur`
--
ALTER TABLE `annotateur`
  ADD CONSTRAINT `FKif68qkgy711w1neebb6wg8e8n` FOREIGN KEY (`id`) REFERENCES `utilisateur` (`id`);

--
-- Constraints for table `annotation`
--
ALTER TABLE `annotation`
  ADD CONSTRAINT `FK38qa3w9gati7cdh6socc5w2id` FOREIGN KEY (`couple_texte_id`) REFERENCES `couple_texte` (`id`),
  ADD CONSTRAINT `FKoqf0bnu6n4nxoq8knisclci1q` FOREIGN KEY (`annotateur_id`) REFERENCES `annotateur` (`id`);

--
-- Constraints for table `classes_possibles`
--
ALTER TABLE `classes_possibles`
  ADD CONSTRAINT `FKg0twqso95dj11hgc8y7u33pdf` FOREIGN KEY (`dataset_id`) REFERENCES `dataset` (`id`);

--
-- Constraints for table `couple_texte`
--
ALTER TABLE `couple_texte`
  ADD CONSTRAINT `FKdvmycmj4kc5dnej4ojj6khr8m` FOREIGN KEY (`dataset_id`) REFERENCES `dataset` (`id`);

--
-- Constraints for table `tache`
--
ALTER TABLE `tache`
  ADD CONSTRAINT `FK44tv00nov08nalyyj4e1ebr23` FOREIGN KEY (`dataset_id`) REFERENCES `dataset` (`id`),
  ADD CONSTRAINT `FKakv14loywg6y8v7nr01gcl2hi` FOREIGN KEY (`annotateur_id`) REFERENCES `annotateur` (`id`);

--
-- Constraints for table `tache_couple_texte`
--
ALTER TABLE `tache_couple_texte`
  ADD CONSTRAINT `FKj0riklve1ono0fuhmtdqvc5kg` FOREIGN KEY (`tache_id`) REFERENCES `tache` (`id`),
  ADD CONSTRAINT `FKos02fdo1dbmneny8h6gnhhjoj` FOREIGN KEY (`couple_texte_id`) REFERENCES `couple_texte` (`id`);

--
-- Constraints for table `utilisateur_role`
--
ALTER TABLE `utilisateur_role`
  ADD CONSTRAINT `FK6kifvrsfkpqn502r5ipjl5pvu` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateur` (`id`),
  ADD CONSTRAINT `FKad9wf1u7gjbx2p2y9hs8ow39x` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
