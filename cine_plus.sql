-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-04-2021 a las 06:37:53
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cine_plus`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asientoss`
--

CREATE TABLE `asientoss` (
  `id` int(5) NOT NULL,
  `asiento` varchar(10) NOT NULL,
  `id_sala` varchar(10) NOT NULL,
  `id_user` int(5) NOT NULL,
  `id_dis` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asientoss`
--

INSERT INTO `asientoss` (`id`, `asiento`, `id_sala`, `id_user`, `id_dis`) VALUES
(1, 'AS1', 'SS1', 3, 2),
(2, 'AS2', 'SS1', 1, 1),
(3, 'AS3', 'SS1', 3, 2),
(4, 'AS4', 'SS1', 1, 1),
(5, 'AsS1', 'SS2', 1, 1),
(6, 'AsS2', 'SS2', 1, 1),
(7, 'AsS3', 'SS2', 1, 1),
(8, 'AsS4', 'SS2', 1, 1),
(9, 'AC1', 'CC1', 1, 1),
(10, 'AC2', 'CC1', 1, 1),
(11, 'AC3', 'CC1', 1, 1),
(12, 'AC4', 'CC1', 1, 1),
(13, 'AcC1', 'CC2', 1, 1),
(14, 'AcC2', 'CC2', 1, 1),
(15, 'AcC3', 'CC2', 1, 1),
(16, 'AcC4', 'CC2', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cinema`
--

CREATE TABLE `cinema` (
  `id_C` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `localidad` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cinema`
--

INSERT INTO `cinema` (`id_C`, `name`, `localidad`) VALUES
(1, 'Cinépolis Boulevard', 'Blvrd Héroes del 5 de Mayo 907, Centro, 72000 Puebla, Pue.'),
(2, 'Cinemex', 'Puebla Centro, Arroyo de Xonaca 1006, Barrio del Alto, 72000 Puebla, Pue.\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `disponibilidad_a`
--

CREATE TABLE `disponibilidad_a` (
  `id_dis` int(5) NOT NULL,
  `descripcion` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `disponibilidad_a`
--

INSERT INTO `disponibilidad_a` (`id_dis`, `descripcion`) VALUES
(1, 'Libre'),
(2, 'Reservado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movies`
--

CREATE TABLE `movies` (
  `id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `clasification` varchar(10) NOT NULL,
  `Genre` varchar(500) NOT NULL,
  `cast_crew` varchar(5000) NOT NULL,
  `duration` time NOT NULL,
  `sinopsis` mediumtext NOT NULL,
  `trailer` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `movies`
--

INSERT INTO `movies` (`id`, `name`, `clasification`, `Genre`, `cast_crew`, `duration`, `sinopsis`, `trailer`) VALUES
(1, 'Godzilla vs King Kong', 'B2', 'Ciencia ficción, Acción.', 'Alexander Skarsgård, Millie Bobby Brown, Rebecca Hall, Brian Tyree Henry, Shun Oguri, Eiza González, Julian Dennison, Lance Reddick, Kyle Chandler, Demián Bichi.', '01:53:20', 'Godzilla y Kong, dos de las fuerzas más poderosas de un planeta habitado por todo tipo de aterradoras criaturas, se enfrentan en un espectacular combate que sacude los cimientos de la humanidad. Monarch (Kyle Chandler) se embarca en una misión de alto riesgo y pone rumbo hacia territorios inexplorados para descubrir los orígenes de estos dos titanes, en un último esfuerzo por tratar de salvar a dos bestias que parecen tener las horas contadas sobre la faz de la Tierra.', 'https://www.youtube.com/embed/RIKOJP9PHP0'),
(2, 'John Wick: Pacto de sangre', 'B2', 'Crimen, Acción, Suspenso.', 'Keanu Reeves, Common, Laurence Fishburne, Riccardo Scamarcio, John Leguizamo, Ian McShane, Ruby Rose, Lance Reddick, Bridget Moynahan, Thomas Sadoski.', '02:02:00', 'El legendario asesino John Wick (Keanu Reeves) se ve obligado a salir del retiro por un ex-asociado que planea obtener el control de un misterioso grupo internacional de asesinos. Obligado a ayudarlo por un juramento de sangre, John emprende un viaje a Roma lleno de adrenalina estremecedora para pelear contra los asesinos más peligrosos del mundo.', 'https://www.youtube.com/embed/jbeRIvRRxdE'),
(4, 'La Liga de la Justicia de Zack Snyder', 'B2', 'Fantasía, Ciencia ficción, Aventura, Acción, Fantasía, Aventura, Ciencia ficción, Acción.', 'Ben Affleck, Henry Cavill, Gal Gadot, Jason Momoa, Ezra Miller, Ray Fisher, Amy Adams, Jeremy Irons, Connie Nielsen, Diane Lane.', '04:04:00', 'Decidido a garantizar que el último sacrificio de Superman no fuera en vano, Bruce Wayne alinea fuerzas con Diana Prince con planes de reclutar un equipo de metahumanos para proteger al mundo de una amenaza inminente de proporciones catastróficas. La tarea resulta más difícil de lo que Bruce imaginaba, ya que cada uno de los reclutas debe enfrentarse a los demonios de su propio pasado para trascender lo que los ha frenado, permitiéndoles unirse y finalmente formar una liga de héroes sin precedentes. Ahora unidos, Batman, Wonder Woman, Aquaman, Cyborg y The Flash pueden ser demasiado tarde para salvar al planeta de Steppenwolf, DeSaad y Darkseid y sus terribles intenciones.', 'https://www.youtube.com/embed/fp_milOcghU'),
(5, 'Mortal Kombat', 'C', 'Acción, Aventuras, Ciencia Ficción, Artes Marciales, Thriller', 'Lewis Tan\r\nHiroyuki Sanada\r\nJoe Taslim\r\nTadanobu Asano\r\nLudi Lin\r\nMax Huang\r\nJessica McNamee\r\nMehcad Brooks\r\nJosh Lawson\r\nSisi Stringer\r\nChin Han\r\nElissa Cadwell\r\nMatilda Kimber', '01:50:00', 'Mortal Kombat es la nueva adaptación cinematográfica de la famosa saga de videojuegos. La acción sigue a Cole Young, un luchador de MMA acostumbrado a pelear a cambio de dinero, y quien desconoce su importante ascendencia y la valiosa herencia que está a punto de recibir. Este hecho hará que el emperador Shang Tsung de Outworld envíe a su letal guerrero Sub-Zero, un criomante capaz de controlar el hielo para darle caza.\r\nAnte la inminente amenaza, el protagonista, preocupado por la seguridad de su familia, decide ir a buscar a Sonya Blade siguiendo las instrucciones de Jax, quien tiene la misma marca con forma de dragón que él. En su aventura, el protagonista se entrenará con experimentados guerreros para unirse a los mejores luchadores de la Tierra en su enfrentamiento contra los enemigos de Outworld', 'https://www.youtube.com/embed/iKpeOvLZkDM'),
(6, 'Spider Man Un Nuevo Universo', 'PG +13', 'Acción, aventuras, ciencia ficción y cine de superhéroes', 'Nicolas Cage\r\nHailee Steinfeld\r\nJake Johnson\r\nMahershala Ali\r\nLiev Schreiber\r\nLily Tomlin\r\nShameik Moore\r\nZoë Kravitz\r\nKathryn Hahn\r\nJohn Mulaney\r\nKimiko Glenn\r\nStan Lee\r\nChris Pine\r\nLex Lang\r\nOscar Isaac\r\nBrian Tyree Henry', '02:00:00', 'Luego de ser mordido por una araña radioactiva, el joven Miles Morales desarrolla misteriosos poderes que lo transforman en el Hombre Araña. Ahora deberá usar sus nuevas habilidades ante el malvado Kingpin, un enorme demente que puede abrir portales hacia otros universos.', 'https://www.youtube.com/embed/HTe6KkOuXjY'),
(7, 'Soul', 'Todos los ', 'Animación Comedia Drama', 'Jamie Foxx\r\nTina Fey\r\nGraham Norton\r\nRachel House\r\nAlice Braga\r\nRichard Ayoade\r\nPhylicia Rashad\r\nDonnell Rawlings\r\nQuestlove\r\nAngela Bassett', '01:40:00', 'Joe Gardner, un profesor de música de secundaria que vive en la ciudad de Nueva York, se siente atrapado en la vida e insatisfecho en su trabajo. Sueña con una carrera en el jazz, a lo que su madre costurera, Libba, se opone, temiendo que no tenga seguridad económica.', 'https://www.youtube.com/embed/3QIdlo4uIVg'),
(8, 'Clouds', 'PG-13', 'Drama Música', 'Fin Argus | Sabrina Carpenter | Madison Iseman | Neve Campbell | Tom Everett Scott | Lil Rel Howery', '02:00:00', 'Basada en una increíble historia real, Zach Sobiech (Fin Argus), de diecisiete años, es un estudiante de último año de la secundaria amante de la diversión con un talento musical puro. Pero unas semanas después de su último año, justo cuando la chica de sus sueños finalmente le corresponde a su amor, el mundo de Zach se pone patas arriba cuando descubre que su cáncer se ha extendido y ahora solo le quedan seis meses de vida. Con el tiempo limitado que le queda, él y su mejor amiga y compañera de escritura, Sammy (Sabrina Carpenter), deciden seguir sus sueños y finalmente hacer un álbum. Poco sabían ellos; se volverían populares mundialmente y se convertirían en un fenómeno viral. Con el tiempo agotándose, Zach se enfrenta a la realidad de que no importa cómo pase su tiempo, va a lastimar a las personas que más ama, incluido el amor de su vida Amy (Madison Iseman). A medida que la condición de salud de Zach comienza a empeorar, debe tomar decisiones difíciles sobre cómo pasar su tiempo y, lo que es más importante, con quién. Al final, descubre que la mejor manera de despedirse es con música, y nace su exitosa canción CLOUDS.\r\n', 'https://www.youtube.com/embed/OWEgUhWU4g4'),
(9, 'Dragon Ball Super: Broly', 'PG +13', 'Acción Animación Fantasía', 'Masako Nozawa | Ryo Horikawa | Bin Shimada | Ryusei Nakao | Aya Hisakawa | Toshio Furukawa | Takeshi Kusao | Koichi Yamadera | Masakazu Morita | Katsuhisa Hoki', '01:41:00', 'Tras haber terminado el torneo de poder, un saiyajin al que nunca han visto se presenta ante los guerreros Goku (Masako Nozawa) y Vegeta (Ryo Horikawa). Esta es la historia de Broly (Bin Shimada), un saiyajin sin límites.\r\n\r\nLa Tierra una vez más está en paz después del torneo de poder. Tras descubrir que en los diferentes universos hay seres increíblemente poderosos que aún no ha visto, Goku tiene la intención de seguir entrenando para hacerse aún más fuerte. Entonces, un día como cualquiera, un saiyajin llamado Broly al que nunca han visto se presenta ante Goku y Vegeta. Prácticamente extinguidos con la destrucción del Planeta Vegeta, así que ¿Qué está haciendo Broly en la Tierra? Incluso Freezer (Ryusei Nakao), regresa del infierno, se ve involucrado en este encuentro entre tres Saiyajines que ha seguido destinos completamente diferentes y que no tarda en convertirse en una feroz batalla contra un guerrero que no tiene límites.', 'https://www.youtube.com/embed/V85BD0SDam4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id_r` int(5) NOT NULL,
  `cinema` varchar(50) NOT NULL,
  `sala` varchar(10) NOT NULL,
  `funcion` datetime NOT NULL,
  `hora_reserva` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_user` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id_r`, `cinema`, `sala`, `funcion`, `hora_reserva`, `id_user`) VALUES
(1, 'cinemex', 'CM1', '2021-04-28 14:41:22', '2021-04-22 19:41:36', 3),
(2, 'Cinépolis Boulevard', 'CC2', '2021-04-27 16:30:00', '2021-04-22 21:43:14', 3),
(3, 'Cinemex', 'SS2', '2021-04-30 12:30:30', '2021-04-22 21:47:36', 3),
(4, 'Cinépolis Boulevard', 'CC2', '2021-04-27 16:30:00', '2021-04-23 03:10:57', 3),
(5, 'Cinépolis Boulevard', 'CC2', '2021-04-27 16:30:00', '2021-04-23 03:14:15', 3),
(6, 'Cinemex', 'SS2', '2021-04-30 12:30:30', '2021-04-23 03:19:19', 3),
(7, 'Cinépolis Boulevard', 'CC2', '2021-04-27 16:30:00', '2021-04-23 03:54:22', 3),
(8, 'Cinépolis Boulevard', 'CC2', '2021-04-27 16:30:00', '2021-04-23 03:56:38', 3),
(9, 'Cinemex', 'SS2', '2021-04-30 12:30:30', '2021-04-23 03:57:13', 3),
(10, 'Cinépolis Boulevard', 'CC2', '2021-04-27 16:30:00', '2021-04-23 03:58:13', 3),
(11, 'Cinépolis Boulevard', 'CC2', '2021-04-27 16:30:00', '2021-04-23 04:36:50', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_user`
--

CREATE TABLE `rol_user` (
  `id` int(5) NOT NULL,
  `rol` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol_user`
--

INSERT INTO `rol_user` (`id`, `rol`) VALUES
(1, 'admin'),
(2, 'client');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salas`
--

CREATE TABLE `salas` (
  `id` varchar(10) NOT NULL,
  `sala_n` varchar(10) NOT NULL,
  `id_C` int(5) NOT NULL,
  `id_movie` int(5) NOT NULL,
  `horario` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `salas`
--

INSERT INTO `salas` (`id`, `sala_n`, `id_C`, `id_movie`, `horario`) VALUES
('CC1', 'CC1', 1, 2, '2021-04-26 12:14:00'),
('CC2', 'CC2', 1, 1, '2021-04-27 16:30:00'),
('SS1', 'SS1', 2, 1, '2021-04-29 10:15:00'),
('SS2', 'SS2', 2, 1, '2021-04-30 12:30:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `name_user` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `rol_user` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name_user`, `email`, `password`, `rol_user`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', 1),
(2, 'DanielRT', 'alexdaniel1401200@gmail.com', '123', 2),
(3, 'alex', 'alexdaniel140120@yahoo.com', 'alex', 2),
(5, 'miguel', 'miguel@gmail.com', '123456789', 2),
(6, 'usuario', 'usuario@gmail.com', 'usuario', 2),
(7, 'Edmundo', 'edm@gmail.com', '123456789', 1),
(8, 'user', 'user@gmail.com', 'user', 1),
(9, 'hh', 'hh', 'hh', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asientoss`
--
ALTER TABLE `asientoss`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sala` (`id_sala`,`id_user`,`id_dis`),
  ADD KEY `id_dis` (`id_dis`),
  ADD KEY `id_user` (`id_user`);

--
-- Indices de la tabla `cinema`
--
ALTER TABLE `cinema`
  ADD PRIMARY KEY (`id_C`);

--
-- Indices de la tabla `disponibilidad_a`
--
ALTER TABLE `disponibilidad_a`
  ADD PRIMARY KEY (`id_dis`);

--
-- Indices de la tabla `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id_r`),
  ADD KEY `id_user` (`id_user`);

--
-- Indices de la tabla `rol_user`
--
ALTER TABLE `rol_user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `salas`
--
ALTER TABLE `salas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_C` (`id_C`,`id_movie`),
  ADD KEY `id_movie` (`id_movie`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rol_user` (`rol_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asientoss`
--
ALTER TABLE `asientoss`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `cinema`
--
ALTER TABLE `cinema`
  MODIFY `id_C` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `disponibilidad_a`
--
ALTER TABLE `disponibilidad_a`
  MODIFY `id_dis` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id_r` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `rol_user`
--
ALTER TABLE `rol_user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asientoss`
--
ALTER TABLE `asientoss`
  ADD CONSTRAINT `asientoss_ibfk_1` FOREIGN KEY (`id_sala`) REFERENCES `salas` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `asientoss_ibfk_2` FOREIGN KEY (`id_dis`) REFERENCES `disponibilidad_a` (`id_dis`) ON UPDATE CASCADE,
  ADD CONSTRAINT `asientoss_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `salas`
--
ALTER TABLE `salas`
  ADD CONSTRAINT `salas_ibfk_1` FOREIGN KEY (`id_C`) REFERENCES `cinema` (`id_C`) ON UPDATE CASCADE,
  ADD CONSTRAINT `salas_ibfk_2` FOREIGN KEY (`id_movie`) REFERENCES `movies` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`rol_user`) REFERENCES `rol_user` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
