-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 21 2018 г., 19:39
-- Версия сервера: 5.6.38
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `WD04-project-ragimguseynov`
--

-- --------------------------------------------------------

--
-- Структура таблицы `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` (`id`, `name`, `description`) VALUES
(1, 'Егор Казаков', 'Я веб-разработчик'),
(2, 'Егор Казаков', 'Я веб-разработчик');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `cat_title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `cat_title`) VALUES
(1, 'Путешествие'),
(2, 'JavaScript'),
(3, 'Програмирование'),
(4, 'Компьютеры');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_520_ci,
  `author_id` int(11) UNSIGNED DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `post_img` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_img_small` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`, `author_id`, `date_time`, `post_img`, `post_img_small`) VALUES
(1, 'Город', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', 1, '2018-10-19 06:18:10', '-410601037.png', '320--410601037.png'),
(8, 'Нью-Йорк', 'Нью-Йорк включает пять боро (районов), расположенных в месте впадения реки Гудзон в Атлантический океан. В центре города расположен густонаселенный Манхэттен – один из крупнейших в мире коммерческих, финансовых и культурных центров. Главные достопримечательности Нью-Йорка – многочисленные небоскребы, в том числе Эмпайр-стейт-билдинг, и огромный Центральный парк. На залитой неоновыми огнями площади Таймс-сквер расположен театр \"Бродвей\".', 1, '2018-10-19 06:20:39', '1198199485.png', '320-1198199485.png'),
(9, 'Программирование', 'Программирование, как род занятий, может являться основной профессиональной деятельностью специалиста, либо использоваться в качестве вспомогательной деятельности для решения иных профессиональных задач, либо же использоваться в непрофессиональной сфере (как инструмент решения задач или ради получения удовольствия от процесса программирования). Термин «программист» не обязательно подразумевает профессиональное образование или профессиональную деятельность. ', 1, '2018-10-19 06:22:25', '240924630.jpeg', '320-240924630.jpeg'),
(10, 'Гора', 'Гора — форма рельефа, изолированное резкое поднятие местности с выраженными склонами и подножием или вершина в горной стране. По характеру вершины выделяют пикообразные, куполообразные, платообразные и другие горы. Вершины подводных гор могут представлять собой острова.', 1, '2018-10-19 06:24:17', '-215089967.jpg', '320--215089967.jpg'),
(11, 'GitHub анонсировала новые инструменты автоматизации разработки', 'GitHub представила ряд новых функций, которые позволят упростить разработку и улучшить взаимодействие разработчиков с сервисом. Одна из функций позволяет вносить изменения буквально одним кликом мыши.', 1, '2018-10-19 07:00:50', '582728028.jpg', '320-582728028.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `secondname` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `avatar_small` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `recovery_code` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `recovery_code_times` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `firstname`, `secondname`, `city`, `country`, `avatar`, `avatar_small`, `recovery_code`, `recovery_code_times`) VALUES
(1, 'rmx.880@gmail.com', '$2y$10$hGH2f6ze6ga97MOAbTzU0ePIKeY5CFMhdRTdUZ9zFJKeMxoSoQCNu', 'admin', 'Рагим', 'Гусейнов', 'Баку', 'Азербайджан', '928801005.jpeg', '50-928801005.jpeg', 'bIW3vRl7rO4Xid5', 0),
(2, 'rgm.int01@gmail.com', '$2y$10$jlrV33/iTPS1UBHsjCBUIeGVCsbZGUTue5e5hrnqtF5N1Pp9ZiV9a', 'user', 'Али', 'Асланов', 'Баку', 'Азербайджан', '702572697.jpg', '48-702572697.jpg', '3MJ9hFtGcImeUgY', 0),
(3, 'info2@mail.com', '$2y$10$dGmmcrJi9B7TATYlgKr2beTywbabQ7nTSQit.06pLDgENubFqwj16', 'user', 'Емельян', 'Казаков', 'Казань', 'Россия', '790276935.jpg', '50-790276935.jpg', 'fGmEUNpYqT0i2RH', 0),
(4, 'wqq@ds.tr', '$2y$10$RDEWTJxeECW19MV844JEdu.hUM.bgGGJHl8XFgShBB1OQ/yDMCfuy', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_posts_author` (`author_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
