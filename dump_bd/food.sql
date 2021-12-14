-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 14 2021 г., 20:27
-- Версия сервера: 8.0.19
-- Версия PHP: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `food`
--

-- --------------------------------------------------------

--
-- Структура таблицы `association`
--

CREATE TABLE `association` (
  `main_dishes` int NOT NULL,
  `garnishs` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `association`
--

INSERT INTO `association` (`main_dishes`, `garnishs`) VALUES
(1, '1,2,3,4,6,7'),
(2, '9'),
(3, '1,2,3,4,5,6,7,8'),
(4, '9'),
(5, '1,2,3,4,5,6,7,8'),
(6, '2,3,4,5,8'),
(7, '1,2,3,4,5,6,7,8'),
(8, '9'),
(9, '9'),
(10, '9'),
(11, '9'),
(12, '1,6,7'),
(13, '1,6,7'),
(14, '9'),
(15, '9'),
(16, '9'),
(17, '9'),
(18, '9'),
(19, '9'),
(20, '1,5,6,7,8');

-- --------------------------------------------------------

--
-- Структура таблицы `beverages`
--

CREATE TABLE `beverages` (
  `id` int NOT NULL,
  `element` varchar(255) NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `beverages`
--

INSERT INTO `beverages` (`id`, `element`, `price`) VALUES
(1, 'call', NULL),
(2, 'milk', NULL),
(3, 'ryzenka', NULL),
(4, 'kvass', NULL),
(5, 'juice', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `current_menu`
--

CREATE TABLE `current_menu` (
  `day` int NOT NULL,
  `beverages` varchar(255) NOT NULL,
  `next_day` varchar(255) NOT NULL,
  `main_dishes` varchar(255) NOT NULL,
  `garnish` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `current_menu`
--

INSERT INTO `current_menu` (`day`, `beverages`, `next_day`, `main_dishes`, `garnish`) VALUES
(1, 'ryzenka', 'toast', 'pea_soup', 'none'),
(2, 'milk', 'samsa', 'rice', 'pork'),
(3, 'kvass', 'toast', 'pie', 'none'),
(4, 'ryzenka', 'meat_tartlets', 'сake', 'none'),
(5, 'juice', 'sprats', 'fur_coat', 'none'),
(6, 'milk', 'sandwich', 'buckwheat', 'nuggets'),
(7, 'ryzenka', 'samsa', 'pitcher', 'none'),
(8, 'juice', 'nuggets', 'pilaf', 'none'),
(9, 'ryzenka', 'samsa', 'mashed_potatoes', 'hen'),
(10, 'juice', 'nuggets', 'chicken_forge', 'none'),
(11, 'kvass', 'samsa', 'bigus', 'none'),
(12, 'ryzenka', 'sandwich', 'ramen', 'none'),
(13, 'milk', 'flakes', 'borscht', 'none'),
(14, 'call', 'sprats', 'ear', 'none'),
(15, 'juice', 'sandwich', 'salad', 'nuggets'),
(16, 'kvass', 'nuggets', 'fried_potatoes', 'sausages'),
(17, 'milk', 'toast', 'fish', 'sausages'),
(18, 'call', 'sandwich', 'stewed_potatoes', 'none'),
(19, 'ryzenka', 'meat_tartlets', 'okroshka', 'kalbasa'),
(20, 'milk', 'flakes', 'spaschetti', 'nuggets'),
(21, 'juice', 'sprats', 'pea_soup', 'none'),
(22, 'kvass', 'toast', 'сake', 'none'),
(23, 'ryzenka', 'flakes', 'bigus', 'none'),
(24, 'call', 'samsa', 'buckwheat', 'pork'),
(25, 'kvass', 'nuggets', 'pitcher', 'none'),
(26, 'milk', 'toast', 'salad', 'Herring'),
(27, 'ryzenka', 'samsa', 'fur_coat', 'none'),
(28, 'call', 'flakes', 'fish', 'nuggets'),
(29, 'milk', 'samsa', 'fried_potatoes', 'pork'),
(30, 'call', 'meat_tartlets', 'okroshka', 'nuggets');

-- --------------------------------------------------------

--
-- Структура таблицы `garnish`
--

CREATE TABLE `garnish` (
  `id` int NOT NULL,
  `element` varchar(255) NOT NULL,
  `price` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `garnish`
--

INSERT INTO `garnish` (`id`, `element`, `price`) VALUES
(1, 'sausages', NULL),
(2, 'hen', NULL),
(3, 'pork', NULL),
(4, 'catlets', NULL),
(5, 'fish', NULL),
(6, 'kalbasa', NULL),
(7, 'nuggets', NULL),
(8, 'Herring', NULL),
(9, 'none', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `last_month`
--

CREATE TABLE `last_month` (
  `id` int NOT NULL,
  `element` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `last_month`
--

INSERT INTO `last_month` (`id`, `element`) VALUES
(1, 'pea_soup'),
(2, 'rice'),
(3, 'pie'),
(4, 'сake'),
(5, 'fur_coat'),
(6, 'buckwheat'),
(7, 'pitcher'),
(8, 'pilaf'),
(9, 'mashed_potatoes'),
(10, 'chicken_forge'),
(11, 'bigus'),
(12, 'ramen'),
(13, 'borscht'),
(14, 'ear'),
(15, 'salad'),
(16, 'fried_potatoes'),
(17, 'fish'),
(18, 'stewed_potatoes'),
(19, 'okroshka'),
(20, 'spaschetti'),
(21, 'pea_soup'),
(22, 'сake'),
(23, 'bigus'),
(24, 'buckwheat'),
(25, 'pitcher'),
(26, 'salad'),
(27, 'fur_coat'),
(28, 'fish'),
(29, 'fried_potatoes'),
(30, 'okroshka');

-- --------------------------------------------------------

--
-- Структура таблицы `last_numb`
--

CREATE TABLE `last_numb` (
  `numb` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `last_numb`
--

INSERT INTO `last_numb` (`numb`) VALUES
(10);

-- --------------------------------------------------------

--
-- Структура таблицы `main_dishes`
--

CREATE TABLE `main_dishes` (
  `id` int NOT NULL,
  `element` varchar(255) NOT NULL,
  `price` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `main_dishes`
--

INSERT INTO `main_dishes` (`id`, `element`, `price`) VALUES
(1, 'spaschetti', NULL),
(2, 'chicken_forge', NULL),
(3, 'fried_potatoes', NULL),
(4, 'ramen', NULL),
(5, 'buckwheat', NULL),
(6, 'rice', NULL),
(7, 'mashed_potatoes', NULL),
(8, 'pilaf', NULL),
(9, 'borscht', NULL),
(10, 'pea_soup', NULL),
(11, 'ear', NULL),
(12, 'fish', NULL),
(13, 'okroshka', NULL),
(14, 'bigus', NULL),
(15, 'pitcher', NULL),
(16, 'pie', NULL),
(17, 'сake', NULL),
(18, 'stewed_potatoes', NULL),
(19, 'fur_coat', NULL),
(20, 'salad', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `next_day`
--

CREATE TABLE `next_day` (
  `id` int NOT NULL,
  `element` varchar(255) NOT NULL,
  `price` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `next_day`
--

INSERT INTO `next_day` (`id`, `element`, `price`) VALUES
(1, 'sandwich', NULL),
(2, 'sprats', NULL),
(3, 'flakes', NULL),
(4, 'meat_tartlets', NULL),
(5, 'nuggets', NULL),
(6, 'samsa', NULL),
(7, 'toast', NULL),
(8, 'sandwich', NULL),
(9, 'sprats', NULL),
(10, 'flakes', NULL),
(11, 'meat_tartlets', NULL),
(12, 'nuggets', NULL),
(13, 'samsa', NULL),
(14, 'toast', NULL),
(15, 'sandwich', NULL),
(16, 'sprats', NULL),
(17, 'flakes', NULL),
(18, 'meat_tartlets', NULL),
(19, 'nuggets', NULL),
(20, 'samsa', NULL),
(21, 'toast', NULL),
(22, 'sandwich', NULL),
(23, 'sprats', NULL),
(24, 'flakes', NULL),
(25, 'meat_tartlets', NULL),
(26, 'nuggets', NULL),
(27, 'samsa', NULL),
(28, 'toast', NULL),
(29, 'sandwich', NULL),
(30, 'sprats', NULL),
(31, 'flakes', NULL),
(32, 'meat_tartlets', NULL),
(33, 'nuggets', NULL),
(34, 'samsa', NULL),
(35, 'toast', NULL),
(36, 'sandwich', NULL),
(37, 'sprats', NULL),
(38, 'flakes', NULL),
(39, 'meat_tartlets', NULL),
(40, 'nuggets', NULL),
(41, 'samsa', NULL),
(42, 'toast', NULL),
(43, 'sandwich', NULL),
(44, 'sprats', NULL),
(45, 'flakes', NULL),
(46, 'meat_tartlets', NULL),
(47, 'nuggets', NULL),
(48, 'samsa', NULL),
(49, 'toast', NULL),
(50, 'sandwich', NULL),
(51, 'sprats', NULL),
(52, 'flakes', NULL),
(53, 'meat_tartlets', NULL),
(54, 'nuggets', NULL),
(55, 'samsa', NULL),
(56, 'toast', NULL),
(57, 'sandwich', NULL),
(58, 'sprats', NULL),
(59, 'flakes', NULL),
(60, 'meat_tartlets', NULL),
(61, 'nuggets', NULL),
(62, 'samsa', NULL),
(63, 'toast', NULL),
(64, 'sandwich', NULL),
(65, 'sprats', NULL),
(66, 'flakes', NULL),
(67, 'meat_tartlets', NULL),
(68, 'nuggets', NULL),
(69, 'samsa', NULL),
(70, 'toast', NULL),
(71, 'sandwich', NULL),
(72, 'sprats', NULL),
(73, 'flakes', NULL),
(74, 'meat_tartlets', NULL),
(75, 'nuggets', NULL),
(76, 'samsa', NULL),
(77, 'toast', NULL),
(78, 'sandwich', NULL),
(79, 'sprats', NULL),
(80, 'flakes', NULL),
(81, 'meat_tartlets', NULL),
(82, 'nuggets', NULL),
(83, 'samsa', NULL),
(84, 'toast', NULL),
(85, 'sandwich', NULL),
(86, 'sprats', NULL),
(87, 'flakes', NULL),
(88, 'meat_tartlets', NULL),
(89, 'nuggets', NULL),
(90, 'samsa', NULL),
(91, 'toast', NULL),
(92, 'sandwich', NULL),
(93, 'sprats', NULL),
(94, 'flakes', NULL),
(95, 'meat_tartlets', NULL),
(96, 'nuggets', NULL),
(97, 'samsa', NULL),
(98, 'toast', NULL),
(99, 'sandwich', NULL),
(100, 'sprats', NULL),
(101, 'flakes', NULL),
(102, 'meat_tartlets', NULL),
(103, 'nuggets', NULL),
(104, 'samsa', NULL),
(105, 'toast', NULL),
(106, 'sandwich', NULL),
(107, 'sprats', NULL),
(108, 'flakes', NULL),
(109, 'meat_tartlets', NULL),
(110, 'nuggets', NULL),
(111, 'samsa', NULL),
(112, 'toast', NULL),
(113, 'sandwich', NULL),
(114, 'sprats', NULL),
(115, 'flakes', NULL),
(116, 'meat_tartlets', NULL),
(117, 'nuggets', NULL),
(118, 'samsa', NULL),
(119, 'toast', NULL),
(120, 'sandwich', NULL),
(121, 'sprats', NULL),
(122, 'flakes', NULL),
(123, 'meat_tartlets', NULL),
(124, 'nuggets', NULL),
(125, 'samsa', NULL),
(126, 'toast', NULL),
(127, 'sandwich', NULL),
(128, 'sprats', NULL),
(129, 'flakes', NULL),
(130, 'meat_tartlets', NULL),
(131, 'nuggets', NULL),
(132, 'samsa', NULL),
(133, 'toast', NULL),
(134, 'sandwich', NULL),
(135, 'sprats', NULL),
(136, 'flakes', NULL),
(137, 'meat_tartlets', NULL),
(138, 'nuggets', NULL),
(139, 'samsa', NULL),
(140, 'toast', NULL),
(141, 'sandwich', NULL),
(142, 'sprats', NULL),
(143, 'flakes', NULL),
(144, 'meat_tartlets', NULL),
(145, 'nuggets', NULL),
(146, 'samsa', NULL),
(147, 'toast', NULL),
(148, 'sandwich', NULL),
(149, 'sprats', NULL),
(150, 'flakes', NULL),
(151, 'meat_tartlets', NULL),
(152, 'nuggets', NULL),
(153, 'samsa', NULL),
(154, 'toast', NULL),
(155, 'sandwich', NULL),
(156, 'sprats', NULL),
(157, 'flakes', NULL),
(158, 'meat_tartlets', NULL),
(159, 'nuggets', NULL),
(160, 'samsa', NULL),
(161, 'toast', NULL),
(162, 'sandwich', NULL),
(163, 'sprats', NULL),
(164, 'flakes', NULL),
(165, 'meat_tartlets', NULL),
(166, 'nuggets', NULL),
(167, 'samsa', NULL),
(168, 'toast', NULL),
(169, 'sandwich', NULL),
(170, 'sprats', NULL),
(171, 'flakes', NULL),
(172, 'meat_tartlets', NULL),
(173, 'nuggets', NULL),
(174, 'samsa', NULL),
(175, 'toast', NULL),
(176, 'sandwich', NULL),
(177, 'sprats', NULL),
(178, 'flakes', NULL),
(179, 'meat_tartlets', NULL),
(180, 'nuggets', NULL),
(181, 'samsa', NULL),
(182, 'toast', NULL),
(183, 'sandwich', NULL),
(184, 'sprats', NULL),
(185, 'flakes', NULL),
(186, 'meat_tartlets', NULL),
(187, 'nuggets', NULL),
(188, 'samsa', NULL),
(189, 'toast', NULL),
(190, 'sandwich', NULL),
(191, 'sprats', NULL),
(192, 'flakes', NULL),
(193, 'meat_tartlets', NULL),
(194, 'nuggets', NULL),
(195, 'samsa', NULL),
(196, 'toast', NULL),
(197, 'sandwich', NULL),
(198, 'sprats', NULL),
(199, 'flakes', NULL),
(200, 'meat_tartlets', NULL),
(201, 'nuggets', NULL),
(202, 'samsa', NULL),
(203, 'toast', NULL),
(204, 'sandwich', NULL),
(205, 'sprats', NULL),
(206, 'flakes', NULL),
(207, 'meat_tartlets', NULL),
(208, 'nuggets', NULL),
(209, 'samsa', NULL),
(210, 'toast', NULL),
(211, 'sandwich', NULL),
(212, 'sprats', NULL),
(213, 'flakes', NULL),
(214, 'meat_tartlets', NULL),
(215, 'nuggets', NULL),
(216, 'samsa', NULL),
(217, 'toast', NULL),
(218, 'sandwich', NULL),
(219, 'sprats', NULL),
(220, 'flakes', NULL),
(221, 'meat_tartlets', NULL),
(222, 'nuggets', NULL),
(223, 'samsa', NULL),
(224, 'toast', NULL),
(225, 'sandwich', NULL),
(226, 'sprats', NULL),
(227, 'flakes', NULL),
(228, 'meat_tartlets', NULL),
(229, 'nuggets', NULL),
(230, 'samsa', NULL),
(231, 'toast', NULL),
(232, 'sandwich', NULL),
(233, 'sprats', NULL),
(234, 'flakes', NULL),
(235, 'meat_tartlets', NULL),
(236, 'nuggets', NULL),
(237, 'samsa', NULL),
(238, 'toast', NULL),
(239, 'sandwich', NULL),
(240, 'sprats', NULL),
(241, 'flakes', NULL),
(242, 'meat_tartlets', NULL),
(243, 'nuggets', NULL),
(244, 'samsa', NULL),
(245, 'toast', NULL),
(246, 'sandwich', NULL),
(247, 'sprats', NULL),
(248, 'flakes', NULL),
(249, 'meat_tartlets', NULL),
(250, 'nuggets', NULL),
(251, 'samsa', NULL),
(252, 'toast', NULL),
(253, 'sandwich', NULL),
(254, 'sprats', NULL),
(255, 'flakes', NULL),
(256, 'meat_tartlets', NULL),
(257, 'nuggets', NULL),
(258, 'samsa', NULL),
(259, 'toast', NULL),
(260, 'sandwich', NULL),
(261, 'sprats', NULL),
(262, 'flakes', NULL),
(263, 'meat_tartlets', NULL),
(264, 'nuggets', NULL),
(265, 'samsa', NULL),
(266, 'toast', NULL),
(267, 'sandwich', NULL),
(268, 'sprats', NULL),
(269, 'flakes', NULL),
(270, 'meat_tartlets', NULL),
(271, 'nuggets', NULL),
(272, 'samsa', NULL),
(273, 'toast', NULL),
(274, 'sandwich', NULL),
(275, 'sprats', NULL),
(276, 'flakes', NULL),
(277, 'meat_tartlets', NULL),
(278, 'nuggets', NULL),
(279, 'samsa', NULL),
(280, 'toast', NULL),
(281, 'sandwich', NULL),
(282, 'sprats', NULL),
(283, 'flakes', NULL),
(284, 'meat_tartlets', NULL),
(285, 'nuggets', NULL),
(286, 'samsa', NULL),
(287, 'toast', NULL),
(288, 'sandwich', NULL),
(289, 'sprats', NULL),
(290, 'flakes', NULL),
(291, 'meat_tartlets', NULL),
(292, 'nuggets', NULL),
(293, 'samsa', NULL),
(294, 'toast', NULL),
(295, 'sandwich', NULL),
(296, 'sprats', NULL),
(297, 'flakes', NULL),
(298, 'meat_tartlets', NULL),
(299, 'nuggets', NULL),
(300, 'samsa', NULL),
(301, 'toast', NULL),
(302, 'sandwich', NULL),
(303, 'sprats', NULL),
(304, 'flakes', NULL),
(305, 'meat_tartlets', NULL),
(306, 'nuggets', NULL),
(307, 'samsa', NULL),
(308, 'toast', NULL),
(309, 'sandwich', NULL),
(310, 'sprats', NULL),
(311, 'flakes', NULL),
(312, 'meat_tartlets', NULL),
(313, 'nuggets', NULL),
(314, 'samsa', NULL),
(315, 'toast', NULL),
(316, 'sandwich', NULL),
(317, 'sprats', NULL),
(318, 'flakes', NULL),
(319, 'meat_tartlets', NULL),
(320, 'nuggets', NULL),
(321, 'samsa', NULL),
(322, 'toast', NULL),
(323, 'sandwich', NULL),
(324, 'sprats', NULL),
(325, 'flakes', NULL),
(326, 'meat_tartlets', NULL),
(327, 'nuggets', NULL),
(328, 'samsa', NULL),
(329, 'toast', NULL),
(330, 'sandwich', NULL),
(331, 'sprats', NULL),
(332, 'flakes', NULL),
(333, 'meat_tartlets', NULL),
(334, 'nuggets', NULL),
(335, 'samsa', NULL),
(336, 'toast', NULL),
(337, 'sandwich', NULL),
(338, 'sprats', NULL),
(339, 'flakes', NULL),
(340, 'meat_tartlets', NULL),
(341, 'nuggets', NULL),
(342, 'samsa', NULL),
(343, 'toast', NULL),
(344, 'sandwich', NULL),
(345, 'sprats', NULL),
(346, 'flakes', NULL),
(347, 'meat_tartlets', NULL),
(348, 'nuggets', NULL),
(349, 'samsa', NULL),
(350, 'toast', NULL),
(351, 'sandwich', NULL),
(352, 'sprats', NULL),
(353, 'flakes', NULL),
(354, 'meat_tartlets', NULL),
(355, 'nuggets', NULL),
(356, 'samsa', NULL),
(357, 'toast', NULL),
(358, 'sandwich', NULL),
(359, 'sprats', NULL),
(360, 'flakes', NULL),
(361, 'meat_tartlets', NULL),
(362, 'nuggets', NULL),
(363, 'samsa', NULL),
(364, 'toast', NULL),
(365, 'sandwich', NULL),
(366, 'sprats', NULL),
(367, 'flakes', NULL),
(368, 'meat_tartlets', NULL),
(369, 'nuggets', NULL),
(370, 'samsa', NULL),
(371, 'toast', NULL),
(372, 'sandwich', NULL),
(373, 'sprats', NULL),
(374, 'flakes', NULL),
(375, 'meat_tartlets', NULL),
(376, 'nuggets', NULL),
(377, 'samsa', NULL),
(378, 'toast', NULL),
(379, 'sandwich', NULL),
(380, 'sprats', NULL),
(381, 'flakes', NULL),
(382, 'meat_tartlets', NULL),
(383, 'nuggets', NULL),
(384, 'samsa', NULL),
(385, 'toast', NULL),
(386, 'sandwich', NULL),
(387, 'sprats', NULL),
(388, 'flakes', NULL),
(389, 'meat_tartlets', NULL),
(390, 'nuggets', NULL),
(391, 'samsa', NULL),
(392, 'toast', NULL),
(393, 'sandwich', NULL),
(394, 'sprats', NULL),
(395, 'flakes', NULL),
(396, 'meat_tartlets', NULL),
(397, 'nuggets', NULL),
(398, 'samsa', NULL),
(399, 'toast', NULL),
(400, 'sandwich', NULL),
(401, 'sprats', NULL),
(402, 'flakes', NULL),
(403, 'meat_tartlets', NULL),
(404, 'nuggets', NULL),
(405, 'samsa', NULL),
(406, 'toast', NULL),
(407, 'sandwich', NULL),
(408, 'sprats', NULL),
(409, 'flakes', NULL),
(410, 'meat_tartlets', NULL),
(411, 'nuggets', NULL),
(412, 'samsa', NULL),
(413, 'toast', NULL),
(414, 'sandwich', NULL),
(415, 'sprats', NULL),
(416, 'flakes', NULL),
(417, 'meat_tartlets', NULL),
(418, 'nuggets', NULL),
(419, 'samsa', NULL),
(420, 'toast', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `test`
--

CREATE TABLE `test` (
  `element` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `test`
--

INSERT INTO `test` (`element`) VALUES
('lasddfr'),
('lasddfr'),
('lasddfr'),
('lasddfr'),
('lasddfr'),
('lasddfr'),
('zalupa_0'),
('zalupa_1'),
('zalupa_2'),
('zalupa_3'),
('zalupa_4'),
('zalupa_5'),
('zalupa_6'),
('huy_0'),
('huy_1'),
('huy_2'),
('huy_3'),
('huy_01'),
('huy_11'),
('huy_21'),
('huy_31'),
('huy_01'),
('huy_11'),
('huy_21'),
('huy_31');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `association`
--
ALTER TABLE `association`
  ADD PRIMARY KEY (`main_dishes`);

--
-- Индексы таблицы `beverages`
--
ALTER TABLE `beverages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `current_menu`
--
ALTER TABLE `current_menu`
  ADD PRIMARY KEY (`day`);

--
-- Индексы таблицы `garnish`
--
ALTER TABLE `garnish`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `last_month`
--
ALTER TABLE `last_month`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `main_dishes`
--
ALTER TABLE `main_dishes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `next_day`
--
ALTER TABLE `next_day`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `association`
--
ALTER TABLE `association`
  MODIFY `main_dishes` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `beverages`
--
ALTER TABLE `beverages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `current_menu`
--
ALTER TABLE `current_menu`
  MODIFY `day` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `garnish`
--
ALTER TABLE `garnish`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `last_month`
--
ALTER TABLE `last_month`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `main_dishes`
--
ALTER TABLE `main_dishes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `next_day`
--
ALTER TABLE `next_day`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=421;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
