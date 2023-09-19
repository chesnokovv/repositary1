-- phpMyAdmin SQL Dump
-- version 5.2.1deb1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Сен 19 2023 г., 16:16
-- Версия сервера: 10.11.3-MariaDB-1
-- Версия PHP: 8.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `черепашки_ниндзя`
--

-- --------------------------------------------------------

--
-- Структура таблицы `мир`
--

CREATE TABLE `мир` (
  `id` int(11) NOT NULL,
  `название` varchar(20) DEFAULT NULL,
  `версия` varchar(20) DEFAULT NULL,
  `описание` varchar(40) DEFAULT NULL,
  `сезон` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `мир`
--

INSERT INTO `мир` (`id`, `название`, `версия`, `описание`, `сезон`) VALUES
(1, 'earth', '1', 'норм миров', 'зима'),
(2, 'hell', '2.0', 'ненорм мир', 'лето'),
(3, 'Cry', '3.0', 'совсем не норм мир', 'весна');

-- --------------------------------------------------------

--
-- Структура таблицы `оружие`
--

CREATE TABLE `оружие` (
  `id` int(11) NOT NULL,
  `название` varchar(20) DEFAULT NULL,
  `тип` varchar(20) DEFAULT NULL,
  `вид_урона` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `оружие`
--

INSERT INTO `оружие` (`id`, `название`, `тип`, `вид_урона`) VALUES
(1, 'катана', 'меч', 'большоая'),
(2, 'нунчаки', 'нунчаки', 'большоая'),
(3, 'палка', 'палка', 'большоая');

-- --------------------------------------------------------

--
-- Структура таблицы `персонажи`
--

CREATE TABLE `персонажи` (
  `id` int(11) NOT NULL,
  `имя` varchar(20) DEFAULT NULL,
  `возраст` int(11) DEFAULT NULL,
  `статус` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `персонажи`
--

INSERT INTO `персонажи` (`id`, `имя`, `возраст`, `статус`) VALUES
(1, 'Leo', 20, 'online'),
(2, 'Miki', 20, 'online'),
(3, 'Danatello', 20, 'online');

-- --------------------------------------------------------

--
-- Структура таблицы `пользователи`
--

CREATE TABLE `пользователи` (
  `id` int(11) NOT NULL,
  `login` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `пользователи`
--

INSERT INTO `пользователи` (`id`, `login`, `pass`) VALUES
(1, 'dsgadsfgjaf', 'safadsfgh'),
(2, 'dasdas', 'dsadsfsadf'),
(3, 'yoyoyo', 'neyoyoyo');

-- --------------------------------------------------------

--
-- Структура таблицы `раса`
--

CREATE TABLE `раса` (
  `id` int(11) NOT NULL,
  `название` varchar(20) DEFAULT NULL,
  `тип` varchar(20) DEFAULT NULL,
  `особенности` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `раса`
--

INSERT INTO `раса` (`id`, `название`, `тип`, `особенности`) VALUES
(1, 'гремлин', 'большой', 'крутой'),
(2, 'троль', 'огромный', 'тупой, но сильный'),
(3, 'крыса', 'маленький', 'быстрый');

-- --------------------------------------------------------

--
-- Структура таблицы `фракция`
--

CREATE TABLE `фракция` (
  `id` int(11) NOT NULL,
  `фркация` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `фракция`
--

INSERT INTO `фракция` (`id`, `фркация`) VALUES
(1, 'плохая'),
(2, 'норм'),
(3, 'хорошая');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `мир`
--
ALTER TABLE `мир`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `оружие`
--
ALTER TABLE `оружие`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `персонажи`
--
ALTER TABLE `персонажи`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `пользователи`
--
ALTER TABLE `пользователи`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `раса`
--
ALTER TABLE `раса`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `фракция`
--
ALTER TABLE `фракция`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `мир`
--
ALTER TABLE `мир`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `оружие`
--
ALTER TABLE `оружие`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `персонажи`
--
ALTER TABLE `персонажи`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `пользователи`
--
ALTER TABLE `пользователи`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `раса`
--
ALTER TABLE `раса`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `фракция`
--
ALTER TABLE `фракция`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
