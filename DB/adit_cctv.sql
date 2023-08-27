-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2023 at 08:51 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adit_cctv`
--

-- --------------------------------------------------------

--
-- Table structure for table `adjustments`
--

CREATE TABLE `adjustments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `Ref` varchar(192) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `items` double DEFAULT '0',
  `notes` text,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adjustments`
--

INSERT INTO `adjustments` (`id`, `user_id`, `date`, `Ref`, `warehouse_id`, `items`, `notes`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, '2023-05-11', 'AD_1111', 1, 1, NULL, '2023-05-11 12:46:23.000000', '2023-05-11 12:46:23.000000', NULL),
(2, 3, '2023-05-11', 'AD_1112', 1, 1, NULL, '2023-05-11 12:46:44.000000', '2023-05-11 12:46:44.000000', NULL),
(3, 2, '2023-05-11', 'AD_1113', 1, 1, NULL, '2023-05-11 21:54:33.000000', '2023-05-16 05:54:43.000000', '2023-05-16 05:54:43'),
(4, 2, '2023-05-11', 'AD_1114', 1, 1, NULL, '2023-05-11 22:04:35.000000', '2023-05-16 05:54:38.000000', '2023-05-16 05:54:38'),
(5, 2, '2023-05-11', 'AD_1115', 1, 1, NULL, '2023-05-11 22:12:45.000000', '2023-05-16 05:54:34.000000', '2023-05-16 05:54:34');

-- --------------------------------------------------------

--
-- Table structure for table `adjustment_details`
--

CREATE TABLE `adjustment_details` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `adjustment_id` int(11) NOT NULL,
  `product_variant_id` int(11) DEFAULT NULL,
  `quantity` double NOT NULL,
  `type` varchar(192) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adjustment_details`
--

INSERT INTO `adjustment_details` (`id`, `product_id`, `adjustment_id`, `product_variant_id`, `quantity`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, 100, 'add', NULL, NULL),
(2, 2, 2, NULL, 100, 'add', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `clock_in` varchar(191) NOT NULL,
  `clock_in_ip` varchar(45) NOT NULL,
  `clock_out` varchar(191) NOT NULL,
  `clock_out_ip` varchar(191) NOT NULL,
  `clock_in_out` tinyint(1) NOT NULL,
  `depart_early` varchar(191) NOT NULL DEFAULT '00:00',
  `late_time` varchar(191) NOT NULL DEFAULT '00:00',
  `overtime` varchar(191) NOT NULL DEFAULT '00:00',
  `total_work` varchar(191) NOT NULL DEFAULT '00:00',
  `total_rest` varchar(191) NOT NULL DEFAULT '00:00',
  `status` varchar(191) NOT NULL DEFAULT 'present',
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(192) NOT NULL,
  `description` varchar(192) DEFAULT NULL,
  `image` varchar(192) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Infinity', 'Colorcam HD CCTV', '62820390WhatsApp Image 2023-04-24 at 02.48.46.jpg', '2023-05-11 12:23:12.000000', '2023-05-11 12:23:12.000000', NULL),
(2, 'HIK Vision', 'Digital Video Recorder', '63362416WhatsApp Image 2023-04-24 at 02.48.4812.jpg', '2023-05-11 12:25:03.000000', '2023-05-11 12:25:03.000000', NULL),
(3, 'Seagate', 'Skyhawk Penyimpanan Data', '32882931WhatsApp Image 2023-04-24 at 02.48.484.jpg', '2023-05-11 12:27:07.000000', '2023-05-11 12:27:07.000000', NULL),
(4, 'Western Digital', 'HIKVISION Penyimanan Data', '88400696WhatsApp Image 2023-04-24 at 02.48.484.jpg', '2023-05-11 12:29:55.000000', '2023-05-11 12:30:14.000000', NULL),
(5, 'HILook', 'Turbo HD CCTV', '22053391WhatsApp Image 2023-04-24 at 02.48.4822.jpg', '2023-05-11 12:32:07.000000', '2023-05-11 12:32:07.000000', NULL),
(6, 'HS AirPo', 'Pro swict router', '70987016d58759380b853a2bd62738ea4eb0242a.jpg', '2023-05-11 12:35:42.000000', '2023-05-11 12:35:42.000000', NULL),
(7, 'SAMSUNG', 'Monitor', '21972484WhatsApp Image 2023-04-24 at 02.48.4822.jpg', '2023-05-11 22:15:16.000000', '2023-05-11 22:15:16.000000', NULL),
(8, 'ESCAM', 'ONVIF CCTV', '22070533OIP.jpeg', '2023-05-22 06:05:21.000000', '2023-05-22 06:05:21.000000', NULL),
(9, 'HP198', 'Monitor CCTV HP tipe 198', '58213411WhatsApp Image 2023-04-24 at 02.48.4812.jpg', '2023-05-29 10:52:54.000000', '2023-05-29 10:52:54.000000', NULL),
(10, 'DAHUA Tecnology', 'Kamera 2MP', '27540557dahua-cctv-camera.jpg', '2023-06-26 05:35:51.000000', '2023-06-26 05:35:51.000000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `code` varchar(192) NOT NULL,
  `name` varchar(192) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `code`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'KMR', 'Kamera CCTV', '2023-05-11 12:18:24.000000', '2023-05-11 12:18:24.000000', NULL),
(2, 'DVR', 'Digital Video Recorder', '2023-05-11 12:19:06.000000', '2023-05-11 12:19:06.000000', NULL),
(3, 'KBL', 'Kabel CCTV', '2023-05-11 12:19:38.000000', '2023-05-11 12:19:38.000000', NULL),
(4, 'PSP', 'Power Supply', '2023-05-11 12:20:04.000000', '2023-05-11 12:20:04.000000', NULL),
(5, 'KNK', 'Konektor RF', '2023-05-11 12:20:33.000000', '2023-05-11 12:20:33.000000', NULL),
(6, 'STR', 'Storage / Penyimpanan', '2023-05-11 12:21:02.000000', '2023-05-11 12:21:02.000000', NULL),
(7, 'MNT', 'Monitor CCTV', '2023-05-11 12:21:29.000000', '2023-05-11 12:21:29.000000', NULL),
(8, 'RTR', 'Router', '2023-05-11 12:33:27.000000', '2023-05-11 12:33:27.000000', NULL),
(9, 'RJ45', 'Kabel Konektor Tipe RJ 45', '2023-05-29 10:36:06.000000', '2023-06-26 05:58:00.000000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `code` int(11) NOT NULL,
  `email` varchar(192) NOT NULL,
  `country` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `adresse` varchar(191) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `code`, `email`, `country`, `city`, `phone`, `adresse`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'walk-in-customer', 1, 'walk-in-customer@example.com', 'bangladesh', 'dhaka', '123456780', 'N45 , Dhaka', NULL, NULL, NULL),
(2, 'Toni', 2, 'antoni@gmail.com', 'Indonesia', 'Denpasar', '0896768654', 'Jl. Tangkuban Perahu', '2023-05-29 11:51:05.000000', '2023-05-29 11:51:51.000000', '2023-05-29 11:51:51'),
(3, 'Toni', 3, 'antoni@gmailcom', 'Indonesia', 'Denpasar', '082236148006', 'Jln. Tukad Pakerisan', '2023-05-29 11:52:31.000000', '2023-05-29 11:52:31.000000', NULL),
(4, 'Aziz', 4, 'aa@gmail.com', 'Indonesia', 'Praya', '087654980', 'Kopang', '2023-06-26 05:42:09.000000', '2023-06-26 05:42:09.000000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `email`, `phone`, `country`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'CV. CCTV MATARAM STUDIO', 'cvmataramcctv@gmail.com', '083129358242', 'Indonesia', '2023-05-11 11:41:41.000000', '2023-05-11 11:41:41.000000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `code` varchar(192) NOT NULL,
  `name` varchar(192) NOT NULL,
  `symbol` varchar(192) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `code`, `name`, `symbol`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'USD', 'US Dollar', '$', NULL, NULL, NULL),
(2, 'IDR', 'Indonesian Rupiah', 'Rp.', '2023-05-10 17:54:26.000000', '2023-05-10 17:54:26.000000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `department` varchar(191) NOT NULL,
  `company_id` int(11) NOT NULL,
  `department_head` int(11) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department`, `company_id`, `department_head`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Teknisi', 1, NULL, '2023-05-11 11:43:14.000000', '2023-05-11 11:47:00.000000', '2023-05-11 11:47:00'),
(2, 'Sales & Marketing', 1, NULL, '2023-05-11 11:43:59.000000', '2023-05-11 11:46:55.000000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `designation` varchar(192) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `company_id`, `department_id`, `designation`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2, 'Admin Penjualan', '2023-05-11 11:47:50.000000', '2023-05-11 11:47:50.000000', NULL),
(2, 1, 2, 'Teknisi', '2023-05-11 11:48:12.000000', '2023-05-11 11:48:12.000000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `firstname` varchar(192) NOT NULL,
  `lastname` varchar(192) NOT NULL,
  `username` varchar(191) NOT NULL,
  `email` varchar(192) DEFAULT NULL,
  `phone` varchar(192) DEFAULT NULL,
  `country` varchar(192) DEFAULT NULL,
  `city` varchar(192) DEFAULT NULL,
  `province` varchar(192) DEFAULT NULL,
  `zipcode` varchar(192) DEFAULT NULL,
  `address` varchar(192) DEFAULT NULL,
  `gender` varchar(192) NOT NULL,
  `resume` varchar(192) DEFAULT NULL,
  `avatar` varchar(192) DEFAULT 'no_avatar.png',
  `document` varchar(192) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `office_shift_id` int(11) NOT NULL,
  `remaining_leave` tinyint(1) DEFAULT '0',
  `total_leave` tinyint(1) DEFAULT '0',
  `hourly_rate` decimal(10,2) DEFAULT '0.00',
  `basic_salary` decimal(10,2) DEFAULT '0.00',
  `employment_type` varchar(192) DEFAULT 'full_time',
  `leaving_date` date DEFAULT NULL,
  `marital_status` varchar(192) DEFAULT 'single',
  `facebook` varchar(192) DEFAULT NULL,
  `skype` varchar(192) DEFAULT NULL,
  `whatsapp` varchar(192) DEFAULT NULL,
  `twitter` varchar(192) DEFAULT NULL,
  `linkedin` varchar(192) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `firstname`, `lastname`, `username`, `email`, `phone`, `country`, `city`, `province`, `zipcode`, `address`, `gender`, `resume`, `avatar`, `document`, `birth_date`, `joining_date`, `company_id`, `department_id`, `designation_id`, `office_shift_id`, `remaining_leave`, `total_leave`, `hourly_rate`, `basic_salary`, `employment_type`, `leaving_date`, `marital_status`, `facebook`, `skype`, `whatsapp`, `twitter`, `linkedin`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Jekson', 'Sinlae', 'Jekson Sinlae', 'jekmen@gmail.com', '09876543234', 'Indonesia', NULL, NULL, NULL, NULL, 'male', NULL, 'no_avatar.png', NULL, '1994-11-10', '2023-02-01', 1, 2, 1, 1, 12, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-11 12:03:40.000000', '2023-05-11 12:05:51.000000', NULL),
(2, 'Niko', 'Seran', 'Niko Seran', 'niko@gmail.com', '087654345678', 'Indonesia', NULL, NULL, NULL, NULL, 'male', NULL, 'no_avatar.png', NULL, '1992-07-06', '2023-05-01', 1, 2, 2, 1, 12, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-11 12:04:51.000000', '2023-05-11 12:06:02.000000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_accounts`
--

CREATE TABLE `employee_accounts` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `bank_name` varchar(192) NOT NULL,
  `bank_branch` varchar(192) NOT NULL,
  `account_no` varchar(192) NOT NULL,
  `note` text,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employee_experiences`
--

CREATE TABLE `employee_experiences` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `title` varchar(192) NOT NULL,
  `company_name` varchar(192) NOT NULL,
  `location` varchar(192) DEFAULT NULL,
  `employment_type` varchar(192) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `description` text,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `Ref` varchar(192) NOT NULL,
  `user_id` int(11) NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `details` varchar(192) NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `date`, `Ref`, `user_id`, `expense_category_id`, `warehouse_id`, `details`, `amount`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2023-05-11', 'EXP_1111', 2, 2, 1, 'Beban Sewa Gedung / 5 Tahun', 50000000, '2023-05-11 22:37:56.000000', '2023-05-11 22:37:56.000000', NULL),
(2, '2023-05-11', 'EXP_1112', 2, 1, 1, 'Beban Oprasional Depertemen', 15000000, '2023-05-11 22:38:55.000000', '2023-05-11 22:38:55.000000', NULL),
(3, '2023-05-11', 'EXP_1113', 2, 1, 1, 'Pembelian ATK', 200000, '2023-05-11 22:39:34.000000', '2023-05-22 06:29:51.000000', '2023-05-22 06:29:51'),
(4, '2023-05-22', 'EXP_1114', 2, 1, 1, 'Pembelian ATK', 2000000, '2023-05-22 06:30:51.000000', '2023-05-22 06:30:51.000000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(192) NOT NULL,
  `description` text,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `user_id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'Beban Oprasional', NULL, '2023-05-11 22:36:24.000000', '2023-05-11 22:36:24.000000', NULL),
(2, 2, 'Beban Sewa', NULL, '2023-05-11 22:36:47.000000', '2023-05-11 22:36:47.000000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` int(11) NOT NULL,
  `title` varchar(192) NOT NULL,
  `company_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `description` text,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `days` varchar(192) NOT NULL,
  `reason` text,
  `attachment` varchar(192) DEFAULT NULL,
  `half_day` tinyint(1) DEFAULT NULL,
  `status` varchar(192) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` int(11) NOT NULL,
  `title` varchar(192) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leave_types`
--

INSERT INTO `leave_types` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Cuti Tahunan', '2023-05-11 12:07:49.000000', '2023-05-11 12:08:39.000000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_03_08_020247_create_adjustment_details_table', 1),
(2, '2021_03_08_020247_create_adjustments_table', 1),
(3, '2021_03_08_020247_create_brands_table', 1),
(4, '2021_03_08_020247_create_categories_table', 1),
(5, '2021_03_08_020247_create_clients_table', 1),
(6, '2021_03_08_020247_create_currencies_table', 1),
(7, '2021_03_08_020247_create_expense_categories_table', 1),
(8, '2021_03_08_020247_create_expenses_table', 1),
(9, '2021_03_08_020247_create_password_resets_table', 1),
(10, '2021_03_08_020247_create_payment_purchase_returns_table', 1),
(11, '2021_03_08_020247_create_payment_purchases_table', 1),
(12, '2021_03_08_020247_create_payment_sale_returns_table', 1),
(13, '2021_03_08_020247_create_payment_sales_table', 1),
(14, '2021_03_08_020247_create_payment_with_credit_card_table', 1),
(15, '2021_03_08_020247_create_permission_role_table', 1),
(16, '2021_03_08_020247_create_permissions_table', 1),
(17, '2021_03_08_020247_create_product_variants_table', 1),
(18, '2021_03_08_020247_create_product_warehouse_table', 1),
(19, '2021_03_08_020247_create_products_table', 1),
(20, '2021_03_08_020247_create_providers_table', 1),
(21, '2021_03_08_020247_create_purchase_details_table', 1),
(22, '2021_03_08_020247_create_purchase_return_details_table', 1),
(23, '2021_03_08_020247_create_purchase_returns_table', 1),
(24, '2021_03_08_020247_create_purchases_table', 1),
(25, '2021_03_08_020247_create_quotation_details_table', 1),
(26, '2021_03_08_020247_create_quotations_table', 1),
(27, '2021_03_08_020247_create_role_user_table', 1),
(28, '2021_03_08_020247_create_roles_table', 1),
(29, '2021_03_08_020247_create_sale_details_table', 1),
(30, '2021_03_08_020247_create_sale_return_details_table', 1),
(31, '2021_03_08_020247_create_sale_returns_table', 1),
(32, '2021_03_08_020247_create_sales_table', 1),
(33, '2021_03_08_020247_create_serveurs_table', 1),
(34, '2021_03_08_020247_create_settings_table', 1),
(35, '2021_03_08_020247_create_transfer_details_table', 1),
(36, '2021_03_08_020247_create_transfers_table', 1),
(37, '2021_03_08_020247_create_units_table', 1),
(38, '2021_03_08_020247_create_users_table', 1),
(39, '2021_03_08_020247_create_warehouses_table', 1),
(40, '2021_03_08_020248_add_status_to_roles_table', 1),
(41, '2021_03_08_020251_add_foreign_keys_to_adjustment_details_table', 1),
(42, '2021_03_08_020251_add_foreign_keys_to_adjustments_table', 1),
(43, '2021_03_08_020251_add_foreign_keys_to_expense_categories_table', 1),
(44, '2021_03_08_020251_add_foreign_keys_to_expenses_table', 1),
(45, '2021_03_08_020251_add_foreign_keys_to_payment_purchase_returns_table', 1),
(46, '2021_03_08_020251_add_foreign_keys_to_payment_purchases_table', 1),
(47, '2021_03_08_020251_add_foreign_keys_to_payment_sale_returns_table', 1),
(48, '2021_03_08_020251_add_foreign_keys_to_payment_sales_table', 1),
(49, '2021_03_08_020251_add_foreign_keys_to_permission_role_table', 1),
(50, '2021_03_08_020251_add_foreign_keys_to_product_variants_table', 1),
(51, '2021_03_08_020251_add_foreign_keys_to_product_warehouse_table', 1),
(52, '2021_03_08_020251_add_foreign_keys_to_products_table', 1),
(53, '2021_03_08_020251_add_foreign_keys_to_purchase_details_table', 1),
(54, '2021_03_08_020251_add_foreign_keys_to_purchase_return_details_table', 1),
(55, '2021_03_08_020251_add_foreign_keys_to_purchase_returns_table', 1),
(56, '2021_03_08_020251_add_foreign_keys_to_purchases_table', 1),
(57, '2021_03_08_020251_add_foreign_keys_to_quotation_details_table', 1),
(58, '2021_03_08_020251_add_foreign_keys_to_quotations_table', 1),
(59, '2021_03_08_020251_add_foreign_keys_to_role_user_table', 1),
(60, '2021_03_08_020251_add_foreign_keys_to_sale_details_table', 1),
(61, '2021_03_08_020251_add_foreign_keys_to_sale_return_details_table', 1),
(62, '2021_03_08_020251_add_foreign_keys_to_sale_returns_table', 1),
(63, '2021_03_08_020251_add_foreign_keys_to_sales_table', 1),
(64, '2021_03_08_020251_add_foreign_keys_to_settings_table', 1),
(65, '2021_03_08_020251_add_foreign_keys_to_transfer_details_table', 1),
(66, '2021_03_08_020251_add_foreign_keys_to_transfers_table', 1),
(67, '2021_03_08_020251_add_foreign_keys_to_units_table', 1),
(68, '2021_04_11_221536_add_footer_to_settings_table', 1),
(69, '2021_04_30_040505_add_devopped_by_to_settings', 1),
(70, '2021_05_07_140933_add_client_id_to_settings_table', 1),
(71, '2021_05_07_141034_add_warehouse_id_to_settings_table', 1),
(72, '2021_05_07_141303_add_foreign_keys_clients_to_settings', 1),
(73, '2021_07_19_141906_add_sale_unit_id_to_sale_details', 1),
(74, '2021_07_22_013045_add_sale_unit_id_to_quotation_details_table', 1),
(75, '2021_07_22_032512_add_purchase_unit_id_to_purchase_details_table', 1),
(76, '2021_07_22_052330_add_sale_unit_id_to_sale_return_details_table', 1),
(77, '2021_07_22_052447_add_purchase_unit_id_to_purchase_return_details_table', 1),
(78, '2021_07_22_052713_add_purchase_unit_id_to_transfer_details_table', 1),
(79, '2021_07_26_155038_change_cost_column_type_return_details', 1),
(80, '2021_07_30_142441_add_change_to_payment_sales', 1),
(81, '2021_07_31_122946_add_change_to_payment_purchases_table', 1),
(82, '2021_07_31_123105_add_change_to_payment_sale_returns_table', 1),
(83, '2021_07_31_123135_add_change_to_payment_purchase_returns_table', 1),
(84, '2021_09_23_003640_add_default_language_to_settings_table', 1),
(85, '2021_09_24_000547_create_pos_settings', 1),
(86, '2022_02_18_161351_create_attendances_table', 1),
(87, '2022_02_18_161351_create_companies_table', 1),
(88, '2022_02_18_161351_create_departments_table', 1),
(89, '2022_02_18_161351_create_designations_table', 1),
(90, '2022_02_18_161351_create_employee_accounts_table', 1),
(91, '2022_02_18_161351_create_employee_experiences_table', 1),
(92, '2022_02_18_161351_create_employees_table', 1),
(93, '2022_02_18_161351_create_holidays_table', 1),
(94, '2022_02_18_161351_create_leave_types_table', 1),
(95, '2022_02_18_161351_create_leaves_table', 1),
(96, '2022_02_18_161351_create_office_shifts_table', 1),
(97, '2022_02_18_161355_add_foreign_keys_to_attendances_table', 1),
(98, '2022_02_18_161355_add_foreign_keys_to_departments_table', 1),
(99, '2022_02_18_161355_add_foreign_keys_to_designations_table', 1),
(100, '2022_02_18_161355_add_foreign_keys_to_employee_accounts_table', 1),
(101, '2022_02_18_161355_add_foreign_keys_to_employee_experiences_table', 1),
(102, '2022_02_18_161355_add_foreign_keys_to_employees_table', 1),
(103, '2022_02_18_161355_add_foreign_keys_to_holidays_table', 1),
(104, '2022_02_18_161355_add_foreign_keys_to_leaves_table', 1),
(105, '2022_02_18_161355_add_foreign_keys_to_office_shifts_table', 1),
(106, '2022_04_06_155633_create_user_warehouse_table', 1),
(107, '2022_04_06_155635_add_foreign_keys_to_user_warehouse_table', 1),
(108, '2022_04_08_001056_change_type_of_columns__clients__table', 1),
(109, '2022_04_08_002126_change_type_of_columns__providers__table', 1),
(110, '2022_04_26_163039_add_imei_to_product_table', 1),
(111, '2022_04_26_163314_add_imei_number_to_purchase_details', 1),
(112, '2022_04_26_163516_add_imei_number_to_quotation_details', 1),
(113, '2022_04_26_163600_add_imei_number_to_sale_details', 1),
(114, '2022_04_26_163653_add_imei_number_to_sale_return_details', 1),
(115, '2022_04_26_163741_add_imei_number_to_purchase_return_details', 1),
(116, '2022_05_01_005644_add_shipping_status_to_sales', 1),
(117, '2022_05_11_010241_add_is_all_warehouses_to_users', 1),
(118, '2022_05_14_191716_create_shipments_table', 1),
(119, '2022_05_14_191718_add_foreign_keys_to_shipments_table', 1),
(120, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(121, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(122, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(123, '2016_06_01_000004_create_oauth_clients_table', 2),
(124, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `scopes` text,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(191) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Stocky Personal Access Client', 'EiFECdREObPtkagV2B8wOzL44mt8Oew9aRshNvjj', NULL, 'http://localhost', 1, 0, 0, '2023-05-10 17:51:30', '2023-05-10 17:51:30'),
(2, NULL, 'Stocky Password Grant Client', 'pWZy3k5mSBrFTCsR5JlDfbv08D21Va99zeWf0pkG', 'users', 'http://localhost', 0, 1, 0, '2023-05-10 17:51:30', '2023-05-10 17:51:30');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-05-10 17:51:30', '2023-05-10 17:51:30');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `office_shifts`
--

CREATE TABLE `office_shifts` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `monday_in` varchar(191) DEFAULT NULL,
  `monday_out` varchar(191) DEFAULT NULL,
  `tuesday_in` varchar(191) DEFAULT NULL,
  `tuesday_out` varchar(191) DEFAULT NULL,
  `wednesday_in` varchar(191) DEFAULT NULL,
  `wednesday_out` varchar(191) DEFAULT NULL,
  `thursday_in` varchar(191) DEFAULT NULL,
  `thursday_out` varchar(191) DEFAULT NULL,
  `friday_in` varchar(191) DEFAULT NULL,
  `friday_out` varchar(191) DEFAULT NULL,
  `saturday_in` varchar(191) DEFAULT NULL,
  `saturday_out` varchar(191) DEFAULT NULL,
  `sunday_in` varchar(191) DEFAULT NULL,
  `sunday_out` varchar(191) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `office_shifts`
--

INSERT INTO `office_shifts` (`id`, `company_id`, `name`, `monday_in`, `monday_out`, `tuesday_in`, `tuesday_out`, `wednesday_in`, `wednesday_out`, `thursday_in`, `thursday_out`, `friday_in`, `friday_out`, `saturday_in`, `saturday_out`, `sunday_in`, `sunday_out`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Freeline', '09:00AM', '17:00PM', '09:00AM', '17:00PM', '09:00AM', '17:00PM', '09:00AM', '17:00PM', '09:00AM', '17:00PM', '09:00AM', '17:00PM', NULL, NULL, '2023-05-11 12:01:49.000000', '2023-05-11 12:01:49.000000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payment_purchases`
--

CREATE TABLE `payment_purchases` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `Ref` varchar(192) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `montant` double NOT NULL,
  `change` double NOT NULL DEFAULT '0',
  `Reglement` varchar(192) NOT NULL,
  `notes` text,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_purchases`
--

INSERT INTO `payment_purchases` (`id`, `user_id`, `date`, `Ref`, `purchase_id`, `montant`, `change`, `Reglement`, `notes`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, '2023-05-16', 'INV/PR_1111', 4, 30000000, 0, 'Cash', 'Lunas', '2023-05-16 06:06:24.000000', '2023-05-16 06:06:24.000000', NULL),
(2, 2, '2023-05-16', 'INV/PR_1112', 3, 10100000, 0, 'Cash', NULL, '2023-05-16 06:06:59.000000', '2023-05-16 06:06:59.000000', NULL),
(3, 2, '2023-05-16', 'INV/PR_1113', 2, 10100000, 0, 'Cash', NULL, '2023-05-16 06:07:07.000000', '2023-05-16 06:07:07.000000', NULL),
(4, 2, '2023-05-16', 'INV/PR_1114', 5, 2510000, 0, 'Cash', NULL, '2023-05-16 08:16:01.000000', '2023-05-16 08:16:01.000000', NULL),
(5, 2, '2023-05-22', 'INV/PR_1115', 6, 5000000, 0, 'Cash', NULL, '2023-05-22 06:10:47.000000', '2023-05-22 06:10:47.000000', NULL),
(6, 2, '2023-05-22', 'INV/PR_1116', 7, 5000000, 0, 'credit card', NULL, '2023-05-22 06:15:14.000000', '2023-05-22 06:15:14.000000', NULL),
(7, 2, '2023-05-22', 'INV/PR_1117', 8, 9500000000, 0, 'Cash', NULL, '2023-05-22 07:03:21.000000', '2023-05-22 07:03:21.000000', NULL),
(8, 2, '2023-05-22', 'INV/PR_1118', 9, 50000, 0, 'Cash', NULL, '2023-05-22 07:27:35.000000', '2023-05-22 07:27:35.000000', NULL),
(9, 2, '2023-05-23', 'INV/PR_1119', 10, 50000, 0, 'Cash', NULL, '2023-05-22 23:07:41.000000', '2023-05-22 23:07:41.000000', NULL),
(10, 2, '2023-06-26', 'INV/PR_1120', 12, 101000, 0, 'Cash', NULL, '2023-06-26 05:29:39.000000', '2023-06-26 05:29:39.000000', NULL),
(11, 2, '2023-06-26', 'INV/PR_1121', 13, 1300000, 0, 'Cash', NULL, '2023-06-26 05:40:50.000000', '2023-06-26 05:40:50.000000', NULL),
(12, 2, '2023-06-26', 'INV/PR_1122', 14, 1010000, 0, 'Cash', NULL, '2023-06-26 06:37:39.000000', '2023-06-26 06:37:39.000000', NULL),
(13, 2, '2023-06-27', 'INV/PR_1123', 11, 300000, 0, 'Cash', NULL, '2023-06-27 00:12:00.000000', '2023-06-27 00:12:00.000000', NULL),
(14, 2, '2023-06-27', 'INV/PR_1124', 15, 1045000, 0, 'Cash', NULL, '2023-06-27 00:46:27.000000', '2023-06-27 00:46:27.000000', NULL),
(15, 2, '2023-06-27', 'INV/PR_1125', 16, 209000, 91000, 'Cash', NULL, '2023-06-27 00:47:58.000000', '2023-06-27 00:47:58.000000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_purchase_returns`
--

CREATE TABLE `payment_purchase_returns` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `Ref` varchar(192) NOT NULL,
  `purchase_return_id` int(11) NOT NULL,
  `montant` double NOT NULL,
  `change` double NOT NULL DEFAULT '0',
  `Reglement` varchar(191) NOT NULL,
  `notes` text,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_purchase_returns`
--

INSERT INTO `payment_purchase_returns` (`id`, `user_id`, `date`, `Ref`, `purchase_return_id`, `montant`, `change`, `Reglement`, `notes`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, '2023-06-26', 'INV/RT_1111', 1, 500000, 0, 'Cash', 'Lunas', '2023-06-26 06:25:19.000000', '2023-06-26 06:25:19.000000', NULL),
(2, 2, '2023-06-26', 'INV/RT_1112', 2, 390000, 0, 'Cash', 'Lunas', '2023-06-26 06:25:36.000000', '2023-06-26 06:25:36.000000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_sales`
--

CREATE TABLE `payment_sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `Ref` varchar(192) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `montant` double NOT NULL,
  `change` double NOT NULL DEFAULT '0',
  `Reglement` varchar(192) NOT NULL,
  `notes` text,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_sales`
--

INSERT INTO `payment_sales` (`id`, `user_id`, `date`, `Ref`, `sale_id`, `montant`, `change`, `Reglement`, `notes`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, '2023-05-16', 'INV/SL_1111', 12, 754000, 0, 'Cash', NULL, '2023-05-16 06:07:38.000000', '2023-05-16 06:07:38.000000', NULL),
(2, 2, '2023-05-16', 'INV/SL_1112', 13, 350000, 0, 'Cash', NULL, '2023-05-16 08:13:11.000000', '2023-05-16 08:13:11.000000', NULL),
(3, 2, '2023-05-16', 'INV/SL_1113', 14, 754000, 0, 'Cash', NULL, '2023-05-16 11:45:53.000000', '2023-05-16 11:45:53.000000', NULL),
(4, 2, '2023-05-22', 'INV/SL_1114', 15, 202000, 200798000, 'Cash', NULL, '2023-05-22 06:33:25.000000', '2023-05-22 06:33:25.000000', NULL),
(5, 2, '2023-05-22', 'INV/SL_1115', 16, 100000000, 0, 'Cash', NULL, '2023-05-22 07:04:17.000000', '2023-05-22 07:04:17.000000', NULL),
(6, 2, '2023-05-22', 'INV/SL_1116', 17, 6000, 0, 'Cash', NULL, '2023-05-22 07:30:50.000000', '2023-05-22 07:30:50.000000', NULL),
(7, 2, '2023-05-22', 'INV/SL_1117', 18, 12000, 0, 'Cash', 'nego', '2023-05-22 07:31:50.000000', '2023-05-22 07:31:50.000000', NULL),
(8, 2, '2023-05-22', 'INV/SL_1118', 19, 6000, 0, 'Cash', NULL, '2023-05-22 07:32:04.000000', '2023-05-22 07:32:04.000000', NULL),
(9, 2, '2023-05-23', 'INV/SL_1119', 20, 8770000, 0, 'Cash', NULL, '2023-05-22 21:36:16.000000', '2023-05-22 21:36:16.000000', NULL),
(10, 2, '2023-05-23', 'INV/SL_1120', 21, 106254000, 0, 'Cash', NULL, '2023-05-22 22:14:23.000000', '2023-05-22 22:14:23.000000', NULL),
(11, 2, '2023-06-26', 'INV/SL_1121', 23, 902000, 48000, 'Cash', NULL, '2023-06-26 05:49:00.000000', '2023-06-26 05:49:00.000000', NULL),
(12, 2, '2023-06-26', 'INV/SL_1122', 24, 106524000, 0, 'Cash', NULL, '2023-06-26 06:26:50.000000', '2023-06-26 06:26:50.000000', NULL),
(13, 5, '2023-06-27', 'INV/SL_1123', 25, 604000, 0, 'Cash', NULL, '2023-06-26 22:25:35.000000', '2023-06-26 22:25:35.000000', NULL),
(14, 5, '2023-06-27', 'INV/SL_1124', 26, 390000, 0, 'Cash', NULL, '2023-06-26 22:27:06.000000', '2023-06-26 22:27:06.000000', NULL),
(15, 2, '2023-06-27', 'INV/SL_1125', 27, 404000, 0, 'Cash', NULL, '2023-06-27 00:18:27.000000', '2023-06-27 00:18:27.000000', NULL),
(16, 5, '2023-06-27', 'INV/SL_1126', 28, 1120000, 13880000, 'Cash', NULL, '2023-06-27 00:52:28.000000', '2023-06-27 00:52:28.000000', NULL),
(17, 2, '2023-06-28', 'INV/SL_1127', 29, 202000, 18000, 'Cash', NULL, '2023-06-28 04:31:54.000000', '2023-06-28 04:31:54.000000', NULL),
(18, 2, '2023-06-28', 'INV/SL_1128', 30, 190000, 10000, 'Cash', NULL, '2023-06-28 04:56:49.000000', '2023-06-28 04:56:49.000000', NULL),
(19, 2, '2023-07-10', 'INV/SL_1129', 31, 202000, 0, 'Cash', NULL, '2023-07-10 04:04:16.000000', '2023-07-10 04:04:16.000000', NULL),
(20, 3, '2023-07-18', 'INV/SL_1130', 32, 200000000, 0, 'Cash', NULL, '2023-07-17 21:05:37.000000', '2023-07-17 21:05:37.000000', NULL),
(21, 3, '2023-07-18', 'INV/SL_1131', 33, 106664000, 0, 'Cash', NULL, '2023-07-17 21:06:09.000000', '2023-07-17 21:06:09.000000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_sale_returns`
--

CREATE TABLE `payment_sale_returns` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `Ref` varchar(192) NOT NULL,
  `sale_return_id` int(11) NOT NULL,
  `montant` double NOT NULL,
  `change` double NOT NULL DEFAULT '0',
  `Reglement` varchar(191) NOT NULL,
  `notes` text,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_sale_returns`
--

INSERT INTO `payment_sale_returns` (`id`, `user_id`, `date`, `Ref`, `sale_return_id`, `montant`, `change`, `Reglement`, `notes`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, '2023-06-26', 'INV/RT_1111', 2, 202000, 0, 'Cash', 'Lunas', '2023-06-26 06:25:58.000000', '2023-06-26 06:25:58.000000', NULL),
(2, 2, '2023-06-26', 'INV/RT_1112', 3, 360000, 0, 'Cash', NULL, '2023-06-26 06:28:13.000000', '2023-06-26 06:28:13.000000', NULL),
(3, 2, '2023-06-26', 'INV/RT_1113', 4, 202000, 0, 'Cash', NULL, '2023-06-26 06:39:00.000000', '2023-06-26 06:39:00.000000', NULL),
(4, 2, '2023-06-27', 'INV/RT_1114', 5, 202000, 0, 'Cash', NULL, '2023-06-27 00:38:12.000000', '2023-06-27 00:38:12.000000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_credit_card`
--

CREATE TABLE `payment_with_credit_card` (
  `id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_stripe_id` varchar(192) NOT NULL,
  `charge_id` varchar(192) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `name` varchar(192) NOT NULL,
  `label` varchar(192) DEFAULT NULL,
  `description` text,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `label`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'users_view', NULL, NULL, NULL, NULL, NULL),
(2, 'users_edit', NULL, NULL, NULL, NULL, NULL),
(3, 'record_view', NULL, NULL, NULL, NULL, NULL),
(4, 'users_delete', NULL, NULL, NULL, NULL, NULL),
(5, 'users_add', NULL, NULL, NULL, NULL, NULL),
(6, 'permissions_edit', NULL, NULL, NULL, NULL, NULL),
(7, 'permissions_view', NULL, NULL, NULL, NULL, NULL),
(8, 'permissions_delete', NULL, NULL, NULL, NULL, NULL),
(9, 'permissions_add', NULL, NULL, NULL, NULL, NULL),
(10, 'products_delete', NULL, NULL, NULL, NULL, NULL),
(11, 'products_view', NULL, NULL, NULL, NULL, NULL),
(12, 'barcode_view', NULL, NULL, NULL, NULL, NULL),
(13, 'products_edit', NULL, NULL, NULL, NULL, NULL),
(14, 'products_add', NULL, NULL, NULL, NULL, NULL),
(15, 'expense_add', NULL, NULL, NULL, NULL, NULL),
(16, 'expense_delete', NULL, NULL, NULL, NULL, NULL),
(17, 'expense_edit', NULL, NULL, NULL, NULL, NULL),
(18, 'expense_view', NULL, NULL, NULL, NULL, NULL),
(19, 'transfer_delete', NULL, NULL, NULL, NULL, NULL),
(20, 'transfer_add', NULL, NULL, NULL, NULL, NULL),
(21, 'transfer_view', NULL, NULL, NULL, NULL, NULL),
(22, 'transfer_edit', NULL, NULL, NULL, NULL, NULL),
(23, 'adjustment_delete', NULL, NULL, NULL, NULL, NULL),
(24, 'adjustment_add', NULL, NULL, NULL, NULL, NULL),
(25, 'adjustment_edit', NULL, NULL, NULL, NULL, NULL),
(26, 'adjustment_view', NULL, NULL, NULL, NULL, NULL),
(27, 'Sales_edit', NULL, NULL, NULL, NULL, NULL),
(28, 'Sales_view', NULL, NULL, NULL, NULL, NULL),
(29, 'Sales_delete', NULL, NULL, NULL, NULL, NULL),
(30, 'Sales_add', NULL, NULL, NULL, NULL, NULL),
(31, 'Purchases_edit', NULL, NULL, NULL, NULL, NULL),
(32, 'Purchases_view', NULL, NULL, NULL, NULL, NULL),
(33, 'Purchases_delete', NULL, NULL, NULL, NULL, NULL),
(34, 'Purchases_add', NULL, NULL, NULL, NULL, NULL),
(35, 'Quotations_edit', NULL, NULL, NULL, NULL, NULL),
(36, 'Quotations_delete', NULL, NULL, NULL, NULL, NULL),
(37, 'Quotations_add', NULL, NULL, NULL, NULL, NULL),
(38, 'Quotations_view', NULL, NULL, NULL, NULL, NULL),
(39, 'payment_sales_delete', NULL, NULL, NULL, NULL, NULL),
(40, 'payment_sales_add', NULL, NULL, NULL, NULL, NULL),
(41, 'payment_sales_edit', NULL, NULL, NULL, NULL, NULL),
(42, 'payment_sales_view', NULL, NULL, NULL, NULL, NULL),
(43, 'Purchase_Returns_delete', NULL, NULL, NULL, NULL, NULL),
(44, 'Purchase_Returns_add', NULL, NULL, NULL, NULL, NULL),
(45, 'Purchase_Returns_view', NULL, NULL, NULL, NULL, NULL),
(46, 'Purchase_Returns_edit', NULL, NULL, NULL, NULL, NULL),
(47, 'Sale_Returns_delete', NULL, NULL, NULL, NULL, NULL),
(48, 'Sale_Returns_add', NULL, NULL, NULL, NULL, NULL),
(49, 'Sale_Returns_edit', NULL, NULL, NULL, NULL, NULL),
(50, 'Sale_Returns_view', NULL, NULL, NULL, NULL, NULL),
(51, 'payment_purchases_edit', NULL, NULL, NULL, NULL, NULL),
(52, 'payment_purchases_view', NULL, NULL, NULL, NULL, NULL),
(53, 'payment_purchases_delete', NULL, NULL, NULL, NULL, NULL),
(54, 'payment_purchases_add', NULL, NULL, NULL, NULL, NULL),
(55, 'payment_returns_edit', NULL, NULL, NULL, NULL, NULL),
(56, 'payment_returns_view', NULL, NULL, NULL, NULL, NULL),
(57, 'payment_returns_delete', NULL, NULL, NULL, NULL, NULL),
(58, 'payment_returns_add', NULL, NULL, NULL, NULL, NULL),
(59, 'Customers_edit', NULL, NULL, NULL, NULL, NULL),
(60, 'Customers_view', NULL, NULL, NULL, NULL, NULL),
(61, 'Customers_delete', NULL, NULL, NULL, NULL, NULL),
(62, 'Customers_add', NULL, NULL, NULL, NULL, NULL),
(63, 'unit', NULL, NULL, NULL, NULL, NULL),
(64, 'currency', NULL, NULL, NULL, NULL, NULL),
(65, 'category', NULL, NULL, NULL, NULL, NULL),
(66, 'backup', NULL, NULL, NULL, NULL, NULL),
(67, 'warehouse', NULL, NULL, NULL, NULL, NULL),
(68, 'brand', NULL, NULL, NULL, NULL, NULL),
(69, 'setting_system', NULL, NULL, NULL, NULL, NULL),
(70, 'Warehouse_report', NULL, NULL, NULL, NULL, NULL),
(72, 'Reports_quantity_alerts', NULL, NULL, NULL, NULL, NULL),
(73, 'Reports_profit', NULL, NULL, NULL, NULL, NULL),
(74, 'Reports_suppliers', NULL, NULL, NULL, NULL, NULL),
(75, 'Reports_customers', NULL, NULL, NULL, NULL, NULL),
(76, 'Reports_purchase', NULL, NULL, NULL, NULL, NULL),
(77, 'Reports_sales', NULL, NULL, NULL, NULL, NULL),
(78, 'Reports_payments_purchase_Return', NULL, NULL, NULL, NULL, NULL),
(79, 'Reports_payments_Sale_Returns', NULL, NULL, NULL, NULL, NULL),
(80, 'Reports_payments_Purchases', NULL, NULL, NULL, NULL, NULL),
(81, 'Reports_payments_Sales', NULL, NULL, NULL, NULL, NULL),
(82, 'Suppliers_delete', NULL, NULL, NULL, NULL, NULL),
(83, 'Suppliers_add', NULL, NULL, NULL, NULL, NULL),
(84, 'Suppliers_edit', NULL, NULL, NULL, NULL, NULL),
(85, 'Suppliers_view', NULL, NULL, NULL, NULL, NULL),
(86, 'Pos_view', NULL, NULL, NULL, NULL, NULL),
(87, 'product_import', NULL, NULL, NULL, NULL, NULL),
(88, 'customers_import', NULL, NULL, NULL, NULL, NULL),
(89, 'Suppliers_import', NULL, NULL, NULL, NULL, NULL),
(90, 'view_employee', NULL, NULL, NULL, NULL, NULL),
(91, 'add_employee', NULL, NULL, NULL, NULL, NULL),
(92, 'edit_employee', NULL, NULL, NULL, NULL, NULL),
(93, 'delete_employee', NULL, NULL, NULL, NULL, NULL),
(94, 'company', NULL, NULL, NULL, NULL, NULL),
(95, 'department', NULL, NULL, NULL, NULL, NULL),
(96, 'designation', NULL, NULL, NULL, NULL, NULL),
(97, 'office_shift', NULL, NULL, NULL, NULL, NULL),
(98, 'attendance', NULL, NULL, NULL, NULL, NULL),
(99, 'leave', NULL, NULL, NULL, NULL, NULL),
(100, 'holiday', NULL, NULL, NULL, NULL, NULL),
(101, 'Top_products', NULL, NULL, NULL, NULL, NULL),
(102, 'Top_customers', NULL, NULL, NULL, NULL, NULL),
(103, 'shipment', NULL, NULL, NULL, NULL, NULL),
(104, 'users_report', NULL, NULL, NULL, NULL, NULL),
(105, 'stock_report', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`) VALUES
(275, 1, 3),
(276, 2, 3),
(277, 3, 3),
(278, 5, 3),
(279, 4, 3),
(280, 7, 3),
(281, 6, 3),
(282, 9, 3),
(283, 8, 3),
(284, 11, 3),
(285, 13, 3),
(286, 14, 3),
(287, 10, 3),
(288, 87, 3),
(289, 68, 3),
(290, 12, 3),
(291, 65, 3),
(292, 63, 3),
(293, 26, 3),
(294, 25, 3),
(295, 24, 3),
(296, 23, 3),
(297, 21, 3),
(298, 22, 3),
(299, 20, 3),
(300, 19, 3),
(301, 18, 3),
(302, 17, 3),
(303, 15, 3),
(304, 16, 3),
(305, 28, 3),
(306, 27, 3),
(307, 86, 3),
(308, 103, 3),
(309, 29, 3),
(310, 30, 3),
(311, 32, 3),
(312, 31, 3),
(313, 34, 3),
(314, 33, 3),
(315, 38, 3),
(316, 35, 3),
(317, 37, 3),
(318, 36, 3),
(319, 40, 3),
(320, 39, 3),
(321, 42, 3),
(322, 41, 3),
(323, 43, 3),
(324, 44, 3),
(325, 45, 3),
(326, 46, 3),
(327, 47, 3),
(328, 48, 3),
(329, 50, 3),
(330, 49, 3),
(331, 52, 3),
(332, 51, 3),
(333, 53, 3),
(334, 54, 3),
(335, 56, 3),
(336, 55, 3),
(337, 58, 3),
(338, 57, 3),
(339, 60, 3),
(340, 59, 3),
(341, 88, 3),
(342, 62, 3),
(343, 61, 3),
(344, 85, 3),
(345, 84, 3),
(346, 89, 3),
(347, 83, 3),
(348, 82, 3),
(349, 81, 3),
(350, 80, 3),
(351, 79, 3),
(352, 78, 3),
(353, 77, 3),
(354, 76, 3),
(355, 75, 3),
(356, 74, 3),
(357, 73, 3),
(358, 72, 3),
(359, 70, 3),
(360, 101, 3),
(361, 102, 3),
(362, 104, 3),
(363, 105, 3),
(364, 90, 3),
(365, 92, 3),
(366, 94, 3),
(367, 96, 3),
(368, 98, 3),
(369, 100, 3),
(370, 99, 3),
(371, 97, 3),
(372, 95, 3),
(373, 93, 3),
(374, 91, 3),
(375, 64, 3),
(376, 66, 3),
(377, 67, 3),
(378, 69, 3),
(1303, 11, 2),
(1304, 13, 2),
(1305, 12, 2),
(1306, 65, 2),
(1307, 63, 2),
(1308, 68, 2),
(1309, 87, 2),
(1310, 10, 2),
(1311, 14, 2),
(1312, 28, 2),
(1313, 27, 2),
(1314, 86, 2),
(1315, 30, 2),
(1316, 29, 2),
(1317, 32, 2),
(1318, 31, 2),
(1319, 34, 2),
(1320, 33, 2),
(1321, 42, 2),
(1322, 41, 2),
(1323, 40, 2),
(1324, 39, 2),
(1325, 52, 2),
(1326, 51, 2),
(1327, 54, 2),
(1328, 53, 2),
(1329, 56, 2),
(1330, 55, 2),
(1331, 58, 2),
(1332, 57, 2),
(1333, 60, 2),
(1334, 59, 2),
(1335, 88, 2),
(1336, 61, 2),
(1337, 62, 2),
(1338, 85, 2),
(1339, 84, 2),
(1340, 89, 2),
(1341, 82, 2),
(1342, 83, 2),
(1343, 67, 2),
(1344, 81, 2),
(1345, 80, 2),
(1346, 72, 2),
(1347, 105, 2),
(1348, 50, 2),
(1349, 49, 2),
(1350, 48, 2),
(1351, 47, 2),
(1352, 45, 2),
(1353, 46, 2),
(1354, 44, 2),
(1355, 43, 2),
(1356, 28, 4),
(1357, 27, 4),
(1358, 86, 4),
(1359, 103, 4),
(1360, 30, 4),
(1411, 70, 1),
(1412, 72, 1),
(1413, 74, 1),
(1414, 75, 1),
(1415, 76, 1),
(1416, 77, 1),
(1417, 78, 1),
(1418, 79, 1),
(1419, 80, 1),
(1420, 81, 1),
(1421, 101, 1),
(1422, 102, 1),
(1423, 105, 1),
(1424, 3, 1),
(1425, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pos_settings`
--

CREATE TABLE `pos_settings` (
  `id` int(11) NOT NULL,
  `note_customer` varchar(192) NOT NULL DEFAULT 'Thank You For Shopping With Us . Please Come Again',
  `show_note` tinyint(1) NOT NULL DEFAULT '1',
  `show_barcode` tinyint(1) NOT NULL DEFAULT '1',
  `show_discount` tinyint(1) NOT NULL DEFAULT '1',
  `show_customer` tinyint(1) NOT NULL DEFAULT '1',
  `show_email` tinyint(1) NOT NULL DEFAULT '1',
  `show_phone` tinyint(1) NOT NULL DEFAULT '1',
  `show_address` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pos_settings`
--

INSERT INTO `pos_settings` (`id`, `note_customer`, `show_note`, `show_barcode`, `show_discount`, `show_customer`, `show_email`, `show_phone`, `show_address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Thank You For Shopping With Us . Please Come Again', 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `code` varchar(192) NOT NULL,
  `Type_barcode` varchar(192) NOT NULL,
  `name` varchar(192) NOT NULL,
  `cost` double NOT NULL,
  `price` double NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `unit_sale_id` int(11) DEFAULT NULL,
  `unit_purchase_id` int(11) DEFAULT NULL,
  `TaxNet` double DEFAULT '0',
  `tax_method` varchar(192) DEFAULT '1',
  `image` text,
  `note` text,
  `stock_alert` double DEFAULT '0',
  `is_variant` tinyint(1) NOT NULL DEFAULT '0',
  `is_imei` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `code`, `Type_barcode`, `name`, `cost`, `price`, `category_id`, `brand_id`, `unit_id`, `unit_sale_id`, `unit_purchase_id`, `TaxNet`, `tax_method`, `image`, `note`, `stock_alert`, `is_variant`, `is_imei`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'KMR-1', 'CODE39', 'Kamera', 100000, 200000, 1, 1, 1, 1, 1, 1, '1', '88696379WhatsApp Image 2023-04-24 at 02.48.46.jpg', 'CCTV Kamera Pro', 3, 0, 0, 1, '2023-05-11 12:42:57.000000', '2023-05-11 12:43:28.000000', NULL),
(2, 'KMR-2', 'CODE39', 'Kamera', 100000, 200000, 1, 2, 1, 1, 1, 1, '1', '70831962WhatsApp Image 2023-04-24 at 02.48.473.jpg', 'Color FUll CCTV', 3, 0, 0, 1, '2023-05-11 12:44:57.000000', '2023-05-11 12:45:30.000000', NULL),
(3, 'KMR-3', 'CODE39', 'Kamera CCTV HKVISION - Tipe 1', 300000, 350000, 1, 2, 1, 1, 1, 0, '2', '6164178024173395WhatsApp Image 2023-04-24 at 02.48.473.jpg', NULL, 5, 1, 0, 1, '2023-05-11 22:03:08.000000', '2023-05-16 06:00:00.000000', NULL),
(4, 'KMR-05', 'CODE39', 'ESCAM QD420', 500000, 5500000, 1, 8, 1, 1, 1, 0, '2', '53146470321897573595922140999964OIP.jpeg', NULL, 3, 0, 0, 1, '2023-05-22 05:55:46.000000', '2023-05-22 06:05:41.000000', NULL),
(5, 'KMR-06', 'CODE128', 'ESCAM QD', 5500000, 60000000, 1, 8, 1, 1, 1, 0, '2', 'no-image.png', NULL, 3, 0, 0, 1, '2023-05-22 06:13:56.000000', '2023-05-22 06:56:30.000000', '2023-05-22 06:56:30'),
(6, 'MNR-01', 'CODE128', 'SAMSUNG SMT-1931', 950000000, 100000000, 7, 7, 1, 1, 1, 0, '2', '88313399OIP 3.jpeg', NULL, 3, 0, 0, 1, '2023-05-22 06:56:22.000000', '2023-05-22 06:56:45.000000', NULL),
(7, 'kmr', 'CODE128', 'kamera', 477777, 466666, 4, 1, 1, 1, 1, 0, '2', 'no-image.png', NULL, 3, 0, 0, 1, '2023-05-22 07:10:50.000000', '2023-05-22 07:11:21.000000', '2023-05-22 07:11:21'),
(8, 'MHJ', 'CODE128', 'Mahjong', 5000, 6000, 8, 5, 1, 1, 1, 0, '2', '31210136img 01.jpg', NULL, 3, 0, 0, 1, '2023-05-22 07:26:40.000000', '2023-05-22 07:32:47.000000', '2023-05-22 07:32:47'),
(9, 'OLYM', 'CODE128', 'Olympus', 5000, 6000, 8, 5, 1, 1, 1, 0, '2', '21989551IMG 02.jpg', NULL, 3, 0, 0, 1, '2023-05-22 07:29:12.000000', '2023-05-22 07:32:42.000000', '2023-05-22 07:32:42'),
(10, 'KMR-0045', 'CODE128', 'Kamera escam tipe 0023', 250000, 350000, 1, 8, 1, 1, 1, 0, '2', '64983980WhatsApp Image 2023-04-24 at 02.48.473.jpg', NULL, 3, 0, 0, 1, '2023-05-29 09:36:22.000000', '2023-05-29 09:36:22.000000', NULL),
(11, 'KMR - 7', 'CODE128', 'DAHUA HDCVI', 130000, 190000, 1, 10, 1, 1, 1, 0, '2', '59819996dahua-cctv-camera.jpg', NULL, 3, 0, 0, 1, '2023-06-26 05:38:28.000000', '2023-06-26 05:38:52.000000', NULL),
(12, 'KMR - 9', 'CODE128', 'Handcam', 190000, 200000, 1, 8, 1, 1, 1, 0, '1', '83365644dahua-cctv-camera.jpg', NULL, 3, 0, 0, 1, '2023-06-27 00:16:33.000000', '2023-06-27 00:17:01.000000', NULL),
(13, '003', 'CODE128', 'CCTV abc', 190000, 200000, 1, 1, 1, 1, 1, 10, '1', 'no-image.png', NULL, 3, 0, 0, 1, '2023-06-27 00:44:29.000000', '2023-06-27 00:44:29.000000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `name` varchar(192) DEFAULT NULL,
  `qty` decimal(8,2) DEFAULT '0.00',
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `name`, `qty`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'varian warna', '0.00', NULL, '2023-05-16 06:00:00.000000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_warehouse`
--

CREATE TABLE `product_warehouse` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `product_variant_id` int(11) DEFAULT NULL,
  `qte` double NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_warehouse`
--

INSERT INTO `product_warehouse` (`id`, `product_id`, `warehouse_id`, `product_variant_id`, `qte`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, NULL, 97, NULL, '2023-07-17 21:06:09.000000', NULL),
(2, 2, 1, NULL, 91, NULL, '2023-07-17 21:06:09.000000', NULL),
(3, 1, 2, NULL, 0, NULL, '2023-05-11 22:35:37.000000', '2023-05-11 22:35:37'),
(4, 2, 2, NULL, 0, NULL, '2023-05-11 22:35:37.000000', '2023-05-11 22:35:37'),
(5, 3, 1, 1, 92, NULL, '2023-07-17 21:06:09.000000', NULL),
(6, 3, 2, 1, 0, NULL, '2023-05-11 22:35:37.000000', '2023-05-11 22:35:37'),
(7, 4, 1, NULL, 16, NULL, '2023-07-17 21:06:09.000000', NULL),
(8, 5, 1, NULL, 0, NULL, '2023-05-22 06:56:30.000000', '2023-05-22 06:56:30'),
(9, 6, 1, NULL, 4, NULL, '2023-07-17 21:06:09.000000', NULL),
(10, 7, 1, NULL, 0, NULL, '2023-05-22 07:11:21.000000', '2023-05-22 07:11:21'),
(11, 8, 1, NULL, 7, NULL, '2023-05-22 07:32:47.000000', '2023-05-22 07:32:47'),
(12, 9, 1, NULL, 9, NULL, '2023-05-22 07:32:42.000000', '2023-05-22 07:32:42'),
(13, 10, 1, NULL, 0, NULL, NULL, NULL),
(14, 1, 3, NULL, 10, NULL, '2023-06-26 06:37:29.000000', NULL),
(15, 2, 3, NULL, 0, NULL, NULL, NULL),
(16, 3, 3, 1, 0, NULL, NULL, NULL),
(17, 4, 3, NULL, 0, NULL, NULL, NULL),
(18, 6, 3, NULL, 0, NULL, NULL, NULL),
(19, 10, 3, NULL, 0, NULL, NULL, NULL),
(20, 11, 1, NULL, 7, NULL, '2023-07-17 21:06:09.000000', NULL),
(21, 11, 3, NULL, 0, NULL, NULL, NULL),
(22, 12, 1, NULL, 0, NULL, NULL, NULL),
(23, 12, 3, NULL, 0, NULL, NULL, NULL),
(24, 13, 1, NULL, 0, NULL, '2023-07-17 21:06:09.000000', NULL),
(25, 13, 3, NULL, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE `providers` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `code` int(11) NOT NULL,
  `email` varchar(192) NOT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `adresse` varchar(191) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `providers`
--

INSERT INTO `providers` (`id`, `name`, `code`, `email`, `phone`, `country`, `city`, `adresse`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Fiki', 1, 'Fiki@gmail.com', '09876543234', 'Indonesia', 'Praya', 'Kopang', '2023-05-11 22:17:54.000000', '2023-05-11 22:17:54.000000', NULL),
(2, 'PT. Mako CCTV', 2, 'mako@gmail.com', '4650876', 'Singapura', 'Null', 'Null', '2023-05-29 12:03:27.000000', '2023-05-29 12:03:27.000000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `Ref` varchar(192) NOT NULL,
  `date` date NOT NULL,
  `provider_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `tax_rate` double DEFAULT '0',
  `TaxNet` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `shipping` double DEFAULT '0',
  `installation` double DEFAULT '0',
  `GrandTotal` double NOT NULL,
  `paid_amount` double NOT NULL DEFAULT '0',
  `statut` varchar(191) NOT NULL,
  `payment_statut` varchar(192) NOT NULL,
  `notes` text,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `user_id`, `Ref`, `date`, `provider_id`, `warehouse_id`, `tax_rate`, `TaxNet`, `discount`, `shipping`, `installation`, `GrandTotal`, `paid_amount`, `statut`, `payment_statut`, `notes`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'PR_1111', '2023-05-12', 1, 1, 0, 0, 0, 100000, 0, 1514000, 1514000, 'received', 'paid', NULL, '2023-05-12 01:13:49.000000', '2023-05-16 05:50:16.000000', '2023-05-16 05:50:16'),
(2, 2, 'PR_1112', '2023-05-16', 1, 1, 0, 0, 0, 0, 0, 10100000, 10100000, 'received', 'paid', NULL, '2023-05-16 05:58:50.000000', '2023-05-16 06:07:07.000000', NULL),
(3, 2, 'PR_1113', '2023-05-16', 1, 1, 0, 0, 0, 0, 0, 10100000, 10100000, 'received', 'paid', NULL, '2023-05-16 05:59:14.000000', '2023-05-16 06:06:59.000000', NULL),
(4, 2, 'PR_1114', '2023-05-16', 1, 1, 0, 0, 0, 0, 0, 30000000, 30000000, 'received', 'paid', NULL, '2023-05-16 05:59:41.000000', '2023-05-16 06:06:24.000000', NULL),
(5, 2, 'PR_1115', '2023-05-16', 1, 1, 0, 0, 0, 0, 0, 2510000, 2510000, 'received', 'paid', NULL, '2023-05-16 08:15:31.000000', '2023-05-16 08:16:01.000000', NULL),
(6, 2, 'PR_1116', '2023-05-22', 1, 1, 0, 0, 0, 0, 0, 5000000, 5000000, 'received', 'paid', NULL, '2023-05-22 05:59:12.000000', '2023-05-22 06:10:47.000000', NULL),
(7, 2, 'PR_1117', '2023-05-22', 1, 1, 0, 0, 0, 0, 0, 5000000, 5000000, 'received', 'paid', NULL, '2023-05-22 06:14:56.000000', '2023-05-22 06:15:14.000000', NULL),
(8, 2, 'PR_1118', '2023-05-22', 1, 1, 0, 0, 0, 0, 0, 9500000000, 9500000000, 'received', 'paid', NULL, '2023-05-22 07:03:07.000000', '2023-05-22 07:03:21.000000', NULL),
(9, 2, 'PR_1119', '2023-05-22', 1, 1, 0, 0, 0, 0, 0, 50000, 50000, 'received', 'paid', NULL, '2023-05-22 07:27:12.000000', '2023-05-22 07:27:35.000000', NULL),
(10, 2, 'PR_1120', '2023-05-22', 1, 1, 0, 0, 0, 0, 0, 50000, 50000, 'received', 'paid', NULL, '2023-05-22 07:29:37.000000', '2023-05-22 23:07:41.000000', NULL),
(11, 2, 'PR_1121', '2023-05-29', 1, 1, 0, 0, 0, 0, 0, 300000, 300000, 'received', 'paid', NULL, '2023-05-29 06:41:53.000000', '2023-06-27 00:12:00.000000', NULL),
(12, 2, 'PR_1122', '2023-05-29', 1, 1, 0, 0, 0, 0, 0, 101000, 101000, 'received', 'paid', NULL, '2023-05-29 11:12:21.000000', '2023-06-26 05:29:39.000000', NULL),
(13, 2, 'PR_1123', '2023-06-26', 1, 1, 0, 0, 0, 0, 0, 1300000, 1300000, 'received', 'paid', NULL, '2023-06-26 05:40:34.000000', '2023-06-26 05:40:50.000000', NULL),
(14, 2, 'PR_1124', '2023-06-26', 1, 3, 0, 0, 0, 0, 0, 1010000, 1010000, 'received', 'paid', NULL, '2023-06-26 06:37:29.000000', '2023-06-26 06:37:39.000000', NULL),
(15, 2, 'PR_1125', '2023-06-27', 2, 1, 0, 0, 0, 0, 0, 1045000, 1045000, 'received', 'paid', NULL, '2023-06-27 00:46:12.000000', '2023-06-27 00:46:27.000000', NULL),
(16, 2, 'PR_1126', '2023-06-27', 1, 1, 0, 0, 0, 0, 0, 209000, 209000, 'received', 'paid', NULL, '2023-06-27 00:47:15.000000', '2023-06-27 00:47:58.000000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_details`
--

CREATE TABLE `purchase_details` (
  `id` int(11) NOT NULL,
  `cost` double NOT NULL,
  `purchase_unit_id` int(11) DEFAULT NULL,
  `TaxNet` double DEFAULT '0',
  `tax_method` varchar(192) DEFAULT '1',
  `discount` double DEFAULT '0',
  `discount_method` varchar(192) DEFAULT '1',
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_variant_id` int(11) DEFAULT NULL,
  `imei_number` text,
  `total` double NOT NULL,
  `quantity` double NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase_details`
--

INSERT INTO `purchase_details` (`id`, `cost`, `purchase_unit_id`, `TaxNet`, `tax_method`, `discount`, `discount_method`, `purchase_id`, `product_id`, `product_variant_id`, `imei_number`, `total`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 100000, 1, 1, '1', 0, '2', 2, 1, NULL, NULL, 10100000, 100, NULL, NULL),
(2, 100000, 1, 1, '1', 0, '2', 3, 2, NULL, NULL, 10100000, 100, NULL, NULL),
(3, 300000, 1, 0, '2', 0, '2', 4, 3, 1, NULL, 30000000, 100, NULL, NULL),
(4, 100000, 1, 1, '1', 0, '2', 5, 1, NULL, NULL, 505000, 5, NULL, NULL),
(5, 100000, 1, 1, '1', 0, '2', 5, 2, NULL, NULL, 505000, 5, NULL, NULL),
(6, 300000, 1, 0, '2', 0, '2', 5, 3, 1, NULL, 1500000, 5, NULL, NULL),
(7, 500000, 1, 0, '1', 0, '2', 6, 4, NULL, NULL, 5000000, 10, NULL, NULL),
(8, 500000, 1, 0, '2', 0, '2', 7, 4, NULL, NULL, 5000000, 10, NULL, NULL),
(9, 950000000, 1, 0, '2', 0, '2', 8, 6, NULL, NULL, 9500000000, 10, NULL, NULL),
(10, 5000, 1, 0, '2', 0, '2', 9, 8, NULL, NULL, 50000, 10, NULL, '2023-05-22 07:27:28.000000'),
(11, 5000, 1, 0, '2', 0, '2', 10, 9, NULL, NULL, 50000, 10, NULL, NULL),
(12, 300000, 1, 0, '2', 0, '2', 11, 3, 1, NULL, 300000, 1, NULL, NULL),
(13, 100000, 1, 1, '1', 0, '2', 12, 1, NULL, NULL, 101000, 1, NULL, NULL),
(14, 130000, 1, 0, '2', 0, '2', 13, 11, NULL, NULL, 1300000, 10, NULL, NULL),
(15, 100000, 1, 1, '1', 0, '2', 14, 1, NULL, NULL, 1010000, 10, NULL, NULL),
(16, 190000, 1, 10, '1', 0, '2', 15, 13, NULL, NULL, 1045000, 5, NULL, NULL),
(17, 190000, 1, 10, '1', 0, '2', 16, 13, NULL, NULL, 209000, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_returns`
--

CREATE TABLE `purchase_returns` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `Ref` varchar(192) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `tax_rate` double DEFAULT '0',
  `TaxNet` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `shipping` double DEFAULT '0',
  `GrandTotal` double NOT NULL,
  `paid_amount` double NOT NULL DEFAULT '0',
  `payment_statut` varchar(192) NOT NULL,
  `statut` varchar(192) NOT NULL,
  `notes` text,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase_returns`
--

INSERT INTO `purchase_returns` (`id`, `user_id`, `date`, `Ref`, `provider_id`, `warehouse_id`, `tax_rate`, `TaxNet`, `discount`, `shipping`, `GrandTotal`, `paid_amount`, `payment_statut`, `statut`, `notes`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, '2023-05-23', 'RT_1111', 1, 1, 0, 0, 0, 0, 500000, 500000, 'paid', 'completed', NULL, '2023-05-22 21:26:04.000000', '2023-06-26 06:25:19.000000', NULL),
(2, 2, '2023-06-26', 'RT_1112', 2, 1, 0, 0, 0, 90000, 390000, 390000, 'paid', 'completed', 'Rusak', '2023-06-26 06:24:33.000000', '2023-06-26 06:25:36.000000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return_details`
--

CREATE TABLE `purchase_return_details` (
  `id` int(11) NOT NULL,
  `cost` decimal(16,3) NOT NULL,
  `purchase_unit_id` int(11) DEFAULT NULL,
  `TaxNet` double DEFAULT '0',
  `tax_method` varchar(192) DEFAULT '1',
  `discount` double DEFAULT '0',
  `discount_method` varchar(192) DEFAULT '1',
  `total` double NOT NULL,
  `quantity` double NOT NULL,
  `purchase_return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_variant_id` int(11) DEFAULT NULL,
  `imei_number` text,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase_return_details`
--

INSERT INTO `purchase_return_details` (`id`, `cost`, `purchase_unit_id`, `TaxNet`, `tax_method`, `discount`, `discount_method`, `total`, `quantity`, `purchase_return_id`, `product_id`, `product_variant_id`, `imei_number`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '500000.000', 1, 0, '2', 0, '2', 500000, 1, 1, 4, NULL, NULL, NULL, NULL, NULL),
(2, '300000.000', 1, 0, '2', 0, '2', 300000, 1, 2, 3, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `Ref` varchar(192) NOT NULL,
  `client_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `tax_rate` double DEFAULT '0',
  `TaxNet` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `shipping` double DEFAULT '0',
  `GrandTotal` double NOT NULL,
  `statut` varchar(192) NOT NULL,
  `notes` text,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `quotation_details`
--

CREATE TABLE `quotation_details` (
  `id` int(11) NOT NULL,
  `price` double NOT NULL,
  `sale_unit_id` int(11) DEFAULT NULL,
  `TaxNet` double DEFAULT '0',
  `tax_method` varchar(192) DEFAULT '1',
  `discount` double DEFAULT '0',
  `discount_method` varchar(192) DEFAULT '1',
  `total` double NOT NULL,
  `quantity` double NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_variant_id` int(11) DEFAULT NULL,
  `imei_number` text,
  `quotation_id` int(11) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(192) NOT NULL,
  `label` varchar(192) DEFAULT NULL,
  `description` text,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `label`, `description`, `created_at`, `updated_at`, `deleted_at`, `status`) VALUES
(1, 'Owner', 'Owner', 'Pemilik Perusahaan', NULL, '2023-06-26 22:40:17.000000', NULL, 1),
(2, 'Admin', 'Manajer', 'Administrator', '2023-05-10 22:12:26.000000', '2023-06-26 06:20:22.000000', NULL, 0),
(3, 'Programer', 'Programer', 'Back End Developer', '2023-05-11 00:12:27.000000', '2023-05-11 00:12:27.000000', NULL, 0),
(4, 'Karyawan', 'Karyawan', 'Staff Toko Bagian Kasir', '2023-06-26 22:19:30.000000', '2023-06-26 22:19:30.000000', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, '2023-05-10 18:06:52.000000', '2023-05-11 13:13:26.000000'),
(3, 3, 3, '2023-05-10 22:20:13.000000', '2023-05-11 00:13:08.000000'),
(4, 4, 1, '2023-06-26 22:16:33.000000', '2023-06-26 22:16:33.000000'),
(5, 5, 4, '2023-06-26 22:20:36.000000', '2023-06-26 22:20:36.000000');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `Ref` varchar(192) NOT NULL,
  `is_pos` tinyint(1) DEFAULT '0',
  `client_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `tax_rate` double DEFAULT '0',
  `TaxNet` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `shipping` double DEFAULT '0',
  `GrandTotal` double NOT NULL DEFAULT '0',
  `paid_amount` double NOT NULL DEFAULT '0',
  `payment_statut` varchar(192) NOT NULL,
  `statut` varchar(191) NOT NULL,
  `notes` text,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `shipping_status` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `date`, `Ref`, `is_pos`, `client_id`, `warehouse_id`, `tax_rate`, `TaxNet`, `discount`, `shipping`, `GrandTotal`, `paid_amount`, `payment_statut`, `statut`, `notes`, `created_at`, `updated_at`, `deleted_at`, `shipping_status`) VALUES
(1, 3, '2023-05-11', 'SL_1111', 1, 1, 1, 0, 0, 0, 0, 404000, 404000, 'paid', 'completed', NULL, '2023-05-11 12:51:19.000000', '2023-05-16 06:04:14.000000', '2023-05-16 06:04:14', NULL),
(2, 2, '2023-05-11', 'SL_1112', 1, 1, 1, 0, 0, 0, 0, 404000, 404000, 'paid', 'completed', NULL, '2023-05-11 13:14:47.000000', '2023-05-16 05:52:53.000000', '2023-05-16 05:52:53', NULL),
(3, 3, '2023-05-11', 'SL_1113', 1, 1, 1, 0, 0, 0, 0, 202000, 202000, 'paid', 'completed', NULL, '2023-05-11 15:29:58.000000', '2023-05-16 06:04:04.000000', '2023-05-16 06:04:04', NULL),
(4, 2, '2023-05-11', 'SL_1114', 1, 1, 1, 0, 0, 0, 0, 202000, 202000, 'paid', 'completed', NULL, '2023-05-11 15:50:49.000000', '2023-05-16 05:52:47.000000', '2023-05-16 05:52:47', NULL),
(5, 2, '2023-05-11', 'SL_1115', 1, 1, 1, 0, 0, 0, 400000, 804000, 804000, 'paid', 'completed', NULL, '2023-05-11 21:47:27.000000', '2023-05-16 05:52:42.000000', '2023-05-16 05:52:42', NULL),
(6, 2, '2023-05-11', 'SL_1116', 1, 1, 1, 0, 0, 0, 300000, 2050000, 2050000, 'paid', 'completed', NULL, '2023-05-11 22:06:39.000000', '2023-05-16 05:52:37.000000', '2023-05-16 05:52:37', NULL),
(7, 2, '2023-05-11', 'SL_1117', 1, 1, 1, 0, 0, 0, 0, 202000, 202000, 'paid', 'completed', NULL, '2023-05-11 22:41:42.000000', '2023-05-16 05:52:31.000000', '2023-05-16 05:52:31', NULL),
(8, 3, '2023-05-12', 'SL_1118', 1, 1, 1, 0, 0, 0, 0, 202000, 202000, 'paid', 'completed', NULL, '2023-05-12 01:23:54.000000', '2023-05-16 06:03:59.000000', '2023-05-16 06:03:59', NULL),
(9, 2, '2023-05-12', 'SL_1119', 1, 1, 1, 0, 0, 0, 0, 754000, 754000, 'paid', 'completed', NULL, '2023-05-12 09:40:38.000000', '2023-05-16 05:52:25.000000', '2023-05-16 05:52:25', NULL),
(10, 2, '2023-05-15', 'SL_1120', 1, 1, 1, 0, 0, 0, 0, 956000, 956000, 'paid', 'completed', NULL, '2023-05-14 17:32:23.000000', '2023-05-16 05:52:20.000000', '2023-05-16 05:52:20', NULL),
(11, 2, '2023-05-16', 'SL_1121', 1, 1, 1, 0, 0, 0, 0, 552000, 552000, 'paid', 'completed', NULL, '2023-05-16 05:18:34.000000', '2023-05-16 05:52:13.000000', '2023-05-16 05:52:13', NULL),
(12, 2, '2023-05-16', 'SL_1122', 1, 1, 1, 0, 0, 0, 0, 754000, 754000, 'paid', 'completed', NULL, '2023-05-16 06:07:38.000000', '2023-05-16 06:07:38.000000', NULL, NULL),
(13, 2, '2023-05-16', 'SL_1123', 1, 1, 1, 0, 0, 0, 0, 350000, 350000, 'paid', 'completed', NULL, '2023-05-16 08:13:11.000000', '2023-05-16 08:13:11.000000', NULL, NULL),
(14, 2, '2023-05-16', 'SL_1124', 1, 1, 1, 0, 0, 0, 0, 754000, 754000, 'paid', 'completed', NULL, '2023-05-16 11:45:53.000000', '2023-05-16 11:45:53.000000', NULL, NULL),
(15, 2, '2023-05-22', 'SL_1125', 1, 1, 1, 0, 0, 0, 0, 202000, 202000, 'paid', 'completed', NULL, '2023-05-22 06:33:25.000000', '2023-05-22 06:33:25.000000', NULL, NULL),
(16, 2, '2023-05-22', 'SL_1126', 1, 1, 1, 0, 0, 0, 0, 100000000, 100000000, 'paid', 'completed', NULL, '2023-05-22 07:04:17.000000', '2023-05-22 07:04:17.000000', NULL, NULL),
(17, 2, '2023-05-22', 'SL_1127', 1, 1, 1, 0, 0, 0, 0, 6000, 6000, 'paid', 'completed', NULL, '2023-05-22 07:30:50.000000', '2023-05-22 07:30:50.000000', NULL, NULL),
(18, 2, '2023-05-22', 'SL_1128', 1, 1, 1, 0, 0, 0, 0, 12000, 12000, 'paid', 'completed', NULL, '2023-05-22 07:31:50.000000', '2023-05-22 07:31:50.000000', NULL, NULL),
(19, 2, '2023-05-22', 'SL_1129', 1, 1, 1, 0, 0, 0, 0, 6000, 6000, 'paid', 'completed', NULL, '2023-05-22 07:32:04.000000', '2023-05-22 07:32:04.000000', NULL, NULL),
(20, 2, '2023-05-23', 'SL_1130', 1, 1, 1, 0, 0, 0, 5000000, 8770000, 8770000, 'paid', 'completed', NULL, '2023-05-22 21:36:16.000000', '2023-05-22 21:36:16.000000', NULL, NULL),
(21, 2, '2023-05-23', 'SL_1131', 1, 1, 1, 0, 0, 0, 0, 106254000, 106254000, 'paid', 'completed', NULL, '2023-05-22 22:14:23.000000', '2023-05-22 22:14:23.000000', NULL, NULL),
(22, 2, '2023-05-29', 'SL_1132', 0, 1, 1, 0, 0, 0, 0, 202000, 0, 'unpaid', 'completed', NULL, '2023-05-29 11:34:17.000000', '2023-05-29 11:34:17.000000', NULL, NULL),
(23, 2, '2023-06-26', 'SL_1133', 1, 1, 1, 0, 0, 0, 0, 902000, 902000, 'paid', 'completed', NULL, '2023-06-26 05:49:00.000000', '2023-06-26 05:49:00.000000', NULL, NULL),
(24, 2, '2023-06-26', 'SL_1134', 1, 1, 1, 0, 0, 0, 80000, 106524000, 106524000, 'paid', 'completed', NULL, '2023-06-26 06:26:50.000000', '2023-06-26 06:26:50.000000', NULL, NULL),
(25, 5, '2023-06-27', 'SL_1135', 1, 1, 1, 0, 0, 0, 200000, 604000, 604000, 'paid', 'completed', NULL, '2023-06-26 22:25:35.000000', '2023-06-26 22:26:37.000000', NULL, 'delivered'),
(26, 5, '2023-06-27', 'SL_1136', 1, 1, 1, 0, 0, 0, 40000, 390000, 390000, 'paid', 'completed', NULL, '2023-06-26 22:27:06.000000', '2023-06-26 22:28:04.000000', NULL, 'delivered'),
(27, 2, '2023-06-27', 'SL_1137', 1, 1, 1, 0, 0, 0, 0, 404000, 404000, 'paid', 'completed', NULL, '2023-06-27 00:18:27.000000', '2023-06-27 00:18:27.000000', NULL, NULL),
(28, 5, '2023-06-27', 'SL_1138', 1, 1, 1, 0, 0, 0, 20000, 1120000, 1120000, 'paid', 'completed', NULL, '2023-06-27 00:52:28.000000', '2023-06-27 00:52:28.000000', NULL, NULL),
(29, 2, '2023-06-28', 'SL_1139', 1, 1, 1, 0, 0, 0, 0, 202000, 202000, 'paid', 'completed', NULL, '2023-06-28 04:31:54.000000', '2023-06-28 04:31:54.000000', NULL, NULL),
(30, 2, '2023-06-28', 'SL_1140', 1, 1, 1, 0, 0, 0, 0, 190000, 190000, 'paid', 'completed', NULL, '2023-06-28 04:56:49.000000', '2023-06-28 04:56:49.000000', NULL, NULL),
(31, 2, '2023-07-10', 'SL_1141', 1, 1, 1, 0, 0, 0, 0, 404000, 202000, 'partial', 'completed', NULL, '2023-07-10 04:04:16.000000', '2023-07-11 11:33:31.000000', NULL, NULL),
(32, 3, '2023-07-18', 'SL_1142', 1, 1, 1, 0, 0, 0, 0, 200000000, 200000000, 'paid', 'completed', NULL, '2023-07-17 21:05:37.000000', '2023-07-17 21:05:37.000000', NULL, NULL),
(33, 3, '2023-07-18', 'SL_1143', 1, 1, 1, 0, 0, 0, 0, 106664000, 106664000, 'paid', 'completed', NULL, '2023-07-17 21:06:09.000000', '2023-07-17 21:06:09.000000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sale_details`
--

CREATE TABLE `sale_details` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_variant_id` int(11) DEFAULT NULL,
  `imei_number` text,
  `price` double NOT NULL,
  `sale_unit_id` int(11) DEFAULT NULL,
  `TaxNet` double DEFAULT NULL,
  `tax_method` varchar(192) DEFAULT '1',
  `discount` double DEFAULT NULL,
  `discount_method` varchar(192) DEFAULT '1',
  `total` double NOT NULL,
  `quantity` double NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sale_details`
--

INSERT INTO `sale_details` (`id`, `date`, `sale_id`, `product_id`, `product_variant_id`, `imei_number`, `price`, `sale_unit_id`, `TaxNet`, `tax_method`, `discount`, `discount_method`, `total`, `quantity`, `created_at`, `updated_at`) VALUES
(19, '2023-05-16', 12, 1, NULL, NULL, 200000, 1, 1, '1', 0, '2', 202000, 1, NULL, NULL),
(20, '2023-05-16', 12, 2, NULL, NULL, 200000, 1, 1, '1', 0, '2', 202000, 1, NULL, NULL),
(21, '2023-05-16', 12, 3, 1, NULL, 350000, 1, 0, '2', 0, '2', 350000, 1, NULL, NULL),
(22, '2023-05-16', 13, 3, 1, NULL, 350000, 1, 0, '2', 0, '2', 350000, 1, NULL, NULL),
(23, '2023-05-16', 14, 1, NULL, NULL, 200000, 1, 1, '1', 0, '2', 202000, 1, NULL, NULL),
(24, '2023-05-16', 14, 2, NULL, NULL, 200000, 1, 1, '1', 0, '2', 202000, 1, NULL, NULL),
(25, '2023-05-16', 14, 3, 1, NULL, 350000, 1, 0, '2', 0, '2', 350000, 1, NULL, NULL),
(26, '2023-05-22', 15, 1, NULL, NULL, 200000, 1, 1, '1', 0, '2', 202000, 1, NULL, NULL),
(27, '2023-05-22', 16, 6, NULL, NULL, 100000000, 1, 0, '2', 0, '2', 100000000, 1, NULL, NULL),
(28, '2023-05-22', 17, 8, NULL, NULL, 6000, 1, 0, '2', 0, '2', 6000, 1, NULL, NULL),
(29, '2023-05-22', 18, 8, NULL, NULL, 6000, 1, 0, '2', 0, '2', 12000, 2, NULL, NULL),
(30, '2023-05-22', 19, 9, NULL, NULL, 6000, 1, 0, '2', 0, '2', 6000, 1, NULL, NULL),
(31, '2023-05-23', 20, 1, NULL, NULL, 200000, 1, 1, '1', 0, '2', 1010000, 5, NULL, NULL),
(32, '2023-05-23', 20, 2, NULL, NULL, 200000, 1, 1, '1', 0, '2', 1010000, 5, NULL, NULL),
(33, '2023-05-23', 20, 3, 1, NULL, 350000, 1, 0, '2', 0, '2', 1750000, 5, NULL, NULL),
(34, '2023-05-23', 21, 1, NULL, NULL, 200000, 1, 1, '1', 0, '2', 202000, 1, NULL, NULL),
(35, '2023-05-23', 21, 2, NULL, NULL, 200000, 1, 1, '1', 0, '2', 202000, 1, NULL, NULL),
(36, '2023-05-23', 21, 3, 1, NULL, 350000, 1, 0, '2', 0, '2', 350000, 1, NULL, NULL),
(37, '2023-05-23', 21, 4, NULL, NULL, 5500000, 1, 0, '2', 0, '2', 5500000, 1, NULL, NULL),
(38, '2023-05-23', 21, 6, NULL, NULL, 100000000, 1, 0, '2', 0, '2', 100000000, 1, NULL, NULL),
(39, '2023-05-29', 22, 2, NULL, NULL, 200000, 1, 1, '1', 0, '2', 202000, 1, NULL, NULL),
(40, '2023-06-26', 23, 3, 1, NULL, 350000, 1, 0, '2', 0, '2', 700000, 2, NULL, NULL),
(41, '2023-06-26', 23, 2, NULL, NULL, 200000, 1, 1, '1', 0, '2', 202000, 1, NULL, NULL),
(42, '2023-06-26', 24, 1, NULL, NULL, 200000, 1, 1, '1', 0, '2', 202000, 1, NULL, NULL),
(43, '2023-06-26', 24, 2, NULL, NULL, 200000, 1, 1, '1', 0, '2', 202000, 1, NULL, NULL),
(44, '2023-06-26', 24, 3, 1, NULL, 350000, 1, 0, '2', 0, '2', 350000, 1, NULL, NULL),
(45, '2023-06-26', 24, 4, NULL, NULL, 5500000, 1, 0, '2', 0, '2', 5500000, 1, NULL, NULL),
(46, '2023-06-26', 24, 6, NULL, NULL, 100000000, 1, 0, '2', 0, '2', 100000000, 1, NULL, NULL),
(47, '2023-06-26', 24, 11, NULL, NULL, 190000, 1, 0, '2', 0, '2', 190000, 1, NULL, NULL),
(48, '2023-06-27', 25, 1, NULL, NULL, 200000, 1, 1, '1', 0, '2', 202000, 1, NULL, NULL),
(49, '2023-06-27', 25, 2, NULL, NULL, 200000, 1, 1, '1', 0, '2', 202000, 1, NULL, NULL),
(50, '2023-06-27', 26, 3, 1, NULL, 350000, 1, 0, '2', 0, '2', 350000, 1, NULL, NULL),
(51, '2023-06-27', 27, 1, NULL, NULL, 200000, 1, 1, '1', 0, '2', 202000, 1, NULL, NULL),
(52, '2023-06-27', 27, 2, NULL, NULL, 200000, 1, 1, '1', 0, '2', 202000, 1, NULL, NULL),
(53, '2023-06-27', 28, 13, NULL, NULL, 200000, 1, 10, '1', 0, '2', 1100000, 5, NULL, NULL),
(54, '2023-06-28', 29, 1, NULL, NULL, 200000, 1, 1, '1', 0, '2', 202000, 1, NULL, NULL),
(55, '2023-06-28', 30, 11, NULL, NULL, 190000, 1, 0, '2', 0, '2', 190000, 1, NULL, NULL),
(56, '2023-07-10', 31, 2, NULL, NULL, 200000, 1, 1, '1', 0, '2', 404000, 2, NULL, '2023-07-11 11:33:31.000000'),
(57, '2023-07-18', 32, 6, NULL, NULL, 100000000, 1, 0, '2', 0, '2', 200000000, 2, NULL, NULL),
(58, '2023-07-18', 33, 1, NULL, NULL, 200000, 1, 1, '1', 0, '2', 202000, 1, NULL, NULL),
(59, '2023-07-18', 33, 2, NULL, NULL, 200000, 1, 1, '1', 0, '2', 202000, 1, NULL, NULL),
(60, '2023-07-18', 33, 3, 1, NULL, 350000, 1, 0, '2', 0, '2', 350000, 1, NULL, NULL),
(61, '2023-07-18', 33, 4, NULL, NULL, 5500000, 1, 0, '2', 0, '2', 5500000, 1, NULL, NULL),
(62, '2023-07-18', 33, 13, NULL, NULL, 200000, 1, 10, '1', 0, '2', 220000, 1, NULL, NULL),
(63, '2023-07-18', 33, 11, NULL, NULL, 190000, 1, 0, '2', 0, '2', 190000, 1, NULL, NULL),
(64, '2023-07-18', 33, 6, NULL, NULL, 100000000, 1, 0, '2', 0, '2', 100000000, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sale_returns`
--

CREATE TABLE `sale_returns` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `Ref` varchar(192) NOT NULL,
  `client_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `tax_rate` double DEFAULT '0',
  `TaxNet` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `shipping` double DEFAULT '0',
  `GrandTotal` double NOT NULL,
  `paid_amount` double NOT NULL DEFAULT '0',
  `payment_statut` varchar(192) NOT NULL,
  `statut` varchar(192) NOT NULL,
  `notes` text,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sale_returns`
--

INSERT INTO `sale_returns` (`id`, `user_id`, `date`, `Ref`, `client_id`, `warehouse_id`, `tax_rate`, `TaxNet`, `discount`, `shipping`, `GrandTotal`, `paid_amount`, `payment_statut`, `statut`, `notes`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, '2023-05-11', 'RT_1111', 1, 1, 0, 0, 0, 20000, 222000, 222000, 'paid', 'pending', 'Barang pecah', '2023-05-11 22:23:30.000000', '2023-05-16 05:51:05.000000', '2023-05-16 05:51:05'),
(2, 2, '2023-05-23', 'RT_1112', 1, 1, 0, 0, 0, 0, 202000, 202000, 'paid', 'received', NULL, '2023-05-22 21:38:19.000000', '2023-06-26 06:25:58.000000', NULL),
(3, 2, '2023-06-26', 'RT_1113', 1, 1, 0, 0, 0, 10000, 360000, 360000, 'paid', 'received', 'Rusak', '2023-06-26 06:28:04.000000', '2023-06-26 06:28:13.000000', NULL),
(4, 2, '2023-06-26', 'RT_1114', 1, 1, 0, 0, 0, 0, 202000, 202000, 'paid', 'received', NULL, '2023-06-26 06:38:49.000000', '2023-06-26 06:39:00.000000', NULL),
(5, 2, '2023-06-27', 'RT_1115', 1, 1, 0, 0, 0, 0, 202000, 202000, 'paid', 'received', NULL, '2023-06-27 00:32:29.000000', '2023-06-27 00:38:12.000000', NULL),
(6, 3, '2023-07-11', 'RT_1116', 1, 1, 0, 0, 0, 0, 202000, 0, 'unpaid', 'pending', NULL, '2023-07-11 11:49:55.000000', '2023-07-11 11:49:55.000000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sale_return_details`
--

CREATE TABLE `sale_return_details` (
  `id` int(11) NOT NULL,
  `sale_return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` double NOT NULL,
  `sale_unit_id` int(11) DEFAULT NULL,
  `TaxNet` double DEFAULT '0',
  `tax_method` varchar(192) DEFAULT '1',
  `discount` double DEFAULT '0',
  `discount_method` varchar(192) DEFAULT '1',
  `product_variant_id` int(11) DEFAULT NULL,
  `imei_number` text,
  `quantity` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sale_return_details`
--

INSERT INTO `sale_return_details` (`id`, `sale_return_id`, `product_id`, `price`, `sale_unit_id`, `TaxNet`, `tax_method`, `discount`, `discount_method`, `product_variant_id`, `imei_number`, `quantity`, `total`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 200000, 1, 1, '1', 0, '2', NULL, NULL, 1, 202000, NULL, NULL),
(2, 3, 3, 350000, 1, 0, '2', 0, '2', 1, NULL, 1, 350000, NULL, NULL),
(3, 4, 1, 200000, 1, 1, '1', 0, '2', NULL, NULL, 1, 202000, NULL, NULL),
(4, 5, 1, 200000, 1, 1, '1', 0, '2', NULL, NULL, 1, 202000, NULL, NULL),
(5, 6, 1, 200000, 1, 1, '1', 0, '2', NULL, NULL, 1, 202000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `servers`
--

CREATE TABLE `servers` (
  `id` int(11) NOT NULL,
  `host` varchar(191) NOT NULL,
  `port` int(11) NOT NULL,
  `username` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `encryption` varchar(191) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `servers`
--

INSERT INTO `servers` (`id`, `host`, `port`, `username`, `password`, `encryption`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'mailtrap.io', 2525, 'test', 'test', 'tls', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `email` varchar(191) NOT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `CompanyName` varchar(191) NOT NULL,
  `CompanyPhone` varchar(191) NOT NULL,
  `CompanyAdress` varchar(191) NOT NULL,
  `logo` varchar(191) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `footer` varchar(192) NOT NULL DEFAULT 'Stocky - Ultimate Inventory With POS',
  `developed_by` varchar(192) NOT NULL DEFAULT 'Stocky',
  `client_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `default_language` varchar(192) NOT NULL DEFAULT 'en'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `email`, `currency_id`, `CompanyName`, `CompanyPhone`, `CompanyAdress`, `logo`, `created_at`, `updated_at`, `deleted_at`, `footer`, `developed_by`, `client_id`, `warehouse_id`, `default_language`) VALUES
(1, 'cvmataramcctv@gmail.com', 2, 'CV. CCTV MATARAM STUDIO', '083129358242', 'Jl. Lestari-Manalagi 3, No.13-Pejeruk Bangket-Ampenan-Lombok. NTB 83113. Indonesia', '56524227logo.jpg', NULL, '2023-05-10 18:10:11.000000', NULL, 'Perusahaan Penyedia Layanan dan Instalasi CCTV', 'speKTrum', 1, 1, 'Ind');

-- --------------------------------------------------------

--
-- Table structure for table `shipments`
--

CREATE TABLE `shipments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Ref` varchar(192) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `delivered_to` varchar(192) DEFAULT NULL,
  `shipping_address` text,
  `status` varchar(192) NOT NULL,
  `shipping_details` text,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shipments`
--

INSERT INTO `shipments` (`id`, `user_id`, `date`, `Ref`, `sale_id`, `delivered_to`, `shipping_address`, `status`, `shipping_details`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 5, '2023-06-27 06:26:37', 'SM_1111', 25, 'toko emas', 'Jl. Diponegoro', 'delivered', NULL, '2023-06-26 22:26:37.000000', '2023-06-26 22:26:37.000000', NULL),
(2, 5, '2023-06-27 06:28:04', 'SM_1112', 26, 'Kantor Lurah', 'Jl. Teuku Umar', 'delivered', NULL, '2023-06-26 22:28:04.000000', '2023-06-26 22:28:04.000000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `Ref` varchar(192) NOT NULL,
  `date` date NOT NULL,
  `from_warehouse_id` int(11) NOT NULL,
  `to_warehouse_id` int(11) NOT NULL,
  `items` double NOT NULL,
  `tax_rate` double DEFAULT '0',
  `TaxNet` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `shipping` double DEFAULT '0',
  `GrandTotal` double NOT NULL DEFAULT '0',
  `statut` varchar(192) NOT NULL,
  `notes` text,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_details`
--

CREATE TABLE `transfer_details` (
  `id` int(11) NOT NULL,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_variant_id` int(11) DEFAULT NULL,
  `cost` double NOT NULL,
  `purchase_unit_id` int(11) DEFAULT NULL,
  `TaxNet` double DEFAULT NULL,
  `tax_method` varchar(192) DEFAULT '1',
  `discount` double DEFAULT NULL,
  `discount_method` varchar(192) DEFAULT '1',
  `quantity` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(11) NOT NULL,
  `name` varchar(192) NOT NULL,
  `ShortName` varchar(192) NOT NULL,
  `base_unit` int(11) DEFAULT NULL,
  `operator` char(192) DEFAULT '*',
  `operator_value` double DEFAULT '1',
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `ShortName`, `base_unit`, `operator`, `operator_value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Satuan', 'PCS', NULL, '*', 1, '2023-05-11 12:38:20.000000', '2023-05-11 12:38:20.000000', NULL),
(2, 'Lusin', 'LS', 1, '*', 12, '2023-05-22 06:08:39.000000', '2023-05-22 06:08:39.000000', NULL),
(3, 'Per Satu Set', 'Set', 1, '*', 1, '2023-05-29 11:02:07.000000', '2023-05-29 11:02:07.000000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(191) NOT NULL,
  `lastname` varchar(191) NOT NULL,
  `username` varchar(192) NOT NULL,
  `email` varchar(192) NOT NULL,
  `password` varchar(191) NOT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `phone` varchar(192) NOT NULL,
  `role_id` int(11) NOT NULL,
  `statut` tinyint(1) NOT NULL DEFAULT '1',
  `is_all_warehouses` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `avatar`, `phone`, `role_id`, `statut`, `is_all_warehouses`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'William', 'Castillo', 'William Castillo', 'admin@example.com', '$2y$10$IFj6SwqC0Sxrsiv4YkCt.OJv1UV4mZrWuyLoRG7qt47mseP9mJ58u', 'no_avatar.png', '0123456789', 1, 0, 1, NULL, '2023-05-11 13:14:05.000000', NULL),
(2, 'Adit', 'Almanik', 'aditya-almanik', 'almanik4017@gmail.com', '$2y$10$nInHvCvQC7wDpaDO6YR5RuSw9ip.uP9zl4zU1w.rAbQSeZ3Gz3iAi', '51623185WhatsApp Image 2023-05-10 at 04.06.29.jpg', '081717365852', 2, 1, 1, '2023-05-10 18:06:52.000000', '2023-05-11 13:13:26.000000', NULL),
(3, 'Antonio', 'Fernandez', 'TONI', 'ftoni587@gmail.com', '$2y$10$l/spHosVbPP8f0tDbl0PHe.ixJrqnTbUrah6M6ozcvVHHoR08Vf/e', '43439425545909.jpg', '082236148006', 3, 1, 1, '2023-05-10 22:20:13.000000', '2023-05-11 00:13:08.000000', NULL),
(4, 'Fikri', 'Pratama', 'fikri123', 'fikri@gmail.com', '$2y$10$NMzuFiTgC.plCzaDnX3f8e62/pUloZftt.KKrVzxHUyjd/Qv95DNS', '34374500Untitled.jpg', '097876543456', 1, 1, 1, '2023-06-26 22:16:33.000000', '2023-06-26 22:16:33.000000', NULL),
(5, 'Rian', 'Ndapa', 'rian123', 'rian@gmail.com', '$2y$10$shOFHEqUdEU8U.aRBG8Xx.HrrIUEw6bgkit4J6IM3M8mS2mk5ZJ0m', '79468237Untitled.jpg', '08976544567', 4, 1, 1, '2023-06-26 22:20:36.000000', '2023-06-26 22:20:36.000000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_warehouse`
--

CREATE TABLE `user_warehouse` (
  `user_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` int(11) NOT NULL,
  `name` varchar(192) NOT NULL,
  `city` varchar(192) DEFAULT NULL,
  `mobile` varchar(192) DEFAULT NULL,
  `zip` varchar(192) DEFAULT NULL,
  `email` varchar(192) DEFAULT NULL,
  `country` varchar(192) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `city`, `mobile`, `zip`, `email`, `country`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Basis Mataram', NULL, NULL, NULL, NULL, 'Indonesia', NULL, '2023-05-11 00:24:13.000000', NULL),
(2, 'Basis Bali', 'Indonesia', NULL, NULL, NULL, NULL, '2023-05-11 13:24:05.000000', '2023-05-11 22:35:37.000000', '2023-05-11 22:35:37'),
(3, 'Basis Denpasar', 'Denpasar', '098765678', '880044', 'denpasargudang@gmail.com', 'Indonesia', '2023-05-29 12:17:40.000000', '2023-05-29 12:17:40.000000', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adjustments`
--
ALTER TABLE `adjustments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_adjustment` (`user_id`),
  ADD KEY `warehouse_id_adjustment` (`warehouse_id`);

--
-- Indexes for table `adjustment_details`
--
ALTER TABLE `adjustment_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adjust_product_id` (`product_id`),
  ADD KEY `adjust_adjustment_id` (`adjustment_id`),
  ADD KEY `adjust_product_variant` (`product_variant_id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_user_id` (`user_id`),
  ADD KEY `attendances_company_id` (`company_id`),
  ADD KEY `attendances_employee_id` (`employee_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_company_id` (`company_id`),
  ADD KEY `department_department_head` (`department_head`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designation_company_id` (`company_id`),
  ADD KEY `designation_departement_id` (`department_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_company_id` (`company_id`),
  ADD KEY `employees_department_id` (`department_id`),
  ADD KEY `employees_designation_id` (`designation_id`),
  ADD KEY `employees_office_shift_id` (`office_shift_id`);

--
-- Indexes for table `employee_accounts`
--
ALTER TABLE `employee_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_accounts_employee_id` (`employee_id`);

--
-- Indexes for table `employee_experiences`
--
ALTER TABLE `employee_experiences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_experience_employee_id` (`employee_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expense_user_id` (`user_id`),
  ADD KEY `expense_category_id` (`expense_category_id`),
  ADD KEY `expense_warehouse_id` (`warehouse_id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expense_category_user_id` (`user_id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `holidays_company_id` (`company_id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_employee_id` (`employee_id`),
  ADD KEY `leave_company_id` (`company_id`),
  ADD KEY `leave_department_id` (`department_id`),
  ADD KEY `leave_leave_type_id` (`leave_type_id`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `office_shifts`
--
ALTER TABLE `office_shifts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `office_shift_company_id` (`company_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `token` (`token`);

--
-- Indexes for table `payment_purchases`
--
ALTER TABLE `payment_purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_payment_purchases` (`user_id`),
  ADD KEY `payments_purchase_id` (`purchase_id`);

--
-- Indexes for table `payment_purchase_returns`
--
ALTER TABLE `payment_purchase_returns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_payment_return_purchase` (`user_id`),
  ADD KEY `supplier_id_payment_return_purchase` (`purchase_return_id`);

--
-- Indexes for table `payment_sales`
--
ALTER TABLE `payment_sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_payments_sale` (`user_id`),
  ADD KEY `payment_sale_id` (`sale_id`);

--
-- Indexes for table `payment_sale_returns`
--
ALTER TABLE `payment_sale_returns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `factures_sale_return_user_id` (`user_id`),
  ADD KEY `factures_sale_return` (`sale_return_id`);

--
-- Indexes for table `payment_with_credit_card`
--
ALTER TABLE `payment_with_credit_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id` (`permission_id`),
  ADD KEY `permission_role_role_id` (`role_id`);

--
-- Indexes for table `pos_settings`
--
ALTER TABLE `pos_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `brand_id_products` (`brand_id`),
  ADD KEY `unit_id_products` (`unit_id`),
  ADD KEY `unit_id_sales` (`unit_sale_id`),
  ADD KEY `unit_purchase_products` (`unit_purchase_id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id_variant` (`product_id`);

--
-- Indexes for table `product_warehouse`
--
ALTER TABLE `product_warehouse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_warehouse_id` (`product_id`),
  ADD KEY `warehouse_id` (`warehouse_id`),
  ADD KEY `product_variant_id` (`product_variant_id`);

--
-- Indexes for table `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_purchases` (`user_id`),
  ADD KEY `provider_id` (`provider_id`),
  ADD KEY `warehouse_id_purchase` (`warehouse_id`);

--
-- Indexes for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_id` (`purchase_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `purchase_product_variant_id` (`product_variant_id`),
  ADD KEY `purchase_unit_id_purchase` (`purchase_unit_id`);

--
-- Indexes for table `purchase_returns`
--
ALTER TABLE `purchase_returns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_returns` (`user_id`),
  ADD KEY `provider_id_return` (`provider_id`),
  ADD KEY `purchase_return_warehouse_id` (`warehouse_id`);

--
-- Indexes for table `purchase_return_details`
--
ALTER TABLE `purchase_return_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_return_id_return` (`purchase_return_id`),
  ADD KEY `product_id_details_purchase_return` (`product_id`),
  ADD KEY `purchase_return_product_variant_id` (`product_variant_id`),
  ADD KEY `unit_id_purchase_return_details` (`purchase_unit_id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_quotation` (`user_id`),
  ADD KEY `client_id_quotation` (`client_id`),
  ADD KEY `warehouse_id_quotation` (`warehouse_id`);

--
-- Indexes for table `quotation_details`
--
ALTER TABLE `quotation_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id_quotation_details` (`product_id`),
  ADD KEY `quote_product_variant_id` (`product_variant_id`),
  ADD KEY `quotation_id` (`quotation_id`),
  ADD KEY `sale_unit_id_quotation` (`sale_unit_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_user_id` (`user_id`),
  ADD KEY `role_user_role_id` (`role_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_sales` (`user_id`),
  ADD KEY `sale_client_id` (`client_id`),
  ADD KEY `warehouse_id_sale` (`warehouse_id`);

--
-- Indexes for table `sale_details`
--
ALTER TABLE `sale_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Details_Sale_id` (`sale_id`),
  ADD KEY `sale_product_id` (`product_id`),
  ADD KEY `sale_product_variant_id` (`product_variant_id`),
  ADD KEY `sales_sale_unit_id` (`sale_unit_id`);

--
-- Indexes for table `sale_returns`
--
ALTER TABLE `sale_returns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_returns` (`user_id`),
  ADD KEY `client_id_returns` (`client_id`),
  ADD KEY `warehouse_id_sale_return_id` (`warehouse_id`);

--
-- Indexes for table `sale_return_details`
--
ALTER TABLE `sale_return_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `return_id` (`sale_return_id`),
  ADD KEY `product_id_details_returns` (`product_id`),
  ADD KEY `sale_return_id_product_variant_id` (`product_variant_id`),
  ADD KEY `sale_unit_id_return_details` (`sale_unit_id`);

--
-- Indexes for table `servers`
--
ALTER TABLE `servers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currency_id` (`currency_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `warehouse_id` (`warehouse_id`);

--
-- Indexes for table `shipments`
--
ALTER TABLE `shipments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipment_user_id` (`user_id`),
  ADD KEY `shipment_sale_id` (`sale_id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_transfers` (`user_id`),
  ADD KEY `from_warehouse_id` (`from_warehouse_id`),
  ADD KEY `to_warehouse_id` (`to_warehouse_id`);

--
-- Indexes for table `transfer_details`
--
ALTER TABLE `transfer_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transfer_id` (`transfer_id`),
  ADD KEY `product_id_transfers` (`product_id`),
  ADD KEY `product_variant_id_transfer` (`product_variant_id`),
  ADD KEY `unit_sale_id_transfer` (`purchase_unit_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_unit` (`base_unit`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_warehouse`
--
ALTER TABLE `user_warehouse`
  ADD KEY `user_warehouse_user_id` (`user_id`),
  ADD KEY `user_warehouse_warehouse_id` (`warehouse_id`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adjustments`
--
ALTER TABLE `adjustments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `adjustment_details`
--
ALTER TABLE `adjustment_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee_accounts`
--
ALTER TABLE `employee_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_experiences`
--
ALTER TABLE `employee_experiences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `office_shifts`
--
ALTER TABLE `office_shifts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_purchases`
--
ALTER TABLE `payment_purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `payment_purchase_returns`
--
ALTER TABLE `payment_purchase_returns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_sales`
--
ALTER TABLE `payment_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `payment_sale_returns`
--
ALTER TABLE `payment_sale_returns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_with_credit_card`
--
ALTER TABLE `payment_with_credit_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1426;

--
-- AUTO_INCREMENT for table `pos_settings`
--
ALTER TABLE `pos_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_warehouse`
--
ALTER TABLE `product_warehouse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `providers`
--
ALTER TABLE `providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `purchase_details`
--
ALTER TABLE `purchase_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `purchase_returns`
--
ALTER TABLE `purchase_returns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `purchase_return_details`
--
ALTER TABLE `purchase_return_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotation_details`
--
ALTER TABLE `quotation_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `sale_details`
--
ALTER TABLE `sale_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `sale_returns`
--
ALTER TABLE `sale_returns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sale_return_details`
--
ALTER TABLE `sale_return_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `servers`
--
ALTER TABLE `servers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipments`
--
ALTER TABLE `shipments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfer_details`
--
ALTER TABLE `transfer_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adjustments`
--
ALTER TABLE `adjustments`
  ADD CONSTRAINT `user_id_adjustment` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `warehouse_id_adjustment` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

--
-- Constraints for table `adjustment_details`
--
ALTER TABLE `adjustment_details`
  ADD CONSTRAINT `adjust_adjustment_id` FOREIGN KEY (`adjustment_id`) REFERENCES `adjustments` (`id`),
  ADD CONSTRAINT `adjust_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `adjust_product_variant` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`);

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_company_id` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `attendances_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `attendances_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `department_company_id` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `department_department_head` FOREIGN KEY (`department_head`) REFERENCES `employees` (`id`);

--
-- Constraints for table `designations`
--
ALTER TABLE `designations`
  ADD CONSTRAINT `designation_company_id` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `designation_departement_id` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_company_id` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `employees_department_id` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `employees_designation_id` FOREIGN KEY (`designation_id`) REFERENCES `designations` (`id`),
  ADD CONSTRAINT `employees_office_shift_id` FOREIGN KEY (`office_shift_id`) REFERENCES `office_shifts` (`id`);

--
-- Constraints for table `employee_accounts`
--
ALTER TABLE `employee_accounts`
  ADD CONSTRAINT `employee_accounts_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `employee_experiences`
--
ALTER TABLE `employee_experiences`
  ADD CONSTRAINT `employee_experience_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expense_category_id` FOREIGN KEY (`expense_category_id`) REFERENCES `expense_categories` (`id`),
  ADD CONSTRAINT `expense_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `expense_warehouse_id` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

--
-- Constraints for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD CONSTRAINT `expense_category_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `holidays`
--
ALTER TABLE `holidays`
  ADD CONSTRAINT `holidays_company_id` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `leaves`
--
ALTER TABLE `leaves`
  ADD CONSTRAINT `leave_company_id` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `leave_department_id` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `leave_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `leave_leave_type_id` FOREIGN KEY (`leave_type_id`) REFERENCES `leave_types` (`id`);

--
-- Constraints for table `office_shifts`
--
ALTER TABLE `office_shifts`
  ADD CONSTRAINT `office_shift_company_id` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `payment_purchases`
--
ALTER TABLE `payment_purchases`
  ADD CONSTRAINT `factures_purchase_id` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`),
  ADD CONSTRAINT `user_id_factures_achat` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `payment_purchase_returns`
--
ALTER TABLE `payment_purchase_returns`
  ADD CONSTRAINT `supplier_id_payment_return_purchase` FOREIGN KEY (`purchase_return_id`) REFERENCES `purchase_returns` (`id`),
  ADD CONSTRAINT `user_id_payment_return_purchase` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `payment_sales`
--
ALTER TABLE `payment_sales`
  ADD CONSTRAINT `facture_sale_id` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`),
  ADD CONSTRAINT `user_id_factures_ventes` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `payment_sale_returns`
--
ALTER TABLE `payment_sale_returns`
  ADD CONSTRAINT `factures_sale_return` FOREIGN KEY (`sale_return_id`) REFERENCES `sale_returns` (`id`),
  ADD CONSTRAINT `factures_sale_return_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`),
  ADD CONSTRAINT `permission_role_role_id` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `brand_id_products` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `category_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `unit_id_products` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`),
  ADD CONSTRAINT `unit_id_sales` FOREIGN KEY (`unit_sale_id`) REFERENCES `units` (`id`),
  ADD CONSTRAINT `unit_purchase_products` FOREIGN KEY (`unit_purchase_id`) REFERENCES `units` (`id`);

--
-- Constraints for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD CONSTRAINT `product_id_variant` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_warehouse`
--
ALTER TABLE `product_warehouse`
  ADD CONSTRAINT `art_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `mag_id` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`),
  ADD CONSTRAINT `product_variant_id` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`);

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `provider_id` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`),
  ADD CONSTRAINT `user_id_purchases` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `warehouse_id_purchase` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

--
-- Constraints for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `purchase_id` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`),
  ADD CONSTRAINT `purchase_product_variant_id` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `purchase_unit_id_purchase` FOREIGN KEY (`purchase_unit_id`) REFERENCES `units` (`id`);

--
-- Constraints for table `purchase_returns`
--
ALTER TABLE `purchase_returns`
  ADD CONSTRAINT `provider_id_return` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`),
  ADD CONSTRAINT `purchase_return_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `purchase_return_warehouse_id` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

--
-- Constraints for table `purchase_return_details`
--
ALTER TABLE `purchase_return_details`
  ADD CONSTRAINT `product_id_details_purchase_return` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `purchase_return_id_return` FOREIGN KEY (`purchase_return_id`) REFERENCES `purchase_returns` (`id`),
  ADD CONSTRAINT `purchase_return_product_variant_id` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`),
  ADD CONSTRAINT `unit_id_purchase_return_details` FOREIGN KEY (`purchase_unit_id`) REFERENCES `units` (`id`);

--
-- Constraints for table `quotations`
--
ALTER TABLE `quotations`
  ADD CONSTRAINT `client_id _quotation` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `user_id_quotation` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `warehouse_id_quotation` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

--
-- Constraints for table `quotation_details`
--
ALTER TABLE `quotation_details`
  ADD CONSTRAINT `product_id_quotation_details` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `quotation_id` FOREIGN KEY (`quotation_id`) REFERENCES `quotations` (`id`),
  ADD CONSTRAINT `quote_product_variant_id` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`),
  ADD CONSTRAINT `sale_unit_id_quotation` FOREIGN KEY (`sale_unit_id`) REFERENCES `units` (`id`);

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `role_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sale_client_id` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `user_id_sales` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `warehouse_id_sale` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

--
-- Constraints for table `sale_details`
--
ALTER TABLE `sale_details`
  ADD CONSTRAINT `Details_Sale_id` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`),
  ADD CONSTRAINT `sale_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `sale_product_variant_id` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`),
  ADD CONSTRAINT `sales_sale_unit_id` FOREIGN KEY (`sale_unit_id`) REFERENCES `units` (`id`);

--
-- Constraints for table `sale_returns`
--
ALTER TABLE `sale_returns`
  ADD CONSTRAINT `client_id_returns` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `user_id_returns` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `warehouse_id_sale_return_id` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

--
-- Constraints for table `sale_return_details`
--
ALTER TABLE `sale_return_details`
  ADD CONSTRAINT `product_id_details_returns` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `sale_return_id` FOREIGN KEY (`sale_return_id`) REFERENCES `sale_returns` (`id`),
  ADD CONSTRAINT `sale_return_id_product_variant_id` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`),
  ADD CONSTRAINT `sale_unit_id_return_details` FOREIGN KEY (`sale_unit_id`) REFERENCES `units` (`id`);

--
-- Constraints for table `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `currency_id` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `settings_client_id` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `settings_warehouse_id` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

--
-- Constraints for table `shipments`
--
ALTER TABLE `shipments`
  ADD CONSTRAINT `shipment_sale_id` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`),
  ADD CONSTRAINT `shipment_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transfers`
--
ALTER TABLE `transfers`
  ADD CONSTRAINT `from_warehouse_id` FOREIGN KEY (`from_warehouse_id`) REFERENCES `warehouses` (`id`),
  ADD CONSTRAINT `to_warehouse_id` FOREIGN KEY (`to_warehouse_id`) REFERENCES `warehouses` (`id`),
  ADD CONSTRAINT `user_id_transfers` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transfer_details`
--
ALTER TABLE `transfer_details`
  ADD CONSTRAINT `product_id_transfers` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_variant_id_transfer` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`),
  ADD CONSTRAINT `transfer_id` FOREIGN KEY (`transfer_id`) REFERENCES `transfers` (`id`),
  ADD CONSTRAINT `unit_sale_id_transfer` FOREIGN KEY (`purchase_unit_id`) REFERENCES `units` (`id`);

--
-- Constraints for table `units`
--
ALTER TABLE `units`
  ADD CONSTRAINT `base_unit` FOREIGN KEY (`base_unit`) REFERENCES `units` (`id`);

--
-- Constraints for table `user_warehouse`
--
ALTER TABLE `user_warehouse`
  ADD CONSTRAINT `user_warehouse_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_warehouse_warehouse_id` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
