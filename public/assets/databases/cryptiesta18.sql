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
-- Database: `cryptiesta18`
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
(38, '2014_10_12_000000_create_users_table', 1),
(39, '2014_10_12_100000_create_password_resets_table', 1),
(40, '2018_03_11_182135_create_questions_table', 1),
(41, '2018_03_11_182424_create_teams_table', 1),
(42, '2018_03_12_113337_create_submissions_table', 1);

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
(1, 'Getting Started', 'The flag is <font color=\'#ff7d0c\'>caot{cyber_hunt}</font>', 'I literally gave you the answer.', 'caot{cyber_hunt}', 10, 0, 1, NULL, NULL),
(2, 'Veni, vidi, vici.', 'Here is the answer<br>\r\n<font color=\'#ff7d0c\'>cixd{f_qorpqba_vlr_yorqrp}</font>', 'He was stabbed 23 times', 'caot{i_trusted_you_brutus}', 50, 0, 1, NULL, NULL),
(3, 'Experience is the teacher of all things.', 'In 48 B.C., Caesar went to Egypt to track down one of his rivals, the Roman general Pompey, and while there he met Cleopatra, who was embroiled in a civil war with her younger brother and co-ruler Ptolemy XIII (per ancient Egyptian custom, the two ruled under the formal title of husband and wife). Caesar, who declared himself executor of the will of the siblings’ late father, ordered the pair to come see him so they could settle their feud. When Ptolemy’s army stopped Cleopatra from traveling to the palace where Caesar was staying, she had herself smuggled in a laundry bag to meet him for the first time, according to some accounts. Caesar and Cleopatra, who was half the Roman general’s age, became romantically involved, and around 47 B.C., she gave birth to a boy, Ptolemy Caesar, who was believed to be Caesar’s child. The Egyptians referred to him as Caesarion, meaning little Caesar.<br><br>\r\n\r\nShortly after Caesar’s murder in 44 B.C., Cleopatra’s brother and co-ruler Ptolemy XIV was killed. (Her previous co-ruler, Ptolemy XIII, had died around 47 B.C.) Although never proven, there was suspicion Cleopatra poisoned Ptolemy XIV so she could name Caesarion her co-ruler, which she did that same year. He became known as Ptolemy XV.<br><br>\r\n\r\nIn 31 B.C., the forces of Cleopatra and her lover Mark Antony were defeated at the Battle of Actium by Octavian, Caesar’s great nephew and chosen heir. The following year, Antony and Cleopatra both committed suicide, leaving Caesarion as Egypt’s sole pharaoh; however, his reign was brief because not long after his mother’s death, Caesarion was murdered on orders from Octavian, who went on to become the first Roman emperor. Taking the name Augustus, he ruled from 27 B.C. to A.D. 14.<br><br>\r\n<font color=\'#ff7d0c\'>CDRICNALACALAWNEELHDEHSCSEANSIAAAODAACLERPAMRHISAACEIMTANTHDOETR</font>', 'Who likes perfect squares?', 'caot{CAESARANDCLEOPATRAHADACHILDNAMEDCAESARIONWHICHMEANSALITTLECAESAR}', 60, 0, 1, NULL, NULL),
(4, 'ECNALUBMA', 'Here is the answer<br>\r\n<font color=\'#ff7d0c\'>nriili_nriili_lm_gsv_dzoo_dsl_rh_gsv_uzrivhg_lu_gsvn_zoo</font>', 'Look in the mirror', 'caot{mirror_mirror_on_the_wall_who_is_the_fairest_of_them_all}', 100, 0, 1, NULL, NULL),
(5, 'Colour', 'What is the background colour of this website?', 'Chrome will definitely give you the answer!', 'caot{#22313a}', 50, 0, 1, NULL, NULL),
(6, 'Square root?', 'What is the square root of 25?', 'Do you actually need a hint for this one?', 'caot{±5}', 40, 0, 1, NULL, NULL),
(7, 'I am hidden', 'Well, this file has the answer. If you look hard enough, I\'m sure you\'ll find it.', 'Reading it a 100 times won\'t help you SEE the answer.', 'caot{1_am_h1dd3n_1n_wh1t3_c0lu0r}', 50, 0, 1, NULL, NULL),
(8, 'That is a lot of text', 'Isn\'t this file huge? All the characters are in lowercase. Well, not all, the answer is in uppercase!', 'Solving this shouldn\'t take more than 2 minutes if you can code.', 'caot{THISFILEISHUGEAFLMAO}', 100, 0, 1, NULL, NULL),
(9, 'Are they different?', 'The two files may look exactly like each other, but they have minor differences. Good luck finding them!', 'You just have to compare the files! Or maybe find their difference!', 'caot{THEIMAGEONTHEMIRRORISDIFFERENT}', 150, 0, 1, NULL, NULL),
(10, 'They are different!', 'The two files may look exactly like each other, but the second file is a bit different from the first one, it has the answer! Good luck finding the answer!', 'Can you code?', 'caot{welldonesolvingthisone}', 200, 0, 1, NULL, NULL),
(11, 'I am Hidden', 'Congratulations!<br>\r\nYou\'ve found a hidden question!', 'The answer is caot{free_points_here}', 'caot{free_points_here}', 70, 0, 0, NULL, NULL),
(12, 'Few files', 'This should be easy. Just remember the name of this event!', 'Download, extract, get the answer.', 'caot{geek_xor_is_a_nerd}', 30, 0, 1, NULL, NULL),
(13, 'Few more files!', 'Well, it\'s actually a lot more files. The answer lies in one of them!', 'Look through all of them? Maybe not! Bad idea, way too many files to go though manually.', 'caot{GOOD_JOB_DUDE_U_FOUND_ME}', 100, 0, 1, NULL, NULL),
(14, 'Login', 'You just have to login with the given username and password.', 'Client side validation is bad, don\'t you think?', 'caot{cl13nt_s1d3_val1dat10n_15_bad_xajsbd12902}', 60, 0, 1, NULL, NULL),
(15, 'Login again', 'Run the .class file and login to get the flag', 'Haven\'t we all done changing the subject of a formula in class 4?', 'caot{1t_15_51mpl3_math5}', 50, 0, 1, NULL, NULL),
(16, 'Accumulator', 'We are giving you the code and the .class file. Run the .class file and get the answer.', 'What is the size of int datatype?', 'caot{k33p_add1ng_unt1l_1t_0v3rfl0w5}', 100, 0, 1, NULL, NULL),
(17, 'NULL', 'There is no answer. Just submit nothing, if you can!', 'There actually is no answer.', '', 40, 0, 1, NULL, NULL),
(18, 'Password', 'What was your password?', 'You should already know what your password is.', 'dbwrgoubjuvoblnueiobhfhdulivrbolifsuvb', 50, 5, 1, NULL, NULL),
(19, 'Kidnapped', 'My best friend was kidnapped, and I have no idea where they have taken him! He managed to send me these. I need to know where he is. Please help!', 'Flag format is \"location_authorname\"', 'caot{Guwahati_BenSwolo}', 100, 0, 1, NULL, NULL),
(20, 'Choo Choo', 'I was sitting near a fence by the rails, waiting for my train. It was already 3 hours late, when I found this text written on the schedule board in the station. Please help me figure out what this is!<br>\r\n<font color=\'#ff7d0c\'>ttsmt3tr5__tai_0b_a3ua33_l</font>', 'Read the question properly, it\'s all too obvious.', 'caot{tru5t_a_st3ami3_t0_b3_lat3}', 50, 0, 1, NULL, NULL),
(21, 'Look Inside', 'This is one image from our trip to Guwahati. What do you think they were feeling <i>inside</i> their hearts?', 'Look inside', 'caot{the_trip_to_guwahati_was_amazing}', 200, 0, 1, NULL, NULL),
(22, 'Birthday Gift', 'Koustav just dropped a hint for me on my table as to what he wants on his birthday.<br>\r\n<font color=\'#ff7d0c\'>dynl-cvgjjbvqficcyuhvgwxm</font>', 'He loves playing with cubes!', 'caot{ilovetoplaywithcubes}', 50, 0, 1, NULL, NULL),
(23, 'Alkali', 'What if you had 64 types of alkalis? What would this message mean?', 'all alkalis are bases, but all bases are not alkalis.', 'caot{out_of_all_bases_i_like_64}', 60, 0, 1, NULL, NULL),
(24, 'Matrix', 'I found this interesting webpage which is said to have an answer.', 'This is way too easy for a hint.', 'caot{neo_is_a_fucking_pro}', 50, 0, 1, NULL, NULL),
(25, 'TWO is POWERful', 'What is the strongest number?<br>\r\nWell, I don\'t know, and I don\'t care either!<br>\r\nAre numbers even powerful?<br>\r\nThey say numbers don\'t lie.<br>\r\nDo you agree?<br>\r\nWell, I don\'t care if you agree.<br>\r\nI just think 2 is really powerful and I don\'t care if you don\'t agree with me.', 'The parts seem jumbled up. Or are they? Possible hint I suppose.', 'caot{th3_0rgan153r3_d1ptang5u_k0u5tav_anurag_l0v3_all_mult1pl35_0f_2_and_n00n3_kn0w5_why}', 200, 0, 1, NULL, NULL),
(26, 'Lurking in plain sight', 'You can see the answer, can\'t you?', 'How do you expect a hint for something so simple?', 'caot{th15_15_an_usel355_1mag3_from_guwahati}', 50, 0, 1, NULL, NULL),
(27, '<font color=\"#9c31a5\">Linux Level 1</font>', 'Find the flag in the file', '', 'caot{hey_you_know_basic_linux}', 30, 0, 1, NULL, NULL),
(28, '<font color=\"#9c31a5\">Linux Level 2</font>', 'Do you like binary? (0/1)', 'lol xxD', 'caot{now_u_see_me}', 50, 0, 1, NULL, NULL),
(29, '<font color=\"#9c31a5\">Linux Level 3</font>', 'Can you see me?', 'Or can you not?', 'caot{okay_now_you_have_executed_me}', 100, 0, 1, NULL, NULL),
(30, '<font color=\"#9c31a5\">Linux Level 4</font>', 'You are garbage.', 'Yes, I mean it!', 'caot{you_are_complete_trash}', 150, 0, 1, NULL, NULL),
(31, '<font color=\"#9c31a5\">Linux Level 5</font>', 'Decepticons', 'Encode! Encode! Encode!', 'caot{VGhlIGFkbWluIHNheXMsIHRoZSBvbmx5IGZpbGUgaXMgZW5jb2RlZCB0byAyXjY=}', 200, 0, 1, NULL, NULL);

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
(1, 1, 'Getting Started', 3, 'Predators', 10, '2018-04-11 00:20:28', '2018-04-11 00:20:28'),
(2, 1, 'Getting Started', 10, 'Red Team', 10, '2018-04-11 00:20:56', '2018-04-11 00:20:56'),
(3, 1, 'Getting Started', 11, 'Single', 10, '2018-04-11 00:21:17', '2018-04-11 00:21:17'),
(4, 1, 'Getting Started', 9, 'Double A', 10, '2018-04-11 00:21:21', '2018-04-11 00:21:21'),
(5, 1, 'Getting Started', 8, 'Brogrammers', 10, '2018-04-11 00:22:23', '2018-04-11 00:22:23'),
(6, 1, 'Getting Started', 12, 'D Coders', 10, '2018-04-11 00:23:19', '2018-04-11 00:23:19'),
(7, 1, 'Getting Started', 17, 'Stonner', 10, '2018-04-11 00:23:44', '2018-04-11 00:23:44'),
(8, 1, 'Getting Started', 15, 'Cipher', 10, '2018-04-11 00:24:21', '2018-04-11 00:24:21'),
(9, 1, 'Getting Started', 5, 'Noobs', 10, '2018-04-11 00:24:50', '2018-04-11 00:24:50'),
(10, 1, 'Getting Started', 20, 'NOOBIES', 10, '2018-04-11 00:25:57', '2018-04-11 00:25:57'),
(11, 1, 'Getting Started', 14, 'DESPOTATO', 10, '2018-04-11 00:26:10', '2018-04-11 00:26:10'),
(12, 1, 'Getting Started', 6, 'Exterminators', 10, '2018-04-11 00:26:48', '2018-04-11 00:26:48'),
(13, 1, 'Getting Started', 16, 'Nchanters', 10, '2018-04-11 00:27:45', '2018-04-11 00:27:45'),
(14, 1, 'Getting Started', 19, 'cyther', 10, '2018-04-11 00:28:49', '2018-04-11 00:28:49'),
(15, 18, 'Password', 11, 'Single', 50, '2018-04-11 00:29:20', '2018-04-11 00:29:20'),
(16, 1, 'Getting Started', 21, 'Trojan', 10, '2018-04-11 00:29:45', '2018-04-11 00:29:45'),
(17, 1, 'Getting Started', 25, 'R^2', 10, '2018-04-11 00:31:04', '2018-04-11 00:31:04'),
(18, 1, 'Getting Started', 26, 'Geeks', 10, '2018-04-11 00:31:29', '2018-04-11 00:31:29'),
(19, 1, 'Getting Started', 27, 'pallabpankaj', 10, '2018-04-11 00:33:27', '2018-04-11 00:33:27'),
(20, 1, 'Getting Started', 2, 'Cybertronians', 10, '2018-04-11 00:33:28', '2018-04-11 00:33:28'),
(21, 1, 'Getting Started', 28, 'unnamed coder', 10, '2018-04-11 00:34:20', '2018-04-11 00:34:20'),
(22, 1, 'Getting Started', 4, 'Cyber Cruisers', 10, '2018-04-11 00:35:21', '2018-04-11 00:35:21'),
(23, 1, 'Getting Started', 24, 'NOOBIE', 10, '2018-04-11 00:38:34', '2018-04-11 00:38:34'),
(24, 1, 'Getting Started', 7, 'WeCode', 10, '2018-04-11 00:39:03', '2018-04-11 00:39:03'),
(25, 5, 'Colour', 16, 'Nchanters', 50, '2018-04-11 00:39:58', '2018-04-11 00:39:58'),
(26, 5, 'Colour', 26, 'Geeks', 50, '2018-04-11 00:41:06', '2018-04-11 00:41:06'),
(27, 5, 'Colour', 9, 'Double A', 50, '2018-04-11 00:42:14', '2018-04-11 00:42:14'),
(28, 1, 'Getting Started', 31, 'INVICTUS', 10, '2018-04-11 00:43:41', '2018-04-11 00:43:41'),
(29, 1, 'Getting Started', 32, 'Lord', 10, '2018-04-11 00:44:03', '2018-04-11 00:44:03'),
(30, 2, 'Veni, vidi, vici.', 6, 'Exterminators', 50, '2018-04-11 00:45:51', '2018-04-11 00:45:51'),
(31, 5, 'Colour', 15, 'Cipher', 50, '2018-04-11 00:47:19', '2018-04-11 00:47:19'),
(32, 1, 'Getting Started', 36, 'THE TEAM', 10, '2018-04-11 00:47:59', '2018-04-11 00:47:59'),
(33, 11, 'I am Hidden', 10, 'Red Team', 70, '2018-04-11 00:47:59', '2018-04-11 00:47:59'),
(34, 2, 'Veni, vidi, vici.', 16, 'Nchanters', 50, '2018-04-11 00:48:10', '2018-04-11 00:48:10'),
(35, 2, 'Veni, vidi, vici.', 25, 'R^2', 50, '2018-04-11 00:48:21', '2018-04-11 00:48:21'),
(36, 5, 'Colour', 24, 'NOOBIE', 50, '2018-04-11 00:48:35', '2018-04-11 00:48:35'),
(37, 1, 'Getting Started', 37, 'Blackbeard', 10, '2018-04-11 00:48:58', '2018-04-11 00:48:58'),
(38, 2, 'Veni, vidi, vici.', 14, 'DESPOTATO', 50, '2018-04-11 00:49:06', '2018-04-11 00:49:06'),
(39, 5, 'Colour', 20, 'NOOBIES', 50, '2018-04-11 00:49:15', '2018-04-11 00:49:15'),
(40, 1, 'Getting Started', 33, 'aimers', 10, '2018-04-11 00:49:31', '2018-04-11 00:49:31'),
(41, 1, 'Getting Started', 23, 'C of Pythons', 10, '2018-04-11 00:49:45', '2018-04-11 00:49:45'),
(42, 5, 'Colour', 5, 'Noobs', 50, '2018-04-11 00:49:51', '2018-04-11 00:49:51'),
(43, 2, 'Veni, vidi, vici.', 15, 'Cipher', 50, '2018-04-11 00:49:53', '2018-04-11 00:49:53'),
(44, 1, 'Getting Started', 34, 'Brain Tweezers', 10, '2018-04-11 00:50:07', '2018-04-11 00:50:07'),
(45, 2, 'Veni, vidi, vici.', 20, 'NOOBIES', 50, '2018-04-11 00:50:59', '2018-04-11 00:50:59'),
(46, 1, 'Getting Started', 30, 'HUNT', 10, '2018-04-11 00:52:23', '2018-04-11 00:52:23'),
(47, 2, 'Veni, vidi, vici.', 10, 'Red Team', 50, '2018-04-11 00:53:02', '2018-04-11 00:53:02'),
(48, 1, 'Getting Started', 39, 'MASONS', 10, '2018-04-11 00:53:28', '2018-04-11 00:53:28'),
(49, 4, 'ECNALUBMA', 14, 'DESPOTATO', 100, '2018-04-11 00:53:32', '2018-04-11 00:53:32'),
(50, 2, 'Veni, vidi, vici.', 23, 'C of Pythons', 50, '2018-04-11 00:53:59', '2018-04-11 00:53:59'),
(51, 3, 'Experience is the teacher of all things.', 6, 'Exterminators', 60, '2018-04-11 00:54:07', '2018-04-11 00:54:07'),
(52, 1, 'Getting Started', 38, 'Default', 10, '2018-04-11 00:54:54', '2018-04-11 00:54:54'),
(53, 27, '<font color=\"#9c31a5\">Linux Level 1</font>', 20, 'NOOBIES', 30, '2018-04-11 00:55:52', '2018-04-11 00:55:52'),
(54, 2, 'Veni, vidi, vici.', 7, 'WeCode', 50, '2018-04-11 00:56:10', '2018-04-11 00:56:10'),
(55, 2, 'Veni, vidi, vici.', 39, 'MASONS', 50, '2018-04-11 00:56:17', '2018-04-11 00:56:17'),
(56, 2, 'Veni, vidi, vici.', 37, 'Blackbeard', 50, '2018-04-11 00:57:24', '2018-04-11 00:57:24'),
(57, 18, 'Password', 14, 'DESPOTATO', 50, '2018-04-11 00:58:31', '2018-04-11 00:58:31'),
(58, 4, 'ECNALUBMA', 25, 'R^2', 100, '2018-04-11 01:00:17', '2018-04-11 01:00:17'),
(59, 2, 'Veni, vidi, vici.', 12, 'D Coders', 50, '2018-04-11 01:00:48', '2018-04-11 01:00:48'),
(60, 2, 'Veni, vidi, vici.', 36, 'THE TEAM', 50, '2018-04-11 01:00:55', '2018-04-11 01:00:55'),
(61, 2, 'Veni, vidi, vici.', 28, 'unnamed coder', 50, '2018-04-11 01:01:09', '2018-04-11 01:01:09'),
(62, 2, 'Veni, vidi, vici.', 34, 'Brain Tweezers', 50, '2018-04-11 01:02:10', '2018-04-11 01:02:10'),
(63, 4, 'ECNALUBMA', 16, 'Nchanters', 100, '2018-04-11 01:02:11', '2018-04-11 01:02:11'),
(64, 5, 'Colour', 32, 'Lord', 50, '2018-04-11 01:03:34', '2018-04-11 01:03:34'),
(65, 9, 'Are they different?', 3, 'Predators', 150, '2018-04-11 01:03:41', '2018-04-11 01:03:41'),
(66, 6, 'Square root?', 25, 'R^2', 40, '2018-04-11 01:04:27', '2018-04-11 01:04:27'),
(67, 2, 'Veni, vidi, vici.', 33, 'aimers', 50, '2018-04-11 01:04:35', '2018-04-11 01:04:35'),
(68, 4, 'ECNALUBMA', 6, 'Exterminators', 100, '2018-04-11 01:05:51', '2018-04-11 01:05:51'),
(69, 29, '<font color=\"#9c31a5\">Linux Level 3</font>', 20, 'NOOBIES', 100, '2018-04-11 01:06:23', '2018-04-11 01:06:23'),
(70, 2, 'Veni, vidi, vici.', 31, 'INVICTUS', 50, '2018-04-11 01:06:52', '2018-04-11 01:06:52'),
(71, 1, 'Getting Started', 41, 'Decoders', 10, '2018-04-11 01:08:55', '2018-04-11 01:08:55'),
(72, 3, 'Experience is the teacher of all things.', 36, 'THE TEAM', 60, '2018-04-11 01:10:23', '2018-04-11 01:10:23'),
(73, 1, 'Getting Started', 44, 'THE K SQUAD', 10, '2018-04-11 01:12:09', '2018-04-11 01:12:09'),
(74, 5, 'Colour', 33, 'aimers', 50, '2018-04-11 01:12:27', '2018-04-11 01:12:27'),
(75, 5, 'Colour', 6, 'Exterminators', 50, '2018-04-11 01:13:37', '2018-04-11 01:13:37'),
(76, 2, 'Veni, vidi, vici.', 4, 'Cyber Cruisers', 50, '2018-04-11 01:13:42', '2018-04-11 01:13:42'),
(77, 27, '<font color=\"#9c31a5\">Linux Level 1</font>', 10, 'Red Team', 30, '2018-04-11 01:13:53', '2018-04-11 01:13:53'),
(78, 3, 'Experience is the teacher of all things.', 12, 'D Coders', 60, '2018-04-11 01:14:00', '2018-04-11 01:14:00'),
(79, 5, 'Colour', 36, 'THE TEAM', 50, '2018-04-11 01:14:33', '2018-04-11 01:14:33'),
(80, 22, 'Birthday Gift', 16, 'Nchanters', 50, '2018-04-11 01:14:55', '2018-04-11 01:14:55'),
(81, 1, 'Getting Started', 45, 'Team', 10, '2018-04-11 01:15:27', '2018-04-11 01:15:27'),
(82, 2, 'Veni, vidi, vici.', 17, 'Stonner', 50, '2018-04-11 01:17:01', '2018-04-11 01:17:01'),
(83, 12, 'Few files', 14, 'DESPOTATO', 30, '2018-04-11 01:17:19', '2018-04-11 01:17:19'),
(84, 1, 'Getting Started', 40, 'Subhrajyoti', 10, '2018-04-11 01:17:20', '2018-04-11 01:17:20'),
(85, 2, 'Veni, vidi, vici.', 24, 'NOOBIE', 50, '2018-04-11 01:18:47', '2018-04-11 01:18:47'),
(86, 25, 'TWO is POWERful', 21, 'Trojan', 200, '2018-04-11 01:19:04', '2018-04-11 01:19:04'),
(87, 2, 'Veni, vidi, vici.', 5, 'Noobs', 50, '2018-04-11 01:19:23', '2018-04-11 01:19:23'),
(88, 14, 'Login', 5, 'Noobs', 60, '2018-04-11 01:19:50', '2018-04-11 01:19:50'),
(89, 2, 'Veni, vidi, vici.', 41, 'Decoders', 50, '2018-04-11 01:20:16', '2018-04-11 01:20:16'),
(90, 2, 'Veni, vidi, vici.', 9, 'Double A', 50, '2018-04-11 01:20:24', '2018-04-11 01:20:24'),
(91, 2, 'Veni, vidi, vici.', 27, 'pallabpankaj', 50, '2018-04-11 01:21:12', '2018-04-11 01:21:12'),
(92, 2, 'Veni, vidi, vici.', 32, 'Lord', 50, '2018-04-11 01:22:02', '2018-04-11 01:22:02'),
(93, 8, 'That is a lot of text', 24, 'NOOBIE', 100, '2018-04-11 01:22:09', '2018-04-11 01:22:09'),
(94, 2, 'Veni, vidi, vici.', 3, 'Predators', 50, '2018-04-11 01:22:13', '2018-04-11 01:22:13'),
(95, 26, 'Lurking in plain sight', 16, 'Nchanters', 50, '2018-04-11 01:22:28', '2018-04-11 01:22:28'),
(96, 26, 'Lurking in plain sight', 26, 'Geeks', 50, '2018-04-11 01:22:44', '2018-04-11 01:22:44'),
(97, 2, 'Veni, vidi, vici.', 11, 'Single', 50, '2018-04-11 01:24:04', '2018-04-11 01:24:04'),
(98, 5, 'Colour', 12, 'D Coders', 50, '2018-04-11 01:26:25', '2018-04-11 01:26:25'),
(99, 4, 'ECNALUBMA', 32, 'Lord', 100, '2018-04-11 01:26:27', '2018-04-11 01:26:27'),
(100, 2, 'Veni, vidi, vici.', 2, 'Cybertronians', 50, '2018-04-11 01:26:31', '2018-04-11 01:26:31'),
(101, 2, 'Veni, vidi, vici.', 26, 'Geeks', 50, '2018-04-11 01:28:37', '2018-04-11 01:28:37'),
(102, 3, 'Experience is the teacher of all things.', 32, 'Lord', 60, '2018-04-11 01:28:45', '2018-04-11 01:28:45'),
(103, 23, 'Alkali', 20, 'NOOBIES', 60, '2018-04-11 01:29:17', '2018-04-11 01:29:17'),
(104, 6, 'Square root?', 4, 'Cyber Cruisers', 40, '2018-04-11 01:30:00', '2018-04-11 01:30:00'),
(105, 4, 'ECNALUBMA', 12, 'D Coders', 100, '2018-04-11 01:30:10', '2018-04-11 01:30:10'),
(106, 1, 'Getting Started', 48, 'Alpha', 10, '2018-04-11 01:30:22', '2018-04-11 01:30:22'),
(107, 1, 'Getting Started', 50, 'Dazzlers', 10, '2018-04-11 01:30:58', '2018-04-11 01:30:58'),
(108, 2, 'Veni, vidi, vici.', 38, 'Default', 50, '2018-04-11 01:31:01', '2018-04-11 01:31:01'),
(109, 6, 'Square root?', 11, 'Single', 40, '2018-04-11 01:31:12', '2018-04-11 01:31:12'),
(110, 7, 'I am hidden', 25, 'R^2', 50, '2018-04-11 01:31:20', '2018-04-11 01:31:20'),
(111, 5, 'Colour', 39, 'MASONS', 50, '2018-04-11 01:31:40', '2018-04-11 01:31:40'),
(112, 1, 'Getting Started', 51, 'we both', 10, '2018-04-11 01:31:53', '2018-04-11 01:31:53'),
(113, 10, 'They are different!', 37, 'Blackbeard', 200, '2018-04-11 01:31:56', '2018-04-11 01:31:56'),
(114, 9, 'Are they different?', 24, 'NOOBIE', 150, '2018-04-11 01:33:27', '2018-04-11 01:33:27'),
(115, 17, 'NULL', 2, 'Cybertronians', 40, '2018-04-11 01:33:38', '2018-04-11 01:33:38'),
(116, 2, 'Veni, vidi, vici.', 44, 'THE K SQUAD', 50, '2018-04-11 01:33:58', '2018-04-11 01:33:58'),
(117, 1, 'Getting Started', 54, 'codex', 10, '2018-04-11 01:34:47', '2018-04-11 01:34:47'),
(118, 12, 'Few files', 16, 'Nchanters', 30, '2018-04-11 01:37:08', '2018-04-11 01:37:08'),
(119, 8, 'That is a lot of text', 3, 'Predators', 100, '2018-04-11 01:37:10', '2018-04-11 01:37:10'),
(120, 9, 'Are they different?', 37, 'Blackbeard', 150, '2018-04-11 01:38:30', '2018-04-11 01:38:30'),
(121, 5, 'Colour', 34, 'Brain Tweezers', 50, '2018-04-11 01:38:31', '2018-04-11 01:38:31'),
(122, 2, 'Veni, vidi, vici.', 45, 'Team', 50, '2018-04-11 01:39:01', '2018-04-11 01:39:01'),
(123, 2, 'Veni, vidi, vici.', 48, 'Alpha', 50, '2018-04-11 01:39:24', '2018-04-11 01:39:24'),
(124, 26, 'Lurking in plain sight', 10, 'Red Team', 50, '2018-04-11 01:40:05', '2018-04-11 01:40:05'),
(125, 1, 'Getting Started', 47, 'NoobCoders', 10, '2018-04-11 01:40:48', '2018-04-11 01:40:48'),
(126, 1, 'Getting Started', 56, 'Dark Horse', 10, '2018-04-11 01:41:18', '2018-04-11 01:41:18'),
(127, 6, 'Square root?', 33, 'aimers', 40, '2018-04-11 01:41:31', '2018-04-11 01:41:31'),
(128, 8, 'That is a lot of text', 40, 'Subhrajyoti', 100, '2018-04-11 01:41:57', '2018-04-11 01:41:57'),
(129, 20, 'Choo Choo', 2, 'Cybertronians', 50, '2018-04-11 01:42:10', '2018-04-11 01:42:10'),
(130, 2, 'Veni, vidi, vici.', 51, 'we both', 50, '2018-04-11 01:45:09', '2018-04-11 01:45:09'),
(131, 24, 'Matrix', 41, 'Decoders', 50, '2018-04-11 01:45:26', '2018-04-11 01:45:26'),
(132, 13, 'Few more files!', 16, 'Nchanters', 100, '2018-04-11 01:45:38', '2018-04-11 01:45:38'),
(133, 27, '<font color=\"#9c31a5\">Linux Level 1</font>', 12, 'D Coders', 30, '2018-04-11 01:45:41', '2018-04-11 01:45:41'),
(134, 15, 'Login again', 10, 'Red Team', 50, '2018-04-11 01:48:01', '2018-04-11 01:48:01'),
(135, 9, 'Are they different?', 6, 'Exterminators', 150, '2018-04-11 01:48:17', '2018-04-11 01:48:17'),
(136, 2, 'Veni, vidi, vici.', 47, 'NoobCoders', 50, '2018-04-11 01:48:43', '2018-04-11 01:48:43'),
(137, 4, 'ECNALUBMA', 11, 'Single', 100, '2018-04-11 01:48:53', '2018-04-11 01:48:53'),
(138, 26, 'Lurking in plain sight', 2, 'Cybertronians', 50, '2018-04-11 01:49:57', '2018-04-11 01:49:57'),
(139, 24, 'Matrix', 24, 'NOOBIE', 50, '2018-04-11 01:50:39', '2018-04-11 01:50:39'),
(140, 9, 'Are they different?', 40, 'Subhrajyoti', 150, '2018-04-11 01:50:53', '2018-04-11 01:50:53'),
(141, 6, 'Square root?', 34, 'Brain Tweezers', 40, '2018-04-11 01:52:24', '2018-04-11 01:52:24'),
(142, 2, 'Veni, vidi, vici.', 50, 'Dazzlers', 50, '2018-04-11 01:52:52', '2018-04-11 01:52:52'),
(143, 12, 'Few files', 24, 'NOOBIE', 30, '2018-04-11 01:53:44', '2018-04-11 01:53:44'),
(144, 10, 'They are different!', 6, 'Exterminators', 200, '2018-04-11 01:54:15', '2018-04-11 01:54:15'),
(145, 4, 'ECNALUBMA', 47, 'NoobCoders', 100, '2018-04-11 01:54:17', '2018-04-11 01:54:17'),
(146, 26, 'Lurking in plain sight', 3, 'Predators', 50, '2018-04-11 01:55:14', '2018-04-11 01:55:14'),
(147, 12, 'Few files', 45, 'Team', 30, '2018-04-11 01:55:25', '2018-04-11 01:55:25'),
(148, 9, 'Are they different?', 5, 'Noobs', 150, '2018-04-11 01:56:01', '2018-04-11 01:56:01'),
(149, 12, 'Few files', 40, 'Subhrajyoti', 30, '2018-04-11 01:57:20', '2018-04-11 01:57:20'),
(150, 12, 'Few files', 44, 'THE K SQUAD', 30, '2018-04-11 01:57:56', '2018-04-11 01:57:56'),
(151, 6, 'Square root?', 20, 'NOOBIES', 40, '2018-04-11 01:58:51', '2018-04-11 01:58:51'),
(152, 12, 'Few files', 10, 'Red Team', 30, '2018-04-11 01:58:52', '2018-04-11 01:58:52'),
(153, 26, 'Lurking in plain sight', 37, 'Blackbeard', 50, '2018-04-11 02:00:41', '2018-04-11 02:00:41'),
(154, 10, 'They are different!', 40, 'Subhrajyoti', 200, '2018-04-11 02:01:05', '2018-04-11 02:01:05'),
(155, 12, 'Few files', 56, 'Dark Horse', 30, '2018-04-11 02:03:54', '2018-04-11 02:03:54'),
(156, 12, 'Few files', 39, 'MASONS', 30, '2018-04-11 02:05:06', '2018-04-11 02:05:06'),
(157, 7, 'I am hidden', 10, 'Red Team', 50, '2018-04-11 02:06:06', '2018-04-11 02:06:06'),
(158, 9, 'Are they different?', 25, 'R^2', 150, '2018-04-11 02:07:13', '2018-04-11 02:07:13'),
(159, 12, 'Few files', 54, 'codex', 30, '2018-04-11 02:08:14', '2018-04-11 02:08:14'),
(160, 12, 'Few files', 6, 'Exterminators', 30, '2018-04-11 02:08:26', '2018-04-11 02:08:26'),
(161, 1, 'Getting Started', 57, 'Survivors', 10, '2018-04-11 02:11:00', '2018-04-11 02:11:00'),
(162, 6, 'Square root?', 3, 'Predators', 40, '2018-04-11 02:11:47', '2018-04-11 02:11:47'),
(163, 10, 'They are different!', 5, 'Noobs', 200, '2018-04-11 02:12:21', '2018-04-11 02:12:21'),
(164, 12, 'Few files', 21, 'Trojan', 30, '2018-04-11 02:12:55', '2018-04-11 02:12:55'),
(165, 7, 'I am hidden', 15, 'Cipher', 50, '2018-04-11 02:13:02', '2018-04-11 02:13:02'),
(166, 10, 'They are different!', 38, 'Default', 200, '2018-04-11 02:13:52', '2018-04-11 02:13:52'),
(167, 10, 'They are different!', 24, 'NOOBIE', 200, '2018-04-11 02:14:19', '2018-04-11 02:14:19'),
(168, 7, 'I am hidden', 4, 'Cyber Cruisers', 50, '2018-04-11 02:15:38', '2018-04-11 02:15:38'),
(169, 9, 'Are they different?', 10, 'Red Team', 150, '2018-04-11 02:16:02', '2018-04-11 02:16:02'),
(170, 12, 'Few files', 5, 'Noobs', 30, '2018-04-11 02:16:11', '2018-04-11 02:16:11'),
(171, 8, 'That is a lot of text', 36, 'THE TEAM', 100, '2018-04-11 02:16:12', '2018-04-11 02:16:12'),
(172, 5, 'Colour', 2, 'Cybertronians', 50, '2018-04-11 02:17:36', '2018-04-11 02:17:36'),
(173, 18, 'Password', 16, 'Nchanters', 50, '2018-04-11 02:18:44', '2018-04-11 02:18:44'),
(174, 5, 'Colour', 14, 'DESPOTATO', 50, '2018-04-11 02:19:05', '2018-04-11 02:19:05'),
(175, 13, 'Few more files!', 6, 'Exterminators', 100, '2018-04-11 02:19:36', '2018-04-11 02:19:36'),
(176, 10, 'They are different!', 4, 'Cyber Cruisers', 200, '2018-04-11 02:19:39', '2018-04-11 02:19:39'),
(177, 10, 'They are different!', 10, 'Red Team', 200, '2018-04-11 02:21:17', '2018-04-11 02:21:17'),
(178, 26, 'Lurking in plain sight', 15, 'Cipher', 50, '2018-04-11 02:22:45', '2018-04-11 02:22:45'),
(179, 9, 'Are they different?', 4, 'Cyber Cruisers', 150, '2018-04-11 02:23:08', '2018-04-11 02:23:08'),
(180, 5, 'Colour', 57, 'Survivors', 50, '2018-04-11 02:24:28', '2018-04-11 02:24:28'),
(181, 26, 'Lurking in plain sight', 8, 'Brogrammers', 50, '2018-04-11 02:25:21', '2018-04-11 02:25:21'),
(182, 7, 'I am hidden', 36, 'THE TEAM', 50, '2018-04-11 02:25:30', '2018-04-11 02:25:30'),
(183, 8, 'That is a lot of text', 20, 'NOOBIES', 100, '2018-04-11 02:26:12', '2018-04-11 02:26:12'),
(184, 4, 'ECNALUBMA', 2, 'Cybertronians', 100, '2018-04-11 02:26:29', '2018-04-11 02:26:29'),
(185, 2, 'Veni, vidi, vici.', 57, 'Survivors', 50, '2018-04-11 02:27:00', '2018-04-11 02:27:00'),
(186, 9, 'Are they different?', 38, 'Default', 150, '2018-04-11 02:27:32', '2018-04-11 02:27:32'),
(187, 6, 'Square root?', 39, 'MASONS', 40, '2018-04-11 02:28:50', '2018-04-11 02:28:50'),
(188, 1, 'Getting Started', 58, 'Cryptic Duo', 10, '2018-04-11 02:32:11', '2018-04-11 02:32:11'),
(189, 7, 'I am hidden', 2, 'Cybertronians', 50, '2018-04-11 02:32:54', '2018-04-11 02:32:54'),
(190, 26, 'Lurking in plain sight', 9, 'Double A', 50, '2018-04-11 02:33:03', '2018-04-11 02:33:03'),
(191, 20, 'Choo Choo', 10, 'Red Team', 50, '2018-04-11 02:33:22', '2018-04-11 02:33:22'),
(192, 24, 'Matrix', 15, 'Cipher', 50, '2018-04-11 02:34:36', '2018-04-11 02:34:36'),
(193, 6, 'Square root?', 36, 'THE TEAM', 40, '2018-04-11 02:35:03', '2018-04-11 02:35:03'),
(194, 5, 'Colour', 3, 'Predators', 50, '2018-04-11 02:35:15', '2018-04-11 02:35:15'),
(195, 24, 'Matrix', 10, 'Red Team', 50, '2018-04-11 02:36:23', '2018-04-11 02:36:23'),
(196, 5, 'Colour', 48, 'Alpha', 50, '2018-04-11 02:37:08', '2018-04-11 02:37:08'),
(197, 6, 'Square root?', 8, 'Brogrammers', 40, '2018-04-11 02:37:25', '2018-04-11 02:37:25'),
(198, 12, 'Few files', 3, 'Predators', 30, '2018-04-11 02:38:44', '2018-04-11 02:38:44'),
(199, 5, 'Colour', 50, 'Dazzlers', 50, '2018-04-11 02:39:16', '2018-04-11 02:39:16'),
(200, 9, 'Are they different?', 39, 'MASONS', 150, '2018-04-11 02:39:54', '2018-04-11 02:39:54'),
(201, 6, 'Square root?', 48, 'Alpha', 40, '2018-04-11 02:42:59', '2018-04-11 02:42:59'),
(202, 10, 'They are different!', 25, 'R^2', 200, '2018-04-11 02:43:04', '2018-04-11 02:43:04'),
(203, 24, 'Matrix', 20, 'NOOBIES', 50, '2018-04-11 02:43:08', '2018-04-11 02:43:08'),
(204, 6, 'Square root?', 50, 'Dazzlers', 40, '2018-04-11 02:44:24', '2018-04-11 02:44:24'),
(205, 27, '<font color=\"#9c31a5\">Linux Level 1</font>', 44, 'THE K SQUAD', 30, '2018-04-11 02:44:30', '2018-04-11 02:44:30'),
(206, 5, 'Colour', 8, 'Brogrammers', 50, '2018-04-11 02:44:58', '2018-04-11 02:44:58'),
(207, 12, 'Few files', 25, 'R^2', 30, '2018-04-11 02:46:40', '2018-04-11 02:46:40'),
(208, 1, 'Getting Started', 61, 'Rampage', 10, '2018-04-11 02:47:22', '2018-04-11 02:47:22'),
(209, 24, 'Matrix', 2, 'Cybertronians', 50, '2018-04-11 02:48:48', '2018-04-11 02:48:48'),
(210, 1, 'Getting Started', 60, 'Ritoban Mukhopadhyay', 10, '2018-04-11 02:48:49', '2018-04-11 02:48:49'),
(211, 9, 'Are they different?', 36, 'THE TEAM', 150, '2018-04-11 02:48:50', '2018-04-11 02:48:50'),
(212, 13, 'Few more files!', 12, 'D Coders', 100, '2018-04-11 02:49:02', '2018-04-11 02:49:02'),
(213, 18, 'Password', 45, 'Team', 50, '2018-04-11 02:49:32', '2018-04-11 02:49:32'),
(214, 14, 'Login', 3, 'Predators', 60, '2018-04-11 02:49:43', '2018-04-11 02:49:43'),
(215, 26, 'Lurking in plain sight', 20, 'NOOBIES', 50, '2018-04-11 02:49:48', '2018-04-11 02:49:48'),
(216, 10, 'They are different!', 36, 'THE TEAM', 200, '2018-04-11 02:50:26', '2018-04-11 02:50:26'),
(217, 1, 'Getting Started', 59, 'Cyber.AR', 10, '2018-04-11 02:50:42', '2018-04-11 02:50:42'),
(218, 14, 'Login', 24, 'NOOBIE', 60, '2018-04-11 02:50:54', '2018-04-11 02:50:54'),
(219, 9, 'Are they different?', 16, 'Nchanters', 150, '2018-04-11 02:51:11', '2018-04-11 02:51:11'),
(220, 14, 'Login', 9, 'Double A', 60, '2018-04-11 02:51:19', '2018-04-11 02:51:19'),
(221, 1, 'Getting Started', 62, 'Detective Crypto', 10, '2018-04-11 02:52:49', '2018-04-11 02:52:49'),
(222, 2, 'Veni, vidi, vici.', 61, 'Rampage', 50, '2018-04-11 02:53:02', '2018-04-11 02:53:02'),
(223, 23, 'Alkali', 2, 'Cybertronians', 60, '2018-04-11 02:53:05', '2018-04-11 02:53:05'),
(224, 8, 'That is a lot of text', 4, 'Cyber Cruisers', 100, '2018-04-11 02:53:32', '2018-04-11 02:53:32'),
(225, 24, 'Matrix', 12, 'D Coders', 50, '2018-04-11 02:54:03', '2018-04-11 02:54:03'),
(226, 29, '<font color=\"#9c31a5\">Linux Level 3</font>', 44, 'THE K SQUAD', 100, '2018-04-11 02:54:44', '2018-04-11 02:54:44'),
(227, 23, 'Alkali', 10, 'Red Team', 60, '2018-04-11 02:54:59', '2018-04-11 02:54:59'),
(228, 27, '<font color=\"#9c31a5\">Linux Level 1</font>', 61, 'Rampage', 30, '2018-04-11 02:55:06', '2018-04-11 02:55:06'),
(229, 12, 'Few files', 4, 'Cyber Cruisers', 30, '2018-04-11 02:56:43', '2018-04-11 02:56:43'),
(230, 24, 'Matrix', 4, 'Cyber Cruisers', 50, '2018-04-11 02:56:58', '2018-04-11 02:56:58'),
(231, 23, 'Alkali', 21, 'Trojan', 60, '2018-04-11 02:57:00', '2018-04-11 02:57:00'),
(232, 12, 'Few files', 36, 'THE TEAM', 30, '2018-04-11 02:57:43', '2018-04-11 02:57:43'),
(233, 12, 'Few files', 8, 'Brogrammers', 30, '2018-04-11 02:58:26', '2018-04-11 02:58:26'),
(234, 20, 'Choo Choo', 14, 'DESPOTATO', 50, '2018-04-11 02:58:41', '2018-04-11 02:58:41'),
(235, 23, 'Alkali', 3, 'Predators', 60, '2018-04-11 03:01:01', '2018-04-11 03:01:01'),
(236, 26, 'Lurking in plain sight', 21, 'Trojan', 50, '2018-04-11 03:01:03', '2018-04-11 03:01:03'),
(237, 1, 'Getting Started', 63, 'Cipher0208', 10, '2018-04-11 03:02:36', '2018-04-11 03:02:36'),
(238, 6, 'Square root?', 2, 'Cybertronians', 40, '2018-04-11 03:03:08', '2018-04-11 03:03:08'),
(239, 7, 'I am hidden', 3, 'Predators', 50, '2018-04-11 03:04:18', '2018-04-11 03:04:18'),
(240, 30, '<font color=\"#9c31a5\">Linux Level 4</font>', 44, 'THE K SQUAD', 150, '2018-04-11 03:05:29', '2018-04-11 03:05:29'),
(241, 10, 'They are different!', 3, 'Predators', 200, '2018-04-11 03:06:29', '2018-04-11 03:06:29'),
(242, 10, 'They are different!', 2, 'Cybertronians', 200, '2018-04-11 03:07:06', '2018-04-11 03:07:06'),
(243, 5, 'Colour', 4, 'Cyber Cruisers', 50, '2018-04-11 03:07:45', '2018-04-11 03:07:45'),
(244, 8, 'That is a lot of text', 39, 'MASONS', 100, '2018-04-11 03:08:05', '2018-04-11 03:08:05'),
(245, 5, 'Colour', 47, 'NoobCoders', 50, '2018-04-11 03:09:17', '2018-04-11 03:09:17'),
(246, 8, 'That is a lot of text', 37, 'Blackbeard', 100, '2018-04-11 03:09:25', '2018-04-11 03:09:25'),
(247, 1, 'Getting Started', 65, 'Cryptoid', 10, '2018-04-11 03:11:45', '2018-04-11 03:11:45'),
(248, 1, 'Getting Started', 66, 'HuntOS 2.0', 10, '2018-04-11 03:12:08', '2018-04-11 03:12:08'),
(249, 1, 'Getting Started', 64, 'ESCOBAR', 10, '2018-04-11 03:13:59', '2018-04-11 03:13:59'),
(250, 29, '<font color=\"#9c31a5\">Linux Level 3</font>', 61, 'Rampage', 100, '2018-04-11 03:14:28', '2018-04-11 03:14:28'),
(251, 17, 'NULL', 9, 'Double A', 40, '2018-04-11 03:15:24', '2018-04-11 03:15:24'),
(252, 6, 'Square root?', 44, 'THE K SQUAD', 40, '2018-04-11 03:16:26', '2018-04-11 03:16:26'),
(253, 23, 'Alkali', 14, 'DESPOTATO', 60, '2018-04-11 03:16:37', '2018-04-11 03:16:37'),
(254, 1, 'Getting Started', 70, 'Riddle Hunter', 10, '2018-04-11 03:17:27', '2018-04-11 03:17:27'),
(255, 14, 'Login', 20, 'NOOBIES', 60, '2018-04-11 03:17:38', '2018-04-11 03:17:38'),
(256, 23, 'Alkali', 44, 'THE K SQUAD', 60, '2018-04-11 03:17:55', '2018-04-11 03:17:55'),
(257, 26, 'Lurking in plain sight', 14, 'DESPOTATO', 50, '2018-04-11 03:19:07', '2018-04-11 03:19:07'),
(258, 7, 'I am hidden', 61, 'Rampage', 50, '2018-04-11 03:19:12', '2018-04-11 03:19:12'),
(259, 12, 'Few files', 48, 'Alpha', 30, '2018-04-11 03:19:31', '2018-04-11 03:19:31'),
(260, 18, 'Password', 59, 'Cyber.AR', 50, '2018-04-11 03:19:49', '2018-04-11 03:19:49'),
(261, 26, 'Lurking in plain sight', 25, 'R^2', 50, '2018-04-11 03:20:35', '2018-04-11 03:20:35'),
(262, 1, 'Getting Started', 69, 'god save us', 10, '2018-04-11 03:20:43', '2018-04-11 03:20:43'),
(263, 1, 'Getting Started', 68, 'TnJ', 10, '2018-04-11 03:21:29', '2018-04-11 03:21:29'),
(264, 9, 'Are they different?', 57, 'Survivors', 150, '2018-04-11 03:21:50', '2018-04-11 03:21:50'),
(265, 23, 'Alkali', 57, 'Survivors', 60, '2018-04-11 03:22:34', '2018-04-11 03:22:34'),
(266, 6, 'Square root?', 57, 'Survivors', 40, '2018-04-11 03:24:19', '2018-04-11 03:24:19'),
(267, 2, 'Veni, vidi, vici.', 64, 'ESCOBAR', 50, '2018-04-11 03:25:36', '2018-04-11 03:25:36'),
(268, 14, 'Login', 37, 'Blackbeard', 60, '2018-04-11 03:26:15', '2018-04-11 03:26:15'),
(269, 7, 'I am hidden', 57, 'Survivors', 50, '2018-04-11 03:26:39', '2018-04-11 03:26:39'),
(270, 9, 'Are they different?', 21, 'Trojan', 150, '2018-04-11 03:26:57', '2018-04-11 03:26:57'),
(271, 9, 'Are they different?', 2, 'Cybertronians', 150, '2018-04-11 03:27:07', '2018-04-11 03:27:07'),
(272, 5, 'Colour', 44, 'THE K SQUAD', 50, '2018-04-11 03:27:39', '2018-04-11 03:27:39'),
(273, 10, 'They are different!', 57, 'Survivors', 200, '2018-04-11 03:28:23', '2018-04-11 03:28:23'),
(274, 26, 'Lurking in plain sight', 27, 'pallabpankaj', 50, '2018-04-11 03:28:55', '2018-04-11 03:28:55'),
(275, 5, 'Colour', 7, 'WeCode', 50, '2018-04-11 03:29:24', '2018-04-11 03:29:24'),
(276, 8, 'That is a lot of text', 57, 'Survivors', 100, '2018-04-11 03:30:03', '2018-04-11 03:30:03'),
(277, 18, 'Password', 21, 'Trojan', 50, '2018-04-11 03:30:33', '2018-04-11 03:30:33'),
(278, 18, 'Password', 8, 'Brogrammers', 50, '2018-04-11 03:30:48', '2018-04-11 03:30:48'),
(279, 3, 'Experience is the teacher of all things.', 64, 'ESCOBAR', 60, '2018-04-11 03:31:13', '2018-04-11 03:31:13'),
(280, 13, 'Few more files!', 48, 'Alpha', 100, '2018-04-11 03:32:36', '2018-04-11 03:32:36'),
(281, 9, 'Are they different?', 47, 'NoobCoders', 150, '2018-04-11 03:32:51', '2018-04-11 03:32:51'),
(282, 8, 'That is a lot of text', 61, 'Rampage', 100, '2018-04-11 03:33:12', '2018-04-11 03:33:12'),
(283, 14, 'Login', 36, 'THE TEAM', 60, '2018-04-11 03:33:19', '2018-04-11 03:33:19'),
(284, 2, 'Veni, vidi, vici.', 63, 'Cipher0208', 50, '2018-04-11 03:34:29', '2018-04-11 03:34:29'),
(285, 17, 'NULL', 8, 'Brogrammers', 40, '2018-04-11 03:34:29', '2018-04-11 03:34:29'),
(286, 10, 'They are different!', 58, 'Cryptic Duo', 200, '2018-04-11 03:34:39', '2018-04-11 03:34:39'),
(287, 7, 'I am hidden', 69, 'god save us', 50, '2018-04-11 03:34:44', '2018-04-11 03:34:44'),
(288, 12, 'Few files', 58, 'Cryptic Duo', 30, '2018-04-11 03:36:42', '2018-04-11 03:36:42'),
(289, 10, 'They are different!', 47, 'NoobCoders', 200, '2018-04-11 03:38:11', '2018-04-11 03:38:11'),
(290, 12, 'Few files', 37, 'Blackbeard', 30, '2018-04-11 03:38:32', '2018-04-11 03:38:32'),
(291, 2, 'Veni, vidi, vici.', 68, 'TnJ', 50, '2018-04-11 03:40:39', '2018-04-11 03:40:39'),
(292, 6, 'Square root?', 58, 'Cryptic Duo', 40, '2018-04-11 03:41:23', '2018-04-11 03:41:23'),
(293, 4, 'ECNALUBMA', 7, 'WeCode', 100, '2018-04-11 03:41:48', '2018-04-11 03:41:48'),
(294, 2, 'Veni, vidi, vici.', 60, 'Ritoban Mukhopadhyay', 50, '2018-04-11 03:43:29', '2018-04-11 03:43:29'),
(295, 9, 'Are they different?', 63, 'Cipher0208', 150, '2018-04-11 03:44:27', '2018-04-11 03:44:27'),
(296, 8, 'That is a lot of text', 47, 'NoobCoders', 100, '2018-04-11 03:47:59', '2018-04-11 03:47:59'),
(297, 6, 'Square root?', 37, 'Blackbeard', 40, '2018-04-11 03:48:19', '2018-04-11 03:48:19'),
(298, 26, 'Lurking in plain sight', 61, 'Rampage', 50, '2018-04-11 03:50:56', '2018-04-11 03:50:56'),
(299, 5, 'Colour', 63, 'Cipher0208', 50, '2018-04-11 03:52:47', '2018-04-11 03:52:47'),
(300, 9, 'Are they different?', 8, 'Brogrammers', 150, '2018-04-11 03:52:51', '2018-04-11 03:52:51'),
(301, 2, 'Veni, vidi, vici.', 69, 'god save us', 50, '2018-04-11 03:53:48', '2018-04-11 03:53:48'),
(302, 12, 'Few files', 69, 'god save us', 30, '2018-04-11 03:56:50', '2018-04-11 03:56:50'),
(303, 12, 'Few files', 62, 'Detective Crypto', 30, '2018-04-11 04:01:19', '2018-04-11 04:01:19'),
(304, 10, 'They are different!', 64, 'ESCOBAR', 200, '2018-04-11 04:04:05', '2018-04-11 04:04:05'),
(305, 6, 'Square root?', 68, 'TnJ', 40, '2018-04-11 04:06:12', '2018-04-11 04:06:12'),
(306, 6, 'Square root?', 69, 'god save us', 40, '2018-04-11 04:06:17', '2018-04-11 04:06:17'),
(307, 1, 'Getting Started', 71, 'sas', 10, '2018-04-11 04:09:40', '2018-04-11 04:09:40'),
(308, 2, 'Veni, vidi, vici.', 70, 'Riddle Hunter', 50, '2018-04-11 04:09:55', '2018-04-11 04:09:55'),
(309, 14, 'Login', 68, 'TnJ', 60, '2018-04-11 04:10:07', '2018-04-11 04:10:07'),
(310, 3, 'Experience is the teacher of all things.', 68, 'TnJ', 60, '2018-04-11 04:13:33', '2018-04-11 04:13:33'),
(311, 2, 'Veni, vidi, vici.', 71, 'sas', 50, '2018-04-11 04:13:40', '2018-04-11 04:13:40'),
(312, 7, 'I am hidden', 68, 'TnJ', 50, '2018-04-11 04:16:44', '2018-04-11 04:16:44'),
(313, 12, 'Few files', 61, 'Rampage', 30, '2018-04-11 04:17:08', '2018-04-11 04:17:08'),
(314, 24, 'Matrix', 37, 'Blackbeard', 50, '2018-04-11 04:17:08', '2018-04-11 04:17:08'),
(315, 12, 'Few files', 68, 'TnJ', 30, '2018-04-11 04:17:39', '2018-04-11 04:17:39'),
(316, 24, 'Matrix', 64, 'ESCOBAR', 50, '2018-04-11 04:19:00', '2018-04-11 04:19:00'),
(317, 24, 'Matrix', 61, 'Rampage', 50, '2018-04-11 04:19:30', '2018-04-11 04:19:30'),
(318, 12, 'Few files', 64, 'ESCOBAR', 30, '2018-04-11 04:21:15', '2018-04-11 04:21:15'),
(319, 23, 'Alkali', 15, 'Cipher', 60, '2018-04-11 04:21:51', '2018-04-11 04:21:51'),
(320, 10, 'They are different!', 63, 'Cipher0208', 200, '2018-04-11 04:22:11', '2018-04-11 04:22:11'),
(321, 26, 'Lurking in plain sight', 68, 'TnJ', 50, '2018-04-11 04:25:24', '2018-04-11 04:25:24'),
(322, 14, 'Login', 58, 'Cryptic Duo', 60, '2018-04-11 04:25:43', '2018-04-11 04:25:43'),
(323, 12, 'Few files', 26, 'Geeks', 30, '2018-04-11 04:26:08', '2018-04-11 04:26:08'),
(324, 6, 'Square root?', 64, 'ESCOBAR', 40, '2018-04-11 04:28:05', '2018-04-11 04:28:05'),
(325, 2, 'Veni, vidi, vici.', 62, 'Detective Crypto', 50, '2018-04-11 04:28:49', '2018-04-11 04:28:49'),
(326, 5, 'Colour', 68, 'TnJ', 50, '2018-04-11 04:29:19', '2018-04-11 04:29:19'),
(327, 14, 'Login', 47, 'NoobCoders', 60, '2018-04-11 04:30:15', '2018-04-11 04:30:15'),
(328, 14, 'Login', 64, 'ESCOBAR', 60, '2018-04-11 04:32:03', '2018-04-11 04:32:03'),
(329, 8, 'That is a lot of text', 58, 'Cryptic Duo', 100, '2018-04-11 04:32:52', '2018-04-11 04:32:52'),
(330, 14, 'Login', 69, 'god save us', 60, '2018-04-11 04:33:34', '2018-04-11 04:33:34'),
(331, 4, 'ECNALUBMA', 68, 'TnJ', 100, '2018-04-11 04:35:20', '2018-04-11 04:35:20'),
(332, 4, 'ECNALUBMA', 69, 'god save us', 100, '2018-04-11 04:38:50', '2018-04-11 04:38:50'),
(333, 9, 'Are they different?', 33, 'aimers', 150, '2018-04-11 04:45:17', '2018-04-11 04:45:17'),
(334, 9, 'Are they different?', 34, 'Brain Tweezers', 150, '2018-04-11 04:45:56', '2018-04-11 04:45:56'),
(335, 16, 'Accumulator', 47, 'NoobCoders', 100, '2018-04-11 04:46:53', '2018-04-11 04:46:53'),
(336, 12, 'Few files', 34, 'Brain Tweezers', 30, '2018-04-11 04:48:46', '2018-04-11 04:48:46'),
(337, 17, 'NULL', 61, 'Rampage', 40, '2018-04-11 04:48:48', '2018-04-11 04:48:48'),
(338, 12, 'Few files', 33, 'aimers', 30, '2018-04-11 04:49:55', '2018-04-11 04:49:55'),
(339, 9, 'Are they different?', 15, 'Cipher', 150, '2018-04-11 04:53:11', '2018-04-11 04:53:11'),
(340, 9, 'Are they different?', 68, 'TnJ', 150, '2018-04-11 04:55:06', '2018-04-11 04:55:06'),
(341, 10, 'They are different!', 33, 'aimers', 200, '2018-04-11 04:55:36', '2018-04-11 04:55:36'),
(342, 10, 'They are different!', 34, 'Brain Tweezers', 200, '2018-04-11 04:56:07', '2018-04-11 04:56:07'),
(343, 9, 'Are they different?', 61, 'Rampage', 150, '2018-04-11 04:56:08', '2018-04-11 04:56:08'),
(344, 9, 'Are they different?', 69, 'god save us', 150, '2018-04-11 04:56:23', '2018-04-11 04:56:23'),
(345, 21, 'Look Inside', 58, 'Cryptic Duo', 200, '2018-04-11 04:57:06', '2018-04-11 04:57:06'),
(346, 11, 'I am Hidden', 68, 'TnJ', 70, '2018-04-11 04:57:52', '2018-04-11 04:57:52'),
(347, 11, 'I am Hidden', 69, 'god save us', 70, '2018-04-11 04:58:05', '2018-04-11 04:58:05'),
(348, 11, 'I am Hidden', 61, 'Rampage', 70, '2018-04-11 04:58:19', '2018-04-11 04:58:19'),
(349, 26, 'Lurking in plain sight', 63, 'Cipher0208', 50, '2018-04-11 04:58:37', '2018-04-11 04:58:37'),
(350, 11, 'I am Hidden', 38, 'Default', 70, '2018-04-11 04:59:11', '2018-04-11 04:59:11'),
(351, 10, 'They are different!', 15, 'Cipher', 200, '2018-04-11 04:59:45', '2018-04-11 04:59:45'),
(352, 9, 'Are they different?', 58, 'Cryptic Duo', 150, '2018-04-11 05:01:23', '2018-04-11 05:01:23'),
(353, 11, 'I am Hidden', 58, 'Cryptic Duo', 70, '2018-04-11 05:01:59', '2018-04-11 05:01:59'),
(354, 26, 'Lurking in plain sight', 47, 'NoobCoders', 50, '2018-04-11 05:04:26', '2018-04-11 05:04:26'),
(355, 24, 'Matrix', 69, 'god save us', 50, '2018-04-11 05:04:35', '2018-04-11 05:04:35'),
(356, 18, 'Password', 68, 'TnJ', 50, '2018-04-11 05:04:44', '2018-04-11 05:04:44'),
(357, 18, 'Password', 61, 'Rampage', 50, '2018-04-11 05:04:48', '2018-04-11 05:04:48'),
(358, 8, 'That is a lot of text', 68, 'TnJ', 100, '2018-04-11 05:05:02', '2018-04-11 05:05:02'),
(359, 18, 'Password', 69, 'god save us', 50, '2018-04-11 05:05:46', '2018-04-11 05:05:46'),
(360, 5, 'Colour', 58, 'Cryptic Duo', 50, '2018-04-11 05:07:09', '2018-04-11 05:07:09'),
(361, 10, 'They are different!', 61, 'Rampage', 200, '2018-04-11 05:08:44', '2018-04-11 05:08:44'),
(362, 14, 'Login', 63, 'Cipher0208', 60, '2018-04-11 05:09:32', '2018-04-11 05:09:32'),
(363, 26, 'Lurking in plain sight', 48, 'Alpha', 50, '2018-04-11 05:09:41', '2018-04-11 05:09:41'),
(364, 6, 'Square root?', 63, 'Cipher0208', 40, '2018-04-11 05:10:56', '2018-04-11 05:10:56'),
(365, 24, 'Matrix', 68, 'TnJ', 50, '2018-04-11 05:11:38', '2018-04-11 05:11:38'),
(366, 12, 'Few files', 47, 'NoobCoders', 30, '2018-04-11 05:12:50', '2018-04-11 05:12:50'),
(367, 26, 'Lurking in plain sight', 58, 'Cryptic Duo', 50, '2018-04-11 05:13:29', '2018-04-11 05:13:29'),
(368, 24, 'Matrix', 58, 'Cryptic Duo', 50, '2018-04-11 05:18:36', '2018-04-11 05:18:36'),
(369, 19, 'Kidnapped', 68, 'TnJ', 100, '2018-04-11 05:20:33', '2018-04-11 05:20:33'),
(371, 14, 'Login', 61, 'Rampage', 60, '2018-04-11 05:21:09', '2018-04-11 05:21:09'),
(372, 19, 'Kidnapped', 69, 'god save us', 100, '2018-04-11 05:22:10', '2018-04-11 05:22:10'),
(373, 7, 'I am hidden', 47, 'NoobCoders', 50, '2018-04-11 05:24:05', '2018-04-11 05:24:05'),
(374, 3, 'Experience is the teacher of all things.', 69, 'god save us', 60, '2018-04-11 05:26:56', '2018-04-11 05:26:56'),
(375, 26, 'Lurking in plain sight', 34, 'Brain Tweezers', 50, '2018-04-11 05:27:06', '2018-04-11 05:27:06'),
(376, 26, 'Lurking in plain sight', 33, 'aimers', 50, '2018-04-11 05:27:26', '2018-04-11 05:27:26'),
(377, 5, 'Colour', 69, 'god save us', 50, '2018-04-11 05:28:43', '2018-04-11 05:28:43'),
(378, 27, '<font color=\"#9c31a5\">Linux Level 1</font>', 68, 'TnJ', 30, '2018-04-11 05:31:10', '2018-04-11 05:31:10');

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
(1, 'CofPythons', 'Koustav', 'AOT', 3, 'CSE', 2354235, '34', 'Diptangsu', 'AOT', 3, 'IT', 45345345, '34535', 'caot', 0, 9000, '2018-04-11 00:17:32', '2018-04-11 00:17:41'),
(2, 'Cybertronians', 'Souvik Banerjee', 'Academy of Technology', 2, 'CSE', 8910558103, 'banerjeesouvik337@gmail.com', 'Souptik Dey', 'Academy of Technology', 2, 'CSE', 7686071277, 'souptik.dey@aot.edu.in', 'caot', 0, 726, '2018-04-11 00:19:13', '2018-04-11 05:12:36'),
(3, 'Predators', 'Piyush Choudhary', 'Academy of Technology', 2, 'CSE', 8981214878, 'piyush.choudhary@aot.edu.in', 'Vineet Maheshwari', 'Academy of Technology', 2, 'CSE', 9830758478, 'vineet.maheshwari@aot.edu.in', 'caot', 0, 0, '2018-04-11 00:19:29', '2018-04-11 03:11:24'),
(4, 'Cyber Cruisers', 'Shuddhasatya Biswas', 'Academy of Technology', 2, 'CSE', 9748521116, 'shuddhasatya.biswas@aot.edu.in', 'Rishav Singh', 'Academy of Technology', 2, 'CSE', 7980508696, 'rishav.singh@aot.edu.in', 'caot', 0, 0, '2018-04-11 00:19:34', '2018-04-11 03:17:37'),
(5, 'Noobs', 'Rahul Banerjee', 'Academy Of Technology', 3, 'CSE', 9748320509, 'rahul.mj277@gmail.com', 'Jyotirmay Das', 'Academy Of Technology', 3, 'CSE', 8016140337, 'jyotirmaydas501@gmail.com', 'caot', 0, 0, '2018-04-11 00:19:40', '2018-04-11 03:10:41'),
(6, 'Exterminators', 'Suman Sur', 'Academy of Technology', 2, 'CSE', 7003960177, 'suman.sur@aot.edu.in', 'Sudeshna Majumder', 'Academy of Technology', 2, 'CSE', 8336057559, 'sudeshna.majumder@aot.edu.in', 'caot', 0, 0, '2018-04-11 00:19:57', '2018-04-11 03:08:50'),
(7, 'WeCode', 'AMRITA BOSE', 'ACADEMY OF TECHNOLOGY', 2, 'IT', 8001023073, 'amrita.bose@aot.edu.in', 'AKASH DUTTA', 'ACADEMY OF TECHNOLOGY', 2, 'IT', 9153458292, 'akash1.dutta@aot.edu.in', 'caot', 0, 0, '2018-04-11 00:20:02', '2018-04-11 03:52:12'),
(8, 'Brogrammers', 'Amit Paul', 'Academy of Technology', 1, 'ECE', 9477071916, 'amit1.paul@aot.edu.in', 'Subham Basu', 'Academy of Technology', 1, 'CSE', 9051945255, 'subham.basu@aot.edu.in', 'caot', 0, 1600, '2018-04-11 00:20:08', '2018-04-11 04:04:38'),
(9, 'Double A', 'Abhigyan Mukherjee', 'AoT', 2, 'IT', 7980164899, 'abhigyan.mukherjee@aot.edu.in', 'Abhishek Raj', 'AoT', 2, 'IT', 8967445108, 'abhishek.raj@aot.edu.in', 'caot', 0, 0, '2018-04-11 00:20:18', '2018-04-11 03:21:18'),
(10, 'Red Team', 'Arpan Barman', 'Academy of Technology', 4, 'CSE', 9674537241, 'arpan.barman@aot.edu.in', 'Nairit Bandyopadhyay', 'Academy of Technology', 4, 'CSE', 9804454657, 'nairit.bandyopadhyay@aot.edu.in', 'caot', 0, 8961, '2018-04-11 00:20:24', '2018-04-11 05:41:10'),
(11, 'Single', 'Parikshit Sen', 'Academy Of Technology', 2, 'CSE', 7890252991, 'parikshitsen10@gmail.com', 'Parikshit Sen', 'Academy Of Technology', 2, 'CSE', 7890252991, 'parikshitsen10@gmail.com', 'caot', 0, 1924, '2018-04-11 00:20:25', '2018-04-11 02:39:06'),
(12, 'D Coders', 'ABHIRUP DEY', 'AOT', 2, 'EE', 9735716172, 'abhirup.dey@aot.edu.in', 'KUSHAL MUKHERJEE', 'AOT', 2, 'CSE', 9932056160, 'mukherjee.kushal01@gmail.com', 'caot', 0, 0, '2018-04-11 00:21:04', '2018-04-11 03:16:08'),
(13, 'D Coders', 'ABHIRUP DEY', 'AOT', 2, 'EE', 9735716172, 'abhirup.dey@aot.edu.in', 'KUSHAL MUKHERJEE', 'AOT', 2, 'CSE', 9932056160, 'mukherjee.kushal01@gmail.com', 'caot', 0, 9000, '2018-04-11 00:21:04', '2018-04-11 00:21:04'),
(14, 'DESPOTATO', 'WRICHEEK MODAK', 'ACADEMY OF TECHNOLOGY', 2, 'ME', 7699446192, 'wricheek.modak@aot.edu.in', 'TANMAY ROY', 'ACADEMY OF TECHNOLOGY', 2, 'ME', 8584997217, 'tanmay.roy@aot.edu.in', 'caot', 0, 0, '2018-04-11 00:21:13', '2018-04-11 03:42:46'),
(15, 'Cipher', 'Amrita Banerjee', 'Academy of Technology', 2, 'IT', 8013472913, 'amrita.banerjee@aot.edu.in', 'Suddhasil Kumar', 'Academy of Technology', 2, 'EE', 8231090358, 'suddhasilkumar@gmail.com', 'caot', 0, 738, '2018-04-11 00:21:15', '2018-04-11 04:59:46'),
(16, 'Nchanters', 'Subhranil Agasti', 'Academy of Technology', 2, 'CSE', 9475213306, 'subhranil.agasti@aot.edu.in', 'Sourav Mazumdar', 'Academy of Technology', 2, 'CSE', 8768375083, 'sourav.mazumdar@aot.edu.in', 'caot', 0, 1012, '2018-04-11 00:21:23', '2018-04-11 02:51:38'),
(17, 'Stonner', 'Pranay Kumar Bir', 'ACADEMY OF TECHNOLOGY', 2, 'IT', 7001166001, 'pranay.kumarbir@aot.edu.in', 'Kaustav Dhara', 'ACADEMY OF TECHNOLOGY', 2, 'IT', 8961206894, 'kaustav.dhara@aot.edu.in', 'caot', 0, 7942, '2018-04-11 00:21:52', '2018-04-11 02:03:47'),
(18, 'Predators', 'Soumyaraj Kundu', 'AOT', 2, 'CSE', 8240557924, 'raj.kundu23@gmail.com', 'Soumya Bhattacharya', 'AOT', 2, 'CSE', 8777258136, 'bhattacharyasoumya49@gmail.com', 'caot', 0, 9000, '2018-04-11 00:21:53', '2018-04-11 00:21:53'),
(19, 'cyther', 'Nitesh Kumar Gupta', 'Academy Of Technology', 2, 'CSE', 7602258018, 'guptanitesh266@gmail.com', 'NA', 'NA', 2, 'CSE', 9007756663, 'NA', 'caot', 0, 6854, '2018-04-11 00:22:48', '2018-04-11 01:02:27'),
(20, 'NOOBIES', 'Soumyaraj Kundu', 'AOT', 2, 'CSE', 8240557924, 'raj.kundu23@gmail.com', 'Soumya Bhattacharya', 'AOT', 2, 'CSE', 8777258136, 'bhattacharyasoumya49@gmail.com', 'caot', 0, 322, '2018-04-11 00:25:19', '2018-04-11 03:19:17'),
(21, 'Trojan', 'NILANJAN MANNA', 'ACADEMY OF TECHNOLOGY', 1, 'ECE', 8017378068, 'nilanjan.manna@aot.edu.in', 'OIHIK CHATTERJEE', 'ACADEMY OF TECHNOLOGY', 1, 'ECE', 9830980395, 'oihikchatterjee@gmail.com', 'caot', 0, 3258, '2018-04-11 00:27:15', '2018-04-11 03:31:39'),
(22, 'CIPHER', 'RITAM CHATTERJEE', 'ACADEMY OF TECHNOLOGY', 2, 'CSE', 8420863316, 'ritam.chatterjee@aot.edu.in', 'SHRISHTI GUPTA', 'ACADEMY OF TECHNOLOGY', 2, 'CSE', 9748540558, 'shrishti.gupta@aot.edu.in', 'caot', 0, 9000, '2018-04-11 00:27:20', '2018-04-11 00:27:20'),
(23, 'C of Pythons', 'Diptangsu Goswami', 'aot', 3, 'CSE', 1234, 'd', 'Koustav Chanda', 'aot', 3, 'CSE', 1234, 'd', 'caot', 0, 16719, '2018-04-11 00:27:40', '2018-04-11 13:04:30'),
(24, 'NOOBIE', 'NAVIN SRIVASTAVA', 'Academy Of Technology', 3, 'CSE', 7003397879, 'navin.srivastava@aot.edu.in', 'PIJUSH MANNA', 'Academy Of Technology', 3, 'CSE', 7872723447, 'pijush.manna@aot.edu.in', 'caot', 0, 0, '2018-04-11 00:28:28', '2018-04-11 03:19:24'),
(25, 'R^2', 'Rudrani Saha', 'Academy of Technology', 2, 'ECE', 9748286902, 'rudrani.saha@aot.edu.in', 'Ranita Pal', 'Academy of Technology', 2, 'ECE', 8276899451, 'ranita.pal@aot.edu.in', 'caot', 0, 8964, '2018-04-11 00:30:05', '2018-04-11 09:13:25'),
(26, 'Geeks', 'Pratik Dasgupta', 'Academy of Technology', 2, 'EE', 9051479388, 'pratik.dasgupta@aot.edu.in', 'Sayan Das', 'Academy of Technology', 2, 'EE', 7003898146, 'sayan1.das@aot.edu.in', 'caot', 0, 8, '2018-04-11 00:30:10', '2018-04-11 04:55:27'),
(27, 'pallabpankaj', 'pankaj kumar sahoo', 'aot', 1, 'CSE', 8515957464, 'pankaj.kumarsahoo@aot.edu.in', 'pallab de', 'aot', 1, 'CSE', 8918793620, 'pallab.de@aot.edu.in', 'caot', 0, 0, '2018-04-11 00:32:26', '2018-04-11 03:33:57'),
(28, 'unnamed coder', 'pritam biswas', 'academy of technology', 1, 'CSE', 8420143841, 'pritam.biswas@aot.edu.in', 'na', 'na', 1, 'CSE', 0, 'na', 'caot', 0, 3963, '2018-04-11 00:32:26', '2018-04-11 02:52:20'),
(29, 'pallabpankaj', 'pankaj kumar sahoo', 'aot', 1, 'CSE', 8515957464, 'pankaj.kumarsahoo@aot.edu.in', 'pallab de', 'aot', 1, 'CSE', 8918793620, 'pallab.de@aot.edu.in', 'caot', 0, 9000, '2018-04-11 00:32:42', '2018-04-11 00:32:42'),
(30, 'HUNT', 'SAYAN SAHA', 'ACADEMY OF TECHNOLOGY', 2, 'CSE', 8972942141, 'sayansaha916@gmail.com', 'SRIJON REJ', 'ACADEMY OF TECHNOLOGY', 2, 'CSE', 8910949253, 'saya1.saha@aot.edu.in', 'caot', 0, 6732, '2018-04-11 00:36:55', '2018-04-11 01:24:23'),
(31, 'INVICTUS', 'RASHMI JHA', 'ACADEMY OF TECHNOLOGY', 1, 'CSE', 8296428689, 'rashmi.jha@aot.edu.in', 'BHANUJA', 'ACADEMY OF TECHNOLOGY', 1, 'CSE', 7870295448, 'renupari123@gmail.com', 'caot', 0, 4870, '2018-04-11 00:39:34', '2018-04-11 01:58:24'),
(32, 'Lord', 'Sandeep Kumar Dutta', 'aot', 2, 'IT', 9800420994, 'sandeep.kumardutta@aot.edu.in', 'Sandiip Dutta', 'aot', 2, 'IT', 1234, 'fhfh', 'caot', 0, 5442, '2018-04-11 00:40:19', '2018-04-11 02:04:25'),
(33, 'aimers', 'Piyush Agarwal', 'Aot', 1, 'ECE', 9051772566, 'piyush.agarwal@aot.edu.in', 'Abhay Sharma', 'Aot', 1, 'ECE', 8013702142, 'abhay.sharma@aot.edu.in', 'caot', 0, 2119, '2018-04-11 00:43:35', '2018-04-11 05:30:14'),
(34, 'Brain Tweezers', 'Sanchit Singh', 'Academy Of Technology', 1, 'CSE', 7003670993, 'sanchit.singh@aot.edu.in', 'Mohammad Aarefin', 'Academy Of Technology', 1, 'CSE', 9073755408, 'mohammad.aarefin@aot.edu.in', 'caot', 0, 4383, '2018-04-11 00:44:10', '2018-04-11 05:31:57'),
(35, 'Aimers', 'Piyush Agarwal', 'AOT', 1, 'ECE', 9051772566, 'piyuh.agarwal@aot.edu.in', 'Abhay Sharma', 'AOT', 1, 'ECE', 8013702142, 'abhay.sharma@aot.edu.in', 'caot', 0, 9000, '2018-04-11 00:46:11', '2018-04-11 00:46:11'),
(36, 'THE TEAM', 'Amar Nath Tiwari', 'aot', 3, 'CSE', 8777010354, 'amar.nathtiwari@aot.edu.in', 'Sourav sett', 'aot', 3, 'CSE', 7980327592, 'sourav241196@gmail.com', 'caot', 0, 0, '2018-04-11 00:46:59', '2018-04-11 03:39:49'),
(37, 'Blackbeard', 'Ankit Saha', 'AOT', 1, 'CSE', 9051872568, 'asaha981119@gmail.com', 'Aritra Ghosh', 'AOT', 1, 'CSE', 8335011055, 'aritraghosh084@gmail.com', 'caot', 0, 192, '2018-04-11 00:48:16', '2018-04-11 04:24:32'),
(38, 'Default', 'Deepan Mondal', 'Academy of technology', 2, 'CSE', 8918222082, 'deepan.mondal@aot.edu.in', 'Elisa Dutta', 'Academy of technology', 2, 'EE', 7980976838, 'elisa.dutta@aot.edu.in', 'caot', 0, 0, '2018-04-11 00:50:05', '2018-04-11 05:04:19'),
(39, 'MASONS', 'RITAM CHATTERJEE', 'ACADEMY OF TECHNOLOGY', 2, 'CSE', 8420863316, 'ritam.chatterjee@aot.edu.in', 'SHRISHTI GUPTA', 'ACADEMY OF TECHNOLOGY', 2, 'CSE', 9748540558, 'shrishti.gupta@aot.edu.in', 'caot', 0, 368, '2018-04-11 00:52:09', '2018-04-11 03:14:47'),
(40, 'Subhrajyoti', 'Subhrajyoti Modak', 'Academy Of Technology', 1, 'ME', 9051546606, 'subhrajyoti.modak@aot.edu.in', 'Subhrajyoti Modak', 'AOT', 1, 'ME', 9051546606, 'subhrajyoti.modak@aot.edu.in', 'caot', 0, 5951, '2018-04-11 01:01:46', '2018-04-11 02:24:41'),
(41, 'Decoders', 'Sudipto Chakraborty', 'Academy of Technology', 1, 'CSE', 9933522073, 'sudipto.chakraborty@aot.edu.in', 'Srijita Bhattacharyya', 'Academy of Technology', 1, 'CSE', 9674411073, 'srijita.bhattacharyya@aot.edu.in', 'caot', 0, 1768, '2018-04-11 01:04:04', '2018-04-11 02:43:43'),
(42, 'Subhrajyoti', 'Subhrajyoti Modak', 'Academy Of Technology', 1, 'ME', 9051546606, 'subhrajyoti.modak@aot.edu.in', 'Subhrajyoti Modak', 'Academy Of Technology', 1, 'ME', 9051546606, 'subhrajyoti.modak@aot.edu.in', 'caot', 0, 9000, '2018-04-11 01:04:30', '2018-04-11 01:04:30'),
(43, 'Subhrajyoti', 'Subhrajyoti Modak', 'AOT', 1, 'ME', 9051546606, 'subhrajyoti.modak@aot.edu.in', 'Subhrajyoti Modak', 'AOT', 1, 'ME', 8981218545, 'subhrajyoti.modak@aot.edu.in', 'caot', 0, 9000, '2018-04-11 01:06:31', '2018-04-11 01:06:31'),
(44, 'THE K SQUAD', 'KAVITA KUMARI YADAV', 'AOT', 2, 'EE', 8100069062, 'kavita.kumariyadav@aot.edu.in', 'KAUSTUBH SINGH', 'AOT', 2, 'EE', 8981507270, 'kaustubh.singh@aot.edu.in', 'caot', 0, 0, '2018-04-11 01:08:06', '2018-04-11 04:50:01'),
(45, 'Team', 'Soumyajyoti Das', 'Academy Of Technology', 1, 'ECE', 7384839668, 'soumyajyoti.das@aot.edu.in', 'Saptarshi Maitra', 'Academy Of Technology', 1, 'ECE', 7699738430, 'hribhu579@gmail.com', 'caot', 0, 2393, '2018-04-11 01:12:01', '2018-04-11 03:44:47'),
(46, 'Subhrajyoti', 'Subhrajyoti Modak', 'AOT', 1, 'ME', 9051546606, 'subhrajyoti.modak@aot.edu.in', 'Subhrajyoti Modak', 'AOT', 1, 'ME', 9051546606, 'subhrajyoti.modak@aot.edu.in', 'caot', 0, 9000, '2018-04-11 01:14:11', '2018-04-11 01:14:11'),
(47, 'NoobCoders', 'SEBANTI CHANDRA', 'ACADEMY OF TECHNOLOGY', 2, 'CSE', 8981153313, 'sebanti.chandra@aot.edu.in', 'SHANU DEY', 'ACADEMY OF TECHNOLOGY', 2, 'ECE', 8961612780, 'shanu.dey@aot.edu.in', 'caot', 0, 0, '2018-04-11 01:23:09', '2018-04-11 05:24:16'),
(48, 'Alpha', 'Diptendu Paul', 'Academy Of Technology', 1, 'EE', 8637540569, 'diptendu.paul@aot.edu.in', 'Anindita Ghosh', 'Academy Of Technology', 1, 'EE', 8967079626, 'aninditaghosh23399@gmail.com', 'caot', 0, 0, '2018-04-11 01:26:32', '2018-04-11 05:19:20'),
(50, 'Dazzlers', 'Shuvra shanka Shit', 'Academy Of Technology', 1, 'CSE', 8001719893, 'shuvra.shankashit@aot.edu.in', 'Ankita Mukherjee', 'Academy Of Technology', 1, 'IT', 8906813765, 'ankita.mukherjee@aot.edu.in', 'caot', 0, 0, '2018-04-11 01:28:50', '2018-04-11 04:31:13'),
(51, 'we both', 'paromita sadhu', 'aot', 2, 'EE', 9007071266, 'paromita.sadhu@aot.edu.in', 'gourab ghosh', 'aot', 2, 'EE', 7980106512, 'gourab1.ghosh@aot.edu.in', 'caot', 0, 7241, '2018-04-11 01:29:34', '2018-04-11 02:13:26'),
(52, 'The Team', 'Jayanta Ghosh', 'Academy of Technology', 1, 'EE', 7890990118, 'jayanta.ghosh@aot.edu.in', 'Rounik Biswas', 'Academy of Technology', 1, 'EE', 9775447292, 'rounik.biswas@aot.edu.in', 'caot', 0, 9000, '2018-04-11 01:29:42', '2018-04-11 01:29:42'),
(54, 'codex', 'Soumik Poddar', 'Academy Of Technology', 1, 'CSE', 9091814841, 'soumik.poddar@aot.edu.in', 'Surajit chandra', 'academy of technology', 1, 'CSE', 9091814841, 'surajit.chandra@aot.edu.in', 'caot', 0, 9000, '2018-04-11 01:31:24', '2018-04-11 03:32:06'),
(55, 'SebahtiShanu', 'Sebanti Chandra', 'Academy of Technology', 2, 'CSE', 8981153313, 'sebanti.chandra@aot.edu.in', 'Shanu Dey', 'Academy of Technology', 2, 'ECE', 8961612780, 'shanu.dey@aot.edu.in', 'caot', 0, 9000, '2018-04-11 01:32:42', '2018-04-11 01:32:42'),
(56, 'Dark Horse', 'Jayanta Ghosh', 'Academy of Technology', 1, 'EE', 7890990118, 'jayanta.ghosh@aot.edu.in', 'Rounik Biswas', 'Academy of Technology', 1, 'EE', 9775447292, 'rounik.biswas@aot.edu.in', 'caot', 0, 5476, '2018-04-11 01:37:36', '2018-04-11 02:12:20'),
(57, 'Survivors', 'Rishabh Jain', 'Academy of Technology', 1, 'CSE', 9830879402, 'rishabh.jain@aot.edu.in', 'Sweety Sharma', 'Academy of Technology', 1, 'CSE', 8240232773, 'sweety.sharma@aot.edu.in', 'caot', 0, 461, '2018-04-11 02:07:23', '2018-04-11 03:34:45'),
(58, 'Cryptic Duo', 'Subhadeep Deyashi', 'Academy of Technology', 2, 'CSE', 9800297321, 'subhadeep.deyashi@aot.edu.in', 'Susmita Biswas', 'Academy of Technology', 2, 'CSE', 8336027306, 'susmita4.biswas@aot.edu.in', 'caot', 0, 1407, '2018-04-11 02:29:37', '2018-04-11 05:30:38'),
(59, 'Cyber.AR', 'AKASH BISWAS', 'ACADEMY OF TECHNOLOGY', 1, 'ECE', 8777500258, 'akash1.biswas@aot.edu.in', 'RAKSHAK KUMAR SHAW', 'ACADEMY OF TECHNOLOGY', 1, 'ECE', 8697490924, 'rakshak.kumarshaw@aot.edu.in', 'caot', 0, 657, '2018-04-11 02:43:36', '2018-04-11 03:57:50'),
(60, 'Ritoban Mukhopadhyay', 'Ritoban Mukhopadhyay', 'Academy of Technology', 3, 'ME', 8902380258, 'ritoban.mukhopadhyay@aot.edu.in', 'NA', 'NA', 3, 'ME', 8902380258, 'ritoban.mukhopadhyay@aot.edu.in', 'caot', 0, 2415, '2018-04-11 02:43:48', '2018-04-11 03:46:58'),
(61, 'Rampage', 'Gautam Khanna', 'HITK', 3, 'CSE', 9007518001, 'khannagautam96@gmail.com', 'Amar Anand', 'HITK', 3, 'CSE', 9874237380, 'amaranand159@gmail.com', 'caot', 0, 0, '2018-04-11 02:46:50', '2018-04-11 05:31:32'),
(62, 'Detective Crypto', 'Swagata Seth', 'AOT', 1, 'IT', 8902279332, 'swagata.seth@aot.edu.in', 'Souvik De', 'AOT', 1, 'IT', 9477230869, 'souvik.de@aot.edu.in', 'caot', 0, 3020, '2018-04-11 02:49:33', '2018-04-11 04:39:28'),
(63, 'Cipher0208', 'Anu Kumari Gupta', 'Academy of Technology', 3, 'CSE', 8981986160, 'anu.kumarigupta@aot.edu.in', 'Md fazal mehboob ansari', 'AOT', 3, 'CSE', 7278208908, 'md.fazalmehboobansari@aot.edu.in', 'caot', 0, 2367, '2018-04-11 03:00:25', '2018-04-11 05:27:18'),
(64, 'ESCOBAR', 'Debayan Porel', 'Academy Of Technology', 1, 'ECE', 8420322836, 'debayan.porel@aot.edu.in', 'Ayush Gupta', 'Academy Of Technology', 1, 'ECE', 7980373336, 'thisisayush2912@gmail.com', 'caot', 0, 4322, '2018-04-11 03:04:49', '2018-04-11 04:36:37'),
(65, 'Cryptoid', 'Archishman Ghosh', 'ACADEMY OF TECHNOLOGY', 1, 'ECE', 7003180653, 'archishman.ghosh@aot.edu.in', 'NA', 'NA', 1, 'ECE', 0, 'NA', 'caot', 0, 8187, '2018-04-11 03:10:11', '2018-04-11 03:29:59'),
(66, 'HuntOS 2.0', 'Akash Munshi', 'Academy of Technology', 1, 'CSE', 8961801848, 'akash.munshi@aot.edu.in', 'Arkadeep Pal', 'Academy of Technology', 1, 'CSE', 9432205992, 'arkadeep.pal@aot.edu.in', 'caot', 0, 8717, '2018-04-11 03:10:26', '2018-04-11 03:17:00'),
(67, 'HuntOS 2.0', 'Arkadeep Pal', 'Academy of Technology', 1, 'CSE', 9432205992, 'arkadeep.pal@aot.edu.in', 'Akash Munshi', 'Academy of Technology', 1, 'CSE', 8961801848, 'akash.munshi@aot.edu.in', 'caot', 0, 9000, '2018-04-11 03:10:30', '2018-04-11 03:10:30'),
(68, 'TnJ', 'Aman Saraogi', 'AOT', 4, 'CSE', 9830683749, 'aman.saraogi@aot.edu.in', 'Anjali Goenka', 'AOT', 4, 'CSE', 9883471177, 'anjali.goenka@aot.edu.in', 'caot', 0, 2002, '2018-04-11 03:10:48', '2018-04-11 05:31:17'),
(69, 'god save us', 'kashis k. thakur', 'academy of technology', 4, 'CSE', 8017174905, 'kashis.kumarthakur@aot.edu.in', 'krishanu roy', 'academy of technology', 4, 'CSE', 9038694096, 'krishanu.roy@aot.edu.in', 'caot', 0, 0, '2018-04-11 03:11:31', '2018-04-11 11:52:08'),
(70, 'Riddle Hunter', 'Samudra Ghosh', 'Academy of Technology', 2, 'EE', 8910714727, 'samudra.ghosh@aot.edu.in', 'Shubhajit Biswas', 'Academy of Technology', 2, 'EE', 9051173621, 'shubhajit.biswas@aot.edu.in', 'caot', 0, 4086, '2018-04-11 03:12:05', '2018-04-11 05:30:24'),
(71, 'sas', 'SHASHWATA CHAKRABORTY', 'ACADEMY OF TECHNOLOGY', 2, 'EE', 8296107194, 'shashwata.chakraborty@aot.edu.in', 'SHASHWATA CHAKRABORTY', 'ACADEMY OF TECHNOLOGY', 2, 'EE', 9432965126, 'shashwata9937@gmail.com', 'caot', 0, 4461, '2018-04-11 04:08:40', '2018-04-11 05:29:48');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `submissions`
--
ALTER TABLE `submissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=379;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
