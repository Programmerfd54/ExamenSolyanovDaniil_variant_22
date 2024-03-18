-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:8889
-- Время создания: Мар 18 2024 г., 08:43
-- Версия сервера: 5.7.39
-- Версия PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `web-blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Apteka`
--

CREATE TABLE `Apteka` (
  `id_apteka` int(11) NOT NULL,
  `nazvanie` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `Time_work` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Korzina`
--

CREATE TABLE `Korzina` (
  `id_korzina` int(11) NOT NULL,
  `id_apteka` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_lekarstvo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Lekarstva`
--

CREATE TABLE `Lekarstva` (
  `id_lek` int(11) NOT NULL,
  `id_sert` int(11) NOT NULL,
  `id_sost` int(11) NOT NULL,
  `id_proiz` int(11) NOT NULL,
  `cena` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Proizvoditel`
--

CREATE TABLE `Proizvoditel` (
  `id_proizvoditel` int(11) NOT NULL,
  `Nazvanie` varchar(250) NOT NULL,
  `Strana` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Sertificat`
--

CREATE TABLE `Sertificat` (
  `id_sert` int(11) NOT NULL,
  `nazvanie` varchar(250) NOT NULL,
  `adres` varchar(250) NOT NULL,
  `Telefon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Sostav`
--

CREATE TABLE `Sostav` (
  `id_zapisi` int(11) NOT NULL,
  `Nazvanie` varchar(255) NOT NULL,
  `Kolichestvo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(70) NOT NULL,
  `login` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fio` varchar(255) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `login`, `password`, `fio`) VALUES
(26, 'daniel', 'daniel.test@gmail.com', 'Krut', 'b78295d83eeaca021b80ca1b22ddc406', 'Sol');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Apteka`
--
ALTER TABLE `Apteka`
  ADD PRIMARY KEY (`id_apteka`);

--
-- Индексы таблицы `Korzina`
--
ALTER TABLE `Korzina`
  ADD PRIMARY KEY (`id_korzina`);

--
-- Индексы таблицы `Lekarstva`
--
ALTER TABLE `Lekarstva`
  ADD PRIMARY KEY (`id_lek`);

--
-- Индексы таблицы `Proizvoditel`
--
ALTER TABLE `Proizvoditel`
  ADD PRIMARY KEY (`id_proizvoditel`);

--
-- Индексы таблицы `Sertificat`
--
ALTER TABLE `Sertificat`
  ADD PRIMARY KEY (`id_sert`);

--
-- Индексы таблицы `Sostav`
--
ALTER TABLE `Sostav`
  ADD PRIMARY KEY (`id_zapisi`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
