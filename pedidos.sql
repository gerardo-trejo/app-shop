-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-07-2019 a las 19:01:36
-- Versión del servidor: 10.3.15-MariaDB
-- Versión de PHP: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pedidos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_date` date DEFAULT NULL,
  `arrived_date` date DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `carts`
--

INSERT INTO `carts` (`id`, `order_date`, `arrived_date`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '2019-06-14', NULL, 'Pending', 2, '2019-06-15 03:40:11', '2019-06-15 03:40:30'),
(2, '2019-06-14', NULL, 'Pending', 2, '2019-06-15 03:40:35', '2019-06-15 03:42:18'),
(3, '2019-06-17', NULL, 'Pending', 2, '2019-06-15 03:42:21', '2019-06-17 21:52:34'),
(4, '2019-06-17', NULL, 'Pending', 2, '2019-06-17 21:53:27', '2019-06-17 21:53:27'),
(5, '2019-06-17', NULL, 'Pending', 2, '2019-06-17 21:58:04', '2019-06-17 21:58:04'),
(6, '2019-06-17', NULL, 'Pending', 2, '2019-06-17 21:58:08', '2019-06-17 22:13:15'),
(7, '2019-06-17', NULL, 'Pending', 2, '2019-06-17 22:00:13', '2019-06-17 22:01:26'),
(8, '2019-06-17', NULL, 'Pending', 2, '2019-06-17 22:01:30', '2019-06-17 22:19:36'),
(9, '2019-06-17', NULL, 'Pending', 3, '2019-06-17 22:04:29', '2019-06-17 22:04:56'),
(10, NULL, NULL, 'Active', 3, '2019-06-17 22:05:00', '2019-06-17 22:05:00'),
(11, NULL, NULL, 'Active', 1, '2019-06-17 22:10:20', '2019-06-17 22:10:20'),
(12, NULL, NULL, 'Active', 2, '2019-06-17 22:19:39', '2019-06-17 22:19:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart_details`
--

CREATE TABLE `cart_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `cart_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` double(8,2) NOT NULL,
  `discount` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cart_details`
--

INSERT INTO `cart_details` (`id`, `cart_id`, `product_id`, `quantity`, `discount`, `created_at`, `updated_at`) VALUES
(1, 1, 7, 1.00, 0, '2019-06-15 03:40:25', '2019-06-15 03:40:25'),
(2, 3, 1, 1.00, 0, '2019-06-17 21:52:27', '2019-06-17 21:52:27'),
(3, 6, 2, 1.00, 0, '2019-06-17 22:00:01', '2019-06-17 22:00:01'),
(4, 7, 7, 1.00, 0, '2019-06-17 22:01:21', '2019-06-17 22:01:21'),
(5, 9, 8, 4.00, 0, '2019-06-17 22:04:50', '2019-06-17 22:04:50'),
(6, 8, 1, 1.00, 0, '2019-06-17 22:19:06', '2019-06-17 22:19:06'),
(7, 8, 10, 1.00, 0, '2019-06-17 22:19:25', '2019-06-17 22:19:25'),
(8, 11, 5, 1.00, 0, '2019-07-05 02:05:12', '2019-07-05 02:05:12'),
(9, 11, 5, 1.00, 0, '2019-07-05 02:05:48', '2019-07-05 02:05:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'COMPUTADORAS', 'Computadoras de escritorio y laptops de cualquier marca.', NULL, '2019-06-15 03:39:17', '2019-06-15 03:39:17'),
(2, 'IMPRESORAS', 'Impresoras de cualquier marca y de cualquier tipo(láser,inyección de tinta,etc.)', NULL, '2019-06-15 03:39:17', '2019-06-15 03:39:17'),
(3, 'COPIADORAS', 'Cualquier tipo y marca de impresoras.', NULL, '2019-06-15 03:39:17', '2019-06-15 03:39:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_11_15_163231_create_categories_table', 1),
(4, '2017_11_15_164410_create_products_table', 1),
(5, '2017_11_15_183111_create_product_images_table', 1),
(6, '2017_11_16_215527_create_carts_table', 1),
(7, '2017_11_16_215851_create_cart_details_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `long_description`, `price`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Laptop Lenovo IdeaPad 330S ', 'Laptop Lenovo IdeaPad 330S 14\" HD, Intel Core i3-7020U 2.30GHz, 4GB, 1TB, Windows 10 Home 64-bit, Platino', 'Familia de procesador: Intel® Core™ i3-7xxx.\r\nDiagonal de la pantalla: 14pulg.\r\nMemoria interna: 4 GB.\r\nTipo de memoria interna: DDR4-SDRAM.\r\nCapacidad total de almacenaje: 1000 GB.\r\nSistema operativo instalado: Windows 10 Home.', 8189.00, 1, '2019-06-17 15:20:00', '2019-06-17 15:20:00'),
(2, 'Laptop Gamer MSI GV62 8RC-042MX 15.6', 'Laptop Gamer MSI GV62 8RC-042MX 15.6\'\' Full HD, Intel Core i5-8300H 2.30GHz, 8GB, 1TB, NVIDIA GeForce GTX 1050, Windows 10 Home 64-bit, Negro', 'Familia de procesador: Intel® Core™ i5-8xxx\r\nDiagonal de la pantalla: 15.6pulg.\r\nMemoria interna: 8 GB\r\nTipo de memoria interna: DDR4-SDRAM\r\nCapacidad total de almacenaje: 1000 GB\r\nSistema operativo instalado: Windows 10 Home', 18969.00, 1, '2019-06-17 15:22:33', '2019-06-17 15:22:33'),
(3, 'Laptop Gamer ASUS ROG Strix GL503 15.6', 'Laptop Gamer ASUS ROG Strix GL503 15.6\'\' Full HD, Intel Core i7-7700HQ 2.80GHz, 12GB, 1TB, NVIDIA GeForce GTX 1050, Windows 10 Home 64-bit, Negro', 'Familia de procesador: Intel® Core™ i7-7xxx\r\nDiagonal de la pantalla: 15.6pulg.\r\nMemoria interna: 12 GB\r\nTipo de memoria interna: DDR4-SDRAM\r\nCapacidad total de almacenaje: 1000 GB\r\nSistema operativo instalado: Windows 10 Home\r\n', 25139.00, 1, '2019-06-17 15:24:48', '2019-06-17 15:24:48'),
(4, 'Laptop Dell Vostro 5471 14', 'Full HD, Intel Core i5-8250U 1.60GHz, 8GB, 256GB, Windows 10 Pro 64-bit, Plata', 'Familia de procesador: Intel® Core™ i5-8xxx\r\nDiagonal de la pantalla: 14pulg.\r\nMemoria interna: 8 GB\r\nTipo de memoria interna: DDR4-SDRAM\r\nCapacidad total de almacenaje: 256 GB\r\nSistema operativo instalado: Windows 10 Pro', 19539.00, 1, '2019-06-17 15:26:15', '2019-06-17 15:26:15'),
(5, 'Laptop Acer Aspire A314-32-C2TE 14', 'Laptop Acer Aspire A314-32-C2TE 14\'\' HD, Intel Celeron N4000 1.10GHz, 4GB, 500GB, Windows 10 Home 64-bit, Negro', 'Familia de procesador: Intel Celeron\r\nDiagonal de la pantalla: 14pulg.\r\nMemoria interna: 4 GB\r\nTipo de memoria interna: DDR4-SDRAM\r\nCapacidad total de almacenaje: 500 GB\r\nSistema operativo instalado: Windows 10 Home', 5659.00, 1, '2019-06-17 15:27:18', '2019-06-17 15:27:18'),
(6, 'Samsung Xpress SL-C430W', 'Samsung Xpress SL-C430W, Color, Láser, Inalámbrico, Print', 'Tecnología de impresión: Laser\r\nCapacidad de salida estándar: 50 hojas\r\nResolución máxima: 2400 x 600 DPI\r\nInterfaz estándar: Ethernet\r\nImpresión dúplex: no\r\nWifi: si', 3079.00, 2, '2019-06-17 15:28:27', '2019-06-17 15:28:27'),
(7, 'HP LaserJet M15w', 'HP LaserJet M15w, Blanco y Negro, Láser, Print', 'Tecnología de impresión: Laser\r\nCapacidad de salida estándar: 100 hojas\r\nResolución máxima: 600 x 600 DPI\r\nInterfaz estándar: USB, LAN inalámbrica\r\nWifi: si', 1079.00, 2, '2019-06-17 15:29:30', '2019-06-17 15:29:30'),
(8, 'HP PageWide Pro 452dw', 'HP PageWide Pro 452dw, Color, Inyección, Inalámbrico, Print', 'Tecnología de impresión: Inyección de tinta térmica\r\nCapacidad de salida estándar: 300 hojas\r\nResolución máxima: 2400 x 1200 DPI\r\nInterfaz estándar: Ethernet\r\nImpresión dúplex:si \r\nWifi: si', 7330.00, 2, '2019-06-17 15:30:35', '2019-06-17 15:30:35'),
(9, 'Epson EcoTank L1300', 'Epson EcoTank L1300, Color, Inyección, Tanque de Tinta, Print', 'Productividad Inagotable. Grandes impresiones con gran economía para tu negocio. Única con el sistema original de Tanque de Tinta, incluye 2 botellas de tinta negra y 3 botellas a color, para imprimir hasta 7100 páginas en negro o 5700 páginas a color1  a un costo por página insuperable2 . Imprime tus proyectos, documentos, planos y gráficas en grande, sin preocuparte por el costo, duración o calidad de la tinta.', 12409.00, 2, '2019-06-17 15:31:48', '2019-06-17 15:31:48'),
(10, 'HP LaserJet Pro M254dw', 'HP LaserJet Pro M254dw, Color, Láser, Print', 'Tecnología de impresión: Laser\r\nCapacidad de salida estándar: 100 hojas\r\nResolución máxima: 600 x 600 DPI\r\nInterfaz estándar: Ethernet\r\nImpresión dúplex: si\r\nWifi: si', 3659.00, 2, '2019-06-17 15:32:48', '2019-06-17 15:32:48'),
(11, 'Ricoh MPC300\r\nCopiadora e Impresora a color', 'Las Aficio™MP C300 ofrecen funciones ecológicas y de ahorro de dinero como una rápida impresión y copia dúplex.', 'Velocidad de copiado continuo	B/N o Color: 30 copias por minuto (A4)\r\nB/N o Color: 32 copias por minuto (Carta)\r\nTiempo de calentamiento	60 segundos\r\nMemoria	Máximo: Unidad Disco duro 1,5 GB + 160 GB\r\nTamaño de papel	Bandejas de papel estándar: A4 / Carta \r\nBandejas de papel opcional: Oficio Bandeja bypass: 216 x 1260 mm', 15900.00, 3, '2019-06-17 15:35:02', '2019-06-17 15:35:02'),
(12, 'Sharp MX-C300W', 'MX-C300W es una impresora multifunción 4 en 1 color que ofrece una serie de características de productividad y funcionalidad requeridos por cualquier grupo de trabajo', 'La MX-C300W procesa la salida de la primera copia en tan solo 8.0 segundos lo que permite ahorrar tiempo al realizar múltiples trabajos y con su velocidad de copiado continuo de 30 ppm puede hacer más trabajos en menos tiempo.', 25565.00, 3, '2019-06-17 15:36:06', '2019-06-17 15:36:06'),
(13, 'Multifuncional Sharp Color\r\nMX-3070N', 'La MX-3070N procesa la salida de la primera copia en tan solo 8.0 segundos.', 'Con velocidades de impresión y copia de 30 ppm en color y en blanco y negro, un alimentador duplex de 150 hojas y una velocidad de escaneo de 200 ipm, ayudan a aumentar la eficiencia y la productividad. La capacidad máxima de papel de 6.300 hojas y gramajes y medidas de papel de hasta SRA3 y 300 grs. Una variedad de opciones de acabado como el grapado, perforado y plegado anadem más versatilidad. Resolución de 1200 x 1200 dpi da una alta calidad de imagen, además de control de proceso automático.', 30654.00, 3, '2019-06-17 15:37:54', '2019-06-17 15:37:54'),
(14, 'Canon IR2525\r\nCopiadora e Impresora', 'Diseñado para satisfacer las necesidades de las pequeñas y grupos de trabajo de tamaño medio.', 'la Canon imageRUNNER 2525 ofrece impresión de alta calidad y Salida de copias y escaneo en color combinado con el envío y capacidades de acabado que son fáciles de usar para todo el mundo en la oficina disponible. ', 23900.00, 3, '2019-06-17 15:38:59', '2019-06-17 15:38:59'),
(15, 'Canon MF5770\r\nCopiadora, Multifuncional e Impresora', 'Diseñado para satisfacer las necesidades de las pequeñas y grupos de trabajo de tamaño medio. 20 copias por minuto', '* Copiadora e impresora\r\n* Velocidad de copiado: 20/ ppm \r\n* Duplex\r\n* Resolución de 600 x 600\r\n* 1 Charola de 250 hojas\r\n* Tamaño de papel A4\r\n* Interfaz USB 2.0 alta velocidad', 2900.00, 3, '2019-06-17 15:39:58', '2019-06-17 15:39:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `product_images`
--

INSERT INTO `product_images` (`id`, `image`, `featured`, `product_id`, `created_at`, `updated_at`) VALUES
(1, '1-2.jpg', 0, 1, '2019-06-15 03:39:18', '2019-06-15 03:39:18'),
(2, '1-1.jpg', 0, 1, '2019-06-15 03:39:18', '2019-06-15 03:39:18'),
(3, '1.jpg', 0, 1, '2019-06-15 03:39:18', '2019-06-15 03:39:18'),
(4, '2.jpg', 0, 2, '2019-06-15 03:39:18', '2019-06-15 03:39:18'),
(5, '2-1.jpg', 0, 2, '2019-06-15 03:39:18', '2019-06-15 03:39:18'),
(6, '2-2.jpg', 0, 2, '2019-06-15 03:39:18', '2019-06-15 03:39:18'),
(7, '3.jpg', 0, 3, '2019-06-15 03:39:18', '2019-06-15 03:39:18'),
(8, '3-1.jpg', 0, 3, '2019-06-15 03:39:18', '2019-06-15 03:39:18'),
(9, '3-2.jpg', 0, 3, '2019-06-15 03:39:18', '2019-06-15 03:39:18'),
(10, '4.jpg', 0, 4, '2019-06-15 03:39:18', '2019-06-15 03:39:18'),
(11, '4-1.jpg', 0, 4, '2019-06-15 03:39:18', '2019-06-15 03:39:18'),
(12, '4-2.jpg', 0, 4, '2019-06-15 03:39:18', '2019-06-15 03:39:18'),
(13, '5.jpg', 0, 5, '2019-06-15 03:39:18', '2019-06-15 03:39:18'),
(14, '5-1.jpg', 0, 5, '2019-06-15 03:39:18', '2019-06-15 03:39:18'),
(15, '5-2.jpg', 0, 5, '2019-06-15 03:39:18', '2019-06-15 03:39:18'),
(16, '6.jpg', 0, 6, '2019-06-15 03:39:19', '2019-06-15 03:39:19'),
(17, '6-1.jpg', 0, 6, '2019-06-15 03:39:19', '2019-06-15 03:39:19'),
(18, '6-2.jpg', 0, 6, '2019-06-15 03:39:19', '2019-06-15 03:39:19'),
(19, '7.jpg', 0, 7, '2019-06-15 03:39:19', '2019-06-15 03:39:19'),
(20, '7-1.jpg', 0, 7, '2019-06-15 03:39:19', '2019-06-15 03:39:19'),
(21, '7-2.jpg', 0, 7, '2019-06-15 03:39:19', '2019-06-15 03:39:19'),
(22, '8.jpg', 0, 8, '2019-06-15 03:39:19', '2019-06-15 03:39:19'),
(23, '8-1.jpg', 0, 8, '2019-06-15 03:39:19', '2019-06-15 03:39:19'),
(24, '8-2.jpg', 0, 8, '2019-06-15 03:39:19', '2019-06-15 03:39:19'),
(25, '9.jpg', 0, 9, '2019-06-15 03:39:19', '2019-06-15 03:39:19'),
(26, '9-1.jpg', 0, 9, '2019-06-15 03:39:19', '2019-06-15 03:39:19'),
(27, '9-2.jpg', 0, 9, '2019-06-15 03:39:19', '2019-06-15 03:39:19'),
(28, '10.jpg', 0, 10, '2019-06-15 03:39:19', '2019-06-15 03:39:19'),
(29, '10-1.jpg', 0, 10, '2019-06-15 03:39:19', '2019-06-15 03:39:19'),
(30, '10-2.jpg', 0, 10, '2019-06-15 03:39:19', '2019-06-15 03:39:19'),
(31, '11.jpg', 0, 11, '2019-06-15 03:39:20', '2019-06-15 03:39:20'),
(32, '11-1.jpg', 0, 11, '2019-06-15 03:39:20', '2019-06-15 03:39:20'),
(33, '11.jpg', 0, 11, '2019-06-15 03:39:20', '2019-06-15 03:39:20'),
(34, '12.jpg', 0, 12, '2019-06-15 03:39:20', '2019-06-15 03:39:20'),
(35, '12-1.jpg', 0, 12, '2019-06-15 03:39:20', '2019-06-15 03:39:20'),
(36, '12-2.jpg', 0, 12, '2019-06-15 03:39:20', '2019-06-15 03:39:20'),
(37, '13.jpg', 0, 13, '2019-06-15 03:39:20', '2019-06-15 03:39:20'),
(38, '13-1.jpg', 0, 13, '2019-06-15 03:39:20', '2019-06-15 03:39:20'),
(39, '13-2.jpg', 0, 13, '2019-06-15 03:39:20', '2019-06-15 03:39:20'),
(40, '14.jpg', 0, 14, '2019-06-15 03:39:20', '2019-06-15 03:39:20'),
(41, '14-1.jpg', 0, 14, '2019-06-15 03:39:20', '2019-06-15 03:39:20'),
(42, '14.jpg', 0, 14, '2019-06-15 03:39:20', '2019-06-15 03:39:20'),
(43, '15.jpg', 0, 15, '2019-06-15 03:39:20', '2019-06-15 03:39:20'),
(44, '15-1.jpg', 0, 15, '2019-06-15 03:39:20', '2019-06-15 03:39:20'),
(45, '15-2.jpg', 0, 15, '2019-06-15 03:39:20', '2019-06-15 03:39:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `password`, `admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Cachi', 'shopcachi@gmail.com', NULL, NULL, '$2y$10$VamaNVQJ7i.0WSnM0qOcz.Eug0AegJy2iep6IW6otrcY.fSefdLFC', 1, 'GGfQN66p5hUDN9xdV80v67UfGx7PnMNmMpJM7yfJJqo1dBVPifZjN1dJh3s8', '2019-06-15 03:39:15', '2019-06-15 03:39:15'),
(2, 'gerardo', 'gerardtrejo12@gmail.com', '7121885812', 'mexico', '$2y$10$5UcANfeNGPy6UPcoo4AX0eypTEcn6daIDa.kvyYyUTx0ogpkxYNaW', 0, '860Kcc0k5cQkeYMTacnWNbvJnXOPZaCZuan1SAYXhku9S0M5NQvAlsqNmbnH', '2019-06-15 03:40:11', '2019-06-15 03:40:11'),
(3, 'ger', 'ggera977@gmail.com', '2776490253', 'Street 1289', '$2y$10$rlUBUqTh2wLgdEh8WAbS5etUCGQuRkNiHmrNtrFGhv0S7JcjCrvN6', 0, 'dFgHwLUzHtjTyRiiEcd3EfN1d17iWfjTul8ioeSoWOKnDNUPyUrzKEcEWHAa', '2019-06-17 22:04:28', '2019-06-17 22:04:28');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_details_cart_id_foreign` (`cart_id`),
  ADD KEY `cart_details_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
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
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indices de la tabla `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

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
-- AUTO_INCREMENT de la tabla `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `cart_details`
--
ALTER TABLE `cart_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `cart_details`
--
ALTER TABLE `cart_details`
  ADD CONSTRAINT `cart_details_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`),
  ADD CONSTRAINT `cart_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Filtros para la tabla `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
