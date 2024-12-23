-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2024 at 10:53 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tester`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `first_name` varchar(10) NOT NULL,
  `last_name` varchar(15) NOT NULL,
  `major` varchar(30) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `username` varchar(255) NOT NULL,
  `city` varchar(50) NOT NULL,
  `u_photo` varchar(255) NOT NULL DEFAULT 'upload/user.png',
  `password` varchar(65) NOT NULL,
  `role` varchar(5) NOT NULL DEFAULT 'admin',
  `active` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `first_name`, `last_name`, `major`, `phone`, `username`, `city`, `u_photo`, `password`, `role`, `active`) VALUES
(19, 'admin@gmail.com', 'mng', 'manig', 'Information technology', '777777777', 'admin', 'any city', 'upload/users/aef3fb7cc094f4feb6b7d3ea6730bd5f1.jpg', '$2y$10$JC.ccaYLzrEdTKbRZhrr4ecR487guWs4RVvhKs07Ear9jMz4AptZC', 'admin', 1),
(20, 'alomawi2m@gmail.com', 'Mohanned', 'Al - Omawi', 'Information technology', '711682613', 'eng_mdit', 'Yemen - Ibb', 'upload/user.png	', '$2y$10$GTl2aKuCdeIm4xaXZRgkQuUxDpEcep3zCZc2/nr5odb9Qv0m2wz4K', 'admin', 0),
(21, 'cord@gmail.com', 'cord', 'cord', 'Information technology', '777777777', 'cord', 'aa', 'upload/user.png	', '$2y$10$QJvZmFdEQ.mLJZEPKISAaO92b0qWgxcytaaoOmVb/kDaoKHEnSiZa', 'cord', 0),
(22, 'emp@gmail.com', 'emp', 'test', 'Information technology', '777777777', 'emp', 'ty', 'upload/user.png	', '$2y$10$jFugFRt63Tl5GvHTs5HS..KVi4RUB91/H7yCVn9oJJ3iVCFAf2Ima', 'emp', 0);

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `asset_id` int(11) NOT NULL,
  `asset_name` varchar(255) NOT NULL,
  `asset_type` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `asset_tag` varchar(50) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `purchase_date` varchar(255) NOT NULL,
  `warranty_expiry` varchar(255) NOT NULL,
  `status_id` int(11) NOT NULL,
  `manufacture_company` varchar(100) NOT NULL,
  `serial_number` int(11) NOT NULL,
  `purchase_cost` float NOT NULL,
  `note` text NOT NULL,
  `photo` varchar(255) NOT NULL,
  `model_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`asset_id`, `asset_name`, `asset_type`, `dept_id`, `emp_id`, `asset_tag`, `vendor_id`, `location_id`, `purchase_date`, `warranty_expiry`, `status_id`, `manufacture_company`, `serial_number`, `purchase_cost`, `note`, `photo`, `model_id`) VALUES
(1, 'laptop_5930', 7, 1, 22, 'any th', 1, 1, '2024-08-21', '2024-08-21', 1, 'Saudi Telecom Company (STC)', 2147483647, 500, '', 'upload/assets/bb2aeac12a199f277ce0b5eb0a861bcdlaptop_PNG5930.png', 2);

-- --------------------------------------------------------

--
-- Table structure for table `assets history`
--

CREATE TABLE `assets history` (
  `history_id` int(11) NOT NULL,
  `asset_id` int(11) NOT NULL,
  `change_type` varchar(50) NOT NULL,
  `change_by` varchar(50) NOT NULL,
  `change_date` varchar(100) NOT NULL,
  `old_val` text NOT NULL,
  `new_val` text NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assets history`
--

INSERT INTO `assets history` (`history_id`, `asset_id`, `change_type`, `change_by`, `change_date`, `old_val`, `new_val`, `note`) VALUES
(1, 1, 'Upgrade', 'Asset Company', '2024-08-16', '1000', '999', 'no thing');

-- --------------------------------------------------------

--
-- Table structure for table `assets type`
--

CREATE TABLE `assets type` (
  `asset_type_id` int(11) NOT NULL,
  `asset_type_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assets type`
--

INSERT INTO `assets type` (`asset_type_id`, `asset_type_name`) VALUES
(1, 'Laptop'),
(2, 'PC'),
(3, 'Keyboard'),
(4, 'Mouse'),
(5, 'Printer'),
(6, 'Router'),
(7, 'Server'),
(8, 'Projecter');

-- --------------------------------------------------------

--
-- Table structure for table `assigment`
--

CREATE TABLE `assigment` (
  `assignment_id` int(11) NOT NULL,
  `asset_id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `assigned_date` varchar(50) NOT NULL,
  `return_date` varchar(50) NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assigment`
--

INSERT INTO `assigment` (`assignment_id`, `asset_id`, `emp_id`, `dept_id`, `location_id`, `assigned_date`, `return_date`, `note`) VALUES
(1, 1, 2, 2, 1, '2024-08-16', '2024-08-16', '');

-- --------------------------------------------------------

--
-- Table structure for table `change_by`
--

CREATE TABLE `change_by` (
  `change_by_id` int(11) NOT NULL,
  `change_by_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `change_by`
--

INSERT INTO `change_by` (`change_by_id`, `change_by_name`) VALUES
(1, 'Asset Company'),
(2, 'Asset Owner'),
(3, 'IT Support'),
(4, 'Maintenance Technicaian'),
(17, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `change_type`
--

CREATE TABLE `change_type` (
  `change_type_id` int(11) NOT NULL,
  `change_type_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `change_type`
--

INSERT INTO `change_type` (`change_type_id`, `change_type_name`) VALUES
(1, 'Upgrade'),
(2, 'Maintenance'),
(3, 'Disposal');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `company_name`) VALUES
(1, 'Saudi Telecom Company (STC)');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `dept_name`) VALUES
(1, 'IT'),
(2, 'Human Resources'),
(3, 'Service Delivery'),
(4, 'Marketing');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `location_id` int(11) NOT NULL,
  `location_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`location_id`, `location_name`) VALUES
(1, '101 - Main office'),
(2, '102 - Warehouse'),
(3, '103 - Storage Room');

-- --------------------------------------------------------

--
-- Table structure for table `maintenancerecords`
--

CREATE TABLE `maintenancerecords` (
  `maintenance_id` int(11) NOT NULL,
  `asset_id` int(11) NOT NULL,
  `maintenance_type_id` int(11) NOT NULL,
  `maintenance_date` varchar(50) NOT NULL,
  `performed_by` varchar(255) NOT NULL,
  `cost` float NOT NULL,
  `note` text NOT NULL,
  `its_mIncident_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `maintenancerecords`
--

INSERT INTO `maintenancerecords` (`maintenance_id`, `asset_id`, `maintenance_type_id`, `maintenance_date`, `performed_by`, `cost`, `note`, `its_mIncident_id`) VALUES
(1, 1, 0, '2024-08-17', 'by', 1000, 'other', '6546543345'),
(2, 1, 1, '2024-08-17', 'by', 76654, 'note', '7866543');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance type`
--

CREATE TABLE `maintenance type` (
  `maintenance_id` int(11) NOT NULL,
  `maintenance_type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `maintenance type`
--

INSERT INTO `maintenance type` (`maintenance_id`, `maintenance_type_name`) VALUES
(1, 'Fixed');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer company`
--

CREATE TABLE `manufacturer company` (
  `ManufacturerID` int(11) NOT NULL,
  `ManufacturerName` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manufacturer company`
--

INSERT INTO `manufacturer company` (`ManufacturerID`, `ManufacturerName`) VALUES
(1, 'HP'),
(2, 'DELL'),
(3, 'SAMSUNG'),
(4, 'ASUS');

-- --------------------------------------------------------

--
-- Table structure for table `models`
--

CREATE TABLE `models` (
  `model_id` int(11) NOT NULL,
  `model_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `models`
--

INSERT INTO `models` (`model_id`, `model_name`) VALUES
(1, 'HP'),
(2, 'Lenovo'),
(3, 'Ciscp'),
(4, 'Stc');

-- --------------------------------------------------------

--
-- Table structure for table `new_requist`
--

CREATE TABLE `new_requist` (
  `new_id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `type_requist` varchar(50) NOT NULL,
  `reason_requist` text NOT NULL,
  `requist_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `status assets`
--

CREATE TABLE `status assets` (
  `status_id` int(11) NOT NULL,
  `status_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status assets`
--

INSERT INTO `status assets` (`status_id`, `status_name`) VALUES
(1, 'Available'),
(2, 'Not Available'),
(3, 'In Maintenance');

-- --------------------------------------------------------

--
-- Table structure for table `user_access`
--

CREATE TABLE `user_access` (
  `emp_id` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `access_level` varchar(255) NOT NULL,
  `access_start_date` varchar(50) NOT NULL,
  `access_end_date` varchar(50) NOT NULL,
  `first_login_date` varchar(50) NOT NULL,
  `last_login_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_access`
--

INSERT INTO `user_access` (`emp_id`, `status`, `dept_id`, `access_level`, `access_start_date`, `access_end_date`, `first_login_date`, `last_login_date`) VALUES
(19, 'inactive', 3, 'Level', '2024-08-17', '2024-08-17', '2024-08-17 21:08:24', '2024:08:18 22:08:26'),
(20, 'active', 1, 'top', '2024-08-17', '2024-08-23', '2024-08-17 22:08:28', '2024-08-17 22:08:28'),
(21, 'active', 1, 'un top', '2024-08-15', '2024-08-14', '2024-08-17 22:08:00', '2024:08:18 22:08:58'),
(22, 'inactive', 1, 'doun', '2024-07-29', '2024-08-17', '2024-08-17 22:08:37', '2024:08:18 22:08:15');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `vendor_id` int(11) NOT NULL,
  `vendor_name` varchar(150) NOT NULL,
  `contact_info` varchar(255) NOT NULL,
  `vendor_note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`vendor_id`, `vendor_name`, `contact_info`, `vendor_note`) VALUES
(1, 'ali salim', '777777777 and other contact info', 'other info');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`asset_id`);

--
-- Indexes for table `assets history`
--
ALTER TABLE `assets history`
  ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `assets type`
--
ALTER TABLE `assets type`
  ADD PRIMARY KEY (`asset_type_id`);

--
-- Indexes for table `assigment`
--
ALTER TABLE `assigment`
  ADD PRIMARY KEY (`assignment_id`);

--
-- Indexes for table `change_by`
--
ALTER TABLE `change_by`
  ADD PRIMARY KEY (`change_by_id`);

--
-- Indexes for table `change_type`
--
ALTER TABLE `change_type`
  ADD PRIMARY KEY (`change_type_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `maintenancerecords`
--
ALTER TABLE `maintenancerecords`
  ADD PRIMARY KEY (`maintenance_id`);

--
-- Indexes for table `maintenance type`
--
ALTER TABLE `maintenance type`
  ADD PRIMARY KEY (`maintenance_id`);

--
-- Indexes for table `manufacturer company`
--
ALTER TABLE `manufacturer company`
  ADD PRIMARY KEY (`ManufacturerID`);

--
-- Indexes for table `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`model_id`);

--
-- Indexes for table `new_requist`
--
ALTER TABLE `new_requist`
  ADD PRIMARY KEY (`new_id`);

--
-- Indexes for table `status assets`
--
ALTER TABLE `status assets`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`vendor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `asset_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `assets history`
--
ALTER TABLE `assets history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assets type`
--
ALTER TABLE `assets type`
  MODIFY `asset_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `assigment`
--
ALTER TABLE `assigment`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `change_by`
--
ALTER TABLE `change_by`
  MODIFY `change_by_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `change_type`
--
ALTER TABLE `change_type`
  MODIFY `change_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `maintenancerecords`
--
ALTER TABLE `maintenancerecords`
  MODIFY `maintenance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `maintenance type`
--
ALTER TABLE `maintenance type`
  MODIFY `maintenance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `manufacturer company`
--
ALTER TABLE `manufacturer company`
  MODIFY `ManufacturerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `models`
--
ALTER TABLE `models`
  MODIFY `model_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `new_requist`
--
ALTER TABLE `new_requist`
  MODIFY `new_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `status assets`
--
ALTER TABLE `status assets`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
