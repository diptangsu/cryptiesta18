-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2018 at 12:32 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cyberhunt18finals`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_03_11_182135_create_questions_table', 1),
(4, '2018_03_11_182424_create_teams_table', 1),
(5, '2018_03_12_113337_create_submissions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hint` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `points` int(11) NOT NULL,
  `negative` int(11) NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `name`, `question`, `hint`, `answer`, `points`, `negative`, `visible`, `created_at`, `updated_at`) VALUES
(1, 'Spooky Message', 'Astronomers searching for signals from alien civilisations have detected a powerful, repeated radio pulse coming from a dwarf galaxy 3 billion light years away from Earth. The source of the mysterious signal is unknown. However our scientists believe that this frequency converted to an audio file may contain some hidden message from an alien civilzation. The scientists need your help to decode it. Can you analyze the spectrum of the sound and help us find out what is the message?', 'Analyze the sound carefully', 'caot{Spookynoise}', 500, 0, 1, NULL, NULL),
(3, 'ASCII', 'Didn\'t feel like writing a question yesterday night. I was tired.', 'It\'s in the name of the question', 'caot{this_flag_has_been_converted_to_ascii_completely}', 500, 0, 1, NULL, NULL),
(4, 'Can\'t Google this', 'Do you like spiders? Well the flag is somewhere we don\'t want you to visit.', 'The images are hints', 'caot{1_l0v3_play1ng_w1th_r0b0t5}', 1000, 0, 1, NULL, NULL),
(5, 'exec x3', 'This is a hexy code!', 'You\'ll get a python code.', 'caot{python_decode_times_three}', 2000, 0, 1, NULL, NULL),
(6, 'Find what they did', 'What do you think they are having? Or maybe look into their stomach to find out what is <i>INSIDE</i>.', 'You can see what they are having, can\'t you?', 'caot{LOL_TH3Y_W3R3_jU$t_H@v1ng_Burg3r}', 1500, 0, 1, NULL, NULL),
(7, 'Hex', 'HEX', 'Python!!!', 'caot{i_love_ascii_values_and_hex}', 500, 0, 1, NULL, NULL),
(8, 'RSA', 'One common method of public key encryption is the RSA algorithm.\r\nGiven p, q, e, and c, see if you can recover the message and find the flag!', 'Python code is the easiest!', 'caot{rsa_is_reallllly_fun!!!!!!}', 2000, 0, 1, NULL, NULL),
(9, 'Keys Missing', 'Your keyboard has three keys broken! \'i\', \'p\' and \'s\'. But you have to write a program that takes a number as input and prints all natural numbers upto that number.', 'I don\'t know, and you don\'t have keys hahahahaha', 'k', 2500, 0, 1, NULL, NULL),
(10, 'Login', 'Client side validation is bad, don\'t you think?', 'You did this in the prelims, didn\'t you?', 'caot{ha5h1ng_a1nt_s0_secure_e1th3r_15_1t}', 500, 0, 1, NULL, NULL),
(11, 'Login again', 'Ugly == Secure?', 'It\'s simple, but ugly', 'caot{th15_15_r3ally_u53l3ss_and_p01ntl355}', 1000, 0, 1, NULL, NULL),
(12, 'Vulns', 'I made a game in which I think of two random numbers and you tell me their sum.\r\nHow can you beat me? Well, just guess the same two numbers that I guessed! Couldn\'t be simpler!<br>\r\nGood luck!<br>\r\nYou have the code and the output file.<br>\r\nRead the code to find out how to break it, and run the output file to get the flag.', 'Is printf() vulnerable? :(', 'caot{printf_15_vUlN3raBl3_19xJsTmP}', 2500, 0, 1, NULL, NULL),
(13, 'Random Guess', 'You will only get the answer if you can guess a random number. Well not so random if you think about it properly.', 'What happens if the same person plays multiple times?', 'caot{1_wa5_actually_never_rand0m}', 1500, 0, 1, NULL, NULL),
(14, 'Bam! SPAM!', 'I recieved this email yesterday in my spam folder. However the college called me up and told me that this was a very important mail. Can you help me understand this bunch of SPAM?', 'Google, Google, Google!', 'caot{ThisIsLiterallyABunchOfSpam}', 1000, 0, 1, NULL, NULL),
(15, 'TWO is POWERful', 'What is the strongest number?<br>\r\nWell, I don\'t know, and I don\'t care either!<br>\r\nAre numbers even powerful?<br>\r\nThey say numbers don\'t lie.<br>\r\nDo you agree?<br>\r\nWell, I don\'t care if you agree.<br>\r\nI just think 2 is really powerful and I don\'t care if you don\'t agree with me.', 'The parts seem jumbled up. Or are they? Possible hint I suppose.', 'caot{th3_0rgan153r3_d1ptang5u_k0u5tav_anurag_l0v3_all_mult1pl35_0f_2_and_n00n3_kn0w5_why}', 500, 0, 1, NULL, NULL),
(16, 'White privilege', 'Simply run this file to get the answer.', 'That is a weird style of spacing! Is there something hidden in there?', 'caot{two_programs_in_one}', 800, 0, 1, NULL, NULL),
(17, '3rd Party RSA', 'Let the RSA 256 be factored.', 'The question is an OPEN hint', 'caot{MIGpAgEAAiEAiXjunlKtXe4xOxQBvATQ}', 2500, 0, 1, NULL, NULL),
(18, 'Keys Available', 'You only have these keys<br>\r\nr l z x a e u i c v b n m t i s g<br>\r\n! @ # $ % ^ & ? / \\ * [ ] { } , ( ) _ \' \" =<br>\r\n0 1 2 3 4 5 6 7 8 9<br>\r\nWrite a code that will print numbers from 1 to n', 'I don\'t have a hint for this', 'cc', 3000, 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE `submissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `questionId` int(11) NOT NULL,
  `questionName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teamId` int(11) NOT NULL,
  `teamName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `points` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`id`, `questionId`, `questionName`, `teamId`, `teamName`, `points`, `created_at`, `updated_at`) VALUES
(1, 100, 'noname', 72, 'C of Pythons', 2000, NULL, NULL),
(2, 1, 'Dummy', 72, 'C of Pythons', 100, '2018-04-11 13:11:16', '2018-04-11 13:11:16'),
(3, 100, 'noname', 1, 'c', 900, NULL, NULL),
(4, 100, 'noname', 2, 'c', 850, NULL, NULL),
(5, 100, 'noname', 3, 'c', 730, NULL, NULL),
(6, 100, 'noname', 4, 'c', 550, NULL, NULL),
(7, 100, 'noname', 5, 'c', 750, NULL, NULL),
(8, 100, 'noname', 6, 'c', 420, NULL, NULL),
(9, 100, 'noname', 7, 'c', 850, NULL, NULL),
(10, 100, 'noname', 8, 'c', 450, NULL, NULL),
(11, 100, 'noname', 9, 'c', 450, NULL, NULL),
(12, 100, 'no', 10, 'c', 670, NULL, NULL),
(13, 100, 'no', 11, 'c', 640, NULL, NULL),
(14, 100, 'no', 13, 'c', 600, NULL, NULL),
(15, 100, 'no', 14, 'c', 700, NULL, NULL),
(16, 100, 'no', 15, 'c', 680, NULL, NULL),
(17, 100, 'no', 16, 'c', 580, NULL, NULL),
(18, 100, 'no', 17, 'c', 580, NULL, NULL),
(19, 100, 'no', 18, 'c', 800, NULL, NULL),
(20, 100, 'no', 19, 'c', 740, NULL, NULL),
(21, 100, 'no', 20, 'c', 480, NULL, NULL),
(22, 100, 'no', 21, 'c', 430, NULL, NULL),
(23, 100, 'no', 22, 'c', 490, NULL, NULL),
(24, 100, 'no', 24, 'c', 520, NULL, NULL),
(25, 100, 'no', 25, 'c', 950, NULL, NULL),
(26, 3, 'ASCII', 28, 'Rampage', 500, '2018-04-11 23:39:58', '2018-04-11 23:39:58'),
(27, 100, 'no', 26, 'c', 710, NULL, NULL),
(28, 100, 'no', 27, 'c', 1010, NULL, NULL),
(29, 100, 'no', 28, 'c', 1040, NULL, NULL),
(30, 3, 'ASCII', 27, 'Cryptic Duo', 500, '2018-04-11 23:42:52', '2018-04-11 23:42:52'),
(32, 100, 'no', 29, 'c', 500, NULL, NULL),
(33, 100, 'no', 30, 'c', 1050, NULL, NULL),
(34, 100, 'no', 31, 'c', 920, NULL, NULL),
(35, 100, 'no', 73, 'c', 610, NULL, NULL),
(36, 3, 'ASCII', 5, 'Exterminators', 500, '2018-04-11 23:45:19', '2018-04-11 23:45:19'),
(37, 1, 'Spooky Message', 5, 'Exterminators', 500, '2018-04-11 23:46:22', '2018-04-11 23:46:22'),
(38, 7, 'Hex', 28, 'Rampage', 500, '2018-04-11 23:48:13', '2018-04-11 23:48:13'),
(39, 100, 'no', 74, 'c', 3000, NULL, NULL),
(40, 10, 'Login', 4, 'Noobs', 500, '2018-04-11 23:53:47', '2018-04-11 23:53:47'),
(41, 1, 'Spooky Message', 13, 'NOOBIES', 500, '2018-04-12 00:00:14', '2018-04-12 00:00:14'),
(42, 3, 'ASCII', 25, 'NoobCoders', 500, '2018-04-12 00:03:02', '2018-04-12 00:03:02'),
(43, 3, 'ASCII', 13, 'NOOBIES', 500, '2018-04-12 00:03:41', '2018-04-12 00:03:41'),
(44, 3, 'ASCII', 3, 'Cyber Cruisers', 500, '2018-04-12 00:05:22', '2018-04-12 00:05:22'),
(45, 3, 'ASCII', 21, 'MASONS', 500, '2018-04-12 00:08:03', '2018-04-12 00:08:03'),
(46, 3, 'ASCII', 73, 'cipher0208', 500, '2018-04-12 00:10:00', '2018-04-12 00:10:00'),
(47, 7, 'Hex', 21, 'MASONS', 500, '2018-04-12 00:12:36', '2018-04-12 00:12:36'),
(48, 10, 'Login', 2, 'Predators', 500, '2018-04-12 00:12:58', '2018-04-12 00:12:58'),
(49, 16, 'White privilege', 5, 'Exterminators', 800, '2018-04-12 00:14:32', '2018-04-12 00:14:32'),
(50, 7, 'Hex', 3, 'Cyber Cruisers', 500, '2018-04-12 00:15:32', '2018-04-12 00:15:32'),
(51, 7, 'Hex', 27, 'Cryptic Duo', 500, '2018-04-12 00:15:34', '2018-04-12 00:15:34'),
(52, 3, 'ASCII', 8, 'D Coders', 500, '2018-04-12 00:18:36', '2018-04-12 00:18:36'),
(53, 11, 'Login again', 4, 'Noobs', 1000, '2018-04-12 00:19:07', '2018-04-12 00:19:07'),
(54, 7, 'Hex', 4, 'Noobs', 500, '2018-04-12 00:20:22', '2018-04-12 00:20:22'),
(55, 7, 'Hex', 13, 'NOOBIES', 500, '2018-04-12 00:22:20', '2018-04-12 00:22:20'),
(56, 7, 'Hex', 10, 'Cipher', 500, '2018-04-12 00:23:20', '2018-04-12 00:23:20'),
(57, 9, 'Keys Missing', 28, 'Rampage', 2500, '2018-04-12 00:25:12', '2018-04-12 00:25:12'),
(58, 9, 'Keys Missing', 14, 'NOOBIE', 2500, '2018-04-12 00:25:17', '2018-04-12 00:25:17'),
(59, 7, 'Hex', 25, 'NoobCoders', 500, '2018-04-12 00:27:53', '2018-04-12 00:27:53'),
(60, 7, 'Hex', 8, 'D Coders', 500, '2018-04-12 00:29:24', '2018-04-12 00:29:24'),
(61, 14, 'Bam! SPAM!', 5, 'Exterminators', 1000, '2018-04-12 00:29:49', '2018-04-12 00:29:49'),
(62, 7, 'Hex', 73, 'cipher0208', 500, '2018-04-12 00:32:18', '2018-04-12 00:32:18'),
(63, 3, 'ASCII', 10, 'Cipher', 500, '2018-04-12 00:33:33', '2018-04-12 00:33:33'),
(64, 14, 'Bam! SPAM!', 4, 'Noobs', 1000, '2018-04-12 00:35:26', '2018-04-12 00:35:26'),
(65, 10, 'Login', 28, 'Rampage', 500, '2018-04-12 00:37:11', '2018-04-12 00:37:11'),
(66, 10, 'Login', 13, 'NOOBIES', 500, '2018-04-12 00:37:27', '2018-04-12 00:37:27'),
(67, 9, 'Keys Missing', 73, 'cipher0208', 2500, '2018-04-12 00:40:31', '2018-04-12 00:40:31'),
(68, 9, 'Keys Missing', 22, 'Subhrajyoti', 2500, '2018-04-12 00:41:06', '2018-04-12 00:41:06'),
(69, 9, 'Keys Missing', 21, 'MASONS', 2500, '2018-04-12 00:41:27', '2018-04-12 00:41:27'),
(70, 9, 'Keys Missing', 27, 'Cryptic Duo', 2500, '2018-04-12 00:46:02', '2018-04-12 00:46:02'),
(71, 10, 'Login', 30, 'TnJ', 500, '2018-04-12 00:51:17', '2018-04-12 00:51:17'),
(72, 14, 'Bam! SPAM!', 27, 'Cryptic Duo', 1000, '2018-04-12 00:52:57', '2018-04-12 00:52:57'),
(73, 3, 'ASCII', 2, 'Predators', 500, '2018-04-12 00:55:28', '2018-04-12 00:55:28'),
(74, 3, 'ASCII', 4, 'Noobs', 500, '2018-04-12 00:55:36', '2018-04-12 00:55:36'),
(75, 7, 'Hex', 30, 'TnJ', 500, '2018-04-12 00:59:12', '2018-04-12 00:59:12'),
(76, 10, 'Login', 31, 'god save us', 500, '2018-04-12 01:30:13', '2018-04-12 01:30:13'),
(77, 3, 'ASCII', 30, 'TnJ', 500, '2018-04-12 01:31:11', '2018-04-12 01:31:11'),
(78, 7, 'Hex', 31, 'god save us', 500, '2018-04-12 01:32:02', '2018-04-12 01:32:02'),
(79, 3, 'ASCII', 31, 'god save us', 500, '2018-04-12 01:46:13', '2018-04-12 01:46:13'),
(80, 15, 'TWO is POWERful', 8, 'D Coders', 500, '2018-04-12 01:50:44', '2018-04-12 01:50:44'),
(81, 100, 'no', 75, 'c', 550, NULL, NULL),
(82, 14, 'Bam! SPAM!', 9, 'DESPOTATO', 1000, '2018-04-12 01:58:08', '2018-04-12 01:58:08'),
(83, 9, 'Keys Missing', 31, 'god save us', 2500, '2018-04-12 02:01:36', '2018-04-12 02:01:36'),
(84, 9, 'Keys Missing', 30, 'TnJ', 2500, '2018-04-12 02:08:13', '2018-04-12 02:08:13'),
(85, 15, 'TWO is POWERful', 75, 'Trojan', 500, '2018-04-12 02:15:18', '2018-04-12 02:15:18'),
(86, 15, 'TWO is POWERful', 17, 'Aimers', 500, '2018-04-12 02:19:17', '2018-04-12 02:19:17'),
(87, 7, 'Hex', 1, 'Cybertronians', 500, '2018-04-12 02:24:48', '2018-04-12 02:24:48'),
(88, 10, 'Login', 7, 'Red Team', 500, '2018-04-12 02:25:48', '2018-04-12 02:25:48'),
(89, 17, '3rd Party RSA', 9, 'DESPOTATO', 2500, '2018-04-12 02:31:02', '2018-04-12 02:31:02'),
(90, 7, 'Hex', 7, 'Red Team', 500, '2018-04-12 02:32:54', '2018-04-12 02:32:54'),
(91, 5, 'exec x3', 18, 'THE TEAM', 2000, '2018-04-12 02:34:31', '2018-04-12 02:34:31'),
(92, 7, 'Hex', 22, 'Subhrajyoti', 500, '2018-04-12 02:34:48', '2018-04-12 02:34:48'),
(93, 14, 'Bam! SPAM!', 30, 'TnJ', 1000, '2018-04-12 02:38:34', '2018-04-12 02:38:34'),
(94, 15, 'TWO is POWERful', 16, 'Brain Tweezers', 500, '2018-04-12 02:43:19', '2018-04-12 02:43:19'),
(95, 14, 'Bam! SPAM!', 7, 'Red Team', 1000, '2018-04-12 02:43:57', '2018-04-12 02:43:57'),
(96, 14, 'Bam! SPAM!', 1, 'Cybertronians', 1000, '2018-04-12 02:44:22', '2018-04-12 02:44:22'),
(97, 14, 'Bam! SPAM!', 31, 'god save us', 1000, '2018-04-12 02:44:33', '2018-04-12 02:44:33'),
(98, 11, 'Login again', 30, 'TnJ', 1000, '2018-04-12 02:45:23', '2018-04-12 02:45:23'),
(99, 3, 'ASCII', 20, 'Default', 500, '2018-04-12 02:47:58', '2018-04-12 02:47:58'),
(100, 3, 'ASCII', 7, 'Red Team', 500, '2018-04-12 02:51:07', '2018-04-12 02:51:07'),
(101, 3, 'ASCII', 9, 'DESPOTATO', 500, '2018-04-12 02:52:09', '2018-04-12 02:52:09'),
(102, 13, 'Random Guess', 7, 'Red Team', 1500, '2018-04-12 02:53:54', '2018-04-12 02:53:54'),
(103, 14, 'Bam! SPAM!', 8, 'D Coders', 1000, '2018-04-12 02:59:02', '2018-04-12 02:59:02'),
(104, 7, 'Hex', 9, 'DESPOTATO', 500, '2018-04-12 03:03:18', '2018-04-12 03:03:18'),
(105, 9, 'Keys Missing', 5, 'Exterminators', 2500, '2018-04-12 03:03:37', '2018-04-12 03:03:37'),
(106, 7, 'Hex', 5, 'Exterminators', 500, '2018-04-12 03:06:31', '2018-04-12 03:06:31'),
(107, 11, 'Login again', 31, 'god save us', 1000, '2018-04-12 03:10:15', '2018-04-12 03:10:15'),
(108, 11, 'Login again', 7, 'Red Team', 1000, '2018-04-12 03:14:49', '2018-04-12 03:14:49'),
(109, 14, 'Bam! SPAM!', 75, 'Trojan', 1000, '2018-04-12 03:16:39', '2018-04-12 03:16:39'),
(110, 14, 'Bam! SPAM!', 22, 'Subhrajyoti', 1000, '2018-04-12 03:17:11', '2018-04-12 03:17:11'),
(111, 14, 'Bam! SPAM!', 26, 'Survivors', 1000, '2018-04-12 03:20:23', '2018-04-12 03:20:23'),
(112, 14, 'Bam! SPAM!', 17, 'Aimers', 1000, '2018-04-12 03:21:55', '2018-04-12 03:21:55'),
(113, 14, 'Bam! SPAM!', 16, 'Brain Tweezers', 1000, '2018-04-12 03:22:46', '2018-04-12 03:22:46'),
(114, 7, 'Hex', 75, 'Trojan', 500, '2018-04-12 03:26:38', '2018-04-12 03:26:38'),
(115, 16, 'White privilege', 7, 'Red Team', 800, '2018-04-12 03:30:18', '2018-04-12 03:30:18'),
(116, 1, 'Spooky Message', 8, 'D Coders', 500, '2018-04-12 03:31:20', '2018-04-12 03:31:20'),
(117, 9, 'Keys Missing', 7, 'Red Team', 2500, '2018-04-12 03:36:33', '2018-04-12 03:36:33'),
(118, 10, 'Login', 18, 'THE TEAM', 500, '2018-04-12 03:41:50', '2018-04-12 03:41:50'),
(119, 3, 'ASCII', 22, 'Subhrajyoti', 500, '2018-04-12 03:41:58', '2018-04-12 03:41:58'),
(120, 14, 'Bam! SPAM!', 14, 'NOOBIE', 1000, '2018-04-12 03:42:04', '2018-04-12 03:42:04'),
(121, 1, 'Spooky Message', 1, 'Cybertronians', 500, '2018-04-12 03:44:22', '2018-04-12 03:44:22'),
(122, 1, 'Spooky Message', 14, 'NOOBIE', 500, '2018-04-12 03:45:03', '2018-04-12 03:45:03'),
(123, 3, 'ASCII', 18, 'THE TEAM', 500, '2018-04-12 03:45:40', '2018-04-12 03:45:40'),
(124, 7, 'Hex', 17, 'Aimers', 500, '2018-04-12 03:47:01', '2018-04-12 03:47:01'),
(125, 9, 'Keys Missing', 17, 'Aimers', 2500, '2018-04-12 03:49:37', '2018-04-12 03:49:37'),
(126, 7, 'Hex', 18, 'THE TEAM', 500, '2018-04-12 03:50:00', '2018-04-12 03:50:00'),
(127, 7, 'Hex', 16, 'Brain Tweezers', 500, '2018-04-12 03:54:22', '2018-04-12 03:54:22'),
(128, 3, 'ASCII', 1, 'Cybertronians', 500, '2018-04-12 03:54:37', '2018-04-12 03:54:37'),
(129, 9, 'Keys Missing', 75, 'Trojan', 2500, '2018-04-12 03:54:58', '2018-04-12 03:54:58'),
(130, 1, 'Spooky Message', 7, 'Red Team', 500, '2018-04-12 03:55:31', '2018-04-12 03:55:31'),
(131, 15, 'TWO is POWERful', 31, 'god save us', 500, '2018-04-12 03:57:11', '2018-04-12 03:57:11'),
(132, 9, 'Keys Missing', 16, 'Brain Tweezers', 2500, '2018-04-12 03:59:01', '2018-04-12 03:59:01'),
(133, 15, 'TWO is POWERful', 5, 'Exterminators', 500, '2018-04-12 04:00:03', '2018-04-12 04:00:03'),
(134, 1, 'Spooky Message', 30, 'TnJ', 500, '2018-04-12 04:00:59', '2018-04-12 04:00:59'),
(135, 11, 'Login again', 18, 'THE TEAM', 1000, '2018-04-12 04:01:05', '2018-04-12 04:01:05'),
(136, 15, 'TWO is POWERful', 9, 'DESPOTATO', 500, '2018-04-12 04:01:31', '2018-04-12 04:01:31'),
(137, 3, 'ASCII', 26, 'Survivors', 500, '2018-04-12 04:03:11', '2018-04-12 04:03:11'),
(138, 7, 'Hex', 20, 'Default', 500, '2018-04-12 04:07:35', '2018-04-12 04:07:35'),
(139, 1, 'Spooky Message', 31, 'god save us', 500, '2018-04-12 04:12:54', '2018-04-12 04:12:54'),
(140, 17, '3rd Party RSA', 16, 'Brain Tweezers', 2500, '2018-04-12 04:13:32', '2018-04-12 04:13:32'),
(141, 9, 'Keys Missing', 18, 'THE TEAM', 2500, '2018-04-12 04:14:35', '2018-04-12 04:14:35'),
(142, 17, '3rd Party RSA', 17, 'Aimers', 2500, '2018-04-12 04:16:40', '2018-04-12 04:16:40'),
(143, 17, '3rd Party RSA', 75, 'Trojan', 2500, '2018-04-12 04:16:52', '2018-04-12 04:16:52'),
(144, 15, 'TWO is POWERful', 30, 'TnJ', 500, '2018-04-12 04:21:27', '2018-04-12 04:21:27'),
(145, 6, 'Find what they did', 7, 'Red Team', 1500, '2018-04-12 04:23:26', '2018-04-12 04:23:26'),
(146, 5, 'exec x3', 31, 'god save us', 2000, '2018-04-12 04:26:27', '2018-04-12 04:26:27'),
(148, 18, 'Keys Available', 18, 'THE TEAM', 3000, '2018-04-12 04:31:16', '2018-04-12 04:31:16');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(10) UNSIGNED NOT NULL,
  `teamname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `participant1` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `college1` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year1` int(11) NOT NULL,
  `dept1` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone1` bigint(20) UNSIGNED NOT NULL,
  `email1` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `participant2` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `college2` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year2` int(11) NOT NULL,
  `dept2` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone2` bigint(20) UNSIGNED NOT NULL,
  `email2` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'disciple',
  `score` int(11) NOT NULL DEFAULT '0',
  `timeleft` int(11) NOT NULL DEFAULT '9000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `teamname`, `participant1`, `college1`, `year1`, `dept1`, `phone1`, `email1`, `participant2`, `college2`, `year2`, `dept2`, `phone2`, `email2`, `password`, `score`, `timeleft`, `created_at`, `updated_at`) VALUES
(1, 'Cybertronians', 'Souvik Banerjee', 'Academy of Technology', 2, 'CSE', 8910558103, 'banerjeesouvik337@gmail.com', 'Souptik Dey', 'Academy of Technology', 2, 'CSE', 7686071277, 'souptik.dey@aot.edu.in', 'caot', 0, 3655, '2018-04-11 00:19:13', '2018-04-12 04:28:22'),
(2, 'Predators', 'Piyush Choudhary', 'Academy of Technology', 2, 'CSE', 8981214878, 'piyush.choudhary@aot.edu.in', 'Vineet Maheshwari', 'Academy of Technology', 2, 'CSE', 9830758478, 'vineet.maheshwari@aot.edu.in', 'caot', 0, 4575, '2018-04-11 00:19:29', '2018-04-12 00:59:55'),
(3, 'Cyber Cruisers', 'Shuddhasatya Biswas', 'Academy of Technology', 2, 'CSE', 9748521116, 'shuddhasatya.biswas@aot.edu.in', 'Rishav Singh', 'Academy of Technology', 2, 'CSE', 7980508696, 'rishav.singh@aot.edu.in', 'caot', 0, 9647, '2018-04-11 00:19:34', '2018-04-12 04:29:22'),
(4, 'Noobs', 'Rahul Banerjee', 'Academy Of Technology', 3, 'CSE', 9748320509, 'rahul.mj277@gmail.com', 'Jyotirmay Das', 'Academy Of Technology', 3, 'CSE', 8016140337, 'jyotirmaydas501@gmail.com', 'caot', 0, 0, '2018-04-11 00:19:40', '2018-04-12 04:14:33'),
(5, 'Exterminators', 'Suman Sur', 'Academy of Technology', 2, 'CSE', 7003960177, 'suman.sur@aot.edu.in', 'Sudeshna Majumder', 'Academy of Technology', 2, 'CSE', 8336057559, 'sudeshna.majumder@aot.edu.in', 'caot', 0, 3153, '2018-04-11 00:19:57', '2018-04-12 04:30:12'),
(6, 'Brogrammers', 'Amit Paul', 'Academy of Technology', 1, 'ECE', 9477071916, 'amit1.paul@aot.edu.in', 'Subham Basu', 'Academy of Technology', 1, 'CSE', 9051945255, 'subham.basu@aot.edu.in', 'caot', 0, 11058, '2018-04-11 00:20:08', '2018-04-12 00:57:44'),
(7, 'Red Team', 'Arpan Barman', 'Academy of Technology', 4, 'CSE', 9674537241, 'arpan.barman@aot.edu.in', 'Nairit Bandyopadhyay', 'Academy of Technology', 4, 'CSE', 9804454657, 'nairit.bandyopadhyay@aot.edu.in', 'caot', 0, 14086, '2018-04-11 00:20:24', '2018-04-17 04:52:59'),
(8, 'D Coders', 'ABHIRUP DEY', 'AOT', 2, 'EE', 9735716172, 'abhirup.dey@aot.edu.in', 'KUSHAL MUKHERJEE', 'AOT', 2, 'CSE', 9932056160, 'mukherjee.kushal01@gmail.com', 'caot', 0, 1118, '2018-04-11 00:21:04', '2018-04-12 04:05:15'),
(9, 'DESPOTATO', 'WRICHEEK MODAK', 'ACADEMY OF TECHNOLOGY', 2, 'ME', 7699446192, 'wricheek.modak@aot.edu.in', 'TANMAY ROY', 'ACADEMY OF TECHNOLOGY', 2, 'ME', 8584997217, 'tanmay.roy@aot.edu.in', 'caot', 0, 1769, '2018-04-11 00:21:13', '2018-04-12 04:31:30'),
(10, 'Cipher', 'Amrita Banerjee', 'Academy of Technology', 2, 'IT', 8013472913, 'amrita.banerjee@aot.edu.in', 'Suddhasil Kumar', 'Academy of Technology', 2, 'EE', 8231090358, 'suddhasilkumar@gmail.com', 'caot', 0, 10796, '2018-04-11 00:21:15', '2018-04-12 00:58:26'),
(11, 'Nchanters', 'Subhranil Agasti', 'Academy of Technology', 2, 'CSE', 9475213306, 'subhranil.agasti@aot.edu.in', 'Sourav Mazumdar', 'Academy of Technology', 2, 'CSE', 8768375083, 'sourav.mazumdar@aot.edu.in', 'caot', 0, 14400, '2018-04-11 00:21:23', '2018-04-11 02:51:38'),
(13, 'NOOBIES', 'Soumyaraj Kundu', 'AOT', 2, 'CSE', 8240557924, 'raj.kundu23@gmail.com', 'Soumya Bhattacharya', 'AOT', 2, 'CSE', 8777258136, 'bhattacharyasoumya49@gmail.com', 'caot', 0, 11313, '2018-04-11 00:25:19', '2018-04-12 00:59:03'),
(14, 'NOOBIE', 'NAVIN SRIVASTAVA', 'Academy Of Technology', 3, 'CSE', 7003397879, 'navin.srivastava@aot.edu.in', 'PIJUSH MANNA', 'Academy Of Technology', 3, 'CSE', 7872723447, 'pijush.manna@aot.edu.in', 'caot', 0, 6568, '2018-04-11 00:28:28', '2018-04-12 04:18:58'),
(15, 'R^2', 'Rudrani Saha', 'Academy of Technology', 2, 'ECE', 9748286902, 'rudrani.saha@aot.edu.in', 'Ranita Pal', 'Academy of Technology', 2, 'ECE', 8276899451, 'ranita.pal@aot.edu.in', 'caot', 0, 11776, '2018-04-11 00:30:05', '2018-04-12 02:32:08'),
(16, 'Brain Tweezers', 'Sanchit Singh', 'Academy Of Technology', 1, 'CSE', 7003670993, 'sanchit.singh@aot.edu.in', 'Mohammad Aarefin', 'Academy Of Technology', 1, 'CSE', 9073755408, 'mohammad.aarefin@aot.edu.in', 'caot', 0, 5638, '2018-04-11 00:44:10', '2018-04-12 04:31:31'),
(17, 'Aimers', 'Piyush Agarwal', 'AOT', 1, 'ECE', 9051772566, 'piyuh.agarwal@aot.edu.in', 'Abhay Sharma', 'AOT', 1, 'ECE', 8013702142, 'abhay.sharma@aot.edu.in', 'caot', 0, 4168, '2018-04-11 00:46:11', '2018-04-12 04:31:32'),
(18, 'THE TEAM', 'Amar Nath Tiwari', 'aot', 3, 'CSE', 8777010354, 'amar.nathtiwari@aot.edu.in', 'Sourav sett', 'aot', 3, 'CSE', 7980327592, 'sourav241196@gmail.com', 'caot', 0, 11262, '2018-04-11 00:46:59', '2018-04-12 04:31:17'),
(19, 'Blackbeard', 'Ankit Saha', 'AOT', 1, 'CSE', 9051872568, 'asaha981119@gmail.com', 'Aritra Ghosh', 'AOT', 1, 'CSE', 8335011055, 'aritraghosh084@gmail.com', 'caot', 0, 14400, '2018-04-11 00:48:16', '2018-04-11 04:24:32'),
(20, 'Default', 'Deepan Mondal', 'Academy of technology', 2, 'CSE', 8918222082, 'deepan.mondal@aot.edu.in', 'Elisa Dutta', 'Academy of technology', 2, 'EE', 7980976838, 'elisa.dutta@aot.edu.in', 'caot', 0, 2850, '2018-04-11 00:50:05', '2018-04-12 04:16:37'),
(21, 'MASONS', 'RITAM CHATTERJEE', 'ACADEMY OF TECHNOLOGY', 2, 'CSE', 8420863316, 'ritam.chatterjee@aot.edu.in', 'SHRISHTI GUPTA', 'ACADEMY OF TECHNOLOGY', 2, 'CSE', 9748540558, 'shrishti.gupta@aot.edu.in', 'caot', 0, 7776, '2018-04-11 00:52:09', '2018-04-12 04:27:33'),
(22, 'Subhrajyoti', 'Subhrajyoti Modak', 'Academy Of Technology', 1, 'ME', 9051546606, 'subhrajyoti.modak@aot.edu.in', 'Subhrajyoti Modak', 'AOT', 1, 'ME', 9051546606, 'subhrajyoti.modak@aot.edu.in', 'caot', 0, 2453, '2018-04-11 01:01:46', '2018-04-12 04:11:51'),
(24, 'THE K SQUAD', 'KAVITA KUMARI YADAV', 'AOT', 2, 'EE', 8100069062, 'kavita.kumariyadav@aot.edu.in', 'KAUSTUBH SINGH', 'AOT', 2, 'EE', 8981507270, 'kaustubh.singh@aot.edu.in', 'caot', 0, 14400, '2018-04-11 01:08:06', '2018-04-11 04:50:01'),
(25, 'NoobCoders', 'SEBANTI CHANDRA', 'ACADEMY OF TECHNOLOGY', 2, 'CSE', 8981153313, 'sebanti.chandra@aot.edu.in', 'SHANU DEY', 'ACADEMY OF TECHNOLOGY', 2, 'ECE', 8961612780, 'shanu.dey@aot.edu.in', 'caot', 0, 10169, '2018-04-11 01:23:09', '2018-04-12 00:53:01'),
(26, 'Survivors', 'Rishabh Jain', 'Academy of Technology', 1, 'CSE', 9830879402, 'rishabh.jain@aot.edu.in', 'Sweety Sharma', 'Academy of Technology', 1, 'CSE', 8240232773, 'sweety.sharma@aot.edu.in', 'caot', 0, 9931, '2018-04-11 02:07:23', '2018-04-12 04:22:52'),
(27, 'Cryptic Duo', 'Subhadeep Deyashi', 'Academy of Technology', 2, 'CSE', 9800297321, 'subhadeep.deyashi@aot.edu.in', 'Susmita Biswas', 'Academy of Technology', 2, 'CSE', 8336027306, 'susmita4.biswas@aot.edu.in', 'caot', 0, 3628, '2018-04-11 02:29:37', '2018-04-12 04:31:21'),
(28, 'Rampage', 'Gautam Khanna', 'HITK', 3, 'CSE', 9007518001, 'khannagautam96@gmail.com', 'Amar Anand', 'HITK', 3, 'CSE', 9874237380, 'amaranand159@gmail.com', 'caot', 0, 9887, '2018-04-11 02:46:50', '2018-04-12 04:24:12'),
(29, 'ESCOBAR', 'Debayan Porel', 'Academy Of Technology', 1, 'ECE', 8420322836, 'debayan.porel@aot.edu.in', 'Ayush Gupta', 'Academy Of Technology', 1, 'ECE', 7980373336, 'thisisayush2912@gmail.com', 'caot', 0, 14400, '2018-04-11 03:04:49', '2018-04-11 04:36:37'),
(30, 'TnJ', 'Aman Saraogi', 'AOT', 4, 'CSE', 9830683749, 'aman.saraogi@aot.edu.in', 'Anjali Goenka', 'AOT', 4, 'CSE', 9883471177, 'anjali.goenka@aot.edu.in', 'caot', 0, 2959, '2018-04-11 03:10:48', '2018-04-12 04:28:46'),
(31, 'god save us', 'kashis k. thakur', 'academy of technology', 4, 'CSE', 8017174905, 'kashis.kumarthakur@aot.edu.in', 'krishanu roy', 'academy of technology', 4, 'CSE', 9038694096, 'krishanu.roy@aot.edu.in', 'caot', 0, 575, '2018-04-11 03:11:31', '2018-04-12 04:29:35'),
(72, 'C of Pythons', 'Diptangsu Goswami', 'aot', 3, 'cse', 9903088446, 'd', 'Koustav Chanda', 'aot', 3, 'cse', 1234, 'k', 'disciple', 0, 951, NULL, '2018-04-12 09:27:39'),
(73, 'cipher0208', 'Anu Kumari Gupta', 'AOT', 3, 'CSE', 8981986160, 'anu.kumarigupta@aot.edu.in', 'Md Fazal Mehboob Ansari', 'AOT', 3, 'CSE', 7278208908, 'md.fazalmehboobansari@aot.edu.in', 'caot', 0, 10100, '2018-04-11 23:40:39', '2018-04-12 04:29:00'),
(74, 'Team 7', 'Anurag Dutta', 'Academy of Technology', 3, 'CSE', 346734573, 'asdGadgadfg', 'Soumita Goswami', 'Academy of Technology', 2, 'CSE', 2473583568568, 'adfgasdfgadgdfg', 'caot', 0, 5971, '2018-04-11 23:49:58', '2018-04-12 03:33:44'),
(75, 'Trojan', 'OIHIK CHATTERJEE', 'ACADEMY OF TECHNOLOGY', 1, 'ECE', 9830980395, 'oihikchatterjee@gmail.com', 'NILANJAN MANNA', 'ACADEMY OF TECHNOLOGY', 1, 'ECE', 8017378068, 'nilanjan.manna@aot.edu.in', 'caot', 0, 5821, '2018-04-12 01:52:45', '2018-04-12 04:31:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submissions`
--
ALTER TABLE `submissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `submissions`
--
ALTER TABLE `submissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
