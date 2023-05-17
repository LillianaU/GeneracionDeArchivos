-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-05-2023 a las 01:42:08
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
-- Base de datos: `esquema`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `email` text NOT NULL,
  `foto` text DEFAULT NULL,
  `password` text NOT NULL,
  `estado` text NOT NULL,
  `perfil` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id`, `nombre`, `email`, `foto`, `password`, `estado`, `perfil`, `fecha`) VALUES
(35, 'michell34', 'michell34@gmail.com', NULL, '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', '1', 'administrador', '2020-08-20 17:42:20'),
(36, 'ever aguirre', 'ever@gmail.com', NULL, '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', '1', 'administrador', '2020-08-20 17:58:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text NOT NULL,
  `ruta` text NOT NULL,
  `estado` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `ruta`, `estado`, `fecha`) VALUES
(1, 'programacion', 'programacion', 1, '2020-06-22 16:32:48'),
(2, 'diseño', 'diseño', 1, '2020-06-22 16:32:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

CREATE TABLE `contactos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `contactos`
--

INSERT INTO `contactos` (`id`, `nombre`, `telefono`, `email`) VALUES
(1, 'Juan Perez', '5512345678', 'juan@mail.com'),
(2, 'Pedro Gomez', '5512345698', 'pedro@mail.com'),
(3, 'Ezequiel Ramirez', '5512345687', 'ezequiel@mail.com'),
(4, 'Maria Solano', '5512345663', 'maria@mail.com'),
(5, 'Ana Martinez', '5512345612', 'ana@mail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `loguin`
--

CREATE TABLE `loguin` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contraseña` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `loguin`
--

INSERT INTO `loguin` (`id`, `nombre`, `email`, `contraseña`) VALUES
(1, 'ana', 'ana@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `signo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`codigo`, `nombre`, `edad`, `signo`) VALUES
(0, 'maria mascota', 20, 'libra'),
(2, 'Maria Lopez', 25, 'Aries'),
(3, 'Luis Martinez', 32, 'Tauro'),
(4, 'Ana Garcia', 28, 'Géminis'),
(5, 'Pedro Fernandez', 35, 'Cáncer'),
(6, 'Lucia Sanchez', 19, 'Leo'),
(7, 'Carlos Gomez', 45, 'Virgo'),
(9, 'David Martin', 42, 'Escorpio'),
(10, 'Ester Hernandez', 23, 'Sagitario'),
(11, 'Antonio Perez', 47, 'Capricornio'),
(12, 'Laura Lopez', 21, 'Acuario'),
(13, 'Miguel Gomez', 22, 'Piscis'),
(14, 'Andres Martin', 29, 'Aries'),
(15, 'Julia Fernandez', 33, 'Tauro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `genero` varchar(10) NOT NULL,
  `attendance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`id`, `nombre`, `genero`, `attendance`) VALUES
(15, 'cleotilde', 'femenino', 17),
(21, 'beto', 'masculino', 43),
(23, 'ramiro', 'masculino', 43),
(25, 'mario', 'masculino', 43),
(51, 'bertha', 'femenino', 3),
(65, 'maria', 'femenino', 73),
(85, 'benito', 'masculino', 43);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `nombre`, `precio`) VALUES
(3, 'Pan', 1.00),
(4, 'Arroz', 2.00),
(5, 'Frijoles', 1.50),
(6, 'Carne de res', 8.00),
(7, 'Carne de cerdo', 6.00),
(8, 'Pollo', 5.00),
(9, 'Pescado', 10.00),
(10, 'Verduras', 3.00),
(11, 'Frutas', 2.50),
(12, 'Aceite', 4.00),
(13, 'Azúcar', 1.50),
(14, 'Sal', 0.50),
(15, 'Café', 5.00),
(16, 'Té', 2.50),
(17, 'Refresco', 1.50),
(18, 'Agua', 0.50),
(19, 'Cerveza', 2.00),
(21, 'tamal', 3243.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `ruta` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `detalle` varchar(255) NOT NULL,
  `precio` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_clientes`
--

CREATE TABLE `tabla_clientes` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Genero` varchar(10) DEFAULT NULL,
  `Profesion` varchar(50) DEFAULT NULL,
  `Pais` varchar(50) DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tabla_clientes`
--

INSERT INTO `tabla_clientes` (`id`, `Nombre`, `Genero`, `Profesion`, `Pais`, `fecha`) VALUES
(1, 'Juan Perez', 'Masculino', 'Ingeniero', 'España', '1980-01-01'),
(2, 'Maria Lopez', 'Femenino', 'Medico', 'Argentina', '1995-05-15'),
(3, 'Luis Martinez', 'Masculino', 'Abogado', 'Chile', '1975-07-20'),
(4, 'Ana Garcia', 'Femenino', 'Profesora', 'Ecuador', '2005-12-25'),
(5, 'Pedro Fernandez', 'Masculino', 'Contador', 'Perú', '1990-10-10'),
(6, 'Lucia Sanchez', 'Femenino', 'Estudiante', 'Brasil', '2003-03-03'),
(7, 'Carlos Gomez', 'Masculino', 'Programador', 'Uruguay', '1978-08-08'),
(8, 'Sara Rodriguez', 'Femenino', 'Diseñadora', 'Colombia', '2010-04-04'),
(9, 'David Martin', 'Masculino', 'Relaciones Públicas', 'Venezuela', '1965-06-11'),
(10, 'Ester Hernandez', 'Femenino', 'Periodista', 'Bolivia', '2000-01-20'),
(11, 'Antonio Perez', 'Masculino', 'Comerciante', 'Paraguay', '1967-12-12'),
(12, 'Laura Lopez', 'Femenino', 'Médico', 'Costa Rica', '1992-11-11'),
(13, 'Miguel Gomez', 'Masculino', 'Contador', 'Panamá', '1988-07-07'),
(14, 'Andres Martin', 'Masculino', 'Abogado', 'México', '1980-02-01'),
(15, 'Julia Fernandez', 'Femenino', 'Profesora', 'Cuba', '1995-09-15'),
(25, 'lilliana', 'fenenino', 'Ingeniera de sistemas', 'Israel', '1983-09-24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(6) UNSIGNED NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id` int(11) NOT NULL,
  `date_at` date DEFAULT NULL,
  `val` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`id`, `date_at`, `val`) VALUES
(1, '2019-01-01', 100),
(2, '2019-01-02', 80),
(3, '2019-01-03', 205),
(4, '2019-01-04', 323),
(5, '2019-01-05', 110),
(6, '2019-01-06', 40),
(7, '2019-01-07', 80),
(8, '2019-01-08', 220),
(9, '2019-01-09', 95),
(10, '2019-01-10', 120),
(11, '2019-01-11', 249),
(12, '2019-01-12', 157),
(13, '2019-01-13', 199),
(14, '2019-01-14', 30),
(15, '2019-01-15', 290);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `loguin`
--
ALTER TABLE `loguin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tabla_clientes`
--
ALTER TABLE `tabla_clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `loguin`
--
ALTER TABLE `loguin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
