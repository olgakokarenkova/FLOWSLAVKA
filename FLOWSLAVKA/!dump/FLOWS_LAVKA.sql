-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 15 2024 г., 11:22
-- Версия сервера: 8.0.30
-- Версия PHP: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `FLOWS_LAVKA`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `category_id` int NOT NULL,
  `category` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`category_id`, `category`) VALUES
(1, 'Букет'),
(2, 'Композиция'),
(3, 'Букет в коробке');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  `number` int DEFAULT NULL,
  `count` int DEFAULT NULL,
  `status` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`order_id`, `product_id`, `user_id`, `number`, `count`, `status`, `reason`, `created_at`, `updated_at`) VALUES
(17, 0, 2, 1387869029, 1, 'Новый', NULL, '2022-02-17 10:15:08', '2022-02-17 10:15:08'),
(21, 0, 3, 1710707251, 2, 'Новый', NULL, '2024-05-15 07:08:03', '2024-05-15 07:08:03');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `product_id` int NOT NULL,
  `name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `country` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int NOT NULL,
  `model` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int NOT NULL,
  `path` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`product_id`, `name`, `price`, `country`, `year`, `model`, `category`, `count`, `path`, `created_at`) VALUES
(3, 'Душистая сирень', 1990, 'Россия', 7, 'Упаковка крафт - 1 шт.', 'Лазерный принтер', 5, 'logo/logo.png', '2022-02-16 06:58:58'),
(5, 'Букет из ирисов ', 2290, 'Россия', 19, 'Ирис - 19 шт.\r\nЗелень - 1 шт.\r\nУпаковка - 1 шт.', 'вп', 4, 'logo/logo_1.png', '2024-05-22 10:30:48'),
(6, 'Букет Лидия', 2290, 'Россия', 11, 'Зелень - 1 шт.\r\nРоза кустовая розовая - 11 шт.', 'Термопринтер', 11, 'logo/logo_2.png', '2022-02-16 06:58:58'),
(7, 'Лавандовые сны', 2975, 'Россия', 7, 'Гипсофила - 2 шт.\r\nГортензия - 1 шт.\r\nПапоротник - 1 шт.\r\nПинк мондиаль роза - 3 шт.', 'Лазерный принтер', 10, 'logo/logo_3.png', '2022-02-16 06:58:58'),
(8, 'Кэнди', 1611, 'Россия', 25, 'Гиперикум - 3 шт.\r\nХризантема кустовая - 9 шт.\r\nРоза - 5 шт.\r\nЛизиантус (эустома) - 8 шт.', 'Букет в коробке', 20, 'logo/logo_4.png', '2022-02-16 06:58:58'),
(9, 'Нежный капучино', 2790, 'Россия', 15, 'Бруния - 1 шт.\r\nЛизиантус - 2 шт.\r\nРоза Капучино - 3 шт.\r\nРоза кустовая - 2 шт.\r\nДиантус - 2 шт.\r\nЛагурус - 3 шт.\r\nсуккулент (эйхеверия) - 2 шт.', 'Букет в коробке', 4, 'logo/logo_5.png', '2022-02-16 06:58:58'),
(10, 'Клубничный десерт', 2975, 'Россия', 9, 'Лизиантус - 2 шт.\r\nРоза кустовая - 2 шт.\r\nДиантус - 5 шт.\r\nзелень декоративная - 3 шт.', 'Композиция', 15, 'logo/logo_6.png', '2022-02-16 06:58:58'),
(11, 'Пиони Баблс', 2295, 'Голландия', 11, 'роза пионовидная пиони баблс - 11 шт.', 'Букет', 24, 'logo/logo_7.png', '2022-02-16 06:58:58'),
(12, '101 Роза для любимой\r\n', 8999, 'Россия', 101, 'красная роза red naomi - 101 шт.', 'Букет', 90, 'logo/logo_8.png', '2022-02-16 06:58:58'),
(13, 'Ромашки', 2989, 'Россия', 9, 'Ромашка - 9 шт.', 'Букет', 24, 'logo/logo_9.png', '2022-02-16 06:58:58'),
(14, 'ALMOND ROSES', 1791, 'Голландия', 11, 'Лента атласная - 1 шт.\r\nСредство для продления жизни цветов - 1 шт.\r\nДизайнерская упаковка - 2 шт.\r\nподкормка для срезанных цветов - 1 шт.\r\nальстромерия микс - 11 шт.\r\nинструкция по уходу за цветами - 1 шт.\r\nлюбовь флориста (бесплатно) - 1 шт.\r\n\r\n', 'Букет', 32, 'logo/logo_10.png', '2022-02-16 06:58:58'),
(15, 'Трогательное признание', 2995, 'Голландия', 21, 'Альстромерия - 21 шт.', 'Букет', 14, 'logo/logo_11.png', '2022-02-16 06:58:58');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `patronymic` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`user_id`, `name`, `surname`, `patronymic`, `login`, `email`, `password`, `role`) VALUES
(1, 'Ольга', 'Сергеева', 'Андреевна', 'admin', '1@1', 'admin11', 'admin'),
(3, 'Ольга', 'Кокаренкова', 'Вячеславовна', 'olakok', 'olakokk@mail.ru', '1234щд', 'client');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
