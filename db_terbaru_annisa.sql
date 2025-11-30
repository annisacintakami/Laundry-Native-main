-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2025 at 10:08 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_terbaru_annisa`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(18) NOT NULL,
  `address` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Akbar', '0821911123', 'Karet Tengsin', '2025-11-24 06:39:21', '2025-11-30 20:25:42'),
(2, 'Kayla', '6281239669', 'Citayam', '2025-11-24 07:49:13', '2025-11-30 20:26:10'),
(4, 'lala', '6966911111', 'kalibata', '2025-11-30 16:35:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', '2025-11-25 08:57:55', '2025-11-30 16:04:52'),
(2, 'Operator', '2025-11-25 08:58:01', '2025-11-25 01:58:41'),
(3, 'Pimpinan', '2025-11-25 08:58:09', '2025-11-25 01:58:44');

-- --------------------------------------------------------

--
-- Table structure for table `level_menus`
--

CREATE TABLE `level_menus` (
  `id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `level_menus`
--

INSERT INTO `level_menus` (`id`, `level_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(159, 11, 9, '2025-11-30 15:35:33', NULL),
(160, 11, 8, '2025-11-30 15:35:33', NULL),
(161, 11, 7, '2025-11-30 15:35:33', NULL),
(162, 11, 6, '2025-11-30 15:35:33', NULL),
(163, 11, 5, '2025-11-30 15:35:33', NULL),
(164, 11, 4, '2025-11-30 15:35:33', NULL),
(165, 11, 3, '2025-11-30 15:35:33', NULL),
(166, 11, 2, '2025-11-30 15:35:33', NULL),
(167, 11, 1, '2025-11-30 15:35:33', NULL),
(233, 0, 8, '2025-11-30 16:09:09', NULL),
(234, 0, 7, '2025-11-30 16:09:09', NULL),
(235, 0, 6, '2025-11-30 16:09:09', NULL),
(236, 0, 5, '2025-11-30 16:09:09', NULL),
(237, 0, 4, '2025-11-30 16:09:09', NULL),
(238, 0, 3, '2025-11-30 16:09:09', NULL),
(239, 0, 2, '2025-11-30 16:09:09', NULL),
(240, 0, 1, '2025-11-30 16:09:09', NULL),
(287, 14, 9, '2025-11-30 16:25:53', NULL),
(288, 14, 8, '2025-11-30 16:25:53', NULL),
(289, 14, 7, '2025-11-30 16:25:53', NULL),
(290, 14, 6, '2025-11-30 16:25:53', NULL),
(291, 14, 5, '2025-11-30 16:25:53', NULL),
(292, 14, 4, '2025-11-30 16:25:53', NULL),
(293, 14, 3, '2025-11-30 16:25:53', NULL),
(294, 14, 2, '2025-11-30 16:25:53', NULL),
(295, 14, 1, '2025-11-30 16:25:53', NULL),
(422, 3, 7, '2025-11-30 20:47:30', NULL),
(423, 3, 6, '2025-11-30 20:47:30', NULL),
(437, 1, 8, '2025-11-30 20:51:18', NULL),
(438, 1, 7, '2025-11-30 20:51:18', NULL),
(439, 1, 6, '2025-11-30 20:51:18', NULL),
(440, 1, 5, '2025-11-30 20:51:18', NULL),
(441, 1, 4, '2025-11-30 20:51:18', NULL),
(442, 1, 3, '2025-11-30 20:51:18', NULL),
(443, 1, 1, '2025-11-30 20:51:18', NULL),
(444, 2, 8, '2025-11-30 20:53:19', NULL),
(445, 2, 7, '2025-11-30 20:53:19', NULL),
(446, 2, 6, '2025-11-30 20:53:19', NULL),
(447, 2, 4, '2025-11-30 20:53:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `link` varchar(30) NOT NULL,
  `orders` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `icon`, `link`, `orders`, `created_at`, `updated_at`) VALUES
(1, 'User', 'bi bi-person-fill', 'user', 6, '2025-11-25 01:47:45', '2025-11-25 07:42:30'),
(2, 'Menu', 'bi bi-menu-app-fill', 'menu', 4, '2025-11-25 02:31:32', '2025-11-25 07:42:21'),
(3, 'Service', 'bi bi-book-fill', 'service', 3, '2025-11-25 02:33:36', '2025-11-25 07:50:03'),
(4, 'Customer', 'bi bi-people-fill', 'customer', 2, '2025-11-25 03:47:48', '2025-11-25 07:41:43'),
(5, 'Level', 'bi bi-water', 'level', 5, '2025-11-25 03:48:26', '2025-11-25 07:41:38'),
(6, 'Dashboard', 'bi bi-database-fill', 'dashboard', 1, '2025-11-25 07:37:17', '2025-11-25 07:47:36'),
(7, 'Report', 'bi bi-envelope-fill', 'report', 9, '2025-11-29 07:45:45', '2025-11-30 16:56:35'),
(8, 'Order', 'bi bi-table', 'order', 7, '2025-11-29 08:09:52', '2025-11-29 08:10:58'),
(9, 'Tax', 'bi bi-percent', 'tax', 8, '2025-11-30 15:12:56', '2025-11-30 16:56:43');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `price`, `description`, `created_at`, `updated_at`) VALUES
(4, 'Cuci dan Gosok', 5000, '            Cuci gosok dengan sepenuh hati          ', '2025-11-24 07:48:16', '2025-11-29 08:19:23'),
(5, 'Hanya Cuci', 4500, 'hanya cuci            ', '2025-11-29 08:20:08', NULL),
(6, 'Hanya Gosok', 5000, '                  hanya gosok    ', '2025-11-29 08:21:00', NULL),
(7, 'Selimut', 7000, 'Laundry Besar', '2025-11-29 08:23:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `taxs`
--

CREATE TABLE `taxs` (
  `id` int(11) NOT NULL,
  `percent` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `taxs`
--

INSERT INTO `taxs` (`id`, `percent`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 10, 0, '2025-11-26 03:02:54', '2025-11-30 16:12:40'),
(3, 11, 1, '2025-11-30 16:12:34', '2025-11-30 16:12:44');

-- --------------------------------------------------------

--
-- Table structure for table `trans_orders`
--

CREATE TABLE `trans_orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_code` varchar(20) NOT NULL,
  `order_end_date` date NOT NULL,
  `order_status` tinyint(1) NOT NULL DEFAULT 0,
  `order_pay` int(11) NOT NULL,
  `order_change` int(11) NOT NULL,
  `order_tax` int(11) NOT NULL,
  `order_total` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trans_orders`
--

INSERT INTO `trans_orders` (`id`, `customer_id`, `order_code`, `order_end_date`, `order_status`, `order_pay`, `order_change`, `order_tax`, `order_total`, `created_at`, `updated_at`) VALUES
(2, 1, 'ORD-291120250001', '2025-11-04', 1, 27000, 600, 2400, 26400, '2025-11-29 07:43:31', NULL),
(3, 1, 'ORD-291120250003', '2025-11-29', 1, 11000, 550, 950, 10450, '2025-11-29 09:16:54', '2025-11-30 12:45:33'),
(4, 1, 'ORD-291120250004', '2025-11-29', 1, 14000, 800, 1200, 13200, '2025-11-29 10:55:39', '2025-11-29 11:30:54'),
(5, 2, 'ORD-291120250005', '2025-11-29', 1, 6000, 500, 500, 5500, '2025-11-29 12:24:34', '2025-11-30 12:45:53'),
(6, 0, 'ORD-301120250006', '0000-00-00', 0, 12000, 1550, 950, 10450, '2025-11-30 07:42:24', NULL),
(7, 0, 'ORD-301120250007', '0000-00-00', 0, 10000, 4500, 500, 5500, '2025-11-30 12:35:12', NULL),
(8, 2, 'ORD-301120250008', '2022-03-09', 1, 20000, 9000, 1000, 11000, '2025-11-30 15:48:19', '2025-11-30 20:13:25'),
(9, 1, 'ORD-301120250009', '2025-12-01', 1, 10000, 4450, 550, 5550, '2025-11-30 16:13:17', '2025-11-30 20:13:33'),
(11, 2, 'ORD-301120250011', '2026-01-02', 1, 7000, 1450, 550, 5550, '2025-11-30 16:39:28', '2025-11-30 16:41:16'),
(12, 4, 'ORD-011220250012', '2025-12-31', 1, 5000, 5, 495, 4995, '2025-11-30 17:25:40', '2025-11-30 20:27:44');

-- --------------------------------------------------------

--
-- Table structure for table `trans_order_details`
--

CREATE TABLE `trans_order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trans_order_details`
--

INSERT INTO `trans_order_details` (`id`, `order_id`, `service_id`, `qty`, `price`, `subtotal`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 1, 24000, 24000, '2025-11-29 07:21:21', NULL),
(2, 2, 4, 1, 24000, 24000, '2025-11-29 07:43:31', NULL),
(3, 3, 5, 1, 4500, 4500, '2025-11-29 09:16:54', NULL),
(4, 3, 6, 1, 5000, 5000, '2025-11-29 09:16:54', NULL),
(5, 4, 7, 1, 7000, 7000, '2025-11-29 10:55:39', NULL),
(6, 4, 6, 1, 5000, 5000, '2025-11-29 10:55:39', NULL),
(7, 5, 6, 1, 5000, 5000, '2025-11-29 12:24:34', NULL),
(8, 6, 6, 1, 5000, 5000, '2025-11-30 07:42:24', NULL),
(9, 6, 5, 1, 4500, 4500, '2025-11-30 07:42:24', NULL),
(10, 7, 6, 1, 5000, 5000, '2025-11-30 12:35:13', NULL),
(11, 8, 4, 2, 5000, 10000, '2025-11-30 15:48:19', NULL),
(12, 9, 4, 1, 5000, 5000, '2025-11-30 16:13:17', NULL),
(13, 10, 4, 2, 5000, 10000, '2025-11-30 16:36:59', NULL),
(14, 11, 6, 1, 5000, 5000, '2025-11-30 16:39:28', NULL),
(15, 12, 5, 1, 4500, 4500, '2025-11-30 17:25:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `level_id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '2025-11-24 02:57:51', '2025-11-29 06:18:52'),
(2, 2, 'Operator', 'operator@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '2025-11-25 06:43:40', NULL),
(3, 3, 'Pimpinan', 'pimpinan@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', '2025-11-29 07:33:52', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level_menus`
--
ALTER TABLE `level_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxs`
--
ALTER TABLE `taxs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trans_orders`
--
ALTER TABLE `trans_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trans_order_details`
--
ALTER TABLE `trans_order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `level_menus`
--
ALTER TABLE `level_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=448;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `taxs`
--
ALTER TABLE `taxs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trans_orders`
--
ALTER TABLE `trans_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `trans_order_details`
--
ALTER TABLE `trans_order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
