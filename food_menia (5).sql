-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2025 at 05:50 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_menia`
--

-- --------------------------------------------------------

--
-- Table structure for table `food_items`
--

CREATE TABLE `food_items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `vendor` varchar(255) DEFAULT 'Street King',
  `rating` decimal(2,1) DEFAULT 0.0,
  `stars` varchar(10) DEFAULT '★★★☆☆',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `category` enum('floure','food','oil','fruits','vegitables','spicies','sauses','bakery items','namkeen') NOT NULL DEFAULT 'food',
  `cart` tinyint(1) NOT NULL DEFAULT 0,
  `cart_user_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_items`
--

INSERT INTO `food_items` (`id`, `name`, `description`, `price`, `image_url`, `vendor`, `rating`, `stars`, `created_at`, `category`, `cart`, `cart_user_id`, `user_id`) VALUES
(1, 'pani puri', '5 kg', 20.00, 'https://images.unsplash.com/photo-1613292443284-8d10ef9383fe?q=80&w=1074&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Street King', 4.0, '★★★★☆', '2025-07-25 19:02:36', 'food', 0, NULL, NULL),
(2, 'pani puri', '4 kg', 30.00, 'https://images.unsplash.com/photo-1613292443284-8d10ef9383fe?q=80&w=1074&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Ghanshayam bakery', 4.0, '★★★★★', '2025-07-26 04:06:49', 'food', 1, 5, NULL),
(3, 'cake', '4 kg', 100.00, 'https://plus.unsplash.com/premium_photo-1713447395823-2e0b40b75a89?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y2FrZXxlbnwwfHwwfHx8MA%3D%3D', 'ghanshyam bakers', 5.0, '★★★★★', '2025-07-26 13:30:17', 'food', 1, 5, NULL),
(5, 'Carrot', '3 kg', 200.00, 'https://images.unsplash.com/photo-1445282768818-728615cc910a?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Carrot King', 3.0, '★★★☆☆', '2025-07-26 18:23:13', 'vegitables', 1, NULL, NULL),
(6, 'Tomato', '2 kg', 40.00, 'https://images.unsplash.com/photo-1610099167931-33655a52194b?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'tomato artist', 4.0, '★★★★☆', '2025-07-26 18:32:16', 'vegitables', 0, NULL, NULL),
(7, 'cabbage', '2 kg', 30.00, 'https://images.unsplash.com/photo-1708093195061-20dd60b09b21?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Street King', 4.0, '★★★★☆', '2025-07-27 04:32:12', 'vegitables', 0, NULL, NULL),
(8, 'capsicum', '1 kg', 25.00, 'https://images.unsplash.com/photo-1509377244-b9820f59c12f?q=80&w=735&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'spice life', 4.0, '★★★★☆', '2025-07-27 04:36:13', 'vegitables', 0, NULL, NULL),
(9, 'Potato', '4 kg', 45.00, 'https://images.unsplash.com/photo-1624864517922-a02f51a9d4f4?q=80&w=735&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Potato King', 3.0, '★★★☆☆', '2025-07-27 04:38:48', 'vegitables', 0, NULL, NULL),
(10, 'Garlic', '3 kg', 30.00, 'https://plus.unsplash.com/premium_photo-1666270423754-5b66a5184cc3?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Street King', 4.0, '★★★★☆', '2025-07-27 04:41:01', 'vegitables', 1, NULL, NULL),
(11, 'Lemon', '1 kg', 20.00, 'https://images.unsplash.com/photo-1694460434632-752ee7d05ecf?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Street King', 3.0, '★★★☆☆', '2025-07-27 04:43:00', 'vegitables', 1, 5, NULL),
(12, 'Cucumber', '2 kg', 20.00, 'https://plus.unsplash.com/premium_photo-1701798480512-de11ff89d567?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Street King', 4.0, '★★★★☆', '2025-07-27 04:47:55', 'vegitables', 0, NULL, NULL),
(13, 'Spinach', '5 kg', 20.00, 'https://images.unsplash.com/photo-1576045057995-568f588f82fb?q=80&w=880&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Street King', 4.0, '★★★★☆', '2025-07-27 04:52:54', 'vegitables', 1, NULL, NULL),
(15, 'apple', '5 kg', 20.00, 'https://images.unsplash.com/photo-1589217157232-464b505b197f?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Street King', 3.0, '★★★☆☆', '2025-07-27 10:55:28', 'fruits', 0, NULL, 5),
(16, 'Pineapple ', '4 kg', 90.00, 'https://images.unsplash.com/photo-1587883012610-e3df17d41270?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Street King', 3.0, '★★★☆☆', '2025-07-27 11:04:28', 'fruits', 0, NULL, 5),
(17, 'guava', '3 kg', 30.00, 'https://images.unsplash.com/photo-1629367308496-a2496ba22f88?q=80&w=1171&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'fruit bazzar', 3.0, '★★★☆☆', '2025-07-27 11:07:58', 'fruits', 0, NULL, 5),
(18, 'Kiwi', '3 kg', 30.00, 'https://images.unsplash.com/photo-1616684000067-36952fde56ec?q=80&w=1228&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'fruit bazzar', 4.0, '★★★★☆', '2025-07-27 11:34:59', 'fruits', 0, NULL, 5),
(19, 'grapes', '2 kg', 25.00, 'https://images.unsplash.com/photo-1637715924886-cbe4485f90b9?q=80&w=764&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Street King', 3.0, '★★★☆☆', '2025-07-27 11:37:10', 'fruits', 0, NULL, 5),
(20, 'water-melon', '5 kg', 40.00, 'https://images.unsplash.com/photo-1530552171419-b0212487fe84?q=80&w=689&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'fruit bazzar', 4.0, '★★★★☆', '2025-07-27 11:40:51', 'fruits', 0, NULL, 5),
(21, 'Banana', '5 kg', 100.00, 'https://images.unsplash.com/photo-1571771894821-ce9b6c11b08e?q=80&w=880&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'banana boy', 4.0, '★★★★☆', '2025-07-27 12:43:33', 'fruits', 0, NULL, 5),
(22, 'salt', '1 kg', 50.00, 'https://i.pinimg.com/736x/ec/60/87/ec6087bc9afb402c1abee77c2d3dc108.jpg', 'Tata ', 4.0, '★★★★☆', '2025-07-27 12:58:54', 'spicies', 0, NULL, 5),
(23, 'chilli powder', '1 kg', 30.00, 'https://i.pinimg.com/736x/25/14/ee/2514eeccddd8ac182ea3682689878532.jpg', 'Kumthi kashmiri', 4.0, '★★★★☆', '2025-07-27 13:03:44', 'spicies', 0, NULL, 5),
(24, 'Black pepper', '1 kg', 20.00, 'https://i.pinimg.com/1200x/47/ea/25/47ea2507af6b36b2baa45e581d47ec48.jpg', 'Street King', 4.0, '★★★★☆', '2025-07-27 13:06:12', 'spicies', 0, NULL, 5),
(25, 'Dosa rice', '1 kg', 20.00, 'https://i.pinimg.com/736x/bd/57/9f/bd579f77515ebe5e14a0c58791d00f55.jpg', 'Street King', 4.0, '★★★★☆', '2025-07-27 13:08:34', 'spicies', 0, NULL, 5),
(26, 'chat masala', '1 kg', 20.00, 'https://i.pinimg.com/736x/dd/8b/bc/dd8bbcf89a03305048407e34abd93c57.jpg', 'spice zone', 4.0, '★★★★☆', '2025-07-27 13:10:53', 'spicies', 0, NULL, 5),
(27, 'Garam masala', '1 kg', 20.00, 'https://i.pinimg.com/736x/16/fd/a0/16fda0685cd845da742a4ef109c77aa6.jpg', 'Street King', 4.0, '★★★★☆', '2025-07-27 13:14:22', 'spicies', 0, NULL, 5),
(28, 'Turmeric masala', '1 kg', 20.00, 'https://i.pinimg.com/736x/ee/78/07/ee7807c71753fc8377ac6d47d6044550.jpg', 'Street King', 4.0, '★★★★☆', '2025-07-27 13:15:40', 'spicies', 0, NULL, 5),
(29, 'coriander powder', '1 kg', 30.00, 'https://i.pinimg.com/736x/ea/c7/83/eac7834cc3a51a9c083e0b098973e07e.jpg', 'Street King', 4.0, '★★★★☆', '2025-07-27 13:17:37', 'spicies', 0, NULL, 5),
(30, 'Dalda oil', '1 kg', 30.00, 'https://i.pinimg.com/736x/6a/59/c1/6a59c1696118952fb7eba5b8bc54bd16.jpg', 'oil wallah', 4.0, '★★★★☆', '2025-07-27 13:23:07', 'oil', 0, NULL, 5),
(31, 'sun flower oil', '1 kg', 100.00, 'https://i.pinimg.com/1200x/88/2e/e2/882ee21d55b4b683b6ff5fe4953ed34b.jpg', 'oil wallah', 4.0, '★★★★☆', '2025-07-27 13:24:53', 'oil', 0, NULL, 5),
(32, 'fortune oil', '1 kg', 80.00, 'https://i.pinimg.com/736x/bd/9d/39/bd9d3965af1c36b2d762b0ddbcbbeb5f.jpg', 'fortune', 4.0, '★★★★☆', '2025-07-27 13:26:51', 'oil', 0, NULL, 5),
(33, 'vegitable oil', '1 kg', 70.00, 'https://i.pinimg.com/736x/db/c2/cb/dbc2cb09c76ebf8385f6e8be518e5a39.jpg', 'Armanti oil', 4.0, '★★★★☆', '2025-07-27 13:28:26', 'oil', 0, NULL, 5),
(34, 'Olive oil', '1 kg', 100.00, 'https://i.pinimg.com/736x/06/a1/b6/06a1b6c076b6f831c97a3aeddda133a8.jpg', 'Oiliver', 4.0, '★★★★☆', '2025-07-27 13:30:46', 'oil', 0, NULL, 5),
(38, 'Toast Bread', '200gm', 60.00, 'https://i.pinimg.com/736x/7f/ce/7a/7fce7afbf66cf7fa520a560eb50a6e8f.jpg', 'Street King', 4.2, '★★★★☆', '2025-07-27 13:39:32', 'bakery items', 0, NULL, 5),
(39, 'Buns', '12 pcs', 40.00, 'https://i.pinimg.com/736x/a0/79/d4/a079d4ea801d6b401b37a224a6d5c749.jpg', 'Street King', 4.5, '★★★★☆', '2025-07-27 13:39:41', 'bakery items', 0, NULL, 5),
(40, 'Gathia', '200 gm', 40.00, 'https://i.pinimg.com/736x/d6/90/2b/d6902be13c280fd37fccdae34e37f038.jpg', 'gujju ', 4.0, '★★★★☆', '2025-07-27 13:47:44', 'bakery items', 0, NULL, 5),
(41, 'Aloo Bhujia', '200 gm', 20.00, 'https://i.pinimg.com/736x/d5/92/b0/d592b0ad6e3348ea18e80a3d04155c65.jpg', 'Bikaji', 4.0, '★★★★☆', '2025-07-27 13:49:52', 'bakery items', 0, NULL, 5),
(42, 'bhakar-wadi', '250 gm', 60.00, 'https://i.pinimg.com/1200x/83/a8/b9/83a8b99bd8c6b3b7818ac1e3cc5c43fb.jpg', 'gujju ', 4.0, '★★★★☆', '2025-07-27 13:51:56', 'bakery items', 0, NULL, 5),
(43, 'Pizza base', 'pack-of-4', 40.00, 'https://www.kff.co.uk/images_products/L_pizza-base-deep-pan.jpg', 'pizza king', 4.0, '★★★★☆', '2025-07-27 13:57:03', 'bakery items', 0, NULL, 5),
(44, 'tomato sause', '250 ml', 50.00, 'https://i.pinimg.com/736x/e4/f9/8f/e4f98fd0ad1e9e803a85fc5dbb2b1bb2.jpg', 'organic', 4.0, '★★★★☆', '2025-07-27 14:06:22', 'sauses', 0, NULL, 5),
(45, 'Red chilly sause', '250 ml', 30.00, 'https://i.pinimg.com/736x/07/1d/b8/071db83c325991badef6d0ce35a2dc93.jpg', 'chings', 4.0, '★★★★☆', '2025-07-27 14:08:33', 'sauses', 0, NULL, 5),
(46, 'soya sause', '250 ml', 20.00, 'https://i.pinimg.com/1200x/23/7a/55/237a55e32bba51c656e3545d4fcce692.jpg', 'Street King', 4.0, '★★★★☆', '2025-07-27 14:10:14', 'sauses', 0, NULL, 5),
(47, 'sezvan sause', '250 ml', 25.00, 'https://i.pinimg.com/1200x/7c/f6/79/7cf679bfa8ab853d590c25cca0c47dd9.jpg', 'chings', 4.0, '★★★★☆', '2025-07-27 14:13:15', 'sauses', 0, NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expires_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_active` tinyint(1) DEFAULT 1,
  `role` enum('buyer','seller') NOT NULL DEFAULT 'buyer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`, `is_active`, `role`) VALUES
(1, 'John Doe', 'john@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2025-07-25 16:56:02', '2025-07-25 16:56:02', 1, 'buyer'),
(2, 'Jane Smith', 'jane@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2025-07-25 16:56:02', '2025-07-25 16:56:02', 1, 'buyer'),
(3, 'Rudra Miyani', 'rudramiyani2008@gmail.com', '$2y$10$yQ1wPHRZsqoW3AXBYnha3eg99AfKJfbYbWW9/w6N/PmfHhgvPaMG.', '2025-07-25 17:02:46', '2025-07-25 17:02:46', 1, 'buyer'),
(4, 'manav', 'manavtestcase@gmail.com', '$2y$10$bbcW132y3ElsTKFwzF1J5.S5HjQLzhAD6g/UAPuBgC0hCmJz6WNCG', '2025-07-25 17:04:19', '2025-07-25 17:04:19', 1, 'buyer'),
(5, 'manavuu', 'Manav@gmail.com', '$2y$10$7pn1NW7oeW7LcVnDHFakVuJRyL9lCuZWVm4vYDpp96/szFSSdpN92', '2025-07-25 17:30:39', '2025-07-27 05:43:16', 1, 'seller'),
(6, 'devuu', 'devuu@gmail.com', '$2y$10$ZwLhdhffO10yOP.NND9o2emnXHGaTMKo6zfo5LIBeDwbsLhS0GJmm', '2025-07-25 17:49:38', '2025-07-25 17:49:38', 1, 'buyer'),
(7, 'saurabh', 'saurabh@gmail.com', '$2y$10$yuxPtp4kocGTY1pU1Tx14uxnygJkgxMVjFK22sIxLkMmjxNJfTbYe', '2025-07-27 05:28:29', '2025-07-27 05:28:29', 1, 'seller');

-- --------------------------------------------------------

--
-- Table structure for table `user_sessions`
--

CREATE TABLE `user_sessions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_token` varchar(255) NOT NULL,
  `expires_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `food_items`
--
ALTER TABLE `food_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_sessions`
--
ALTER TABLE `user_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food_items`
--
ALTER TABLE `food_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_sessions`
--
ALTER TABLE `user_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD CONSTRAINT `password_reset_tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_sessions`
--
ALTER TABLE `user_sessions`
  ADD CONSTRAINT `user_sessions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
