-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-10-2020 a las 21:18:40
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `trapitos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `barrio`
--

CREATE TABLE `barrio` (
  `ID_Barrio` varchar(15) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `ID_Localidad` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `ID_Categoria` varchar(10) NOT NULL,
  `Nombre_Categoria` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`ID_Categoria`, `Nombre_Categoria`) VALUES
('CAT01', 'Chaquetas'),
('CAT02', 'pantalones'),
('CAT03', 'Formal'),
('CAT04', 'Informal'),
('CAT05', 'blusa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `ID_Ciudad` varchar(15) NOT NULL,
  `Nombre_Ciudad` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`ID_Ciudad`, `Nombre_Ciudad`) VALUES
('CIU001', 'Aguachica'),
('CIU002', 'Apartadó'),
('CIU003', 'Arauca'),
('CIU004', 'Armenia'),
('CIU005', 'Barrancabermeja'),
('CIU006', 'Barranquilla'),
('CIU007', 'Bello'),
('CIU008', 'Bogotá'),
('CIU009', 'Bucaramanga'),
('CIU010', 'Buenaventura'),
('CIU011', 'Buga'),
('CIU012', 'Cali '),
('CIU013', 'Cartago'),
('CIU014', 'Cartagena'),
('CIU015', 'Caucasia'),
('CIU016', 'Cereté'),
('CIU017', 'Chia'),
('CIU018', 'Ciénaga'),
('CIU019', 'Cúcuta'),
('CIU020', 'Dosquebradas'),
('CIU021', 'Duitama'),
('CIU022', 'Envigado'),
('CIU023', 'Facatativá'),
('CIU024', 'Florencia'),
('CIU025', 'Floridablanca'),
('CIU026', 'Fusagasugá'),
('CIU027', 'Girardot'),
('CIU028', 'Girón'),
('CIU029', 'Ibagué'),
('CIU030', 'Ipiales'),
('CIU031', 'Itagüí'),
('CIU032', 'Jamundí'),
('CIU033', 'Lorica'),
('CIU034', 'Los Patios'),
('CIU035', 'Magangué'),
('CIU036', 'Maicao'),
('CIU037', 'Malambo'),
('CIU038', 'Manizales'),
('CIU039', 'Medellín'),
('CIU040', 'Melgar'),
('CIU041', 'Montería'),
('CIU042', 'Neiva'),
('CIU043', 'Ocaña'),
('CIU044', 'Paipa'),
('CIU045', 'Palmira'),
('CIU046', 'Pamplona'),
('CIU047', 'Pasto'),
('CIU048', 'Pereira'),
('CIU049', 'Piedecuesta'),
('CIU050', 'Pitalito'),
('CIU051', 'Popayán'),
('CIU052', 'Quibdó'),
('CIU053', 'Riohacha'),
('CIU054', 'Rionegro'),
('CIU055', 'Sabanalarga'),
('CIU056', 'Sahagún'),
('CIU057', 'San Andrés'),
('CIU058', 'Santa Marta'),
('CIU059', 'Sincelejo'),
('CIU060', 'Soacha'),
('CIU061', 'Sogamoso'),
('CIU062', 'Soledad'),
('CIU063', 'Tibú'),
('CIU064', 'Tuluá'),
('CIU065', 'Tumaco'),
('CIU066', 'Tunja'),
('CIU067', 'Turbo'),
('CIU068', 'Valledupar'),
('CIU069', 'Villa de leyva'),
('CIU070', 'Villa del Rosario'),
('CIU071', 'Villavicencio'),
('CIU072', 'Valledupar'),
('CIU073', 'Villa de leyva'),
('CIU074', 'Villa del Rosario'),
('CIU075', 'Villavicencio'),
('CIU076', 'Zipaquirá');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clasificacion`
--

CREATE TABLE `clasificacion` (
  `ID_Clasificacion` varchar(10) NOT NULL,
  `Nombre_Clasificacion` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clasificacion`
--

INSERT INTO `clasificacion` (`ID_Clasificacion`, `Nombre_Clasificacion`) VALUES
('CLAS01', 'Unisex'),
('CLAS02', 'Mujeres'),
('CLAS03', 'Niños'),
('CLAS04', 'Bebes'),
('CLAS05', 'Niñas'),
('CLAS06', 'Hombres');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envio`
--

CREATE TABLE `envio` (
  `ID_Envio` varchar(10) NOT NULL,
  `Descripcion` text NOT NULL,
  `Fecha_Envio` date DEFAULT NULL,
  `Responsable` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `ID_Factura` varchar(15) NOT NULL,
  `ID_Usuario` varchar(15) NOT NULL,
  `ID_Tipo_Documento` varchar(15) NOT NULL,
  `Fecha` date NOT NULL,
  `Hora` time NOT NULL,
  `Subtotal` varchar(20) NOT NULL,
  `IVA` varchar(12) NOT NULL,
  `Total` varchar(22) NOT NULL,
  `Resumen` text NOT NULL,
  `ID_Envio` varchar(10) NOT NULL,
  `ID_Forma_Pago` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_producto`
--

CREATE TABLE `factura_producto` (
  `ID_Factura` varchar(15) NOT NULL,
  `ID_Producto` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forma_pago`
--

CREATE TABLE `forma_pago` (
  `ID_Forma_Pago` varchar(15) NOT NULL,
  `Nombre_Forma_Pago` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `ID_Genero` varchar(15) NOT NULL,
  `Nombre_Genero` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`ID_Genero`, `Nombre_Genero`) VALUES
('GEN01', 'Masculino'),
('GEN02', 'Femenino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `ID_Inventario` varchar(10) NOT NULL,
  `Cantidad` int(5) NOT NULL,
  `Fecha` date NOT NULL,
  `Hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidad`
--

CREATE TABLE `localidad` (
  `ID_Localidad` varchar(15) NOT NULL,
  `Nombre_Localidad` varchar(35) NOT NULL,
  `ID_Ciudad` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log_error`
--

CREATE TABLE `log_error` (
  `ID_Log_Error` varchar(15) NOT NULL,
  `Descripcion` text NOT NULL,
  `Fecha` date NOT NULL,
  `Hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pqrs`
--

CREATE TABLE `pqrs` (
  `ID_Ticket` int(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `correo` varchar(40) NOT NULL,
  `telefono` int(15) NOT NULL,
  `asunto` varchar(50) NOT NULL,
  `Descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pqrs`
--

INSERT INTO `pqrs` (`ID_Ticket`, `nombre`, `correo`, `telefono`, `asunto`, `Descripcion`) VALUES
(3, 'Andres ospina', 'afospina@gmail.com', 2147483647, 'jejej', 'ajjajjajajajjaja'),
(4, 'Andres ospina', 'afospina321@gmail.com', 5203564, 'queja', 'no me deja registrarme de nuevo'),
(5, 'SANDRA CASTRO QUINTANA', '', 0, '', ''),
(6, 'sandra ', 'sandra@hotmail.com', 5203564, 'DEMORA EN LAS ENTREGAS', 'NO HE RECIBIDO NADA\r\n'),
(7, 'Andres ospina', 'afospina321@gmail.com', 2147483647, 'queja', 'ajjajajjajajjajaj'),
(8, 'frenando', 'ferchov@gmail.com', 2147483647, 'queja', 'no quiero seguir llamándome frenando');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `ID_Producto` varchar(10) NOT NULL,
  `Nombre_Producto` varchar(45) NOT NULL,
  `Imagen_Producto` varchar(200) DEFAULT NULL,
  `Talla` varchar(10) NOT NULL,
  `Color` varchar(10) NOT NULL,
  `Material` varchar(35) NOT NULL,
  `Valor` varchar(20) NOT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  `ID_categoria` varchar(10) NOT NULL,
  `ID_clasificacion` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`ID_Producto`, `Nombre_Producto`, `Imagen_Producto`, `Talla`, `Color`, `Material`, `Valor`, `Descripcion`, `ID_categoria`, `ID_clasificacion`) VALUES
('pro02', 'copa', '../fotos/copa - copia.jpg', 'S', 'Dorado', 'plata', '$ 5000', 'jaja', 'CAT01', 'CLAS01'),
('pro03', 'saco', '../fotos/saco_lana.jpg', '32', 'blanco', 'lana oveja', '45000', 'jajaja', 'CAT04', 'CLAS02'),
('pro04', 'chaleco', '../fotos/sueter.jpg', 'xl', 'azul', 'lana', '$ 70.000', 'jajaja', 'CAT04', 'CLAS06'),
('pro05', 'spiderman', '../fotos/spiderman1.jpg', '6', 'rojo y azu', 'algodon', '', 'jaja', 'CAT04', 'CLAS04'),
('pro06', 'chaqueta sport', '../fotos/producto6.1.jpeg', 'S', 'azul', 'impermeable', '50000', 'con tapabocas', 'CAT01', 'CLAS02'),
('pro1', 'spiderman', '../fotos/spiderman.jpg', '6', 'rojo y azu', 'algodon', '80000', 'aawww', 'CAT01', 'CLAS02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_inventario`
--

CREATE TABLE `producto_inventario` (
  `ID_Producto` varchar(10) NOT NULL,
  `ID_Inventario` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `ID_Rol` varchar(15) NOT NULL,
  `Nombre_Rol` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`ID_Rol`, `Nombre_Rol`) VALUES
('ROL01', 'Usuario'),
('ROL02', 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servidor_correo`
--

CREATE TABLE `servidor_correo` (
  `ID_Servidor_Correo` varchar(15) NOT NULL,
  `Nombre_Servidor_Correo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documento`
--

CREATE TABLE `tipo_documento` (
  `ID_Tipo_Documento` varchar(15) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Siglas` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_documento`
--

INSERT INTO `tipo_documento` (`ID_Tipo_Documento`, `Nombre`, `Siglas`) VALUES
('TD01', 'Cedula de Ciudadania', 'C.C'),
('TD02', 'Cedula de Extranjeria', 'C.E'),
('TD03', 'Tarjeta de Identidad', 'T.I'),
('TD04', 'Permiso Especial', 'P.E.P');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ID_Tipo_Documento` varchar(15) NOT NULL,
  `ID_Usuario` varchar(15) NOT NULL,
  `Primer_Nombre` varchar(35) NOT NULL,
  `Segundo_Nombre` varchar(35) DEFAULT NULL,
  `Primer_Apellido` varchar(35) NOT NULL,
  `Segundo_Apellido` varchar(35) DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  `Telefono` varchar(25) NOT NULL,
  `Correo` varchar(55) NOT NULL,
  `Contrasena` varchar(25) NOT NULL,
  `confirmar_Contrasena` varchar(25) NOT NULL,
  `ID_Genero` varchar(15) NOT NULL,
  `ID_Ciudad` varchar(15) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `observaciones` varchar(100) DEFAULT NULL,
  `ID_Rol` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ID_Tipo_Documento`, `ID_Usuario`, `Primer_Nombre`, `Segundo_Nombre`, `Primer_Apellido`, `Segundo_Apellido`, `fecha_nacimiento`, `Telefono`, `Correo`, `Contrasena`, `confirmar_Contrasena`, `ID_Genero`, `ID_Ciudad`, `direccion`, `observaciones`, `ID_Rol`) VALUES
('TD01', '123456', 'Sebastian    ', 'Marco   ', 'Lopez ', 'ruiz     ', '2000-03-23', '3124843212     ', 'sebas@gmail.com', '321    ', '321    ', 'GEN01', 'CIU008', 'calle34     ', 'jej     ', 'ROL01'),
('TD03', '12345', 'Juliana', 'fea', 'Ospina', 'Castro', '2013-04-27', '5203564', 'juliana@juli.com', 'juli', 'juli', 'GEN02', 'CIU008', 'carrera9 a este n 97-55', 'int 3', 'ROL02');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `barrio`
--
ALTER TABLE `barrio`
  ADD PRIMARY KEY (`ID_Barrio`),
  ADD KEY `FK_barloc` (`ID_Localidad`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`ID_Categoria`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`ID_Ciudad`);

--
-- Indices de la tabla `clasificacion`
--
ALTER TABLE `clasificacion`
  ADD PRIMARY KEY (`ID_Clasificacion`);

--
-- Indices de la tabla `envio`
--
ALTER TABLE `envio`
  ADD PRIMARY KEY (`ID_Envio`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`ID_Factura`,`ID_Usuario`,`ID_Tipo_Documento`),
  ADD KEY `FK_facusu` (`ID_Tipo_Documento`,`ID_Usuario`),
  ADD KEY `FK_facenv` (`ID_Envio`),
  ADD KEY `FK_facfp` (`ID_Forma_Pago`);

--
-- Indices de la tabla `factura_producto`
--
ALTER TABLE `factura_producto`
  ADD PRIMARY KEY (`ID_Factura`,`ID_Producto`),
  ADD KEY `FK_facpropro` (`ID_Producto`);

--
-- Indices de la tabla `forma_pago`
--
ALTER TABLE `forma_pago`
  ADD PRIMARY KEY (`ID_Forma_Pago`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`ID_Genero`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`ID_Inventario`);

--
-- Indices de la tabla `localidad`
--
ALTER TABLE `localidad`
  ADD PRIMARY KEY (`ID_Localidad`),
  ADD KEY `FK_locciu` (`ID_Ciudad`);

--
-- Indices de la tabla `log_error`
--
ALTER TABLE `log_error`
  ADD PRIMARY KEY (`ID_Log_Error`);

--
-- Indices de la tabla `pqrs`
--
ALTER TABLE `pqrs`
  ADD PRIMARY KEY (`ID_Ticket`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`ID_Producto`),
  ADD KEY `FK_procla` (`ID_clasificacion`),
  ADD KEY `FK_procat` (`ID_categoria`);

--
-- Indices de la tabla `producto_inventario`
--
ALTER TABLE `producto_inventario`
  ADD PRIMARY KEY (`ID_Producto`,`ID_Inventario`),
  ADD KEY `FK_proinvinv` (`ID_Inventario`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`ID_Rol`);

--
-- Indices de la tabla `servidor_correo`
--
ALTER TABLE `servidor_correo`
  ADD PRIMARY KEY (`ID_Servidor_Correo`);

--
-- Indices de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  ADD PRIMARY KEY (`ID_Tipo_Documento`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID_Tipo_Documento`,`ID_Usuario`),
  ADD KEY `FK_usuciu` (`ID_Ciudad`),
  ADD KEY `FK_usugen` (`ID_Genero`),
  ADD KEY `FK_usurol` (`ID_Rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pqrs`
--
ALTER TABLE `pqrs`
  MODIFY `ID_Ticket` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `barrio`
--
ALTER TABLE `barrio`
  ADD CONSTRAINT `FK_barloc` FOREIGN KEY (`ID_Localidad`) REFERENCES `localidad` (`ID_Localidad`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `FK_facenv` FOREIGN KEY (`ID_Envio`) REFERENCES `envio` (`ID_Envio`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_facfp` FOREIGN KEY (`ID_Forma_Pago`) REFERENCES `forma_pago` (`ID_Forma_Pago`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_facusu` FOREIGN KEY (`ID_Tipo_Documento`,`ID_Usuario`) REFERENCES `usuario` (`ID_Tipo_Documento`, `ID_Usuario`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `factura_producto`
--
ALTER TABLE `factura_producto`
  ADD CONSTRAINT `FK_facprofac` FOREIGN KEY (`ID_Factura`) REFERENCES `factura` (`ID_Factura`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_facpropro` FOREIGN KEY (`ID_Producto`) REFERENCES `producto` (`ID_Producto`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `localidad`
--
ALTER TABLE `localidad`
  ADD CONSTRAINT `FK_locciu` FOREIGN KEY (`ID_Ciudad`) REFERENCES `ciudad` (`ID_Ciudad`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `FK_procat` FOREIGN KEY (`ID_categoria`) REFERENCES `categoria` (`ID_Categoria`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_procla` FOREIGN KEY (`ID_clasificacion`) REFERENCES `clasificacion` (`ID_Clasificacion`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto_inventario`
--
ALTER TABLE `producto_inventario`
  ADD CONSTRAINT `FK_proinvinv` FOREIGN KEY (`ID_Inventario`) REFERENCES `inventario` (`ID_Inventario`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_proinvpro` FOREIGN KEY (`ID_Producto`) REFERENCES `producto` (`ID_Producto`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `FK_usuciu` FOREIGN KEY (`ID_Ciudad`) REFERENCES `ciudad` (`ID_Ciudad`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_usugen` FOREIGN KEY (`ID_Genero`) REFERENCES `genero` (`ID_Genero`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_usurol` FOREIGN KEY (`ID_Rol`) REFERENCES `rol` (`ID_Rol`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_usutd` FOREIGN KEY (`ID_Tipo_Documento`) REFERENCES `tipo_documento` (`ID_Tipo_Documento`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
