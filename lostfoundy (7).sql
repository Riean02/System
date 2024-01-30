-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2023 at 05:34 PM
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
-- Database: `lostfoundy`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminstellarfind`
--

CREATE TABLE `adminstellarfind` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminstellarfind`
--

INSERT INTO `adminstellarfind` (`admin_id`, `admin_name`, `admin_password`) VALUES
(1, 'Admin', 'Adjarail');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `item_type` varchar(50) DEFAULT NULL,
  `pet_type` varchar(50) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `user_id`, `image_path`, `description`, `type`, `item_type`, `pet_type`, `date`) VALUES
(2, 2, 'uploads/Adeela_Hussin/1696878438_380516622_645278237734129_5750146138599112028_n.jpg', 'this is my ring and I accidentally lost it. there is a reward for you please find my item.', 'Lost', 'Ring', '', '2023-10-02'),
(3, 7, 'uploads/Ar-krungie_Adjarail/1696878577_380539593_1704758580002386_7675808671500494639_n.jpg', 'found this wallet at the WMSU library ', 'Found', 'Wallet', '', '2023-10-09'),
(5, 11, 'uploads/LeBron_James/1696962564_james.jfif', 'Lebron 8 Nike Graffiti is missing. kindly return and private message me because there is a massive reward for you', 'Lost', 'Shoes', '', '2023-09-27'),
(16, 1, 'uploads/Ar-Ameeff_Adjarail/1697466660_380547700_1556893768449878_1176585241352160507_n.jpg', 'keyless remote is missing, there is a reward for this....', 'Found', 'Remote Key', '', '2023-10-16'),
(57, 9, 'uploads/Ivan_Asri/1699669703_380113656_841181527412662_885248083694979394_n.jpg', 'last seen WMSU campus B ', 'Lost', 'Key', '', '2023-11-09'),
(58, 4, 'uploads/Ronald_Santos/1699670223_blobio-imr-202110_388b233f7ab24cc0b4122ef178f7489a.jpg', 'FX 2 disc is missing. last seen Jollibee san jose cawa cawa.', 'Lost', 'Bike', '', '2023-11-10'),
(60, 6, 'uploads/Al-RaisaMill_Alawi/1699673118_60606910_10218109112666959_3806131040540426240_o.jpg', 'found this cat at the backyard of my house', 'Found', '', 'Cat', '2023-11-07');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `report_id` int(11) NOT NULL,
  `reported_user_id` int(11) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `date_reported` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`report_id`, `reported_user_id`, `reason`, `date_reported`) VALUES
(1, 4, 'report this acoount', '2023-12-09 17:26:18'),
(2, 9, 'wrong information', '2023-12-09 17:27:18'),
(3, 7, 'no facebook links', '2023-12-12 14:59:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `place_of_birth` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `gender` varchar(8) DEFAULT NULL,
  `employment_status` varchar(50) DEFAULT NULL,
  `contact_number` varchar(15) DEFAULT NULL,
  `gmail_account` varchar(255) DEFAULT NULL,
  `profile_photo` varchar(500) NOT NULL,
  `facebook_link` varchar(500) NOT NULL,
  `instagram_link` varchar(500) NOT NULL,
  `status` varchar(10) DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uname`, `pass`, `first_name`, `last_name`, `middle_name`, `birthday`, `place_of_birth`, `address`, `zip_code`, `gender`, `employment_status`, `contact_number`, `gmail_account`, `profile_photo`, `facebook_link`, `instagram_link`, `status`) VALUES
(1, 'Ameeffy', 'Adjarail', 'Ar-Ameeff', 'Adjarail', 'Mohammad', '2002-11-12', 'Zamboanga City', 'Acacia Drive Baliwasan Zamboanga City', '7000', 'Male', 'Self-Employed', '09285155692', 'arameeff@gmail.com', 'uploads/Ar-Ameeff_Adjarail/380214569_831256545261654_2143626836081655798_n.jpg', 'https://www.facebook.com/Ameeffy', 'https://www.instagram.com/ameeffy/', 'active'),
(2, 'adeeluxxe', 'adee2001', 'Adeela', 'Hussin', 'Saleh', '2001-07-21', 'Jeddah, KSA', 'Tetuan, Zamboanga City', '7000', 'Female', 'Employed', '09519432051', 'adeelahussin21@gmail.com', 'uploads/Adeela_Hussin/my_profile_picture.jpg', '', '', 'active'),
(3, 'itsfoxxy', 'fox', 'Fox', 'Meow', 'Meow', '2014-11-12', 'Zamboanga City', 'NEWHOUSING PROJECT', '7500', 'Female', 'Unemployed', '09152447803', 'sirifaina@gmail.com', '', '', '', 'active'),
(4, 'Ronald', '12345', 'Ronald', 'Santos', 'Reyes', '1969-01-14', 'Zamboanga City', 'Sta. Maria Zamboanga City', '7000', 'Male', 'Employed', '09953167653', 'ronaldo23@gmail.com', 'uploads/Ronald_Santos/unnamed.jpg', '', '', 'active'),
(5, 'Amina', 'Adjarail', 'Sitti amina', 'Adjarail', 'Mohammad', '1967-04-12', 'Sibutu tawi-tawi', 'Newhousing tubig boh bongao tawi-tawi', '7500', 'Female', 'Employed', '09177230412', 'saminaadjarail@gmail.com', '', '', '', 'active'),
(6, 'millmill', 'Alawi', 'Al-RaisaMill', 'Alawi', 'Mohammad', '2000-11-06', 'Zamboanga City', 'Navarro Zamboanga City', '7000', 'Male', 'Student', '09972552191', 'millmill@gmail.com', 'uploads/Al-RaisaMill_Alawi/371927560_3044070539059462_6334253137394182112_n.jpg', '', '', 'active'),
(7, 'krung', 'Adjarail', 'Ar-krungie', 'Adjarail', 'Mohammad', '2021-12-12', 'Zamboanga City', 'Acacia Drive Baliwasan Zamboanga City', '7000', 'Male', 'Student', '09272552187', 'arkrungie@gmail.com', 'uploads/Ar-krungie_Adjarail/my_profile_picture.jpg', '', '', 'active'),
(8, 'Sameer', 'Amdal', 'Sameer', 'Amdal', 'Ibba', '2002-09-22', 'Zamboanga City', 'Southcom Upper Calarian Zamboanga City', '7000', 'Male', 'Student', '095194035782', 'sameer21@gmail.com', '', '', '', 'active'),
(9, 'Ivan', 'Asri', 'Ivan', 'Asri', 'Lim', '2001-07-31', 'Tandubas Tawi-tawi', 'Upper Cabatangan Zamboanga City', '7000', 'Male', 'Student', '09271052051', 'ivanasri31@gmail.com', 'uploads/Ivan_Asri/370218351_6739198159503243_2174054899511564973_n.jpg', '', '', 'active'),
(10, 'dayang', 'Adjarail', 'Sirifaina', 'Adjarail', 'Mohammad', '2003-10-27', 'Zamboanga City', 'Acacia Drive Baliwasan Zamboanga City', '7000', 'Female', 'Student', '09152447803', 'sirifaina@gmail.com', 'uploads/Sirifaina_Adjarail/370282549_1059587271879965_1039998417736025525_n.jpg', '', '', 'active'),
(11, 'King LeBron', 'James', 'LeBron', 'James', 'King', '1984-11-12', 'Ohio United States', 'Miami City Florida', '33101', 'Male', 'Employed', '12093473121', 'KingLebron@gmail.com', 'uploads/LeBron_James/YFV-4EU-_400x400.jpg', '', '', 'active'),
(12, 'daniel', 'Padillia', 'Daniel', 'Padillia', 'Estrada', '1995-04-26', 'Manila, Philippines', 'Quezon Ave South Triangle, Quezon City Street In Quezon City.', '1102', 'Male', 'Employed', '09953168842', 'danielpadillia@gmail.com', 'uploads/Daniel_Padillia/channels4_profile.jpg', '', '', 'active'),
(13, 'Arif', 'Adjarail', 'Arif', 'Adjarail', 'Tulawie', '1955-04-05', 'Patikul Sulu', 'NEWHOUSING PROJECT', '7500', 'Male', 'Employed', '09972442193', 'arif@gmail.com', 'uploads/Arif_Adjarail/380025688_1360394391518224_4424656051752042183_n.jpg', '', '', 'active'),
(14, 'jordan', 'Poole', 'Jordan', 'Poole', 'Karim', '2023-11-09', 'Miami USA', 'Wizards USA', '1104', 'Male', 'Employed', '09972552191', 'jordanpoole@gmail.com', 'uploads/Jordan_Poole/jordan poole.jpg', '', '', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminstellarfind`
--
ALTER TABLE `adminstellarfind`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `admin_name` (`admin_name`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`report_id`),
  ADD KEY `reported_user_id` (`reported_user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminstellarfind`
--
ALTER TABLE `adminstellarfind`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_ibfk_1` FOREIGN KEY (`reported_user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
