-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Окт 25 2023 г., 13:27
-- Версия сервера: 10.4.18-MariaDB
-- Версия PHP: 7.4.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `uaers`
--

-- --------------------------------------------------------

--
-- Структура таблицы `your_table_name`
--

CREATE TABLE `your_table_name` (
  `id` int(11) NOT NULL,
  `TITLE` varchar(255) DEFAULT NULL,
  `DATE` date DEFAULT NULL,
  `AUTHOR` varchar(255) DEFAULT NULL,
  `IMAGE` varchar(255) DEFAULT NULL,
  `TEXT` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `your_table_name`
--

INSERT INTO `your_table_name` (`id`, `TITLE`, `DATE`, `AUTHOR`, `IMAGE`, `TEXT`) VALUES
(1, 'Заголовок статьи 1', '2023-10-23', 'VolDeMort', 'https://news.artnet.com/app/news-upload/2019/01/Cat-Photog-Feat-256x256.jpg', 'Текст статьи 1'),
(2, 'Заголовок статьи 2', '2023-10-24', 'igor', 'https://news.artnet.com/app/news-upload/2019/01/Cat-Photog-Feat-256x256.jpg', 'Текст статьи 2');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `your_table_name`
--
ALTER TABLE `your_table_name`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `your_table_name`
--
ALTER TABLE `your_table_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
