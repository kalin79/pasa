-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-08-2019 a las 23:25:53
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_quinde`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actors`
--

CREATE TABLE `actors` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cartelera` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `actors`
--

INSERT INTO `actors` (`id`, `id_cartelera`, `nombre`, `foto`, `estado`, `created_at`, `updated_at`) VALUES
(179, 16, 'Colin Farrell', NULL, 1, '2019-05-10 14:23:40', '2019-05-10 14:23:40'),
(180, 16, 'Danny DeVito', NULL, 1, '2019-05-10 14:23:40', '2019-05-10 14:23:40'),
(181, 16, 'Colin Farrell', NULL, 1, '2019-05-10 14:23:40', '2019-05-10 14:23:40'),
(182, 16, 'Danny DeVito', NULL, 1, '2019-05-10 14:23:40', '2019-05-10 14:23:40'),
(183, 17, 'Jack Dylan Grazer', NULL, 1, '2019-05-10 14:23:49', '2019-05-10 14:23:49'),
(184, 17, 'Zachary Levi', NULL, 1, '2019-05-10 14:23:49', '2019-05-10 14:23:49'),
(185, 18, 'Carlos Carlí­n', NULL, 1, '2019-05-10 14:23:58', '2019-05-10 14:23:58'),
(186, 18, 'Gianella Neyra', NULL, 1, '2019-05-10 14:23:58', '2019-05-10 14:23:58'),
(187, 18, 'Manuel Gold', NULL, 1, '2019-05-10 14:23:58', '2019-05-10 14:23:58'),
(188, 18, 'Carlos Carlín', NULL, 1, '2019-05-10 14:23:58', '2019-05-10 14:23:58'),
(189, 18, 'Gianella Neyra', NULL, 1, '2019-05-10 14:23:58', '2019-05-10 14:23:58'),
(190, 18, 'Manuel Gold', NULL, 1, '2019-05-10 14:23:58', '2019-05-10 14:23:58'),
(191, 19, 'Jason Clarke', NULL, 1, '2019-05-10 14:24:13', '2019-05-10 14:24:13'),
(192, 19, 'Amy Seimetz', NULL, 1, '2019-05-10 14:24:13', '2019-05-10 14:24:13'),
(193, 21, 'Florence Florence Pugh', NULL, 1, '2019-05-10 14:24:47', '2019-05-10 14:24:47'),
(194, 22, 'Chris Hemsworth', NULL, 1, '2019-05-10 14:24:56', '2019-05-10 14:24:56'),
(195, 22, 'Don Cheadle', NULL, 1, '2019-05-10 14:24:56', '2019-05-10 14:24:56'),
(196, 22, 'Scarlett Johansson', NULL, 1, '2019-05-10 14:24:56', '2019-05-10 14:24:56'),
(259, 23, 'Josephine Langford', NULL, 1, '2019-06-24 12:02:23', '2019-06-24 12:02:23'),
(260, 24, 'Carlos Carlín', NULL, 1, '2019-06-24 12:02:31', '2019-06-24 12:02:31'),
(267, 15, 'Josephine Langford', NULL, 1, '2019-06-24 13:00:28', '2019-06-24 13:00:28'),
(268, 15, 'Hero Fiennes-Tiffin', NULL, 1, '2019-06-24 13:00:28', '2019-06-24 13:00:28'),
(269, 15, 'Josephine Langford', NULL, 1, '2019-06-24 13:00:28', '2019-06-24 13:00:28'),
(270, 15, 'Hero Fiennes-Tiffin', NULL, 1, '2019-06-24 13:00:28', '2019-06-24 13:00:28'),
(312, 28, 'Tom Hanks', NULL, 1, '2019-06-26 09:55:34', '2019-06-26 09:55:34'),
(313, 28, 'Tim Allen', NULL, 1, '2019-06-26 09:55:34', '2019-06-26 09:55:34'),
(314, 29, 'Will Smith', NULL, 1, '2019-06-26 09:56:10', '2019-06-26 09:56:10'),
(315, 29, 'Naomi Scott', NULL, 1, '2019-06-26 09:56:10', '2019-06-26 09:56:10'),
(316, 29, 'Mena Massoud', NULL, 1, '2019-06-26 09:56:10', '2019-06-26 09:56:10'),
(317, 30, 'Jennifer Lawrence', NULL, 1, '2019-06-26 09:57:27', '2019-06-26 09:57:27'),
(318, 30, 'James McAvoy', NULL, 1, '2019-06-26 09:57:27', '2019-06-26 09:57:27'),
(319, 30, 'Jessica Chastain', NULL, 1, '2019-06-26 09:57:27', '2019-06-26 09:57:27'),
(320, 31, 'Jennifer Lawrence', NULL, 1, '2019-06-26 09:58:13', '2019-06-26 09:58:13'),
(321, 31, 'James McAvoy', NULL, 1, '2019-06-26 09:58:13', '2019-06-26 09:58:13'),
(322, 31, 'Jessica Chastain', NULL, 1, '2019-06-26 09:58:13', '2019-06-26 09:58:13'),
(323, 32, 'Armie Hammer', NULL, 1, '2019-06-26 09:58:26', '2019-06-26 09:58:26'),
(324, 32, 'Dev Patel', NULL, 1, '2019-06-26 09:58:26', '2019-06-26 09:58:26'),
(325, 32, 'Jason Issacs', NULL, 1, '2019-06-26 09:58:26', '2019-06-26 09:58:26'),
(341, 39, 'Mark Ruffalo', NULL, 1, '2019-06-28 16:44:49', '2019-06-28 16:44:49'),
(342, 39, 'Chris Hemsworth', NULL, 1, '2019-06-28 16:44:49', '2019-06-28 16:44:49'),
(343, 39, 'Paul Rudd', NULL, 1, '2019-06-28 16:44:49', '2019-06-28 16:44:49'),
(353, 37, 'Will Smith', NULL, 1, '2019-06-28 17:02:09', '2019-06-28 17:02:09'),
(354, 37, 'Naomi Scott', NULL, 1, '2019-06-28 17:02:09', '2019-06-28 17:02:09'),
(355, 37, 'Mena Massoud', NULL, 1, '2019-06-28 17:02:09', '2019-06-28 17:02:09'),
(356, 38, 'Jennifer Lawrence', NULL, 1, '2019-06-28 17:02:15', '2019-06-28 17:02:15'),
(357, 38, 'James McAvoy', NULL, 1, '2019-06-28 17:02:15', '2019-06-28 17:02:15'),
(358, 38, 'Jessica Chastain', NULL, 1, '2019-06-28 17:02:15', '2019-06-28 17:02:15'),
(373, 35, 'Tiffany Hadish', NULL, 1, '2019-07-04 12:46:06', '2019-07-04 12:46:06'),
(374, 35, 'Harrison Ford', NULL, 1, '2019-07-04 12:46:06', '2019-07-04 12:46:06'),
(375, 35, 'Eric Stonestreet', NULL, 1, '2019-07-04 12:46:06', '2019-07-04 12:46:06'),
(380, 41, 'Tiffany Hadish', NULL, 1, '2019-07-04 16:11:06', '2019-07-04 16:11:06'),
(381, 41, 'Harrison Ford', NULL, 1, '2019-07-04 16:11:06', '2019-07-04 16:11:06'),
(382, 41, 'Eric Stonestreet', NULL, 1, '2019-07-04 16:11:06', '2019-07-04 16:11:06'),
(393, 36, 'Tom Hanks', NULL, 1, '2019-07-11 20:57:38', '2019-07-11 20:57:38'),
(394, 36, 'Tim Allen', NULL, 1, '2019-07-11 20:57:38', '2019-07-11 20:57:38'),
(395, 40, 'Mckenna Grace', NULL, 1, '2019-07-11 20:58:14', '2019-07-11 20:58:14'),
(396, 40, 'Patrick Wilson', NULL, 1, '2019-07-11 20:58:14', '2019-07-11 20:58:14'),
(397, 43, 'Tom Holland', NULL, 1, '2019-07-11 20:59:35', '2019-07-11 20:59:35'),
(398, 43, 'Zendaya', NULL, 1, '2019-07-11 20:59:35', '2019-07-11 20:59:35'),
(399, 44, 'Isabelle Huppert', NULL, 1, '2019-07-11 21:02:04', '2019-07-11 21:02:04'),
(400, 44, 'Chlöe Grace Moretz', NULL, 1, '2019-07-11 21:02:04', '2019-07-11 21:02:04'),
(401, 44, 'Isabelle Huppert', NULL, 1, '2019-07-11 21:04:23', '2019-07-11 21:04:23'),
(402, 44, 'Chlöe Grace Moretz', NULL, 1, '2019-07-11 21:04:23', '2019-07-11 21:04:23'),
(403, 33, 'Tom Hanks', NULL, 1, '2019-07-11 21:04:51', '2019-07-11 21:04:51'),
(404, 33, 'Tim Allen', NULL, 1, '2019-07-11 21:04:51', '2019-07-11 21:04:51'),
(405, 42, 'Tom Holland', NULL, 1, '2019-07-11 21:05:16', '2019-07-11 21:05:16'),
(406, 42, 'Zendaya', NULL, 1, '2019-07-11 21:05:16', '2019-07-11 21:05:16'),
(407, 42, 'Tom Holland', NULL, 1, '2019-07-11 21:05:16', '2019-07-11 21:05:16'),
(408, 42, 'Zendaya', NULL, 1, '2019-07-11 21:05:16', '2019-07-11 21:05:16'),
(413, 34, 'Mckenna Grace', NULL, 1, '2019-07-11 21:10:42', '2019-07-11 21:10:42'),
(414, 34, 'Patrick Wilson', NULL, 1, '2019-07-11 21:10:42', '2019-07-11 21:10:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `billboards`
--

CREATE TABLE `billboards` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_presentacion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_background` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_background` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `director` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sinopsis` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duracion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idioma` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT NULL,
  `estreno` int(11) DEFAULT NULL,
  `destacado` int(11) DEFAULT NULL,
  `estado` int(11) NOT NULL,
  `ciudad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `billboards`
--

INSERT INTO `billboards` (`id`, `titulo`, `slug`, `img_presentacion`, `img_background`, `video_background`, `director`, `sinopsis`, `duracion`, `idioma`, `fecha`, `estreno`, `destacado`, `estado`, `ciudad`, `created_at`, `updated_at`) VALUES
(33, 'TOY STORY 4', 'toy-story-4', '5d27eac33bafd_cartelera11jul-CX-04.png', NULL, 'https://www.youtube.com/embed/NK942LL5PzY', 'Josh Cooley', 'Woody siempre ha tenido claro cuál es su labor en el mundo, y cuál es su prioridad: cuidar a su dueño, ya sea Andy o Bonnie. Pero cuando Bonnie añade Forky, un nuevo y reluciente juguete a su habitación, arranca una nueva aventura que servirá para que los viejos y nuevos amigos le enseñen a Woody lo grande que puede ser el mundo para un juguete.', '1 hr. 40 min.', '3', NULL, 0, 0, 1, 'cajamarca', '2019-06-24 11:54:55', '2019-07-11 21:04:51'),
(34, 'ANNABELLE VUELVE A CASA', 'annabelle-viene', '5d27eae9ca965_cartelera11jul-CX-03.png', NULL, 'https://www.youtube.com/embed/KUnKWjeQA9A', 'Gary Dauberman', 'Decididos a evitar que Annabelle cause más estragos, los demonólogos Ed y Lorraine Warren llevan a la muñeca poseída a la sala de objetos bajo llave que tienen en su casa. La colocan \"a salvo\" en una vitrina sagrada bendecida por un sacerdote. Pero una noche profana de horror aguarda a que Annabelle despierte a los espíritus malignos de la habitación, quienes se fijan en un nuevo objetivo: la hija de diez años de los Warrens, Judy, y sus amigas.', '1 hr. 46 min.', '3', '2019-06-24 12:00:00', 0, 0, 1, 'cajamarca', '2019-06-24 11:56:48', '2019-07-11 21:10:42'),
(35, 'LA VIDA SECRETA  DE TUS MASCOTAS 2', 'vida-secreta-mascotas2', '5d1e3b5ed7388_cartelera21jul-CX-03.png', NULL, 'https://www.youtube.com/embed/rslZ-fHiSuI', 'Chris Renaud', 'Max se enfrenta a nuevos e importantes cambios en su vida: su dueña Katie no sólo se ha casado, sino que también ha sido madre por primera vez. En un viaje familiar al campo conoce a un perro granjero llamado Rooster, con el que aprende a dominar sus miedos. Mientras tanto, Gidget trata de recuperar el juguete favorito de Max de un apartamento repleto de gatos. Snowball, por otro lado, se embarca en una peligrosa misión para liberar a un tigre blanco, Hu, de sus captures en un circo de animales.', '1 hr. 26 min.', '3', '2019-06-28 12:00:00', 0, 0, 0, 'cajamarca', '2019-06-24 11:58:46', '2019-07-11 21:04:38'),
(36, 'TOY STORY 4', 'toy-story-4', '5d27e9120c74b_cartelera11jul-ICA-04.png', NULL, 'https://www.youtube.com/embed/NK942LL5PzY', 'Josh Cooley', 'Woody siempre ha tenido claro cuál es su labor en el mundo, y cuál es su prioridad: cuidar a su dueño, ya sea Andy o Bonnie. Pero cuando Bonnie añade Forky, un nuevo y reluciente juguete a su habitación, arranca una nueva aventura que servirá para que los viejos y nuevos amigos le enseñen a Woody lo grande que puede ser el mundo para un juguete.', '1 hr. 40 min.', '3', '2019-06-28 12:00:00', 0, 0, 1, 'ica', '2019-06-28 16:39:14', '2019-07-11 20:57:38'),
(37, 'ALADINO', 'aladino', '5d1689816f9db_aladino.png', NULL, 'https://www.youtube.com/embed/gfU-wV_Ub00', 'Guy Ritchie', 'Las aventuras del pobre Aladino y la bella princesa Jazmín, regresan en una versión live action del clásico animado de Disney de 1992', '2 Hr. 08 min.', '3', '2019-06-28 12:00:00', 0, 1, 0, 'ica', '2019-06-28 16:41:21', '2019-07-04 16:08:35'),
(38, 'HOMBRES DE NEGRO 3', 'hombres-de-negro-3', '5d1689e66d5cb_ICAhombres-negro.png', NULL, 'https://www.youtube.com/embed/eFxVu3HXwDk', 'F. Gary Gray', 'Los Hombres de Negro siempre han protegido a la Tierra de la escoria del universo. En esta nueva aventura, abordan su mayor amenaza hasta la fecha: un lunar en la organización Hombres de Negro.', '1 Hr. 55 min.', '3', '2019-06-28 12:00:00', 0, 1, 0, 'ica', '2019-06-28 16:43:02', '2019-07-04 16:08:32'),
(39, 'AVENGERS JUEGO FINAL', 'avengers-juego-final', '5d168a510b4e0_ICAtavengers240x300.png', NULL, 'https://www.youtube.com/embed/PyakRSni-c0', 'Joe Russo', 'Gracias al chasquido de Thanos el mundo sufre lo que llama \"la ejecución\", debido a que la mitad de población desapareció en un instante. Eso incluyó a héroes como Spider-Man, Star-Lord, Scarlet Witch, el Soldado del Invierno, Groot y otros. Como vimos en el primer tráiler, los que quedaron deben arreglar lo que Thanos rompió, juntando a los Vengadores que quedaron y a nuevos aliados para ir a la batalla contra el Titan Loco. Eso significa que invocarán a viejos amigos como Hawkeye y nuevos amigos como la Capitana Marvel, así como unir a aquellos que defendieron a la tierra en la batalla de Nueva York. Los héroes que quedan son: Capitán America, Iron Man, Black Widow, Hulk, Hawkeye, Thor, Rocket Raccoon, War Machine, Nebula, Ant-Man y Capitana Marvel, aunque será complicado reunirlos, pues Tony Stark y Nebula están perdidos en Titán.', '3 Hr. 02 min.', '3', '2019-06-28 12:00:00', 0, 0, 0, 'ica', '2019-06-28 16:44:49', '2019-07-04 16:08:26'),
(40, 'ANNABELLE VIENE A CASA', 'annabelle-viene-a-casa', '5d27e9366f075_cartelera11jul-ICA-03.png', NULL, 'https://www.youtube.com/embed/KUnKWjeQA9A', 'Gary Dauberman', 'Decididos a evitar que Annabelle cause más estragos, los demonólogos Ed y Lorraine Warren llevan a la muñeca poseída a la sala de objetos bajo llave que tienen en su casa. La colocan \"a salvo\" en una vitrina sagrada bendecida por un sacerdote. Pero una noche profana de horror aguarda a que Annabelle despierte a los espíritus malignos de la habitación, quienes se fijan en un nuevo objetivo: la hija de diez años de los Warrens, Judy, y sus amigas.', '1 hr. 46 min.', '3', '2019-06-28 12:00:00', 0, 0, 1, 'ica', '2019-06-28 16:51:28', '2019-07-11 20:58:14'),
(41, 'LA VIDA SECRETA  DE TUS MASCOTAS 2', 'la-vida-secreta-de-tus-mascotas-2', '5d1e6b6addb33_cartelera21jul-ICA-03.png', NULL, 'https://www.youtube.com/embed/rslZ-fHiSuI', 'Chris Renaud', 'Max se enfrenta a nuevos e importantes cambios en su vida: su dueña Katie no sólo se ha casado, sino que también ha sido madre por primera vez. En un viaje familiar al campo conoce a un perro granjero llamado Rooster, con el que aprende a dominar sus miedos. Mientras tanto, Gidget trata de recuperar el juguete favorito de Max de un apartamento repleto de gatos. Snowball, por otro lado, se embarca en una peligrosa misión para liberar a un tigre blanco, Hu, de sus captures en un circo de animales.', '1 hr. 26 min.', '3', '2019-06-28 12:00:00', 0, 0, 0, 'ica', '2019-06-28 16:52:59', '2019-07-11 20:58:46'),
(42, 'SPIDERMAN LEJOS DE CASA', 'spiderman-lejos-de-casa', '5d27eadc3152e_cartelera11jul-CX-02.png', NULL, 'https://www.youtube.com/embed/kSq6eHvYDpo', 'Jon Watts', 'Peter Parker decide irse junto a MJ, Ned y el resto de sus amigos a pasar unas vacaciones a Europa. Sin embargo, el plan de Parker por dejar de lado sus superpoderes durante unas semanas se ve truncado cuando Nick Fury contacta con él para solicitarle ayuda para frenar el ataque de unas criaturas elementales que están causando el caos en el continente. En ese momento, Parker, vuelve a ponerse el traje de Spider-Man para cumplir con su labor.', '2 hr. 09 min.', '3', NULL, 0, 1, 1, 'cajamarca', '2019-07-04 12:41:17', '2019-07-11 21:05:16'),
(43, 'SPIDERMAN LEJOS DE CASA', 'spiderman-lejos-de-casa', '5d27e9876d585_cartelera11jul-ICA-02.png', NULL, 'https://www.youtube.com/embed/kSq6eHvYDpo', 'Jon Watts', 'Peter Parker decide irse junto a MJ, Ned y el resto de sus amigos a pasar unas vacaciones a Europa. Sin embargo, el plan de Parker por dejar de lado sus superpoderes durante unas semanas se ve truncado cuando Nick Fury contacta con él para solicitarle ayuda para frenar el ataque de unas criaturas elementales que están causando el caos en el continente. En ese momento, Parker vuelve a ponerse el traje de Spider-Man para cumplir con su labor.', '2 hr. 09 min.', '3', NULL, 0, 0, 1, 'ica', '2019-07-04 16:14:44', '2019-07-11 20:59:35'),
(44, 'LA VIUDA', 'la-viuda', '5d27ea1c06331_cartelera11jul-ICA-01.png', NULL, 'https://www.youtube.com/embed/CLbHoh20opw', 'Neil Jordan', 'Frances es una dulce e ingenua joven que, tras la muerte de su madre, se muda a Manhattan. Cuando encuentra en el metro un bolso extraviado, decide entregárselo a su legítima dueña, Greta, una pianista viuda con una desesperada necesidad de compañía. Rápidamente se convierten en amigas, pero su amistad cambia cuando se descubren las siniestras intenciones de Greta.', '1 hr. 38 min.', '3', NULL, 1, 1, 1, 'ica', '2019-07-11 21:02:04', '2019-07-11 21:02:04'),
(45, 'LA VIUDA', 'la-viuda', '5d27eaa79dafa_cartelera11jul-CX-01.png', NULL, 'https://www.youtube.com/embed/CLbHoh20opw', 'Neil Jordan', 'Frances es una dulce e ingenua joven que, tras la muerte de su madre, se muda a Manhattan. Cuando encuentra en el metro un bolso extraviado, decide entregárselo a su legítima dueña, Greta, una pianista viuda con una desesperada necesidad de compañía. Rápidamente se convierten en amigas, pero su amistad cambia cuando se descubren las siniestras intenciones de Greta.', '1 hr. 38 min.', '3', NULL, 1, 1, 1, 'cajamarca', '2019-07-11 21:04:23', '2019-07-11 21:04:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_tiendas`
--

CREATE TABLE `categoria_tiendas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categoria_tiendas`
--

INSERT INTO `categoria_tiendas` (`id`, `nombre`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Accesorios', 1, '2019-05-24 05:00:00', '2019-05-24 05:00:00'),
(2, 'Automóviles', 1, '2019-05-24 05:00:00', '2019-05-24 05:00:00'),
(3, 'Cafeterías y heladerías', 1, '2019-05-24 05:00:00', '2019-05-24 05:00:00'),
(4, 'Calzado Femenino', 1, '2019-05-24 05:00:00', '2019-05-24 05:00:00'),
(5, 'Calzado Infantil', 1, '2019-05-24 05:00:00', '2019-05-24 05:00:00'),
(6, 'Calzado Masculino', 1, '2019-05-24 05:00:00', '2019-05-24 05:00:00'),
(7, 'Decoración y hogar', 1, '2019-05-24 05:00:00', '2019-05-24 05:00:00'),
(8, 'Deporte y outdoors', 1, '2019-05-24 05:00:00', '2019-05-24 05:00:00'),
(9, 'Electrónica y música', 1, '2019-05-24 05:00:00', '2019-05-24 05:00:00'),
(10, 'Entretenimiento', 1, '2019-05-24 05:00:00', '2019-05-24 05:00:00'),
(11, 'Farmacia', 1, '2019-05-24 05:00:00', '2019-05-24 05:00:00'),
(12, 'Gimnasio', 1, '2019-05-24 05:00:00', '2019-05-24 05:00:00'),
(13, 'Inmobiliaria', 1, '2019-05-24 05:00:00', '2019-05-24 05:00:00'),
(14, 'Joyería', 1, '2019-05-24 05:00:00', '2019-05-24 05:00:00'),
(15, 'Juguetería', 1, '2019-05-24 05:00:00', '2019-05-24 05:00:00'),
(16, 'Librería', 1, '2019-05-24 05:00:00', '2019-05-24 05:00:00'),
(17, 'Maletería', 1, '2019-05-24 05:00:00', '2019-05-24 05:00:00'),
(18, 'Óptica y lentes', 1, '2019-05-24 05:00:00', '2019-05-24 05:00:00'),
(19, 'Patio de comidas', 1, '2019-05-24 05:00:00', '2019-05-24 05:00:00'),
(20, 'Relojería', 1, '2019-05-24 05:00:00', '2019-05-24 05:00:00'),
(21, 'Restaurantes', 1, '2019-05-24 05:00:00', '2019-05-24 05:00:00'),
(22, 'Salud y belleza', 1, '2019-05-24 05:00:00', '2019-05-24 05:00:00'),
(23, 'Servicios', 1, '2019-05-24 05:00:00', '2019-05-24 05:00:00'),
(24, 'Supermercados', 1, '2019-06-04 05:00:00', '2019-06-04 05:00:00'),
(25, 'Tiendas por Departamentos', 1, '2019-06-04 05:00:00', '2019-06-04 05:00:00'),
(26, 'Vestuario Femenino', 1, '2019-06-04 05:00:00', '2019-06-04 05:00:00'),
(27, 'Vestuario Infantil', 1, '2019-06-04 05:00:00', '2019-06-04 05:00:00'),
(28, 'Vestuario Masculino', 1, '2019-06-04 05:00:00', '2019-06-04 05:00:00'),
(29, 'Otros', 1, '2019-06-04 05:00:00', '2019-06-04 05:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `ciudad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat_gr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_gr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat_dec` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_dec` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `departamento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cities`
--

INSERT INTO `cities` (`id`, `ciudad`, `lat_gr`, `long_gr`, `lat_dec`, `long_dec`, `departamento`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Yanac', '13°13′00″S', '75°47′00″W', '-13.2166667', '-75.7833333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-01 10:00:00'),
(2, 'Yanahuarmi', '14°37′00″S', '74°55′00″W', '-14.6166667', '-74.9166667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(3, 'Yanapampa', '13°21′00″S', '75°42′00″W', '-13.35', '-75.7', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(4, 'Yaurilla', '14°04′53″S', '75°40′52″W', '-14.0813889', '-75.6811111', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(5, 'Yauritambo', '13°22′00″S', '75°57′00″W', '-13.3666667', '-75.95', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(6, 'Yectayo', '13°55′00″S', '75°55′00″W', '-13.9166667', '-75.9166667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(7, 'Yerba Buena', '13°34′00″S', '75°42′00″W', '-13.5666667', '-75.7', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(8, 'Yerba Santa', '13°35′00″S', '75°42′00″W', '-13.5833333', '-75.7', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(9, 'Yuchcce', '14°12′53″S', '75°19′05″W', '-14.2147222', '-75.3180556', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(10, 'Yunama', '14°32′18″S', '75°12′42″W', '-14.5383333', '-75.2116667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(11, 'Yupanquis', '14°06′32″S', '75°41′13″W', '-14.1088889', '-75.6869444', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(12, 'Yuracrumi', '12°59′17″S', '75°36′15″W', '-12.9880556', '-75.6041667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(13, 'Zamaca', '14°39′00″S', '75°38′00″W', '-14.65', '-75.6333333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(14, 'Zanushi', '13°53′00″S', '76°05′00″W', '-13.8833333', '-76.0833333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(15, 'Zarate', '13°41′00″S', '76°05′00″W', '-13.6833333', '-76.0833333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(16, 'Tinco', '13°15′00″S', '75°45′00″W', '-13.25', '-75.75', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(17, 'Tingo', '13°59′32″S', '75°21′16″W', '-13.9922222', '-75.3544444', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(18, 'Tingue', '14°13′09″S', '75°32′43″W', '-14.2191667', '-75.5452778', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(19, 'Tinguiayog', '14°23′54″S', '75°12′02″W', '-14.3983333', '-75.2005556', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(20, 'Tiracse', '13°51′00″S', '75°33′00″W', '-13.85', '-75.55', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(21, 'Toctuca', '14°07′08″S', '75°10′56″W', '-14.1188889', '-75.1822222', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(22, 'Toma Luz', '14°32′42″S', '75°37′14″W', '-14.545', '-75.6205556', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(23, 'Tororume', '13°16′00″S', '75°59′00″W', '-13.2666667', '-75.9833333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(24, 'Tororume', '13°17′00″S', '75°55′00″W', '-13.2833333', '-75.9166667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(25, 'Toscania', '13°40′00″S', '76°03′00″W', '-13.6666667', '-76.05', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(26, 'Totoral', '14°58′00″S', '74°50′00″W', '-14.9666667', '-74.8333333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(27, 'Totorayoc', '14°38′00″S', '74°56′00″W', '-14.6333333', '-74.9333333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(28, 'Tranca', '13°02′00″S', '75°43′00″W', '-13.0333333', '-75.7166667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(29, 'Trapiche', '13°55′00″S', '75°40′00″W', '-13.9166667', '-75.6666667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(30, 'Tres Esquinas', '14°01′00″S', '75°45′00″W', '-14.0166667', '-75.75', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(31, 'Trigal', '14°48′00″S', '74°53′00″W', '-14.8', '-74.8833333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(32, 'Trino', '13°28′28″S', '76°08′17″W', '-13.4744444', '-76.1380556', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(33, 'Tronouito', '14°13′18″S', '75°43′04″W', '-14.2216667', '-75.7177778', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(34, 'Tucuhuasi', '14°21′12″S', '75°08′36″W', '-14.3533333', '-75.1433333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(35, 'Tulin', '14°38′47″S', '75°04′13″W', '-14.6463889', '-75.0702778', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(36, 'Tunal', '14°38′00″S', '74°58′00″W', '-14.6333333', '-74.9666667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(37, 'Tunasnillo', '13°18′00″S', '75°56′00″W', '-13.3', '-75.9333333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(38, 'Tunasnioj', '13°05′00″S', '75°52′00″W', '-13.0833333', '-75.8666667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(39, 'Tupac Amaru', '13°24′40″S', '76°07′00″W', '-13.4111111', '-76.1166667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(40, 'Uchpa', '13°11′00″S', '75°48′00″W', '-13.1833333', '-75.8', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(41, 'Uchuachi', '14°06′14″S', '75°10′40″W', '-14.1038889', '-75.1777778', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(42, 'Ucuchimpana', '14°15′42″S', '75°06′46″W', '-14.2616667', '-75.1127778', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(43, 'Urbanizacion San Isidro', '13°23′46″S', '76°08′27″W', '-13.3961111', '-76.1408333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(44, 'Urbanizacion San Joaquin', '14°03′45″S', '75°44′42″W', '-14.0625', '-75.745', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(45, 'Uribe', '14°00′52″S', '75°44′31″W', '-14.0144444', '-75.7419444', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(46, 'Urrutia', '13°41′00″S', '76°04′00″W', '-13.6833333', '-76.0666667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(47, 'Usaca', '14°48′34″S', '75°12′32″W', '-14.8094444', '-75.2088889', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(48, 'Usaca', '14°50′46″S', '75°11′29″W', '-14.8461111', '-75.1913889', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(49, 'Veladero Chico', '13°37′00″S', '75°43′00″W', '-13.6166667', '-75.7166667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(50, 'Venancio', '14°02′01″S', '75°43′34″W', '-14.0336111', '-75.7261111', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(51, 'Venturosa', '14°50′00″S', '75°04′00″W', '-14.8333333', '-75.0666667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(52, 'Venturosa', '13°42′00″S', '76°12′00″W', '-13.7', '-76.2', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(53, 'Verdun', '13°28′36″S', '76°08′19″W', '-13.4766667', '-76.1386111', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(54, 'Villa Alegre', '13°21′55″S', '76°09′35″W', '-13.3652778', '-76.1597222', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(55, 'Villa del Mar', '13°22′00″S', '76°12′00″W', '-13.3666667', '-76.2', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(56, 'Villa Esperanza', '13°19′57″S', '76°10′22″W', '-13.3325', '-76.1727778', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(57, 'Villa Hortencia', '13°23′37″S', '76°10′17″W', '-13.3936111', '-76.1713889', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(58, 'Villa Sol', '13°21′32″S', '76°08′18″W', '-13.3588889', '-76.1383333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(59, 'Villa Tupac Amaru', '13°42′00″S', '76°09′00″W', '-13.7', '-76.15', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(60, 'Villacuri', '13°55′00″S', '75°58′00″W', '-13.9166667', '-75.9666667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(61, 'Vina Abajo', '14°06′00″S', '75°45′00″W', '-14.1', '-75.75', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(62, 'Vina Olcese', '13°45′00″S', '76°09′00″W', '-13.75', '-76.15', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(63, 'Vina Vieja', '13°28′38″S', '76°01′38″W', '-13.4772222', '-76.0272222', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(64, 'Vista Alegre', '13°06′00″S', '75°44′00″W', '-13.1', '-75.7333333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(65, 'Vista Alegre', '14°06′14″S', '75°17′10″W', '-14.1038889', '-75.2861111', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(66, 'Santa Teresa', '13°29′17″S', '76°09′14″W', '-13.4880556', '-76.1538889', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(67, 'Santa Vicenta', '14°11′38″S', '75°40′02″W', '-14.1938889', '-75.6672222', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(68, 'Santiago', '14°12′14″S', '75°43′44″W', '-14.2038889', '-75.7288889', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(69, 'Santiago', '14°11′19″S', '75°42′51″W', '-14.1886111', '-75.7141667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(70, 'Santiaguillo', '14°13′01″S', '75°43′32″W', '-14.2169444', '-75.7255556', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(71, 'Santo Domingo', '13°51′30″S', '76°15′00″W', '-13.8583333', '-76.25', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(72, 'Santuario', '13°17′00″S', '75°44′00″W', '-13.2833333', '-75.7333333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(73, 'Saraja', '14°03′00″S', '75°45′00″W', '-14.05', '-75.75', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(74, 'Saramarca', '14°29′27″S', '75°06′00″W', '-14.4908333', '-75.1', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(75, 'Sauce', '13°58′15″S', '75°21′37″W', '-13.9708333', '-75.3602778', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(76, 'Sauce Chico', '14°07′40″S', '75°24′25″W', '-14.1277778', '-75.4069444', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(77, 'Sauce Grande', '14°07′17″S', '75°23′12″W', '-14.1213889', '-75.3866667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(78, 'Sausal', '14°48′00″S', '74°51′00″W', '-14.8', '-74.85', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(79, 'Sayhua', '13°06′00″S', '75°52′00″W', '-13.1', '-75.8666667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(80, 'Sayhua', '13°23′00″S', '75°46′00″W', '-13.3833333', '-75.7666667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(81, 'Shicshi', '13°05′00″S', '75°55′00″W', '-13.0833333', '-75.9166667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(82, 'Sicahuachi', '14°07′37″S', '75°07′48″W', '-14.1269444', '-75.13', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(83, 'Sincachi', '14°35′00″S', '74°52′00″W', '-14.5833333', '-74.8666667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(84, 'Sisiccaya', '13°12′00″S', '75°45′00″W', '-13.2', '-75.75', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(85, 'Socos', '14°07′20″S', '75°08′06″W', '-14.1222222', '-75.135', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(86, 'Socos', '14°46′00″S', '74°56′00″W', '-14.7666667', '-74.9333333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(87, 'Sotelo', '14°21′04″S', '75°11′33″W', '-14.3511111', '-75.1925', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(88, 'Subtanjalla', '14°01′08″S', '75°45′29″W', '-14.0188889', '-75.7580556', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(89, 'Sumba', '14°07′06″S', '75°11′09″W', '-14.1183333', '-75.1858333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(90, 'Sumbilla', '14°07′34″S', '75°11′05″W', '-14.1261111', '-75.1847222', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(91, 'Sunampe', '13°25′37″S', '76°09′49″W', '-13.4269444', '-76.1636111', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(92, 'Sunampe', '14°06′04″S', '75°42′17″W', '-14.1011111', '-75.7047222', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(93, 'Surcuna', '14°37′00″S', '74°55′00″W', '-14.6166667', '-74.9166667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(94, 'Tacama', '14°00′00″S', '75°43′00″W', '-14', '-75.7166667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(95, 'Tacaraca', '14°07′49″S', '75°43′17″W', '-14.1302778', '-75.7213889', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(96, 'Tajahuana', '14°09′00″S', '75°43′00″W', '-14.15', '-75.7166667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(97, 'Tamarindo', '14°12′31″S', '75°43′07″W', '-14.2086111', '-75.7186111', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(98, 'Tambilla', '13°04′00″S', '75°59′00″W', '-13.0666667', '-75.9833333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(99, 'Tambo', '14°25′25″S', '75°07′19″W', '-14.4236111', '-75.1219444', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(100, 'Tambo', '13°29′26″S', '76°11′14″W', '-13.4905556', '-76.1872222', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(101, 'Tambo Cancha', '14°02′37″S', '75°20′15″W', '-14.0436111', '-75.3375', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(102, 'Tambo de Mora', '13°27′31″S', '76°10′50″W', '-13.4586111', '-76.1805556', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(103, 'Tambulio', '13°26′00″S', '76°04′00″W', '-13.4333333', '-76.0666667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(104, 'Tambulla', '13°11′00″S', '75°44′00″W', '-13.1833333', '-75.7333333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(105, 'Tantas', '13°10′00″S', '75°40′00″W', '-13.1666667', '-75.6666667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(106, 'Taquia Chico', '13°10′00″S', '75°49′00″W', '-13.1666667', '-75.8166667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(107, 'Taraya', '13°18′00″S', '75°55′00″W', '-13.3', '-75.9166667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(108, 'Tarayoc Grande', '14°09′45″S', '75°21′40″W', '-14.1625', '-75.3611111', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(109, 'Taruga', '14°55′00″S', '74°55′00″W', '-14.9166667', '-74.9166667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(110, 'Tate de La Capilla', '14°09′18″S', '75°42′27″W', '-14.155', '-75.7075', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(111, 'Tayamana', '14°05′06″S', '75°42′03″W', '-14.085', '-75.7008333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(112, 'Tibillo', '14°05′35″S', '75°10′19″W', '-14.0930556', '-75.1719444', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(113, 'Tierra Blanca', '14°50′00″S', '74°53′00″W', '-14.8333333', '-74.8833333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(114, 'Tigre', '13°10′27″S', '76°07′08″W', '-13.1741667', '-76.1188889', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(115, 'Tigre', '13°25′19″S', '76°07′02″W', '-13.4219444', '-76.1172222', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(116, 'San Ramon', '14°15′53″S', '75°39′05″W', '-14.2647222', '-75.6513889', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(117, 'San Regis', '13°31′00″S', '76°06′00″W', '-13.5166667', '-76.1', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(118, 'San Vicente', '13°20′30″S', '76°10′27″W', '-13.3416667', '-76.1741667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(119, 'San Vicente', '14°57′00″S', '74°58′00″W', '-14.95', '-74.9666667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(120, 'Sanguinetti', '13°27′00″S', '76°10′00″W', '-13.45', '-76.1666667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(121, 'Sano', '13°10′00″S', '75°54′00″W', '-13.1666667', '-75.9', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(122, 'Santa Ana', '14°59′26″S', '75°27′14″W', '-14.9905556', '-75.4538889', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(123, 'Santa Barbara', '14°00′48″S', '75°42′52″W', '-14.0133333', '-75.7144444', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(124, 'Santa Beatriz', '13°42′00″S', '76°00′00″W', '-13.7', '-76', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(125, 'Santa Catalina', '13°26′16″S', '76°10′08″W', '-13.4377778', '-76.1688889', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(126, 'Santa Catalina', '14°45′00″S', '74°48′00″W', '-14.75', '-74.8', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(127, 'Santa Clara', '14°44′30″S', '75°14′28″W', '-14.7416667', '-75.2411111', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(128, 'Santa Cruz', '14°31′00″S', '75°15′00″W', '-14.5166667', '-75.25', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(129, 'Santa Cruz', '13°50′00″S', '76°07′00″W', '-13.8333333', '-76.1166667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(130, 'Santa Cruz', '14°29′01″S', '75°14′42″W', '-14.4836111', '-75.245', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(131, 'Santa Dominguita', '14°16′21″S', '75°40′10″W', '-14.2725', '-75.6694444', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(132, 'Santa Doralisa', '13°24′09″S', '76°09′39″W', '-13.4025', '-76.1608333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(133, 'Santa Elena', '14°12′06″S', '75°26′01″W', '-14.2016667', '-75.4336111', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(134, 'Santa Elena', '14°39′03″S', '75°13′30″W', '-14.6508333', '-75.225', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(135, 'Santa Emilia', '13°26′54″S', '76°05′49″W', '-13.4483333', '-76.0969444', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(136, 'Santa Enriqueta', '13°27′23″S', '76°06′34″W', '-13.4563889', '-76.1094444', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(137, 'Santa Fe', '13°25′46″S', '76°10′49″W', '-13.4294444', '-76.1802778', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(138, 'Santa Filomena', '14°10′11″S', '75°42′41″W', '-14.1697222', '-75.7113889', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(139, 'Santa Filomena', '13°21′00″S', '76°09′00″W', '-13.35', '-76.15', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(140, 'Santa Gertrudis', '14°05′00″S', '75°42′00″W', '-14.0833333', '-75.7', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(141, 'Santa Ines', '13°27′41″S', '76°06′50″W', '-13.4613889', '-76.1138889', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(142, 'Santa Isabel', '13°43′00″S', '75°59′00″W', '-13.7166667', '-75.9833333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(143, 'Santa Isabel', '14°04′00″S', '75°42′00″W', '-14.0666667', '-75.7', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(144, 'Santa Julia', '14°12′57″S', '75°39′58″W', '-14.2158333', '-75.6661111', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(145, 'Santa Lucia', '14°14′01″S', '75°42′50″W', '-14.2336111', '-75.7138889', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(146, 'Santa Lucia', '14°58′30″S', '75°00′32″W', '-14.975', '-75.0088889', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(147, 'Santa Luisa', '13°42′00″S', '75°59′00″W', '-13.7', '-75.9833333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(148, 'Santa Luisa', '14°14′07″S', '75°41′04″W', '-14.2352778', '-75.6844444', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(149, 'Santa Luisa', '14°10′00″S', '75°35′12″W', '-14.1666667', '-75.5866667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(150, 'Santa Margarita', '14°12′00″S', '75°43′00″W', '-14.2', '-75.7166667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(151, 'Santa Margarita', '13°29′32″S', '76°04′30″W', '-13.4922222', '-76.075', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(152, 'Santa Maria', '13°29′50″S', '76°07′07″W', '-13.4972222', '-76.1186111', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(153, 'Santa Maria', '14°14′39″S', '75°41′34″W', '-14.2441667', '-75.6927778', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(154, 'Santa Matilde', '14°16′07″S', '75°39′45″W', '-14.2686111', '-75.6625', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(155, 'Santa Petronila', '14°16′45″S', '75°40′26″W', '-14.2791667', '-75.6738889', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(156, 'Santa Rosa', '13°29′44″S', '76°09′12″W', '-13.4955556', '-76.1533333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(157, 'Santa Rosa', '13°59′00″S', '75°42′00″W', '-13.9833333', '-75.7', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(158, 'Santa Rosa', '13°36′00″S', '75°37′00″W', '-13.6', '-75.6166667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(159, 'Santa Rosa', '14°02′00″S', '75°43′00″W', '-14.0333333', '-75.7166667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(160, 'Santa Rosa', '14°29′00″S', '75°12′00″W', '-14.4833333', '-75.2', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(161, 'Santa Rosa', '14°19′00″S', '76°09′00″W', '-14.3166667', '-76.15', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(162, 'Santa Rosa', '13°24′17″S', '76°07′17″W', '-13.4047222', '-76.1213889', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(163, 'Santa Rosa', '14°17′37″S', '75°39′55″W', '-14.2936111', '-75.6652778', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(164, 'Santa Rosa de Cachiche', '14°05′42″S', '75°44′14″W', '-14.095', '-75.7372222', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(165, 'Santa Rosita', '14°09′48″S', '75°41′46″W', '-14.1633333', '-75.6961111', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(166, 'San Francisco', '13°28′57″S', '76°05′08″W', '-13.4825', '-76.0855556', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(167, 'San Francisco', '14°30′20″S', '75°15′15″W', '-14.5055556', '-75.2541667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(168, 'San Francisco', '13°44′00″S', '76°11′00″W', '-13.7333333', '-76.1833333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(169, 'San Hilarion', '14°18′05″S', '75°38′14″W', '-14.3013889', '-75.6372222', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(170, 'San Idefonso', '14°02′58″S', '75°42′32″W', '-14.0494444', '-75.7088889', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(171, 'San Ignacio', '13°44′00″S', '75°55′00″W', '-13.7333333', '-75.9166667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(172, 'San Isidro', '14°04′32″S', '75°13′37″W', '-14.0755556', '-75.2269444', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(173, 'San Isidro de Curis', '14°06′38″S', '75°17′19″W', '-14.1105556', '-75.2886111', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(174, 'San Jacinto', '13°40′00″S', '76°05′00″W', '-13.6666667', '-76.0833333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(175, 'San Jacinto', '14°08′54″S', '75°44′33″W', '-14.1483333', '-75.7425', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(176, 'San Jacinto', '14°30′06″S', '75°11′38″W', '-14.5016667', '-75.1938889', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(177, 'San Jeronimo', '13°59′00″S', '75°42′00″W', '-13.9833333', '-75.7', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(178, 'San Jorge', '14°06′29″S', '75°44′34″W', '-14.1080556', '-75.7427778', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(179, 'San Jose', '13°20′50″S', '76°10′39″W', '-13.3472222', '-76.1775', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(180, 'San Jose', '13°41′00″S', '76°04′00″W', '-13.6833333', '-76.0666667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(181, 'San Jose', '13°32′00″S', '76°04′00″W', '-13.5333333', '-76.0666667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(182, 'San Jose', '14°05′00″S', '75°45′00″W', '-14.0833333', '-75.75', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(183, 'San Jose de Curis', '14°02′51″S', '75°16′22″W', '-14.0475', '-75.2727778', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(184, 'San Jose de Los Molinos', '13°57′00″S', '75°41′00″W', '-13.95', '-75.6833333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(185, 'San Juan', '13°25′00″S', '75°57′00″W', '-13.4166667', '-75.95', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(186, 'San Juan', '13°41′00″S', '76°02′00″W', '-13.6833333', '-76.0333333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(187, 'San Juan', '15°21′55″S', '75°09′44″W', '-15.3652778', '-75.1622222', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(188, 'San Juan Bautista', '14°00′39″S', '75°44′09″W', '-14.0108333', '-75.7358333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(189, 'San Juan de Luyo', '13°03′00″S', '75°55′00″W', '-13.05', '-75.9166667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(190, 'San Juan de Yanac', '13°13′00″S', '75°47′00″W', '-13.2166667', '-75.7833333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(191, 'San Julio', '13°27′50″S', '76°01′56″W', '-13.4638889', '-76.0322222', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(192, 'San Luis', '13°25′40″S', '76°07′25″W', '-13.4277778', '-76.1236111', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(193, 'San Luis', '13°26′29″S', '76°04′52″W', '-13.4413889', '-76.0811111', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(194, 'San Luis Pajonal', '14°54′00″S', '74°59′00″W', '-14.9', '-74.9833333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(195, 'San Marcos', '14°47′00″S', '74°50′00″W', '-14.7833333', '-74.8333333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(196, 'San Martin', '13°43′00″S', '76°10′00″W', '-13.7166667', '-76.1666667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(197, 'San Martin', '13°50′00″S', '76°18′00″W', '-13.8333333', '-76.3', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(198, 'San Martin', '13°26′00″S', '76°08′39″W', '-13.4333333', '-76.1441667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(199, 'San Mateo', '13°25′07″S', '76°07′17″W', '-13.4186111', '-76.1213889', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(200, 'San Matias', '13°34′00″S', '76°09′00″W', '-13.5666667', '-76.15', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(201, 'San Matias', '14°13′40″S', '75°42′05″W', '-14.2277778', '-75.7013889', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(202, 'San Matias', '14°13′49″S', '75°42′08″W', '-14.2302778', '-75.7022222', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(203, 'San Miguel', '14°01′51″S', '75°43′22″W', '-14.0308333', '-75.7227778', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(204, 'San Miguel', '14°26′09″S', '75°11′48″W', '-14.4358333', '-75.1966667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(205, 'San Miguel', '13°42′00″S', '76°09′00″W', '-13.7', '-76.15', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(206, 'San Nicolas', '15°15′39″S', '75°13′47″W', '-15.2608333', '-75.2297222', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(207, 'San Pablito', '13°27′29″S', '76°08′37″W', '-13.4580556', '-76.1436111', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(208, 'San Pablo', '13°19′58″S', '76°10′39″W', '-13.3327778', '-76.1775', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(209, 'San Pablo', '14°05′22″S', '75°42′09″W', '-14.0894444', '-75.7025', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(210, 'San Pablo', '13°26′56″S', '76°09′44″W', '-13.4488889', '-76.1622222', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(211, 'San Pablo', '13°35′00″S', '76°11′00″W', '-13.5833333', '-76.1833333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(212, 'San Pedro', '13°33′00″S', '76°10′00″W', '-13.55', '-76.1666667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(213, 'San Pedro', '14°07′58″S', '75°44′20″W', '-14.1327778', '-75.7388889', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(214, 'San Pedro', '13°23′56″S', '76°09′33″W', '-13.3988889', '-76.1591667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(215, 'San Pedro de Pilpa', '13°25′02″S', '76°09′59″W', '-13.4172222', '-76.1663889', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(216, 'Quilque', '14°05′49″S', '75°29′52″W', '-14.0969444', '-75.4977778', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(217, 'Quimera', '13°24′53″S', '76°11′06″W', '-13.4147222', '-76.185', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(218, 'Quishca', '13°05′36″S', '76°00′48″W', '-13.0933333', '-76.0133333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(219, 'Quishuar', '13°08′00″S', '75°56′00″W', '-13.1333333', '-75.9333333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(220, 'Quitaso', '13°38′00″S', '75°43′00″W', '-13.6333333', '-75.7166667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(221, 'Ralta Rumi', '13°03′00″S', '75°44′00″W', '-13.05', '-75.7333333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(222, 'Ramadilla', '13°07′11″S', '76°03′44″W', '-13.1197222', '-76.0622222', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(223, 'Ramadillas', '13°51′00″S', '75°34′00″W', '-13.85', '-75.5666667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(224, 'Rancheria', '13°55′00″S', '75°40′00″W', '-13.9166667', '-75.6666667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(225, 'Rancheria', '13°51′00″S', '75°36′00″W', '-13.85', '-75.6', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(226, 'Rancho Cesar', '13°24′00″S', '76°10′00″W', '-13.4', '-76.1666667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(227, 'Rancho Chico', '13°45′00″S', '75°56′00″W', '-13.75', '-75.9333333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(228, 'Rayaniyoc', '13°12′00″S', '75°49′00″W', '-13.2', '-75.8166667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(229, 'Retiro', '13°27′13″S', '76°09′12″W', '-13.4536111', '-76.1533333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(230, 'Reventasga', '13°05′00″S', '75°53′00″W', '-13.0833333', '-75.8833333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(231, 'Rincon de Cachiche', '14°05′04″S', '75°44′43″W', '-14.0844444', '-75.7452778', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(232, 'Rinconada Huatiana', '13°14′00″S', '75°57′00″W', '-13.2333333', '-75.95', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(233, 'Rio Grande', '14°31′11″S', '75°12′05″W', '-14.5197222', '-75.2013889', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(234, 'Ronceros Alto', '13°28′55″S', '76°04′55″W', '-13.4819444', '-76.0819444', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(235, 'Ronceros Bajo', '13°29′13″S', '76°05′38″W', '-13.4869444', '-76.0938889', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(236, 'Rosario de Yauca', '14°08′21″S', '75°34′32″W', '-14.1391667', '-75.5755556', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(237, 'Sacramento', '14°31′39″S', '75°11′38″W', '-14.5275', '-75.1938889', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(238, 'Sacta', '14°15′35″S', '75°41′59″W', '-14.2597222', '-75.6997222', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(239, 'Salas', '13°28′50″S', '76°10′31″W', '-13.4805556', '-76.1752778', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(240, 'Salinas de Otuma', '14°01′00″S', '76°14′00″W', '-14.0166667', '-76.2333333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(241, 'Salineras Las Piletas', '14°36′00″S', '75°34′00″W', '-14.6', '-75.5666667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(242, 'San Agustin', '13°26′37″S', '76°09′32″W', '-13.4436111', '-76.1588889', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(243, 'San Agustin', '14°08′00″S', '75°44′00″W', '-14.1333333', '-75.7333333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(244, 'San Agustin', '14°55′00″S', '74°55′00″W', '-14.9166667', '-74.9166667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(245, 'San Andres', '13°44′00″S', '76°14′00″W', '-13.7333333', '-76.2333333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(246, 'San Andres de Quilcanto', '14°04′48″S', '75°11′12″W', '-14.08', '-75.1866667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(247, 'San Antonio', '13°28′47″S', '76°10′10″W', '-13.4797222', '-76.1694444', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(248, 'San Antonio', '14°18′14″S', '75°40′11″W', '-14.3038889', '-75.6697222', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(249, 'San Antonio', '14°01′59″S', '75°43′59″W', '-14.0330556', '-75.7330556', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(250, 'San Antonio', '14°23′38″S', '75°35′23″W', '-14.3938889', '-75.5897222', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(251, 'San Antonio', '14°20′35″S', '75°08′27″W', '-14.3430556', '-75.1408333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(252, 'San Antonio', '13°23′23″S', '76°09′07″W', '-13.3897222', '-76.1519444', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(253, 'San Aurelio', '13°32′00″S', '76°08′00″W', '-13.5333333', '-76.1333333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(254, 'San Bernabe', '13°51′00″S', '76°09′00″W', '-13.85', '-76.15', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(255, 'San Carlos', '14°55′00″S', '74°54′00″W', '-14.9166667', '-74.9', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(256, 'San Carlos', '14°17′15″S', '75°40′54″W', '-14.2875', '-75.6816667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(257, 'San Cayetano', '14°09′35″S', '75°43′07″W', '-14.1597222', '-75.7186111', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(258, 'San Clemente', '13°40′00″S', '76°09′00″W', '-13.6666667', '-76.15', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(259, 'San Espedito', '14°14′11″S', '75°42′46″W', '-14.2363889', '-75.7127778', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(260, 'San Felipe', '14°22′56″S', '75°40′49″W', '-14.3822222', '-75.6802778', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(261, 'San Felipe', '14°13′01″S', '75°43′06″W', '-14.2169444', '-75.7183333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(262, 'San Fernandito', '13°27′30″S', '76°07′37″W', '-13.4583333', '-76.1269444', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(263, 'San Fernando', '13°28′45″S', '76°06′21″W', '-13.4791667', '-76.1058333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(264, 'San Fernando', '13°30′00″S', '76°09′00″W', '-13.5', '-76.15', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(265, 'San Fernando', '14°15′00″S', '75°43′00″W', '-14.25', '-75.7166667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(266, 'Patahuasi', '14°04′21″S', '75°12′33″W', '-14.0725', '-75.2091667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(267, 'Pati', '13°17′00″S', '75°55′00″W', '-13.2833333', '-75.9166667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(268, 'Pauca Rastro', '14°29′46″S', '75°11′38″W', '-14.4961111', '-75.1938889', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(269, 'Paucarastro', '14°31′00″S', '75°12′00″W', '-14.5166667', '-75.2', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(270, 'Pauna', '13°16′12″S', '76°11′01″W', '-13.27', '-76.1836111', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(271, 'Paunilla', '13°17′51″S', '76°12′10″W', '-13.2975', '-76.2027778', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(272, 'Pedregal', '13°27′04″S', '76°07′49″W', '-13.4511111', '-76.1302778', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(273, 'Pernil', '14°29′35″S', '75°12′35″W', '-14.4930556', '-75.2097222', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(274, 'Peruru', '13°03′00″S', '75°41′00″W', '-13.05', '-75.6833333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(275, 'Piedra Pintada', '14°16′09″S', '75°12′40″W', '-14.2691667', '-75.2111111', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(276, 'Piedra Rajada', '13°20′00″S', '75°54′00″W', '-13.3333333', '-75.9', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(277, 'Pinilla', '14°21′58″S', '75°39′29″W', '-14.3661111', '-75.6580556', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(278, 'Pinto', '14°24′33″S', '75°10′40″W', '-14.4091667', '-75.1777778', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(279, 'Pirurpata', '13°03′00″S', '75°55′00″W', '-13.05', '-75.9166667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(280, 'Pisco', '13°42′00″S', '76°13′00″W', '-13.7', '-76.2166667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(281, 'Platanal', '14°20′52″S', '75°08′38″W', '-14.3477778', '-75.1438889', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(282, 'Poligono', '14°03′08″S', '75°44′54″W', '-14.0522222', '-75.7483333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(283, 'Pongo', '14°48′00″S', '74°51′00″W', '-14.8', '-74.85', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(284, 'Pongo', '14°07′04″S', '75°40′34″W', '-14.1177778', '-75.6761111', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(285, 'Pongo Chico', '14°07′13″S', '75°41′38″W', '-14.1202778', '-75.6938889', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(286, 'Pongo Grande', '14°07′32″S', '75°41′28″W', '-14.1255556', '-75.6911111', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(287, 'Portachuelo', '14°57′00″S', '74°49′00″W', '-14.95', '-74.8166667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(288, 'Portachuelo', '14°29′00″S', '75°16′00″W', '-14.4833333', '-75.2666667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(289, 'Portachuelo', '13°27′21″S', '76°03′43″W', '-13.4558333', '-76.0619444', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(290, 'Pozo Santo', '13°54′00″S', '76°05′00″W', '-13.9', '-76.0833333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(291, 'Pozuelo Sur', '13°34′00″S', '76°09′00″W', '-13.5666667', '-76.15', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(292, 'Pucarumi', '13°19′00″S', '75°39′00″W', '-13.3166667', '-75.65', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(293, 'Puculay', '13°21′00″S', '75°40′00″W', '-13.35', '-75.6666667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(294, 'Pueblo Nuevo', '14°07′41″S', '75°42′24″W', '-14.1280556', '-75.7066667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(295, 'Pueblo Nuevo', '14°34′59″S', '75°13′03″W', '-14.5830556', '-75.2175', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(296, 'Pueblo Nuevo', '14°28′41″S', '75°15′12″W', '-14.4780556', '-75.2533333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(297, 'Pueblo Nuevo', '14°29′00″S', '75°08′25″W', '-14.4833333', '-75.1402778', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(298, 'Pueblo Nuevo', '13°23′53″S', '76°07′59″W', '-13.3980556', '-76.1330556', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(299, 'Pueblo Viejo', '14°50′29″S', '75°00′54″W', '-14.8413889', '-75.015', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(300, 'Puerto Caballas', '14°56′31″S', '75°29′39″W', '-14.9419444', '-75.4941667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(301, 'Puerto Nuevo', '13°49′00″S', '76°15′00″W', '-13.8166667', '-76.25', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(302, 'Puerto Pisco', '13°43′00″S', '76°13′00″W', '-13.7166667', '-76.2166667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(303, 'Puerto San Juan', '15°18′00″S', '75°10′00″W', '-15.3', '-75.1666667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(304, 'Puerto San Martin', '13°48′00″S', '76°18′00″W', '-13.8', '-76.3', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(305, 'Pumailla', '13°06′00″S', '75°54′00″W', '-13.1', '-75.9', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(306, 'Puno', '14°09′00″S', '75°42′00″W', '-14.15', '-75.7', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(307, 'Punta Grande', '14°20′00″S', '76°07′00″W', '-14.3333333', '-76.1166667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(308, 'Punta La Isla', '13°28′23″S', '76°03′14″W', '-13.4730556', '-76.0538889', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(309, 'Puquio', '14°02′16″S', '75°16′20″W', '-14.0377778', '-75.2722222', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(310, 'Puyuri', '14°38′03″S', '75°02′25″W', '-14.6341667', '-75.0402778', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(311, 'Quemado', '14°51′00″S', '75°12′00″W', '-14.85', '-75.2', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(312, 'Quemazon', '14°57′00″S', '74°45′00″W', '-14.95', '-74.75', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(313, 'Quenaj', '13°12′00″S', '75°48′00″W', '-13.2', '-75.8', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(314, 'Querco Cancha', '14°04′18″S', '75°14′30″W', '-14.0716667', '-75.2416667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(315, 'Quilca', '13°20′00″S', '75°39′00″W', '-13.3333333', '-75.65', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(316, 'Ninapata', '13°18′00″S', '75°45′00″W', '-13.3', '-75.75', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(317, 'Nunez', '13°42′00″S', '76°07′00″W', '-13.7', '-76.1166667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(318, 'Ocongaya Alta', '14°50′00″S', '74°59′00″W', '-14.8333333', '-74.9833333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(319, 'Ocucaje', '14°20′55″S', '75°40′09″W', '-14.3486111', '-75.6691667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(320, 'Ocungalla', '14°50′00″S', '75°00′00″W', '-14.8333333', '-75', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(321, 'Orcaya', '13°58′43″S', '75°18′56″W', '-13.9786111', '-75.3155556', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(322, 'Orcona', '14°49′00″S', '74°53′00″W', '-14.8166667', '-74.8833333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(323, 'Orongo', '14°03′58″S', '75°41′52″W', '-14.0661111', '-75.6977778', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(324, 'Orongo Cucho', '14°06′50″S', '75°26′58″W', '-14.1138889', '-75.4494444', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(325, 'Otapalca', '13°06′00″S', '75°54′00″W', '-13.1', '-75.9', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(326, 'Pacainihua', '14°39′00″S', '74°59′00″W', '-14.65', '-74.9833333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(327, 'Pacaynioc', '14°00′40″S', '75°22′25″W', '-14.0111111', '-75.3736111', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(328, 'Pacra Chica', '13°34′00″S', '75°32′00″W', '-13.5666667', '-75.5333333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(329, 'Pajaraje', '14°03′25″S', '75°25′07″W', '-14.0569444', '-75.4186111', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(330, 'Palacio', '14°08′02″S', '75°03′50″W', '-14.1338889', '-75.0638889', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(331, 'Palacios', '14°02′54″S', '75°43′52″W', '-14.0483333', '-75.7311111', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(332, 'Palca Marca Grande', '14°14′04″S', '75°12′27″W', '-14.2344444', '-75.2075', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(333, 'Pallasca', '13°43′00″S', '75°51′00″W', '-13.7166667', '-75.85', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(334, 'Palmar', '14°14′40″S', '75°06′38″W', '-14.2444444', '-75.1105556', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(335, 'Palmar', '14°35′00″S', '74°53′00″W', '-14.5833333', '-74.8833333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(336, 'Palo Seco', '13°22′37″S', '76°10′10″W', '-13.3769444', '-76.1694444', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(337, 'Palpa', '14°32′01″S', '75°11′08″W', '-14.5336111', '-75.1855556', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(338, 'Pamocc', '13°04′00″S', '75°57′00″W', '-13.0666667', '-75.95', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(339, 'Pamojpata', '13°06′00″S', '75°54′00″W', '-13.1', '-75.9', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(340, 'Pampa Blanca', '14°36′00″S', '75°19′00″W', '-14.6', '-75.3166667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(341, 'Pampa Blanca', '14°13′03″S', '75°05′42″W', '-14.2175', '-75.095', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(342, 'Pampa Chacra', '13°08′00″S', '75°58′00″W', '-13.1333333', '-75.9666667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(343, 'Pampa de la Isla', '13°58′00″S', '75°42′00″W', '-13.9666667', '-75.7', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(344, 'Pampa de La Victoria', '14°46′00″S', '74°57′00″W', '-14.7666667', '-74.95', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(345, 'Pampa de Tate', '14°09′03″S', '75°41′33″W', '-14.1508333', '-75.6925', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(346, 'Pampa de Yajasi', '14°08′00″S', '75°42′00″W', '-14.1333333', '-75.7', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(347, 'Pampa Grande', '13°28′37″S', '76°05′28″W', '-13.4769444', '-76.0911111', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(348, 'Pampa Juliana', '14°07′21″S', '75°40′58″W', '-14.1225', '-75.6827778', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(349, 'Pampa Los Castillos', '14°17′06″S', '75°38′37″W', '-14.285', '-75.6436111', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(350, 'Pampahuasi', '14°06′03″S', '75°28′36″W', '-14.1008333', '-75.4766667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(351, 'Pampano', '13°33′00″S', '75°30′00″W', '-13.55', '-75.5', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(352, 'Pangaravi', '14°50′00″S', '74°57′00″W', '-14.8333333', '-74.95', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(353, 'Pantaico', '13°43′00″S', '75°50′00″W', '-13.7166667', '-75.8333333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(354, 'Pantayco', '13°42′00″S', '75°50′00″W', '-13.7', '-75.8333333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(355, 'Paracas', '13°50′00″S', '76°15′00″W', '-13.8333333', '-76.25', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(356, 'Paracas', '13°52′00″S', '76°16′00″W', '-13.8666667', '-76.2666667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(357, 'Paraiso', '14°33′00″S', '75°11′00″W', '-14.55', '-75.1833333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(358, 'Paras', '14°24′46″S', '75°10′20″W', '-14.4127778', '-75.1722222', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(359, 'Parazuelos', '14°03′00″S', '75°44′00″W', '-14.05', '-75.7333333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(360, 'Parcona', '14°02′53″S', '75°41′54″W', '-14.0480556', '-75.6983333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(361, 'Parcona', '14°03′37″S', '75°42′28″W', '-14.0602778', '-75.7077778', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(362, 'Pariahuana', '13°41′00″S', '75°47′00″W', '-13.6833333', '-75.7833333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(363, 'Parinas Grande', '14°06′31″S', '75°42′08″W', '-14.1086111', '-75.7022222', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(364, 'Paroma', '14°58′00″S', '74°59′00″W', '-14.9666667', '-74.9833333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(365, 'Patacancha', '14°06′52″S', '75°06′36″W', '-14.1144444', '-75.11', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(366, 'Macotela', '14°58′55″S', '75°01′11″W', '-14.9819444', '-75.0197222', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(367, 'Magdalena', '13°27′16″S', '76°06′55″W', '-13.4544444', '-76.1152778', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(368, 'Maijo Chico', '14°52′30″S', '75°22′19″W', '-14.875', '-75.3719444', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(369, 'Maijo Grande', '14°52′44″S', '75°22′22″W', '-14.8788889', '-75.3727778', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(370, 'Majorito', '14°51′00″S', '74°57′00″W', '-14.85', '-74.95', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(371, 'Majoro', '14°51′00″S', '74°59′00″W', '-14.85', '-74.9833333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(372, 'Mal Paso', '14°42′00″S', '75°19′00″W', '-14.7', '-75.3166667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(373, 'Mancha Verde', '14°54′31″S', '75°01′34″W', '-14.9086111', '-75.0261111', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(374, 'Manco Capac', '13°59′00″S', '75°42′00″W', '-13.9833333', '-75.7', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(375, 'Manrique', '13°41′00″S', '76°02′00″W', '-13.6833333', '-76.0333333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(376, 'Manrique', '14°05′07″S', '75°44′23″W', '-14.0852778', '-75.7397222', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(377, 'Mara', '14°05′53″S', '75°43′38″W', '-14.0980556', '-75.7272222', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(378, 'Marcalla', '14°04′31″S', '75°17′42″W', '-14.0752778', '-75.295', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(379, 'Marcas', '13°22′00″S', '75°43′00″W', '-13.3666667', '-75.7166667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(380, 'Marcha', '14°58′00″S', '74°48′00″W', '-14.9666667', '-74.8', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(381, 'Marco', '13°12′00″S', '75°43′00″W', '-13.2', '-75.7166667', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00'),
(382, 'Marcocancha', '13°05′00″S', '75°53′00″W', '-13.0833333', '-75.8833333', 'Ica', 1, '2019-05-01 10:00:00', '2019-05-02 10:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_categoria_tiendas`
--

CREATE TABLE `detalle_categoria_tiendas` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_tienda` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `ciudad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `detalle_categoria_tiendas`
--

INSERT INTO `detalle_categoria_tiendas` (`id`, `id_tienda`, `id_categoria`, `ciudad`, `estado`, `created_at`, `updated_at`) VALUES
(2, 2, 2, 'ica', 1, '2019-06-04 16:28:28', '2019-06-04 16:28:28'),
(3, 3, 15, 'ica', 1, '2019-06-04 16:50:38', '2019-06-04 16:50:38'),
(4, 4, 23, 'ica', 1, '2019-06-04 17:01:52', '2019-06-04 17:01:52'),
(5, 5, 4, 'ica', 1, '2019-06-04 17:36:32', '2019-06-04 17:36:32'),
(6, 5, 5, 'ica', 1, '2019-06-04 17:38:24', '2019-06-04 17:38:24'),
(7, 5, 6, 'ica', 1, '2019-06-04 17:38:27', '2019-06-04 17:38:27'),
(10, 22, 23, 'ica', 1, '2019-06-04 17:42:00', '2019-06-04 17:42:00'),
(11, 29, 23, 'ica', 1, '2019-06-04 17:42:51', '2019-06-04 17:42:51'),
(12, 10, 23, 'ica', 1, '2019-06-04 17:43:30', '2019-06-04 17:43:30'),
(13, 35, 23, 'ica', 1, '2019-06-04 17:43:56', '2019-06-04 17:43:56'),
(15, 46, 23, 'ica', 1, '2019-06-04 17:44:46', '2019-06-04 17:44:46'),
(16, 47, 23, 'ica', 1, '2019-06-04 17:44:49', '2019-06-04 17:44:49'),
(17, 26, 23, 'ica', 1, '2019-06-04 17:46:09', '2019-06-04 17:46:09'),
(18, 32, 23, 'ica', 1, '2019-06-04 17:46:21', '2019-06-04 17:46:21'),
(19, 51, 23, 'ica', 1, '2019-06-04 17:47:08', '2019-06-04 17:47:08'),
(20, 56, 23, 'ica', 1, '2019-06-04 17:47:19', '2019-06-04 17:47:19'),
(21, 97, 23, 'ica', 1, '2019-06-04 17:47:39', '2019-06-04 17:47:39'),
(22, 15, 1, 'ica', 1, '2019-06-04 17:48:50', '2019-06-04 17:48:50'),
(23, 37, 1, 'ica', 1, '2019-06-04 17:48:59', '2019-06-04 17:48:59'),
(24, 109, 1, 'ica', 1, '2019-06-04 17:49:20', '2019-06-04 17:49:20'),
(25, 112, 1, 'ica', 1, '2019-06-04 17:49:35', '2019-06-04 17:49:35'),
(26, 75, 2, 'ica', 1, '2019-06-04 17:52:52', '2019-06-04 17:52:52'),
(27, 14, 3, 'ica', 1, '2019-06-04 17:56:01', '2019-06-04 17:56:01'),
(28, 31, 3, 'ica', 1, '2019-06-04 17:56:17', '2019-06-04 17:56:17'),
(29, 38, 3, 'ica', 1, '2019-06-04 17:56:38', '2019-06-04 17:56:38'),
(30, 39, 3, 'ica', 1, '2019-06-04 17:56:46', '2019-06-04 17:56:46'),
(32, 72, 3, 'ica', 1, '2019-06-04 18:00:02', '2019-06-04 18:00:02'),
(33, 77, 3, 'ica', 1, '2019-06-04 18:00:14', '2019-06-04 18:00:14'),
(34, 82, 3, 'ica', 1, '2019-06-04 18:00:26', '2019-06-04 18:00:26'),
(35, 96, 3, 'ica', 1, '2019-06-04 18:00:39', '2019-06-04 18:00:39'),
(36, 99, 3, 'ica', 1, '2019-06-04 18:00:56', '2019-06-04 18:00:56'),
(37, 103, 3, 'ica', 1, '2019-06-04 18:01:14', '2019-06-04 18:01:14'),
(38, 16, 7, 'ica', 1, '2019-06-04 18:02:36', '2019-06-04 18:02:36'),
(39, 60, 7, 'ica', 1, '2019-06-04 18:02:49', '2019-06-04 18:02:49'),
(40, 62, 8, 'ica', 1, '2019-06-04 18:03:23', '2019-06-04 18:03:23'),
(42, 18, 13, 'ica', 1, '2019-06-04 19:13:37', '2019-06-04 19:13:37'),
(43, 27, 13, 'ica', 1, '2019-06-04 19:13:59', '2019-06-04 19:13:59'),
(44, 57, 13, 'ica', 1, '2019-06-04 19:14:10', '2019-06-04 19:14:10'),
(45, 58, 13, 'ica', 1, '2019-06-04 19:14:21', '2019-06-04 19:14:21'),
(46, 67, 13, 'ica', 1, '2019-06-04 19:14:34', '2019-06-04 19:14:34'),
(52, 21, 10, 'ica', 1, '2019-06-04 19:19:14', '2019-06-04 19:19:14'),
(53, 30, 10, 'ica', 1, '2019-06-04 19:19:29', '2019-06-04 19:19:29'),
(54, 42, 10, 'ica', 1, '2019-06-04 19:19:40', '2019-06-04 19:19:40'),
(55, 93, 10, 'ica', 1, '2019-06-04 19:20:02', '2019-06-04 19:20:02'),
(56, 108, 10, 'ica', 1, '2019-06-04 19:20:16', '2019-06-04 19:20:16'),
(57, 111, 10, 'ica', 1, '2019-06-04 19:20:26', '2019-06-04 19:20:26'),
(58, 87, 17, 'ica', 1, '2019-06-04 19:29:32', '2019-06-04 19:29:32'),
(59, 79, 25, 'ica', 1, '2019-06-04 19:30:49', '2019-06-04 19:30:49'),
(60, 92, 25, 'ica', 1, '2019-06-04 19:30:58', '2019-06-04 19:30:58'),
(61, 94, 25, 'ica', 1, '2019-06-04 19:31:07', '2019-06-04 19:31:07'),
(62, 8, 14, 'ica', 1, '2019-06-04 19:32:03', '2019-06-04 19:32:03'),
(63, 9, 19, 'ica', 1, '2019-06-04 21:28:28', '2019-06-04 21:28:28'),
(64, 19, 19, 'ica', 1, '2019-06-04 21:29:02', '2019-06-04 21:29:02'),
(65, 20, 19, 'ica', 1, '2019-06-04 21:29:10', '2019-06-04 21:29:10'),
(66, 48, 19, 'ica', 1, '2019-06-04 21:29:21', '2019-06-04 21:29:21'),
(70, 74, 19, 'ica', 1, '2019-06-04 21:30:21', '2019-06-04 21:30:21'),
(71, 76, 19, 'ica', 1, '2019-06-04 21:30:28', '2019-06-04 21:30:28'),
(73, 84, 15, 'ica', 1, '2019-06-04 21:33:35', '2019-06-04 21:33:35'),
(74, 101, 20, 'ica', 1, '2019-06-04 21:34:34', '2019-06-04 21:34:34'),
(75, 110, 20, 'ica', 1, '2019-06-04 21:34:49', '2019-06-04 21:34:49'),
(76, 33, 18, 'ica', 1, '2019-06-04 21:44:16', '2019-06-04 21:44:16'),
(77, 40, 18, 'ica', 1, '2019-06-04 21:44:28', '2019-06-04 21:44:28'),
(78, 11, 4, 'ica', 1, '2019-06-04 21:46:29', '2019-06-04 21:46:29'),
(79, 13, 4, 'ica', 1, '2019-06-04 21:47:04', '2019-06-04 21:47:04'),
(80, 11, 6, 'ica', 1, '2019-06-04 21:47:30', '2019-06-04 21:47:30'),
(81, 13, 6, 'ica', 1, '2019-06-04 21:47:45', '2019-06-04 21:47:45'),
(82, 13, 5, 'ica', 1, '2019-06-04 21:48:09', '2019-06-04 21:48:09'),
(83, 12, 5, 'ica', 1, '2019-06-04 21:48:25', '2019-06-04 21:48:25'),
(84, 12, 27, 'ica', 1, '2019-06-04 21:48:45', '2019-06-04 21:48:45'),
(86, 53, 26, 'ica', 1, '2019-06-04 21:51:04', '2019-06-04 21:51:04'),
(87, 59, 26, 'ica', 1, '2019-06-04 21:51:15', '2019-06-04 21:51:15'),
(88, 73, 26, 'ica', 1, '2019-06-04 21:51:31', '2019-06-04 21:51:31'),
(89, 49, 27, 'ica', 1, '2019-06-04 21:52:17', '2019-06-04 21:52:17'),
(90, 68, 24, 'ica', 1, '2019-06-04 21:52:51', '2019-06-04 21:52:51'),
(91, 25, 29, 'ica', 1, '2019-06-04 21:53:34', '2019-06-04 21:53:34'),
(92, 80, 29, 'ica', 1, '2019-06-04 21:53:47', '2019-06-04 21:53:47'),
(93, 28, 22, 'ica', 1, '2019-06-04 21:55:40', '2019-06-04 21:55:40'),
(95, 63, 22, 'ica', 1, '2019-06-04 21:56:06', '2019-06-04 21:56:06'),
(97, 66, 22, 'ica', 1, '2019-06-04 21:56:34', '2019-06-04 21:56:34'),
(98, 95, 22, 'ica', 1, '2019-06-04 21:57:04', '2019-06-04 21:57:04'),
(99, 24, 9, 'ica', 1, '2019-06-04 22:04:07', '2019-06-04 22:04:07'),
(100, 83, 9, 'ica', 1, '2019-06-04 22:04:18', '2019-06-04 22:04:18'),
(101, 43, 16, 'ica', 1, '2019-06-04 22:09:28', '2019-06-04 22:09:28'),
(102, 102, 16, 'ica', 1, '2019-06-04 22:09:40', '2019-06-04 22:09:40'),
(103, 54, 21, 'ica', 1, '2019-06-04 22:10:26', '2019-06-04 22:10:26'),
(105, 41, 1, 'ica', 1, '2019-06-04 22:12:00', '2019-06-04 22:12:00'),
(106, 41, 26, 'ica', 1, '2019-06-04 22:13:18', '2019-06-04 22:13:18'),
(108, 41, 28, 'ica', 1, '2019-06-04 05:00:00', '2019-06-04 05:00:00'),
(109, 41, 8, 'ica', 1, '2019-06-04 05:00:00', '2019-06-04 05:00:00'),
(110, 52, 8, 'ica', 1, '2019-06-04 05:00:00', '2019-06-04 05:00:00'),
(111, 52, 26, 'ica', 1, '2019-06-04 05:00:00', '2019-06-04 05:00:00'),
(112, 52, 28, 'ica', 1, '2019-06-04 05:00:00', '2019-06-04 05:00:00'),
(113, 89, 8, 'ica', 1, '2019-06-04 05:00:00', '2019-06-04 05:00:00'),
(114, 70, 1, 'ica', 1, '2019-06-04 05:00:00', '2019-06-04 05:00:00'),
(115, 71, 1, 'ica', 1, '2019-06-04 05:00:00', '2019-06-04 05:00:00'),
(116, 90, 1, 'ica', 1, '2019-06-04 05:00:00', '2019-06-04 05:00:00'),
(117, 104, 1, 'ica', 1, '2019-06-04 05:00:00', '2019-06-04 05:00:00'),
(118, 105, 1, 'ica', 1, '2019-06-04 05:00:00', '2019-06-04 05:00:00'),
(119, 70, 4, 'ica', 1, '2019-06-04 05:00:00', '2019-06-04 05:00:00'),
(120, 71, 4, 'ica', 1, '2019-06-04 05:00:00', '2019-06-04 05:00:00'),
(121, 81, 4, 'ica', 1, '2019-06-04 05:00:00', '2019-06-04 05:00:00'),
(122, 106, 4, 'ica', 1, '2019-06-04 05:00:00', '2019-06-04 05:00:00'),
(123, 71, 6, 'ica', 1, '2019-06-04 05:00:00', '2019-06-04 05:00:00'),
(124, 81, 6, 'ica', 1, '2019-06-04 05:00:00', '2019-06-04 05:00:00'),
(125, 106, 6, 'ica', 1, '2019-06-04 05:00:00', '2019-06-04 05:00:00'),
(126, 78, 19, 'ica', 1, '2019-06-04 05:00:00', '2019-06-04 05:00:00'),
(127, 78, 21, 'ica', 1, '2019-06-04 05:00:00', '2019-06-04 05:00:00'),
(128, 81, 5, 'ica', 1, '2019-06-04 05:00:00', '2019-06-04 05:00:00'),
(129, 106, 5, 'ica', 1, '2019-06-04 05:00:00', '2019-06-04 05:00:00'),
(131, 91, 26, 'ica', 1, '2019-06-04 05:00:00', '2019-06-04 05:00:00'),
(133, 91, 28, 'ica', 1, '2019-06-04 05:00:00', '2019-06-04 05:00:00'),
(134, 104, 28, 'ica', 1, '2019-06-04 05:00:00', '2019-06-04 05:00:00'),
(135, 105, 28, 'ica', 1, '2019-06-04 05:00:00', '2019-06-04 05:00:00'),
(136, 89, 7, 'ica', 1, '2019-06-04 05:00:00', '2019-06-04 05:00:00'),
(137, 89, 22, 'ica', 1, '2019-06-04 05:00:00', '2019-06-04 05:00:00'),
(138, 90, 17, 'ica', 1, '2019-06-04 05:00:00', '2019-06-04 05:00:00'),
(139, 100, 9, 'ica', 1, '2019-06-04 05:00:00', '2019-06-04 05:00:00'),
(140, 100, 10, 'ica', 1, '2019-06-04 05:00:00', '2019-06-04 05:00:00'),
(143, 114, 9, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(144, 115, 2, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(145, 116, 15, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(146, 117, 15, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(147, 117, 27, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(148, 118, 23, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(149, 119, 23, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(150, 121, 23, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(151, 122, 23, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(152, 123, 23, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(153, 124, 23, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(154, 125, 5, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(155, 126, 23, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(156, 128, 23, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(157, 129, 3, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(158, 130, 10, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(159, 131, 23, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(160, 132, 23, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(161, 133, 23, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(162, 134, 9, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(163, 135, 22, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(164, 136, 3, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(165, 137, 22, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(166, 138, 23, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(167, 139, 3, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(168, 140, 15, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(169, 141, 23, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(170, 143, 9, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(171, 144, 12, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(172, 145, 29, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(173, 147, 13, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(174, 148, 18, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(176, 153, 3, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(177, 154, 3, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(178, 155, 11, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(179, 156, 29, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(180, 157, 29, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(181, 158, 3, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(182, 159, 19, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(183, 161, 21, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(184, 162, 9, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(185, 163, 23, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(186, 164, 8, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(187, 164, 26, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(188, 164, 28, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(189, 165, 29, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(190, 167, 26, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(191, 168, 24, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(193, 170, 3, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(194, 171, 23, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(195, 172, 2, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(196, 173, 18, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(197, 174, 25, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(198, 175, 9, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(199, 177, 19, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(200, 178, 17, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(201, 180, 21, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(202, 181, 19, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(203, 182, 10, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(204, 183, 25, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(205, 184, 23, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(206, 185, 23, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(207, 186, 23, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(208, 187, 18, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(209, 188, 18, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(210, 189, 16, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(211, 190, 28, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(212, 191, 28, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(213, 192, 14, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(214, 193, 26, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(215, 195, 18, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(216, 196, 8, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(217, 197, 23, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(218, 198, 1, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(221, 120, 4, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(222, 120, 6, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(223, 120, 5, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(224, 194, 4, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(225, 194, 6, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(226, 194, 5, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(227, 179, 17, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(228, 179, 1, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(229, 176, 26, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(230, 176, 28, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(231, 166, 27, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(232, 166, 1, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(233, 160, 7, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(234, 160, 15, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(235, 149, 1, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(236, 149, 26, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(237, 149, 28, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(238, 149, 8, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(239, 150, 1, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(240, 150, 26, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(241, 150, 28, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(242, 150, 27, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(243, 150, 4, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(244, 146, 4, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(245, 146, 6, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(246, 146, 5, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(247, 142, 26, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(248, 142, 28, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(249, 142, 27, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(250, 127, 4, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(251, 127, 6, 'cajamarca', 1, '2019-06-04 17:00:00', '2019-06-04 17:00:00'),
(269, 203, 1, 'ica', 1, '2019-06-05 19:20:20', '2019-06-05 19:20:20'),
(270, 202, 7, 'ica', 1, '2019-06-05 19:28:03', '2019-06-05 19:28:03'),
(271, 202, 8, 'ica', 1, '2019-06-05 19:28:03', '2019-06-05 19:28:03'),
(272, 7, 23, 'ica', 1, '2019-06-05 23:01:35', '2019-06-05 23:01:35'),
(278, 6, 23, 'ica', 1, '2019-06-07 23:27:25', '2019-06-07 23:27:25'),
(279, 17, 13, 'ica', 1, '2019-06-07 23:27:56', '2019-06-07 23:27:56'),
(280, 34, 22, 'ica', 1, '2019-06-07 23:30:01', '2019-06-07 23:30:01'),
(282, 45, 23, 'ica', 1, '2019-06-07 23:30:24', '2019-06-07 23:30:24'),
(283, 44, 11, 'ica', 1, '2019-06-07 23:31:05', '2019-06-07 23:31:05'),
(285, 50, 19, 'ica', 1, '2019-06-07 23:31:36', '2019-06-07 23:31:36'),
(287, 85, 26, 'ica', 1, '2019-06-07 23:47:58', '2019-06-07 23:47:58'),
(288, 85, 28, 'ica', 1, '2019-06-07 23:47:58', '2019-06-07 23:47:58'),
(289, 86, 19, 'ica', 1, '2019-06-07 23:48:25', '2019-06-07 23:48:25'),
(290, 88, 13, 'ica', 1, '2019-06-07 23:48:47', '2019-06-07 23:48:47'),
(292, 98, 13, 'ica', 1, '2019-06-07 23:49:05', '2019-06-07 23:49:05'),
(293, 107, 13, 'ica', 1, '2019-06-07 23:49:28', '2019-06-07 23:49:28'),
(295, 61, 19, 'ica', 1, '2019-06-10 17:47:52', '2019-06-10 17:47:52'),
(296, 36, 26, 'ica', 1, '2019-06-11 15:14:59', '2019-06-11 15:14:59'),
(297, 36, 1, 'ica', 1, '2019-06-11 15:14:59', '2019-06-11 15:14:59'),
(298, 200, 20, 'cajamarca', 1, '2019-06-11 15:40:40', '2019-06-11 15:40:40'),
(299, 199, 1, 'cajamarca', 1, '2019-06-11 15:52:03', '2019-06-11 15:52:03'),
(300, 65, 22, 'ica', 1, '2019-06-13 16:08:36', '2019-06-13 16:08:36'),
(301, 55, 3, 'ica', 1, '2019-06-14 17:34:25', '2019-06-14 17:34:25'),
(302, 64, 19, 'ica', 1, '2019-06-14 17:34:40', '2019-06-14 17:34:40'),
(304, 23, 26, 'ica', 1, '2019-06-14 19:32:25', '2019-06-14 19:32:25'),
(305, 152, 3, 'cajamarca', 1, '2019-06-17 17:49:53', '2019-06-17 17:49:53'),
(306, 169, 11, 'cajamarca', 1, '2019-06-17 20:51:02', '2019-06-17 20:51:02'),
(307, 69, 11, 'ica', 1, '2019-06-17 20:51:19', '2019-06-17 20:51:19'),
(309, 1, 8, 'ica', 1, '2019-06-26 11:36:11', '2019-06-26 11:36:11'),
(320, 113, 26, 'cajamarca', 1, '2019-06-26 12:21:31', '2019-06-26 12:21:31'),
(321, 113, 28, 'cajamarca', 1, '2019-06-26 12:21:31', '2019-06-26 12:21:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lugar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_ini` timestamp NULL DEFAULT NULL,
  `fecha_fin` timestamp NULL DEFAULT NULL,
  `estado` int(11) NOT NULL,
  `ciudad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `events`
--

INSERT INTO `events` (`id`, `slug`, `titulo`, `imagen`, `descripcion`, `lugar`, `fecha_ini`, `fecha_fin`, `estado`, `ciudad`, `created_at`, `updated_at`) VALUES
(15, 'felices-pascuas', 'Felices Pascuas', '5cb7348855a9a_PASCUA-1.png', 'Te esperamos este domingo 21 desde las 4 p.m. para disfrutar un hermoso show.', 'El Quinde Cajamarca', '2019-04-21 21:00:00', '2019-04-22 00:00:00', 0, 'cajamarca', '2019-04-15 21:18:48', '2019-06-24 16:35:33'),
(16, 'busca-tu-huevito-de-pascua', 'Busca tu huevito de pascua', '5cb734a3b4638_PASCUA-2.png', '<p>Busca tu huevito de pascua: Inscr&iacute;bete hasta el s&aacute;bado 20 para que puedas participar con nosotros. Y te esperamos el domingo 21 desde las 6:00 p.m.</p>', 'El Quinde Cajamarca', '2019-04-21 21:00:00', '2019-04-22 00:00:00', 0, 'cajamarca', '2019-04-15 21:25:14', '2019-06-24 16:35:38'),
(17, 'felices-pascuas', 'Felices Pascuas', '5cb733401d6cd_ICAeventopascua.png', '<p>Te esperamos este domingo 21 desde las 6:00 p.m. para divertirnos con la visita del Conejo de Pascua.</p>', 'El Quinde Ica', '2019-04-21 23:00:00', '2019-04-22 01:00:00', 0, 'ica', '2019-04-15 21:31:46', '2019-06-24 15:19:16'),
(18, 'milano-bags', 'Milano Bags', '5cb733d076771_1-Milano-Bags.png', '<p>Comparte una tarde especial de sorpresas, sorteos, descuentos especiales y mini catering</p>', 'El Quinde Ica', '2019-04-27 21:00:00', '2019-04-28 03:00:00', 0, 'ica', '2019-04-17 14:10:24', '2019-06-24 16:25:29'),
(19, 'taller-dibujo-pinkblue', 'Taller de Dibujo con Pinkblue', '5d1662d4d2399_ICA-1.png', '<p>Taller de Dibujo con Pinkblue</p>', 'El Quinde Ica', '2019-06-26 12:00:00', '2019-06-30 12:00:00', 0, 'ica', '2019-06-24 16:26:50', '2019-07-02 20:15:30'),
(20, 'vida-saludable-con-renaware', 'Vida Saludable con Renaware', '5d11408fe4228_ICA-2.png', '<p>Vida Saludable con Renaware</p>', 'El Quinde Ica', NULL, NULL, 0, 'ica', '2019-06-24 16:28:47', '2019-07-02 20:15:34'),
(21, 'Peru gana', 'Uruguay vs Perú', '5d16637e2f431_CAX-futbol3.png', '<p>Uruguay vs Per&uacute;</p>', 'El Quinde Cajamarca', '2019-06-26 12:00:00', '2019-06-30 12:00:00', 0, 'cajamarca', '2019-06-24 16:36:26', '2019-07-02 19:54:34'),
(22, 'expo-moda-anime-akeru-no-sephiro', 'Expo Moda Anime Akeru No Sephiro', '5d1142a91ae9a_CAX-2.png', '<p>Expo Moda Anime Akeru No Sephiro</p>', 'El Quinde Cajamarca', NULL, NULL, 0, 'cajamarca', '2019-06-24 16:37:45', '2019-07-02 19:54:58'),
(23, 'festival-de-postres-salvando-huellitas', 'Festival de Postres Salvando Huellitas', '5d1142eb4f3cb_CAX-3.png', '<p>Festival de Postres Salvando Huellitas</p>', 'El Quinde Cajamarca', NULL, NULL, 0, 'cajamarca', '2019-06-24 16:38:51', '2019-07-02 19:55:01'),
(24, 'show-de-chelytho-y-bolita', 'Show de Chelytho y Bolita', '5d114708e7e77_ICA-3.png', '<p>Show de Chelytho y Bolita</p>', 'El Quinde Ica', NULL, NULL, 0, 'ica', '2019-06-24 16:56:24', '2019-07-02 20:15:38'),
(27, 'show-intantil-colores', 'Show infantil  Colores', '5d13dd5925a80_CAX-1.png', '<p>Show infanti colores</p>', 'El Quinde Cajamarca', '2019-06-25 12:00:00', '2019-07-31 12:00:00', 0, 'cajamarca', '2019-06-26 15:57:08', '2019-07-02 19:54:41'),
(28, 'cocina-peruana-en-vivo', 'Cocina peruana en vivo', '5d1bfe6de6452_CAX-banner-evento.png', '<p><strong>CONCURSO: COCINA PERUANA EN VIVO</strong></p>\n\n<p>&nbsp;</p>\n\n<p>Promoci&oacute;n v&aacute;lida por compras del 01 al 21 de Julio de 2019 en el Centro Comercial El Quinde Cajamarca. Fecha y horario del sorteo: 22 de Julio del 2019 a las 6:30 p.m. en el patio de comida. Fecha concurso de cocina en vivo: 27 de Julio del 2019 a las 4:30pm. en las instalaciones del C.C. Podr&aacute;n participar por cada S/ 50.00 de compras acumulables en cualquier tienda. Los tickets de compra pueden ser de fecha 01 al 21 de Julio de 2019, se entregara 1 solo cup&oacute;n, m&aacute;ximo 5 cupones por boleta/factura. Sorteo: el cliente presentar&aacute; su ticket de compra en el m&oacute;dulo de informes y llenar&aacute; sus datos completos en el cup&oacute;n para poder participar en el horario de lunes a domingo de 11AM a 2PM y de 4PM a 9PM. Ser&aacute;n 5 ganadores del sorteo, el cual no ser&aacute; presencial, en caso se llame a los ganadores y no est&eacute;n presentes nos pondremos en contacto con ellos. Si el cup&oacute;n elegido no tiene los datos completos, se extraer&aacute; otro cup&oacute;n. Concurso cocina en vivo: los 5 ganadores del sorteo deber&aacute;n presentarse con su equipo de 4 personas cada uno. Cada equipo cocinar&aacute; el plato peruano asignado por el C.C. con insumos proporcionados por el C.C. en vivo ante ante un jurado local con estudios o experiencia culinaria. Premios: el primer puesto del concurso de cocina ser&aacute; 1 equipo de 4 personas, que recibir&aacute; 4 pasajes en Bus a Piura + 2 estad&iacute;as dobles por 2 noches en el Hotel Casa Andina Premium Piura. El segundo puesto ser&aacute; 1 equipo de 4 personas que recibir&aacute;n 2 estad&iacute;as dobles por 2 noches en el Hotel Casa Andina Premium Trujillo. Los premios no podr&aacute;n ser canjeados por dinero en efectivo ni alg&uacute;n otro bien o servicio. Los premios no podr&aacute;n ser canjeados por dinero en efectivo ni alg&uacute;n otro bien o servicio.<strong> </strong>Para la entrega del premio es obligatorio la presentaci&oacute;n de DNI vigente.&nbsp;No participan pagos de recibos, ni transacciones de servicio.<strong> </strong>No participan menores de edad.<strong> </strong>Condiciones sujetas a cambio sin previo aviso.<strong> </strong>No participan colaboradores de las empresas Parque Arauco, personal de seguridad, ni limpieza del C.C., personal administrativo de Arauco Malls Per&uacute; S.A.C, personal de las tiendas del C.C., ni familiares de primer y segundo grado de los trabajadores del C.C.&nbsp;Im&aacute;genes referenciales.</p>', 'null', '2019-07-02 12:00:00', '2019-07-26 23:00:00', 1, 'cajamarca', '2019-07-02 20:01:34', '2019-07-02 20:04:00'),
(29, 'cocina-peruana-en-vivo', 'Cocina peruana en vivo', '5d1c01f7bf4f5_ICA-banner-evento.png', '<p><strong>CONCURSO: COCINA PERUANA EN VIVO</strong></p>\n\n<p>&nbsp;</p>\n\n<p>Promoci&oacute;n v&aacute;lida por compras del 01 al 21 de Julio de 2019 EN EL Centro Comercial El Quinde Ica.<strong> </strong>Fecha y horario del sorteo: 22 de Julio del 2019 a las 6:30 p.m. en el m&oacute;dulo de Atenci&oacute;n al Cliente (primer nivel).<strong> </strong>Fecha concurso de cocina en vivo: 27 de Julio del 2019 a las 4:30pm. en las instalaciones del C.C.<strong> </strong>Podr&aacute;n participar por cada S/65.00 de compras acumulables en cualquier tienda. Los tickets de compra pueden ser de fecha 01 al 21 de Julio de 2019, se entregar&aacute; 1 solo cup&oacute;n, m&aacute;ximo 5 cupones por boleta/factura.<strong> </strong>Sorteo: el cliente presentar&aacute; su ticket de compra en el m&oacute;dulo de informes y llenar&aacute; sus datos completos en el cup&oacute;n para poder participar en el horario de lunes a domingo de 10AM a 1PM y de 4PM a 8PM.<strong> </strong>Ser&aacute;n 5 ganadores del sorteo, el cual no ser&aacute; presencial, en caso se llame a los ganadores y no est&eacute;n presentes, nos pondremos en contacto con ellos. Si el cup&oacute;n elegido no tiene los datos completos, se extraer&aacute; otro cup&oacute;n. Concurso cocina en vivo: los 5 ganadores del sorteo deber&aacute;n presentarse con su equipo de 4 personas cada uno. Cada equipo cocinar&aacute; el plato peruano asignado por el C.C. con insumos proporcionados por el C.C. en vivo ante un jurado local con estudios o experiencia culinaria. Premios: el ganador del concurso de cocina ser&aacute; 1 equipo de 4 personas que recibir&aacute;n 3 estad&iacute;as dobles por 2 noches en el Hotel Casa Andina Standard Cusco Catedral + 1 estad&iacute;a doble por 2 noches en el Hotel Casa Andina Premium Piura. Los premios no podr&aacute;n ser canjeados por dinero en efectivo ni alg&uacute;n otro bien o servicio.<strong> </strong>Para la entrega del premio es obligatorio la presentaci&oacute;n de DNI vigente.&nbsp;No participan pagos de recibos, ni transacciones de servicio.<strong> </strong>No participan menores de edad.<strong> </strong>Condiciones sujetas a cambio sin previo aviso.<strong> </strong>No participan colaboradores de las empresas Parque Arauco, personal de seguridad, ni limpieza del C.C., personal administrativo de Arauco Malls Per&uacute; S.A.C, personal de las tiendas del C.C., ni familiares de primer y segundo grado de los trabajadores del C.C.&nbsp;Im&aacute;genes referenciales.</p>', NULL, NULL, NULL, 1, 'ica', '2019-07-02 20:16:39', '2019-07-02 20:16:39'),
(30, 'cuarteto-de-guitarras-en-440', 'Cuarteto de Guitarras en 440', '5d1cf3fdda1ba_ICA-viernes.png', '<p>Cuarteto de Guitarras en 440</p>', 'El Quinde Ica', '2019-07-05 12:00:00', '2019-07-31 12:00:00', 0, 'ica', '2019-07-03 13:29:17', '2019-07-08 09:41:32'),
(31, 'dibujo-en-vivo', 'Dibujo en vivo', '5d1cf439acf09_ICA-sab.png', '<p>Dibujo en vivo</p>', 'El Quinde Ica', '2019-07-06 12:00:00', '2019-07-31 12:00:00', 0, 'ica', '2019-07-03 13:30:17', '2019-07-08 09:41:35'),
(32, 'el-show-de-elmo', 'El show de Elmo', '5d1cf45e1845d_ICA-dom.png', '<p>El show de Elmo</p>', 'El Quinde Ica', '2019-07-07 12:00:00', '2019-07-31 12:00:00', 0, 'ica', '2019-07-03 13:30:54', '2019-07-08 09:41:37'),
(33, 'coronación-miss-perú-cajamarca', 'Coronación Miss Perú Cajamarca', '5d1cf741cd0d0_CAX-viernes1.png', '<p>Coronaci&oacute;n Miss Per&uacute; Cajamarca</p>', 'El Quinde Cajamarca', '2019-07-05 12:00:00', '2019-07-31 12:00:00', 0, 'cajamarca', '2019-07-03 13:43:13', '2019-07-08 09:42:34'),
(34, 'just-te-transforma', 'Just te transforma', '5d1cf77325cb4_CAX-viernes2.png', '<p>Just te transforma</p>', 'El Quinde Cajamarca', '2019-07-05 12:00:00', '2019-07-31 12:00:00', 0, 'cajamarca', '2019-07-03 13:44:03', '2019-07-08 09:42:18'),
(35, 'show-infantil-alicia-en-el-país-de-las-maravillas', 'Show infantil Alicia en el País de las Maravillas', '5d1cf7cf9fcce_CAX-sab1.png', '<p>Show infantil Alicia en el Pa&iacute;s de las Maravillas</p>', 'El Quinde Cajamarca', '2019-07-06 12:00:00', '2019-07-31 12:00:00', 0, 'cajamarca', '2019-07-03 13:45:35', '2019-07-08 09:42:24'),
(36, 'futbol-tenis-fitness-de-impacto', 'Futbol Tenis Fitness de Impacto', '5d1cf7ff150e6_CAX-sab3.png', '<p>Futbol Tenis Fitness de Impacto</p>', 'El Quinde Cajamarca', '2019-07-06 12:00:00', '2019-07-31 12:00:00', 0, 'cajamarca', '2019-07-03 13:46:23', '2019-07-08 09:42:26'),
(37, 'festival-de-postres-sullkawasi', 'Festival de postres Sullkawasi', '5d1cf827771c9_CAX-sab-dom.png', '<p>Festival de postres Sullkawasi</p>', 'El Quinde Cajamarca', '2019-07-06 12:00:00', '2019-07-31 12:00:00', 0, 'cajamarca', '2019-07-03 13:47:03', '2019-07-08 09:42:30'),
(38, 'el-show-de-bic', 'El Show de BIC', '5d1e23d882a16_CAX-Bic.png', '<p>El Show de BIC</p>', 'El Quinde Cajamarca', '2019-07-07 12:00:00', '2019-07-31 12:00:00', 0, 'cajamarca', '2019-07-03 13:48:13', '2019-07-08 09:42:21'),
(39, 'final-perú---brasil', 'Final Perú - Brasil', '5d1e240c70101_CAX-partido.png', NULL, NULL, NULL, NULL, 0, 'cajamarca', '2019-07-04 11:06:36', '2019-07-08 09:42:47'),
(40, 'desfile-de-modas-con-gloria-rivas-de-la-borda', 'Desfile de Modas con Gloria Rivas de la Borda', '5d23717a85fe7_ICA-8julio-1.png', '<p>Desfile de Modas con Gloria Rivas de la Borda / Top Model Life</p>', 'El Quinde ICA', '2019-07-13 12:00:00', '2019-07-13 12:00:00', 1, 'ica', '2019-07-08 11:38:18', '2019-07-08 11:38:18'),
(41, 'dibujo-en-vivo', 'Dibujo en vivo', '5d2371b342ddb_ICA-8julio-2.png', '<p>Dibujo en vivo</p>', 'El Quinde ICA', '2019-07-13 12:00:00', '2019-07-13 12:00:00', 1, 'ica', '2019-07-08 11:39:15', '2019-07-08 11:39:15'),
(42, 'coreografía-con-las-campenas-nacional-e-internacional-del-ballet-afroperuano-sabor-negro', 'Coreografía con las Campenas Nacional e Internacional del Ballet Afroperuano Sabor Negro', '5d23720d87323_ICA-8julio-3.png', '<p>Coreograf&iacute;a con las Campeonas Nacional e Internacional del Ballet Afroperuano Sabor Negro</p>', 'El Quinde ICA', '2019-07-14 12:00:00', '2019-07-14 12:00:00', 1, 'ica', '2019-07-08 11:40:45', '2019-07-08 11:40:45'),
(43, 'regala-arte-con-jones-atelier', 'Regala Arte con Jones Atelier', '5d2374347a88f_CAX-8julio-1.png', '<p>Regala Arte con Jones Atelier</p>', 'El Quinde Cajamarca', '2019-07-12 12:00:00', '2019-07-14 12:00:00', 1, 'cajamarca', '2019-07-08 11:49:56', '2019-07-08 11:49:56'),
(44, 'show-infantil-minnie', 'Show infantil Minnie', '5d23747283b2c_CAX-8julio-2.png', '<p>Show infantil Minnie</p>', 'El Quinde Cajamarca', '2019-07-13 12:00:00', '2019-07-13 12:00:00', 1, 'cajamarca', '2019-07-08 11:50:58', '2019-07-08 11:50:58'),
(45, 'festival-de-postres-salvando-huellitas', 'Festival de postres Salvando Huellitas', '5d2374bfe0634_CAX-8julio-3.png', '<p>Festival de postres Salvando Huellitas</p>', 'El Quinde Cajamarca', '2019-07-13 12:00:00', '2019-07-14 12:00:00', 1, 'cajamarca', '2019-07-08 11:52:15', '2019-07-08 11:52:15'),
(46, 'zumba-party-fitness-de-impacto', 'Zumba Party Fitness de Impacto', '5d23750973fda_CAX-8julio-4.png', '<p>Zumba Party Fitness de Impacto</p>', 'El Quinde Cajamarca', '2019-07-13 12:00:00', '2019-07-13 12:00:00', 1, 'cajamarca', '2019-07-08 11:53:29', '2019-07-08 11:53:29'),
(47, 'show-infantil-blanca-nieves', 'Show Infantil Blanca Nieves', '5d23754a41150_CAX-8julio-5.png', '<p>Show Infantil Blanca Nieves</p>', 'El Quinde Cajamarca', '2019-07-14 12:00:00', '2019-07-14 12:00:00', 1, 'cajamarca', '2019-07-08 11:54:34', '2019-07-08 11:54:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

CREATE TABLE `horarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_tienda` int(11) DEFAULT NULL,
  `dia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hora_ini` time DEFAULT NULL,
  `hora_fin` time DEFAULT NULL,
  `fecha_ini` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `estado` int(11) NOT NULL,
  `ciudad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seccion` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `horarios`
--

INSERT INTO `horarios` (`id`, `id_tienda`, `dia`, `hora_ini`, `hora_fin`, `fecha_ini`, `fecha_fin`, `estado`, `ciudad`, `seccion`, `created_at`, `updated_at`) VALUES
(67, NULL, NULL, NULL, NULL, '2019-07-13', '2019-07-14', 1, 'cajamarca', 8, '2019-05-21 19:52:11', '2019-07-12 15:52:02'),
(68, 1, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 15:04:15', '2019-05-28 23:52:46'),
(69, 2, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 15:04:53', '2019-06-11 14:52:40'),
(70, 3, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(71, 5, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(72, 8, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(73, 10, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(74, 11, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(75, 12, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(76, 13, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(77, 14, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(78, 15, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(79, 16, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(80, 17, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(81, 18, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(82, 19, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(83, 22, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(84, 23, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(85, 24, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(86, 25, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(87, 26, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(88, 27, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(89, 28, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(90, 29, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(91, 30, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(92, 31, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(93, 32, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(94, 33, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(95, 34, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(96, 35, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(97, 36, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(98, 37, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(99, 39, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(100, 40, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(101, 41, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(102, 42, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(103, 43, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(104, 46, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(105, 47, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(106, 48, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(107, 49, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(108, 51, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(109, 52, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(110, 55, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(111, 56, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(112, 57, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(113, 58, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(114, 59, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(115, 62, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(116, 63, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(117, 65, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(118, 66, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(119, 67, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(120, 68, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(121, 69, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(122, 70, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(123, 71, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(124, 72, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(125, 73, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(126, 74, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(127, 75, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(128, 77, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(129, 80, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(130, 81, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(131, 82, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(132, 83, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(133, 85, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(134, 87, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(135, 88, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(136, 89, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(137, 90, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(138, 91, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(139, 93, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(140, 95, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(141, 96, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(142, 98, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(143, 100, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(144, 101, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(145, 102, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(146, 103, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(147, 104, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(148, 105, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(149, 106, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(150, 107, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(151, 108, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(152, 109, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(153, 110, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(154, 111, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(155, 112, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(156, 99, 'Lun - Dom', '08:00:00', '23:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(157, 97, 'Lun - Dom', '09:00:00', '18:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(158, 94, 'Lun - Dom', '11:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(159, 92, 'Lun - Dom', '11:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(160, 86, 'Lun - Dom', '11:00:00', '23:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(161, 84, 'Lun - Dom', '11:00:00', '23:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(162, 78, 'Lun - Dom', '11:00:00', '23:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(163, 79, 'Lun - Dom', '11:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(164, 76, 'Lun - Dom', '11:00:00', '23:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(165, 64, 'Lun - Dom', '11:00:00', '23:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(166, 61, 'Lun - Dom', '11:00:00', '23:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(167, 60, 'Lun - Dom', '07:30:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(168, 54, 'Lun - Dom', '11:00:00', '23:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(169, 53, 'Lun - Dom', '09:00:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(170, 50, 'Lun - Dom', '11:00:00', '23:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(171, 45, 'Lun - Dom', '09:00:00', '20:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(172, 44, 'Lun - Dom', '07:30:00', '22:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(173, 38, 'Lun - Dom', '11:00:00', '23:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(174, 21, 'Lun - Dom', '15:00:00', '22:30:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(175, 20, 'Lun - Dom', '11:00:00', '23:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(176, 9, 'Lun - Dom', '11:00:00', '23:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(178, 6, 'Lun - Dom', '09:00:00', '18:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(179, 4, 'Lun - Dom', '09:00:00', '18:00:00', NULL, NULL, 1, 'ica', NULL, '2019-05-24 05:00:00', '2019-05-28 21:54:08'),
(180, NULL, NULL, NULL, NULL, '2019-07-15', '2019-07-31', 1, 'ica', 7, '2019-05-28 21:54:08', '2019-07-14 13:04:07'),
(181, 113, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(182, 114, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(183, 115, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(184, 116, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(185, 117, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(186, 118, 'Lun - Dom', '10:00:00', '21:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-06-03 15:00:12'),
(187, 119, 'Lun - Dom', '10:00:00', '20:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-31 21:08:03'),
(188, 120, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(189, 121, 'Sábados', '09:00:00', '13:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-31 21:11:41'),
(190, 122, 'Sábados', '09:00:00', '13:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-31 21:14:26'),
(191, 123, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(192, 124, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(193, 125, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(194, 126, 'Sábados', '09:00:00', '13:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-31 21:24:27'),
(195, 127, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(196, 128, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(197, 129, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(198, 130, 'Lun - Dom', '14:30:00', '22:30:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-31 21:27:26'),
(199, 131, 'Lun - Dom', '10:00:00', '21:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-31 21:27:55'),
(200, 132, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(201, 133, 'Lun - Dom', '09:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-31 21:28:20'),
(202, 134, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(203, 135, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(204, 136, 'Lun - Dom', '09:30:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-06-03 15:01:23'),
(205, 137, 'Lun - Dom', '12:45:00', '21:40:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-06-03 15:02:03'),
(206, 138, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(207, 139, 'Lun - Dom', '09:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-06-03 15:02:35'),
(208, 140, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(209, 141, 'Lun - Dom', '09:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-06-03 15:02:56'),
(210, 142, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(211, 143, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(212, 144, 'Dom y Feriados', '08:00:00', '13:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-06-03 15:04:53'),
(213, 145, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(214, 146, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(215, 147, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(216, 148, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(217, 149, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(218, 150, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(219, 151, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(220, 152, 'Lun - Dom', '09:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-06-03 15:07:36'),
(221, 153, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(222, 154, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(223, 155, 'Lun - Dom', '08:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-06-03 15:09:35'),
(224, 156, 'Lun - Dom', '09:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-31 21:32:33'),
(225, 157, 'Lun - Dom', '09:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-31 21:32:54'),
(226, 158, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(227, 159, 'Lun - Dom', '11:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-06-03 15:26:09'),
(228, 160, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(229, 161, 'Lun - Dom', '11:00:00', '23:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-06-03 15:25:37'),
(230, 162, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(231, 163, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(232, 164, 'Lun - Dom', '09:00:00', '22:10:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-06-03 15:10:37'),
(233, 165, 'Lun - Dom', '09:00:00', '21:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-06-03 15:24:49'),
(234, 166, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(235, 167, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(236, 168, 'Lun - Dom', '08:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-06-03 15:23:56'),
(237, 169, 'Lun - Dom', '08:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-06-03 15:23:24'),
(238, 170, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(239, 171, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(240, 172, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(241, 173, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(242, 174, 'Vie - Dom', '11:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-06-03 15:19:24'),
(243, 175, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(244, 176, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(245, 177, 'Lun - Dom', '11:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-06-03 15:12:54'),
(246, 178, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(247, 179, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(248, 180, 'Lun - Dom', '12:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-06-03 15:12:30'),
(249, 181, 'Lun - Dom', '10:30:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-06-03 15:12:06'),
(250, 182, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(251, 183, 'Vie - Dom', '11:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-06-03 15:17:12'),
(252, 184, 'Sábados', '13:00:00', '18:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-06-03 15:15:11'),
(253, 185, 'Sábados', '09:30:00', '13:30:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-06-03 15:13:41'),
(254, 186, 'Lun - Dom', '08:30:00', '19:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-31 21:35:21'),
(255, 187, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(256, 188, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(257, 189, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(258, 190, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(259, 191, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(260, 192, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(261, 193, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(262, 194, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(263, 195, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(264, 196, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(265, 197, 'Lun - Dom', '09:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-06-03 15:11:03'),
(266, 198, 'Lun - Dom', '10:00:00', '22:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-28 21:54:00', '2019-05-28 21:54:00'),
(267, 121, 'Lun - Vie', '09:00:00', '18:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-31 21:09:37', '2019-05-31 21:11:54'),
(268, 122, 'Lun - Vie', '09:00:00', '18:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-31 21:14:45', '2019-05-31 21:15:16'),
(269, 126, 'Lun - Vie', '08:30:00', '18:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-05-31 21:24:56', '2019-05-31 21:25:18'),
(270, 144, 'Sábados', '06:00:00', '20:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-06-03 15:05:33', '2019-06-03 15:05:33'),
(271, 144, 'Lun - Vie', '05:30:00', '23:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-06-03 15:06:03', '2019-06-03 15:06:03'),
(272, 185, 'Lun - Vie', '09:30:00', '18:30:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-06-03 15:14:12', '2019-06-03 15:14:12'),
(273, 184, 'Lun - Vie', '13:00:00', '20:00:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-06-03 15:15:53', '2019-06-03 15:15:53'),
(274, 183, 'Lun - Jue', '11:00:00', '21:45:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-06-03 15:18:02', '2019-06-03 15:18:02'),
(275, 174, 'Lun - Jue', '11:00:00', '21:30:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-06-03 15:20:20', '2019-06-03 15:20:20'),
(276, 7, 'Sábado', '09:00:00', '13:00:00', NULL, NULL, 1, 'ica', NULL, '2019-06-05 23:06:40', '2019-06-05 23:06:40'),
(277, 7, 'Lun - Vie', '09:00:00', '18:00:00', NULL, NULL, 1, 'ica', NULL, '2019-06-05 23:07:35', '2019-06-05 23:07:35'),
(278, 200, 'Lun - Dom', '09:00:00', '22:10:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-06-11 15:41:23', '2019-06-11 15:41:23'),
(279, 199, 'Lun - Dom', '09:00:00', '22:10:00', NULL, NULL, 1, 'cajamarca', NULL, '2019-06-11 15:51:38', '2019-06-11 15:51:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `seccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagen` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interno` int(11) DEFAULT NULL,
  `ciudad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `images`
--

INSERT INTO `images` (`id`, `seccion`, `titulo`, `imagen`, `link`, `interno`, `ciudad`, `estado`, `created_at`, `updated_at`) VALUES
(5, 'FOOTER', 'facebook', '310120191139_icon-facebook.png', '#376236609183284', NULL, 'ica', 1, '2019-01-23 19:00:00', '2019-04-26 21:16:41'),
(6, 'FOOTER', 'facebook', '310120191139_icon-facebook.png', '#115253295184913', NULL, 'cajamarca', 1, '2019-01-23 19:00:00', '2019-06-25 17:36:15'),
(7, 'FOOTER', 'twitter', '310120191145_icon-twitter.png', 'https://twitter.com/CCElQuinde?lang=es', NULL, 'ica', 1, '2019-01-23 10:00:00', '2019-02-19 04:47:54'),
(8, 'FOOTER', 'twitter', '310120191145_icon-twitter.png', 'https://twitter.com/CCElQuinde?lang=es', NULL, 'cajamarca', 1, '2019-01-23 10:00:00', '2019-06-25 17:35:25'),
(9, 'FOOTER', 'instagram', '310120191148_icon-instagram.png', 'https://www.instagram.com/explore/locations/1021211681/el-quinde-shopping-plaza-ica/', NULL, 'ica', 0, '2019-01-23 10:00:00', '2019-06-26 11:51:41'),
(10, 'FOOTER', 'instagram', '310120191148_icon-instagram.png', 'https://www.instagram.com/explore/locations/542684733/el-quinde-cajamarca/', NULL, 'cajamarca', 0, '2019-01-23 10:00:00', '2019-06-25 17:23:44'),
(11, 'FOOTER', 'youtube', '310120191149_icon-youtube.png', NULL, NULL, 'ica', 0, '2019-01-23 10:00:00', '2019-06-26 11:52:13'),
(12, 'FOOTER', 'youtube', '310120191149_icon-youtube.png', NULL, NULL, 'cajamarca', 0, '2019-01-23 10:00:00', '2019-06-25 17:23:47'),
(13, 'HOME', NULL, '310120191257_background-home2.png', NULL, NULL, 'ica', 0, '2019-01-23 10:00:00', '2019-06-04 23:00:42'),
(14, 'HOME', NULL, '310120191257_background-home2.png', NULL, NULL, 'cajamarca', 0, '2019-01-23 10:00:00', '2019-06-04 22:55:58'),
(29, 'PROMOCIONES', NULL, '5cb4df9ded541_CAX promociones-01.png', NULL, NULL, 'cajamarca', 0, '2019-04-15 19:46:37', '2019-07-12 15:08:40'),
(30, 'PROMOCIONES', NULL, '5cb4dfbe2a432_ICA promociones-01.png', NULL, NULL, 'ica', 1, '2019-04-15 19:47:10', '2019-07-14 13:03:51'),
(32, 'EVENTOS', NULL, '5cb4f2408a47a_bannersEVENTOS-CAX2.png', NULL, NULL, 'cajamarca', 0, '2019-04-15 21:06:08', '2019-04-17 15:03:20'),
(33, 'NOSOTROS', NULL, '5cb4f9bd04a18_ICA fachada.png', NULL, NULL, 'ica', 1, '2019-04-15 21:38:05', '2019-04-15 21:38:05'),
(34, 'NOSOTROS', NULL, '5cb4fc70c0066_CAJAMARCA fachada2.png', NULL, NULL, 'cajamarca', 1, '2019-04-15 21:49:36', '2019-04-15 21:49:36'),
(35, 'EVENTOS', NULL, '5cb74030a8279_CAJAMARCA-bannerprincEVENTO.PNG', NULL, NULL, 'cajamarca', 0, '2019-04-17 15:03:12', '2019-06-24 18:02:26'),
(36, 'EVENTOS', NULL, '5cb74ada54dc4_ICAbennerprincEVENTOS.PNG', NULL, NULL, 'ica', 0, '2019-04-17 15:48:42', '2019-06-24 18:01:45'),
(37, 'CARTELERA', NULL, '5cb7923e52c75_ICA-CAXcines-B.PNG', NULL, NULL, 'ica', 1, '2019-04-17 20:53:18', '2019-04-17 20:53:18'),
(38, 'CARTELERA', NULL, '5cb792474a4d4_ICA-CAXcines-A.PNG', NULL, NULL, 'ica', 1, '2019-04-17 20:53:27', '2019-04-17 20:53:27'),
(39, 'CARTELERA', NULL, '5cb792756e129_ICA-CAXcines-B.PNG', NULL, NULL, 'cajamarca', 1, '2019-04-17 20:54:13', '2019-04-17 20:54:13'),
(40, 'CARTELERA', NULL, '5cb7927c4debd_ICA-CAXcines-A.PNG', NULL, NULL, 'cajamarca', 1, '2019-04-17 20:54:20', '2019-04-17 20:54:20'),
(43, 'TIENDAS', NULL, '5ce5d8bde8c17_banner-tiendas3.png', NULL, NULL, 'ica', 0, '2019-05-22 23:18:21', '2019-06-28 14:10:48'),
(44, 'TIENDAS', NULL, '5ce5d8d9f2cdd_banner-tiendas3.png', NULL, NULL, 'cajamarca', 0, '2019-05-22 23:18:49', '2019-06-28 14:11:24'),
(46, 'HOME', NULL, '5cf6f74ee7feb_CAJAMARCA fachada2.png', NULL, NULL, 'cajamarca', 1, '2019-06-04 22:57:18', '2019-07-05 12:03:12'),
(47, 'HOME', NULL, '5cf6f815906db_ICA fachada.png', NULL, NULL, 'ica', 1, '2019-06-04 23:00:37', '2019-07-03 12:09:59'),
(48, 'EVENTOS', NULL, '5d1156554b875_eventos.png', NULL, NULL, 'ica', 0, '2019-06-24 18:01:41', '2019-06-28 14:09:42'),
(49, 'EVENTOS', NULL, '5d11567e0cef6_eventos.png', NULL, NULL, 'cajamarca', 0, '2019-06-24 18:02:22', '2019-06-28 14:08:54'),
(50, 'EVENTOS', NULL, '5d1665dcacbb1_eventos.png', NULL, NULL, 'cajamarca', 1, '2019-06-28 14:09:16', '2019-06-28 14:09:16'),
(51, 'EVENTOS', NULL, '5d166601d7d01_eventos.png', NULL, NULL, 'ica', 1, '2019-06-28 14:09:53', '2019-06-28 14:09:53'),
(52, 'TIENDAS', NULL, '5d1666444caa4_tiendas.png', NULL, NULL, 'ica', 1, '2019-06-28 14:11:00', '2019-06-28 14:11:00'),
(53, 'TIENDAS', NULL, '5d1666672ffad_tiendas.png', NULL, NULL, 'cajamarca', 1, '2019-06-28 14:11:35', '2019-06-28 14:11:35'),
(62, 'HOME', NULL, '5d1f835c59004_CAX2.png', NULL, NULL, 'cajamarca', 1, '2019-07-05 12:05:32', '2019-07-05 12:05:32'),
(63, 'HOME', NULL, '5d1f837b7f7ae_ICA2.png', NULL, NULL, 'ica', 1, '2019-07-05 12:06:03', '2019-07-05 12:06:03'),
(67, 'PROMOCIONES', NULL, '5d28f45f8fae6_Banner-CX.png', NULL, NULL, 'cajamarca', 1, '2019-07-12 15:58:07', '2019-07-12 15:58:07'),
(68, 'PROMOCIONES', NULL, '5d28f4ce706a2_ICA-BannersCAB.png', NULL, NULL, 'ica', 0, '2019-07-12 15:59:58', '2019-07-14 13:03:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `seccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `horarios` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `seccion`, `ciudad`, `slug`, `descripcion`, `horarios`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'HOME', 'ica', NULL, NULL, NULL, 1, '2019-01-23 10:00:00', '2019-01-23 10:00:00'),
(2, 'HOME', 'cajamarca', NULL, NULL, NULL, 1, '2019-01-23 10:00:00', '2019-01-23 10:00:00'),
(3, 'NOSOTROS', 'ica', NULL, '<p>Pertenecemos a <a href=\"http://www.parauco.com\" target=\"_blank\">Parque Arauco</a>,&nbsp;uno de los principales desarrolladores y operadores de activos inmobiliarios multiformato de la Regi&oacute;n Andina&nbsp;con presencia en Chile, Colombia y Per&uacute;. Con 7 a&ntilde;os de funcionamiento en la ciudad de Ica, El Quinde Shopping Plaza es el primer centro&nbsp;comercial de la ciudad, un &iacute;cono referencial de entretenimiento y moda. Contamos con importantes tiendas ancla, cine y una oferta comercial y de entretenimiento perfecta para toda la familia.</p>', '<table border=\"0\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td>\n			<h3>MAESTRO</h3>\n\n			<p>De lunes a s&aacute;bado 7:30 a.m. a 10:00 p.m.<br />\n			Domingos y feriados 8:00 a.m. a 10:00 p.m.</p>\n			</td>\n			<td>\n			<h3>BANCOS: (BCP, BBVA, Scotiabank, BanBif)</h3>\n\n			<p>De lunes a viernes de: 9:00 a.m. a 6:00 p.m.</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<h3>INTERBANK</h3>\n\n			<p>De lunes a s&aacute;bado de 10:00 a.m. a 8:00 p.m.</p>\n			</td>\n			<td>\n			<h3>METRO</h3>\n\n			<p>De lunes a domingo de 08:00 a.m. a 10:00 p.m.</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<h3>FALABELLA - RIPLEY - PARIS</h3>\n\n			<p>De lunes a domingo de 11:00 a.m. a 10:00 p.m.</p>\n			</td>\n			<td>\n			<h3>OTRAS TIENDAS Y M&Oacute;DULOS</h3>\n\n			<p>De lunes a domingo de 10:00 a.m. a 10:00 p.m.</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<h3>PATIO DE COMIDAS</h3>\n\n			<p>De lunes a domingo de 12:00 p.m. a 11:00 p.m.</p>\n			</td>\n			<td>\n			<h3>CINERAMA</h3>\n\n			<p>De lunes a domingo de 03:00 p.m. a 11:00 p.m.</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>', 1, '2019-01-23 10:00:00', '2019-06-26 11:27:42'),
(4, 'NOSOTROS', 'cajamarca', NULL, '<p>Pertenecemos a <a href=\"http://www.parauco.com\" target=\"_blank\">Parque Arauco</a>, uno de los principales desarrolladores y operadores de activos inmobiliarios multiformato de la Regi&oacute;n Andina con presencia en Chile, Colombia y Per&uacute;. Con 13 a&ntilde;os de funcionamiento en la ciudad de Cajamarca, El Quinde Shopping Plaza es el primer centro comercial de la ciudad, un &iacute;cono referencial de entretenimiento y moda. Contamos con importantes tiendas ancla, cine y una oferta comercial y de entretenimiento perfecta para toda la familia.</p>', '<table border=\"0\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td>\n			<h3>INTERBANK</h3>\n\n			<p>De lunes a s&aacute;bado de 10:00 a.m. a 8:00 p.m.</p>\n			</td>\n			<td>\n			<h3>BANCOS: (BCP, BBVA, Scotiabank, Banco Falabella)</h3>\n\n			<p>De lunes a viernes de: 9:00 a.m. a 6:00 p.m.</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<h3>FALABELLA - PARIS</h3>\n\n			<p>De lunes a domingo de 11:00 a.m. a 10:00 p.m.</p>\n			</td>\n			<td>\n			<h3>METRO</h3>\n\n			<p>De lunes a domingo de 08:00 a.m. a 10:00 p.m.</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<h3>PATIO DE COMIDAS</h3>\n\n			<p>De lunes a domingo de 12:00 p.m. a 11:00 p.m.</p>\n			</td>\n			<td>\n			<h3>OTRAS TIENDAS Y M&Oacute;DULOS</h3>\n\n			<p>De lunes a domingo de 10:00 a.m. a 10:00 p.m.</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<h3>CINERAMA</h3>\n\n			<p>De lunes a domingo de 03:00 p.m. a 11:00 p.m.</p>\n			</td>\n			<td>\n			<h3>&nbsp;</h3>\n			</td>\n		</tr>\n	</tbody>\n</table>', 1, '2019-01-23 10:00:00', '2019-06-26 12:11:52'),
(5, 'TIENDAS', 'ica', NULL, NULL, NULL, 1, '2019-01-23 10:00:00', '2019-01-23 10:00:00'),
(6, 'TIENDAS', 'cajamarca', NULL, NULL, NULL, 1, '2019-01-23 10:00:00', '2019-01-23 10:00:00'),
(7, 'PROMOCIONES', 'ica', NULL, NULL, NULL, 1, '2019-01-23 10:00:00', '2019-01-23 10:00:00'),
(8, 'PROMOCIONES', 'cajamarca', NULL, NULL, NULL, 1, '2019-01-23 10:00:00', '2019-01-23 10:00:00'),
(9, 'EVENTOS', 'ica', NULL, NULL, NULL, 1, '2019-01-23 10:00:00', '2019-01-23 10:00:00'),
(10, 'EVENTOS', 'cajamarca', NULL, NULL, NULL, 1, '2019-01-23 10:00:00', '2019-01-23 10:00:00'),
(11, 'CARTELERA', 'ica', NULL, NULL, NULL, 1, '2019-01-23 10:00:00', '2019-01-23 10:00:00'),
(12, 'CARTELERA', 'cajamarca', NULL, NULL, NULL, 1, '2019-01-23 10:00:00', '2019-01-23 10:00:00'),
(13, 'FOOTER', 'ica', NULL, NULL, NULL, 1, '2019-01-23 19:00:00', '2019-01-23 19:00:00'),
(14, 'FOOTER', 'cajamarca', NULL, NULL, NULL, 1, '2019-01-23 15:00:00', '2019-01-23 15:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_11_29_194321_create_tiendas_table', 1),
(4, '2019_01_14_233253_create_promotions_table', 1),
(5, '2019_01_21_162603_create_categoria_tiendas_table', 1),
(6, '2019_01_21_164140_create_horarios_table', 1),
(7, '2019_01_22_215623_create_menus_table', 1),
(8, '2019_01_22_221406_create_images_table', 1),
(9, '2019_01_23_132035_create_events_table', 1),
(10, '2019_01_23_173459_create_billboards_table', 1),
(11, '2019_02_01_175632_create_actors_table', 1),
(12, '2019_02_06_212911_create_registros_table', 2),
(13, '2019_05_13_160920_create_cities_table', 3),
(16, '2019_05_17_195152_create_registro_tiendas_table', 4),
(18, '2019_06_04_104439_create_detalle_categoria_tiendas_table', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promotions`
--

CREATE TABLE `promotions` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagen` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha` date NOT NULL,
  `estado` int(11) NOT NULL,
  `ciudad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `promotions`
--

INSERT INTO `promotions` (`id`, `slug`, `nombre`, `imagen`, `descripcion`, `fecha`, `estado`, `ciudad`, `created_at`, `updated_at`) VALUES
(21, 'promo-footloose', 'Promo Footloose', '5cb66c7aaf59a_FootLoose.png', '<p>*Promociones v&aacute;lidas hasta el 30/04/2019. *Ver restricciones en tienda.</p>', '2019-04-30', 0, 'cajamarca', '2019-04-16 23:59:54', '2019-06-25 11:27:56'),
(22, 'promo-mifarma', 'Promo mifarma', '5cb66cf59d1bf_Mifarma.png', '<p>Promociones v&aacute;lidas hasta el 30/04/2019. Ver restricciones en tienda.</p>', '2019-04-30', 0, 'cajamarca', '2019-04-17 00:01:57', '2019-06-25 11:20:59'),
(23, 'promo-sun-time', 'Promo Sun Time', '5cb66d5e9956e_SunTime.png', '<p>Promociones v&aacute;lidas hasta el 30/04/2019. Ver restricciones en tienda.</p>', '2019-04-30', 0, 'cajamarca', '2019-04-17 00:03:42', '2019-06-25 11:21:03'),
(24, 'promo-mae-alcott', 'Promo Mae Alcott', '5cb66d832d497_Mae-Alcott.png', '<p>En c&oacute;digos seleccionados. Sobre precios de etiqueta. No incluye consignaci&oacute;n. Imagen referencial.</p>', '2019-04-30', 0, 'cajamarca', '2019-04-17 00:04:19', '2019-06-25 11:21:07'),
(27, 'billetera-de-cuero', 'Billetera de cuero', '5d124a9299b32_CAX-bata-1.png', '<p>Por compras mayores a S/89.90 en cualquier calzado, ll&eacute;vate una billetera a tan solo S/29.90. Precio regular: S/49.90. Vigencia hasta el 07 de julio y/o hasta agotar stock. El promocional es v&aacute;lido en los siguientes art&iacute;culos de accesorios (991-3982). Acumulable con otras promociones. Promoci&oacute;n sujeta a cambio sin previo aviso.</p>', '2019-06-25', 0, 'cajamarca', '2019-06-25 11:23:46', '2019-07-08 09:44:23'),
(28, 'bi-pack-de-medias', 'Bi pack de medias', '5d124be798976_CAX-bata-2.png', '<p>Por compras mayores a S/89.90 en cualquier calzado, ll&eacute;vate un bi-pack de medias a tan solo S/9.90. Precio regular: S/12.90. Vigencia hasta el 07 de julio y/o hasta agotar stock. El promocional es v&aacute;lido en los siguientes art&iacute;culos de accesorios (999-0944). Acumulable con otras promociones. Promoci&oacute;n sujeta a cambio sin previo aviso.</p>', '2019-06-25', 0, 'cajamarca', '2019-06-25 11:29:27', '2019-07-08 09:44:19'),
(29, 'footclose-1', 'FootClose 1', '5d124c422c3c3_CAX-footloose.png', '<p>Promoci&oacute;n de hasta 30% de descuento en zapatillas para mujer, hombres y ni&ntilde;os en modelos seleccionados. V&aacute;lido del 01 al 31 de Julio de 2019. No acumulable con otras promociones. V&aacute;lido solo en tiendas f&iacute;sicas seleccionadas. Disponibilidad de stock seg&uacute;n zona geogr&aacute;fica.</p>', '2019-07-01', 1, 'cajamarca', '2019-06-25 11:30:58', '2019-07-08 09:46:42'),
(30, 'footclose-2', 'FootClose 2', '5d124c7c96429_CAX-footlooseB.png', '<p>40% de dscto en el 2do par en zapatos, botas y botines para mujer, hombres y ni&ntilde;os. Promoci&oacute;n v&aacute;lida del 01 al 15 de Julio, 2do par con 40% de descuento en zapatos, botines y botas de las marcas Footloose, Top Model y Renzo Renzini de las categor&iacute;as hombres, mujeres y ni&ntilde;os, combinables entre s&iacute;. Descuento aplica al producto de menor valor, no acumulable con otras promociones. V&aacute;lido en tiendas f&iacute;sicas. Stock disponible seg&uacute;n zona geogr&aacute;fica.</p>', '2019-07-01', 1, 'cajamarca', '2019-06-25 11:31:56', '2019-07-08 09:46:50'),
(31, 'viale', 'Viale', '5d124cb472d88_ CAX-vialé.png', '<p>Te regalamos S/30 de descuento en calzado de caballeros. Productos seleccionados Legal: Promoci&oacute;n v&aacute;lida hasta el 30 de junio y/o hasta agotar stock en productos seleccionados. El descuento aplica sobre precio de lista y en tu pr&oacute;xima compra. No acumulable con otras promociones, ofertas ni descuentos. No se aceptan cambio ni devoluciones.</p>', '2019-06-25', 0, 'cajamarca', '2019-06-25 11:32:52', '2019-07-04 12:57:32'),
(32, 'american-brands', 'American Brands pantalones', '5d12594cd3ce2_ICA-americanbrands-1.png', '<p>American Brands pantalones</p>', '2019-07-16', 1, 'ica', '2019-06-25 12:26:36', '2019-07-14 13:07:04'),
(33, 'american-brands-camisas', 'American Brands camisas', '5d1259a4291bb_ICA-americanbrands-2.png', '<p>American Brands camisas</p>', '2019-07-16', 1, 'ica', '2019-06-25 12:28:04', '2019-07-14 13:05:17'),
(34, 'pasarella', 'Pasarella', '5d1259d4a6d40_ICA-pasarella.png', '<p>Pasarella</p>', '2019-07-16', 1, 'ica', '2019-06-25 12:28:52', '2019-07-14 13:05:37'),
(35, 'adidas', 'Adidas', '5d1259f3da0de_ICA-adidas.png', '<p>Adidas</p>', '2019-07-16', 1, 'ica', '2019-06-25 12:29:23', '2019-07-14 13:05:54'),
(36, 'calimond', 'Calimond', '5d125a1ee9fc5_ICA-calimod.png', '<p>Calimond</p>', '2019-07-16', 1, 'ica', '2019-06-25 12:30:06', '2019-07-14 13:06:12'),
(37, 'the-cult', 'The Cult', '5d125a4082bdd_ICA-the-cult.png', '<p>The Cult</p>', '2019-07-16', 1, 'ica', '2019-06-25 12:30:40', '2019-07-14 13:06:22'),
(38, 'tiendas-Él', 'Tiendas ÉL', '5d125a61527fa_ ICA-tiendas-él.png', '<p>Tiendas &Eacute;L</p>', '2019-07-16', 1, 'ica', '2019-06-25 12:31:13', '2019-07-14 13:06:33'),
(39, 'cierrapuertas-h&m', 'Cierrapuertas H&M', '5d28e96959197_CAXcierrapuertas-01.png', '<p>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Cajamarca este s&aacute;bado 13 y domingo 14 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</p>', '2019-07-13', 1, 'cajamarca', '2019-07-12 15:11:21', '2019-07-12 15:52:20'),
(40, 'promocion-2', 'Promocion 2', '5d28ea124f4dd_CAXcierrapuertas-02.png', '<p>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Cajamarca este s&aacute;bado 13 y domingo 14 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</p>', '2019-07-13', 1, 'cajamarca', '2019-07-12 15:14:10', '2019-07-12 15:52:28'),
(41, 'promocion-3', 'Promocion 3', '5d28ea43b8b52_CAXcierrapuertas-03.png', '<p>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Cajamarca este s&aacute;bado 13 y domingo 14 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</p>', '2019-07-13', 1, 'cajamarca', '2019-07-12 15:14:59', '2019-07-12 15:52:35'),
(42, 'promocion-4', 'Promocion 4', '5d28ea5b3e251_CAXcierrapuertas-04.png', '<p>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Cajamarca este s&aacute;bado 13 y domingo 14 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</p>', '2019-07-13', 1, 'cajamarca', '2019-07-12 15:15:23', '2019-07-12 15:52:43'),
(44, 'ef-perfumes', 'EF Perfumes', '5d28eac7e4966_ICAcierrapuertas-01.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:17:11', '2019-07-12 16:12:32'),
(45, 'promocion-5', 'Promocion 5', '5d28eace3b1b9_CAXcierrapuertas-05.png', '<p>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Cajamarca este s&aacute;bado 13 y domingo 14 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</p>', '2019-07-13', 1, 'cajamarca', '2019-07-12 15:17:18', '2019-07-12 15:53:09'),
(46, 'promoción-6', 'Promoción 6', '5d28eb3405de1_CAXcierrapuertas-06.png', '<p>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Cajamarca este s&aacute;bado 13 y domingo 14 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</p>', '2019-07-13', 1, 'cajamarca', '2019-07-12 15:19:00', '2019-07-12 15:53:17'),
(47, 'promoción-7', 'Promoción 7', '5d28eb45d92ca_CAXcierrapuertas-07.png', '<p>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Cajamarca este s&aacute;bado 13 y domingo 14 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</p>', '2019-07-13', 1, 'cajamarca', '2019-07-12 15:19:17', '2019-07-12 15:53:24'),
(48, 'd-pílate', 'D-pílate', '5d28eb4a46fd3_ICAcierrapuertas-02.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:19:22', '2019-07-12 16:08:03'),
(49, 'premiere', 'Premiere', '5d28eb6d99612_ICAcierrapuertas-03.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:19:57', '2019-07-12 15:52:08'),
(50, 'sally-beauty', 'Sally Beauty', '5d28eb871c9f1_ICAcierrapuertas-04.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:20:23', '2019-07-12 16:05:53'),
(51, 'maybelline', 'Maybelline', '5d28eb9acd879_ICAcierrapuertas-05.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:20:42', '2019-07-12 15:51:59'),
(52, 'promoción-8', 'Promoción 8', '5d28ebabc5970_CAXcierrapuertas-08.png', '<p>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Cajamarca este s&aacute;bado 13 y domingo 14 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</p>', '2019-07-13', 1, 'cajamarca', '2019-07-12 15:20:59', '2019-07-12 15:53:32'),
(53, 'storegames', 'StoreGames', '5d28ebef8eb60_ICAcierrapuertas-06.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:22:07', '2019-07-12 16:08:18'),
(54, 'promoción-9', 'Promoción 9', '5d28ec2433f6c_CAXcierrapuertas-09.png', '<p>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Cajamarca este s&aacute;bado 13 y domingo 14 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</p>', '2019-07-13', 1, 'cajamarca', '2019-07-12 15:23:00', '2019-07-12 15:53:41'),
(55, 'promocion-10', 'Promocion 10', '5d28ec3fc812f_CAXcierrapuertas-10.png', '<p>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Cajamarca este s&aacute;bado 13 y domingo 14 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</p>', '2019-07-13', 1, 'cajamarca', '2019-07-12 15:23:27', '2019-07-12 15:53:48'),
(56, 'promocion-11', 'Promocion 11', '5d28ec5b906aa_CAXcierrapuertas-11.png', '<p>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Cajamarca este s&aacute;bado 13 y domingo 14 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</p>', '2019-07-13', 1, 'cajamarca', '2019-07-12 15:23:55', '2019-07-12 15:53:59'),
(57, 'promo', 'promo', '5d28ec811c7eb_ICAcierrapuertas-07.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:24:33', '2019-07-12 16:08:28'),
(58, 'promoción-12', 'Promoción 12', '5d28ec826bfc0_CAXcierrapuertas-12.png', '<p>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Cajamarca este s&aacute;bado 13 y domingo 14 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</p>', '2019-07-13', 1, 'cajamarca', '2019-07-12 15:24:34', '2019-07-12 15:54:09'),
(59, 'promo', 'promo', '5d28ec9034b9e_ICAcierrapuertas-08.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:24:48', '2019-07-12 16:11:05'),
(60, 'promoción-13', 'Promoción 13', '5d28ec9b341d7_CAXcierrapuertas-13.png', '<p>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Cajamarca este s&aacute;bado 13 y domingo 14 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</p>', '2019-07-13', 1, 'cajamarca', '2019-07-12 15:24:59', '2019-07-12 15:54:19'),
(61, 'promocion-14', 'Promocion 14', '5d28ecc181461_CAXcierrapuertas-14.png', '<p>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Cajamarca este s&aacute;bado 13 y domingo 14 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</p>', '2019-07-13', 1, 'cajamarca', '2019-07-12 15:25:37', '2019-07-12 15:54:34'),
(62, 'promoción-15', 'Promoción 15', '5d28ece16e017_CAXcierrapuertas-15.png', '<p>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Cajamarca este s&aacute;bado 13 y domingo 14 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</p>', '2019-07-13', 1, 'cajamarca', '2019-07-12 15:26:09', '2019-07-12 15:54:47'),
(63, 'promoción-16', 'Promoción 16', '5d28ed05045c9_CAXcierrapuertas-16.png', '<p>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Cajamarca este s&aacute;bado 13 y domingo 14 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</p>', '2019-07-13', 1, 'cajamarca', '2019-07-12 15:26:45', '2019-07-12 15:54:56'),
(64, 'promoción-17', 'Promoción 17', '5d28ed1a825cd_CAXcierrapuertas-17.png', '<p>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Cajamarca este s&aacute;bado 13 y domingo 14 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</p>', '2019-07-13', 1, 'cajamarca', '2019-07-12 15:27:06', '2019-07-12 15:55:06'),
(65, 'promo', 'promo', '5d28ed26b932e_ICAcierrapuertas-09.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:27:18', '2019-07-12 16:08:34'),
(66, 'promo', 'promo', '5d28ed3411c99_ICAcierrapuertas-10.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:27:32', '2019-07-12 16:08:41'),
(67, 'promoción-18', 'Promoción 18', '5d28ed3e1120a_CAXcierrapuertas-18.png', '<p>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Cajamarca este s&aacute;bado 13 y domingo 14 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</p>', '2019-07-13', 1, 'cajamarca', '2019-07-12 15:27:42', '2019-07-12 15:55:14'),
(68, 'promo', 'promo', '5d28ed4699eb2_ICAcierrapuertas-11.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:27:50', '2019-07-12 15:52:15'),
(69, 'promoción-19', 'Promoción 19', '5d28ed5cdf653_CAXcierrapuertas-19.png', '<p>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Cajamarca este s&aacute;bado 13 y domingo 14 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</p>', '2019-07-13', 1, 'cajamarca', '2019-07-12 15:28:12', '2019-07-12 15:55:23'),
(70, 'promo', 'promo', '5d28ed7275199_ICAcierrapuertas-12.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:28:34', '2019-07-12 16:08:48'),
(71, 'promo', 'promo', '5d28ed8773bfe_ICAcierrapuertas-13.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:28:55', '2019-07-12 15:52:21'),
(72, 'promoción-20', 'Promoción 20', '5d28ed91be678_CAXcierrapuertas-20.png', '<p>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Cajamarca este s&aacute;bado 13 y domingo 14 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</p>', '2019-07-13', 1, 'cajamarca', '2019-07-12 15:29:05', '2019-07-12 15:55:32'),
(73, 'promo', 'promo', '5d28ed97c53d6_ICAcierrapuertas-14.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:29:11', '2019-07-12 16:06:00'),
(74, 'promo', 'promo', '5d28eda871371_ICAcierrapuertas-15.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:29:28', '2019-07-12 15:52:31'),
(75, 'promo', 'promo', '5d28edb5ea82d_ICAcierrapuertas-16.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:29:41', '2019-07-12 16:03:54'),
(76, 'promo', 'promo', '5d28edc5a826d_ICAcierrapuertas-17.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:29:57', '2019-07-12 16:12:46'),
(77, 'promo', 'promo', '5d28edd43aaa8_ICAcierrapuertas-18.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:30:12', '2019-07-12 16:08:54'),
(78, 'promoción-21', 'Promoción 21', '5d28edd98a527_CAXcierrapuertas-21.png', '<p>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Cajamarca este s&aacute;bado 13 y domingo 14 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</p>', '2019-07-13', 1, 'cajamarca', '2019-07-12 15:30:17', '2019-07-12 15:55:45'),
(79, 'promo', 'promo', '5d28ede58f9bf_ICAcierrapuertas-19.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:30:29', '2019-07-12 16:11:11'),
(80, 'promoción-22', 'Promoción 22', '5d28edee26765_CAXcierrapuertas-22.png', '<p>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Cajamarca este s&aacute;bado 13 y domingo 14 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</p>', '2019-07-13', 1, 'cajamarca', '2019-07-12 15:30:38', '2019-07-12 15:55:54'),
(81, 'promo', 'promo', '5d28edf4366dd_ICAcierrapuertas-20.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:30:44', '2019-07-12 16:04:07'),
(83, 'promoción-23', 'Promoción 23', '5d28ee0255ace_CAXcierrapuertas-23.png', '<p>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Cajamarca este s&aacute;bado 13 y domingo 14 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</p>', '2019-07-13', 1, 'cajamarca', '2019-07-12 15:30:58', '2019-07-12 15:56:03'),
(84, 'promo', 'promo', '5d28ee04a8b3a_ICAcierrapuertas-21.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:31:00', '2019-07-12 16:04:14'),
(85, 'promo', 'promo', '5d28ee0f82734_ICAcierrapuertas-22.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:31:11', '2019-07-12 16:04:22'),
(86, 'promo', 'promo', '5d28ee1bb957c_ICAcierrapuertas-23.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:31:23', '2019-07-12 16:04:29'),
(87, 'promo', 'promo', '5d28ee28aba0a_ICAcierrapuertas-24.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:31:36', '2019-07-12 16:08:59'),
(88, 'promo', 'promo', '5d28ee3911f30_ICAcierrapuertas-25.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:31:53', '2019-07-12 16:09:05'),
(89, 'promo', 'promo', '5d28ee49b24e7_ICAcierrapuertas-26.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:32:09', '2019-07-12 16:06:07'),
(90, 'promo', 'promo', '5d28ee5663035_ICAcierrapuertas-27.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:32:22', '2019-07-12 16:05:48'),
(91, 'promo', 'promo', '5d28ee9db9b0f_ICAcierrapuertas-28.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:33:33', '2019-07-12 16:09:15'),
(92, 'promo', 'promo', '5d28eeb4713d5_ICAcierrapuertas-29.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:33:56', '2019-07-12 16:04:37'),
(93, 'promo', 'promo', '5d28eec00f043_ICAcierrapuertas-30.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:34:08', '2019-07-12 16:10:42'),
(94, 'promo', 'promo', '5d28eef771489_ICAcierrapuertas-31.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:35:03', '2019-07-12 16:04:44'),
(95, 'promo', 'promo', '5d28ef04743bb_ICAcierrapuertas-32.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:35:16', '2019-07-12 16:04:49'),
(96, 'promo', 'promo', '5d28ef1650b3b_ICAcierrapuertas-33.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:35:34', '2019-07-12 16:04:55'),
(97, 'promo', 'promo', '5d28ef2881db5_ICAcierrapuertas-34.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:35:52', '2019-07-12 16:05:01'),
(98, 'promo', 'promo', '5d28ef36afeb1_ICAcierrapuertas-35.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:36:06', '2019-07-12 16:10:50'),
(99, 'promo', 'promo', '5d28ef44a4ed9_ICAcierrapuertas-36.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:36:20', '2019-07-12 15:51:47'),
(101, 'promo', 'promo', '5d28ef54423f2_ICAcierrapuertas-37.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:36:36', '2019-07-12 16:05:06'),
(102, 'promo', 'promo', '5d28ef628ab93_ICAcierrapuertas-38.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:36:50', '2019-07-12 16:05:12'),
(103, 'promo', 'promo', '5d28ef6dd4b35_ICAcierrapuertas-39.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:37:01', '2019-07-12 16:05:17'),
(104, 'promo', 'promo', '5d28ef78bae69_ICAcierrapuertas-40.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:37:12', '2019-07-12 16:10:55'),
(106, 'promo', 'promo', '5d28ef89a7ef5_ICAcierrapuertas-41.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:37:29', '2019-07-12 16:11:00'),
(107, 'promo', 'promo', '5d28ef94e0d1b_ICAcierrapuertas-42.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:37:40', '2019-07-12 16:05:23'),
(108, 'promo', 'promo', '5d28efa0bf0e1_ICAcierrapuertas-43.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:37:52', '2019-07-12 16:05:29'),
(109, 'promo', 'promo', '5d28efadc828b_ICAcierrapuertas-44.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:38:05', '2019-07-12 16:11:17'),
(110, 'promo', 'promo', '5d28efc09ba72_ICAcierrapuertas-45.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:38:24', '2019-07-12 16:05:36'),
(111, 'promo', 'promo', '5d28efda3bf3b_ICAcierrapuertas-46.png', '<p><strong>Promociones v&aacute;lidas solo para el Cierrapuertas en El Quinde Ica este s&aacute;bado 13 de julio. Ver restricciones y m&aacute;s detalle de las promociones en cada tienda.</strong></p>', '2019-07-13', 1, 'ica', '2019-07-12 15:38:50', '2019-07-12 16:05:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE `registros` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombres` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apellidos` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `celular` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `dni` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tyc` int(11) DEFAULT NULL,
  `estado` int(11) NOT NULL,
  `ciudad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `registros`
--

INSERT INTO `registros` (`id`, `nombres`, `apellidos`, `email`, `celular`, `fecha_nac`, `dni`, `tyc`, `estado`, `ciudad`, `created_at`, `updated_at`) VALUES
(78, 'prueba', 'prueba', 'w.viena14@gmail.com', '963258741', '2019-06-20', '12343343', 1, 1, 'ica', '2019-06-20 20:26:06', '2019-06-20 20:26:06'),
(79, 'qwfqwqw', 'wqfwqfqw', 'lcofre@la-agencia.pe', '999999999', '2019-06-06', '99999999', 1, 1, 'ica', '2019-06-21 09:54:12', '2019-06-21 09:54:12'),
(80, 'Cristina', 'Robinson', 'cristina_rf90@hotmail.com', '99', '1990-12-18', '46660672', 1, 1, 'ica', '2019-06-21 10:57:17', '2019-06-21 10:57:17'),
(82, 'qwfqwfwqfq', 'qwfwqfq', 'mail@mail.com', '89092838', '2019-06-22', '63463463', 1, 1, 'cajamarca', '2019-06-21 12:38:18', '2019-06-21 12:38:18'),
(84, 'María', 'Parra', 'mparra@gmail.com', '963852741', '1995-05-09', '08806569', 1, 1, 'ica', '2019-06-25 15:39:09', '2019-06-25 15:39:09'),
(85, 'fhfgdh', 'dsagdfgdf', 'cliente@fsdfs.es', '46456456456', '2020-05-04', '54645634', 1, 1, 'ica', '2019-06-26 11:57:08', '2019-06-26 11:57:08'),
(86, 'debora', 'casas', 'debora2510@hotmail.com', '98765432198797987', '2025-02-15', '54646465', 1, 1, 'ica', '2019-06-26 11:59:03', '2019-06-26 11:59:03'),
(90, 'ewqfffqf', 'wqfwqfqwfwq', 'webmaster@la-agencia.pe', '999999999', '1912-12-12', '99999998', 1, 1, 'ica', '2019-06-27 11:24:41', '2019-06-27 11:24:41'),
(91, 'Leslie Elizabeth', 'Polo soto', 'leslie_ilove_14@hotmail.com', '972021959', '1992-02-03', '47431407', 1, 1, 'cajamarca', '2019-06-30 09:25:06', '2019-06-30 09:25:06'),
(92, 'Kevin', 'Calua', 'kevinpoetaamor76@gmail.com', '949 873 499', '2000-08-03', '61325652', 1, 1, 'cajamarca', '2019-07-01 12:20:38', '2019-07-01 12:20:38'),
(93, 'Kattya', 'Chomba Sanchez', 'kattychomba@gmail.com', '920718920', '1992-09-09', '70923148', 1, 1, 'cajamarca', '2019-07-01 18:15:38', '2019-07-01 18:15:38'),
(94, 'Nadia', 'Castañeda Vargas', 'estrella_.v_13@hotmail.com', '930550528', '1995-10-06', '77691759', 1, 1, 'cajamarca', '2019-07-01 21:01:45', '2019-07-01 21:01:45'),
(95, 'Lisseth del Rocio', 'Mosclsl Flores', 'list27o5mf@gmail.com', '969938048', '2019-08-27', '70095754', 1, 1, 'ica', '2019-07-01 22:46:42', '2019-07-01 22:46:42'),
(96, 'Tania Elisa', 'Miranda valdez', 'briannacarebanana@gmail.com', '955483260', '1977-06-17', '21574553', 1, 1, 'ica', '2019-07-02 01:19:38', '2019-07-02 01:19:38'),
(97, 'Flor', 'Garay', 'flor6066@gmail.com', '920629793', '1998-12-27', '74160318', 1, 1, 'cajamarca', '2019-07-02 11:45:20', '2019-07-02 11:45:20'),
(98, 'Jeiner Michel', 'Flores Vargas', 'floresmichel2@gmail.com', '976149133', '1996-10-28', '73124664', 1, 1, 'cajamarca', '2019-07-02 19:25:03', '2019-07-02 19:25:03'),
(99, 'Jhimy Dante', 'Reyes Chávez', 'jhimydanterch@hotmail.com', '961124423', '1983-07-27', '41875033', 1, 1, 'cajamarca', '2019-07-02 20:29:08', '2019-07-02 20:29:08'),
(100, 'César', 'Correa Zambrano', 'cecozam_3@hotmail.com', '976593726', '1979-06-03', '26716379', 1, 1, 'cajamarca', '2019-07-03 00:14:06', '2019-07-03 00:14:06'),
(101, 'Janeth', 'Vasquez Reyes', 'japivare19@hotmail.com', '992930586', '1982-05-26', '41406039', 1, 1, 'cajamarca', '2019-07-03 07:24:15', '2019-07-03 07:24:15'),
(102, 'karina', 'M', 'kmeier@parauco.com', '998185645', '2019-07-03', '08223456', 1, 1, 'cajamarca', '2019-07-03 17:27:32', '2019-07-03 17:27:32'),
(103, 'Zoila Maria', 'Requelme Sanchez', 'zrequelmes16_1@unc.edu.pe', '950180613', '1997-12-02', '72212719', 1, 1, 'cajamarca', '2019-07-03 19:03:49', '2019-07-03 19:03:49'),
(104, 'Wilman Rafael', 'Arteaga Escobar', 'wilman_arteaga@hotmail.com', '961750933', '1970-02-26', '26681975', 1, 1, 'cajamarca', '2019-07-03 23:29:56', '2019-07-03 23:29:56'),
(105, 'RICHARD', 'QUISPE', 'RICHARDQV248@GMAIL.COM', '925999599', '1976-03-01', '21558736', 1, 1, 'ica', '2019-07-05 09:04:57', '2019-07-05 09:04:57'),
(106, 'Edith Mabel', 'Calua Julcapoma', 'mabelcj_edi@hotmail.com', '932284937', '2002-03-06', '74958217', 1, 1, 'cajamarca', '2019-07-05 17:03:42', '2019-07-05 17:03:42'),
(107, 'Emerson Edu', 'Escalante Falcon', 'edu.efalcon@gmail.com', '934813140', '1996-12-31', '74134747', 1, 1, 'ica', '2019-07-06 10:10:08', '2019-07-06 10:10:08'),
(108, 'Karen', 'Estrada', 'karen_j.e.a@hotmail.com', '976936892', '1991-10-22', '47060664', 1, 1, 'cajamarca', '2019-07-07 07:15:25', '2019-07-07 07:15:25'),
(109, 'Franklin Rafael', 'Gálvez arias', 'franklingalvezarias1221@gmail.com', '956059599', '1975-05-21', '21555063', 1, 1, 'ica', '2019-07-07 17:11:32', '2019-07-07 17:11:32'),
(110, 'Patricia', 'García', 'patriciagarciacasas@gmail.com', '977450611', '1970-09-22', '21528212', 1, 1, 'ica', '2019-07-07 23:15:37', '2019-07-07 23:15:37'),
(111, 'Lidia isabel', 'Rosas aquije', 'tuyyo_belen2011@hotmail.com', '986428175', '1993-09-11', '70473613', 1, 1, 'ica', '2019-07-08 15:43:39', '2019-07-08 15:43:39'),
(116, 'prueba la agencia', 'prueba', 'wviena@la-agencia.pe', '121415487', '2019-07-09', '14515454', 1, 1, 'cajamarca', '2019-07-09 10:29:40', '2019-07-09 10:29:40'),
(117, 'prueba la agencia', 'prueba', 'wviena.delaguila@gmail.com', '12346789', '2019-07-01', '32564444', 1, 1, 'ica', '2019-07-09 10:31:14', '2019-07-09 10:31:14'),
(118, 'sdvsd', 'dddddda', 'ads@gae', '24135', '1111-01-01', '12345678', 1, 1, 'ica', '2019-07-09 12:01:27', '2019-07-09 12:01:27'),
(119, 'qer', 'qwer', 'crisrobflo@gmail.com', '12345678', '9999-02-01', '34567891', 1, 1, 'ica', '2019-07-09 12:08:36', '2019-07-09 12:08:36'),
(120, 'BIANCA LISBET', 'MUÑOZ VILCHEZ', 'bianlis_01@hotmail.com', '935535726', '1993-01-01', '48465520', 1, 1, 'cajamarca', '2019-07-13 13:24:10', '2019-07-13 13:24:10'),
(121, 'Wilfredo', 'Muñoz Hernandez', 'Wiliansmh_@hotmail.com', '969531132', '2016-02-12', '41547306', 1, 1, 'ica', '2019-07-13 20:55:46', '2019-07-13 20:55:46'),
(122, 'Flor marleny', 'Chavez Castro', 'florrr_42@hotmail.com', '973382185', '2019-03-30', '44212796', 1, 1, 'cajamarca', '2019-07-27 16:25:14', '2019-07-27 16:25:14'),
(123, 'Ángela', 'Barreto', 'barreto@gmail.com', '987654321', '1992-07-09', '12345679', 1, 1, 'ica', '2019-08-01 10:40:06', '2019-08-01 10:40:06'),
(124, 'Carla', 'Linarres', 'carla2010@hotmail.com', '98765432', '1980-12-01', '23456789', 1, 1, 'cajamarca', '2019-08-01 10:47:52', '2019-08-01 10:47:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_tiendas`
--

CREATE TABLE `registro_tiendas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre_negocio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoria` int(11) DEFAULT NULL,
  `experiencia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `formato_negocio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion_negocio` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cc_negocio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_negocio2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto_ref` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre_contacto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido_contacto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_contacto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono_contacto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dni_contacto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `registro_tiendas`
--

INSERT INTO `registro_tiendas` (`id`, `nombre_negocio`, `categoria`, `experiencia`, `formato_negocio`, `descripcion_negocio`, `cc_negocio`, `cc_negocio2`, `foto_ref`, `nombre_contacto`, `apellido_contacto`, `email_contacto`, `telefono_contacto`, `dni_contacto`, `ciudad`, `created_at`, `updated_at`) VALUES
(51, 'Obsequios', 7, '7', 'Módulo', 'Tienda de regalos para toda ocasión', '', 'cajamarca', '5d216ba69d91f_images.png', 'Kluvi', 'Uvi', 'jofragika@gmail.com', '962568493', '42581914', 'cajamarca', '2019-07-06 22:48:54', '2019-07-06 22:48:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiendas`
--

CREATE TABLE `tiendas` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagen` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ubicacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categoria` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nivel` int(11) DEFAULT NULL,
  `telefono_contacto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_contacto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre_contacto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` int(11) NOT NULL,
  `ciudad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tiendas`
--

INSERT INTO `tiendas` (`id`, `slug`, `nombre`, `descripcion`, `logo`, `imagen`, `ubicacion`, `categoria`, `nivel`, `telefono_contacto`, `email_contacto`, `nombre_contacto`, `estado`, `ciudad`, `created_at`, `updated_at`) VALUES
(1, 'adidas', 'ADIDAS', 'Venta de calzado y accesorios deportivos.', 'logo-ica-adidas.jpg', '5cf530aec5182_ica-adidas.JPG', 'LC-107-109', '8', 1, '991643833', 'GISELA.GARILANO@ADIDAS-GROUP.COM', 'GISELA MONICA GARILONES HERNANDEZ', 1, 'ica', '2019-05-21 22:20:00', '2019-06-26 11:36:11'),
(2, 'autoplan', 'AUTOPLAN', 'Es una empresa administradora de fondos colectivos.', '5cec801c4a377_logo-ica-autoplan.jpg', 'ica-autoplan.jpg', 'ET-101', '2', 1, '950199071', 'ecornejo@autoplan.pe', 'Elvira Cornejo Beltran', 1, 'ica', '2019-05-21 22:20:00', '2019-06-04 21:53:57'),
(3, 'baby-infanti', 'BABY INFANTI', 'Venta de accesorios de bebes.', 'logo-ica-babyinfanti.jpg', 'ica-babyinfanti.jpg', 'LC-162', '15', 1, '994978333', 'INFANTI.ICA@INFANTI.COM.PE ', 'RENZZO EDUARDO BAZALAR B.', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(4, 'banbif', 'BANBIF', 'Banco intermediario de finanzas.', 'logo-ica-banbif.jpg', 'ica-banbif.jpg', 'LC-155-156', '23', 1, '961635879', 'mvalenzuela@banbif.com.pe', 'Fatima Valenzuela V.', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(5, 'bata', 'BATA', 'Empresa dedicada a la venta de calzado para varones, mujeres y niños.', 'logo-ica-bata.jpg', 'ica-bata.jpg', 'LC-143-145-147', '4|5|6', 1, '640283984', 'nyawinner@gmail.com', 'Nadiel Aragón Farfán', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(6, 'bbva', 'BBVA', 'Banco dedicado a brindar información de ahorro e inversión, tarjetas, préstamos y seguros.', 'logo-ica-bbva.jpg', '5cfaf2ce69ab0_ica-bbva.jpg', 'LF - 110', '23', 1, '', 'dcanales@bbva.com', 'Diana Carolina Canales Bonifaz', 1, 'ica', '2019-05-21 22:20:00', '2019-06-07 23:27:25'),
(7, 'bcp', 'BCP', 'El Banco de Crédito del Perú es el banco más grande y el proveedor líder de servicios financieros integrados en el Perú.', 'logo-ica-bcp.jpg', '5cf849ceedd81_ica-bcp.JPG', 'LC-106-107-108', '23', 1, '956169783 / 056-223674 Anexo 40694', 'karolmateoa@bcp.com.pe', 'Karol Mateo Aguilar', 1, 'ica', '2019-05-21 22:20:00', '2019-06-05 23:01:34'),
(8, 'belle', 'BELLE', 'Es una  marca dedicada a la venta de joyas de acero inoxidables.', '5cf53105610be_logo-ica-belle.jpg', 'ica-belle.jpg', 'M-135', '14', 1, '986295454', 'Administración@belle.com', 'Evert Ipanaque Alaya', 1, 'ica', '2019-05-21 22:20:00', '2019-06-03 14:39:01'),
(9, 'bembos', 'BEMBOS', 'Venta de comida rápida para el consumo.', 'logo-ica-bembos.jpg', 'ica-bembos.jpg', 'PC-202-204', '19', 2, '981557452', 'BEMBOS127@NGR.COM.PE', 'ALEJANDRO ALFREDO PACHAS PEREZ', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(10, 'bitel', 'BITEL', 'Venta de equipos celulares.', 'logo-ica-bitel.jpg', '5cf531224a3df_ica-bitel.JPG', 'LC- I46', '23', 1, '93010472', 'yormeno.ramos@gmail.com', 'YULIANA ORMEÑO', 1, 'ica', '2019-05-21 22:20:00', '2019-06-03 14:39:30'),
(11, 'bruno-ferrini', 'BRUNO FERRINI', 'Es una marca de calzado de cuero de alta calidad para hombres y mujeres.', 'logo-ica-brunoferrini.jpg', 'ica-brunoferrini.jpg', 'LC-128', '4|6', 1, '944917305', 'Bfica@brunoferrini.com.pe', 'Diana Quispe Canela', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(12, 'bubble-gummers', 'BUBBLE GUMMERS', 'Es una  marca dedicada a la venta de calzado y ropa para niños.', 'logo-ica-bubblegummers.jpg', 'ica-bubblegummers.jpg', 'LC-124', '5|27', 1, '640283984', 'nyawinner@gmail.com', 'Nadiel Aragón Farfán', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(13, 'calimod', 'CALIMOD', 'Marca de calzado dirigido a damas, varones y niños.', 'logo-ica-calimod.jpg', 'ica-calimod.jpg', 'LC-142-144', '4|6|5', 1, '994263995', 'calimodstoreica@calimod.com.pe', 'Denis Gavilan Jimenez', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(14, 'capriccio', 'CAPRICCIO', 'Se dedica a la producción y venta de café y pasteles.', 'logo-ica-capriccio.jpg', 'ica-capriccio.jpg', 'M-108', '3', 1, '979775451', 'Invercionesa.p@yahoo.com', 'Claudia Arredoedo', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(15, 'carteras-tizza', 'CARTERAS TIZZA', 'Marca de carteras para todas las ocasiones.', 'logo-ica-carterastizza.jpg', 'ica-carterastizza.jpg', 'LC-117', '1', 1, '940421709', 'TIENDAQUINDE@CARTERASTIZZA.COM', 'BETSY APARCANA MARAÑON', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(16, 'casa-ideas', 'CASA IDEAS', 'Empresa retail que vende productos de diseño y decoración para personas y hogares.', 'logo-ica-casaideas.jpg', 'ica-casaideas.jpg', 'LI-103  LC-161', '7', 1, '', 'JEFE.ICA@CASAIDEAS.COM', 'LILIANA HUANCA CELI', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(17, 'ceinys', 'CEINYS', 'Venta de lotes.', '5cfaf2fc1921a_logo-ica-ceinys.jpg', '5cfaf2fc25f0d_ica-ceinys.jpg', 'M-132', '13', 1, '96149578', '', 'JULIA MARIA LUNA VICTORIA MARTINEZ', 1, 'ica', '2019-05-21 22:20:00', '2019-06-07 23:27:56'),
(18, 'centenario', 'CENTENARIO', 'Venta de lotes.', 'logo-ica-centenario.jpg', 'ica-centenario.jpg', 'M-134', '13', 1, '989215603', 'YSOPLA@CENTENARIO.COM', 'YSABEL SOPLA VILLANUEVA', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(19, 'chifa-zheng', 'CHIFA ZHENG', 'Venta de comida china.', 'logo-ica-chifazheng.jpg', 'ica-chifazheng.jpg', 'LC-207', '19', 2, '97713357', 'AINHOAMAYORZA97@GMAIL.COM', 'ADNIEZKA NAOMI PINEDA MAYORZA', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(20, 'china-wok', 'CHINA WOK', 'Venta de comida rápida oriental.', 'logo-ica-chinawok.jpg', 'ica-chinawok.jpg', 'PC-206-208', '19', 2, '979058689', 'CHINAWOK46@NGR.COM.PE', 'KARLA GAVILANOS GRADOS', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(21, 'cinerama', 'CINERAMA', 'Cine dirigido al público en general.', 'logo-ica-cinerama.jpg', 'ica-cinerama.jpg', '3er nivel', '10', 3, '958793403', 'cineramaicaquinde@gmail.com', 'Magaly Ramos Garriazo', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(22, 'claro', 'CLARO', 'Es una marca de servicios de comunicaciones y entretenimiento.', 'logo-ica-claro.jpg', 'ica-claro.jpg', 'M-113', '23', 1, '982786204', 'Quinde1.mol@outlook.com', 'Isamar Farfan ', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(23, 'claudia-paez', 'CP  BY CLAUDIA PAEZ', 'Venta de moda femenina.', '5cfe979e9b9ea_logo-ica-claudiapaez.jpg', '5d03f649287e8_cp-2.jpg', 'LC-149, LC-150', '26', 1, '', '', '', 1, 'ica', '2019-05-21 22:20:00', '2019-06-14 19:32:25'),
(24, 'coolbox', 'COOLBOX', 'Venta de electrónica menor.', 'logo-ica-coolbox.jpg', 'ica-coolbox.jpg', 'LC-163', '9', 1, '933704361', 'RASHT06@RASHPERU.COM', 'GUSTAVO MARROQUIN ESCALANTE', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(25, 'costa-mar', 'COSTA MAR', 'Agencia de viajes que ofrece paquetes turísticos, pasajes aéreos, hoteles baratos y más. ', 'logo-ica-costamar.jpg', 'ica-costamar.jpg', 'LC-124A', '29', 1, '944253533', 'nmarchan@costamar.com.pe', 'Noemi Marchan ', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(26, 'cruz-del-sur', 'CRUZ DEL SUR', 'Venta de pasajes nacionales.', 'logo-ica-cruzdelsur.jpg', '5cf55b7fbc12c_ica-cruzdelsur.JPG', 'M -130 AF2', '23', 1, '311 5030', 'mbdelacruz@gibarcena.com.pe   ', 'MELISSA DE LA CRUZ', 1, 'ica', '2019-05-21 22:20:00', '2019-06-03 17:40:15'),
(27, 'dyd', 'D&D', 'Inmobiliaria dedicada a la venta de casas.', '5cf6ee954bf53_logo-ica-dyd.jpg', 'ica-dydinmobiliaria.jpg', 'M-123', '13', 1, '943626561', 'Marcos.valencia@dyd.com.pe', 'Marcos Valencia ', 1, 'ica', '2019-05-21 22:20:00', '2019-06-04 22:20:05'),
(28, 'dead-sea-premier', 'DEAD SEA PREMIER', 'Se dedica a la venta de cosméticos.', '5ced61fe8d005_logo-ica-premier.jpg', 'ica-deadseapremier.jpg', 'M-114', '22', 1, '986683824', 'Sandrapastor074@gmail.com', 'Christian Ernesto Merino Pita', 1, 'ica', '2019-05-21 22:20:00', '2019-05-28 16:29:50'),
(29, 'directv', 'DIRECTV', 'Es un proveedor de servicio de difusión directa por satélite en vivo.', 'logo-ica-directv.jpg', 'ica-directv.jpg', 'M-104', '23', 1, '964256341', 'alcomunicaciones@gmail.com ', 'Stephanie Arias ', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(30, 'diverty-kids', 'DIVERTY KIDS', 'Empresa dedicada a brindar el servicio de diversión a los niños.', 'logo-ica-divertykids.jpg', '5cf55bc9c532e_ica-divertikids.jpg', 'LC-302-304', '10', 3, '941951511', 'Informes@divertykids.com.pe', 'Yasmin Jessenia Sanchez Aguado ', 1, 'ica', '2019-05-21 22:20:00', '2019-06-03 17:41:29'),
(31, 'dlizia', 'DLIZIA', 'Es una empresa de dicada a la venta de pasteles, ensaladas de fruta y tortas.', 'logo-ica-dlizia.jpg', 'ica-dlizia.jpg', ' M-106', '3', 1, '950029876', 'Abril838@hotmail.com', 'Vilma Ayala', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(32, 'dpilate', 'DPILATE', 'Centro estético para la piel y depilación.', '5cf6ee55215ea_logo-ica-dpilate.jpg', 'ica-dpilate.jpg', 'LC-108', '23', 1, '977445656', 'ICAQUINDE@D-PILATE.COM', 'KEYLY MIRANDA COLQUE', 1, 'ica', '2019-05-21 22:20:00', '2019-06-04 22:19:01'),
(33, 'econopticas', 'ECONÓPTICAS', 'Venta de lentes de medida y gafas solares.', 'logo-ica-econopticas.jpg', 'ica-econopticas.jpg', 'LC-121', '18', 1, '997609938', 'HUGO.VALENCIA@PE.LUXOTTICA.COM', 'HUGO VALENCIA', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(34, 'ef-perfumeria', 'EF PERFUMERÍA', 'Empresa dedicada a la venta de perfumes personalizados.', '5cf5708b5e57a_logo-ica-efperfumes.jpg', '5cfaf379630bf_ica-efperfumes.jpg', 'M 116', '22', 1, '934731096', 'gerenciaperu@efperfumes.com', 'Anelie Pouey', 1, 'ica', '2019-05-21 22:20:00', '2019-06-07 23:30:01'),
(35, 'entel', 'ENTEL', ' Empresa que ofrece  planes de Telefonía Móvil, smartphones con 4G, Internet y otros ', 'logo-ica-entel.jpg', 'ica-entel.jpg', 'M-112', '23', 1, '81078130', 'Cristian.centeno@manpower.pe', 'Cristian Centeno', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(36, 'essentiel-pour-michelle-belau', 'ESSENTIEL  POUR  MICHELLE  BELAU', 'Es una marca con personalidad propia dedicada a la venta de accesorios y ropa para mujeres.', 'logo-ica-essentiel.jpg', 'ica-essentiel.jpg', 'LC-148', '26|1', 1, '924043990', 'pvillapalomino@gmail.com', 'Patricia Hernández Cárdenas', 1, 'ica', '2019-05-21 22:20:00', '2019-06-11 15:14:59'),
(37, 'farah', 'FARAH', 'Venta de bisuteria tejida a mano.', '5cf6e9fb08ca4_logo-ica-farah.jpg', '5cf570c458914_ica-farag.JPG', 'M-102', '1', 1, '', 'MARIA_TM.11-20@HOTMAIL.COM', 'MARIA HERNANDEZ SOTELO', 1, 'ica', '2019-05-21 22:20:00', '2019-06-04 22:00:27'),
(38, 'frosty-flavors', 'FROSTY FLAVORS', 'Venta de helados.', '5cf6ef2668bbe_logo-ica-frostyflavors.jpg', 'ica-frostyflavors.jpg', '9-01-17', '3', 1, '974155393', 'KARINANOACHACALIAZA15@GMAIL.COM', 'KARINA NOA', 1, 'ica', '2019-05-21 22:20:00', '2019-06-04 22:22:30'),
(39, 'gelarti', 'GELARTI', 'Se dedica a la venta de helados gourmet.', 'logo-ica-gelarti.jpg', 'ica-gelarti.jpg', 'M-133', '3', 1, '992757730', 'Juniors.alarcon@gmail.com ', 'Juniors Alarcon', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(40, 'gmo', 'GMO', 'Venta de monturas oftálmicas y lentes de sol. Está dirigido a varones, mujeres y niños.', 'logo-ica-gmo.jpg', 'ica-gmo.jpg', 'LC-127-129', '18', 1, '994643894', 'Gmo.quindeica@pe.luxottica.com', 'Leonardo Uribe Fernández', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(41, 'gzuck', 'GZUCK', 'Marca dedica a venta de accesorios y ropa dirigida a las personas que practiquen deportes extremos como skateboarding entre otros', 'logo-ica-gzuck.jpg', 'ica-gzuck.jpg', 'LC- 141', '1|26|28|8', 1, '989063511', 'Ti2862gzuck@masisa.com.pe', 'Campos Vehuga Alexandra', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(42, 'happyland', 'HAPPYLAND', 'Servicio de entretenimiento familiar.', 'logo-ica-happyland.jpg', 'ica-happyland.jpg', 'LI-203', '10', 2, '968948999', 'ICA@HAPPYLAND.PE', 'ANGEL NAVARRETE', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(43, 'ibero-librerias', 'IBERO LIBRERIAS', 'Venta de libros de distintos autores.', 'logo-ica-iberolibrerias.jpg', 'ica-iberolibrerias.jpg', 'LC-164B', '16', 1, '991691617', 'HDELAGUILA@IBERO.COM.PE', 'HAROLD DEL AGUILA', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(44, 'inkafarma', 'INKAFARMA', 'Cadena de farmacias.', 'logo-ica-inkafarma.jpg', 'ica-inkafarma.jpg', 'LC-153', '11', 1, '952246852', 'PLAZA.I@INKAFARMA.COM.PE', 'Edith Meza Angulo', 1, 'ica', '2019-05-21 22:20:00', '2019-06-07 23:31:05'),
(45, 'interbank', 'INTERBANK', 'Es un banco que brinda información sobre cuentas, créditos, tarjetas, seguros y más.', 'logo-ica-interbank.jpg', '5cfaf3906f295_ica-interbank.jpg', 'LF-103-104', '23', 1, '956383350', 'ibelquindeica.gao@intercorp.com.pe', '    Carlos Enrique Gomez Cabrera', 1, 'ica', '2019-05-21 22:20:00', '2019-06-07 23:30:24'),
(46, 'intralot', 'INTRALOT', 'Venta de loterias y apuestas deportivas.', 'logo-ica-intralot.jpg', 'ica-intralot.jpg', 'LI-105', '23', 1, '976955949', 'YESSENIA_76_12@HOTMAIL.COM', 'YESSENIA JULIANI HERNANDEZ CABRERA', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(47, 'jet-peru', 'JET PERÚ', 'Casa de cambio de monedas.', 'logo-ica-jetperu.jpg', 'ica-jetperu.jpg', 'LI-105A', '23', 1, '221922', 'AGENCIAICA@JETPERU.COM.PE', 'FRANCO RAFAEL PACHECO FARFAN', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(48, 'kfc', 'KFC', 'Venta de comida rápida.', 'logo-ica-kfc.jpg', 'ica-kfc.jpg', 'LC- 201', '19', 2, '994775665', 'KFC105@FRANQUINCIASPERU.COM', 'JORGE GARCIA BAUTISTA', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(49, 'kukuli', 'KUKULI', 'Venta de ropa y accesorios para bebes.', 'logo-ica-kukuli.jpg', '5cf5604c0b773_ica-kukuli.JPG', 'LC-111', '27', 1, '943407324', 'ELQUINDEICA@MODAKUKULI.COM', 'YAMILA MONDRAGON AMBIA', 1, 'ica', '2019-05-21 22:20:00', '2019-06-03 18:00:44'),
(50, 'la-choza-de-la-anconda', 'LA CHOZA DE LA ANACONDA', 'Venta de comida amazónica.', 'logo-ica-lachozadelaanaconda.jpg', '5cfaf3d8674dc_ica-lachozadelaanaconda.jpg', 'LC-208', '19', 2, '', 'gerson-andrea@hotmail.de', 'GERSON INGUNZA TORRES', 1, 'ica', '2019-05-21 22:20:00', '2019-06-07 23:31:36'),
(51, 'la-positiva-seguros', 'LA POSITIVA SEGUROS ', 'Aseguradora que ofrece una amplia gama de productos generales, como seguros de salud, automotriz, accidentes, etc.', 'logo-ica-lapositivaseguros.jpg', 'ica-lapositiva.jpg', 'M-111', '23', 1, '959639132', 'Levano.bannios@zeriza.com.pe', 'Levano Bonnior', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(52, 'la-zona', 'LA ZONA', 'Marca deportiva dirigida a varones, mujeres y niños.', 'logo-ica-lazona.jpg', 'ica-lazona.jpg', 'LC-140', '8|26|28', 1, '951565747', 'tiendasica@tiendaslazona.pe', 'Rogelio Terrones Roncal ', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(53, 'lady-posh', 'LADY POSH', 'Venta de jeans, blusas, vestidos y mucho más', '5cf6f08149e0a_logo-ica-ladyposh.jpg', 'ica-ladyposh.jpg', 'LC-126', '26', 1, '930510924', 'SOCIALMEDIA.MARKETING@POSH.PE', 'KAROLINE CORREA OSEJO', 1, 'ica', '2019-05-21 22:20:00', '2019-06-04 22:28:17'),
(54, 'las-canastas', 'LAS CANASTAS', 'Restaurante de pollería y platos a la carta.', 'logo-ica-lascanastas.jpg', 'ica-lascanastas.jpg', 'LI -201', '21', 2, '997784366', 'ELQUINDEICA@LASCANASTAS.COM', 'WALTER CELIS', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(55, 'las-delicias-de-juanita', 'LAS DELICIAS DE JUANITA', 'Esta empresa se dedica a la venta de postres y café.', '5d03daa104f66_logo-blanco.jpg', 'ica-lasdeliciasdejuanita.jpg', 'M-110', '3', 1, '998222551', 'Erikadocip@gmail.com', 'Erika Dorothy Jacobo Mendoza', 1, 'ica', '2019-05-21 22:20:00', '2019-06-14 17:34:25'),
(56, 'latam', 'LATAM', 'Aerolínea que brinda vuelos nacionales e internacionales.', 'logo-ica-latam.jpg', 'ica-latam.jpg', 'M-126', '23', 1, '920139744', 'Delly.quito@adecco.com', 'Quito Delly (Supervisora)', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(57, 'llaxta', 'LLAXTA', 'Constructora inmobiliaria peruana, dedicada a la venta de viviendas modulares de concreto.', '5cf6ed417d0a0_logo-ica-llaxta.jpg', 'ica-llaxta.jpg', 'ME-104 A', '13', 1, '945579191', 'CBUSTAMANTE@LLAXTA.COM', 'CRISTINA BUSTAMANTE', 1, 'ica', '2019-05-21 22:20:00', '2019-06-04 22:14:25'),
(58, 'los-portales', 'LOS PORTALES', 'Venta de lotes y modulos de vivienda.', 'logo-ica-losportales.jpg', 'ica-losportales.jpg', 'M-102A', '13', 1, '958545488', 'MPFLUCKER@LOSPORTALES.COM.PE', 'MARIA JOSE PFLUKER', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(59, 'luao', 'LUAO', 'Vental de ropa formal femenina.', '5cf6edc8c4992_logo-ica-luao.jpg', 'ica-luao.jpg', 'LC-160', '26', 1, '923506262', 'CAROLINABRAVO@CREATIONSBELEN.COM', 'CAROLINA BRAVO MOROCHO', 1, 'ica', '2019-05-21 22:20:00', '2019-06-04 22:16:40'),
(60, 'maestro', 'MAESTRO', 'Empresa especializada en el mejoramiento del hogar y la construcción.', 'logo-ica-maestro.jpg', 'ica-maestro.jpg', '8-3-41', '7', 1, '999171971', 'malpacar@maestro.com.pe', 'Mayra Alpaca La Rosa', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(61, 'mama-luz', 'MAMA LUZ', 'Venta de comida típica regional.', '5cfaf7906465c_logo-ica-mamaluz.jpg', '5cfe97c86abd0_proximamente.jpg', 'Patio de comidas', '19', 2, '983467207', 'enriquep_26@hotmail.com', 'JORGE PEDREROS', 1, 'ica', '2019-05-21 22:20:00', '2019-06-10 17:47:52'),
(62, 'marathon', 'MARATHON', 'Venta de ropa y artículos deportivos.', 'logo-ica-marathon.jpg', 'ica-marathon.jpg', 'LC-101', '8', 1, '994101814', 'JTMSICA@P.MARATHON-SPORTS.COM', 'JUANA ALVARADO ESPINOZA', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(63, 'marco-aldany', 'MARCO ALDANY', 'Salón de belleza, brindan servicios de estilismo y esteticismo.', 'logo-ica-marcoaldany.jpg', 'ica-marcoaldany.jpg', 'LC-102', '22', 1, '948589430', 'MCAINVERSIONES@OUTLOOK.COM.PE', 'ANA RAMOS CARDENAS', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(64, 'mas-criollo', 'MAS CRIOLLO', 'Ventas de comida peruana al paso.', '5d03dab019dac_logo-blanco.jpg', 'ica-mascriollo.jpg', 'PC-210', '19', 2, '994191509', 'GRUPORUBINI1@GMAIL.COM', 'ERICKA APARCANA TATAJE', 1, 'ica', '2019-05-21 22:20:00', '2019-06-14 17:34:40'),
(65, 'masajes-y-bienestar', 'MASAJES Y BIENESTAR', 'Servicios de opción terapeútica.', '5d027504d139a_logo-ica-masajesfix.jpg', 'ica-masajesybienestar.jpg', 'M-13', '22', 1, '988622059', 'IVELIS_INERO@HOTMAIL.COM', 'MYLEN', 1, 'ica', '2019-05-21 22:20:00', '2019-06-13 16:08:36'),
(66, 'maybelline', 'MAYBELLINE ', 'Marca dedicada a la venta de maquillaje.', 'logo-ica-maybelline.jpg', 'ica-maybelline.jpg', 'M-125', '22', 1, '947264918', 'victordiaz@salesland.net', 'Victor Diaz', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(67, 'menorca', 'MENORCA', ' Se dedica a la venta de terrenos y casas.', 'logo-ica-menorca.jpg', 'ica-menorca.jpg', 'M-114A', '13', 1, '', 'Ventac16@menorca.com.pe', 'Juan Aquije', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(68, 'metro', 'METRO ', 'Cadena de supermercados dirigida a toda la familia.', 'logo-ica-metro.jpg', 'ica-metro.jpg', '27-11-13', '24', 0, '946413435', 'JOSE.REYES@CENCOSUD.COM.PE ', 'José Reyes Bastas', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(69, 'mifarma', 'MIFARMA', 'Botica dedicada a la venta de medicinas de orden genérico y de marca así como artículos de perfumería, materiales, accesorios, entre otros.', 'logo-ica-mifarma.jpg', 'ica-mifarma.jpg', 'LC-154', '11', 1, '989033379', 'Avaldivia.mwc@gmail.com', 'Ana Valdivia Chirinos', 1, 'ica', '2019-05-21 22:20:00', '2019-06-17 20:51:19'),
(70, 'mikaela', 'MIKAELA', 'Venta de calzados y accesorios.', 'logo-ica-mikaela.jpg', 'ica-mikaela.jpg', 'LC-105', '1|4', 1, '989444910', 'ICA@MIKAELA.PE', 'YOLANDA BOZA RIVERA', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(71, 'milano-bags', 'MILANO BAGS', 'Marca dedicada a la industria de la moda, carteras, calzado y accesorios de cuero de alta calidad y sofisticación dirigido a mujeres.', 'logo-ica-milanobags.jpg', 'ica-milanobags.jpg', 'LC-131', '1|4|6', 1, '923131696', 'Camilac-arango@hotmail.com', 'Camila Cabrera', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(72, 'monkey-donuts', 'MONKEY DONUTS', 'Dedicado a  la venta de donuts.', 'logo-ica-monkeydonuts.jpg', 'ica-monkeydonuts.jpg', 'ME-105', '3', 1, '984330745', '        cdelacruz@astoreica.com', 'Carlos De la Cruz Tueros', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(73, 'nebula', 'NÉBULA', 'Tienda de ropa femenina formal y casual.', 'logo-ica-nebula.jpg', 'ica-nebula.jpg', 'LC-158', '26', 1, '978136819', 'TIENDANEBULA@HOTMAIL.COM', 'HUGO SILVA TUESTA', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(74, 'nitos', 'NITOS', 'Venta de platos marinos.', 'logo-ica-nitos.jpg', 'ica-nitos.jpg', 'PC-203', '19', 2, '991931878', 'RINNACRUZ@HOTMAIL.COM', 'KARINA CRUZ', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(75, 'opcion', 'OPCIÓN', 'Venta de autos.', 'logo-ica-opcion.jpg', 'ica-opcion.jpg', 'M-126 A', '2', 1, '998170173', 'EHERRERA@OPCION.COM', 'ALEJANDRO ALFREDO HERRERA STOLL', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(76, 'otto-grill', 'OTTO GRILL', 'Restaurante de venta de parrillas y carnes a la carta.', 'logo-ica-ottogrill.jpg', 'ica-ottogrill.jpg', 'PC-209', '19', 2, '955683059', 'ICA@OTTOGRILL.COM', 'JOSE HERNANDEZ CHANGO', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(77, 'palettas', 'PALETTAS', 'Venta de helados artesanales.', 'logo-ica-palettas.jpg', 'ica-palettas.jpg', 'M-127', '3', 1, '964106221', 'PALETTASICA@GMAIL.COM', 'MARCO ANTONIO GALLEGOS ORMEÑO', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(78, 'papa-johns', 'PAPA JOHNS', 'Restaurante de pizzas.', 'logo-ica-papajohns.jpg', 'ica-papajohns.jpg', 'LI-202', '19|21', 2, '942608991', 'PAPAJHONS26@NGR.COM.PE', 'JOE FUENTES', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(79, 'paris', 'PARIS', 'Tienda por departamentos que ofrece  moda, belleza, decoración, tecnología y artículos para el público en general.', 'logo-ica-paris.jpg', 'ica-paris.jpg', '13-11-33', '25', 1, '6260000 Anexo 8712 / 8713 / 993880245', '     roberto.injante@externos-pe.cencosud.com', 'Roberto Injante Aquije', 1, 'ica', '2019-05-21 22:20:00', '2019-05-28 00:31:02'),
(80, 'parque-del-recuerdo', 'PARQUE DEL RECUERDO', 'Venta de lotes para nicho.', 'logo-ica-parquedelrecuerdo.jpg', 'ica-parquedelrecuerdo.jpg', 'M-103', '29', 1, '968875852', 'WWW.PARQUEDELRECUERDO.ORG', 'RENATO BAILLY PEREZ', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(81, 'passarela', 'PASSARELA', 'Es una empresa que se dedica a la venta de calzado.', 'logo-ica-passarela.jpg', 'ica-passarela.jpg', 'LC-130-132-134', '4|6|5', 1, '386237', 'Td2@passarela.pe', 'Cynthia Muñoa Vilcarima', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(82, 'pasteleria-velazco', 'PASTELERIA VELAZCO', 'Venta de dulces tradicionales de la región Ica.', 'logo-ica-pasterleriavelazco.jpg', '5cf5727263a81_ica-pasteleriavelazco.jpg', 'LC-165A', '3', 1, '232831', 'REDIAZSOTELO@HOTMAIL.COM', 'ROSA DIAZ SOTELO', 1, 'ica', '2019-05-21 22:20:00', '2019-06-03 19:18:10'),
(83, 'phantom', 'PHANTOM', 'Es una empresa que se dedica a vender lo último en videojuegos.', '5cec81294df25_logo-ica-phantom.jpg', 'ica-phantom.jpg', 'LC-122', '9', 1, '970896698', 'ica@phatom.com.pe ', 'Alex Orellana', 1, 'ica', '2019-05-21 22:20:00', '2019-05-28 00:30:33'),
(84, 'pink-blue', 'PINK BLUE', 'Venta de accesorios para bebes.', '5cf5729d690da_logo-ica-pinkblue2.jpg', '5cf5729d73383_ica-pinkblue.JPG', 'LC-159', '15', 1, '948425100', 'MARKETING@PINKBLUE.COM.PE', 'MILUSKA HUERTAS', 1, 'ica', '2019-05-21 22:20:00', '2019-06-03 19:18:53'),
(85, 'pionier', 'PIONIER', 'Marca especializada en jeans estilo urbano. Está dirigida a jóvenes, adultos y niños.', 'logo-ica-pionier.jpg', '5cfaf7ae1a499_ica-pionier.jpg', 'LC-137-139', '26|28', 1, '997586016', 'Ti27pionier@masisac.com.pe', 'Palacios Ramos Yessica', 1, 'ica', '2019-05-21 22:20:00', '2019-06-07 23:47:58'),
(86, 'pizza-hut', 'PIZZA HUT', 'Venta de pizzas.', 'logo-ica-pizzahut.jpg', '5cfaf7c900176_ica-pizzahut.jpg', 'LC-203-205', '19', 2, '994775665', 'PH62@FRANQUICIASPERU.COM', 'JORGE GARCIA BAUTISTA', 1, 'ica', '2019-05-21 22:20:00', '2019-06-07 23:48:25'),
(87, 'porta', 'PORTA', 'Venta de productos para transportar artículos y objetos.', 'logo-ica-porta.jpg', 'ica-porta.jpg', 'LC-119', '17', 1, '', 'KORMEÑO@PORTALINE.COM', 'KATERINE ORMEÑO MENDOZA', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(88, 'prados-del-este', 'PRADOS DEL ESTE', 'Venta de lotes y casas.', '5cfaf7df92c68_logo-ica-altitudpradosdeleste2.jpg', '5cfaf7df9f6b4_ica-pradosdeleste.jpg', 'ME- 102 AF1', '13', 1, '960749083', 'alexanderdiaz@altitud.com.pe', 'ALEX DÍAZ', 1, 'ica', '2019-05-21 22:20:00', '2019-06-07 23:48:47'),
(89, 'quality-store', 'QUALITY STORE', 'Venta de productos innovadores que brindan soluciones prácticas en salud, belleza, hogar, fitness y cocina.', 'logo-ica-qualitystore.jpg', 'ica-qualitystore.jpg', 'LC-156-157', '8|7|22', 1, '935749182', 'SERVICIOSGENERALES@QUALITY.PRODUCTS.COM.PE', 'VICTOR SANCHEZ', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(90, 'renzo-costa', 'RENZO COSTA', 'Empresa peruana dedicada a la venta de artículos y accesorios de cuero para mujeres y hombres.', 'logo-ica-renzocosta.jpg', 'ica-renzocosta.jpg', 'LC-151-152', '1|17', 1, '996620785', 'Lavini30@hormail.com ', 'María Cabanillas Lavini ', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(91, 'rip-curl', 'RIP CURL', 'Venta de ropa y accesorios para hombre y mujer.', 'logo-ica-ripcurl.jpg', 'ica-ripcurl.jpg', 'LC-113 -115', '26|28', 1, '913584784', 'RIPCURLQUINDEICA@GMAIL.COM', 'RODRIGO ERNANDEZ DE LA CRUZ', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(92, 'ripley', 'RIPLEY', 'Tienda por departamentos que ofrece  moda, belleza, decoración, tecnología y artículos para el público en general.', 'logo-ica-ripley.jpg', 'ica-ripley.jpg', '7-11-33', '25', 1, '056-602060 Anexo 6841', 'jpenap@ripley.com.pe', 'Jefe de Prevención de Pérdidas', 1, 'ica', '2019-05-21 22:20:00', '2019-05-28 00:30:48'),
(93, 'safari-adventures', 'SAFARI ADVENTURES', 'Juegos recreativos para niños', 'logo-ica-safariadventures.jpg', 'ica-safariadventures.jpg', 'M-100', '10', 1, '992425978', 'SERGIOABELX28@GMAIL.COM', 'ROMERO LUNA SERGIO ABEL', 1, 'ica', '2019-05-21 22:20:00', '2019-06-04 22:06:18'),
(94, 'falabella', 'FALABELLA', 'Tienda por departamentos que ofrece tecnología, electrodomésticos, zapatos, muebles, colchones, deportes, juguetes, moda, belleza y mucho más.', 'logo-ica-sagafalabella.jpg', 'ica-sagafalabella.jpg', '16-12-43', '25', 1, '956299086', 'JOCHOAA@sagafalabella.com.pe', 'JOSE CARLOS OCHOA A.', 1, 'ica', '2019-05-21 22:20:00', '2019-05-28 00:33:36'),
(95, 'sally-beauty', 'SALLY BEAUTY', 'Ofrece productos profesionales en cuidado del cabello, coloración, maquillaje, cuidado de la piel y uñas, pensados especialmente en las mujeres.', 'logo-ica-sallybeauty.jpg', 'ica-sallybeauty.jpg', 'LC-125', '22', 1, '924283264', 'Teo_mila@hotmail.com', 'Hermila Parra Injante', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(96, 'sarcletti', 'SARCLETTI', 'Restaurante que brinda variedad de platos a la carta y postres.', 'logo-ica-sarcletti.jpg', 'ica-sarcletti.jpg', 'LF-109', '3', 1, '981359956', 'SARCLETTI_ICA@HOTMAIL.COM', 'Juan García Rusas ', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(97, 'scotiabank', 'SCOTIABANK', 'Banco el que brinda información sobre préstamos, créditos, cuentas de ahorro, tarjetas de crédito, seguros y más.', 'logo-ica-scotiabank.jpg', 'ica-scotiabank.jpg', 'LC-172-173', '23', 1, '2116000 anexo 36951// 954612694', 'narda.chiang@scotiabank.com.pe', 'Nardad Chiang Almora', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(98, 'sediluz', 'SEDILUZ', 'Venta de lotes inmobiliarios.', '5cf57302d49df_logo-ica-sediluz.jpg', '5cfaf7f1c96ca_ica-sediluz.jpg', 'M -130 AF3', '13', 1, '976585922', 'sediluz17@hotmail.com', 'GERMAN DÍAZ', 1, 'ica', '2019-05-21 22:20:00', '2019-06-07 23:49:05'),
(99, 'starbucks', 'STARBUCKS', 'Venta de café y bebidas hechas de café.', 'logo-ica-starbucks.jpg', 'ica-starbucks.jpg', 'LI-104', '3', 1, '933307516', 'STARBUCKS69@FRANQUICIASPERU.COM', 'JHOAN SIHUAS HUAMAN', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(100, 'store-games', 'STORE GAMES', 'Venta de video juegos, accesorios y juguetes.', 'logo-ica-storegames.jpg', 'ica-storegames.jpg', 'LC-167', '9|10', 1, '94701964', 'STOREGAMESICA@GMAIL.COM', 'CARLOS HERRERA', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(101, 'suntime', 'SUNTIME', 'Venta de relojes, gafas de sol y gorras.', 'logo-ica-suntime.jpg', '5cf57333a5c36_ica-suntime.JPG', 'LC-123', '20', 1, '936801407', 'SUNTIME.ICA@GMAIL.COM', 'DELIA GARAYAR', 1, 'ica', '2019-05-21 22:20:00', '2019-06-03 19:21:23'),
(102, 'tailoy', 'TAILOY', 'Empresa dedicada a la venta de  útiles, artículos de oficina, juguetes y más. ', 'logo-ica-tailoy.jpg', 'ica-tailoy.jpg', 'LI-102', '16', 1, '986116305', 'tdmallquindeica@tailoy.com.pe', 'Jhon Hernandez Cardenas', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(103, 'tejas-sra-buendia', 'TEJAS SRA.BUENDÍA', 'Empresa que se dedica a la venta y elaboración de tejas y chocotejas.', 'logo-ica-tejassrabuendia.jpg', 'ica-tejassrabuendia.jpg', 'M-117', '3', 1, '951565747', 'Massieb10@hotmail.com', 'Masiel Sotelo Buendía ', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(104, 'the-cult', 'THE CULT', 'Venta de ropa y accesorios masculinos.', 'logo-ica-thecult.jpg', 'ica-thecult.jpg', 'LC-101-103', '1|28', 1, '972012566', 'QICA@THECULT.COM.PE', 'FELIX MARTIN LEON LENGUA', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(105, 'tiendas-el', 'TIENDAS ÉL', 'Venta de ternos y acceosrios para caballeros.', 'logo-ica-tiendasel.jpg', 'ica-tiendasel.jpg', 'LC-110-112-114-116', '1|28', 1, '989131623', 'EQICA@EL.COM.PE', 'EMILIO MARTIN MALDONA MARTINEZ', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(106, 'viale', 'VIALE', 'Empresa que se dedica a la venta de calzado y accesorios para damas, caballeros y niños.', 'logo-ica-viale.jpg', 'ica-viale.jpg', 'LC-133-135', '4|6|5', 1, '994646358', 'Tda.ica@viale.com.pe', 'Leonela de la Rosa Escate', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(107, 'villa-club', 'VILLA CLUB', 'Empresa dedicada a la venta de inmuebles.', '5cfaf80897fb9_logo-ica-villaclub.jpg', '5cfaf808a2200_ica-villaclub.jpg', 'M-129', '13', 1, '960734494', 'Carlos.armendariz@villaclub.com.pe', 'Carlos Armendáriz', 1, 'ica', '2019-05-21 22:20:00', '2019-06-07 23:49:28'),
(108, 'virtual-radix', 'VIRTUAL RADIX', 'Juegos de realidad virtual y en línea.', 'logo-ica-virtualradix.jpg', '5cf573613d918_ica-virtualradix.JPG', 'LC- 303', '10', 1, '973910124', 'ingeniero.crisostomo@gmail.com', 'RAVI CRISOSTOMO', 1, 'ica', '2019-05-21 22:20:00', '2019-06-03 19:22:09'),
(109, 'wo-smartphone', 'WO SMARTPHONE', 'Tienda especializada en venta de accesorios para celulares y tablets.', 'logo-ica-wosmartphone.jpg', 'ica-wosmartphone.jpg', 'M-113A', '1', 1, '977720643', 'analiotiniano@gmail.com', 'Anali Otiniano Ramos', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(110, 'world-time', 'WORLD TIME', 'Venta de accesorios de relojes.', 'logo-ica-worldtime.jpg', 'ica-worldtime.jpg', 'M-119', '20', 1, '984330745', 'CDELACRUZ@ASTOREICA.COM', 'CARLOS ALBERTO DE LA CRUZ TORRES', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(111, 'yukids', 'YUKIDS', 'Servicio de entretenimiento para niños.', 'logo-ica-yukids.jpg', 'ica-yukids.jpg', 'LC-202-204-206', '10', 2, '983743762', 'YUKIDSICA@CONEYPARKPERU.COM', 'FIORELLA VILLA GUTIÉRREZ', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(112, 'zona-cel', 'ZONA CEL', 'Venta de accesorios para celulares.', 'logo-ica-zonacel.jpg', 'ica-zonacel.jpg', 'M-122', '1', 1, '971004434', 'SUPICA@ZONACEL.PE', 'MARA CACERES QUICAÑO', 1, 'ica', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(113, 'american-brands', 'American Brands', 'American Brands, es más que una tienda, es un estilo de vida, donde podrás encontrar las marcas que más te gustan en un solo lugar.', 'logo-cajamarca-americanbrands.jpg', 'cajamarca-americanbrands.jpg', 'LI-302-303', '26|28', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-06-26 12:21:31'),
(114, 'aris-store', 'Aris Store', 'Marca especializada en electrónica de consumo, aparatos y moda.', 'logo-cajamarca-arisstore.jpg', 'cajamarca-arisstore.jpg', 'M-114', '9', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(115, 'autoplan', 'Autoplan', 'Empresa administradora de fondos colectivos.', '5cec6aa416441_logo-cajamarca-autoplan.jpg', 'cajamarca-autoplan.jpg', 'M122-123', '2', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-27 22:54:28'),
(116, 'baby-infanti', 'Baby Infanti', 'Marca que ofrece productos seguros y cómodos para los bebes y a su vez prácticos e innovadores para los padres.', 'logo-cajamarca-babyinfanti.jpg', 'cajamarca-babyinfanti.jpg', 'LM-109A,LC-134,LC-136', '15', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(117, 'baby-modas', 'Baby Modas', 'Marca de vestuario y accesorios para bebés y niños entre 0 y 8 años.', 'logo-cajamarca-babymodas.jpg', '5cec6ab89582a_cajamarca-babymodas.jpg', 'LC-  324', '15|27', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-27 22:54:48'),
(118, 'banco-falabella', 'Banco Falabella', 'El Banco Falabella Perú cuenta con el respaldo financiero del Grupo Falabella.', 'logo-cajamarca-bancofalabella.jpg', '5cec6d3d19c02_cajamarca-bancofalabela.jpg', 'LC-302,LC-304,LC-306', '23', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-27 23:05:33'),
(119, 'banco-interbank', 'Banco Interbank', 'Banco que brinda información sobre cuentas, créditos, tarjetas, seguros y más.', 'logo-cajamarca-interbank.jpg', 'cajamarca-interbank.jpg', 'LE-115,LE-116', '23', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(120, 'bata', 'Bata', 'Empresa dedicada a la venta de calzado para hombres, mujeres y niños.', 'logo-cajamarca-bata.jpg', 'cajamarca-bata.jpg', 'LC-222/224/226/228/230', '4|6|5', 2, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(121, 'bbva-continental', 'BBVA Continental', 'Banco que se dedica a brindar información de ahorro e inversión, tarjetas, préstamos y seguros.', 'logo-cajamarca-bbva.jpg', 'cajamarca-bbva.jpg', 'LE-113,LE-114,LC-323,LC-325,LC-327', '23', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(122, 'bcp', 'BCP', 'Banco más grande y proveedor de servicios financieros integrados en el Perú.', 'logo-cajamarca-bcp.jpg', 'cajamarca-bcp.jpg', 'LC-129,LC-131,LC-133,LC-135,LE-110,LE-111,LE-112', '23', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(123, 'bitel', 'Bitel', 'Te invitamos a ser parte de la comunidad Bitel; entérate de lo último que tenemos para ti: Prepago, Postpago, Equipos, Connect, Planes Mifi, Bitelplus', 'logo-cajamarca-bitel.jpg', 'cajamarca-bitel.jpg', 'LC-100', '23', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(124, 'bitel-stand', 'Bitel', 'Venta de equipos celulares.', 'logo-cajamarca-bitel.jpg', 'cajamarca-bitelstand.jpg', 'LC-100', '23', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(125, 'bubble-gummers', 'Bubble Gummers', 'Una de las marcas más importante de calzados para niños, que está presente en más de 60 países alrededor del mundo. En Bubble Gummers encuentra calzado infantil innovador y divertido de la más alta calidad.', 'logo-cajamarca-bubblegummers.jpg', 'cajamarca-bubblegummers.jpg', 'LC-430', '5', 2, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(126, 'caja-piura', 'Caja Piura', 'Institución financiera líder en el sector de micro finanzas en el mercado peruano.', 'logo-cajamarca-cajapiura.jpg', 'cajamarca-cajapiura.jpg', 'LE-104,LE-105', '23', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(127, 'calimod', 'Calimod', 'Empresa peruana con más de 50 años de experiencia reconocida por la calidad y elegancia en calzados de cuero 100% natural.', 'logo-cajamarca-calimod.jpg', 'cajamarca-calimod.jpg', 'LC-412,LC-414', '4|6', 2, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(128, 'casa-de-cambio', 'Casa de Cambio', '', 'logo-cajamarca-casadecambio.jpg', 'cajamarca-casadecambio.jpg', 'LC-113', '23', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(129, 'cascanuez', 'Cascanuez', 'Postres, sandwiches, jugos y muchas cosas más de las que podras disfrutar.', 'logo-cajamarca-cascanuez.jpg', 'cajamarca-cascanuez.jpg', 'LC-109', '3', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(130, 'cinerama', 'Cinerama', 'Disfruta de todas tus pelis en 4K, solo en Cinerama.', 'logo-cajamarca-cinerama.jpg', 'cajamarca-cinerama.jpg', 'LM-201,LM-203', '10', 2, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(131, 'claro-cac', 'Claro CAC', 'La mejor atención a los clientes de Claro, todos los días de la semana. ', 'logo-cajamarca-claro.jpg', 'cajamarca-clarocac.jpg', 'LC-301,LC-303,LE-120,LE-119A', '23', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(132, 'claro-distribuidor', 'Claro Distribuidor', 'Empresa que brinda servicios de telecomunicaciones.', 'logo-cajamarca-claro.jpg', 'cajamarca-clarodistribuidor.jpg', 'LC-115,LC-117', '23', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(133, 'claro-tv', 'Claro TV', 'Con Claro TV no te perderás tus programas de TV favoritos, los últimos lanzamientos de pelis y series, documentales, música, deportes y mucho más.', 'logo-cajamarca-claro.jpg', 'cajamarca-clarostand.jpg', '2M-114', '23', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(134, 'coolbox', 'Coolbox', 'Encuentra lo último en tecnología a los mejores precios en Coolbox Perú.', 'logo-cajamarca-coolbox.jpg', 'cajamarca-coolbox.jpg', 'LC-126,LC-128,LC-130,LC-132,LM-108A', '9', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(135, 'dead-sea-premier', 'Dead sea Premier', 'Más de 150 productos originales para el cuidado de la piel, el cabello y el cuerpo, perfumería y cosmética.', '5cec6bed1489f_logo-cajamarca-premier.jpg', '5cec6bed21322_cajamarca-premier.jpg', 'M-108', '22', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-27 22:59:57'),
(136, 'deli-cafe', 'Deli Café', 'Variedad de exquisitos cafés, hechos por nuestros baristas.', 'logo-cajamarca-delicafe.jpg', 'cajamarca-delicafe.jpg', 'M125, T125', '3', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(137, 'dicous', 'Dicous', 'Relájate con los mejores sillones masajeadores terapéuticos, solo en Dicous, bienestar solo para ti.', 'logo-cajamarca-dicous.jpg', 'cajamarca-dicous.jpg', 'M206', '22', 2, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(138, 'directv', 'Directv', 'DirecTV es tu mejor opción en cable satélite HD donde veras películas series cales para niños de acuerdo a su edad ligas y campeonatos nacionales y extranjeros radio, canales nacionales.', 'logo-cajamarca-directv.jpg', '5cec73a41b51c_cajamarca-directtv.jpg', 'M-104', '23', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-27 23:32:52'),
(139, 'donofrio-glace-and-topping', 'Donofrio Glace and Topping', 'Ven y disfruta de los mejores helados, con la calidad de siempre de D´onofrio, no te pierdas nuestros deliciosos zambitos y exquisitas combinaciones.', 'logo-cajamarca-donofrio.jpg', 'cajamarca-donofrio.jpg', 'M-121', '3', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(140, 'encanta2', 'Encanta2', 'Los mejores detalles para tu persona especial, enamórala cada dia más con ENCANTA2', 'logo-cajamarca-encanta2.jpg', '5cec6ae5bfd9c_cajamarca-encanta2.jpg', 'LC-406,LC-408\n', '15', 2, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-27 22:57:39'),
(141, 'entel', 'Entel', 'En Entel trabajamos para que más peruanos vivan mejor conectados y para que las empresas del país optimicen sus procesos de negocio.', 'logo-cajamarca-entel.jpg', 'cajamarca-entel.jpg', 'M-102', '23', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(142, 'factory-brands', 'Factory Brands', '¿No te decides por una sola marca? Elige tu favorita y recuerda que en Factory Brands siempre tienes hasta 60% de descuento en productos de las mejores marcas.', 'logo-cajamarca-factorybrands.jpg', 'cajamarca-factorybrands.jpg', 'LC-405,LC-407', '26|28|27', 2, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(143, 'fama-tell', 'Fama Tell', 'Encuentra las mayor variedad de laptops, celulares, tablets y accesorios solo en Fama Tell', '5cec6ccce82aa_logo-cajamarca-famatell.jpg', 'cajamarca-famatell.jpg', 'M-124', '9', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-27 23:03:40'),
(144, 'fitness-de-impacto', 'Fitness de Impacto', 'Fitness de Impacto es el gimnasio mas completo de Cajamarca: excelentes profesionales, modernos equipos, cómodos ambientes.', 'logo-cajamarca-fitnessdeimpacto.jpg', 'cajamarca-fitnessdeimpacto.jpg', 'LC-234,LC-236,LC-238,LC-240,LC-242,LC-244,LM-208,LM-209', '12', 2, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(145, 'florideas', 'FlorIdeas', 'Los mejores detalles para esa persona especial, la que hace que los momentos juntos sean inolvidables', 'logo-cajamarca-florideas.jpg', 'cajamarca-florideas.jpg', 'LC-125A', '29', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(146, 'footloose', 'FootLoose', 'Más de 20 marcas oficiales de calzado deportivo y casual en nuestras 90 tiendas a nivel nacional. ', 'logo-cajamarca-footloose.jpg', 'cajamarca-footloose.jpg', 'LE-101', '4|6|5', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(147, 'gasa', 'Gasa', 'Venta de Inmuebles.', 'logo-cajamarca-gasa.jpg', 'cajamarca-gasa.jpg', 'M-120', '13', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(148, 'gmo', 'GMO', 'Productos oftálmicos, de sol y lentes de contacto tanto de fabricación propia como de las más exclusivas marcas internacionales, a la vanguardia en la moda y con las últimas tecnologías del mercado.', 'logo-cajamarca-gmo.jpg', 'cajamarca-gmo.jpg', 'LC-318,LC-320', '18', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(149, 'gzuck', 'Gzuck', 'Marca dedicada a la venta de accesorios y ropa para personas que practican deportes extremos.', 'logo-cajamarca-gzuck.jpg', 'cajamarca-gzuck.jpg', 'LC-322', '1|26|28|8', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(150, 'hym', 'H&M', 'Moda y calidad al mejor precio de una manera sostenible.', 'logo-cajamarca-hym.jpg', 'cajamarca-hym.jpg', 'LC 102-104-106-108-110-112-210-212-214 -216-218-220', '1|26|28|27|4', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(152, 'heladeria-holanda', 'Heladería Holanda', 'Helados hechos de crema, en su mayoría, a base de frutas oriundas de nuestra región Cajamarca, en la actualidad posee más de 50 sabores diferentes.', 'logo-cajamarca-heladeriaholanda.jpg', '5cec6c8cbcd0e_cajamarca-heladosholanda.jpg', 'M-117', '3', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-06-17 17:49:53'),
(153, 'helado-magico', 'Helado Mágico', 'Helados Artesanales, preparados al instante, congelado con Nitrógeno Líquido. Helados 100% saludables!!!!!', 'logo-cajamarca-heladomagico.jpg', 'cajamarca-heladomagico.jpg', 'M-205', '3', 2, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(154, 'igloo-ice', 'Igloo Ice', 'Encontramos a los mejores maestros heladeros con tradición Italiana y gracias a los sabores exquisitos de nuestro país, dimos origen a los únicos, deliciosos e incomparables helados Igloo.', '5cec6d955890c_logo-cajamarca-igloo.jpg', 'cajamarca-igloo.jpg', 'M-103\n', '3', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-27 23:07:01'),
(155, 'inkafarma', 'Inkafarma', 'Inkafarma, la primera cadena de boticas con cobertura a nivel nacional.', 'logo-cajamarca-inkafarma.jpg', 'cajamarca-inkafarma.jpg', 'LC-217', '11', 2, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(156, 'intralot-tienda', 'Intralot Tienda', 'Servicios para juegos de lotería en el mundo. ¡Juega a millonario con la Tinka! Y vive tu juego y tu pasión con Te Apuesto.', 'logo-cajamarca-intralot.jpg', 'cajamarca-intralot.jpg', 'LE-102A', '29', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-27 23:49:28'),
(157, 'intralot-stand', 'Intralot Stand', 'Servicios para juegos de lotería en el mundo. ¡Juega a millonario con la Tinka! Y vive tu juego y tu pasión con Te Apuesto.', 'logo-cajamarca-intralot.jpg', 'cajamarca-intralotstand.jpg', '2M- 106B', '29', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-27 23:49:06'),
(158, 'jotitas', 'Jotitas', 'Variedad de chupetes hecho con fruta de la mayor calidad.', '5cec6cffd2993_logo-cajamarca-jotita.jpg', 'cajamarca-jotitas.jpg', 'M-115\n', '3', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-27 23:04:31'),
(159, 'kfc', 'KFC', 'Venta de comida rápida.', 'logo-cajamarca-kfc.jpg', 'cajamarca-kfc.jpg', 'PC-106,PC-107,PC-108', '19', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(160, 'khus', 'Khus', 'Encuentra miles de detalles aquí, Khus...Marcando tu estilo!', 'logo-cajamarca-khus.jpg', 'cajamarca-khus.jpg', 'LC-127', '7|15', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(161, 'la-choza-de-la-anaconda', 'La Choza de la Anaconda', 'Venta de comida amazónica.', 'logo-cajamarca-lachozadelaanaconda.jpg', 'cajamarca-lachozadelaanaconda.jpg', 'R01', '21', 2, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(162, 'la-curacao', 'La Curacao', 'Tiendas de electrodomésticos que brinda una gran variedad de productos de las mejores marcas a los mejores precios.', 'logo-cajamarca-lacuracao.jpg', 'cajamarca-lacuracao.jpg', 'LC-305,LC-307,LC-311,LC-315,LE-117,LE-118', '9', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(163, 'la-positiva', 'La Positiva', 'Venta de seguros.', 'logo-cajamarca-lapositiva.jpg', 'cajamarca-lapositiva.jpg', 'M-101B', '23', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(164, 'la-zona', 'La Zona', 'Venta de calzado y artículos deportivos de las las mejores marcas a un precio justo.', 'logo-cajamarca-lazona.jpg', 'cajamarca-lazona.jpg', 'LC-410', '8|26|28', 2, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(165, 'latam', 'LATAM', 'Venta de pasajes aereos nacionales e internacionales.', 'logo-cajamarca-latam.jpg', 'cajamarca-latam.jpg', 'LC-107', '29', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(166, 'latorre-bebes-y-ninos', 'Latorre Bebés y Niños', 'Productos de calidad necesarios en el cuidado y crianza de tu bebé en cada etapa de su desarrollo.', 'logo-cajamarca-latorre.jpg', 'cajamarca-latorre.jpg', 'LC-411,LC-413', '27|1', 2, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(167, 'mae-alcott', 'Mae Alcott', 'Mae Alcott viste a la mujer peruana desde 1987, haciéndola sentir bella, elegante, a la moda y sobre todo, segura de sí misma en cualquier ocasión. ', 'logo-cajamarca-maealcott.jpg', 'cajamarca-maealcott.jpg', 'LC-124', '26', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(168, 'metro', 'Metro', 'Encuentra todo lo que necesitas en Metro, precios más bajos... SIEMPRE!', 'logo-cajamarca-metro.jpg', 'cajamarca-metro.jpg', 'LC-137,LC-139,LM-114,U.I.-1,U.I.-2,U.I-3', '24', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(169, 'mi-farma', 'Mi Farma', 'Botica dedicada a la venta de medicinas de orden genérico y de marca así como artículos de perfumería, materiales, accesorios, entre otros.', 'logo-cajamarca-mifarma.jpg', 'cajamarca-mifarma.jpg', 'LC- 114,116,118,120,122', '11', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-06-17 20:51:01'),
(170, 'moggui-frozen-yogurt', 'Moggui Frozen Yogurt', 'Moggui ofrece el más cremoso y delicioso yogurt cajamarquino hecho helado. Un producto saludable, bajo en calorias perfecto para cada momento y todas las edades.', 'logo-cajamarca-moggui.jpg', 'cajamarca-moggui.jpg', 'M-110', '3', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(171, 'movistar', 'Movistar', 'Todo el Entretenimiento para tu Hogar y Móvil con los mejores descuentos.', 'logo-cajamarca-movistar.jpg', 'cajamarca-movistar.jpg', 'LE-102,LE-103,LC-103,LC-105', '23', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(172, 'opcion', 'Opción', 'Opción te permite alcanzar mes a mes la Inversión Inmobiliaria, Vehicular o la Maquinaria que tanto deseas.', 'logo-cajamarca-opcion.jpg', 'cajamarca-opcion.jpg', 'M-109', '2', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(173, 'opticas-color-vision', 'Opticas Color Vision', 'Venta de monturas oftálmicas y lentes de sol. Encuentra las mejores marcas: DE PIERO, CAPACCI y COLOR VISION, U2, VANITY, RASTA, entre otras.', 'logo-cajamarca-colorvision.jpg', 'cajamarca-colorvision.jpg', 'LC-123,LC-125', '18', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(174, 'paris', 'Paris', 'Tienda por departamentos que ofrece  moda, belleza, decoración, tecnología y artículos para el público en general.', 'logo-cajamarca-paris.jpg', 'cajamarca-paris.jpg', 'LM-301', '25', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-27 23:45:23');
INSERT INTO `tiendas` (`id`, `slug`, `nombre`, `descripcion`, `logo`, `imagen`, `ubicacion`, `categoria`, `nivel`, `telefono_contacto`, `email_contacto`, `nombre_contacto`, `estado`, `ciudad`, `created_at`, `updated_at`) VALUES
(175, 'phantom', 'Phantom', 'Es una empresa que se dedica a vender lo último en videojuegos.', '5cec732aa5b65_logo-cajamarca-phantom.jpg', 'cajamarca-phantom.jpg', 'LC-141,LC-143\n', '9', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-27 23:30:50'),
(176, 'pionier', 'Pionier', 'Marca especializada en jeans estilo urbano. Está dirigida a jóvenes, adultos y niños.', 'logo-cajamarca-pionier.jpg', 'cajamarca-pionier.jpg', 'LC-119,LC-121', '26|28', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(177, 'pizza-hut', 'Pizza Hut', 'Venta de pizzas.', 'logo-cajamarca-pizzahut.jpg', 'cajamarca-pizzahut.jpg', 'PC-103,PC-104,PC-105', '19', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(178, 'porta', 'Porta', 'Venta de productos para transportar artículos y objetos.', 'logo-cajamarca-porta.jpg', 'cajamarca-porta.jpg', 'LC-317', '17', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(179, 'renzo-costa', 'Renzo Costa', 'Empresa peruana dedicada a la venta de artículos y accesorios de cuero para mujeres y hombres.', 'logo-cajamarca-renzocosta.jpg', 'cajamarca-renzocosta.jpg', 'LI-304', '17|1', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(180, 'sabor-y-tradicion', 'Sabor y Tradición', 'Restaurante de carnes y parrillas de la mejor calidad.', 'logo-cajamarca-saborytradicion.jpg', 'cajamarca-saborytradicion.jpg', 'R-03', '21', 2, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(181, 'sabores-peruanos', 'Sabores Peruanos', 'Restaurante de la cocina peruana.', 'logo-cajamarca-saboresperuanos.jpg', 'cajamarca-saboresperuanos.jpg', 'PC-110', '19', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(182, 'safari-adventure', 'Safari Adventure', 'Juegos recreativos para niños.', 'logo-cajamarca-safariadventure.jpg', '5cec71263340a_cajamarca-safariadventures.jpg', 'M-205A', '10', 2, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-27 23:22:14'),
(183, 'falabella', 'Falabella', 'Tienda por departamentos que ofrece tecnología, electrodomésticos, zapatos, muebles, colchones, deportes, juguetes, moda, belleza y mucho más', 'logo-cajamarca-sagafalabella.jpg', 'cajamarca-sagafalabella.jpg', 'LM-109B', '25', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-28 00:24:23'),
(184, 'sat-cajamarca', 'SAT Cajamarca', 'El Servicio de Administración Tributaria de Cajamarca.', 'logo-cajamarca-satcajamarca.jpg', 'cajamarca-satcajamarca.jpg', 'LC-409', '23', 2, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(185, 'scotiabank', 'Scotiabank', 'Banco el que brinda información sobre préstamos, créditos, cuentas de ahorro, tarjetas de crédito, seguros y más', 'logo-cajamarca-scotiabank.jpg', 'cajamarca-scotiabank.jpg', 'LE-106,LE-107,LE-108,LE-109', '23', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(186, 'sedacaj', 'Sedacaj', 'Realiza tus pagos de recibos de agua y luz, además de consultas y reclamos.', 'logo-cajamarca-sedacaj.jpg', 'cajamarca-sedacaj.jpg', 'LC-416', '23', 2, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(187, 'sunglass-hut', 'Sunglass Hut', 'Venta de gafas de sol.', 'logo-cajamarca-sunglasshut.jpg', 'cajamarca-sunglasshut.jpg', 'LC-321', '18', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(188, 'suntime-store', 'Suntime Store', 'Venta de relojes, gafas de sol y gorras.', 'logo-cajamarca-suntimestore.jpg', '5cec7311e9c94_cajamarca-suntime.jpg', 'LC-316\n', '18', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-27 23:30:25'),
(189, 'tai-loy', 'Tai Loy', 'Empresa dedicada a la venta de  útiles, artículos de oficina, juguetes y más. ', 'logo-cajamarca-tailoy.jpg', 'cajamarca-tailoy.jpg', 'LC-401-403', '16', 2, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(190, 'the-cult', 'The Cult', 'Venta de ropa y accesorios masculinos.', 'logo-cajamarca-thecult.jpg', 'cajamarca-thecult.jpg', 'LC-229,LC-231,LC-233', '28', 2, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(191, 'tiendas-el', 'Tiendas El', 'Venta de ternos y accesorios para caballeros.', 'logo-cajamarca-tiendasel.jpg', 'cajamarca-tiendasel.jpg', 'LC-221,223,225', '28', 2, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(192, 'valentinos', 'Valentinos', 'Venta de joyas de oro y plata.', 'logo-cajamarca-valentinos.jpg', 'cajamarca-valentinos.jpg', 'M-210', '14', 2, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(193, 'vanitys', 'Vanity´s', 'Encuentra la mejor variedad y calidad de prendas íntimas.', 'logo-cajamarca-vanitys.jpg', 'cajamarca-vanitys.jpg', 'LC-145', '26', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(194, 'viale', 'Viale', 'Venta de calzado ideal con descuentos.', 'logo-cajamarca-viale.jpg', 'cajamarca-viale.jpg', 'LC-415,LC-417', '4|6|5', 2, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(195, 'vision-center', 'Vision Center', 'Venta de monturas oftálmicas y lentes de sol de las mejores marcas.', 'logo-cajamarca-visioncenter.jpg', 'cajamarca-visioncenter.jpg', 'LC-101', '18', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(196, 'weinbrenner', 'Weinbrenner', 'Colecciones que se adaptan a todo tipo de actividades y vida al aire libre: zapatos, ropa y accesorios fuertes que te acompañaran en todas las aventuras y actividades.', 'logo-cajamarca-weinbrenner.jpg', 'cajamarca-weinbrenner.jpg', 'LC-428', '8', 2, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(197, 'western-union', 'Western Union', 'Enviar dinero alrededor de todo el mundo, de una forma rápida y sencilla.', 'logo-cajamarca-westernunion.jpg', 'cajamarca-westernunion.jpg', 'M116', '23', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(198, 'wo-smartphone', 'Wo Smartphone', 'Tienda de Accesorios para celulares y tablets: Protectores de pantalla, Hard Case, Flip Cover, cables de datos, power bank, bluetooth, además brindamos soporte técnico.', 'logo-cajamarca-wosmartphone.jpg', 'cajamarca-wosmartphone.jpg', 'M-111', '1', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-05-21 22:20:00'),
(199, 'zona-cel', 'Zona Cel', 'LCases y accesorios para brindarle #MáximaProtección a tu Celular están solo aquí. Nos dedicamos a proteger, decorar, personalizar, complementar y mejorar la experiencia de uso de tu celular con calidad a precios justos.', 'logo-cajamarca-zonacel.jpg', 'cajamarca-zonacel.jpg', 'M-113', '1', 1, '', '', '', 1, 'cajamarca', '2019-05-21 22:20:00', '2019-06-11 15:52:03'),
(200, 'chronos', 'Chronos', 'Colección de relojes de marcas exclusivas como Timex, Guess, Citizen, Cat, Tommy Hilfiger, Mulco y Joyas Guess.', '5cf6e22dd5d34_logo-cajamarca-chronos.jpg', '5cf6dee4a5b9e_cajamarca-citizen.jpg', 'M-119', '20', 1, NULL, NULL, NULL, 1, 'cajamarca', '2019-06-04 21:13:08', '2019-06-11 15:40:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@elquinde.pe', '$2y$10$F469kin/xG3Kwby4NSJYb.ePQPfRYV0.Igx4Qjvqj6ubfdonYDVLS', 'n5FKFo0iY2lETCZeFE1BlEOJ2gtn0SZUwr3u9695NCDfZHfrTqJD4EZWfSlm', '2018-11-29 01:48:00', '2018-11-29 01:48:00'),
(2, 'Quinde', 'cliente@elquinde.pe', '$2y$10$CJB8wmJhnF2nsDdASn/we.hOEIOFiGSIg8oRFdZEkJ93DbWVFWIhC', 'vOZ4aFhY8iIhhfALnefMHt88E14UGn8cBYeDq8wJmFO54ZULmH1Zx6bnFLut', '2019-05-24 19:35:52', '2019-05-24 19:35:52'),
(3, 'vladi', 'vflores_web@hotmail.com', '$2y$10$nSLKGtfLMEEXglF0rssj/.o0JayP8I5XMyXXvA8asHfIomoFv.6mm', 'gHsmURlaWiRddLzn1H87oSgXpnQglaxjvghXJ3RJkNPwaArcnH4k6hrLZPbE', '2019-08-12 05:00:00', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `billboards`
--
ALTER TABLE `billboards`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoria_tiendas`
--
ALTER TABLE `categoria_tiendas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_categoria_tiendas`
--
ALTER TABLE `detalle_categoria_tiendas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `dni` (`dni`);

--
-- Indices de la tabla `registro_tiendas`
--
ALTER TABLE `registro_tiendas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tiendas`
--
ALTER TABLE `tiendas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actors`
--
ALTER TABLE `actors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=415;

--
-- AUTO_INCREMENT de la tabla `billboards`
--
ALTER TABLE `billboards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `categoria_tiendas`
--
ALTER TABLE `categoria_tiendas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=383;

--
-- AUTO_INCREMENT de la tabla `detalle_categoria_tiendas`
--
ALTER TABLE `detalle_categoria_tiendas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT de la tabla `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `horarios`
--
ALTER TABLE `horarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=280;

--
-- AUTO_INCREMENT de la tabla `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT de la tabla `registros`
--
ALTER TABLE `registros`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT de la tabla `registro_tiendas`
--
ALTER TABLE `registro_tiendas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `tiendas`
--
ALTER TABLE `tiendas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
