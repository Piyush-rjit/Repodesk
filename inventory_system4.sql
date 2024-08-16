-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jun 25, 2024 at 07:05 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory_system4`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `type` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `type`) VALUES
(4, 'Data', 'Heavy'),
(5, 'Machinery', 'light'),
(6, 'Work in Progress', 'light'),
(8, 'Stationery Items', 'light'),
(9, 'Packing Materials', 'light'),
(10, 'Raw Materials', 'light'),
(11, 'Tata', 'Heavy'),
(12, 'Finished Goods2', 'Medium');

-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

CREATE TABLE `issues` (
  `id` int(11) NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(25,2) NOT NULL,
  `date` date NOT NULL,
  `bill_no` varchar(50) DEFAULT NULL,
  `Issued_to` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `issues`
--

INSERT INTO `issues` (`id`, `product_id`, `qty`, `price`, `date`, `bill_no`, `Issued_to`) VALUES
(1, 1, 2, 1000.00, '2021-04-04', NULL, NULL),
(4, 6, 2, 830.00, '2021-04-04', NULL, NULL),
(6, 13, 21, 399.00, '2021-04-04', NULL, NULL),
(8, 9, 2, 110.00, '2021-04-04', NULL, NULL),
(9, 51, 17, 0.00, '2024-03-26', 'd', 'ram'),
(12, 43, 2334, 0.00, '2024-03-27', '3443243424', 'ram');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `buy_price` decimal(25,2) DEFAULT NULL,
  `issue_price` decimal(25,2) NOT NULL,
  `categorie_id` int(11) UNSIGNED NOT NULL,
  `media_id` int(11) DEFAULT 0,
  `date` datetime NOT NULL,
  `subcategorie_id` int(60) UNSIGNED DEFAULT NULL,
  `bill_no` varchar(50) DEFAULT NULL,
  `Authorised` int(60) DEFAULT NULL,
  `vendor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `quantity`, `buy_price`, `issue_price`, `categorie_id`, `media_id`, `date`, `subcategorie_id`, `bill_no`, `Authorised`, `vendor`) VALUES
(1, 'Demo Product', '48', 100.00, 500.00, 1, 0, '2021-04-04 16:45:51', NULL, NULL, NULL, NULL),
(4, 'Timber', '1200', 780.00, 1069.00, 2, 0, '2021-04-04 19:03:23', NULL, NULL, NULL, NULL),
(6, 'Portable Band Saw Xbp02z', '42', 280.00, 415.00, 5, 0, '2021-04-04 19:13:35', 8, NULL, NULL, NULL),
(9, 'Disney Woody - Action Figure', '66', 29.00, 55.00, 3, 0, '2021-04-04 19:19:20', NULL, NULL, NULL, NULL),
(11, 'Packing Chips', '78', 21.00, 31.00, 4, 0, '2021-04-04 19:25:22', NULL, NULL, NULL, NULL),
(13, 'Small Bubble Cushioning Wrap', '199', 8.00, 19.00, 4, 0, '2021-04-04 19:49:00', NULL, NULL, NULL, NULL),
(14, 'Zddc', '10', 1.00, 0.00, 5, 0, '2024-03-01 15:45:35', 1, '1', 1, NULL),
(29, 'One', '6', 1.00, 0.00, 4, 0, '2024-03-02 14:15:15', 3, '1', 1, NULL),
(31, 'One', '4', 1.00, 0.00, 4, 0, '2024-03-07 00:00:00', 3, '2', 1, NULL),
(35, 'One', '53', 100.00, 0.00, 4, 0, '2024-03-14 00:00:00', 3, '14564', 1, NULL),
(36, 'Sdf', '2', 1.00, 0.00, 5, 0, '2024-03-02 15:26:11', 1, '1', 1, NULL),
(37, 'Sdfd', '324', 4234.00, 0.00, 4, 0, '2024-03-12 11:17:38', 2, '2342', 234, NULL),
(40, 'Ljadskfkldsjfsj', '0', 2334.00, 0.00, 5, 0, '2024-03-14 06:04:25', 1, '34534', 234, NULL),
(42, 'Ddsjfklsfjklsdjflsdlc', '234', 2342.00, 0.00, 5, 0, '2024-03-14 06:15:28', 1, '3432', 234, NULL),
(43, 'Ddslkfj Sdslkjfkljsds Sdslkfjdslf Asdlkfjsdlklfjls', '0', 234.00, 0.00, 4, 0, '2024-03-14 06:17:36', 2, '3443243424', 2334, NULL),
(45, 'Sdfjlksdfdssdlkjfsdd Ew Fsd Klfjldslfds Wewi Jdslkfj', '324', 234.00, 0.00, 4, 0, '2024-03-14 06:25:33', 2, 'kjflsdkwerwe23342', 234, NULL),
(46, 'Sdf', '1', 1.00, 0.00, 5, 0, '2024-03-25 17:05:42', 1, '23sdf', 1, NULL),
(47, 'Sdf', '1', 1.00, 0.00, 5, 0, '2024-03-25 17:17:16', 1, 'df', 1, NULL),
(48, 'C D', '4', 3.00, 0.00, 4, 0, '2024-03-25 19:48:20', 3, 'x', 3, NULL),
(49, 'C C', '0', 0.00, 0.00, 4, 0, '2024-03-25 19:51:04', 2, 'd', 2, NULL),
(50, 'C C', '0', 21.00, 0.00, 4, 0, '2024-03-25 00:00:00', 2, 'd', 2, 'ven'),
(51, 'C C', '15', 10.00, 0.00, 4, 0, '2024-03-25 00:00:00', 2, 'd', 2, 'm'),
(52, 'C C', '48', 0.00, 0.00, 4, 0, '2024-03-25 00:00:00', 2, 'd', 2, NULL),
(53, 'C C', '48', 0.00, 0.00, 4, 0, '2024-03-28 00:00:00', 2, 'd', 2, NULL),
(54, 'C C', '48', 0.00, 0.00, 4, 0, '2024-03-28 00:00:00', 2, 'd', 2, ','),
(55, 'C C', '48', 0.00, 0.00, 4, 0, '2024-03-28 00:00:00', 2, 'd', 2, 'vendor'),
(56, 'C D', '4', 0.00, 0.00, 4, 0, '2024-03-25 00:00:00', 3, 'x', 3, 'ven'),
(57, 'Sdf', '3', 3.00, 0.00, 6, 0, '2024-03-27 13:53:19', 9, 'f', 3, ' ');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `cid` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `cid`) VALUES
(1, 'Tata', 5),
(2, 'Mahindra', 4),
(3, 'Data - Data2', 4),
(4, 'Jhyg', 10),
(8, 'Xcv', 5),
(9, 'Data - Data', 6),
(10, 'Jhyg', 10);

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `name` varchar(60) NOT NULL,
  `catid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`name`, `catid`) VALUES
('Heavy', 1),
('Heavy', 2),
('Heavy', 3),
('Heavy', 5),
('Heavy', 8),
('Light', 1),
('Light', 2),
('Light', 3),
('Light', 4),
('Medium', 1),
('Medium', 2),
('Medium', 4),
('Medium', 6),
('Medium', 7);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_level` int(11) NOT NULL,
  `image` varchar(255) DEFAULT 'no_image.jpg',
  `status` int(1) NOT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `user_level`, `image`, `status`, `last_login`) VALUES
(1, 'shadow', 'Admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1, 'oqmeqmtw1.jpg', 1, '2024-04-18 12:47:43'),
(2, 'John Walker', 'special', 'ba36b97a41e7faf742ab09bf88405ac04f99599a', 2, 'no_image.png', 1, '2021-04-04 19:53:26'),
(3, 'Christopher', 'user', '12dea96fec20593566ab75692c9949596833adc9', 3, 'no_image.png', 1, '2021-04-04 19:54:46'),
(4, 'Natie Williams', 'natie', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 3, 'no_image.png', 1, NULL),
(5, 'Kevin', 'kevin', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 3, 'no_image.png', 1, '2021-04-04 19:54:29');

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(150) NOT NULL,
  `group_level` int(11) NOT NULL,
  `group_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `group_name`, `group_level`, `group_status`) VALUES
(1, 'Admin', 1, 1),
(2, 'special', 2, 1),
(3, 'User', 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issues`
--
ALTER TABLE `issues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`name`,`catid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `issues`
--
ALTER TABLE `issues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
