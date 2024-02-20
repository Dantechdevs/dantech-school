-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 10, 2024 at 06:53 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `andy`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `name`, `created_at`) VALUES
(1, 1, 'Technology', '2017-03-04 13:03:18'),
(2, 1, 'Business', '2017-03-04 13:14:40'),
(3, 1, 'Sports', '2024-02-07 17:08:51'),
(4, 1, 'Fashion', '2024-02-07 17:08:51'),
(5, 1, 'Sports', '2024-02-07 17:08:55'),
(6, 1, 'Fashion', '2024-02-07 17:08:55'),
(7, 1, 'Trending', '2024-02-07 17:10:33'),
(8, 1, 'Gossip', '2024-02-07 17:10:33'),
(9, 1, 'Trend', '2024-02-07 17:10:33'),
(10, 1, 'Education', '2024-02-07 17:10:33'),
(11, 1, 'Sex-and-Relationships', '2024-02-07 17:10:33'),
(12, 1, 'Trending', '2024-02-07 17:10:38'),
(13, 1, 'Gossip', '2024-02-07 17:10:38'),
(14, 1, 'Trend', '2024-02-07 17:10:38'),
(15, 1, 'Education', '2024-02-07 17:10:38'),
(16, 1, 'Sex-and-Relationships', '2024-02-07 17:10:38');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('rj71jn4a6sm8in9o0nk540nf8mk0vbji', '127.0.0.1', 1707321420, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730373332313432303b),
('quchr4782h4qb9lm01rnv41q20le62dj', '127.0.0.1', 1707321423, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730373332313432303b);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `post_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `name`, `email`, `body`, `created_at`) VALUES
(1, 2, 'John Doe', 'jdoe@gmail.com', 'Great Post!', '2017-03-17 13:57:29'),
(2, 2, 'Jan Doe', 'jane@yahoo.com', 'Thank you for this awesome post', '2017-03-17 14:05:58'),
(3, 18, 'Hall Dorsey', 'mirimikelvin229@gmail.com', 'ddffggh', '2024-02-10 06:19:24'),
(4, 16, 'Youngfriends new', 'mirimikelvin229@gmail.com', 'njjfgy', '2024-02-10 06:52:03');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int NOT NULL,
  `category_id` int NOT NULL,
  `user_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `body`, `post_image`, `created_at`) VALUES
(1, 1, 1, 'Blog Post 1', 'Blog-Post-1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et molestie eros. Maecenas dignissim, erat at faucibus finibus, nunc nibh finibus lacus, sed gravida leo urna at erat. Proin et efficitur dolor, eget interdum enim. Cras nec ante quis tellus gravida ornare. Duis arcu lacus, elementum quis iaculis id, mattis ut turpis. Pellentesque id dignissim dolor. Curabitur finibus facilisis pulvinar. Nullam urna arcu, malesuada a purus a, pharetra pulvinar lacus. Curabitur quis ornare felis, ut ultrices nulla.</p>\r\n\r\n<p>Fusce placerat aliquam erat, et sagittis diam accumsan vitae. In elementum vel augue sit amet bibendum. Nulla cursus elit metus. Ut auctor nisl quis bibendum tincidunt. Integer gravida nisi id urna rhoncus, nec tristique magna efficitur. Mauris non blandit ipsum, ut tempus purus. Praesent rhoncus gravida aliquam. Nulla finibus mi id fermentum fringilla. Morbi volutpat, massa eget sodales tempus, est risus elementum leo, pulvinar fermentum diam nibh a mi. Phasellus porttitor vitae mauris non elementum. Sed ut lacinia sapien. Proin a metus ullamcorper lectus ultricies euismod. Donec vitae turpis eros. Morbi at imperdiet ligula. Mauris sed rutrum lectus. Phasellus eget nulla congue, dictum dolor ac, dapibus justo.</p>\r\n', 'OS_Ubuntu.png', '2017-03-17 13:22:28'),
(2, 2, 1, 'Blog Post 2', 'Blog-Post-2', '<p>. Cras nec ante quis tellus gravida ornare. Duis arcu lacus, elementum quis iaculis id, mattis ut turpis. Pellentesque id dignissim dolor. Curabitur finibus facilisis pulvinar. Nullam urna arcu, malesuada a purus a, pharetra pulvinar lacus. Curabitur quis ornare felis, ut ultrices nulla.</p>\r\n\r\n<p>Fusce placerat aliquam erat, et sagittis diam accumsan vitae. In elementum vel augue sit amet bibendum. Nulla cursus elit metus. Ut auctor nisl quis bibendum tincidunt. Intes elementum leo, pulvinar fermentum diam nibh a mi. Phasellus porttitor vitae mauris non elementum. Sed ut lacinia sapien. Proin a metus ullamcorper lectus ultricies euismod. Donec vitae turpis eros. Morbi at imperdiet ligula. Mauris sed rutrum lectus. Phasellus eget nulla congue, dictum dolor ac, dapibus justo.</p>\r\n', 'ci.png', '2017-03-17 13:23:23'),
(3, 2, 2, 'Test Post', 'Test-Post', '<p>Test</p>\r\n', 'noimage.jpg', '2017-04-10 14:15:59'),
(4, 16, 1, 'Generates an insert string based on the data you supply, and runs the query. ', 'Generates-an-insert-string-based-on-the-data-you-supply-and-runs-the-query-1111.', 'Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. ', 'one.jpg', '2024-02-07 17:20:29'),
(5, 15, 1, 'Generates an insert string based on the data you supply, and runs the query. ', 'Generates-an-insert-string-based-on-the-data-you-supply-and-runs-the-query-21.', 'Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. ', 'two.jpg', '2024-02-07 17:20:29'),
(6, 12, 1, 'Generates an insert string based on the data you supply, and runs the query. ', 'Generates-an-insert-string-based-on-the-data-you-supply-and-runs-the-query-31.', 'three.jpgGenerates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. ', 'three.jpg', '2024-02-07 17:20:29'),
(7, 8, 1, 'Generates an insert string based on the data you supply, and runs the query. ', 'Generates-an-insert-string-based-on-the-data-you-supply-and-runs-the-query-41.', 'Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. ', 'four.jpg', '2024-02-07 17:20:29'),
(8, 9, 1, 'Generates an insert string based on the data you supply, and runs the query. ', 'Generates-an-insert-string-based-on-the-data-you-supply-and-runs-the-query-6.', 'Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. ', 'six.jpg', '2024-02-07 17:20:29'),
(9, 3, 1, 'Generates an insert string based on the data you supply, and runs the query. ', 'Generates-an-insert-string-based-on-the-data-you-supply-and-runs-the-query-71.', 'Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. ', 'five.jpg', '2024-02-07 17:20:29'),
(10, 13, 1, 'Generates an insert string based on the data you supply, and runs the query. ', 'Generates-an-insert-string-based-on-the-data-you-supply-and-runs-the-query-81.', 'Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. ', 'six.jpg', '2024-02-07 17:20:29'),
(11, 5, 1, 'Generates an insert string based on the data you supply, and runs the query. ', 'Generates-an-insert-string-based-on-the-data-you-supply-and-runs-the-query-91.', 'Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. ', 'seven.jpg', '2024-02-07 17:20:29'),
(12, 4, 1, 'Generates an insert string based on the data you supply, and runs the query. ', 'Generates-an-insert-string-based-on-the-data-you-supply-and-runs-the-query-101.', 'Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. ', 'nine.jpg', '2024-02-07 17:20:29'),
(13, 16, 1, 'Generates an insert string based on the data you supply, and runs the query. ', 'Generates-an-insert-string-based-on-the-data-you-supply-and-runs-the-query-1.', 'Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. ', 'one.jpg', '2024-02-07 17:20:34'),
(14, 15, 1, 'Generates an insert string based on the data you supply, and runs the query. ', 'Generates-an-insert-string-based-on-the-data-you-supply-and-runs-the-query-2.', 'Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. ', 'two.jpg', '2024-02-07 17:20:34'),
(15, 12, 1, 'Generates an insert string based on the data you supply, and runs the query. ', 'Generates-an-insert-string-based-on-the-data-you-supply-and-runs-the-query-3.', 'three.jpgGenerates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. ', 'three.jpg', '2024-02-07 17:20:34'),
(16, 8, 1, 'Generates an insert string based on the data you supply, and runs the query. ', 'Generates-an-insert-string-based-on-the-data-you-supply-and-runs-the-query-4.', 'Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. ', 'ten.jpg', '2024-02-07 17:20:34'),
(17, 9, 1, 'Generates an insert string based on the data you supply, and runs the query. ', 'Generates-an-insert-string-based-on-the-data-you-supply-and-runs-the-query-6.', 'Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. ', 'six.jpg', '2024-02-07 17:20:34'),
(18, 3, 1, 'Generates an insert string based on the data you supply, and runs the query. ', 'Generates-an-insert-string-based-on-the-data-you-supply-and-runs-the-query-7.', 'Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. ', 'five.jpg', '2024-02-07 17:20:34'),
(19, 13, 1, 'Generates an insert string based on the data you supply, and runs the query. ', 'Generates-an-insert-string-based-on-the-data-you-supply-and-runs-the-query-8.', 'Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. ', 'six.jpg', '2024-02-07 17:20:34'),
(20, 5, 1, 'Generates an insert string based on the data you supply, and runs the query. ', 'Generates-an-insert-string-based-on-the-data-you-supply-and-runs-the-query-9.', 'Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. ', 'seven.jpg', '2024-02-07 17:20:34'),
(21, 4, 1, 'Generates an insert string based on the data you supply, and runs the query. ', 'Generates-an-insert-string-based-on-the-data-you-supply-and-runs-the-query-10.', 'Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. Generates an insert string based on the data you supply, and runs the query. ', 'nine.jpg', '2024-02-07 17:20:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `zipcode`, `email`, `username`, `password`, `register_date`) VALUES
(1, 'Brad Traversy', '01913', 'brad@gmail.com', 'brad', 'e10adc3949ba59abbe56e057f20f883e', '2017-04-10 13:14:31'),
(2, 'John Doe', '90210', 'jdoe@gmail.com', 'john', 'e10adc3949ba59abbe56e057f20f883e', '2017-04-10 14:12:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
