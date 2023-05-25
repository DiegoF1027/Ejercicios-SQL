-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-05-2023 a las 01:04:29
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `actividad4`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `flag` varchar(125) NOT NULL,
  `capital` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `countries`
--

INSERT INTO `countries` (`id`, `name`, `flag`, `capital`) VALUES
(1, 'Colombia', 'C:\\Users\\dafor\\OneDrive\\Imágenes\\Colombia.png', 'Bogotá D.C'),
(2, 'Estados Unidos', 'C:/Users/dafor/OneDrive/Imágenes/EEUU.jpeg', 'Washington D.C');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `countries_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `departments`
--

INSERT INTO `departments` (`id`, `name`, `countries_id`) VALUES
(1, 'Amazonas', 1),
(2, 'Antioquia', 1),
(3, 'Arauca', 1),
(4, 'Atlantico', 1),
(5, 'Bolivar', 1),
(6, 'Boyacá', 1),
(7, 'Caldas', 1),
(8, 'Caqueta', 1),
(9, 'Casanare', 1),
(10, 'Cauca', 1),
(11, 'Cesar', 1),
(12, 'Choco', 1),
(13, 'Cordoba', 1),
(14, 'Cundinamarca', 1),
(15, 'Guainia', 1),
(16, 'Guaviare', 1),
(17, 'Huila', 1),
(18, 'Magdalena ', 1),
(19, 'Meta', 1),
(20, 'Nariño', 1),
(21, 'Alasca', 2),
(22, 'California', 2),
(23, 'Hawaii', 2),
(24, 'Nuevo México', 2),
(25, 'Vermont', 2),
(26, 'Florida', 2),
(27, 'Tenesse', 2),
(28, 'New Jersey', 2),
(29, 'Colorado', 2),
(30, 'Carolina del norte', 2),
(31, 'Carolina del sur', 2),
(32, 'Misuri', 2),
(33, 'Utah', 2),
(34, 'Pensilvania', 2),
(35, 'Ohio', 2),
(36, 'Texas', 2),
(37, 'Washington D.C', 2),
(38, 'Oregon', 2),
(39, 'Oklahoma', 2),
(40, 'Indiana', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `school`
--

CREATE TABLE `school` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `adress` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `countries_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `school`
--

INSERT INTO `school` (`id`, `name`, `adress`, `phone`, `countries_id`) VALUES
(1, 'Escuela antonia santos ', 'carr 21#49-30', '242645', 1),
(2, 'Alameda unified school', 'calle 1004 #73V 45', '242645', 2),
(3, 'Fundación escuela taller de Bogotá', 'calle 5#3', '247247', 1),
(4, 'Antelope valley school', 'carrera 1234 #134M 23', '247247', 2),
(5, 'Clovis unified school', 'Calle 123 #212 43', '244724', 2),
(6, 'Escuela nuestra señora de la paz ', 'car 25 #31', '244724', 1),
(7, 'Escuela de aviación del pacifico', 'trans 48#65', '245328', 1),
(8, 'Apple valley christian', 'Calle 75c #245 72', '245328', 2),
(9, 'Fairmont prep academy', 'Calle 456 #354 35', '435859', 2),
(10, 'Escuela de administración ', 'calle 78#23', '435859', 1),
(11, 'Justin-siena high school', 'Calle 253 #95 24', '537585', 2),
(12, 'Escuela formarte', 'diagonal32#146', '537585', 1),
(13, 'Escuela flair bartender ', 'trans78#1646', '358345', 1),
(14, 'Escuela feng shui', 'calle 488963', '243245', 1),
(15, 'Sd educa ', 'carrera 646#5', '355357', 1),
(16, 'Heritage high school', 'Cra 4237 #248 12', '358345', 2),
(17, 'Escuela casa solar', 'diagonal78#15353', '359853', 1),
(18, 'Indian river county school', 'Cra 134 #294 12', '243245', 2),
(19, 'Orange county school', 'Cra 456 #789 12', '355357', 2),
(20, 'The kings academy', 'Calle 14 #248 134', '359853', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `names` varchar(45) NOT NULL,
  `lastnames` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `date_birth` varchar(45) NOT NULL,
  `departments_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `names`, `lastnames`, `email`, `password`, `date_birth`, `departments_id`, `school_id`) VALUES
(1, 'Diego', 'castro', 'castro@hotmail.com', '1648461', '2000/10/02', 14, 1),
(2, 'Ricardo', 'amadeo', 'amadeo@hotmail.com', '164946', '1990/10/07', 14, 13),
(3, 'Amaury', 'borbon', 'borbon@hotmail.com', '65341684', '2010/07/30', 11, 10),
(4, 'Ivan', 'pulido', 'borbon@hotmail.com', '65341684', '2010/07/30', 35, 12),
(5, 'Juan', 'ochoa', 'lebron@hotmail.com', '3516546', '2006/12/22', 3, 17),
(6, 'David', 'fuentes', 'fuentes@hotmail.com', '32164441', '2000/10/10', 3, 10),
(7, 'Jose', 'espitia', 'espitia@hotmail.com', '36541654', '2000/01/13', 4, 7),
(8, 'Andres', 'rodriguez', 'espitia@hotmail.com', '354165', '2000/04/15', 4, 7),
(9, 'Karen', 'lebron', 'ochoa@hotmail.com', '16546535', '2001/08/21', 12, 14),
(10, 'armando', 'paredes', 'parades@hotmail.com', '532165', '2003/05/16', 12, 14),
(11, 'Fabian', 'caipa', 'caipa@hotmail.com', '3616565', '2004/07/16', 9, 17),
(12, 'Alejandro', 'amaury', 'amaury@hotmail.com', '21534154', '1995/04/15', 9, 13),
(13, 'Robinson', 'pinto', 'pinto@hotmail.com', '315351', '1995/05/17', 13, 15),
(14, 'martha', 'aponte', 'aponte@hotmail.com', '531156', '1997/03/16', 13, 15),
(15, 'Teresa', 'cespedes', 'cespedes@hotmail.com', '36546583', '2003/05/16', 6, 14),
(16, 'stewar', 'connor', 'stewaec@gmail.com', 'afas241', '1994/12/22', 34, 20),
(17, 'michell', 'Kyle', 'michellc@gmail.com', 'ama2', '1995/07/23', 34, 20),
(18, 'alex', 'Thomas', 'alexj@gmail.com', 'maru2181', '1993/05/24', 37, 19),
(19, 'elvis ', 'George', 'kylee@gmail.com', 'dfsf45454', '2004/08/25	', 37, 19),
(20, 'jacson', 'Oscar', 'jjacson@gmail.com', 'sdff5', '2004/12/16', 35, 18),
(21, 'Noah', 'James', 'njames@gmail.com', '4355sdfs', '1996/12/27', 35, 18),
(22, 'John', 'William', 'jackj13@gmail.com', '41684fsdf', '1997/11/28', 33, 16),
(23, 'Robert', 'Harry', 'hrobert@gmail.com', '53d465fd', '1999/10/29	', 33, 16),
(24, 'Michael', 'Jacob', 'mjacob34@htmail.com', '51f65341sd', '2000/12/30', 36, 11),
(25, 'William', 'Charlie', 'wcharlie475@gmail.com', '213521sd', '1995/12/31', 36, 11),
(26, 'Liam', 'Thomas', 'lthom248@gmail.com', '231453ds', '1997/01/16', 26, 9),
(27, 'Mason', 'Ethan', 'ethan4248@hotmail.com', '32153sdd', '1998/03/04	', 26, 9),
(28, 'tenesis', 'Michael', 'tenesis4348@gmail.com', '2153ds', '1991/10/20', 27, 4),
(29, 'William', 'Alexander', 'williamalex@gmail.com', '2153r', '1995/06/04	', 27, 4),
(30, 'Ethan', 'James', 'ejames@gmail.com', '32r514gr', '2006/07/05', 38, 9);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countries_id` (`countries_id`);

--
-- Indices de la tabla `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countries_id` (`countries_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departments_id` (`departments_id`),
  ADD KEY `school_id` (`school_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `school`
--
ALTER TABLE `school`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_ibfk_1` FOREIGN KEY (`countries_id`) REFERENCES `countries` (`id`);

--
-- Filtros para la tabla `school`
--
ALTER TABLE `school`
  ADD CONSTRAINT `school_ibfk_1` FOREIGN KEY (`countries_id`) REFERENCES `countries` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`departments_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`school_id`) REFERENCES `school` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
