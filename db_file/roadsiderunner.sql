-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2023 at 10:50 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `roadsiderunner`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_booking`
--

CREATE TABLE `accounts_booking` (
  `id` int(11) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lang` varchar(100) NOT NULL,
  `service_type` varchar(15) NOT NULL,
  `service_name` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `email` varchar(50) NOT NULL,
  `vehicle_name` varchar(50) NOT NULL,
  `vehicle_model` varchar(50) NOT NULL,
  `vehicle_image` varchar(100) NOT NULL,
  `note` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  `userprofile_id` bigint(20) NOT NULL,
  `status` varchar(50) NOT NULL,
  `sprovider_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts_booking`
--

INSERT INTO `accounts_booking` (`id`, `lat`, `lang`, `service_type`, `service_name`, `name`, `phone`, `email`, `vehicle_name`, `vehicle_model`, `vehicle_image`, `note`, `user_id`, `userprofile_id`, `status`, `sprovider_id`) VALUES
(1, '23.148715499999998', '75.81168', 'fual_station', 'Diesel Delivery', 'Gulshad Shah', '09988110055', 'gulshad123@gmail.com', 'Swift', 'Dzire', 'photos/Booking/fuel-slide5.jpg', 'please provide fuel fast', 5, 2, 'Deliver_fuel', 1),
(2, '23.148715499999998', '75.81168', 'mechanic', 'Lockout', 'Gulshad Shah', '09988110055', 'gulshad123@gmail.com', 'Swift', 'Dzire', 'photos/Booking/lockout-slide1_tYL3JTx.jpg', 'my car are lockout please help me', 5, 2, 'Completed_service', 2),
(3, '23.14870861530143', '75.81167116680184', 'mechanic', 'Burst-out', 'Gulshad Shah', '09988110055', 'gulshad123@gmail.com', 'Swift', 'Dzire', 'photos/Booking/tow-slide3.jpg', 'my car are stuck out please service that', 5, 2, 'Completed_service', 2),
(5, '23.148500963896662', '75.81210236318074', 'mechanic', 'Tow-Service', 'Gulshad Shah', '09988110055', 'gulshad123@gmail.com', 'Swift', 'Dzire', 'photos/Booking/breakdown-slide2.jpg', 'please help my vehicle are stuck on the road ', 5, 2, 'Completed_service', 2);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_service`
--

CREATE TABLE `accounts_service` (
  `sno` int(11) NOT NULL,
  `services` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts_service`
--

INSERT INTO `accounts_service` (`sno`, `services`) VALUES
(1, 'Lockout'),
(2, 'Burst-out'),
(3, 'Jump Starts'),
(4, 'Tow-Service'),
(5, 'Tire-Service'),
(6, 'Servicing'),
(7, 'Fuel-Delivery'),
(9, 'Diesel Delivery'),
(10, 'Petrol Delivery'),
(11, 'CNG Gas Delivery');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_serviceprovider`
--

CREATE TABLE `accounts_serviceprovider` (
  `id` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `phone` varchar(13) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lang` varchar(100) NOT NULL,
  `service_type` varchar(15) NOT NULL,
  `service_name` longtext NOT NULL,
  `address` longtext NOT NULL,
  `pincode` int(11) NOT NULL,
  `profile` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `userprofile_id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts_serviceprovider`
--

INSERT INTO `accounts_serviceprovider` (`id`, `description`, `phone`, `lat`, `lang`, `service_type`, `service_name`, `address`, `pincode`, `profile`, `user_id`, `userprofile_id`, `name`) VALUES
(1, 'We Can Provide The High Quality of Fuel like: Premium Petrol, Diesel and CNG gas.', '09897969594', '23.175256859978024', '75.7987145774814', 'fual_station', '[\'Fuel-Delivery\']', 'Sethi nagar ujjain', 456010, 'photos/services/fuel-station.png', 7, 4, 'Meenu Fuel Station'),
(2, 'We can Provide all types of vehicle Services like: lockout, jump-start, tow-service etc.', '9108529631', '23.139216801238035', '75.82258008377431', 'mechanic', '[\'Lockout\', \'Burst-out\', \'Jump Starts\', \'Tow-Service\', \'Tire-Service\', \'Servicing\']', 'indira nagar nagziri ujjain', 456010, 'photos/services/machanic-slide1.jpg', 6, 3, 'Nawab Car Clinic');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_userprofile`
--

CREATE TABLE `accounts_userprofile` (
  `id` bigint(20) NOT NULL,
  `city` varchar(50) DEFAULT NULL,
  `phone` varchar(25) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `address` longtext NOT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `profile_picture` varchar(100) NOT NULL,
  `user_type` varchar(15) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts_userprofile`
--

INSERT INTO `accounts_userprofile` (`id`, `city`, `phone`, `gender`, `address`, `postal_code`, `profile_picture`, `user_type`, `user_id`) VALUES
(2, 'ujjain', '09988110055', 'female', '3/2 mahananda nagar ujjain', '456010', 'photos/2023/04/16/large_mascot.png', 'user', 5),
(3, NULL, '9891979020', 'male', '9 Rishi Nagar Ujjain', NULL, 'images/profile.png', 'mechanic', 6),
(4, NULL, '9810234567', 'female', '1/2 Sethi Nagar Ujjain', NULL, 'images/profile.png', 'fual_station', 7);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add user profile', 7, 'add_userprofile'),
(26, 'Can change user profile', 7, 'change_userprofile'),
(27, 'Can delete user profile', 7, 'delete_userprofile'),
(28, 'Can view user profile', 7, 'view_userprofile'),
(29, 'Can add contact', 8, 'add_contact'),
(30, 'Can change contact', 8, 'change_contact'),
(31, 'Can delete contact', 8, 'delete_contact'),
(32, 'Can view contact', 8, 'view_contact'),
(33, 'Can add state', 9, 'add_state'),
(34, 'Can change state', 9, 'change_state'),
(35, 'Can delete state', 9, 'delete_state'),
(36, 'Can view state', 9, 'view_state'),
(37, 'Can add districts', 10, 'add_districts'),
(38, 'Can change districts', 10, 'change_districts'),
(39, 'Can delete districts', 10, 'delete_districts'),
(40, 'Can view districts', 10, 'view_districts'),
(41, 'Can add city', 11, 'add_city'),
(42, 'Can change city', 11, 'change_city'),
(43, 'Can delete city', 11, 'delete_city'),
(44, 'Can view city', 11, 'view_city'),
(45, 'Can add district', 10, 'add_district'),
(46, 'Can change district', 10, 'change_district'),
(47, 'Can delete district', 10, 'delete_district'),
(48, 'Can view district', 10, 'view_district'),
(49, 'Can add service', 12, 'add_service'),
(50, 'Can change service', 12, 'change_service'),
(51, 'Can delete service', 12, 'delete_service'),
(52, 'Can view service', 12, 'view_service'),
(53, 'Can add detailservice', 13, 'add_detailservice'),
(54, 'Can change detailservice', 13, 'change_detailservice'),
(55, 'Can delete detailservice', 13, 'delete_detailservice'),
(56, 'Can view detailservice', 13, 'view_detailservice'),
(57, 'Can add service provider', 13, 'add_serviceprovider'),
(58, 'Can change service provider', 13, 'change_serviceprovider'),
(59, 'Can delete service provider', 13, 'delete_serviceprovider'),
(60, 'Can view service provider', 13, 'view_serviceprovider'),
(61, 'Can add booking', 14, 'add_booking'),
(62, 'Can change booking', 14, 'change_booking'),
(63, 'Can delete booking', 14, 'delete_booking'),
(64, 'Can view booking', 14, 'view_booking'),
(65, 'Can add feedback', 15, 'add_feedback'),
(66, 'Can change feedback', 15, 'change_feedback'),
(67, 'Can delete feedback', 15, 'delete_feedback'),
(68, 'Can view feedback', 15, 'view_feedback'),
(69, 'Can add feedback', 16, 'add_feedback'),
(70, 'Can change feedback', 16, 'change_feedback'),
(71, 'Can delete feedback', 16, 'delete_feedback'),
(72, 'Can view feedback', 16, 'view_feedback');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$F3cME2x0stMXVeJkOQHzKq$2j8zSBcgGKr9rLFov3JE5RlplQWxMYJoshEBzqnImCo=', '2023-04-19 08:32:44.827958', 1, 'admin', '', '', 'admin123@gmail.com', 1, 1, '2023-04-07 10:08:15.108134'),
(5, 'pbkdf2_sha256$390000$OW4NPMS5hlbS9udoFk7pax$iYzbUmiYJhSjoPOkkjI/A7gvelbotZZ8LVS6GG2TBRw=', '2023-04-23 12:38:32.729024', 0, 'zoya123', 'Gulshad', 'Shah', 'gulshad123@gmail.com', 0, 1, '2023-04-10 19:05:50.879100'),
(6, 'pbkdf2_sha256$390000$0Db03ZY2PO1zjEtGDdn6Jk$FYuGqdkkzwp8DMOoW5Mfe82aw/DfSvhwJEGatOw6+n8=', '2023-04-20 08:36:06.168827', 0, 'nawab123', 'Nawab', 'Khan', 'nawab1@gmail.com', 0, 1, '2023-04-11 19:10:47.212892'),
(7, 'pbkdf2_sha256$390000$tFzf3OtOYiO5CJNPCKQXjt$cc9S136BMAs0GUCq3/J1f6pfVKoAWcGQj6p1/HooI38=', '2023-04-16 09:43:05.481416', 0, 'meenu123', 'Meenu', 'Purohit', 'meenu12@gmail.com', 0, 1, '2023-04-11 19:16:51.059749');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client_contact`
--

CREATE TABLE `client_contact` (
  `cid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client_contact`
--

INSERT INTO `client_contact` (`cid`, `name`, `phone`, `email`, `subject`, `message`) VALUES
(1, 'nawab', '9876543210', 'nawab12@gmail.com', 'Testing', 'this is the test message'),
(2, 'kamlesh', '9876543210', 'kamlesh123@gmail.com', 'testing', 'this is testing messages');

-- --------------------------------------------------------

--
-- Table structure for table `client_feedback`
--

CREATE TABLE `client_feedback` (
  `sno` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `message` longtext NOT NULL,
  `rating` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client_feedback`
--

INSERT INTO `client_feedback` (`sno`, `name`, `message`, `rating`, `user_id`) VALUES
(1, 'Gulshad Shah', 'roadsiderunner helped me break-down vehicle. we can come fastly and service my vehicle in the best mechanics. Thank you RoadSide-Runner', 5, 5),
(2, 'Gulshad Shah', 'roadsiderunner helped me for fuel  Delivery on the road. we can come fastly and refuel my vehicle. Thank you RoadSide-Runner.', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-04-10 18:52:57.215778', '2', 'zoya123', 3, '', 4, 1),
(2, '2023-04-10 18:54:48.791428', '3', 'zoya123', 3, '', 4, 1),
(3, '2023-04-10 19:05:16.488755', '4', 'zoya123', 3, '', 4, 1),
(4, '2023-04-11 20:31:50.958744', '1', 'Lockout', 1, '[{\"added\": {}}]', 12, 1),
(5, '2023-04-11 20:32:01.514229', '2', 'Burst-out', 1, '[{\"added\": {}}]', 12, 1),
(6, '2023-04-11 20:32:08.533248', '3', 'Jump Starts', 1, '[{\"added\": {}}]', 12, 1),
(7, '2023-04-11 20:32:19.420281', '4', 'Tow-Service', 1, '[{\"added\": {}}]', 12, 1),
(8, '2023-04-11 20:32:28.231968', '5', 'Tire-Service', 1, '[{\"added\": {}}]', 12, 1),
(9, '2023-04-11 20:32:36.609328', '6', 'Servicing', 1, '[{\"added\": {}}]', 12, 1),
(10, '2023-04-11 20:33:08.812109', '7', 'Fuel-Delivery', 1, '[{\"added\": {}}]', 12, 1),
(11, '2023-04-11 20:33:26.575090', '8', 'Diesel Delivery', 1, '[{\"added\": {}}]', 12, 1),
(12, '2023-04-11 20:33:41.538011', '8', 'Diesel Delivery', 3, '', 12, 1),
(13, '2023-04-12 20:45:43.911879', '2', 'Nawab Car Clinic', 2, '[{\"changed\": {\"fields\": [\"Lat\", \"Lang\"]}}]', 13, 1),
(14, '2023-04-12 21:57:41.301686', '1', 'Meenu Fuel Station', 2, '[{\"changed\": {\"fields\": [\"Lat\", \"Lang\"]}}]', 13, 1),
(15, '2023-04-13 22:35:34.416756', '1', 'Gulshad Shah', 2, '[{\"changed\": {\"fields\": [\"Service type\", \"Status\"]}}]', 14, 1),
(16, '2023-04-14 17:48:34.116114', '1', 'Gulshad Shah', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 14, 1),
(17, '2023-04-14 19:42:19.761458', '1', 'Gulshad Shah', 2, '[{\"changed\": {\"fields\": [\"Sprovider name\", \"Sprovider phone\"]}}]', 14, 1),
(18, '2023-04-14 19:42:47.715712', '1', 'Gulshad Shah', 2, '[{\"changed\": {\"fields\": [\"Sprovider name\"]}}]', 14, 1),
(19, '2023-04-14 19:46:31.277221', '1', 'Gulshad Shah', 2, '[{\"changed\": {\"fields\": [\"Sprovider\"]}}]', 14, 1),
(20, '2023-04-14 20:04:36.479787', '9', 'Diesel Delivery', 1, '[{\"added\": {}}]', 12, 1),
(21, '2023-04-14 20:04:50.387592', '10', 'Petrol Delivery', 1, '[{\"added\": {}}]', 12, 1),
(22, '2023-04-14 20:05:04.171492', '11', 'CNG Gas Delivery', 1, '[{\"added\": {}}]', 12, 1),
(23, '2023-04-14 21:41:56.297555', '2', 'Gulshad Shah - mechanic - Lockout', 2, '[{\"changed\": {\"fields\": [\"Sprovider\"]}}]', 14, 1),
(24, '2023-04-15 09:59:29.671086', '1', 'Gulshad Shah - fual_station - Diesel Delivery', 2, '[{\"changed\": {\"fields\": [\"(STATUS)0=pending, 1 = accepted, 2 = rejected, 3 = completed\"]}}]', 14, 1),
(25, '2023-04-15 09:59:38.125942', '2', 'Gulshad Shah - mechanic - Lockout', 2, '[{\"changed\": {\"fields\": [\"(STATUS)0=pending, 1 = accepted, 2 = rejected, 3 = completed\"]}}]', 14, 1),
(26, '2023-04-15 09:59:55.152335', '3', 'Gulshad Shah - mechanic - Burst-out', 2, '[{\"changed\": {\"fields\": [\"(STATUS)0=pending, 1 = accepted, 2 = rejected, 3 = completed\"]}}]', 14, 1),
(27, '2023-04-15 10:02:34.315790', '1', 'Gulshad Shah - fual_station - Diesel Delivery', 2, '[{\"changed\": {\"fields\": [\"(STATUS)0=pending, 1 = accepted, 2 = rejected, 3 = completed\"]}}]', 14, 1),
(28, '2023-04-15 10:02:41.343950', '2', 'Gulshad Shah - mechanic - Lockout', 2, '[{\"changed\": {\"fields\": [\"(STATUS)0=pending, 1 = accepted, 2 = rejected, 3 = completed\"]}}]', 14, 1),
(29, '2023-04-15 10:02:47.482620', '3', 'Gulshad Shah - mechanic - Burst-out', 2, '[{\"changed\": {\"fields\": [\"(STATUS)0=pending, 1 = accepted, 2 = rejected, 3 = completed\"]}}]', 14, 1),
(30, '2023-04-15 10:10:44.324487', '1', 'Gulshad Shah - fual_station - Diesel Delivery', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 14, 1),
(31, '2023-04-15 10:22:20.151624', '3', 'Gulshad Shah - mechanic - Burst-out', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 14, 1),
(32, '2023-04-15 10:25:27.926592', '2', 'Gulshad Shah - mechanic - Lockout', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 14, 1),
(33, '2023-04-15 20:18:17.220764', '1', 'Gulshad Shah - fual_station - Diesel Delivery', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 14, 1),
(34, '2023-04-16 08:55:55.730970', '2', 'zoya123', 2, '[{\"changed\": {\"fields\": [\"Profile picture\"]}}]', 7, 1),
(35, '2023-04-16 10:12:56.242460', '2', 'Gulshad Shah - mechanic - Lockout', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 14, 1),
(36, '2023-04-16 10:13:03.741119', '3', 'Gulshad Shah - mechanic - Burst-out', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(14, 'accounts', 'booking'),
(11, 'accounts', 'city'),
(10, 'accounts', 'district'),
(15, 'accounts', 'feedback'),
(12, 'accounts', 'service'),
(13, 'accounts', 'serviceprovider'),
(9, 'accounts', 'state'),
(7, 'accounts', 'userprofile'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(8, 'client', 'contact'),
(16, 'client', 'feedback'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-04-06 20:19:45.003553'),
(2, 'auth', '0001_initial', '2023-04-06 20:19:45.315484'),
(3, 'admin', '0001_initial', '2023-04-06 20:19:45.393192'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-04-06 20:19:45.393192'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-04-06 20:19:45.408838'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-04-06 20:19:45.457798'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-04-06 20:19:45.489018'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-04-06 20:19:45.504776'),
(9, 'auth', '0004_alter_user_username_opts', '2023-04-06 20:19:45.504776'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-04-06 20:19:45.533503'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-04-06 20:19:45.536374'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-04-06 20:19:45.536374'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-04-06 20:19:45.552142'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-04-06 20:19:45.567681'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-04-06 20:19:45.582689'),
(16, 'auth', '0011_update_proxy_permissions', '2023-04-06 20:19:45.582689'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-04-06 20:19:45.598363'),
(18, 'sessions', '0001_initial', '2023-04-06 20:19:45.614335'),
(19, 'accounts', '0001_initial', '2023-04-08 22:22:02.173071'),
(20, 'client', '0001_initial', '2023-04-09 11:21:10.225323'),
(21, 'accounts', '0002_alter_userprofile_age_alter_userprofile_city_name_and_more', '2023-04-09 20:05:16.548253'),
(22, 'accounts', '0003_state_rename_city_name_userprofile_city_and_more', '2023-04-09 20:05:16.688861'),
(23, 'accounts', '0004_alter_city_districtid_alter_city_state_id_and_more', '2023-04-09 20:05:17.609321'),
(24, 'accounts', '0005_rename_districts_district', '2023-04-09 20:09:01.587393'),
(25, 'accounts', '0006_rename_districtid_city_district_and_more', '2023-04-09 20:25:58.248232'),
(26, 'accounts', '0007_remove_district_state_alter_userprofile_city_and_more', '2023-04-09 21:17:59.819106'),
(27, 'accounts', '0008_alter_userprofile_profile_picture', '2023-04-09 22:24:47.297860'),
(28, 'accounts', '0009_remove_userprofile_age_alter_userprofile_city_and_more', '2023-04-10 18:58:56.872098'),
(29, 'accounts', '0010_service', '2023-04-11 20:29:04.376481'),
(30, 'accounts', '0011_detailservice', '2023-04-11 21:41:31.647998'),
(31, 'accounts', '0012_detailservice_name', '2023-04-12 10:44:22.390207'),
(32, 'accounts', '0013_alter_detailservice_lang_alter_detailservice_lat', '2023-04-12 20:28:15.407761'),
(33, 'accounts', '0014_rename_detailservice_serviceprovider', '2023-04-13 18:32:58.696149'),
(34, 'accounts', '0015_booking', '2023-04-13 21:37:55.817220'),
(35, 'accounts', '0016_booking_status', '2023-04-13 21:44:20.853968'),
(36, 'accounts', '0017_alter_booking_status', '2023-04-13 21:50:44.906441'),
(37, 'accounts', '0018_alter_booking_status', '2023-04-13 21:52:06.444639'),
(38, 'accounts', '0019_booking_sprovider_name_booking_sprovider_phone_and_more', '2023-04-14 19:30:16.636717'),
(39, 'accounts', '0020_remove_booking_sprovider_name_and_more', '2023-04-14 19:45:52.603848'),
(40, 'accounts', '0021_alter_booking_status', '2023-04-15 09:58:24.031704'),
(41, 'accounts', '0022_alter_booking_status', '2023-04-15 09:59:08.434704'),
(42, 'accounts', '0023_alter_booking_status', '2023-04-15 10:02:15.715727'),
(43, 'accounts', '0024_alter_booking_status', '2023-04-15 10:10:15.010877'),
(44, 'accounts', '0025_alter_booking_status', '2023-04-15 10:18:49.580994'),
(45, 'accounts', '0026_feedback', '2023-04-15 13:01:32.943426'),
(46, 'accounts', '0027_delete_feedback', '2023-04-15 13:04:54.866654'),
(47, 'client', '0002_feedback', '2023-04-15 13:04:54.938362'),
(48, 'accounts', '0028_alter_booking_status', '2023-04-15 20:20:04.503340');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0eabii4vbrshb9uwpvii6zc7zgdjaknr', '.eJxVjEEOwiAQRe_C2hBgoIBL956BDMxUqoYmpV0Z765NutDtf-_9l0i4rTVtnZc0kTgLLU6_W8by4LYDumO7zbLMbV2mLHdFHrTL60z8vBzu30HFXr-1I8NRRwIei4MSrAnZDoBUxqy9Yq-NL560N8AYYlTkQBFAJjZusCjeH-gIN9E:1pnNVl:HWIdQ8Htidgps_yj7ZLPLtGV8LfK9sMoi7VJRw44FHA', '2023-04-28 17:47:01.841698'),
('1rb7zx400y4ft81wfnrgduw8dskmfv51', '.eJxVjEEOwiAQRe_C2hBaKDO6dN8zkIFhpGpoUtqV8e7apAvd_vfef6lA21rC1vISJlYXNajT7xYpPXLdAd-p3mad5rouU9S7og_a9Dhzfl4P9--gUCvfGhOBZcHOYu-ySDQSHZIBbwYySSwSC3kRyA48dBnFuTNZI9yDdVG9P_-ZOHE:1pmfDQ:IqhLxFX5YAkDeBtUub5iGvU1GNZQ9KLweRAss5wjm0k', '2023-04-26 18:29:08.478512'),
('3iczuozzivxz90739gtghtrfxc42voaw', '.eJxVjEEOwiAQRe_C2hBgoIBL956BDMxUqoYmpV0Z765NutDtf-_9l0i4rTVtnZc0kTgLLU6_W8by4LYDumO7zbLMbV2mLHdFHrTL60z8vBzu30HFXr-1I8NRRwIei4MSrAnZDoBUxqy9Yq-NL560N8AYYlTkQBFAJjZusCjeH-gIN9E:1pnbaN:D__UrdrskIBejMQbIAiueSY_7mgLXp-5L_VWlxsC_n0', '2023-04-29 08:48:43.945769'),
('6xlv8pzckrgc6zgo49yhk8jy28g5gbnk', '.eJxVjEEOwiAQRe_C2hBaKDO6dN8zkIFhpGpoUtqV8e7apAvd_vfef6lA21rC1vISJlYXNajT7xYpPXLdAd-p3mad5rouU9S7og_a9Dhzfl4P9--gUCvfGhOBZcHOYu-ySDQSHZIBbwYySSwSC3kRyA48dBnFuTNZI9yDdVG9P_-ZOHE:1plxyh:QIDxI8WIROGIe5iW7N-KTdf6dnWslqQr1P48dcUvfqU', '2023-04-24 20:19:03.581903'),
('7kh2yilbbskxvxtodaohloxaj2n6ah5x', '.eJxVjEEOwiAQRe_C2hBgoIBL956BDMxUqoYmpV0Z765NutDtf-_9l0i4rTVtnZc0kTgLLU6_W8by4LYDumO7zbLMbV2mLHdFHrTL60z8vBzu30HFXr-1I8NRRwIei4MSrAnZDoBUxqy9Yq-NL560N8AYYlTkQBFAJjZusCjeH-gIN9E:1pn1h1:dRFOWG0lLzDTxd_xywvRS908khFBPlMtcRA_d1MyqA4', '2023-04-27 18:29:11.071429'),
('9elhbz0b2783j2h68p46sg72pqnolzn0', '.eJxVjEEOwiAQRe_C2hBgoIBL956BDMxUqoYmpV0Z765NutDtf-_9l0i4rTVtnZc0kTgLLU6_W8by4LYDumO7zbLMbV2mLHdFHrTL60z8vBzu30HFXr-1I8NRRwIei4MSrAnZDoBUxqy9Yq-NL560N8AYYlTkQBFAJjZusCjeH-gIN9E:1plwd5:R-JEoTaIoTYfxHMzg62Jw6z5UN1_yU_yo1LAq-hQuEw', '2023-04-24 18:52:39.531618'),
('bw00psregwbd2pz10nngw1uqs98qpfmu', '.eJxVjEEOwiAQRe_C2hBaKDO6dN8zkIFhpGpoUtqV8e7apAvd_vfef6lA21rC1vISJlYXNajT7xYpPXLdAd-p3mad5rouU9S7og_a9Dhzfl4P9--gUCvfGhOBZcHOYu-ySDQSHZIBbwYySSwSC3kRyA48dBnFuTNZI9yDdVG9P_-ZOHE:1plzLK:VxHubeNTSczWySkhhyWwY5FvwnXqh7DUg-2JED6wzN8', '2023-04-24 21:46:30.627349'),
('epvot00kw38c61ufy6erak6tck3iqgmu', '.eJxVjEEOwiAQRe_C2hBaKDO6dN8zkIFhpGpoUtqV8e7apAvd_vfef6lA21rC1vISJlYXNajT7xYpPXLdAd-p3mad5rouU9S7og_a9Dhzfl4P9--gUCvfGhOBZcHOYu-ySDQSHZIBbwYySSwSC3kRyA48dBnFuTNZI9yDdVG9P_-ZOHE:1pnG1P:yF_2srGHxWuKFr8YpB4K5RawB5AbvKYGBcYU_SmpKEw', '2023-04-28 09:47:11.920166'),
('h7lwdds2m7w40yei1yimkuuk6kd8328k', '.eJxVjEEOwiAQRe_C2hBgoIBL956BDMxUqoYmpV0Z765NutDtf-_9l0i4rTVtnZc0kTgLLU6_W8by4LYDumO7zbLMbV2mLHdFHrTL60z8vBzu30HFXr-1I8NRRwIei4MSrAnZDoBUxqy9Yq-NL560N8AYYlTkQBFAJjZusCjeH-gIN9E:1pnkYu:Q9gKfM-z3_3r2nTSljpDd0P0ZM11BPDMlEwO9x_t7OY', '2023-04-29 18:23:48.929012'),
('h9fltuogkxnaxusvvijipmknto1na76m', '.eJxVjEEOwiAQRe_C2hBgoIBL956BDMxUqoYmpV0Z765NutDtf-_9l0i4rTVtnZc0kTgLLU6_W8by4LYDumO7zbLMbV2mLHdFHrTL60z8vBzu30HFXr-1I8NRRwIei4MSrAnZDoBUxqy9Yq-NL560N8AYYlTkQBFAJjZusCjeH-gIN9E:1plZKT:Sf961vtoGDpW5BfemNQYQ3y0pbGhc_8CY-SJJqD-zLs', '2023-04-23 17:59:53.915175'),
('jv3o727tw6fisboijp8i6ggdn5sms3w3', '.eJxVjEEOwiAQRe_C2hBgoIBL956BDMxUqoYmpV0Z765NutDtf-_9l0i4rTVtnZc0kTgLLU6_W8by4LYDumO7zbLMbV2mLHdFHrTL60z8vBzu30HFXr-1I8NRRwIei4MSrAnZDoBUxqy9Yq-NL560N8AYYlTkQBFAJjZusCjeH-gIN9E:1pldTR:w-dMoR4RugiYgvaf-qJLFfl2AhsLy3pu8M1eoYcInng', '2023-04-23 22:25:25.218867'),
('qfphhu7pj8u426fxdr6wbnoyqdfaumdq', '.eJxVjEEOwiAQRe_C2hBgoIBL956BDMxUqoYmpV0Z765NutDtf-_9l0i4rTVtnZc0kTgLLU6_W8by4LYDumO7zbLMbV2mLHdFHrTL60z8vBzu30HFXr-1I8NRRwIei4MSrAnZDoBUxqy9Yq-NL560N8AYYlTkQBFAJjZusCjeH-gIN9E:1pmX1y:gWTlYmaqPYSSVAtyRg_BQhgghVynLLbs8myrgsTICrU', '2023-04-26 09:44:46.338080'),
('qnw2cz3tgtidcccks5fjqp652w79l4bm', '.eJxVjEEOwiAQRe_C2hBgoIBL956BDMxUqoYmpV0Z765NutDtf-_9l0i4rTVtnZc0kTgLLU6_W8by4LYDumO7zbLMbV2mLHdFHrTL60z8vBzu30HFXr-1I8NRRwIei4MSrAnZDoBUxqy9Yq-NL560N8AYYlTkQBFAJjZusCjeH-gIN9E:1pmKcv:KXXLftKqPmDYHXre5XfF_dI3xRMn5-MqWfzRwDtG8yY', '2023-04-25 20:30:05.830743'),
('saas940q47jw918pxtyquci1ivmerchl', '.eJxVjEEOwiAQRe_C2hBgoIBL956BDMxUqoYmpV0Z765NutDtf-_9l0i4rTVtnZc0kTgLLU6_W8by4LYDumO7zbLMbV2mLHdFHrTL60z8vBzu30HFXr-1I8NRRwIei4MSrAnZDoBUxqy9Yq-NL560N8AYYlTkQBFAJjZusCjeH-gIN9E:1plUh1:_GbS1JS7VOZv5d_-9u_QnqbtG-BuTbJwcT4eKcTUk9g', '2023-04-23 13:02:51.967681'),
('t26gye5xti9i7p5oj2i9cwp7rk5k1nl4', '.eJxVjEEOwiAQRe_C2hBaKDO6dN8zkIFhpGpoUtqV8e7apAvd_vfef6lA21rC1vISJlYXNajT7xYpPXLdAd-p3mad5rouU9S7og_a9Dhzfl4P9--gUCvfGhOBZcHOYu-ySDQSHZIBbwYySSwSC3kRyA48dBnFuTNZI9yDdVG9P_-ZOHE:1pm92I:zzfeBMYuy0qiB1W1SbQF4s-W1MMvMFiYXubIq2bDyJo', '2023-04-25 08:07:30.625089'),
('yu2walvuukytmg5s3j0vgi1d9wan6koh', '.eJxVjEEOwiAQRe_C2hBgoIBL956BDMxUqoYmpV0Z765NutDtf-_9l0i4rTVtnZc0kTgLLU6_W8by4LYDumO7zbLMbV2mLHdFHrTL60z8vBzu30HFXr-1I8NRRwIei4MSrAnZDoBUxqy9Yq-NL560N8AYYlTkQBFAJjZusCjeH-gIN9E:1plGt9:YcteQ8T9djtzT26Um19MJVn5647KkVvbZLRyI6Dzops', '2023-04-22 22:18:27.151096');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_booking`
--
ALTER TABLE `accounts_booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_booking_user_id_2ea98fac_fk_auth_user_id` (`user_id`),
  ADD KEY `accounts_booking_userprofile_id_852ef620_fk_accounts_` (`userprofile_id`),
  ADD KEY `accounts_booking_sprovider_id_779697a4_fk_accounts_` (`sprovider_id`);

--
-- Indexes for table `accounts_service`
--
ALTER TABLE `accounts_service`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `accounts_serviceprovider`
--
ALTER TABLE `accounts_serviceprovider`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_detailservice_user_id_d4ae289b_fk_auth_user_id` (`user_id`),
  ADD KEY `accounts_detailservi_userprofile_id_1cbf0f3a_fk_accounts_` (`userprofile_id`);

--
-- Indexes for table `accounts_userprofile`
--
ALTER TABLE `accounts_userprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `client_contact`
--
ALTER TABLE `client_contact`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `client_feedback`
--
ALTER TABLE `client_feedback`
  ADD PRIMARY KEY (`sno`),
  ADD KEY `client_feedback_user_id_077a7b68_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_booking`
--
ALTER TABLE `accounts_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `accounts_service`
--
ALTER TABLE `accounts_service`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `accounts_serviceprovider`
--
ALTER TABLE `accounts_serviceprovider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `accounts_userprofile`
--
ALTER TABLE `accounts_userprofile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client_contact`
--
ALTER TABLE `client_contact`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `client_feedback`
--
ALTER TABLE `client_feedback`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts_booking`
--
ALTER TABLE `accounts_booking`
  ADD CONSTRAINT `accounts_booking_sprovider_id_779697a4_fk_accounts_` FOREIGN KEY (`sprovider_id`) REFERENCES `accounts_serviceprovider` (`id`),
  ADD CONSTRAINT `accounts_booking_user_id_2ea98fac_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `accounts_booking_userprofile_id_852ef620_fk_accounts_` FOREIGN KEY (`userprofile_id`) REFERENCES `accounts_userprofile` (`id`);

--
-- Constraints for table `accounts_serviceprovider`
--
ALTER TABLE `accounts_serviceprovider`
  ADD CONSTRAINT `accounts_detailservi_userprofile_id_1cbf0f3a_fk_accounts_` FOREIGN KEY (`userprofile_id`) REFERENCES `accounts_userprofile` (`id`),
  ADD CONSTRAINT `accounts_detailservice_user_id_d4ae289b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `accounts_userprofile`
--
ALTER TABLE `accounts_userprofile`
  ADD CONSTRAINT `accounts_userprofile_user_id_92240672_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `client_feedback`
--
ALTER TABLE `client_feedback`
  ADD CONSTRAINT `client_feedback_user_id_077a7b68_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
