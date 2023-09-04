-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: 127.0.0.1
-- Χρόνος δημιουργίας: 18 Σεπ 2022 στις 20:40:49
-- Έκδοση διακομιστή: 10.4.14-MariaDB
-- Έκδοση PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `test_web`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `admin_db`
--

CREATE TABLE `admin_db` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `admin_db`
--

INSERT INTO `admin_db` (`id`, `name`, `password`, `email`) VALUES
(1, 'admin', 'a1b2c3d4e5G*', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `checkin`
--

CREATE TABLE `checkin` (
  `num` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `amount` int(11) NOT NULL,
  `visit` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `checkin`
--

INSERT INTO `checkin` (`num`, `user_id`, `user_name`, `date`, `amount`, `visit`) VALUES
(1, 1, 'Georgia', '2022-09-18 08:10:15', 1, ''),
(2, 2, 'Ariadni', '2022-09-18 08:40:56', 2, ''),
(3, 2, 'Ariadni', '2022-09-18 08:41:32', 0, ''),
(4, 2, 'Ariadni', '2022-09-18 08:41:46', 6, ''),
(5, 2, 'Ariadni', '2022-09-18 08:41:49', 0, ''),
(6, 1, 'Georgia', '2022-09-18 08:42:27', 0, ''),
(7, 3, 'Eva', '2022-09-18 08:43:24', 3, ''),
(8, 3, 'Eva', '2022-09-18 08:43:29', 0, ''),
(9, 4, 'Giannis', '2022-09-18 08:45:13', 3, ''),
(10, 4, 'Giannis', '2022-09-18 08:45:23', 16, ''),
(11, 2, 'Ariadni', '2022-09-18 08:46:08', 34, ''),
(12, 2, 'Ariadni', '2022-09-18 08:46:15', 0, ''),
(13, 5, 'kwstas', '2022-09-18 08:48:02', 0, ''),
(14, 5, 'kwstas', '2022-09-18 08:48:14', 4, ''),
(15, 2, 'Ariadni', '2022-09-18 08:48:36', 10, ''),
(16, 3, 'Eva', '2022-09-18 08:49:12', 0, ''),
(17, 3, 'Eva', '2022-09-18 08:49:22', 3, ''),
(18, 3, 'Eva', '2022-09-18 08:49:27', 0, ''),
(19, 4, 'Giannis', '2022-09-18 08:50:56', 0, ''),
(20, 4, 'Giannis', '2022-09-18 08:51:07', 8, ''),
(21, 1, 'Georgia', '2022-09-18 08:52:36', 5, ''),
(22, 1, 'Georgia', '2022-09-18 08:52:40', 15, ''),
(23, 2, 'Ariadni', '2022-09-18 08:53:31', 0, ''),
(24, 2, 'Ariadni', '2022-09-18 08:53:33', 0, ''),
(25, 5, 'kwstas', '2022-09-18 08:54:26', 0, ''),
(26, 5, 'kwstas', '2022-09-18 08:54:29', 2, ''),
(27, 5, 'kwstas', '2022-09-18 08:54:33', 4, ''),
(28, 4, 'Giannis', '2022-09-18 08:54:57', 0, ''),
(29, 4, 'Giannis', '2022-09-18 08:55:01', 2, ''),
(30, 4, 'Giannis', '2022-09-18 08:55:10', 21, ''),
(31, 3, 'Eva', '2022-09-18 08:55:30', 16, ''),
(32, 3, 'Eva', '2022-09-18 08:55:32', 0, ''),
(33, 2, 'Ariadni', '2022-09-18 08:55:50', 0, ''),
(34, 2, 'Ariadni', '2022-09-18 08:55:59', 19, ''),
(35, 2, 'Ariadni', '2022-09-18 08:56:01', 0, ''),
(36, 1, 'Georgia', '2022-09-18 08:58:16', 0, ''),
(37, 1, 'Georgia', '2022-09-18 08:58:18', 0, ''),
(38, 1, 'Georgia', '2022-09-18 08:58:21', 15, ''),
(39, 5, 'kwstas', '2022-09-18 08:58:44', 16, ''),
(40, 5, 'kwstas', '2022-09-18 08:58:47', 0, ''),
(41, 4, 'Giannis', '2022-09-18 08:59:10', 0, ''),
(42, 4, 'Giannis', '2022-09-18 08:59:14', 0, ''),
(43, 4, 'Giannis', '2022-09-18 08:59:16', 0, ''),
(44, 2, 'Ariadni', '2022-09-18 08:59:34', 0, ''),
(45, 2, 'Ariadni', '2022-09-18 08:59:39', 17, ''),
(46, 3, 'Eva', '2022-09-18 09:00:25', 0, ''),
(47, 3, 'Eva', '2022-09-18 09:00:27', 0, ''),
(48, 3, 'Eva', '2022-09-18 09:00:31', 15, ''),
(49, 4, 'Giannis', '2022-09-18 09:01:51', 0, ''),
(50, 4, 'Giannis', '2022-09-18 09:01:57', 11, ''),
(51, 5, 'kwstas', '2022-09-18 09:03:00', 3, ''),
(52, 5, 'kwstas', '2022-09-18 09:03:02', 0, ''),
(53, 5, 'kwstas', '2022-09-18 09:03:34', 0, ''),
(54, 6, 'George', '2022-09-18 09:03:55', 0, ''),
(55, 6, 'George', '2022-09-18 09:03:59', 2, ''),
(56, 1, 'Georgia', '2022-09-18 09:04:21', 2, ''),
(57, 1, 'Georgia', '2022-09-18 09:04:23', 0, ''),
(58, 1, 'Georgia', '2022-09-18 09:04:25', 0, ''),
(59, 2, 'Ariadni', '2022-09-18 09:05:26', 4, ''),
(60, 2, 'Ariadni', '2022-09-18 09:05:31', 20, ''),
(61, 4, 'Giannis', '2022-09-18 09:05:53', 26, ''),
(62, 4, 'Giannis', '2022-09-18 09:05:57', 30, ''),
(63, 4, 'Giannis', '2022-09-18 09:05:59', 0, ''),
(64, 3, 'Eva', '2022-09-18 09:06:22', 0, ''),
(65, 3, 'Eva', '2022-09-18 09:06:24', 0, ''),
(66, 5, 'kwstas', '2022-09-18 09:06:45', 0, ''),
(67, 5, 'kwstas', '2022-09-18 09:06:48', 19, ''),
(68, 1, 'Georgia', '2022-09-18 09:07:09', 29, ''),
(69, 1, 'Georgia', '2022-09-18 09:07:11', 0, ''),
(70, 3, 'Eva', '2022-09-18 09:07:28', 0, ''),
(71, 3, 'Eva', '2022-09-18 09:07:35', 11, ''),
(72, 3, 'Eva', '2022-09-18 09:07:36', 0, ''),
(73, 4, 'Giannis', '2022-09-18 09:07:58', 0, ''),
(74, 4, 'Giannis', '2022-09-18 09:08:16', 18, ''),
(75, 4, 'Giannis', '2022-09-18 09:08:18', 0, ''),
(76, 2, 'Ariadni', '2022-09-18 09:11:58', 0, ''),
(77, 2, 'Ariadni', '2022-09-18 09:12:02', 16, ''),
(78, 2, 'Ariadni', '2022-09-18 09:12:04', 0, ''),
(79, 1, 'Georgia', '2022-09-18 09:12:47', 26, ''),
(80, 1, 'Georgia', '2022-09-18 09:12:54', 2, ''),
(81, 1, 'Georgia', '2022-09-18 09:12:57', 0, ''),
(82, 5, 'kwstas', '2022-09-18 09:13:30', 0, ''),
(83, 5, 'kwstas', '2022-09-18 09:13:34', 33, ''),
(84, 5, 'kwstas', '2022-09-18 09:13:37', 9, ''),
(85, 4, 'Giannis', '2022-09-18 09:13:53', 0, ''),
(86, 4, 'Giannis', '2022-09-18 09:13:55', 0, ''),
(87, 3, 'Eva', '2022-09-18 09:15:21', 0, ''),
(88, 3, 'Eva', '2022-09-18 09:15:23', 0, ''),
(89, 3, 'Eva', '2022-09-18 09:15:26', 2, ''),
(90, 1, 'Georgia', '2022-09-18 09:15:45', 0, ''),
(91, 1, 'Georgia', '2022-09-18 09:15:49', 8, ''),
(92, 1, 'Georgia', '2022-09-18 09:15:51', 0, ''),
(93, 2, 'Ariadni', '2022-09-18 09:16:16', 37, ''),
(94, 2, 'Ariadni', '2022-09-18 09:16:19', 0, ''),
(95, 4, 'Giannis', '2022-09-18 09:16:37', 0, ''),
(96, 4, 'Giannis', '2022-09-18 09:16:39', 0, ''),
(97, 5, 'kwstas', '2022-09-18 09:17:02', 0, ''),
(98, 5, 'kwstas', '2022-09-18 09:17:07', 14, ''),
(99, 1, 'Georgia', '2022-09-18 09:17:23', 0, ''),
(100, 1, 'Georgia', '2022-09-18 09:17:25', 0, ''),
(101, 3, 'Eva', '2022-09-18 09:18:29', 0, ''),
(102, 3, 'Eva', '2022-09-18 09:18:33', 3, ''),
(103, 3, 'Eva', '2022-09-18 09:18:35', 0, ''),
(104, 5, 'kwstas', '2022-09-18 09:18:53', 0, ''),
(105, 5, 'kwstas', '2022-09-18 09:18:55', 0, ''),
(106, 6, 'George', '2022-09-18 09:19:51', 0, ''),
(107, 6, 'George', '2022-09-18 09:19:53', 0, ''),
(108, 5, 'kwstas', '2022-09-18 09:20:09', 0, ''),
(109, 5, 'kwstas', '2022-09-18 09:20:13', 29, ''),
(110, 5, 'kwstas', '2022-09-18 09:20:17', 49, '');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `covid`
--

CREATE TABLE `covid` (
  `userid` int(10) NOT NULL,
  `username` varchar(200) NOT NULL,
  `useremail` varchar(200) NOT NULL,
  `date` datetime NOT NULL,
  `expdate` datetime DEFAULT NULL,
  `results` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `covid`
--

INSERT INTO `covid` (`userid`, `username`, `useremail`, `date`, `expdate`, `results`) VALUES
(2, 'Ariadni', 'ariadnimpar@gmail.com', '2022-09-17 00:00:00', '2022-10-01 00:00:00', 'Positive'),
(2, 'Ariadni', 'ariadnimpar@gmail.com', '2022-09-22 00:00:00', '2022-10-06 00:00:00', 'Negative'),
(2, 'Ariadni', 'ariadnimpar@gmail.com', '2022-10-02 00:00:00', '2022-10-16 00:00:00', 'Positive'),
(1, 'Georgia', 'georgia.kots23@gmail.com', '2022-09-01 00:00:00', '2022-09-15 00:00:00', 'Positive'),
(1, 'Georgia', 'georgia.kots23@gmail.com', '2022-09-06 00:00:00', '2022-09-20 00:00:00', 'Negative'),
(1, 'Georgia', 'georgia.kots23@gmail.com', '2022-09-15 00:00:00', '2022-09-29 00:00:00', 'Positive'),
(1, 'Georgia', 'georgia.kots23@gmail.com', '2022-09-12 00:00:00', '2022-09-26 00:00:00', 'Negative'),
(1, 'Georgia', 'georgia.kots23@gmail.com', '2022-09-21 00:00:00', '2022-10-05 00:00:00', 'Negative'),
(1, 'Georgia', 'georgia.kots23@gmail.com', '2022-09-22 00:00:00', '2022-10-06 00:00:00', 'Negative'),
(1, 'Georgia', 'georgia.kots23@gmail.com', '2022-09-29 00:00:00', '2022-10-13 00:00:00', 'Positive'),
(3, 'Eva', 'evalepouri@gmail.com', '2022-08-10 00:00:00', '2022-08-24 00:00:00', 'Positive'),
(3, 'Eva', 'evalepouri@gmail.com', '2022-09-09 00:00:00', '2022-09-23 00:00:00', 'Negative'),
(3, 'Eva', 'evalepouri@gmail.com', '2022-09-22 00:00:00', '2022-10-06 00:00:00', 'Positive'),
(3, 'Eva', 'evalepouri@gmail.com', '2022-09-26 00:00:00', '2022-10-10 00:00:00', 'Negative'),
(4, 'Giannis', 'john@yahoo.gr', '2022-09-01 00:00:00', '2022-09-15 00:00:00', 'Positive'),
(4, 'Giannis', 'john@yahoo.gr', '2022-09-06 00:00:00', '2022-09-20 00:00:00', 'Negative'),
(4, 'Giannis', 'john@yahoo.gr', '2022-09-10 00:00:00', '2022-09-24 00:00:00', 'Negative'),
(4, 'Giannis', 'john@yahoo.gr', '2022-10-12 00:00:00', '2022-10-26 00:00:00', 'Positive'),
(5, 'kwstas', 'costas@gmail.com', '2022-09-05 00:00:00', '2022-09-19 00:00:00', 'Positive'),
(5, 'kwstas', 'costas@gmail.com', '2022-09-15 00:00:00', '2022-09-29 00:00:00', 'Negative'),
(5, 'kwstas', 'costas@gmail.com', '2022-09-17 00:00:00', '2022-10-01 00:00:00', 'Negative'),
(5, 'kwstas', 'costas@gmail.com', '2022-09-26 00:00:00', '2022-10-10 00:00:00', 'Positive'),
(5, 'kwstas', 'costas@gmail.com', '2022-10-15 00:00:00', '2022-10-29 00:00:00', 'Positive');

--
-- Δείκτες `covid`
--
DELIMITER $$
CREATE TRIGGER `test_trigger` BEFORE INSERT ON `covid` FOR EACH ROW SET
    NEW.date = IFNULL(NEW.date, NOW()),
    NEW.expdate = TIMESTAMPADD(DAY, 14, NEW.date)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `places`
--

CREATE TABLE `places` (
  `id` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `types` longtext CHARACTER SET utf8 NOT NULL,
  `rating` float NOT NULL,
  `rating_n` bigint(20) NOT NULL,
  `current_popularity` bigint(20) DEFAULT NULL,
  `time_spent` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `places`
--

INSERT INTO `places` (`id`, `name`, `address`, `types`, `rating`, `rating_n`, `current_popularity`, `time_spent`) VALUES
('ChIJaczbf8JJXhMR9QcBFbdskRA', 'B.M.G. RENTACAR', 'Andrea Papandreou 1, Patra', '[\"car_rental\",\"point_of_interest\",\"establishment\"]', 1, 1, 0, 'null'),
('ChIJLWNTMuhJXhMRc0uCYczaWys', 'Bocas', 'Riga Fereou 39, Patra', '[\"bar\",\"point_of_interest\",\"establishment\"]', 4.6, 403, 14, '[45,150]'),
('ChIJNce1WSQ2XhMRCxdWbKOr_8M', 'Cafe Ανδρέας', 'Solomous 140, Patra', '[\"cafe\",\"food\",\"point_of_interest\",\"establishment\"]', 3.2, 18, 0, 'null'),
('ChIJt-jvWxk2XhMRmqTBLN1y4Fg', 'Coffee Amargo', 'Leoforos Georgiou Papandreou 51, Patra', '[\"cafe\",\"food\",\"point_of_interest\",\"establishment\"]', 4.6, 51, 0, 'null'),
('ChIJqXT_xCU2XhMRc5ulGeOpCoc', 'Coffee Island', 'Κορίνθου &, Dimitriou Maximou 22, Patra', '[\"cafe\",\"food\",\"point_of_interest\",\"store\",\"establishment\"]', 4.7, 177, 0, '[10,45]'),
('ChIJS8X0pWY3XhMRzrGX7803y-8', 'Coffee Lab ΠΑΠΑΝΔΡΕΟΥ 49 ΠΑΤΡΑ', 'Leoforos Georgiou Papandreou 49, Patra', '[\"cafe\",\"food\",\"point_of_interest\",\"establishment\"]', 4.6, 28, 0, '[30,90]'),
('ChIJF-Rg6dI3XhMRMNxaFTBLchg', 'Coffee stay', 'Charilaou Trikoupi 17, Patra', '[\"cafe\",\"food\",\"point_of_interest\",\"store\",\"establishment\"]', 5, 3, 0, 'null'),
('ChIJ71wmUS82XhMRKso4jVV3SaI', 'Coffeebox Str', 'Akti Dimeon 27, Patra', '[\"cafe\",\"food\",\"point_of_interest\",\"establishment\"]', 4.3, 124, 0, '[15,60]'),
('ChIJ1f_1SOJJXhMRgrZ3x59ZKNw', 'Coffeebrands', '3ou Oreivatikoy 10, Patra', '[\"cafe\",\"food\",\"point_of_interest\",\"store\",\"establishment\"]', 4.3, 82, 0, '[10,45]'),
('ChIJA8XmnCc2XhMRoA2h45hqTg4', 'ComTech Systems Pc-Δίκτυα-Software-Service', 'Korinthou 358, Patra', '[\"electronics_store\",\"point_of_interest\",\"store\",\"establishment\"]', 4.9, 30, 0, 'null'),
('ChIJw7aMQeJJXhMR4F6A4HR7Kio', 'Cooper Coffee & Snack', '3ου ορειβατικού κ, Maragkopoulou, Patra', '[\"cafe\",\"food\",\"point_of_interest\",\"establishment\"]', 4.4, 415, 77, '[15,90]'),
('ChIJHz0GwiY2XhMRl8CM130I0qw', 'CyberArena Internet Cafe', 'Solomous 72-76, Patra', '[\"point_of_interest\",\"establishment\"]', 4.7, 124, 60, 'null'),
('ChIJU9lb5SQ2XhMRC-mT4k-qJ5I', 'DIVINE CAFE', 'Delfon 30, Patra', '[\"cafe\",\"food\",\"point_of_interest\",\"establishment\"]', 4.5, 24, 0, 'null'),
('ChIJFxIYOehJXhMRTnfIBMK7Cjw', 'eCig Hellas Ηλεκτρονικο Τσιγαρο - Πάτρα', 'Maizonos 47, Patra', '[\"electronics_store\",\"point_of_interest\",\"store\",\"establishment\"]', 4.9, 208, 0, 'null'),
('ChIJNQv7Pxw2XhMReRJTJFtt4xc', 'Et Cafe', 'Leoforos Georgiou Papandreou 59A, Patra', '[\"cafe\",\"food\",\"point_of_interest\",\"establishment\"]', 4.5, 167, 0, 'null'),
('ChIJ-TKYmx02XhMRhtJ7X9WTjPI', 'Eurobank', 'Kalavriton 32, Patra', '[\"bank\",\"atm\",\"finance\",\"point_of_interest\",\"establishment\"]', 3.3, 23, 73, '[15,15]'),
('ChIJ4bvbRlU3XhMRizrDqc9I6fU', 'Flocafe', 'Akti Dimeon 17, Patra', '[\"cafe\",\"food\",\"point_of_interest\",\"establishment\"]', 4.1, 246, 0, 'null'),
('ChIJYQIxGyE2XhMRupS59ERDUNc', 'Galaxias', 'Panachaikou 76, Patra', '[\"supermarket\",\"grocery_or_supermarket\",\"food\",\"point_of_interest\",\"store\",\"establishment\"]', 4.4, 248, 39, '[15,15]'),
('ChIJk0zmsB82XhMRaUVxT1MhpGY', 'Gitsis Konstantinos', 'Ionias 54, Patra', '[\"food\",\"point_of_interest\",\"store\",\"establishment\"]', 4.3, 99, 0, '[15,15]'),
('ChIJ7f_lJyY2XhMRnOqNQJfMj3g', 'Goody s Burger House', 'Akti Dimeon 17, Patra', '[\"restaurant\",\"food\",\"point_of_interest\",\"establishment\"]', 4.2, 546, 23, 'null'),
('ChIJU9iH_p83XhMRvlOk16boN8k', 'Grill house πατρα', 'Voriou Ipirou 89, Patra', '[\"restaurant\",\"food\",\"point_of_interest\",\"establishment\"]', 4.4, 33, 0, 'null'),
('ChIJ0YP89yw3XhMRu0_gcptybS4', 'GroupTime Fitness', 'Akti Dimeon 35, Patra', '[\"gym\",\"health\",\"point_of_interest\",\"establishment\"]', 5, 92, 0, 'null'),
('ChIJYdZBLCY2XhMRZRAQwVO1aEg', 'JUMBO', 'Akti Dimeon 17, Patra', '[\"point_of_interest\",\"store\",\"establishment\"]', 4.1, 1960, 87, '[30,60]'),
('ChIJV-Z3PRw2XhMRP_npsTE0kOI', 'Kokois George', 'Dorileou 4, Patra', '[\"food\",\"point_of_interest\",\"store\",\"establishment\"]', 4.8, 25, 0, 'null'),
('ChIJbaPLFeJJXhMRYPqDu15HzSs', 'Kotsokolos Konstantinos', 'Karatza 116, Patra', '[\"restaurant\",\"food\",\"point_of_interest\",\"establishment\"]', 4.6, 87, 0, '[25,90]'),
('ChIJ88kULCM2XhMRXqQTjKQz9-s', 'La Taste Ζαχαροπλαστείο', 'Agiou Ioanni Pratsika 71, Patra', '[\"shopping_mall\",\"food\",\"point_of_interest\",\"store\",\"establishment\"]', 4.6, 103, 0, '[10,10]'),
('ChIJMQP6EbU3XhMRBtsPNWT_DiQ', 'liberis ψωμι-καφες-γλυκο', 'Alexandrou Papanastasiou 16, Patra', '[\"cafe\",\"food\",\"point_of_interest\",\"establishment\"]', 4.5, 24, 0, '[10,45]'),
('ChIJH1FcPxw2XhMRzjMDiIppoZg', 'Max Perry', 'Leoforos Georgiou Papandreou 59, Patra', '[\"food\",\"point_of_interest\",\"store\",\"establishment\"]', 4.3, 155, 9, '[15,15]'),
('ChIJGYPtKyY2XhMRDq5n0hrb108', 'Media Markt Πάτρα', 'Akti Dimeon 17, Patra', '[\"shopping_mall\",\"electronics_store\",\"point_of_interest\",\"store\",\"establishment\"]', 4.1, 1257, 46, '[20,45]'),
('ChIJXw7utONJXhMRtc156JXTs80', 'MILOS', '3ou Oreivatikoy 24, Patra', '[\"bakery\",\"cafe\",\"food\",\"point_of_interest\",\"store\",\"establishment\"]', 4.5, 49, 0, '[15,15]'),
('ChIJs13fMVdJXhMRdfoTBribjjc', 'Moccup', 'Dimitriou Gounari 195, Patra', '[\"cafe\",\"food\",\"point_of_interest\",\"establishment\"]', 4.7, 17, 0, 'null'),
('ChIJP-URlSY2XhMRXXseyEczfzI', 'MY COFFEE', 'Solomous 82Α, Patra', '[\"cafe\",\"food\",\"point_of_interest\",\"store\",\"establishment\"]', 4.6, 62, 0, '[20,60]'),
('ChIJa4Go5yc2XhMR-30hKzhbx_c', 'My market', '12, Akti Dimeon 14, Patra', '[\"supermarket\",\"grocery_or_supermarket\",\"food\",\"point_of_interest\",\"store\",\"establishment\"]', 4.5, 504, 57, '[20,20]'),
('ChIJKy7R3SY2XhMReaxikN_Jbb0', 'NIKOLOPOULOS PANAGIOTIS \"TO PARADOSIAKO PSOMI\"', 'Solomous 75, Patra', '[\"bakery\",\"food\",\"point_of_interest\",\"store\",\"establishment\"]', 3, 2, 0, 'null'),
('ChIJWQ__HeBJXhMRAKH10ZawcdQ', 'Nina Cafe Bar', 'Voulgareos 35, Patra', '[\"bar\",\"restaurant\",\"food\",\"point_of_interest\",\"establishment\"]', 4, 1, 0, 'null'),
('ChIJizF4o5o3XhMRYFqw0tvXBHM', 'O ΛΕΩΝΙΔΑΣ & OI 300', 'Fanariou 73, Patra', '[\"restaurant\",\"food\",\"point_of_interest\",\"establishment\"]', 4.6, 5, 0, 'null'),
('ChIJG5AcGCY2XhMRmpnpUDVG6Lc', 'Our Great Circus', 'Archiepiskopou Kirillou 14, Patra', '[\"restaurant\",\"food\",\"point_of_interest\",\"establishment\"]', 4.6, 583, 36, '[90,180]'),
('ChIJGyYZay82XhMRYIH_uvIjIH8', 'Patras South Park - Notio Parko Patras', 'Akti Dimeon 28, Patra', '[\"park\",\"tourist_attraction\",\"point_of_interest\",\"establishment\"]', 4.5, 2085, 6, '[60,60]'),
('ChIJ7SdGoCg2XhMRGcnVpa4dU0g', 'Petite Boutique', 'Akti Dimeon 18, Patra', '[\"cafe\",\"restaurant\",\"food\",\"point_of_interest\",\"establishment\"]', 4.4, 413, 0, '[90,150]'),
('ChIJOztsXBk2XhMRIu0EEdF27js', 'PHARMACY Damvounelis G. Kon / nos', 'Leoforos Georgiou Papandreou 85, Patra', '[\"drugstore\",\"health\",\"point_of_interest\",\"store\",\"establishment\"]', 5, 3, 0, 'null'),
('ChIJ8Uhwphk2XhMR0eyLMUIgSEk', 'Piraeus Bank', 'Γ. Παπανδρέου, & Ιωνίας 104, Patra', '[\"bank\",\"atm\",\"finance\",\"point_of_interest\",\"establishment\"]', 2.3, 23, 62, '[15,15]'),
('ChIJB0BpiiM2XhMR0j9vb-iKkoc', 'Play Opap E. Βενιζέλου 65', 'Eleftheriou Venizelou 65, Patra', '[\"casino\",\"point_of_interest\",\"establishment\"]', 4, 39, 0, 'null'),
('ChIJSap7relJXhMRUkopSQsXwuI', 'spelectronics.gr - ΗΛΕΚΤΡΟΝΙΚΑ ΗΛΕΚΤΡΟΛΟΓΙΚΑ ΠΑΤΡΑΣ', 'Satovriandou 43-47, Patra', '[\"electronics_store\",\"point_of_interest\",\"store\",\"establishment\"]', 4.8, 59, 0, '[15,15]'),
('ChIJu8vyBuJJXhMRfm0zkEgJDWU', 'SPORTS HOUSE', 'Smirnis 250, Patra', '[\"gym\",\"health\",\"point_of_interest\",\"establishment\"]', 4.6, 57, 0, 'null'),
('ChIJhTC7IiA2XhMRDXXA5keTbkU', 'The Juice Bar', 'Smirnis 110, Patra', '[\"cafe\",\"food\",\"point_of_interest\",\"establishment\"]', 4.4, 139, 0, 'null'),
('ChIJE5rqhOFJXhMREi7B5EA45Dw', 'Tip Top', 'Dimitriou Gounari 223, Patra', '[\"restaurant\",\"food\",\"point_of_interest\",\"establishment\"]', 4.6, 102, 0, '[10,10]'),
('ChIJxZ_BF0lJXhMRgcQowKpjoQ8', 'Way Out Cafe', 'Ionias 1, Patra', '[\"cafe\",\"food\",\"point_of_interest\",\"establishment\"]', 4.9, 23, 0, 'null'),
('ChIJESBMBBk2XhMRi2SbsZ_zvMU', 'WODBOX', 'Leoforos Georgiou Papandreou 91, Patra', '[\"gym\",\"health\",\"point_of_interest\",\"establishment\"]', 4.8, 25, 0, 'null'),
('ChIJHf2oKOhJXhMRU48jxmo1y6s', 'Zolotas S.A.', 'Riga Fereou 32, Patra', '[\"point_of_interest\",\"store\",\"establishment\"]', 4.3, 75, 0, '[15,15]'),
('ChIJOeK7WuhJXhMRp1dmjE1OOmo', 'ΑΝΑΣΤΑΣΟΠΟΥΛΟΣ ΙΩΑΝΝΗΣ', 'Korinthou 156, Patra', '[\"electronics_store\",\"point_of_interest\",\"store\",\"establishment\"]', 4.5, 43, 0, 'null'),
('ChIJmxF_PCc2XhMRJpnrz44FtbU', 'Ανδρικόπουλος Super Market', 'Solomous 53, Patra', '[\"grocery_or_supermarket\",\"food\",\"point_of_interest\",\"store\",\"establishment\"]', 4.4, 107, 0, '[15,15]'),
('ChIJaVrgkCU2XhMRvIk-RC18hoM', 'Αρτο...Ποίηση', 'Maizonos 348, Patra', '[\"bakery\",\"food\",\"point_of_interest\",\"store\",\"establishment\"]', 4.7, 65, 0, '[15,15]'),
('ChIJEzGdRic2XhMRYTCEu8QXinw', 'ΑΡΤΟΓΕΥΣΕΙΣ ΑΝΔΡΙΚΟΠΟΥΛΟΣ ΧΑΡ. & ΣΙΑ Ο.Ε.', 'Solomous 30, Patra', '[\"bakery\",\"food\",\"point_of_interest\",\"store\",\"establishment\"]', 4.5, 60, 0, '[10,10]'),
('ChIJ6-g47SM2XhMRoBC9mS6dkKE', 'Αχαϊκό Εντελβάις', 'Eleftheriou Venizelou 69, Patra', '[\"bakery\",\"food\",\"point_of_interest\",\"store\",\"establishment\"]', 4.4, 209, 0, '[10,10]'),
('ChIJLbeqKhk2XhMRKRTbz6Mkha4', 'ΓΑΣΠΑΡΙΝΑΤΟΥ ΠΑΥΛΙΝΑ ΘΕΟΦΑΝΗΣ', 'Ionias 103, Patra', '[\"hair_care\",\"point_of_interest\",\"establishment\"]', 5, 21, 0, 'null'),
('ChIJaSelXrpJXhMRn8muKjS7tz8', 'Γιαννης Χριστοπουλος ΚΡΕΟΠΩΛΕΙΟ', 'Dimitriou Gounari 212, Patra', '[\"food\",\"point_of_interest\",\"store\",\"establishment\"]', 5, 3, 0, 'null'),
('ChIJYW7ZL-hJXhMR9ve2dpMf5Io', 'Ελληνικά Ταχυδρομεία (ΕΛΤΑ)', 'Maizonos 32, Patra', '[\"post_office\",\"finance\",\"point_of_interest\",\"establishment\"]', 1.5, 161, 60, '[15,15]'),
('ChIJAVs4m443XhMRBbxmCCI6f5Y', 'εν σωματι', 'Ελευθερίου Βενιζέλου 59 &, Delvinou, Patra', '[\"gym\",\"health\",\"point_of_interest\",\"establishment\"]', 4.8, 6, 0, 'null'),
('ChIJVfLnrMVJXhMRkzUAT7CxG4U', 'Ζαχαροπλαστείο Γιώργος', 'Smirnis 231, Patra', '[\"food\",\"point_of_interest\",\"store\",\"establishment\"]', 4.6, 21, 0, '[15,15]'),
('ChIJhT1xJuhJXhMRB_dOMAB9G8A', 'Κατσαρόλα της Τούλας', 'Riga Fereou 49, Patra', '[\"restaurant\",\"food\",\"point_of_interest\",\"establishment\"]', 4.6, 554, 6, '[20,60]'),
('ChIJCdQRw0Y3XhMRHeQx2bwPEAw', 'Καφέ \"Πνύκα\"', 'Michail Psellou 5, Patra', '[\"cafe\",\"food\",\"point_of_interest\",\"establishment\"]', 4.4, 21, 0, 'null'),
('ChIJFUgUqwY3XhMR_pCBkFi8rdI', 'Μπαρμπέρικο - Barber Shop', 'Agias Triados 20, Patra', '[\"hair_care\",\"health\",\"point_of_interest\",\"establishment\"]', 5, 57, 0, 'null'),
('ChIJR56ibOhJXhMRc3gu6QZZ8ek', 'Μπουκέτο Μπαλόνια', 'Korinthou, Patra', '[\"store\",\"point_of_interest\",\"establishment\"]', 4.4, 34, 0, '[15,15]'),
('ChIJFaU1TBw2XhMRq87NWxs61hA', 'Μυλωνάς Ζαχαροπλαστείο', 'Leoforos Georgiou Papandreou 44, Patra', '[\"bakery\",\"food\",\"point_of_interest\",\"store\",\"establishment\"]', 4.4, 107, 0, '[10,10]'),
('ChIJpYe_5iM2XhMRxwCviSFImLA', 'ΝΤΟΥΒΑΣ ΑΘΑΝΑΣΙΟΣ', 'Voriou Ipirou 73, Patra', '[\"bakery\",\"food\",\"point_of_interest\",\"store\",\"establishment\"]', 4.7, 17, 0, 'null'),
('ChIJD12aA_c3XhMR3g61s7cKpQc', 'Πασαγιάννης Όμηρος', 'Kontogouri 10, Patra', '[\"grocery_or_supermarket\",\"food\",\"point_of_interest\",\"store\",\"establishment\"]', 4.8, 4, 0, 'null'),
('ChIJH2IPqSU2XhMRx52dM-Uwiwc', 'Σκλαβενίτης', 'Parnassou 16, Patra', '[\"supermarket\",\"grocery_or_supermarket\",\"food\",\"point_of_interest\",\"store\",\"establishment\"]', 4.5, 725, 63, '[20,20]'),
('ChIJWz0kmCU2XhMR4zd8MYHwoOQ', 'Σταματόπουλος Βασίλειος - Ο Γερμανός', 'Voriou Ipirou 139, Patra', '[\"car_repair\",\"point_of_interest\",\"store\",\"establishment\"]', 4.9, 18, 0, 'null'),
('ChIJJU-orzo2XhMRWpzclnuGfzw', 'Φραγκάκης ΟΕ', 'Souniou 119, Patra', '[\"liquor_store\",\"food\",\"point_of_interest\",\"store\",\"establishment\"]', 5, 7, 0, 'null');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `place_coordinates`
--

CREATE TABLE `place_coordinates` (
  `namecoor` varchar(200) NOT NULL,
  `latitude` decimal(9,6) NOT NULL,
  `longtitude` decimal(9,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `place_coordinates`
--

INSERT INTO `place_coordinates` (`namecoor`, `latitude`, `longtitude`) VALUES
('Ελληνικά Ταχυδρομεία (ΕΛΤΑ)', '38.249804', '21.738939'),
('B.M.G. RENTACAR', '38.250647', '21.737284'),
('eCig Hellas Ηλεκτρονικο Τσιγαρο - Πάτρα', '38.249663', '21.739051'),
('spelectronics.gr - ΗΛΕΚΤΡΟΝΙΚΑ ΗΛΕΚΤΡΟΛΟΓΙΚΑ ΠΑΤΡΑΣ', '38.250167', '21.739824'),
('Κατσαρόλα της Τούλας', '38.249982', '21.737961'),
('Zolotas S.A.', '38.250109', '21.737892'),
('ΑΝΑΣΤΑΣΟΠΟΥΛΟΣ ΙΩΑΝΝΗΣ', '38.249649', '21.739919'),
('Bocas', '38.250426', '21.738541'),
('Flocafe', '38.237683', '21.725936'),
('Petite Boutique', '38.236791', '21.725914'),
('Goody s Burger House', '38.237977', '21.725992'),
('DIVINE CAFE', '38.231571', '21.729395'),
('Patras South Park - Notio Parko Patras', '38.234853', '21.724396'),
('Coffeebox Str', '38.234976', '21.725324'),
('GroupTime Fitness', '38.233805', '21.725142'),
('CyberArena Internet Cafe', '38.236185', '21.730118'),
('Φραγκάκης ΟΕ', '38.229903', '21.726205'),
('liberis ψωμι-καφες-γλυκο', '38.230344', '21.727980'),
('JUMBO', '38.237388', '21.726374'),
('ΑΡΤΟΓΕΥΣΕΙΣ ΑΝΔΡΙΚΟΠΟΥΛΟΣ ΧΑΡ. & ΣΙΑ Ο.Ε.', '38.238771', '21.730622'),
('Αρτο...Ποίηση', '38.233347', '21.726670'),
('Coffee stay', '38.237312', '21.730291'),
('Coffee Island', '38.234149', '21.727944'),
('Σταματόπουλος Βασίλειος - Ο Γερμανός', '38.233312', '21.727062'),
('ComTech Systems Pc-Δίκτυα-Software-Service', '38.239343', '21.728349'),
('Media Markt Πάτρα', '38.237736', '21.726253'),
('Galaxias', '38.236077', '21.733762'),
('Καφέ \"Πνύκα\"', '38.233274', '21.733876'),
('Αχαϊκό Εντελβάις', '38.232962', '21.732502'),
('ΝΤΟΥΒΑΣ ΑΘΑΝΑΣΙΟΣ', '38.233711', '21.732866'),
('The Juice Bar', '38.237044', '21.736921'),
('PHARMACY Damvounelis G. Kon / nos', '38.231054', '21.743145'),
('WODBOX', '38.230732', '21.742805'),
('SPORTS HOUSE', '38.237107', '21.743891'),
('Ζαχαροπλαστείο Γιώργος', '38.237264', '21.743359'),
('Piraeus Bank', '38.229650', '21.741274'),
('Gitsis Konstantinos', '38.235927', '21.739955'),
('Way Out Cafe', '38.238455', '21.739541'),
('Moccup', '38.239736', '21.742318'),
('Max Perry', '38.233195', '21.745112'),
('Et Cafe', '38.233020', '21.745034'),
('Coffee Amargo', '38.233572', '21.745545'),
('Kokois George', '38.233727', '21.745487'),
('Eurobank', '38.235663', '21.746065'),
('MILOS', '38.239342', '21.745324'),
('Coffeebrands', '38.238710', '21.745257'),
('Cooper Coffee & Snack', '38.238154', '21.745379'),
('Kotsokolos Konstantinos', '38.237857', '21.744769'),
('εν σωματι', '38.232698', '21.730792'),
('Cafe Ανδρέας', '38.232401', '21.729520'),
('Πασαγιάννης Όμηρος', '38.231329', '21.731551'),
('MY COFFEE', '38.235785', '21.730046'),
('Μπουκέτο Μπαλόνια', '38.235731', '21.727859'),
('Ανδρικόπουλος Super Market', '38.237879', '21.730542'),
('NIKOLOPOULOS PANAGIOTIS \"TO PARADOSIAKO PSOMI\"', '38.236769', '21.730319'),
('Σκλαβενίτης', '38.232675', '21.728163'),
('My market', '38.239267', '21.726265'),
('La Taste Ζαχαροπλαστείο', '38.229061', '21.734351'),
('Play Opap E. Βενιζέλου 65', '38.232847', '21.731731'),
('ΓΑΣΠΑΡΙΝΑΤΟΥ ΠΑΥΛΙΝΑ ΘΕΟΦΑΝΗΣ', '38.232564', '21.740723'),
('Μπαρμπέρικο - Barber Shop', '38.237287', '21.736776'),
('Γιαννης Χριστοπουλος ΚΡΕΟΠΩΛΕΙΟ', '38.238776', '21.743672'),
('Nina Cafe Bar', '38.238066', '21.739193'),
('O ΛΕΩΝΙΔΑΣ & OI 300', '38.233194', '21.743157'),
('Coffee Lab ΠΑΠΑΝΔΡΕΟΥ 49 ΠΑΤΡΑ', '38.233885', '21.745863'),
('Μυλωνάς Ζαχαροπλαστείο', '38.234052', '21.745706'),
('Tip Top', '38.238516', '21.744455'),
('Our Great Circus', '38.236515', '21.726431'),
('Grill house πατρα', '38.233407', '21.731273');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `place_populartimes`
--

CREATE TABLE `place_populartimes` (
  `namepop` varchar(200) NOT NULL,
  `day` varchar(200) NOT NULL,
  `data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `place_populartimes`
--

INSERT INTO `place_populartimes` (`namepop`, `day`, `data`) VALUES
('Ελληνικά Ταχυδρομεία (ΕΛΤΑ)', 'Monday', '[0,0,0,0,0,0,0,22,47,71,83,89,90,80,58,0,0,0,0,0,0,0,0,0]'),
('Ελληνικά Ταχυδρομεία (ΕΛΤΑ)', 'Tuesday', '[0,0,0,0,0,0,0,30,63,88,92,90,90,81,56,0,0,0,0,0,0,0,0,0]'),
('Ελληνικά Ταχυδρομεία (ΕΛΤΑ)', 'Wednesday', '[0,0,0,0,0,0,0,25,59,84,91,94,100,90,64,0,0,0,0,0,0,0,0,0]'),
('Ελληνικά Ταχυδρομεία (ΕΛΤΑ)', 'Thursday', '[0,0,0,0,0,0,0,10,40,80,97,86,87,85,50,0,0,0,0,0,0,0,0,0]'),
('Ελληνικά Ταχυδρομεία (ΕΛΤΑ)', 'Friday', '[0,0,0,0,0,0,0,19,44,51,49,66,92,90,60,0,0,0,0,0,0,0,0,0]'),
('Ελληνικά Ταχυδρομεία (ΕΛΤΑ)', 'Saturday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('Ελληνικά Ταχυδρομεία (ΕΛΤΑ)', 'Sunday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('B.M.G. RENTACAR', 'Monday', '[0,0,0,0,0,0,0,0,0,44,55,51,41,24,0,0,0,0,0,0,0,0,0,0]'),
('B.M.G. RENTACAR', 'Tuesday', '[0,0,0,0,0,0,0,0,0,48,62,51,27,10,0,0,0,3,10,0,0,0,0,0]'),
('B.M.G. RENTACAR', 'Wednesday', '[0,0,0,0,0,0,0,0,0,58,72,55,24,0,0,0,0,0,3,10,0,0,0,0]'),
('B.M.G. RENTACAR', 'Thursday', '[0,0,0,0,0,0,0,0,0,55,72,55,27,6,0,0,0,6,13,13,0,0,0,0]'),
('B.M.G. RENTACAR', 'Friday', '[0,0,0,0,0,0,0,0,0,72,100,75,44,17,0,0,0,0,3,3,0,0,0,0]'),
('B.M.G. RENTACAR', 'Saturday', '[0,0,0,0,0,0,0,0,0,41,65,51,17,0,0,0,0,0,0,0,0,0,0,0]'),
('B.M.G. RENTACAR', 'Sunday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('eCig Hellas Ηλεκτρονικο Τσιγαρο - Πάτρα', 'Monday', '[0,0,0,0,0,0,0,0,0,49,80,100,92,63,33,0,0,0,0,0,0,0,0,0]'),
('eCig Hellas Ηλεκτρονικο Τσιγαρο - Πάτρα', 'Tuesday', '[0,0,0,0,0,0,0,0,0,31,49,59,56,40,22,12,14,31,52,56,36,0,0,0]'),
('eCig Hellas Ηλεκτρονικο Τσιγαρο - Πάτρα', 'Wednesday', '[0,0,0,0,0,0,0,0,0,12,31,50,49,28,10,0,0,0,0,0,0,0,0,0]'),
('eCig Hellas Ηλεκτρονικο Τσιγαρο - Πάτρα', 'Thursday', '[0,0,0,0,0,0,0,0,0,35,54,66,64,49,29,14,8,21,56,64,31,0,0,0]'),
('eCig Hellas Ηλεκτρονικο Τσιγαρο - Πάτρα', 'Friday', '[0,0,0,0,0,0,0,0,0,42,68,78,66,42,19,8,14,42,71,64,33,0,0,0]'),
('eCig Hellas Ηλεκτρονικο Τσιγαρο - Πάτρα', 'Saturday', '[0,0,0,0,0,0,0,0,0,7,22,49,68,61,36,0,0,0,0,0,0,0,0,0]'),
('eCig Hellas Ηλεκτρονικο Τσιγαρο - Πάτρα', 'Sunday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('spelectronics.gr - ΗΛΕΚΤΡΟΝΙΚΑ ΗΛΕΚΤΡΟΛΟΓΙΚΑ ΠΑΤΡΑΣ', 'Monday', '[0,0,0,0,0,0,0,0,0,14,59,54,59,64,28,0,0,0,0,0,0,0,0,0]'),
('spelectronics.gr - ΗΛΕΚΤΡΟΝΙΚΑ ΗΛΕΚΤΡΟΛΟΓΙΚΑ ΠΑΤΡΑΣ', 'Tuesday', '[0,0,0,0,0,0,0,0,0,9,52,80,95,95,0,0,0,28,64,59,21,0,0,0]'),
('spelectronics.gr - ΗΛΕΚΤΡΟΝΙΚΑ ΗΛΕΚΤΡΟΛΟΓΙΚΑ ΠΑΤΡΑΣ', 'Wednesday', '[0,0,0,0,0,0,0,0,0,19,52,88,100,78,40,0,0,0,0,0,0,0,0,0]'),
('spelectronics.gr - ΗΛΕΚΤΡΟΝΙΚΑ ΗΛΕΚΤΡΟΛΟΓΙΚΑ ΠΑΤΡΑΣ', 'Thursday', '[0,0,0,0,0,0,0,0,0,7,21,57,92,88,0,0,0,54,64,40,14,0,0,0]'),
('spelectronics.gr - ΗΛΕΚΤΡΟΝΙΚΑ ΗΛΕΚΤΡΟΛΟΓΙΚΑ ΠΑΤΡΑΣ', 'Friday', '[0,0,0,0,0,0,0,0,0,30,57,73,71,50,0,0,0,21,26,26,23,0,0,0]'),
('spelectronics.gr - ΗΛΕΚΤΡΟΝΙΚΑ ΗΛΕΚΤΡΟΛΟΓΙΚΑ ΠΑΤΡΑΣ', 'Saturday', '[0,0,0,0,0,0,0,0,0,40,73,97,97,73,40,0,0,0,0,0,0,0,0,0]'),
('spelectronics.gr - ΗΛΕΚΤΡΟΝΙΚΑ ΗΛΕΚΤΡΟΛΟΓΙΚΑ ΠΑΤΡΑΣ', 'Sunday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('Κατσαρόλα της Τούλας', 'Monday', '[0,0,0,0,0,0,0,0,0,0,0,12,25,39,43,33,20,12,9,7,0,0,0,0]'),
('Κατσαρόλα της Τούλας', 'Tuesday', '[0,0,0,0,0,0,0,0,0,0,0,10,21,45,66,62,37,17,14,19,0,0,0,0]'),
('Κατσαρόλα της Τούλας', 'Wednesday', '[0,0,0,0,0,0,0,0,0,0,0,17,37,60,68,53,32,19,12,9,0,0,0,0]'),
('Κατσαρόλα της Τούλας', 'Thursday', '[0,0,0,0,0,0,0,0,0,0,0,22,53,91,100,72,41,27,22,15,0,0,0,0]'),
('Κατσαρόλα της Τούλας', 'Friday', '[0,0,0,0,0,0,0,0,0,0,0,14,39,80,100,72,31,11,10,13,0,0,0,0]'),
('Κατσαρόλα της Τούλας', 'Saturday', '[0,0,0,0,0,0,0,0,0,0,0,12,21,43,64,56,30,12,6,3,0,0,0,0]'),
('Κατσαρόλα της Τούλας', 'Sunday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('Zolotas S.A.', 'Monday', '[0,0,0,0,0,0,0,0,0,60,76,72,74,84,42,0,0,0,0,0,0,0,0,0]'),
('Zolotas S.A.', 'Tuesday', '[0,0,0,0,0,0,0,0,0,70,76,68,80,86,0,0,0,52,88,100,72,0,0,0]'),
('Zolotas S.A.', 'Wednesday', '[0,0,0,0,0,0,0,0,0,60,78,76,72,56,32,0,0,0,0,0,0,0,0,0]'),
('Zolotas S.A.', 'Thursday', '[0,0,0,0,0,0,0,0,0,46,62,64,74,62,0,0,0,34,68,76,46,0,0,0]'),
('Zolotas S.A.', 'Friday', '[0,0,0,0,0,0,0,0,0,52,82,90,100,44,0,0,0,36,88,98,50,0,0,0]'),
('Zolotas S.A.', 'Saturday', '[0,0,0,0,0,0,0,0,0,36,68,88,84,56,0,0,0,0,0,0,0,0,0,0]'),
('Zolotas S.A.', 'Sunday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('ΑΝΑΣΤΑΣΟΠΟΥΛΟΣ ΙΩΑΝΝΗΣ', 'Monday', '[0,0,0,0,0,0,0,0,35,81,84,50,52,66,37,0,0,0,0,0,0,0,0,0]'),
('ΑΝΑΣΤΑΣΟΠΟΥΛΟΣ ΙΩΑΝΝΗΣ', 'Tuesday', '[0,0,0,0,0,0,0,0,20,50,84,100,83,49,22,0,0,22,32,32,20,0,0,0]'),
('ΑΝΑΣΤΑΣΟΠΟΥΛΟΣ ΙΩΑΝΝΗΣ', 'Wednesday', '[0,0,0,0,0,0,0,0,45,66,67,84,100,83,45,0,0,0,0,0,0,0,0,0]'),
('ΑΝΑΣΤΑΣΟΠΟΥΛΟΣ ΙΩΑΝΝΗΣ', 'Thursday', '[0,0,0,0,0,0,0,0,32,60,75,67,45,30,24,0,0,32,30,28,22,0,0,0]'),
('ΑΝΑΣΤΑΣΟΠΟΥΛΟΣ ΙΩΑΝΝΗΣ', 'Friday', '[0,0,0,0,0,0,0,0,16,50,75,69,64,54,30,0,0,24,32,32,24,0,0,0]'),
('ΑΝΑΣΤΑΣΟΠΟΥΛΟΣ ΙΩΑΝΝΗΣ', 'Saturday', '[0,0,0,0,0,0,0,0,16,30,37,43,45,37,20,0,0,0,0,0,0,0,0,0]'),
('ΑΝΑΣΤΑΣΟΠΟΥΛΟΣ ΙΩΑΝΝΗΣ', 'Sunday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('Bocas', 'Monday', '[20,10,0,0,0,0,0,0,0,9,12,15,17,16,13,9,6,5,6,7,7,7,7,6]'),
('Bocas', 'Tuesday', '[6,6,0,0,0,0,0,0,0,10,11,12,12,11,10,9,8,8,10,14,21,27,31,30]'),
('Bocas', 'Wednesday', '[25,18,0,0,0,0,0,0,0,11,12,13,12,11,9,7,5,4,3,6,13,27,42,50]'),
('Bocas', 'Thursday', '[43,29,0,0,0,0,0,0,0,9,12,15,16,14,10,6,4,5,10,19,30,39,42,37]'),
('Bocas', 'Friday', '[26,15,0,0,0,0,0,0,4,6,8,9,9,9,8,7,6,6,9,17,32,51,71,83]'),
('Bocas', 'Saturday', '[78,57,0,0,0,0,0,0,10,12,14,14,14,13,11,9,7,6,7,12,27,52,82,100]'),
('Bocas', 'Sunday', '[95,70,0,0,0,0,0,0,0,8,8,9,9,8,8,7,7,7,7,9,17,28,35,31]'),
('Flocafe', 'Monday', '[0,0,0,0,0,0,0,0,19,43,56,47,31,23,21,18,16,17,24,30,31,23,13,5]'),
('Flocafe', 'Tuesday', '[0,0,0,0,0,0,0,0,19,44,59,49,25,14,19,29,28,16,13,29,44,25,5,0]'),
('Flocafe', 'Wednesday', '[0,0,0,0,0,0,0,0,12,21,32,36,33,24,16,12,15,22,30,33,29,20,11,5]'),
('Flocafe', 'Thursday', '[0,0,0,0,0,0,0,0,17,31,21,27,28,24,18,16,20,30,37,39,33,21,11,4]'),
('Flocafe', 'Friday', '[0,0,0,0,0,0,0,0,16,28,39,47,46,37,25,15,7,7,16,30,41,38,23,9]'),
('Flocafe', 'Saturday', '[0,0,0,0,0,0,0,0,7,16,22,33,66,100,90,46,14,9,29,61,70,45,16,2]'),
('Flocafe', 'Sunday', '[0,0,0,0,0,0,0,0,0,0,29,49,56,45,27,17,25,47,67,73,59,36,0,0]'),
('Petite Boutique', 'Monday', '[0,0,0,0,0,0,0,0,0,0,4,4,8,9,0,0,0,4,11,20,25,22,13,0]'),
('Petite Boutique', 'Tuesday', '[0,0,0,0,0,0,0,0,0,0,1,2,2,2,0,0,0,4,12,21,23,16,7,0]'),
('Petite Boutique', 'Wednesday', '[0,0,0,0,0,0,0,0,0,0,12,12,11,8,0,0,0,13,22,25,20,11,4,0]'),
('Petite Boutique', 'Thursday', '[0,0,0,0,0,0,0,0,0,0,8,11,12,10,0,0,0,17,25,33,32,20,7,0]'),
('Petite Boutique', 'Friday', '[0,0,0,0,0,0,0,0,0,0,6,8,7,4,0,0,0,12,23,35,40,32,16,0]'),
('Petite Boutique', 'Saturday', '[0,0,0,0,0,0,0,0,0,0,4,7,11,14,18,22,28,39,56,69,67,49,27,0]'),
('Petite Boutique', 'Sunday', '[0,0,0,0,0,0,0,0,0,0,13,24,34,39,37,29,25,41,77,100,78,36,9,0]'),
('Goody s Burger House', 'Monday', '[0,0,0,0,0,0,0,0,0,0,0,0,41,68,82,72,54,57,83,100,78,38,10,1]'),
('Goody s Burger House', 'Tuesday', '[0,0,0,0,0,0,0,0,0,0,0,0,49,74,77,57,38,44,73,93,78,41,12,1]'),
('Goody s Burger House', 'Wednesday', '[0,0,0,0,0,0,0,0,0,0,0,0,47,65,69,58,44,47,71,86,65,29,6,1]'),
('Goody s Burger House', 'Thursday', '[0,0,0,0,0,0,0,0,0,0,0,0,42,61,61,49,44,54,69,73,62,40,20,6]'),
('Goody s Burger House', 'Friday', '[0,0,0,0,0,0,0,0,0,0,0,0,38,62,65,49,41,52,73,84,74,50,24,7]'),
('Goody s Burger House', 'Saturday', '[0,0,0,0,0,0,0,0,0,0,0,0,52,81,93,84,66,62,70,72,63,49,33,16]'),
('Goody s Burger House', 'Sunday', '[0,0,0,0,0,0,0,0,0,0,0,0,9,16,20,17,14,15,25,37,41,31,16,4]'),
('DIVINE CAFE', 'Monday', '[16,0,0,0,0,0,15,22,28,33,37,37,33,30,27,27,30,35,40,42,42,37,28,20]'),
('DIVINE CAFE', 'Tuesday', '[13,0,0,0,0,0,8,16,30,45,54,54,45,33,28,28,33,40,45,47,44,35,27,18]'),
('DIVINE CAFE', 'Wednesday', '[11,0,0,0,0,0,15,23,33,44,49,50,45,38,30,25,27,35,45,54,55,49,37,23]'),
('DIVINE CAFE', 'Thursday', '[13,0,0,0,0,0,16,27,37,47,50,47,40,32,27,28,35,45,55,59,55,45,30,18]'),
('DIVINE CAFE', 'Friday', '[10,0,0,0,0,0,11,23,37,47,49,44,37,32,33,37,40,40,44,49,52,50,40,27]'),
('DIVINE CAFE', 'Saturday', '[13,0,0,0,0,0,6,15,28,47,69,88,100,100,88,72,57,47,40,38,37,33,28,22]'),
('DIVINE CAFE', 'Sunday', '[16,0,0,0,0,0,3,6,10,13,23,49,54,27,11,11,20,28,37,44,44,40,33,25]'),
('Patras South Park - Notio Parko Patras', 'Monday', '[1,1,1,1,1,1,1,2,6,11,16,18,17,13,9,8,13,26,43,54,52,37,19,6]'),
('Patras South Park - Notio Parko Patras', 'Tuesday', '[1,1,1,1,1,1,1,1,4,8,12,15,15,14,11,10,13,23,38,49,47,34,17,4]'),
('Patras South Park - Notio Parko Patras', 'Wednesday', '[1,1,1,1,1,1,0,4,10,17,23,26,24,19,13,10,15,29,48,60,56,38,19,6]'),
('Patras South Park - Notio Parko Patras', 'Thursday', '[1,1,1,1,1,1,1,3,8,14,20,24,25,22,17,13,17,33,53,63,53,29,9,1]'),
('Patras South Park - Notio Parko Patras', 'Friday', '[1,1,1,1,1,1,1,1,5,10,15,17,17,15,11,10,14,26,42,54,54,46,36,27]'),
('Patras South Park - Notio Parko Patras', 'Saturday', '[19,10,3,1,2,1,1,1,5,14,25,33,37,36,33,31,35,44,58,75,91,100,98,86]'),
('Patras South Park - Notio Parko Patras', 'Sunday', '[67,45,26,11,1,1,1,0,6,19,39,56,59,48,34,31,44,65,79,77,58,34,15,4]'),
('Coffeebox Str', 'Monday', '[0,0,0,0,0,0,0,11,36,58,59,60,61,47,25,11,8,10,13,15,15,12,0,0]'),
('Coffeebox Str', 'Tuesday', '[0,0,0,0,0,0,0,17,32,47,56,55,45,29,16,7,6,10,18,22,19,11,0,0]'),
('Coffeebox Str', 'Wednesday', '[0,0,0,0,0,0,0,11,64,92,52,43,40,31,19,8,4,8,24,38,34,17,0,0]'),
('Coffeebox Str', 'Thursday', '[0,0,0,0,0,0,0,13,44,70,63,46,48,39,19,10,11,16,18,18,17,12,0,0]'),
('Coffeebox Str', 'Friday', '[0,0,0,0,0,0,0,23,70,100,65,34,30,31,31,29,24,20,15,10,7,4,0,0]'),
('Coffeebox Str', 'Saturday', '[0,0,0,0,0,0,0,2,5,13,24,33,33,26,16,8,6,7,9,11,10,8,0,0]'),
('Coffeebox Str', 'Sunday', '[0,0,0,0,0,0,0,0,5,18,23,12,8,7,6,7,11,16,18,16,11,7,0,0]'),
('GroupTime Fitness', 'Monday', '[0,0,0,0,0,0,0,0,0,7,37,34,24,0,0,0,0,16,52,96,100,59,19,0]'),
('GroupTime Fitness', 'Tuesday', '[0,0,0,0,0,0,0,0,0,16,30,30,16,0,0,0,0,14,41,74,83,56,24,0]'),
('GroupTime Fitness', 'Wednesday', '[0,0,0,0,0,0,0,0,0,10,18,24,22,0,0,0,0,32,68,94,81,44,16,0]'),
('GroupTime Fitness', 'Thursday', '[0,0,0,0,0,0,0,0,0,16,26,29,19,0,0,0,0,14,34,57,61,43,19,0]'),
('GroupTime Fitness', 'Friday', '[0,0,0,0,0,0,0,0,0,8,18,23,16,0,0,0,0,7,39,83,71,25,3,0]'),
('GroupTime Fitness', 'Saturday', '[0,0,0,0,0,0,0,0,0,7,16,25,27,0,0,0,0,0,0,0,0,0,0,0]'),
('GroupTime Fitness', 'Sunday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('CyberArena Internet Cafe', 'Monday', '[13,8,2,2,2,2,2,10,27,45,59,64,62,48,37,29,27,29,32,32,29,24,18,10]'),
('CyberArena Internet Cafe', 'Tuesday', '[5,2,2,2,2,2,2,2,13,37,64,81,78,59,35,16,8,10,16,16,10,2,2,2]'),
('CyberArena Internet Cafe', 'Wednesday', '[2,2,2,2,2,2,2,2,2,40,78,100,91,62,27,5,2,16,32,45,45,35,16,2]'),
('CyberArena Internet Cafe', 'Thursday', '[2,2,21,10,2,2,2,2,2,29,37,37,51,70,75,67,48,35,27,27,29,32,32,29]'),
('CyberArena Internet Cafe', 'Friday', '[21,13,2,2,2,2,2,2,35,94,97,56,40,45,51,45,35,21,13,10,8,5,2,2]'),
('CyberArena Internet Cafe', 'Saturday', '[2,2,2,2,2,2,2,2,2,2,29,45,51,59,54,32,10,5,8,10,13,13,10,5]'),
('CyberArena Internet Cafe', 'Sunday', '[2,2,2,2,2,2,2,2,2,2,2,10,18,27,32,35,35,35,35,32,29,27,24,18]'),
('Φραγκάκης ΟΕ', 'Monday', '[0,0,0,0,0,0,0,0,0,51,80,61,44,61,76,72,51,0,0,0,0,0,0,0]'),
('Φραγκάκης ΟΕ', 'Tuesday', '[0,0,0,0,0,0,0,0,0,74,72,46,57,80,89,74,46,0,0,0,0,0,0,0]'),
('Φραγκάκης ΟΕ', 'Wednesday', '[0,0,0,0,0,0,0,0,0,65,80,59,72,82,82,72,55,0,0,0,0,0,0,0]'),
('Φραγκάκης ΟΕ', 'Thursday', '[0,0,0,0,0,0,0,0,0,63,72,34,53,80,89,68,36,0,0,0,0,0,0,0]'),
('Φραγκάκης ΟΕ', 'Friday', '[0,0,0,0,0,0,0,0,0,72,100,51,57,78,74,48,74,0,0,0,0,0,0,0]'),
('Φραγκάκης ΟΕ', 'Saturday', '[0,0,0,0,0,0,0,0,0,55,76,59,48,55,72,91,85,0,0,0,0,0,0,0]'),
('Φραγκάκης ΟΕ', 'Sunday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('liberis ψωμι-καφες-γλυκο', 'Monday', '[0,0,0,0,0,6,17,36,60,73,78,89,100,82,45,21,19,26,36,45,47,45,36,0]'),
('liberis ψωμι-καφες-γλυκο', 'Tuesday', '[0,0,0,0,0,15,23,32,39,47,58,69,76,71,54,32,21,23,43,60,60,41,19,0]'),
('liberis ψωμι-καφες-γλυκο', 'Wednesday', '[0,0,0,0,0,10,21,39,58,78,91,91,78,58,39,26,23,30,45,54,54,41,23,0]'),
('liberis ψωμι-καφες-γλυκο', 'Thursday', '[0,0,0,0,0,13,21,30,41,50,56,56,54,45,36,28,23,23,28,34,36,30,19,0]'),
('liberis ψωμι-καφες-γλυκο', 'Friday', '[0,0,0,0,0,10,13,19,34,54,76,86,82,63,41,28,26,36,56,67,56,36,19,0]'),
('liberis ψωμι-καφες-γλυκο', 'Saturday', '[0,0,0,0,0,10,15,19,28,39,54,67,71,65,50,39,34,36,43,50,52,47,39,0]'),
('liberis ψωμι-καφες-γλυκο', 'Sunday', '[0,0,0,0,0,8,10,17,32,56,80,86,71,45,26,17,21,39,58,60,43,23,13,0]'),
('JUMBO', 'Monday', '[0,0,0,0,0,0,0,0,0,0,34,46,52,49,40,33,39,56,71,66,44,0,0,0]'),
('JUMBO', 'Tuesday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('JUMBO', 'Wednesday', '[0,0,0,0,0,0,0,0,0,0,33,43,44,41,41,40,38,45,73,88,54,0,0,0]'),
('JUMBO', 'Thursday', '[0,0,0,0,0,0,0,0,0,0,28,38,42,39,30,24,29,49,68,65,41,0,0,0]'),
('JUMBO', 'Friday', '[0,0,0,0,0,0,0,0,0,0,33,46,46,42,39,34,31,48,78,82,49,0,0,0]'),
('JUMBO', 'Saturday', '[0,0,0,0,0,0,0,0,0,17,36,58,75,75,62,52,66,96,100,64,0,0,0,0]'),
('JUMBO', 'Sunday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('ΑΡΤΟΓΕΥΣΕΙΣ ΑΝΔΡΙΚΟΠΟΥΛΟΣ ΧΑΡ. & ΣΙΑ Ο.Ε.', 'Monday', '[0,0,0,0,0,0,30,46,54,52,45,36,33,32,33,32,30,28,25,21,16,0,0,0]'),
('ΑΡΤΟΓΕΥΣΕΙΣ ΑΝΔΡΙΚΟΠΟΥΛΟΣ ΧΑΡ. & ΣΙΑ Ο.Ε.', 'Tuesday', '[0,0,0,0,0,0,54,100,83,47,42,46,45,40,36,35,32,30,26,23,19,0,0,0]'),
('ΑΡΤΟΓΕΥΣΕΙΣ ΑΝΔΡΙΚΟΠΟΥΛΟΣ ΧΑΡ. & ΣΙΑ Ο.Ε.', 'Wednesday', '[0,0,0,0,0,0,38,59,66,59,57,70,70,50,35,30,29,28,25,23,19,0,0,0]'),
('ΑΡΤΟΓΕΥΣΕΙΣ ΑΝΔΡΙΚΟΠΟΥΛΟΣ ΧΑΡ. & ΣΙΑ Ο.Ε.', 'Thursday', '[0,0,0,0,0,0,25,47,67,74,70,71,66,46,32,30,32,30,29,25,21,0,0,0]'),
('ΑΡΤΟΓΕΥΣΕΙΣ ΑΝΔΡΙΚΟΠΟΥΛΟΣ ΧΑΡ. & ΣΙΑ Ο.Ε.', 'Friday', '[0,0,0,0,0,0,35,46,53,57,56,52,45,38,32,29,29,28,26,23,19,0,0,0]'),
('ΑΡΤΟΓΕΥΣΕΙΣ ΑΝΔΡΙΚΟΠΟΥΛΟΣ ΧΑΡ. & ΣΙΑ Ο.Ε.', 'Saturday', '[0,0,0,0,0,0,36,64,56,40,56,88,88,59,38,29,25,21,15,11,8,0,0,0]'),
('ΑΡΤΟΓΕΥΣΕΙΣ ΑΝΔΡΙΚΟΠΟΥΛΟΣ ΧΑΡ. & ΣΙΑ Ο.Ε.', 'Sunday', '[0,0,0,0,0,0,0,0,0,0,0,15,19,18,0,0,0,0,0,0,0,0,0,0]'),
('Αρτο...Ποίηση', 'Monday', '[0,0,0,0,0,0,9,19,36,57,78,88,82,69,53,48,51,59,61,53,40,28,0,0]'),
('Αρτο...Ποίηση', 'Tuesday', '[0,0,0,0,0,0,17,25,38,53,69,76,71,57,42,32,30,36,42,44,36,25,0,0]'),
('Αρτο...Ποίηση', 'Wednesday', '[0,0,0,0,0,0,7,13,23,40,59,75,76,69,57,50,53,65,75,71,55,36,0,0]'),
('Αρτο...Ποίηση', 'Thursday', '[0,0,0,0,0,0,11,19,28,40,50,59,61,59,51,48,55,76,100,98,67,32,0,0]'),
('Αρτο...Ποίηση', 'Friday', '[0,0,0,0,0,0,9,13,25,36,51,59,59,53,44,40,46,55,59,51,36,21,0,0]'),
('Αρτο...Ποίηση', 'Saturday', '[0,0,0,0,0,0,3,11,25,48,76,96,96,82,65,53,50,46,42,36,30,25,0,0]'),
('Αρτο...Ποίηση', 'Sunday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('Coffee stay', 'Monday', '[0,0,0,0,0,0,22,39,55,62,57,43,28,20,19,24,30,34,37,33,27,20,0,0]'),
('Coffee stay', 'Tuesday', '[0,0,0,0,0,0,8,37,66,45,21,34,50,36,18,19,32,49,60,59,46,30,0,0]'),
('Coffee stay', 'Wednesday', '[0,0,0,0,0,0,20,38,63,86,100,95,77,53,31,20,20,30,43,49,45,32,0,0]'),
('Coffee stay', 'Thursday', '[0,0,0,0,0,0,4,26,63,60,28,26,37,33,25,25,31,37,42,42,39,34,0,0]'),
('Coffee stay', 'Friday', '[0,0,0,0,0,0,13,31,59,72,56,34,26,25,27,30,37,46,54,55,45,32,0,0]'),
('Coffee stay', 'Saturday', '[0,0,0,0,0,0,14,19,27,36,45,50,50,43,32,24,19,21,28,34,34,26,0,0]'),
('Coffee stay', 'Sunday', '[0,0,0,0,0,0,4,7,13,22,30,31,25,18,15,18,20,22,22,20,15,10,0,0]'),
('Coffee Island', 'Monday', '[0,0,0,0,0,0,16,33,54,71,77,73,66,63,62,61,59,56,53,50,47,0,0,0]'),
('Coffee Island', 'Tuesday', '[0,0,0,0,0,0,21,84,53,47,62,71,72,69,66,65,67,69,68,64,56,0,0,0]'),
('Coffee Island', 'Wednesday', '[0,0,0,0,0,0,13,53,95,85,75,86,93,89,77,64,55,51,50,49,46,0,0,0]'),
('Coffee Island', 'Thursday', '[0,0,0,0,0,0,15,33,53,66,68,68,72,77,80,79,76,71,64,57,49,0,0,0]'),
('Coffee Island', 'Friday', '[0,0,0,0,0,0,17,54,95,93,69,61,65,69,70,70,72,73,74,71,64,0,0,0]'),
('Coffee Island', 'Saturday', '[0,0,0,0,0,0,11,29,49,58,61,72,90,100,95,80,67,61,60,60,57,0,0,0]'),
('Coffee Island', 'Sunday', '[0,0,0,0,0,0,9,16,24,34,42,48,50,0,0,0,0,0,0,0,0,0,0,0]'),
('Σταματόπουλος Βασίλειος - Ο Γερμανός', 'Monday', '[0,0,0,0,0,0,0,0,40,77,37,51,85,100,77,40,14,0,0,0,0,0,0,0]'),
('Σταματόπουλος Βασίλειος - Ο Γερμανός', 'Tuesday', '[0,0,0,0,0,0,0,0,37,51,66,92,100,88,59,33,14,0,0,0,0,0,0,0]'),
('Σταματόπουλος Βασίλειος - Ο Γερμανός', 'Wednesday', '[0,0,0,0,0,0,0,0,29,48,62,74,74,66,51,33,18,0,0,0,0,0,0,0]'),
('Σταματόπουλος Βασίλειος - Ο Γερμανός', 'Thursday', '[0,0,0,0,0,0,0,0,33,51,62,66,55,37,48,55,14,0,0,0,0,0,0,0]'),
('Σταματόπουλος Βασίλειος - Ο Γερμανός', 'Friday', '[0,0,0,0,0,0,0,0,33,66,55,48,48,44,48,44,14,0,0,0,0,0,0,0]'),
('Σταματόπουλος Βασίλειος - Ο Γερμανός', 'Saturday', '[0,0,0,0,0,0,0,0,33,55,59,81,62,25,7,0,0,0,0,0,0,0,0,0]'),
('Σταματόπουλος Βασίλειος - Ο Γερμανός', 'Sunday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('ComTech Systems Pc-Δίκτυα-Software-Service', 'Monday', '[0,0,0,0,0,0,0,0,0,17,52,82,76,47,17,0,0,0,0,0,0,0,0,0]'),
('ComTech Systems Pc-Δίκτυα-Software-Service', 'Tuesday', '[0,0,0,0,0,0,0,0,0,35,58,70,58,35,17,0,0,23,76,70,100,0,0,0]'),
('ComTech Systems Pc-Δίκτυα-Software-Service', 'Wednesday', '[0,0,0,0,0,0,0,0,0,23,52,76,76,58,29,0,0,0,0,0,0,0,0,0]'),
('ComTech Systems Pc-Δίκτυα-Software-Service', 'Thursday', '[0,0,0,0,0,0,0,0,0,29,47,58,58,47,35,0,0,35,35,35,35,0,0,0]'),
('ComTech Systems Pc-Δίκτυα-Software-Service', 'Friday', '[0,0,0,0,0,0,0,0,0,41,76,88,58,29,11,0,0,29,35,29,17,0,0,0]'),
('ComTech Systems Pc-Δίκτυα-Software-Service', 'Saturday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('ComTech Systems Pc-Δίκτυα-Software-Service', 'Sunday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('Media Markt Πάτρα', 'Monday', '[0,0,0,0,0,0,0,0,0,0,32,43,48,46,39,34,36,46,60,68,64,0,0,0]'),
('Media Markt Πάτρα', 'Tuesday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('Media Markt Πάτρα', 'Wednesday', '[0,0,0,0,0,0,0,0,0,0,32,41,46,43,35,28,28,42,62,75,69,0,0,0]'),
('Media Markt Πάτρα', 'Thursday', '[0,0,0,0,0,0,0,0,0,0,25,36,42,42,36,30,31,41,58,71,72,0,0,0]'),
('Media Markt Πάτρα', 'Friday', '[0,0,0,0,0,0,0,0,0,0,27,34,39,44,41,32,28,39,60,76,76,0,0,0]'),
('Media Markt Πάτρα', 'Saturday', '[0,0,0,0,0,0,0,0,0,11,25,43,58,63,57,48,49,65,88,100,0,0,0,0]'),
('Media Markt Πάτρα', 'Sunday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('Galaxias', 'Monday', '[0,0,0,0,0,0,0,0,19,44,71,89,88,73,57,52,58,67,70,62,46,0,0,0]'),
('Galaxias', 'Tuesday', '[0,0,0,0,0,0,0,0,25,42,61,77,86,85,74,60,52,56,65,62,43,0,0,0]'),
('Galaxias', 'Wednesday', '[0,0,0,0,0,0,0,0,26,46,68,86,92,82,65,52,50,59,68,66,50,0,0,0]'),
('Galaxias', 'Thursday', '[0,0,0,0,0,0,0,0,21,41,65,82,82,69,51,41,40,45,48,43,32,0,0,0]'),
('Galaxias', 'Friday', '[0,0,0,0,0,0,0,0,17,37,61,80,83,72,54,45,50,63,72,66,49,0,0,0]'),
('Galaxias', 'Saturday', '[0,0,0,0,0,0,0,0,23,47,74,94,100,89,66,45,38,51,64,54,0,0,0,0]'),
('Galaxias', 'Sunday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('Καφέ \"Πνύκα\"', 'Monday', '[0,0,0,0,0,0,0,10,10,19,53,95,91,48,25,21,25,29,34,36,40,42,42,42]'),
('Καφέ \"Πνύκα\"', 'Tuesday', '[0,0,0,0,0,0,0,14,19,42,76,82,53,25,19,21,25,29,34,38,40,42,44,42]'),
('Καφέ \"Πνύκα\"', 'Wednesday', '[0,0,0,0,0,0,0,10,21,51,80,85,57,25,8,4,8,8,12,21,29,40,48,55]'),
('Καφέ \"Πνύκα\"', 'Thursday', '[0,0,0,0,0,0,0,29,40,51,55,53,44,34,23,23,25,23,19,19,27,36,44,48]'),
('Καφέ \"Πνύκα\"', 'Friday', '[0,0,0,0,0,0,0,6,12,48,93,80,31,10,12,23,31,40,46,46,46,46,48,55]'),
('Καφέ \"Πνύκα\"', 'Saturday', '[0,0,0,0,0,0,0,25,27,34,55,85,93,72,44,29,27,25,25,29,40,68,85,68]'),
('Καφέ \"Πνύκα\"', 'Sunday', '[0,0,0,0,0,0,0,29,34,55,89,100,76,44,29,27,27,27,27,27,29,29,29,29]'),
('Αχαϊκό Εντελβάις', 'Monday', '[10,0,0,0,0,0,0,15,20,24,29,32,33,32,31,28,31,40,54,64,63,49,29,14]'),
('Αχαϊκό Εντελβάις', 'Tuesday', '[6,3,0,0,0,0,0,18,22,27,32,35,37,38,37,35,31,27,25,35,53,67,59,35]'),
('Αχαϊκό Εντελβάις', 'Wednesday', '[15,5,0,0,0,0,0,18,24,31,36,40,42,42,40,36,35,42,59,79,84,67,40,18]'),
('Αχαϊκό Εντελβάις', 'Thursday', '[6,2,0,0,0,0,0,19,25,33,42,51,59,61,51,37,29,36,59,87,98,83,51,24]'),
('Αχαϊκό Εντελβάις', 'Friday', '[9,2,0,0,0,0,0,15,20,25,31,33,35,33,29,25,20,19,28,49,72,72,49,22]'),
('Αχαϊκό Εντελβάις', 'Saturday', '[6,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,88,100,93,71,44]'),
('Αχαϊκό Εντελβάις', 'Sunday', '[22,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,75,83,71,48,24]'),
('ΝΤΟΥΒΑΣ ΑΘΑΝΑΣΙΟΣ', 'Monday', '[0,0,0,0,0,0,0,16,29,43,52,54,49,36,25,20,18,18,16,14,0,0,0,0]'),
('ΝΤΟΥΒΑΣ ΑΘΑΝΑΣΙΟΣ', 'Tuesday', '[0,0,0,0,0,0,0,9,18,32,47,54,49,34,20,10,16,36,49,29,0,0,0,0]'),
('ΝΤΟΥΒΑΣ ΑΘΑΝΑΣΙΟΣ', 'Wednesday', '[0,0,0,0,0,0,0,18,32,58,83,87,63,36,21,21,25,27,27,25,0,0,0,0]'),
('ΝΤΟΥΒΑΣ ΑΘΑΝΑΣΙΟΣ', 'Thursday', '[0,0,0,0,0,0,0,16,23,21,29,38,40,32,20,9,7,12,21,23,0,0,0,0]'),
('ΝΤΟΥΒΑΣ ΑΘΑΝΑΣΙΟΣ', 'Friday', '[0,0,0,0,0,0,0,25,25,20,27,49,43,21,14,16,18,18,18,16,0,0,0,0]'),
('ΝΤΟΥΒΑΣ ΑΘΑΝΑΣΙΟΣ', 'Saturday', '[0,0,0,0,0,0,0,10,21,50,92,100,65,38,29,25,23,0,0,0,0,0,0,0]'),
('ΝΤΟΥΒΑΣ ΑΘΑΝΑΣΙΟΣ', 'Sunday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('The Juice Bar', 'Monday', '[0,0,0,0,0,0,24,37,55,75,91,98,94,82,68,56,50,50,51,55,56,56,0,0]'),
('The Juice Bar', 'Tuesday', '[0,0,0,0,0,0,25,37,55,74,89,98,98,89,75,63,58,68,84,94,84,63,0,0]'),
('The Juice Bar', 'Wednesday', '[0,0,0,0,0,0,6,15,34,56,72,81,84,72,48,34,36,48,62,72,79,81,0,0]'),
('The Juice Bar', 'Thursday', '[0,0,0,0,0,0,15,24,37,53,68,81,86,84,75,65,56,63,84,100,93,67,0,0]'),
('The Juice Bar', 'Friday', '[0,0,0,0,0,0,17,29,43,56,74,91,100,89,68,51,46,50,58,63,67,65,0,0]'),
('The Juice Bar', 'Saturday', '[0,0,0,0,0,0,8,15,25,39,53,63,67,63,55,44,39,43,55,68,74,65,0,0]'),
('The Juice Bar', 'Sunday', '[0,0,0,0,0,0,29,41,53,62,67,67,60,50,41,36,32,34,39,44,48,50,0,0]'),
('PHARMACY Damvounelis G. Kon / nos', 'Monday', '[0,0,0,0,0,0,0,0,42,50,42,49,78,89,0,0,0,0,0,0,0,0,0,0]'),
('PHARMACY Damvounelis G. Kon / nos', 'Tuesday', '[0,0,0,0,0,0,0,0,36,50,59,75,84,71,47,29,28,47,75,92,82,0,0,0]'),
('PHARMACY Damvounelis G. Kon / nos', 'Wednesday', '[0,0,0,0,0,0,0,0,38,50,47,56,100,100,0,0,0,0,0,0,0,0,0,0]'),
('PHARMACY Damvounelis G. Kon / nos', 'Thursday', '[0,0,0,0,0,0,0,0,17,35,57,77,84,73,54,40,40,52,68,77,68,0,0,0]'),
('PHARMACY Damvounelis G. Kon / nos', 'Friday', '[0,0,0,0,0,0,0,0,28,47,63,73,80,75,59,45,45,59,75,75,57,0,0,0]'),
('PHARMACY Damvounelis G. Kon / nos', 'Saturday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('PHARMACY Damvounelis G. Kon / nos', 'Sunday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('WODBOX', 'Monday', '[0,0,0,0,0,0,0,0,0,0,11,16,20,24,25,27,28,37,56,77,77,55,0,0]'),
('WODBOX', 'Tuesday', '[0,0,0,0,0,0,0,0,0,0,19,25,27,28,25,18,16,29,53,70,65,43,0,0]'),
('WODBOX', 'Wednesday', '[0,0,0,0,0,0,0,0,0,0,22,30,33,29,22,17,23,48,81,100,86,53,0,0]'),
('WODBOX', 'Thursday', '[0,0,0,0,0,0,0,0,0,0,11,22,32,33,27,20,23,39,59,67,59,38,0,0]'),
('WODBOX', 'Friday', '[0,0,0,0,0,0,0,0,0,0,24,30,35,37,34,32,32,37,45,49,43,29,0,0]'),
('WODBOX', 'Saturday', '[0,0,0,0,0,0,0,0,0,0,18,30,37,29,0,0,0,0,0,0,0,0,0,0]'),
('WODBOX', 'Sunday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('SPORTS HOUSE', 'Monday', '[0,0,0,0,0,0,0,0,44,73,77,51,26,15,15,22,36,53,63,58,41,25,14,0]'),
('SPORTS HOUSE', 'Tuesday', '[0,0,0,0,0,0,0,0,15,20,22,22,19,15,14,21,42,70,88,79,52,25,8,0]'),
('SPORTS HOUSE', 'Wednesday', '[0,0,0,0,0,0,0,0,47,85,80,39,9,2,3,9,17,29,41,46,44,33,21,0]'),
('SPORTS HOUSE', 'Thursday', '[0,0,0,0,0,0,0,0,14,32,47,42,25,9,4,14,34,39,26,23,27,21,9,0]'),
('SPORTS HOUSE', 'Friday', '[0,0,0,0,0,0,0,0,73,95,100,86,60,35,16,8,14,38,67,69,40,14,2,0]'),
('SPORTS HOUSE', 'Saturday', '[0,0,0,0,0,0,0,0,5,8,11,14,15,15,14,13,13,13,11,9,0,0,0,0]'),
('SPORTS HOUSE', 'Sunday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('Ζαχαροπλαστείο Γιώργος', 'Monday', '[0,0,0,0,0,0,0,0,1,2,3,3,3,3,3,2,2,2,2,2,1,1,1,0]'),
('Ζαχαροπλαστείο Γιώργος', 'Tuesday', '[0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,2,2,2,1,0]'),
('Ζαχαροπλαστείο Γιώργος', 'Wednesday', '[0,0,0,0,0,0,0,0,1,1,1,1,2,3,2,1,0,0,1,2,2,1,0,0]'),
('Ζαχαροπλαστείο Γιώργος', 'Thursday', '[0,0,0,0,0,0,0,0,1,3,1,1,2,2,1,1,1,1,1,2,2,1,1,0]'),
('Ζαχαροπλαστείο Γιώργος', 'Friday', '[0,0,0,0,0,0,0,0,37,56,78,100,93,54,19,5,3,3,3,2,2,1,1,0]'),
('Ζαχαροπλαστείο Γιώργος', 'Saturday', '[0,0,0,0,0,0,0,0,0,0,1,0,2,4,6,5,3,1,0,0,1,1,1,0]'),
('Ζαχαροπλαστείο Γιώργος', 'Sunday', '[0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0]'),
('Piraeus Bank', 'Monday', '[0,0,0,0,0,0,0,0,61,91,99,97,100,92,0,0,0,0,0,0,0,0,0,0]'),
('Piraeus Bank', 'Tuesday', '[0,0,0,0,0,0,0,0,53,90,96,94,96,86,0,0,0,0,0,0,0,0,0,0]'),
('Piraeus Bank', 'Wednesday', '[0,0,0,0,0,0,0,0,74,100,74,80,96,86,0,0,0,0,0,0,0,0,0,0]'),
('Piraeus Bank', 'Thursday', '[0,0,0,0,0,0,0,0,40,71,87,92,92,83,0,0,0,0,0,0,0,0,0,0]'),
('Piraeus Bank', 'Friday', '[0,0,0,0,0,0,0,0,53,80,75,81,94,82,0,0,0,0,0,0,0,0,0,0]'),
('Piraeus Bank', 'Saturday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('Piraeus Bank', 'Sunday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('Gitsis Konstantinos', 'Monday', '[0,0,0,0,0,0,0,0,36,54,66,66,55,38,24,16,15,20,27,33,36,35,30,23]'),
('Gitsis Konstantinos', 'Tuesday', '[0,0,0,0,0,0,0,0,21,43,57,53,44,41,33,27,33,48,62,67,63,50,34,20]'),
('Gitsis Konstantinos', 'Wednesday', '[0,0,0,0,0,0,0,0,28,36,45,50,48,35,23,15,16,21,27,31,32,30,26,20]'),
('Gitsis Konstantinos', 'Thursday', '[0,0,0,0,0,0,0,0,27,47,63,66,55,36,21,15,22,37,55,68,67,53,34,18]'),
('Gitsis Konstantinos', 'Friday', '[0,0,0,0,0,0,0,0,16,36,58,71,66,47,25,10,8,25,51,55,40,34,36,32]'),
('Gitsis Konstantinos', 'Saturday', '[0,0,0,0,0,0,0,0,26,37,48,55,56,51,42,31,22,22,45,76,72,36,25,53]'),
('Gitsis Konstantinos', 'Sunday', '[0,0,0,0,0,0,0,0,11,17,24,28,28,25,22,25,44,74,100,95,66,38,27,24]'),
('Way Out Cafe', 'Monday', '[0,0,0,0,0,0,22,26,29,30,31,30,31,41,55,50,41,46,59,64,58,43,27,15]'),
('Way Out Cafe', 'Tuesday', '[0,0,0,0,0,0,17,26,36,48,56,62,64,62,56,53,53,58,65,70,67,54,37,21]'),
('Way Out Cafe', 'Wednesday', '[0,0,0,0,0,0,15,22,32,41,51,58,63,63,60,59,59,62,68,72,70,60,46,30]'),
('Way Out Cafe', 'Thursday', '[0,0,0,0,0,0,15,24,34,44,54,60,64,63,60,59,62,69,81,91,91,81,62,41]'),
('Way Out Cafe', 'Friday', '[0,0,0,0,0,0,24,31,36,37,37,37,39,43,46,46,43,40,45,59,75,81,69,45]'),
('Way Out Cafe', 'Saturday', '[0,0,0,0,0,0,17,27,35,39,40,40,46,55,60,54,44,40,45,54,58,54,43,29]'),
('Way Out Cafe', 'Sunday', '[0,0,0,0,0,0,0,0,20,31,44,55,60,58,49,43,45,59,82,98,100,83,56,32]'),
('Moccup', 'Monday', '[0,0,0,0,0,0,0,22,28,40,48,53,53,46,37,28,20,20,44,88,91,0,0,0]'),
('Moccup', 'Tuesday', '[0,0,0,0,0,0,0,24,31,40,48,55,60,60,55,48,40,35,51,86,91,0,0,0]'),
('Moccup', 'Wednesday', '[0,0,0,0,0,0,0,26,33,46,68,88,95,82,57,33,24,35,57,73,68,0,0,0]'),
('Moccup', 'Thursday', '[0,0,0,0,0,0,0,28,33,40,44,46,46,46,44,40,35,37,60,97,100,0,0,0]'),
('Moccup', 'Friday', '[0,0,0,0,0,0,0,24,28,35,42,51,55,55,53,44,33,31,51,86,73,0,0,0]'),
('Moccup', 'Saturday', '[0,0,0,0,0,0,0,17,26,35,44,51,53,48,40,31,24,33,62,95,91,0,0,0]'),
('Moccup', 'Sunday', '[0,0,0,0,0,0,0,17,20,22,24,28,37,44,48,44,35,31,35,44,46,0,0,0]'),
('Max Perry', 'Monday', '[0,0,0,0,0,0,0,2,81,56,50,72,80,69,46,21,7,16,54,95,92,48,6,2]'),
('Max Perry', 'Tuesday', '[0,0,0,0,0,0,0,2,26,61,73,67,56,41,26,16,19,34,53,67,68,54,34,13]'),
('Max Perry', 'Wednesday', '[0,0,0,0,0,0,0,14,35,46,45,51,75,74,37,14,17,34,51,63,64,56,39,20]'),
('Max Perry', 'Thursday', '[0,0,0,0,0,0,0,13,37,56,60,50,48,62,72,59,39,46,76,100,87,49,13,2]'),
('Max Perry', 'Friday', '[0,0,0,0,0,0,0,8,38,65,76,80,86,84,62,40,35,45,57,62,57,43,25,8]'),
('Max Perry', 'Saturday', '[0,0,0,0,0,0,0,8,25,45,61,70,67,54,36,20,15,23,42,61,67,53,28,6]'),
('Max Perry', 'Sunday', '[0,0,0,0,0,0,0,0,1,12,32,62,83,78,52,30,29,48,71,79,65,38,12,2]'),
('Et Cafe', 'Monday', '[0,0,0,0,0,4,11,22,37,42,38,30,30,44,37,27,27,28,28,27,24,21,17,12]'),
('Et Cafe', 'Tuesday', '[0,0,0,0,0,1,4,17,38,61,70,62,51,41,31,24,22,25,31,35,35,32,25,18]'),
('Et Cafe', 'Wednesday', '[0,0,0,0,0,11,22,40,55,64,58,45,35,32,28,17,14,18,25,30,31,27,21,14]'),
('Et Cafe', 'Thursday', '[0,0,0,0,0,4,8,25,65,100,94,74,64,54,40,31,25,24,22,21,18,17,14,11]'),
('Et Cafe', 'Friday', '[0,0,0,0,0,8,12,20,31,45,51,44,31,21,17,15,14,14,22,38,35,17,7,4]'),
('Et Cafe', 'Saturday', '[0,0,0,0,0,8,15,24,34,42,47,44,35,25,17,12,12,15,18,20,20,17,12,10]'),
('Et Cafe', 'Sunday', '[0,0,0,0,0,7,8,12,21,38,57,64,54,34,17,8,10,18,28,32,28,18,8,2]'),
('Coffee Amargo', 'Monday', '[0,0,0,0,0,0,0,30,37,41,45,46,45,43,41,41,46,56,66,72,70,61,45,0]'),
('Coffee Amargo', 'Tuesday', '[0,0,0,0,0,0,0,33,40,46,50,50,48,46,45,45,48,53,59,64,62,56,45,0]'),
('Coffee Amargo', 'Wednesday', '[0,0,0,0,0,0,0,33,46,51,48,38,32,29,33,37,40,46,61,83,96,88,59,0]'),
('Coffee Amargo', 'Thursday', '[0,0,0,0,0,0,0,14,20,27,32,32,29,22,17,22,54,48,37,64,95,100,74,0]'),
('Coffee Amargo', 'Friday', '[0,0,0,0,0,0,0,19,25,30,35,37,38,37,32,29,27,30,46,67,83,77,53,0]'),
('Coffee Amargo', 'Saturday', '[0,0,0,0,0,0,0,6,14,35,66,87,79,56,37,30,32,35,40,53,77,75,48,0]'),
('Coffee Amargo', 'Sunday', '[0,0,0,0,0,0,0,22,35,53,72,87,90,82,67,53,45,50,64,77,82,74,58,0]'),
('Kokois George', 'Monday', '[0,0,0,0,0,0,0,0,0,18,27,6,9,45,30,3,6,0,0,0,0,0,0,0]'),
('Kokois George', 'Tuesday', '[0,0,0,0,0,0,0,0,15,42,69,72,51,27,15,15,21,27,30,30,24,0,0,0]'),
('Kokois George', 'Wednesday', '[0,0,0,0,0,0,0,0,3,12,36,69,87,75,48,30,27,0,0,0,0,0,0,0]'),
('Kokois George', 'Thursday', '[0,0,0,0,0,0,0,0,18,33,48,54,48,36,21,15,12,12,12,24,30,0,0,0]'),
('Kokois George', 'Friday', '[0,0,0,0,0,0,0,0,0,12,33,84,75,27,12,9,12,24,42,39,21,0,0,0]'),
('Kokois George', 'Saturday', '[0,0,0,0,0,0,0,0,15,30,51,81,100,100,78,51,30,18,9,0,0,0,0,0]'),
('Kokois George', 'Sunday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('Eurobank', 'Monday', '[0,0,0,0,0,0,0,0,80,100,90,90,81,56,0,0,0,0,0,0,0,0,0,0]'),
('Eurobank', 'Tuesday', '[0,0,0,0,0,0,0,0,45,65,72,76,82,67,0,0,0,0,0,0,0,0,0,0]'),
('Eurobank', 'Wednesday', '[0,0,0,0,0,0,0,0,52,79,87,77,91,80,0,0,0,0,0,0,0,0,0,0]'),
('Eurobank', 'Thursday', '[0,0,0,0,0,0,0,0,29,49,66,72,67,53,0,0,0,0,0,0,0,0,0,0]'),
('Eurobank', 'Friday', '[0,0,0,0,0,0,0,0,47,67,77,79,72,51,0,0,0,0,0,0,0,0,0,0]'),
('Eurobank', 'Saturday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('Eurobank', 'Sunday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('MILOS', 'Monday', '[0,0,0,0,0,7,15,28,44,58,64,61,48,33,20,12,11,15,21,25,26,21,0,0]'),
('MILOS', 'Tuesday', '[0,0,0,0,0,1,9,44,75,72,84,100,95,72,47,31,25,26,27,27,25,22,0,0]'),
('MILOS', 'Wednesday', '[0,0,0,0,0,5,16,34,51,57,50,41,35,32,30,28,28,31,33,32,26,18,0,0]'),
('MILOS', 'Thursday', '[0,0,0,0,0,1,9,35,66,65,45,37,35,30,22,17,17,20,22,22,21,17,0,0]'),
('MILOS', 'Friday', '[0,0,0,0,0,12,27,42,47,42,40,44,44,34,22,19,22,28,30,28,22,15,0,0]'),
('MILOS', 'Saturday', '[0,0,0,0,0,2,11,24,30,30,38,52,52,37,20,11,11,13,15,17,16,14,0,0]'),
('MILOS', 'Sunday', '[0,0,0,0,0,2,7,14,25,37,43,42,34,23,15,12,13,15,18,18,18,15,0,0]'),
('Coffeebrands', 'Monday', '[0,0,0,0,0,0,23,39,52,58,58,57,53,47,34,22,14,20,38,57,60,44,0,0]'),
('Coffeebrands', 'Tuesday', '[0,0,0,0,0,0,7,19,34,57,79,95,100,90,71,49,34,38,55,71,66,44,0,0]'),
('Coffeebrands', 'Wednesday', '[0,0,0,0,0,0,11,28,53,74,77,65,60,58,39,17,14,31,58,76,69,44,0,0]'),
('Coffeebrands', 'Thursday', '[0,0,0,0,0,0,17,30,42,53,61,69,74,73,63,50,42,46,55,60,52,34,0,0]'),
('Coffeebrands', 'Friday', '[0,0,0,0,0,0,20,50,63,50,46,63,74,63,41,26,26,31,36,38,33,25,0,0]'),
('Coffeebrands', 'Saturday', '[0,0,0,0,0,0,19,26,33,41,47,52,53,52,46,38,31,31,39,46,46,36,0,0]'),
('Coffeebrands', 'Sunday', '[0,0,0,0,0,0,14,20,30,39,47,52,49,42,33,23,20,30,61,80,58,25,0,0]'),
('Cooper Coffee & Snack', 'Monday', '[2,2,2,2,2,2,2,2,26,54,75,80,66,41,15,2,2,13,40,64,70,54,26,2]'),
('Cooper Coffee & Snack', 'Tuesday', '[2,2,2,2,2,2,2,8,31,60,84,94,82,52,18,2,2,2,30,57,65,47,15,2]'),
('Cooper Coffee & Snack', 'Wednesday', '[2,2,2,2,2,2,2,2,19,48,71,79,66,39,12,2,6,35,71,92,83,49,11,2]'),
('Cooper Coffee & Snack', 'Thursday', '[2,2,2,2,2,2,2,2,10,34,57,68,60,40,15,2,2,6,33,66,83,73,42,11]'),
('Cooper Coffee & Snack', 'Friday', '[2,2,2,2,2,2,2,2,19,47,70,77,65,38,9,2,2,4,33,59,64,44,14,2]'),
('Cooper Coffee & Snack', 'Saturday', '[2,2,2,2,2,2,2,2,2,12,48,88,100,74,36,14,12,21,30,35,33,25,13,2]'),
('Cooper Coffee & Snack', 'Sunday', '[2,2,2,2,2,2,2,8,33,60,81,90,82,60,33,13,12,32,60,76,65,33,2,2]'),
('Kotsokolos Konstantinos', 'Monday', '[0,0,0,0,0,0,0,0,0,0,0,0,18,21,23,26,27,27,27,34,55,69,65,77]'),
('Kotsokolos Konstantinos', 'Tuesday', '[60,0,0,0,0,0,0,0,0,0,0,0,15,17,26,46,53,36,27,38,55,69,72,60]'),
('Kotsokolos Konstantinos', 'Wednesday', '[42,0,0,0,0,0,0,0,0,0,0,0,34,39,44,47,47,44,42,46,59,76,82,67]'),
('Kotsokolos Konstantinos', 'Thursday', '[39,0,0,0,0,0,0,0,0,0,0,0,27,34,39,40,38,32,30,38,57,80,85,68]'),
('Kotsokolos Konstantinos', 'Friday', '[39,0,0,0,0,0,0,0,0,0,0,0,31,36,39,39,38,34,28,27,50,93,100,85]'),
('Kotsokolos Konstantinos', 'Saturday', '[68,0,0,0,0,0,0,0,0,0,0,0,35,43,47,47,42,34,27,28,44,73,98,92]'),
('Kotsokolos Konstantinos', 'Sunday', '[60,0,0,0,0,0,0,0,0,0,0,0,6,7,10,11,13,15,22,32,47,59,60,50]'),
('εν σωματι', 'Monday', '[0,0,0,0,0,0,0,0,0,21,40,18,1,0,0,0,6,25,55,71,56,30,15,0]'),
('εν σωματι', 'Tuesday', '[0,0,0,0,0,0,0,0,0,46,40,25,10,3,1,3,16,41,61,56,46,56,40,0]'),
('εν σωματι', 'Wednesday', '[0,0,0,0,0,0,0,0,0,20,36,20,3,0,0,0,0,30,73,100,76,35,13,0]'),
('εν σωματι', 'Thursday', '[0,0,0,0,0,0,0,0,0,50,46,31,16,6,3,5,15,26,33,30,30,35,11,0]'),
('εν σωματι', 'Friday', '[0,0,0,0,0,0,0,0,0,18,53,33,5,8,11,0,8,23,40,46,38,0,0,0]'),
('εν σωματι', 'Saturday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('εν σωματι', 'Sunday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('Cafe Ανδρέας', 'Monday', '[27,0,0,0,0,0,0,2,2,10,34,63,78,59,29,10,6,12,25,36,42,42,42,40]'),
('Cafe Ανδρέας', 'Tuesday', '[38,0,0,0,0,0,0,10,10,10,14,44,100,82,29,17,21,31,44,61,72,74,63,48]'),
('Cafe Ανδρέας', 'Wednesday', '[34,0,0,0,0,0,0,6,19,44,70,74,57,29,12,8,12,21,34,46,59,63,63,55]'),
('Cafe Ανδρέας', 'Thursday', '[42,0,0,0,0,0,0,4,12,29,53,72,72,55,34,17,10,14,31,57,82,95,87,61]'),
('Cafe Ανδρέας', 'Friday', '[36,0,0,0,0,0,0,2,6,19,42,63,63,42,19,6,2,8,27,53,59,48,44,46]'),
('Cafe Ανδρέας', 'Saturday', '[40,0,0,0,0,0,0,0,2,10,38,76,85,53,17,4,2,10,34,57,57,44,42,48]'),
('Cafe Ανδρέας', 'Sunday', '[44,0,0,0,0,0,0,6,6,14,44,78,76,40,17,14,21,31,46,59,65,63,55,40]'),
('Πασαγιάννης Όμηρος', 'Monday', '[0,0,0,0,0,0,0,0,0,0,17,35,58,64,47,23,17,29,47,52,52,35,0,0]'),
('Πασαγιάννης Όμηρος', 'Tuesday', '[0,0,0,0,0,0,0,17,23,29,35,41,47,52,52,52,52,47,41,47,64,58,0,0]'),
('Πασαγιάννης Όμηρος', 'Wednesday', '[0,0,0,0,0,0,0,11,11,23,29,35,41,47,52,52,52,52,58,58,47,35,0,0]'),
('Πασαγιάννης Όμηρος', 'Thursday', '[0,0,0,0,0,0,0,11,23,35,47,52,58,52,47,47,52,52,52,47,35,23,0,0]'),
('Πασαγιάννης Όμηρος', 'Friday', '[0,0,0,0,0,0,0,0,17,23,11,11,100,88,35,41,52,58,64,64,58,52,0,0]'),
('Πασαγιάννης Όμηρος', 'Saturday', '[0,0,0,0,0,0,0,17,23,29,35,35,41,41,35,35,35,35,35,29,29,23,0,0]'),
('Πασαγιάννης Όμηρος', 'Sunday', '[0,0,0,0,0,0,0,0,11,29,47,52,41,23,17,17,23,35,41,35,29,17,0,0]'),
('MY COFFEE', 'Monday', '[0,0,0,0,0,0,0,0,45,58,67,70,69,64,55,48,49,57,71,81,80,68,0,0]'),
('MY COFFEE', 'Tuesday', '[0,0,0,0,0,0,0,0,50,65,75,76,68,57,45,41,42,50,60,68,72,70,0,0]'),
('MY COFFEE', 'Wednesday', '[0,0,0,0,0,0,0,0,63,87,100,92,70,49,38,42,52,65,75,78,71,58,0,0]'),
('MY COFFEE', 'Thursday', '[0,0,0,0,0,0,0,0,58,71,77,75,67,57,51,50,54,64,76,88,93,86,0,0]'),
('MY COFFEE', 'Friday', '[0,0,0,0,0,0,0,0,48,62,70,70,63,52,43,40,43,51,62,69,70,64,0,0]'),
('MY COFFEE', 'Saturday', '[0,0,0,0,0,0,0,0,46,48,49,51,54,51,43,34,30,35,46,54,55,47,0,0]'),
('MY COFFEE', 'Sunday', '[0,0,0,0,0,0,0,0,0,27,40,50,52,45,35,29,29,35,42,44,40,0,0,0]'),
('Μπουκέτο Μπαλόνια', 'Monday', '[0,0,0,0,0,0,0,0,43,60,74,79,75,67,55,44,32,0,0,0,0,0,0,0]'),
('Μπουκέτο Μπαλόνια', 'Tuesday', '[0,0,0,0,0,0,0,0,55,75,72,87,89,74,56,0,0,56,60,58,51,41,0,0]'),
('Μπουκέτο Μπαλόνια', 'Wednesday', '[0,0,0,0,0,0,0,0,34,56,68,84,96,89,70,51,43,0,0,0,0,0,0,0]'),
('Μπουκέτο Μπαλόνια', 'Thursday', '[0,0,0,0,0,0,0,0,25,46,67,75,72,62,55,0,0,74,75,68,55,37,0,0]'),
('Μπουκέτο Μπαλόνια', 'Friday', '[0,0,0,0,0,0,0,0,53,56,51,68,87,89,70,0,0,46,65,77,68,48,0,0]'),
('Μπουκέτο Μπαλόνια', 'Saturday', '[0,0,0,0,0,0,0,0,29,48,72,91,100,96,82,65,0,0,0,0,0,0,0,0]'),
('Μπουκέτο Μπαλόνια', 'Sunday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('Ανδρικόπουλος Super Market', 'Monday', '[0,0,0,0,0,0,0,0,31,62,75,80,98,97,62,32,25,26,28,27,25,0,0,0]'),
('Ανδρικόπουλος Super Market', 'Tuesday', '[0,0,0,0,0,0,0,0,42,65,58,56,99,100,50,33,37,41,43,42,38,0,0,0]'),
('Ανδρικόπουλος Super Market', 'Wednesday', '[0,0,0,0,0,0,0,0,31,49,67,81,84,76,62,50,42,40,39,36,30,0,0,0]'),
('Ανδρικόπουλος Super Market', 'Thursday', '[0,0,0,0,0,0,0,0,32,45,55,70,91,99,80,50,32,28,28,28,26,0,0,0]'),
('Ανδρικόπουλος Super Market', 'Friday', '[0,0,0,0,0,0,0,0,32,70,73,46,65,95,54,38,41,41,40,36,30,0,0,0]'),
('Ανδρικόπουλος Super Market', 'Saturday', '[0,0,0,0,0,0,0,0,27,53,77,83,67,62,71,31,26,28,28,25,0,0,0,0]'),
('Ανδρικόπουλος Super Market', 'Sunday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('NIKOLOPOULOS PANAGIOTIS \"TO PARADOSIAKO PSOMI\"', 'Monday', '[0,0,0,0,0,0,21,28,35,35,42,42,42,35,28,21,14,0,14,50,57,0,0,0]'),
('NIKOLOPOULOS PANAGIOTIS \"TO PARADOSIAKO PSOMI\"', 'Tuesday', '[0,0,0,0,0,0,0,28,42,57,64,57,42,28,14,7,35,64,28,64,92,0,0,0]'),
('NIKOLOPOULOS PANAGIOTIS \"TO PARADOSIAKO PSOMI\"', 'Wednesday', '[0,0,0,0,0,0,0,21,21,21,35,50,50,50,35,28,28,28,28,28,28,0,0,0]'),
('NIKOLOPOULOS PANAGIOTIS \"TO PARADOSIAKO PSOMI\"', 'Thursday', '[0,0,0,0,0,0,0,0,0,28,42,50,57,50,28,14,7,0,14,21,21,0,0,0]'),
('NIKOLOPOULOS PANAGIOTIS \"TO PARADOSIAKO PSOMI\"', 'Friday', '[0,0,0,0,0,0,0,7,21,35,42,50,50,42,28,28,42,57,71,64,42,0,0,0]'),
('NIKOLOPOULOS PANAGIOTIS \"TO PARADOSIAKO PSOMI\"', 'Saturday', '[0,0,0,0,0,0,0,14,21,28,42,78,100,64,21,0,0,0,0,0,0,0,0,0]'),
('NIKOLOPOULOS PANAGIOTIS \"TO PARADOSIAKO PSOMI\"', 'Sunday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('Σκλαβενίτης', 'Monday', '[0,0,0,0,0,0,0,0,21,34,47,58,64,63,56,45,39,56,93,100,56,0,0,0]'),
('Σκλαβενίτης', 'Tuesday', '[0,0,0,0,0,0,0,0,17,30,44,56,63,63,55,43,33,40,64,79,56,0,0,0]'),
('Σκλαβενίτης', 'Wednesday', '[0,0,0,0,0,0,0,0,19,32,48,62,70,69,61,47,36,41,71,88,57,0,0,0]'),
('Σκλαβενίτης', 'Thursday', '[0,0,0,0,0,0,0,0,20,33,45,54,56,52,42,32,26,36,60,71,49,0,0,0]'),
('Σκλαβενίτης', 'Friday', '[0,0,0,0,0,0,0,0,13,24,37,50,57,56,48,38,34,44,66,79,62,0,0,0]'),
('Σκλαβενίτης', 'Saturday', '[0,0,0,0,0,0,0,0,21,38,60,82,97,99,90,75,69,82,89,66,0,0,0,0]'),
('Σκλαβενίτης', 'Sunday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('My market', 'Monday', '[0,0,0,0,0,0,0,0,20,32,44,56,65,69,68,61,51,42,55,91,69,0,0,0]'),
('My market', 'Tuesday', '[0,0,0,0,0,0,0,0,18,33,49,64,73,73,64,51,41,42,50,53,39,0,0,0]'),
('My market', 'Wednesday', '[0,0,0,0,0,0,0,0,24,37,48,56,62,68,69,62,49,48,74,86,51,0,0,0]'),
('My market', 'Thursday', '[0,0,0,0,0,0,0,0,16,24,36,51,65,70,62,44,29,32,51,55,30,0,0,0]'),
('My market', 'Friday', '[0,0,0,0,0,0,0,0,15,26,38,50,60,64,63,56,47,40,51,66,45,0,0,0]'),
('My market', 'Saturday', '[0,0,0,0,0,0,0,0,14,28,48,70,89,100,98,85,70,71,88,76,33,0,0,0]'),
('My market', 'Sunday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('La Taste Ζαχαροπλαστείο', 'Monday', '[0,0,0,0,0,0,0,0,32,50,64,79,85,82,70,55,41,38,50,58,44,0,0,0]'),
('La Taste Ζαχαροπλαστείο', 'Tuesday', '[0,0,0,0,0,0,0,0,5,26,52,58,47,41,38,26,20,38,67,85,76,0,0,0]'),
('La Taste Ζαχαροπλαστείο', 'Wednesday', '[0,0,0,0,0,0,0,0,32,50,70,82,79,64,44,26,17,23,44,52,38,0,0,0]'),
('La Taste Ζαχαροπλαστείο', 'Thursday', '[0,0,0,0,0,0,0,0,17,32,50,67,73,70,55,38,26,29,41,50,35,0,0,0]'),
('La Taste Ζαχαροπλαστείο', 'Friday', '[0,0,0,0,0,0,0,0,23,35,47,55,58,58,50,41,29,23,41,67,64,0,0,0]'),
('La Taste Ζαχαροπλαστείο', 'Saturday', '[0,0,0,0,0,0,0,0,41,52,58,58,47,38,32,35,47,58,58,47,32,0,0,0]'),
('La Taste Ζαχαροπλαστείο', 'Sunday', '[0,0,0,0,0,0,0,0,20,29,38,50,58,64,67,64,58,52,100,100,23,0,0,0]'),
('Play Opap E. Βενιζέλου 65', 'Monday', '[50,36,0,0,0,0,0,0,0,0,41,59,72,81,79,70,59,52,51,56,66,72,72,64]'),
('Play Opap E. Βενιζέλου 65', 'Tuesday', '[51,36,0,0,0,0,0,0,0,0,44,56,66,68,64,58,54,55,63,72,77,72,64,56]'),
('Play Opap E. Βενιζέλου 65', 'Wednesday', '[45,32,0,0,0,0,0,0,0,0,45,64,72,68,59,55,62,63,54,47,58,74,81,71]'),
('Play Opap E. Βενιζέλου 65', 'Thursday', '[51,28,0,0,0,0,0,0,0,0,44,60,66,63,58,56,59,59,58,52,50,47,44,39]'),
('Play Opap E. Βενιζέλου 65', 'Friday', '[32,22,0,0,0,0,0,0,0,0,47,71,91,100,91,72,50,32,24,31,50,71,87,87]'),
('Play Opap E. Βενιζέλου 65', 'Saturday', '[71,48,27,12,0,0,0,0,0,0,50,77,89,79,63,52,51,55,59,60,62,63,63,62]'),
('Play Opap E. Βενιζέλου 65', 'Sunday', '[58,51,41,32,0,0,0,0,0,0,31,43,52,55,52,48,45,50,58,67,74,77,71,62]'),
('ΓΑΣΠΑΡΙΝΑΤΟΥ ΠΑΥΛΙΝΑ ΘΕΟΦΑΝΗΣ', 'Monday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('ΓΑΣΠΑΡΙΝΑΤΟΥ ΠΑΥΛΙΝΑ ΘΕΟΦΑΝΗΣ', 'Tuesday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('ΓΑΣΠΑΡΙΝΑΤΟΥ ΠΑΥΛΙΝΑ ΘΕΟΦΑΝΗΣ', 'Wednesday', '[0,0,0,0,0,0,0,0,0,7,23,61,100,92,0,0,0,0,0,0,0,0,0,0]'),
('ΓΑΣΠΑΡΙΝΑΤΟΥ ΠΑΥΛΙΝΑ ΘΕΟΦΑΝΗΣ', 'Thursday', '[0,0,0,0,0,0,0,0,0,0,15,15,15,15,30,53,69,76,53,0,0,0,0,0]'),
('ΓΑΣΠΑΡΙΝΑΤΟΥ ΠΑΥΛΙΝΑ ΘΕΟΦΑΝΗΣ', 'Friday', '[0,0,0,0,0,0,0,0,0,0,46,100,84,53,53,61,61,61,53,38,0,0,0,0]'),
('ΓΑΣΠΑΡΙΝΑΤΟΥ ΠΑΥΛΙΝΑ ΘΕΟΦΑΝΗΣ', 'Saturday', '[0,0,0,0,0,0,0,0,0,30,69,53,53,69,69,61,0,0,0,0,0,0,0,0]'),
('ΓΑΣΠΑΡΙΝΑΤΟΥ ΠΑΥΛΙΝΑ ΘΕΟΦΑΝΗΣ', 'Sunday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('Μπαρμπέρικο - Barber Shop', 'Monday', '[0,0,0,0,0,0,0,0,0,13,27,34,29,18,13,13,0,0,0,0,0,0,0,0]'),
('Μπαρμπέρικο - Barber Shop', 'Tuesday', '[0,0,0,0,0,0,0,0,0,27,50,63,59,52,56,70,81,86,81,70,47,0,0,0]'),
('Μπαρμπέρικο - Barber Shop', 'Wednesday', '[0,0,0,0,0,0,0,0,0,18,43,38,36,63,72,47,0,0,0,0,0,0,0,0]'),
('Μπαρμπέρικο - Barber Shop', 'Thursday', '[0,0,0,0,0,0,0,0,0,25,47,65,70,56,43,45,54,56,61,68,47,0,0,0]'),
('Μπαρμπέρικο - Barber Shop', 'Friday', '[0,0,0,0,0,0,0,0,0,31,31,43,59,59,52,56,72,88,86,68,43,0,0,0]'),
('Μπαρμπέρικο - Barber Shop', 'Saturday', '[0,0,0,0,0,0,0,0,0,38,77,95,75,63,97,100,40,0,0,0,0,0,0,0]'),
('Μπαρμπέρικο - Barber Shop', 'Sunday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('Γιαννης Χριστοπουλος ΚΡΕΟΠΩΛΕΙΟ', 'Monday', '[0,0,0,0,0,0,0,0,0,28,50,57,47,26,0,0,0,0,0,0,0,0,0,0]'),
('Γιαννης Χριστοπουλος ΚΡΕΟΠΩΛΕΙΟ', 'Tuesday', '[0,0,0,0,0,0,0,0,0,23,44,39,31,36,31,15,5,2,2,2,0,0,0,0]'),
('Γιαννης Χριστοπουλος ΚΡΕΟΠΩΛΕΙΟ', 'Wednesday', '[0,0,0,0,0,0,0,0,0,31,65,78,63,39,0,0,0,0,0,0,0,0,0,0]'),
('Γιαννης Χριστοπουλος ΚΡΕΟΠΩΛΕΙΟ', 'Thursday', '[0,0,0,0,0,0,0,0,0,84,71,36,36,39,39,28,18,10,5,2,0,0,0,0]'),
('Γιαννης Χριστοπουλος ΚΡΕΟΠΩΛΕΙΟ', 'Friday', '[0,0,0,0,0,0,0,0,0,26,65,100,92,52,23,13,10,7,0,0,0,0,0,0]'),
('Γιαννης Χριστοπουλος ΚΡΕΟΠΩΛΕΙΟ', 'Saturday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('Γιαννης Χριστοπουλος ΚΡΕΟΠΩΛΕΙΟ', 'Sunday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
('Nina Cafe Bar', 'Monday', '[15,15,15,15,0,5,10,10,10,10,10,0,5,5,0,0,0,0,0,0,5,10,26,36]'),
('Nina Cafe Bar', 'Tuesday', '[42,36,21,10,26,21,10,10,10,15,21,21,21,15,15,15,21,26,26,26,26,26,26,31]'),
('Nina Cafe Bar', 'Wednesday', '[42,42,42,36,26,0,0,0,0,0,0,0,10,21,31,26,10,5,5,15,26,36,42,52]'),
('Nina Cafe Bar', 'Thursday', '[73,100,100,63,21,10,0,0,15,26,47,57,57,42,31,31,36,47,57,63,63,57,47,36]'),
('Nina Cafe Bar', 'Friday', '[36,36,42,36,21,21,21,21,21,15,15,15,10,10,5,0,5,10,15,21,31,36,42,42]'),
('Nina Cafe Bar', 'Saturday', '[36,31,26,26,0,0,0,0,0,63,0,0,0,5,5,0,10,10,15,15,15,10,15,26]'),
('Nina Cafe Bar', 'Sunday', '[47,68,73,47,10,10,10,10,10,21,31,26,15,5,5,5,10,0,10,15,15,15,15,15]'),
('O ΛΕΩΝΙΔΑΣ & OI 300', 'Monday', '[10,0,0,0,0,0,0,0,0,0,0,0,26,31,31,26,21,0,10,15,26,36,36,26]'),
('O ΛΕΩΝΙΔΑΣ & OI 300', 'Tuesday', '[10,0,0,0,0,0,0,0,0,0,0,0,21,47,63,52,31,10,0,10,15,21,21,10]'),
('O ΛΕΩΝΙΔΑΣ & OI 300', 'Wednesday', '[5,0,0,0,0,0,0,0,0,0,0,0,26,26,36,57,68,47,31,36,42,36,21,10]'),
('O ΛΕΩΝΙΔΑΣ & OI 300', 'Thursday', '[0,0,0,0,0,0,0,0,0,0,0,0,42,63,57,52,47,26,21,26,31,31,31,26]'),
('O ΛΕΩΝΙΔΑΣ & OI 300', 'Friday', '[21,0,0,0,0,0,0,0,0,0,0,0,63,68,63,57,47,36,26,26,42,68,63,36]'),
('O ΛΕΩΝΙΔΑΣ & OI 300', 'Saturday', '[10,0,0,0,0,0,0,0,0,0,0,0,47,100,36,0,0,0,5,15,31,21,0,0]'),
('O ΛΕΩΝΙΔΑΣ & OI 300', 'Sunday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,78,31,10,15,31,52,63,68,57,42,21]'),
('Coffee Lab ΠΑΠΑΝΔΡΕΟΥ 49 ΠΑΤΡΑ', 'Monday', '[0,0,0,0,0,11,19,31,46,60,72,77,74,64,50,35,22,17,24,43,55,44,24,0]'),
('Coffee Lab ΠΑΠΑΝΔΡΕΟΥ 49 ΠΑΤΡΑ', 'Tuesday', '[0,0,0,0,0,9,14,21,33,48,61,68,65,54,41,33,31,36,42,46,45,38,29,0]'),
('Coffee Lab ΠΑΠΑΝΔΡΕΟΥ 49 ΠΑΤΡΑ', 'Wednesday', '[0,0,0,0,0,6,16,34,56,74,81,77,65,52,39,30,29,36,44,51,51,46,35,0]'),
('Coffee Lab ΠΑΠΑΝΔΡΕΟΥ 49 ΠΑΤΡΑ', 'Thursday', '[0,0,0,0,0,9,17,29,42,56,65,67,63,52,40,31,29,34,45,56,60,55,42,0]'),
('Coffee Lab ΠΑΠΑΝΔΡΕΟΥ 49 ΠΑΤΡΑ', 'Friday', '[0,0,0,0,0,11,14,22,39,66,91,100,85,58,34,19,16,22,39,57,61,47,29,0]'),
('Coffee Lab ΠΑΠΑΝΔΡΕΟΥ 49 ΠΑΤΡΑ', 'Saturday', '[0,0,0,0,0,9,12,18,30,47,64,70,61,43,27,18,18,24,32,37,36,31,23,0]'),
('Coffee Lab ΠΑΠΑΝΔΡΕΟΥ 49 ΠΑΤΡΑ', 'Sunday', '[0,0,0,0,0,0,5,11,21,34,46,52,51,45,39,38,40,45,49,51,50,46,39,0]'),
('Μυλωνάς Ζαχαροπλαστείο', 'Monday', '[0,0,0,0,0,5,15,36,63,81,84,71,60,57,55,52,42,31,39,73,97,68,23,5]'),
('Μυλωνάς Ζαχαροπλαστείο', 'Tuesday', '[0,0,0,0,0,42,52,39,28,39,55,68,71,63,52,42,36,36,36,36,34,28,23,15]'),
('Μυλωνάς Ζαχαροπλαστείο', 'Wednesday', '[0,0,0,0,0,34,57,73,71,60,57,55,47,36,34,39,50,60,63,57,47,36,23,13]'),
('Μυλωνάς Ζαχαροπλαστείο', 'Thursday', '[0,0,0,0,0,26,44,52,52,60,73,78,71,57,52,52,57,60,57,52,44,34,23,15]'),
('Μυλωνάς Ζαχαροπλαστείο', 'Friday', '[0,0,0,0,0,18,26,39,50,60,65,68,63,55,44,39,36,39,42,42,36,23,13,5]'),
('Μυλωνάς Ζαχαροπλαστείο', 'Saturday', '[0,0,0,0,0,31,42,44,39,42,65,89,81,50,28,28,36,47,55,55,50,39,28,18]'),
('Μυλωνάς Ζαχαροπλαστείο', 'Sunday', '[0,0,0,0,0,13,78,100,52,57,73,78,73,63,50,42,42,44,47,42,34,23,13,5]'),
('Tip Top', 'Monday', '[0,0,0,0,0,0,0,0,8,10,12,12,14,14,16,16,20,26,34,46,52,52,44,30]'),
('Tip Top', 'Tuesday', '[0,0,0,0,0,0,0,0,4,4,6,8,12,18,22,24,24,22,20,30,60,90,82,46]'),
('Tip Top', 'Wednesday', '[0,0,0,0,0,0,0,0,10,14,18,22,26,28,26,24,18,12,8,10,40,100,82,22]'),
('Tip Top', 'Thursday', '[0,0,0,0,0,0,0,0,4,26,16,8,12,14,18,18,18,16,14,18,36,66,74,46]'),
('Tip Top', 'Friday', '[0,0,0,0,0,0,0,0,4,8,12,18,24,26,28,28,30,32,38,46,54,54,46,32]'),
('Tip Top', 'Saturday', '[0,0,0,0,0,0,0,0,4,4,6,6,8,12,22,32,40,38,28,26,48,84,82,42]'),
('Tip Top', 'Sunday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,22,52,70,52,22]'),
('Our Great Circus', 'Monday', '[0,0,0,0,0,0,0,0,0,0,0,0,11,13,13,12,9,7,9,19,42,67,77,63]'),
('Our Great Circus', 'Tuesday', '[37,15,0,0,0,0,0,0,0,0,0,0,6,8,10,11,12,13,14,18,30,51,69,66]'),
('Our Great Circus', 'Wednesday', '[44,20,0,0,0,0,0,0,0,0,0,0,10,14,18,20,21,19,18,25,45,74,93,87]'),
('Our Great Circus', 'Thursday', '[58,28,0,0,0,0,0,0,0,0,0,0,22,23,23,22,24,26,26,25,36,61,79,69]'),
('Our Great Circus', 'Friday', '[41,16,0,0,0,0,0,0,0,0,0,0,17,19,21,21,21,19,18,24,53,88,86,77]'),
('Our Great Circus', 'Saturday', '[0,0,0,0,0,0,0,0,0,0,0,0,15,20,25,30,33,36,38,43,56,79,100,98]'),
('Our Great Circus', 'Sunday', '[0,0,0,0,0,0,0,0,0,0,0,0,17,23,29,33,34,31,29,31,43,58,0,0]'),
('Grill house πατρα', 'Monday', '[17,8,13,17,4,4,4,13,47,47,21,43,0,0,0,0,0,0,0,0,0,0,0,0]'),
('Grill house πατρα', 'Tuesday', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,26,52,78,82,65,34,17]'),
('Grill house πατρα', 'Wednesday', '[30,39,8,0,8,4,0,0,8,21,43,60,0,0,0,0,0,47,60,65,69,69,65,56]'),
('Grill house πατρα', 'Thursday', '[43,34,26,17,17,26,34,39,47,47,47,47,0,0,0,0,0,13,39,86,100,56,17,4]'),
('Grill house πατρα', 'Friday', '[73,21,8,13,13,4,8,17,39,60,78,73,0,0,0,0,0,30,34,39,39,39,39,30]'),
('Grill house πατρα', 'Saturday', '[26,30,47,34,21,21,17,21,21,21,21,17,0,0,0,0,0,13,21,30,39,43,47,52]'),
('Grill house πατρα', 'Sunday', '[47,39,34,26,21,26,26,30,30,30,26,21,0,0,0,0,0,0,4,34,8,8,47,65]');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `users`
--

INSERT INTO `users` (`id`, `password`, `name`, `email`) VALUES
(1, '5043703c1018a50261e0437fc697b779', 'georgia', 'georgia.kots23@gmail.com'),
(2, '404cf486d344d240e800707b3b68aede', 'Ariadni', 'ariadnimpar@gmail.com'),
(3, '003586036ebe3633c34efa07d7180e17', 'Eva', 'evalepouri@gmail.com'),
(4, '5043703c1018a50261e0437fc697b779', 'Giannis', 'john@yahoo.gr'),
(5, '65daba7676086ce4197a46c63afeee13', 'kwstas', 'costas@gmail.com'),
(6, '5043703c1018a50261e0437fc697b779', 'George', 'georgeee@hotmail.gr');

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `admin_db`
--
ALTER TABLE `admin_db`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `checkin`
--
ALTER TABLE `checkin`
  ADD PRIMARY KEY (`num`);

--
-- Ευρετήρια για πίνακα `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`name`);

--
-- Ευρετήρια για πίνακα `place_coordinates`
--
ALTER TABLE `place_coordinates`
  ADD KEY `namecoor` (`namecoor`);

--
-- Ευρετήρια για πίνακα `place_populartimes`
--
ALTER TABLE `place_populartimes`
  ADD KEY `namepop` (`namepop`);

--
-- Ευρετήρια για πίνακα `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `admin_db`
--
ALTER TABLE `admin_db`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT για πίνακα `checkin`
--
ALTER TABLE `checkin`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT για πίνακα `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Περιορισμοί για άχρηστους πίνακες
--

--
-- Περιορισμοί για πίνακα `place_coordinates`
--
ALTER TABLE `place_coordinates`
  ADD CONSTRAINT `place_coordinates_ibfk_1` FOREIGN KEY (`namecoor`) REFERENCES `places` (`name`);

--
-- Περιορισμοί για πίνακα `place_populartimes`
--
ALTER TABLE `place_populartimes`
  ADD CONSTRAINT `place_populartimes_ibfk_1` FOREIGN KEY (`namepop`) REFERENCES `places` (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
