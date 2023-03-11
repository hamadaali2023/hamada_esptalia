-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 10, 2023 at 07:43 AM
-- Server version: 10.3.38-MariaDB-log-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beaunqrp_esptali`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctorId` bigint(20) UNSIGNED NOT NULL,
  `patientId` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `permanent_type` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'confirmed',
  `payment_status` int(11) DEFAULT 0,
  `amount` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `expire` tinyint(1) DEFAULT 0 COMMENT '0=>active 1=>expire',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `doctorId`, `patientId`, `date`, `time`, `permanent_type`, `status`, `payment_status`, `amount`, `type`, `expire`, `created_at`, `updated_at`) VALUES
(61, 1, 69, '2021-11-17', '6:00 PM', 'PM', 'confirmed', 0, NULL, 'Video', 1, '2021-11-17 15:41:21', '2021-11-17 15:42:02'),
(62, 1, 69, '2021-11-17', '6:00 PM', 'PM', 'confirmed', 0, NULL, 'Video', 1, '2021-11-17 15:43:42', '2021-11-17 15:44:02'),
(63, 1, 69, '2021-11-17', '6:00 PM', 'PM', 'confirmed', 0, NULL, 'Video', 1, '2021-11-17 15:43:59', '2021-11-17 15:44:02'),
(64, 1, 69, '2022-10-19', '10:45 AM', 'AM', 'confirmed', 0, NULL, 'reavel', 0, '2022-10-19 12:31:43', '2022-10-19 12:31:43'),
(65, 1, 69, '2022-10-19', '10:45 AM', 'AM', 'confirmed', 0, NULL, 'reavel', 0, '2022-10-19 12:32:49', '2022-10-19 12:32:49'),
(66, 1, 69, '2022-10-19', '10:45 AM', 'AM', 'combledted', 1, NULL, 'reavel', 0, '2022-10-19 12:34:25', '2022-10-19 12:42:31');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctorId` bigint(20) UNSIGNED NOT NULL,
  `specialityId` int(11) DEFAULT NULL,
  `title_ar` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `description_ar` text DEFAULT NULL,
  `description_en` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `doctorId`, `specialityId`, `title_ar`, `title_en`, `description_ar`, `description_en`, `image`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 'هل السعال الديكي معدي أم لا؟', 'Is whooping cough contagious or not?', 'يصيب السعال الديكي (Whooping Cough) البشر ولا يصيب الحيوانات، وربما تساءلت \"هل السعال الديكي معدي؟\" لذلك تم إعداد هذا المقال خصيصًا ليقدم لك إجابة كافية ومعلومات أخرى تهمك، لذا تابع القراءة:\r\nيعد السعال الديكي مرضًا معديًا، حيث أن شخصًا واحدًا مصابًا بالسعال الديكي قد ينقل العدوى لحوالي 12 - 15 شخص، وينتقل هذا المرض من شخص لاخر عن طريق السعال أو العطس أو عندما يتم قضاء وقت طويل بجوار شخص مصاب بالسعال الديكي، حيث تنتقل العدوى عن طريق النفس.﻿\r\n\r\nولكن يجدر التنويه أنه قد يساعد أخذ المضادات الحيوية والأدوية المناسبة التي يصفها الطبيب خلال الفترة التي يبدأ بها السعال في جعل مدة العدوى أقصر.﻿.      \r\nتنتقل البكتيريا المسببة للسعال الديكي عن طريق استنشاق الرذاذ الناتج عن سعال أو عطس المصاب، حيث أنها تتواجد في إفرازات الأنف والفم للشخص المصاب، كما تنتقل أيضًا عن طريق لمس الأسطح الملوثة ومن ثم لمس الأنف أو الفم أو الوجه.', 'jjjWhooping cough affects people but not animals, and you may have wondered, “Is whooping cough contagious?” So this article has been specially prepared to give you an adequate answer and other information of interest to you, so read on:', '1636531973.jpeg', '2021-07-25 15:56:58', '2021-11-10 08:14:47'),
(3, 1, 3, 'ماسك الجزر للوجه: يقاوم التجاعيد والبثور وأكثر', 'Carrot face mask', 'ما هي فوائد ماسك الجزر للوجه؟ كيف يمكن لتطبيق هذا النوع من الماسكات أن يساعدك على تحسين صحة ومظهر بشرتك؟ معلومات هامة في المقال الآتي:\r\n\r\nتهرس شريحة بطاطا مع قطعة من لب جزرة طازجة، ويضاف القليل من الماء للمزيج للحصول على قوام مناسب للماسك. يطبق معجون ماسك الجزر على الوجه، ويشطف بمياه باردة بعد انقضاء مدة 15 دقيقة.', 'ما هي فوائد ماسك الجزر للوجه؟ كيف يمكن لتطبيق هذا النوع من الماسكات أن يساعدك على تحسين صحة ومظهر بشرتك؟ معلومات هامة في المقال الآتي:\r\n\r\nتهرس شريحة بطاطا مع قطعة من لب جزرة طازجة، ويضاف القليل من الماء للمزيج للحصول على قوام مناسب للماسك. يطبق معجون ماسك الجزر على الوجه، ويشطف بمياه باردة بعد انقضاء مدة 15 دقيقة.', '1636531865.jpeg', '2021-07-26 04:43:07', '2022-10-16 23:45:40'),
(4, 1, 1, 'Jhb', 'Jhb', 'subs', 'subs', '1665908176.jpg', '2022-10-16 12:16:16', '2022-10-16 12:16:16');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pannar` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `pannar`, `created_at`, `updated_at`) VALUES
(1, '1636470936.jpeg', '2021-07-24 07:04:00', '2021-11-09 15:15:36'),
(2, '1636470951.jpeg', '2021-07-24 15:13:14', '2021-11-09 15:15:52');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctorId` bigint(20) UNSIGNED NOT NULL,
  `patientId` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `doctorId`, `patientId`, `created_at`, `updated_at`) VALUES
(8, 1, 69, '2021-11-17 15:06:03', '2021-11-17 15:06:03');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `countryId` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `countryId`, `name_ar`, `name_en`, `created_at`, `updated_at`) VALUES
(1, 1, 'السعودية', 'Saudi Arabia', '2021-07-18 18:29:05', '2021-07-29 06:27:59'),
(2, 1, 'الرياض', 'Riyadh', '2021-07-29 06:28:49', '2021-07-29 06:28:49'),
(3, 2, 'الخرطوم', 'Khartoum', '2021-07-30 07:21:56', '2021-07-30 07:21:56'),
(4, 3, 'القاهرة', 'Cairo', '2021-07-30 07:22:18', '2021-07-30 10:53:23');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `articleId` bigint(20) UNSIGNED NOT NULL,
  `patientId` bigint(20) UNSIGNED NOT NULL,
  `comment` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_infos`
--

CREATE TABLE `contact_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` text DEFAULT NULL,
  `title_ar` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address_ar` varchar(255) DEFAULT NULL,
  `address_en` varchar(255) DEFAULT NULL,
  `location` text DEFAULT NULL,
  `longitude` text DEFAULT NULL,
  `latitude` text DEFAULT NULL,
  `mesion_ar` text DEFAULT NULL,
  `mesion_en` text DEFAULT NULL,
  `mesion_image` text DEFAULT NULL,
  `vesion_ar` text DEFAULT NULL,
  `vesion_en` text DEFAULT NULL,
  `vesion_image` text DEFAULT NULL,
  `description_ar` text DEFAULT NULL,
  `description_en` text DEFAULT NULL,
  `privacy_ar` text DEFAULT NULL,
  `privacy_en` text DEFAULT NULL,
  `version` double DEFAULT NULL,
  `favicon` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_infos`
--

INSERT INTO `contact_infos` (`id`, `logo`, `title_ar`, `title_en`, `phone`, `email`, `address_ar`, `address_en`, `location`, `longitude`, `latitude`, `mesion_ar`, `mesion_en`, `mesion_image`, `vesion_ar`, `vesion_en`, `vesion_image`, `description_ar`, `description_en`, `privacy_ar`, `privacy_en`, `version`, `favicon`, `created_at`, `updated_at`) VALUES
(1, 'vwvvwrv', 'etgst', 'grtg', '0568645742', 'mohammed.work44@gmail.com', 'حي العزيزية', 'Alazeezia', 'verve', 'latlong', 'latlong', 'vervr', 'vrev', 'rntenbt', 'ebre', 'brt', 'brtbr', 'من نحن  يييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييي', 'من نحن يييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييييي', 'سياسة الخصوصية عربي', 'privacy', NULL, NULL, NULL, '2021-07-29 14:51:00');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name_ar`, `name_en`, `created_at`, `updated_at`) VALUES
(1, 'السعودية', 'Saudi Arabia', '2021-07-18 18:28:48', '2021-07-29 06:26:39'),
(2, 'السودان', 'Sudan', '2021-07-29 06:27:00', '2021-07-29 06:27:00'),
(3, 'مصر', 'Egypt', '2021-07-29 06:27:22', '2021-07-29 06:27:22');

-- --------------------------------------------------------

--
-- Table structure for table `diagnostics`
--

CREATE TABLE `diagnostics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctorId` bigint(20) UNSIGNED NOT NULL,
  `patientId` bigint(20) UNSIGNED NOT NULL,
  `appointmentId` int(11) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `hight` varchar(255) DEFAULT NULL,
  `blood` varchar(255) DEFAULT NULL,
  `temp` varchar(255) DEFAULT NULL,
  `complaint` text DEFAULT NULL,
  `symptoms` text DEFAULT NULL,
  `diagnosis` text DEFAULT NULL,
  `medicine` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `diagnostics`
--

INSERT INTO `diagnostics` (`id`, `doctorId`, `patientId`, `appointmentId`, `weight`, `hight`, `blood`, `temp`, `complaint`, `symptoms`, `diagnosis`, `medicine`, `date`, `time`, `created_at`, `updated_at`) VALUES
(1, 1, 69, 66, '10', '17', 'A-', '40', 'الم', 'مريض', 'مريض', 'اسبرين', '2022-10-19', '10:42:00', '2022-10-19 12:42:31', '2022-10-19 12:42:31');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `specialityId` bigint(20) UNSIGNED NOT NULL,
  `countryId` bigint(20) UNSIGNED NOT NULL,
  `cityId` bigint(20) UNSIGNED NOT NULL,
  `first_name_ar` varchar(255) DEFAULT NULL,
  `last_name_ar` varchar(255) DEFAULT NULL,
  `first_name_en` varchar(255) DEFAULT NULL,
  `last_name_en` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `specialityDesc_ar` varchar(255) DEFAULT NULL,
  `specialityDesc_en` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `address_ar` varchar(255) DEFAULT NULL,
  `address_en` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `photo` text DEFAULT NULL,
  `university_degree` text DEFAULT NULL,
  `practice_certificate` text DEFAULT NULL,
  `other_qualification` text DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `membershipNo` varchar(255) DEFAULT NULL,
  `authority_ar` varchar(255) DEFAULT NULL,
  `authority_en` varchar(255) DEFAULT NULL,
  `degree_ar` varchar(255) DEFAULT NULL,
  `degree_en` varchar(255) DEFAULT NULL,
  `yearOfRegistration` varchar(255) DEFAULT NULL,
  `bankNumber` varchar(255) DEFAULT NULL,
  `is_activated` tinyint(4) DEFAULT 0,
  `token` text DEFAULT NULL,
  `device_token` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specialityId`, `countryId`, `cityId`, `first_name_ar`, `last_name_ar`, `first_name_en`, `last_name_en`, `email`, `password`, `specialityDesc_ar`, `specialityDesc_en`, `longitude`, `latitude`, `mobile`, `address_ar`, `address_en`, `location`, `experience`, `gender`, `photo`, `university_degree`, `practice_certificate`, `other_qualification`, `rate`, `status`, `membershipNo`, `authority_ar`, `authority_en`, `degree_ar`, `degree_en`, `yearOfRegistration`, `bankNumber`, `is_activated`, `token`, `device_token`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'حماده', 'علي', 'hamada', 'ali', 'hamadaali221133@gmail.com', '$2y$10$ZzzR9dWJI.CvcYWVHlHYpedzlw5xET2d1Vwzaj/S8EpjjqQlzTVxO', 'كل ما يخص قسم الاسنان', 'tebefvre', '77.0478997', '28.418715', '243635447', 'القاهره', 'frwfr', NULL, '22', 'Male', '1636470345.jpeg', '1626671094.pdf', '1626671227.pdf', '1626671935.jpg', NULL, 1, '333', 'وزاره الصحه', 'betbte', 'بكالوريوس', 'sfbgfs', '2014', '5555566626666', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9iZWF1dGloZWF0aC5jb21cL3N1YlwvdGVtcGxhdGVcL2Jvb3RzdHJhcFwvdGVtcGxhdGUtcnRsXC9hcGlcL3YxXC9kb2N0b3JcL2xvZ2luIiwiaWF0IjoxNjY2MTY4NjI0LCJleHAiOjE2NjYxNzIyMjQsIm5iZiI6MTY2NjE2ODYyNCwianRpIjoiOFM4Yjh4ZThRNEJHbUwwcCIsInN1YiI6MSwicHJ2IjoiOGQ0NDExY2QyNDFmMWE5ZWFkM2NhNzQ4Njc0NGViNGVkMDY3NjgxYiJ9.cv8YynTEC801XwD6txCz08Ya2t3FWNHOEskDSQ-zE5Y', 'eVuzelUDRGo:APA91bGb7MMkHRChqyP9u_cNDLobE1h9tZvS-uGA-jywZzy6_yGDj0P07MWGj5zs14KdJ_hKy7wtRVsfBBi7df-A3QmDBUpDGZBziL4Nz5Wo5WXXHTEA6acAGuyObCNtjGEBaGhLkc3F', '2021-07-18 18:44:04', '2022-10-19 12:37:04'),
(5, 2, 1, 1, 'احمد', 'سيد', 'myphone id76562', 'wfwef', 'hamadaali221133r@gmail.com', '$2y$10$.fapow3OBIIbQ5zKccrE4.WbuU9PEK4uwo.BC/b1ozTEmQPwbbDZ2', NULL, NULL, '23456', '3456', '5367', 'mail', 'fyv', NULL, NULL, 'kjhbj', 'profile_image.png', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-29 06:34:06', '2021-07-29 06:34:06'),
(6, 3, 1, 1, 'محمد', 'عبدالدائم', 'Moh', 'abdaldaim', 'Mohammed.work44@gmail.com', '$2y$10$Q.x1bXtXcbzH5MnKLjJlhOhWdUmnJwQeGeaQqiswQpCbXAXrqjEeK', 'متخصص اطفال', NULL, '41.6922412', '27.523922', '0568645742', 'العزيزية', 'العزيزية', NULL, '12', 'Male', '1636470488.jpeg', '1627546615.pdf', '1627546615.pdf', '1627546615.pdf', NULL, 1, '27256', 'Khartoum ‎', 'bgdbdg', 'دكتور', 'bedbf', '2008', '33', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvZmluZGZhbWlseS5uZXRcL3RlbXBsYXRlXC9ib290c3RyYXBcL3RlbXBsYXRlLXJ0bFwvYXBpXC92MVwvZG9jdG9yXC9sb2dpbiIsImlhdCI6MTYyODY5MjQ1MiwiZXhwIjoxNjI4Njk2MDUyLCJuYmYiOjE2Mjg2OTI0NTIsImp0aSI6IlRGa3k2Mkw3ZFl2RTBET0QiLCJzdWIiOjYsInBydiI6IjhkNDQxMWNkMjQxZjFhOWVhZDNjYTc0ODY3NDRlYjRlZDA2NzY4MWIifQ.UTZuNeDpwyTJ9wH1B4yOXPCXwgbdfcVzAgcemHJ7GJE', 'eZstvlK1T-g:APA91bHhBQ0xyk9NU0wASjf6YrzlsP0udNt8HzhZ6xxn7tSo7ioTjL53GQb1Zr0lW_ASDkFakxFi0OdZQ4fIXwhHoedou6hRXtN8NZHyC09CFXhrBKKJtEUtHFucVggYkLQnPLIV7dbi', '2021-07-29 08:05:49', '2021-11-09 15:08:08'),
(7, 4, 1, 1, 'ضياء', 'محمد', 'diaa', 'mohamed', 'diaasamir80@gmail.com', '$2y$10$ou9hiVPdbgPVYCoRjzIaOeEDEJEHhhY5MtJY.Uh31ui3KPgyGfopC', '534534ethet', '5345', '41.6922357', '27.5239242', '0546974869', 'حائل', 'hail', NULL, '10', 'Male', '1636470605.jpeg', NULL, NULL, NULL, NULL, 0, '5345', '345', '54334', '543', 'dgn', '435', '5345', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvZmluZGZhbWlseS5uZXRcL3RlbXBsYXRlXC9ib290c3RyYXBcL3RlbXBsYXRlLXJ0bFwvYXBpXC92MVwvZG9jdG9yXC9sb2dpbiIsImlhdCI6MTYyODY5NzMyNiwiZXhwIjoxNjI4NzAwOTI2LCJuYmYiOjE2Mjg2OTczMjYsImp0aSI6ImtnVnNtR1VlMDVPcUQ3TEgiLCJzdWIiOjcsInBydiI6IjhkNDQxMWNkMjQxZjFhOWVhZDNjYTc0ODY3NDRlYjRlZDA2NzY4MWIifQ.Q_POWDhl6JmtoOWUIJxYRpaCcYSBlql1xXdT_bUZNKg', 'dFONydP2cjU:APA91bH1uqz582CEGplUUvkWG8gPZMrREObI5mZDZunemOOWTdqtO7WRcI4BI__ixYOqH-OMO3OoYiRliT-bmZ9j7vPkORJLaj_fvR_cWB21KI2WIKUyIbN7zp5Thdi7lfMi9QN9b6ND', '2021-07-29 16:48:02', '2022-02-12 18:12:48'),
(8, 1, 1, 1, 'hamada', '1234', 'myphone id76562', 'wfwef', 'hamadaali226641343@gmail.com', '$2y$10$V1jK6VDX6HKRkwnW6uJrDu9KgODXhCaXuljgXj9hm3vtiUcrN4dD6', NULL, NULL, '23456', '3456', '5367', 'mail', 'fyv', NULL, NULL, 'kjhbj', 'profile_image.png', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-10-16 12:26:48', '2022-10-16 12:26:48'),
(9, 1, 1, 1, 'hamada', '1234', 'myphone id76562', 'wfwef', 'hamadaali641343@gmail.com', '$2y$10$HBqXXOPqaYKnVq3btw8byOFU6cZB4aPkQySx4HXsN69fpBus4Fnb.', NULL, NULL, '23456', '3456', '5367', 'mail', 'fyv', NULL, NULL, 'kjhbj', 'profile_image.png', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-10-16 12:30:12', '2022-10-16 12:30:12'),
(10, 1, 1, 1, 'hamada', '1234', 'myphone id76562', 'wfwef', 'hamadaali22113366@gmail.com', '$2y$10$eg250Z7r7zZaAni6bjS2.e9LG5W8wHFwJikDCqIr2tWYDousEQpBq', NULL, NULL, '23456', '3456', '5367', 'mail', 'fyv', NULL, NULL, 'kjhbj', 'profile_image.png', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-10-16 12:32:18', '2022-10-16 12:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctorId` bigint(20) UNSIGNED NOT NULL,
  `patientId` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chatID` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `senderType` int(11) NOT NULL,
  `message` text NOT NULL,
  `file` text NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `chatID`, `sender_id`, `senderType`, `message`, `file`, `date`, `time`, `created_at`, `updated_at`) VALUES
(58, 8, 1, 1, 'مرحبا', '', '2021-11-17', '5:11 PM', '2021-11-17 15:11:06', '2021-11-17 15:11:06'),
(59, 8, 1, 1, 'احمد', '', '2021-11-17', '5:11 PM', '2021-11-17 15:11:35', '2021-11-17 15:11:35'),
(60, 8, 1, 1, 'موجود؟', '', '2021-11-17', '5:11 PM', '2021-11-17 15:11:41', '2021-11-17 15:11:41'),
(61, 8, 69, 69, 'يبرنس', '', '2021-11-21', '2:33 PM', '2021-11-21 12:33:52', '2021-11-21 12:33:52'),
(62, 8, 1, 1, 'مرحبا', '', '2021-12-31', '11:16 PM', '2021-12-31 20:16:27', '2021-12-31 20:16:27'),
(63, 8, 69, 69, 'vvv', '', '2022-10-17', '1:55 PM', '2022-10-17 15:55:14', '2022-10-17 15:55:14'),
(64, 8, 69, 69, 'vggg', '', '2022-10-17', '1:55 PM', '2022-10-17 15:55:18', '2022-10-17 15:55:18'),
(65, 8, 69, 69, 'gggg', '', '2022-10-17', '1:55 PM', '2022-10-17 15:55:23', '2022-10-17 15:55:23'),
(66, 8, 69, 69, 'cfdf', '', '2022-10-17', '1:55 PM', '2022-10-17 15:55:27', '2022-10-17 15:55:27'),
(67, 8, 1, 1, 'اا', '', '2022-10-21', '9:01 AM', '2022-10-21 11:01:48', '2022-10-21 11:01:48');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0000_00_00_000000_create_websockets_statistics_entries_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2020_11_07_185231_create_countries_tables', 1),
(5, '2020_11_08_185418_create_cities_tables', 1),
(6, '2020_11_09_035609_create_specialities_table', 1),
(7, '2020_11_09_035725_create_doctors_table', 1),
(8, '2020_11_09_040031_create_patients_table', 1),
(9, '2020_11_09_040055_create_appointments_table', 1),
(10, '2020_11_09_040401_create_offers_table', 1),
(11, '2020_11_09_040424_create_articles_table', 1),
(12, '2020_11_09_040446_create_comments_table', 1),
(13, '2020_11_09_040505_create_sliders_table', 1),
(14, '2020_11_09_040523_create_banners_table', 1),
(15, '2020_11_09_040539_create_contact_infos_table', 1),
(16, '2020_11_14_065921_create_diagnostics_table', 1),
(17, '2020_12_03_104434_create_services_table', 1),
(18, '2020_12_09_085433_create_working_days_table', 1),
(19, '2020_12_30_150639_create_permission_tables', 1),
(20, '2021_01_02_051056_create_favorites_table', 1),
(21, '2021_01_02_080555_create_reviews_table', 1),
(22, '2021_01_12_102533_create_payments_table', 1),
(23, '2021_02_09_150340_create_notifications_table', 1),
(24, '2021_07_16_060019_create_chats_table', 1),
(25, '2021_07_17_141537_create_messages_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(4, 'App\\User', 2),
(1, 'App\\User', 3),
(1, 'App\\User', 4);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('2207d429-5aa7-487b-bd73-cfc7dfb06c8b', 'App\\Notifications\\DoctorNewNotification', 'App\\Doctor', 6, '{\"name\":\"Moh\",\"id\":6,\"message\":\"\\u062a\\u0645 \\u0625\\u0636\\u0627\\u0641\\u0629 \\u0639\\u0631\\u0636 \\u0645\\u0646 \\u0642\\u0628\\u0644 \",\"photo\":\"profile_image.png\",\"title\":\"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0639\\u064a\\u062f \\u0639\",\"data\":\"\\u0648\\u0635\\u0641 \\u0627\\u0644\\u0639\\u0631\\u0636 \\u0639\"}', '2021-07-29 14:33:38', '2021-07-29 08:49:30', '2021-07-29 14:33:38'),
('221cbb16-3b1a-4d1f-8073-09e60aecfb10', 'App\\Notifications\\DoctorNewNotification', 'App\\Doctor', 6, '{\"name\":\"Moh\",\"id\":6,\"message\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0645\\u0642\\u0627\\u0644 \\u0645\\u0646 \\u0642\\u0628\\u0644  \",\"photo\":\"profile_image.png\",\"title\":\"\\u0639\\u0646\\u0648\\u0627\\u0646\",\"data\":\"\\u0646\\u0635\"}', '2021-07-29 14:33:38', '2021-07-29 09:15:47', '2021-07-29 14:33:38'),
('23a01806-99e8-4182-9796-7c4ee9b06d22', 'App\\Notifications\\DoctorNewNotification', 'App\\Doctor', 10, '{\"name\":\"myphone id76562\",\"id\":10,\"message\":\"\\u062a\\u0645 \\u062a\\u0633\\u062c\\u064a\\u0644 \\u062f\\u0643\\u062a\\u0648\\u0631 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0623\\u0633\\u0645  \",\"photo\":\"profile_image.png\",\"title\":null,\"data\":null}', NULL, '2022-10-16 12:32:18', '2022-10-16 12:32:18'),
('250d6dd0-db11-4c97-923d-5eb48c87f75c', 'App\\Notifications\\PatientNewNotification', 'App\\Patient', 10, '{\"name\":\"\\u062a\\u0627\\u0644\\u064a\\u0629\",\"id\":10,\"message\":\"\\u062a\\u0645 \\u062d\\u062c\\u0632 \\u0645\\u0648\\u0639\\u062f \\u0645\\u0646 \\u0642\\u0628\\u0644  \",\"photo\":\"1627551734.jpg\",\"title\":null,\"data\":null}', NULL, '2021-08-05 07:56:45', '2021-08-05 07:56:45'),
('3101dbeb-7c69-4bcf-bcf7-4068f2fd0003', 'App\\Notifications\\PatientNewNotification', 'App\\Patient', 9, '{\"name\":\"\\u0636\\u064a\\u0627\\u0621\",\"id\":9,\"message\":\"\\u062a\\u0645 \\u062d\\u062c\\u0632 \\u0645\\u0648\\u0639\\u062f \\u0645\\u0646 \\u0642\\u0628\\u0644  \",\"photo\":\"profile_image.png\",\"title\":null,\"data\":null}', NULL, '2021-07-29 16:43:59', '2021-07-29 16:43:59'),
('322251be-222d-4c66-9af7-85c2b8eb57a0', 'App\\Notifications\\PatientNewNotification', 'App\\Patient', 9, '{\"name\":\"\\u0636\\u064a\\u0627\\u0621\",\"id\":9,\"message\":\"\\u062a\\u0645 \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0645\\u0631\\u064a\\u0636 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0627\\u0633\\u0645\",\"photo\":\"profile_image.png\",\"title\":null,\"data\":null}', '2021-07-29 14:41:47', '2021-07-29 06:59:11', '2021-07-29 14:41:47'),
('34ff0fbd-c91f-4748-9eaf-e0108d0cd688', 'App\\Notifications\\PatientNewNotification', 'App\\Patient', 9, '{\"name\":\"\\u0636\\u064a\\u0627\\u0621\",\"id\":9,\"message\":\"\\u062a\\u0645 \\u062d\\u062c\\u0632 \\u0645\\u0648\\u0639\\u062f \\u0645\\u0646 \\u0642\\u0628\\u0644  \",\"photo\":\"1627577186.jpg\",\"title\":null,\"data\":null}', NULL, '2021-08-12 06:15:55', '2021-08-12 06:15:55'),
('391c57ef-0844-40b3-9ddc-b4713fddf89b', 'App\\Notifications\\PatientNewNotification', 'App\\Patient', 8, '{\"name\":\"hamada\",\"id\":8,\"message\":\"\\u062a\\u0645 \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0645\\u0631\\u064a\\u0636 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0627\\u0633\\u0645\",\"photo\":\"profile_image.png\",\"title\":null,\"data\":null}', NULL, '2021-07-29 06:50:30', '2021-07-29 06:50:30'),
('43bff7d0-86a6-49c8-a517-f69ee090c41b', 'App\\Notifications\\PatientNewNotification', 'App\\Patient', 69, '{\"name\":\"\\u0627\\u062d\\u0645\\u062f\",\"id\":69,\"message\":\"\\u062a\\u0645 \\u062d\\u062c\\u0632 \\u0645\\u0648\\u0639\\u062f \\u0645\\u0646 \\u0642\\u0628\\u0644  \",\"photo\":\"1636471957.jpeg\",\"title\":null,\"data\":null}', NULL, '2021-11-17 15:04:17', '2021-11-17 15:04:17'),
('4a2d2c1e-83c9-4315-9fb3-a50114a03458', 'App\\Notifications\\PatientNewNotification', 'App\\Patient', 1, '{\"name\":\"rgetg\",\"id\":1,\"message\":\"\\u062a\\u0645 \\u062d\\u062c\\u0632 \\u0645\\u0648\\u0639\\u062f \\u0645\\u0646 \\u0642\\u0628\\u0644  \",\"photo\":\"1636471957.jpeg\",\"title\":null,\"data\":null}', NULL, '2021-11-10 08:42:06', '2021-11-10 08:42:06'),
('4cc95d5f-2175-4632-8d21-5197df29d687', 'App\\Notifications\\PatientNewNotification', 'App\\Patient', 10, '{\"name\":\"\\u062a\\u0627\\u0644\\u064a\\u0629\",\"id\":10,\"message\":\"\\u062a\\u0645 \\u062d\\u062c\\u0632 \\u0645\\u0648\\u0639\\u062f \\u0645\\u0646 \\u0642\\u0628\\u0644  \",\"photo\":\"1627551734.jpg\",\"title\":null,\"data\":null}', NULL, '2021-08-09 15:39:31', '2021-08-09 15:39:31'),
('4ce9301a-9539-40b4-8e43-2124269412a2', 'App\\Notifications\\PatientNewNotification', 'App\\Patient', 69, '{\"name\":\"\\u0627\\u062d\\u0645\\u062f\",\"id\":69,\"message\":\"\\u062a\\u0645 \\u062d\\u062c\\u0632 \\u0645\\u0648\\u0639\\u062f \\u0645\\u0646 \\u0642\\u0628\\u0644  \",\"photo\":\"1636471957.jpeg\",\"title\":null,\"data\":null}', NULL, '2021-11-17 15:46:07', '2021-11-17 15:46:07'),
('5c49fcf5-4d92-4f8e-948d-807046c5afd8', 'App\\Notifications\\PatientNewNotification', 'App\\Patient', 10, '{\"name\":\"\\u062a\\u0627\\u0644\\u064a\\u0629\",\"id\":10,\"message\":\"\\u062a\\u0645 \\u062d\\u062c\\u0632 \\u0645\\u0648\\u0639\\u062f \\u0645\\u0646 \\u0642\\u0628\\u0644  \",\"photo\":\"1627551734.jpg\",\"title\":null,\"data\":null}', NULL, '2021-07-29 17:04:21', '2021-07-29 17:04:21'),
('5da92ac7-eb67-4034-ba65-6953ec225bba', 'App\\Notifications\\DoctorNewNotification', 'App\\Doctor', 1, '{\"name\":\"hamada\",\"id\":1,\"message\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0645\\u0642\\u0627\\u0644 \\u0645\\u0646 \\u0642\\u0628\\u0644  \",\"photo\":\"1636470345.jpeg\",\"title\":\"Jhb\",\"data\":\"subs\"}', NULL, '2022-10-16 12:16:16', '2022-10-16 12:16:16'),
('5f49f55b-5ffd-4984-8dd4-b378296d2869', 'App\\Notifications\\PatientNewNotification', 'App\\Patient', 7, '{\"name\":\"hamada\",\"id\":7,\"message\":\"\\u062a\\u0645 \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0645\\u0631\\u064a\\u0636 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0627\\u0633\\u0645\",\"photo\":\"profile_image.png\",\"title\":null,\"data\":null}', NULL, '2021-07-29 06:39:47', '2021-07-29 06:39:47'),
('60370586-77b6-4ae5-ad47-af8df176acb9', 'App\\Notifications\\PatientNewNotification', 'App\\Patient', 11, '{\"name\":\"\\u0627\\u0646\\u0633\",\"id\":11,\"message\":\"\\u062a\\u0645 \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0645\\u0631\\u064a\\u0636 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0627\\u0633\\u0645\",\"photo\":\"profile_image.png\",\"title\":null,\"data\":null}', NULL, '2021-07-29 20:08:13', '2021-07-29 20:08:13'),
('625affd9-e73c-4b1e-b806-bf3c2cdaf6e4', 'App\\Notifications\\PatientNewNotification', 'App\\Patient', 10, '{\"name\":\"\\u062a\\u0627\\u0644\\u064a\\u0629\",\"id\":10,\"message\":\"\\u062a\\u0645 \\u062d\\u062c\\u0632 \\u0645\\u0648\\u0639\\u062f \\u0645\\u0646 \\u0642\\u0628\\u0644  \",\"photo\":\"1627551734.jpg\",\"title\":null,\"data\":null}', NULL, '2021-08-22 21:17:56', '2021-08-22 21:17:56'),
('62be095e-0ad5-43fa-afe0-1d177519dce3', 'App\\Notifications\\PatientNewNotification', 'App\\Patient', 71, '{\"name\":\"\\u062e\\u0627\\u0644\\u062f\",\"id\":71,\"message\":\"\\u062a\\u0645 \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0645\\u0631\\u064a\\u0636 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0627\\u0633\\u0645\",\"photo\":\"profile_image.png\",\"title\":null,\"data\":null}', NULL, '2022-10-15 18:44:53', '2022-10-15 18:44:53'),
('64a37ac8-ccda-4684-8c99-3a04d2b66a05', 'App\\Notifications\\DoctorNewNotification', 'App\\Doctor', 6, '{\"name\":\"Moh\",\"id\":6,\"message\":\"\\u062a\\u0645 \\u062a\\u0633\\u062c\\u064a\\u0644 \\u062f\\u0643\\u062a\\u0648\\u0631 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0623\\u0633\\u0645  \",\"photo\":\"profile_image.png\",\"title\":null,\"data\":null}', '2021-07-29 14:33:38', '2021-07-29 08:05:49', '2021-07-29 14:33:38'),
('67c07c56-940e-4ccd-8384-bfb645c3237f', 'App\\Notifications\\PatientNewNotification', 'App\\Patient', 10, '{\"name\":\"\\u062a\\u0627\\u0644\\u064a\\u0629\",\"id\":10,\"message\":\"\\u062a\\u0645 \\u062d\\u062c\\u0632 \\u0645\\u0648\\u0639\\u062f \\u0645\\u0646 \\u0642\\u0628\\u0644  \",\"photo\":\"1627551734.jpg\",\"title\":null,\"data\":null}', NULL, '2021-08-12 06:36:32', '2021-08-12 06:36:32'),
('9bfbbc0f-694e-4ba2-893e-2decf82fea21', 'App\\Notifications\\DoctorNewNotification', 'App\\Doctor', 9, '{\"name\":\"myphone id76562\",\"id\":9,\"message\":\"\\u062a\\u0645 \\u062a\\u0633\\u062c\\u064a\\u0644 \\u062f\\u0643\\u062a\\u0648\\u0631 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0623\\u0633\\u0645  \",\"photo\":\"profile_image.png\",\"title\":null,\"data\":null}', NULL, '2022-10-16 12:30:12', '2022-10-16 12:30:12'),
('9e8517be-995e-40c4-8df4-c024ad61ea50', 'App\\Notifications\\PatientNewNotification', 'App\\Patient', 10, '{\"name\":\"\\u062a\\u0627\\u0644\\u064a\\u0629\",\"id\":10,\"message\":\"\\u062a\\u0645 \\u062d\\u062c\\u0632 \\u0645\\u0648\\u0639\\u062f \\u0645\\u0646 \\u0642\\u0628\\u0644  \",\"photo\":\"1627551734.jpg\",\"title\":null,\"data\":null}', NULL, '2021-08-08 19:51:52', '2021-08-08 19:51:52'),
('a12a4201-aa91-4c08-b5fe-78b69efac511', 'App\\Notifications\\DoctorNewNotification', 'App\\Doctor', 8, '{\"name\":\"myphone id76562\",\"id\":8,\"message\":\"\\u062a\\u0645 \\u062a\\u0633\\u062c\\u064a\\u0644 \\u062f\\u0643\\u062a\\u0648\\u0631 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0623\\u0633\\u0645  \",\"photo\":\"profile_image.png\",\"title\":null,\"data\":null}', NULL, '2022-10-16 12:26:48', '2022-10-16 12:26:48'),
('ae9080e6-8c70-42f4-9d70-5547f1f87bcc', 'App\\Notifications\\PatientNewNotification', 'App\\Patient', 9, '{\"name\":\"\\u0636\\u064a\\u0627\\u0621\",\"id\":9,\"message\":\"\\u062a\\u0645 \\u062d\\u062c\\u0632 \\u0645\\u0648\\u0639\\u062f \\u0645\\u0646 \\u0642\\u0628\\u0644  \",\"photo\":\"1627577186.jpg\",\"title\":null,\"data\":null}', NULL, '2021-07-29 20:25:12', '2021-07-29 20:25:12'),
('b3d7498b-e65d-4db3-9f18-7bc4fe7f5dc6', 'App\\Notifications\\PatientNewNotification', 'App\\Patient', 10, '{\"name\":\"\\u062a\\u0627\\u0644\\u064a\\u0629\",\"id\":10,\"message\":\"\\u062a\\u0645 \\u062d\\u062c\\u0632 \\u0645\\u0648\\u0639\\u062f \\u0645\\u0646 \\u0642\\u0628\\u0644  \",\"photo\":\"1627551734.jpg\",\"title\":null,\"data\":null}', NULL, '2021-08-05 17:56:31', '2021-08-05 17:56:31'),
('b55e27de-40fd-48dc-b1c9-5c61d1b1e049', 'App\\Notifications\\PatientNewNotification', 'App\\Patient', 10, '{\"name\":\"\\u062a\\u0627\\u0644\\u064a\\u0629\",\"id\":10,\"message\":\"\\u062a\\u0645 \\u062d\\u062c\\u0632 \\u0645\\u0648\\u0639\\u062f \\u0645\\u0646 \\u0642\\u0628\\u0644  \",\"photo\":\"1627551734.jpg\",\"title\":null,\"data\":null}', NULL, '2021-08-22 06:27:03', '2021-08-22 06:27:03'),
('bb61ffd6-959f-49a2-9c84-27ab0618e9f6', 'App\\Notifications\\PatientNewNotification', 'App\\Patient', 12, '{\"name\":\"\\u0645\\u062d\\u0645\\u062f\",\"id\":12,\"message\":\"\\u062a\\u0645 \\u062d\\u062c\\u0632 \\u0645\\u0648\\u0639\\u062f \\u0645\\u0646 \\u0642\\u0628\\u0644  \",\"photo\":\"1627629846.png\",\"title\":null,\"data\":null}', NULL, '2021-07-30 12:46:45', '2021-07-30 12:46:45'),
('bddb7258-03ee-4922-954d-b65af1037194', 'App\\Notifications\\PatientNewNotification', 'App\\Patient', 10, '{\"name\":\"\\u062a\\u0627\\u0644\\u064a\\u0629\",\"id\":10,\"message\":\"\\u062a\\u0645 \\u062d\\u062c\\u0632 \\u0645\\u0648\\u0639\\u062f \\u0645\\u0646 \\u0642\\u0628\\u0644  \",\"photo\":\"1627551734.jpg\",\"title\":null,\"data\":null}', NULL, '2021-08-11 15:45:16', '2021-08-11 15:45:16'),
('bfa58e9c-56d8-4d84-9900-76c72b8840a0', 'App\\Notifications\\PatientNewNotification', 'App\\Patient', 1, '{\"name\":\"rgetg\",\"id\":1,\"message\":\"\\u062a\\u0645 \\u062d\\u062c\\u0632 \\u0645\\u0648\\u0639\\u062f \\u0645\\u0646 \\u0642\\u0628\\u0644  \",\"photo\":\"1626682451.jpeg\",\"title\":null,\"data\":null}', NULL, '2021-08-11 10:38:50', '2021-08-11 10:38:50'),
('cbfe3036-98cd-4628-b760-b187ff17a50b', 'App\\Notifications\\PatientNewNotification', 'App\\Patient', 10, '{\"name\":\"\\u062a\\u0627\\u0644\\u064a\\u0629\",\"id\":10,\"message\":\"\\u062a\\u0645 \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0645\\u0631\\u064a\\u0636 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0627\\u0633\\u0645\",\"photo\":\"profile_image.png\",\"title\":null,\"data\":null}', '2021-07-29 14:33:59', '2021-07-29 07:56:59', '2021-07-29 14:33:59'),
('dbdff4bf-d1a2-4ae3-b702-d4c0bc5e7c36', 'App\\Notifications\\PatientNewNotification', 'App\\Patient', 10, '{\"name\":\"\\u062a\\u0627\\u0644\\u064a\\u0629\",\"id\":10,\"message\":\"\\u062a\\u0645 \\u062d\\u062c\\u0632 \\u0645\\u0648\\u0639\\u062f \\u0645\\u0646 \\u0642\\u0628\\u0644  \",\"photo\":\"1627551734.jpg\",\"title\":null,\"data\":null}', NULL, '2021-08-11 15:24:16', '2021-08-11 15:24:16'),
('de278efd-7ebc-4070-89f7-028f399c9910', 'App\\Notifications\\DoctorNewNotification', 'App\\Doctor', 7, '{\"name\":\"diaa\",\"id\":7,\"message\":\"\\u062a\\u0645 \\u062a\\u0633\\u062c\\u064a\\u0644 \\u062f\\u0643\\u062a\\u0648\\u0631 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0623\\u0633\\u0645  \",\"photo\":\"profile_image.png\",\"title\":null,\"data\":null}', '2022-01-24 12:42:29', '2021-07-29 16:48:02', '2022-01-24 12:42:29'),
('e6affea6-0c08-4180-9720-72b2bd8675a4', 'App\\Notifications\\PatientNewNotification', 'App\\Patient', 10, '{\"name\":\"\\u062a\\u0627\\u0644\\u064a\\u0629\",\"id\":10,\"message\":\"\\u062a\\u0645 \\u062d\\u062c\\u0632 \\u0645\\u0648\\u0639\\u062f \\u0645\\u0646 \\u0642\\u0628\\u0644  \",\"photo\":\"1627551734.jpg\",\"title\":null,\"data\":null}', NULL, '2021-08-04 13:44:26', '2021-08-04 13:44:26'),
('f02241e2-5390-40bd-9659-df6c0d492d46', 'App\\Notifications\\PatientNewNotification', 'App\\Patient', 69, '{\"name\":\"\\u0627\\u062d\\u0645\\u062f\",\"id\":69,\"message\":\"\\u062a\\u0645 \\u062d\\u062c\\u0632 \\u0645\\u0648\\u0639\\u062f \\u0645\\u0646 \\u0642\\u0628\\u0644  \",\"photo\":\"1636471957.jpeg\",\"title\":null,\"data\":null}', NULL, '2021-11-21 12:38:44', '2021-11-21 12:38:44'),
('f7a9299d-6a18-4817-a1a4-3d4740179499', 'App\\Notifications\\PatientNewNotification', 'App\\Patient', 70, '{\"name\":\"\\u0639\\u0644\\u064a\",\"id\":70,\"message\":\"\\u062a\\u0645 \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0645\\u0631\\u064a\\u0636 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0627\\u0633\\u0645\",\"photo\":\"profile_image.png\",\"title\":null,\"data\":null}', NULL, '2021-12-29 22:22:15', '2021-12-29 22:22:15'),
('fd96fc62-24d3-4d65-ba9d-a5375ea163fd', 'App\\Notifications\\PatientNewNotification', 'App\\Patient', 10, '{\"name\":\"\\u062a\\u0627\\u0644\\u064a\\u0629\",\"id\":10,\"message\":\"\\u062a\\u0645 \\u062d\\u062c\\u0632 \\u0645\\u0648\\u0639\\u062f \\u0645\\u0646 \\u0642\\u0628\\u0644  \",\"photo\":\"profile_image.png\",\"title\":null,\"data\":null}', '2021-07-29 14:33:59', '2021-07-29 09:25:51', '2021-07-29 14:33:59'),
('ff38dff0-2a14-4c43-ac17-e307225b41f7', 'App\\Notifications\\PatientNewNotification', 'App\\Patient', 69, '{\"name\":\"\\u0627\\u062d\\u0645\\u062f\",\"id\":69,\"message\":\"\\u062a\\u0645 \\u062d\\u062c\\u0632 \\u0645\\u0648\\u0639\\u062f \\u0645\\u0646 \\u0642\\u0628\\u0644  \",\"photo\":\"1636471957.jpeg\",\"title\":null,\"data\":null}', NULL, '2022-10-19 12:36:27', '2022-10-19 12:36:27');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctorId` bigint(20) UNSIGNED NOT NULL,
  `offer_name_ar` varchar(255) DEFAULT NULL,
  `offer_name_en` varchar(255) DEFAULT NULL,
  `description_ar` text DEFAULT NULL,
  `description_en` text DEFAULT NULL,
  `old_price` int(11) DEFAULT NULL,
  `new_price` int(11) DEFAULT NULL,
  `percent` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `type` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `doctorId`, `offer_name_ar`, `offer_name_en`, `description_ar`, `description_en`, `old_price`, `new_price`, `percent`, `image`, `type`, `created_at`, `updated_at`) VALUES
(46, 1, 'اسم العرض', 'offer name', 'لوريم  لوريم', 'lorem lorem', 1000, 305, '69', '1636531426.jpeg', 'reveal', '2021-07-25 18:51:25', '2022-10-16 12:37:04'),
(47, 1, 'جلسة ليزر منطقة واحده كلاريتي', 'One area laser session, Clarity', 'تمتعي بأفضل عروض ليزر إزالة الشعر مع افضل أجهزة لليزر ، جهاز كلاريتي التقنية الاحدث والاذكى واسرع بـ45% ويعمل بتقنية التبريد ويناسب جميع أنواع الشعر الخفيف والكثيف ، ولجميع درجات لون البشرة.', 'Enjoy the best offers of laser hair removal with the best laser devices, the latest, smarter, and faster technology Clarity device that is 45% faster and works with cooling technology and is suitable for all types of light and thick hair, and for all skin tones.', 70, 30, '57', NULL, 'خدمة واحدة', '2021-07-26 11:03:07', '2021-11-10 08:29:47');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name_ar` varchar(255) DEFAULT NULL,
  `last_name_ar` varchar(255) DEFAULT NULL,
  `first_name_en` varchar(255) DEFAULT NULL,
  `last_name_en` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `photo` text DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `dateOfBirth` varchar(255) DEFAULT NULL,
  `lastVisit` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `paid` varchar(255) DEFAULT NULL,
  `is_activated` tinyint(4) NOT NULL DEFAULT 0,
  `token` text DEFAULT NULL,
  `device_token` text DEFAULT NULL,
  `remember_token` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `first_name_ar`, `last_name_ar`, `first_name_en`, `last_name_en`, `email`, `password`, `mobile`, `photo`, `gender`, `dateOfBirth`, `lastVisit`, `status`, `paid`, `is_activated`, `token`, `device_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'hamada', '1234', 'myphone id765622iii', 'wfwef', 'admrrhhheerttti@iuyyyhrhhhfr.comgggg', '$2y$10$cwn.TrHxCkQnr.7I92VI4eZH12UZxOUTNsWGb1Cw.avTCvdjqNYbW', '5367', '1636471979.jpeg', 'Male', '2020-12-01', NULL, 1, NULL, 0, NULL, NULL, NULL, '2021-07-29 06:27:13', '2021-11-09 15:32:59'),
(9, 'ضياء', 'سمير', 'diaa', 'samir', 'diaasamir80@gmail.com', '$2y$10$enNhDv32fsyGFRv4R6dNweEvW6A//KklRaDVRedsLeGVxvdTLidzq', '0546974869', '1636472015.jpeg', 'Male', '1987-07-01', NULL, 1, NULL, 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvZmluZGZhbWlseS5uZXRcL3RlbXBsYXRlXC9ib290c3RyYXBcL3RlbXBsYXRlLXJ0bFwvYXBpXC92MVwvcGF0aWVudFwvbG9naW4iLCJpYXQiOjE2Mjg2OTkyODYsImV4cCI6MTYyODcwMjg4NiwibmJmIjoxNjI4Njk5Mjg2LCJqdGkiOiJNeGNqT2NMOEhXY0t6TXVEIiwic3ViIjo5LCJwcnYiOiIxZmQ1NDIzMTYyOGZlNzQ5N2RiNmY5MTYyYzI0NjU3OGE3Yzc4MWNhIn0.54nPc5QKYUyqwKcxoL_odTi_JpvbQ-_s6wuZOoJzxMY', 'c3LYhNHXvAA:APA91bFoSS0ZXZExrX2_IcLUwqEKZtZhrqb5ObKVPo2d0SRigCma9uOyDTJdG3LhXXAkIB2d-7Rkp5c2r03ahpDcY7RrLEV-pljwX2Kacq9FQoaBIykq4H2x6VmarOKJRIKZpzkxMRl1', NULL, '2021-07-29 06:59:11', '2021-11-09 15:33:35'),
(10, 'تالية', 'محمد', 'Talya', 'Moh', 'Mohmonja@gmail.com', '$2y$10$HDHKZrSnImKBf5f5BTHHf.NCYSnQx.FrR5fCzAjH8HkrWHQQOXE0e', '0568645742', '1627551734.jpg', 'Male', '2021-07-29', NULL, 1, NULL, 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvZmluZGZhbWlseS5uZXRcL3RlbXBsYXRlXC9ib290c3RyYXBcL3RlbXBsYXRlLXJ0bFwvYXBpXC92MVwvcGF0aWVudFwvbG9naW4iLCJpYXQiOjE2Mjk2OTkwMDAsImV4cCI6MTYyOTcwMjYwMCwibmJmIjoxNjI5Njk5MDAwLCJqdGkiOiJYQ2VEZk9TRFowZXNOMzh2Iiwic3ViIjoxMCwicHJ2IjoiMWZkNTQyMzE2MjhmZTc0OTdkYjZmOTE2MmMyNDY1NzhhN2M3ODFjYSJ9.0eB4yDME9jaCSJbV5-2I3d9gvVJfPwIZWpuNxnltbiM', 'e8YmrKWHTSWCo_2ADawNOD:APA91bEvpf9DiRd6bdxJPW--U2rgkqw6uU7M-XAKVmsZhCK2M2iBaRlVn0y8eGOJQVi_o3Id6e4Lett37eg_ShIbytZKqr_TDtQLlD--q7IU8Ww2Bi6P-YWPN5Iw0DJG8ZkpsCZOcdtq', NULL, '2021-07-29 07:56:59', '2021-08-23 06:10:00'),
(12, 'محمد', 'عمر', 'Mohammed', 'Omer', 'mohammed.work44@gmail.com', '$2y$10$qQt2rgdPxeCjNIfB6N4qfOKPJr/7lLUdZEJF0wplEwOw8E6S6lqPG', '0568645742', '1627629846.png', 'Male', '2021-07-30', NULL, 1, NULL, 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvZmluZGZhbWlseS5uZXRcL3RlbXBsYXRlXC9ib290c3RyYXBcL3RlbXBsYXRlLXJ0bFwvYXBpXC92MVwvcGF0aWVudFwvbG9naW4iLCJpYXQiOjE2Mjc2NTI2NjEsImV4cCI6MTYyNzY1NjI2MSwibmJmIjoxNjI3NjUyNjYxLCJqdGkiOiJRY2puVkZHbVBlVnJKZHpFIiwic3ViIjoxMiwicHJ2IjoiMWZkNTQyMzE2MjhmZTc0OTdkYjZmOTE2MmMyNDY1NzhhN2M3ODFjYSJ9.D_jd9hcuqYa9QhiVgJKslRpZ4BFHV03Sgo8052QSl5E', 'fuT5R6M5mGk:APA91bFkKVTeb1GhWHlt6M423mdtQ0iNn0zOf5buIAGQzab7Ax-regpskXGl7FgJ3TMYUU9mAMkE_75j_5aI4Cr40eZ7WbS4q-NFGrOwDJ_4vfPCMfwqvKRyFdn7_ORHjolqKxMzLlAc', NULL, '2021-07-30 07:24:06', '2021-07-30 13:44:21'),
(69, 'احمد', 'علي', 'ahmed', 'ali', 'hamadaali221133@gmail.com', '$2y$10$v8B8idYHemGAR9EflO7MhebBTSKNWhvmQuqpxrQm0lCUFrRRIcm2m', '4253', '1636471957.jpeg', 'Male', '2021-07-06', NULL, 1, NULL, 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9iZWF1dGloZWF0aC5jb21cL3N1YlwvdGVtcGxhdGVcL2Jvb3RzdHJhcFwvdGVtcGxhdGUtcnRsXC9hcGlcL3YxXC9wYXRpZW50XC9sb2dpbiIsImlhdCI6MTY2NjAwNjY5NiwiZXhwIjoxNjY2MDEwMjk2LCJuYmYiOjE2NjYwMDY2OTYsImp0aSI6IlNRRVBvdnRDY25QckdiME4iLCJzdWIiOjY5LCJwcnYiOiIxZmQ1NDIzMTYyOGZlNzQ5N2RiNmY5MTYyYzI0NjU3OGE3Yzc4MWNhIn0.D6JT36-LauRGS97XVL9p9AA5IdIdkBX65wkzSFkKgJY', 'fIfRAGOAwds:APA91bHgH7fV2GEVD8MBdvl6TZlXHpkry4_PWgkpfa04nTPpS7DMuJYQ-8jlaRrVfepiyYe4_DEWQ3sgMXuD3k18jttIvmwOeZ4ZYCAQBsVNHnRssIiUJFRZXc7Of_-rlaqI5gY3T60z', NULL, '2021-07-19 08:14:11', '2022-10-17 15:38:16'),
(70, 'علي', 'سالم', 'Ali', 'salem', 'falahkh@yahoo.com', '$2y$10$1G0fN7gIn7.X3KFFRtxU7ewB.vQ/KAyHpR.ud6LX25oO/kgls4nAC', '0534066660', 'profile_image.png', 'Male', '1993-12-22 00:00:00.000', NULL, 1, NULL, 0, NULL, NULL, NULL, '2021-12-29 22:22:15', '2021-12-29 22:22:15'),
(71, 'خالد', 'Khaled ‎', 'sayed', 'Mohamed ‎', 'khaled.s.abdellah@gmail.com', '$2y$10$v8B8idYHemGAR9EflO7MhebBTSKNWhvmQuqpxrQm0lCUFrRRIcm2m', '0112158093', 'profile_image.png', 'Male', '2022-10-19 00:00:00.000', NULL, 1, NULL, 0, NULL, NULL, NULL, '2022-10-15 18:44:53', '2022-10-15 18:44:53');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctorId` int(11) NOT NULL,
  `patientId` int(11) NOT NULL,
  `appointmentId` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `cvc` varchar(255) DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `amount` int(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `doctorId`, `patientId`, `appointmentId`, `type`, `company`, `name`, `number`, `cvc`, `month`, `year`, `date`, `time`, `amount`, `created_at`, `updated_at`) VALUES
(3, 1, 69, 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19', '11:36:00', 3, '2022-10-19 12:36:27', '2022-10-19 12:36:27');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'c', 'web', '2021-01-03 03:41:33', '2021-01-03 03:41:33'),
(2, 'doctors', 'web', '2021-01-03 03:41:33', '2021-01-03 03:41:33'),
(3, 'الفواتير المدفوعة', 'web', '2021-01-03 03:41:33', '2021-01-03 03:41:33'),
(4, 'الفواتير المدفوعة جزئيا', 'web', '2021-01-03 03:41:33', '2021-01-03 03:41:33'),
(5, 'الفواتير الغير مدفوعة', 'web', '2021-01-03 03:41:33', '2021-01-03 03:41:33'),
(6, 'ارشيف الفواتير', 'web', '2021-01-03 03:41:33', '2021-01-03 03:41:33'),
(7, 'التقارير', 'web', '2021-01-03 03:41:33', '2021-01-03 03:41:33'),
(8, 'تقرير الفواتير', 'web', '2021-01-03 03:41:33', '2021-01-03 03:41:33'),
(9, 'تقرير العملاء', 'web', '2021-01-03 03:41:33', '2021-01-03 03:41:33'),
(10, 'المستخدمين', 'web', '2021-01-03 03:41:33', '2021-01-03 03:41:33'),
(11, 'قائمة المستخدمين', 'web', '2021-01-03 03:41:33', '2021-01-03 03:41:33'),
(12, 'صلاحيات المستخدمين', 'web', '2021-01-03 03:41:33', '2021-01-03 03:41:33'),
(13, 'الاعدادات', 'web', '2021-01-03 03:41:33', '2021-01-03 03:41:33'),
(14, 'المنتجات', 'web', '2021-01-03 03:41:33', '2021-01-03 03:41:33'),
(15, 'الاقسام', 'web', '2021-01-03 03:41:33', '2021-01-03 03:41:33'),
(16, 'اضافة فاتورة', 'web', '2021-01-03 03:41:33', '2021-01-03 03:41:33'),
(17, 'حذف الفاتورة', 'web', '2021-01-03 03:41:33', '2021-01-03 03:41:33'),
(18, 'تصدير EXCEL', 'web', '2021-01-03 03:41:33', '2021-01-03 03:41:33'),
(19, 'تغير حالة الدفع', 'web', '2021-01-03 03:41:33', '2021-01-03 03:41:33'),
(20, 'تعديل الفاتورة', 'web', '2021-01-03 03:41:33', '2021-01-03 03:41:33'),
(21, 'ارشفة الفاتورة', 'web', '2021-01-03 03:41:33', '2021-01-03 03:41:33'),
(22, 'طباعةالفاتورة', 'web', '2021-01-03 03:41:33', '2021-01-03 03:41:33'),
(23, 'اضافة مرفق', 'web', '2021-01-03 03:41:34', '2021-01-03 03:41:34'),
(24, 'حذف المرفق', 'web', '2021-01-03 03:41:34', '2021-01-03 03:41:34'),
(25, 'اضافة مستخدم', 'web', '2021-01-03 03:41:34', '2021-01-03 03:41:34'),
(26, 'تعديل مستخدم', 'web', '2021-01-03 03:41:34', '2021-01-03 03:41:34'),
(27, 'حذف مستخدم', 'web', '2021-01-03 03:41:34', '2021-01-03 03:41:34'),
(28, 'عرض صلاحية', 'web', '2021-01-03 03:41:34', '2021-01-03 03:41:34'),
(29, 'اضافة صلاحية', 'web', '2021-01-03 03:41:34', '2021-01-03 03:41:34'),
(30, 'تعديل صلاحية', 'web', '2021-01-03 03:41:34', '2021-01-03 03:41:34'),
(31, 'حذف صلاحية', 'web', '2021-01-03 03:41:34', '2021-01-03 03:41:34'),
(32, 'اضافة منتج', 'web', '2021-01-03 03:41:34', '2021-01-03 03:41:34'),
(33, 'تعديل منتج', 'web', '2021-01-03 03:41:34', '2021-01-03 03:41:34'),
(34, 'حذف منتج', 'web', '2021-01-03 03:41:34', '2021-01-03 03:41:34'),
(35, 'اضافة قسم', 'web', '2021-01-03 03:41:34', '2021-01-03 03:41:34'),
(36, 'تعديل قسم', 'web', '2021-01-03 03:41:34', '2021-01-03 03:41:34'),
(37, 'حذف قسم', 'web', '2021-01-03 03:41:34', '2021-01-03 03:41:34'),
(38, 'الاشعارات', 'web', '2021-01-03 03:41:34', '2021-01-03 03:41:34');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctorId` bigint(20) UNSIGNED NOT NULL,
  `patientId` int(11) NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `rate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `doctorId`, `patientId`, `comment`, `rate`, `date`, `created_at`, `updated_at`) VALUES
(1, 6, 10, 'vreve', '0.5', NULL, '2021-07-29 09:45:41', '2021-07-29 09:45:41'),
(2, 6, 10, 'vreve', '4.5', NULL, '2021-07-29 09:45:49', '2021-07-29 09:45:49'),
(3, 6, 10, 'جميل', '4.5', NULL, '2021-07-29 09:45:58', '2021-07-29 09:45:58'),
(4, 6, 10, 'ممتاز', '4.0', NULL, '2021-07-31 14:03:03', '2021-07-31 14:03:03'),
(5, 6, 10, 'جميل جدا', '5.5', NULL, '2021-07-31 14:14:05', '2021-07-31 14:14:05'),
(19, 7, 9, 'اااللاىة', '3.0', NULL, '2021-08-04 14:41:57', '2021-08-04 14:41:57'),
(20, 7, 9, 'الالا', '2.5', NULL, '2021-08-04 14:42:18', '2021-08-04 14:42:18'),
(21, 7, 9, 'لللااهههههه', '3.5', NULL, '2021-08-04 14:43:03', '2021-08-04 14:43:03'),
(42, 6, 10, 'ةاتتتت', '3.0', NULL, '2021-08-04 16:09:18', '2021-08-04 16:09:18'),
(43, 6, 10, 'اااا', '2.5', NULL, '2021-08-04 16:09:25', '2021-08-04 16:09:25'),
(44, 6, 10, 'اتت', '0.0', NULL, '2021-08-04 16:09:36', '2021-08-04 16:09:36'),
(45, 6, 10, 'ووو', '1.5', NULL, '2021-08-04 16:09:43', '2021-08-04 16:09:43'),
(56, 7, 9, NULL, '3.0', NULL, '2021-08-05 17:41:55', '2021-08-05 17:41:55'),
(57, 6, 10, 'اوكي', '3.5', NULL, '2021-08-11 16:07:40', '2021-08-11 16:07:40'),
(58, 6, 9, NULL, '4.5', NULL, '2021-08-12 06:27:02', '2021-08-12 06:27:02'),
(59, 6, 9, '٣٣٣٣', '0.0', NULL, '2021-08-12 06:27:10', '2021-08-12 06:27:10');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2021-01-03 03:43:48', '2021-01-03 03:43:48'),
(2, 'editor', 'web', '2021-01-09 07:52:49', '2021-01-09 07:52:49');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 4),
(2, 1),
(2, 4),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(1, 2),
(2, 2),
(37, 2);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctorId` bigint(20) UNSIGNED NOT NULL,
  `services_name_ar` varchar(255) DEFAULT NULL,
  `services_name_en` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `duration` varchar(255) DEFAULT NULL,
  `icon` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `doctorId`, `services_name_ar`, `services_name_en`, `price`, `type`, `status`, `duration`, `icon`, `created_at`, `updated_at`) VALUES
(1, 1, 'استشارة فيديو \r\n', 'Video consultation', 20, 'Video', 1, NULL, NULL, '2021-07-18 18:44:05', '2021-07-30 15:15:26'),
(2, 1, 'استشارة في العيادة\r\n', 'clinic Consultation\r\n', 3, 'reavel', 1, NULL, NULL, '2021-07-18 18:44:05', '2021-07-30 15:15:26'),
(5, 5, 'استشارة فيديو', 'Video consultation', 3, 'Video', 1, NULL, NULL, '2021-07-29 06:34:06', '2021-07-29 06:34:06'),
(6, 5, 'استشارة في العيادة\r\n', 'clinic Consultation\r\n', 3, 'reavel', 1, NULL, NULL, '2021-07-29 06:34:06', '2021-07-29 06:34:06'),
(7, 6, 'استشارة فيديو', 'Video consultation', 150, 'Video', 1, NULL, NULL, '2021-07-29 08:05:50', '2021-07-29 08:11:42'),
(8, 6, 'استشارة في العيادة\r\n', 'clinic Consultation\r\n', 200, 'reavel', 1, NULL, NULL, '2021-07-29 08:05:50', '2021-07-29 08:11:42'),
(9, 7, 'استشارة فيديو', 'Video consultation', 150, 'Video', 1, NULL, NULL, '2021-07-29 16:48:05', '2021-07-29 16:51:03'),
(10, 7, 'استشارة في العيادة\r\n', 'clinic Consultation\r\n', 50, 'reavel', 1, NULL, NULL, '2021-07-29 16:48:05', '2021-07-29 16:51:03'),
(11, 9, 'استشارة فيديو', 'Video consulting', 3, 'Video', 0, NULL, NULL, '2022-10-16 12:30:12', '2022-10-16 12:30:12'),
(12, 9, 'كشف ف العيادة', 'Examination in the clinic', 3, 'reavel', 0, NULL, NULL, '2022-10-16 12:30:12', '2022-10-16 12:30:12'),
(13, 10, 'استشارة فيديو', 'Video consulting', 3, 'Video', 0, NULL, NULL, '2022-10-16 12:32:18', '2022-10-16 12:32:18'),
(14, 10, 'كشف ف العيادة', 'Examination in the clinic', 3, 'reavel', 0, NULL, NULL, '2022-10-16 12:32:18', '2022-10-16 12:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `description_ar` text DEFAULT NULL,
  `description_en` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title_ar`, `title_en`, `description_ar`, `description_en`, `image`, `created_at`, `updated_at`) VALUES
(1, 'geqtfqe', 'cwcew', 'wcew', 'cwec', '1636470780.jpeg', '2021-07-24 07:04:18', '2021-11-09 15:13:00'),
(2, 'fevsd', 'vdsv', 'vsd', 'vsd', '1636470792.jpeg', '2021-07-24 15:13:45', '2021-11-09 15:13:12'),
(3, 'vsd', 'vfsvsf', 'vds', 'sdvsd', '1627139639.jpeg', '2021-07-24 15:13:59', '2021-07-24 15:13:59'),
(4, 's c', 'dsfdvd', 'vdvdf', 'vdfvfdvd', '1627139720.jpeg', '2021-07-24 15:15:20', '2021-07-24 15:15:20'),
(5, 'hh', 'Slider One Title', 'وصف', 'desc', '1627580352.jpg', '2021-07-29 17:39:12', '2021-07-29 17:39:12');

-- --------------------------------------------------------

--
-- Table structure for table `specialities`
--

CREATE TABLE `specialities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `description_ar` text DEFAULT NULL,
  `description_en` text DEFAULT NULL,
  `icon` text DEFAULT NULL,
  `top` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `specialities`
--

INSERT INTO `specialities` (`id`, `name_ar`, `name_en`, `description_ar`, `description_en`, `icon`, `top`, `created_at`, `updated_at`) VALUES
(1, 'اسنان', 'Teeth', NULL, NULL, '1636469924.png', 1, '2021-07-18 18:41:43', '2021-11-09 14:58:44'),
(2, 'جلدية', 'Derm', NULL, NULL, '1636469959.png', 1, '2021-07-29 14:35:07', '2021-11-09 14:59:19'),
(3, 'باطني', 'interior', NULL, NULL, '1636625808.png', 1, '2021-07-29 14:35:07', '2021-11-11 10:16:48'),
(4, 'العظام', 'orthopedic', NULL, NULL, '1636626753.png', 1, '2021-07-29 14:35:07', '2021-11-11 10:32:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `photo` text DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'admin',
  `roles_name` text NOT NULL,
  `Status` varchar(10) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `expire` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=>active 1=>expire',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `dateOfBirth`, `mobile`, `address`, `photo`, `type`, `roles_name`, `Status`, `remember_token`, `expire`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$10$v8B8idYHemGAR9EflO7MhebBTSKNWhvmQuqpxrQm0lCUFrRRIcm2m', NULL, '023454', 'القاهره', '1613493502.png', 'admin', '[\"owner\"]', 'مفعل', NULL, 1, '2021-01-03 03:43:48', '2021-06-29 05:10:02'),
(2, 'hamada', 'hamada@hamada.com', '$2y$10$bOrXfCIhO5mCFWHeNoPNKuPHfpNxduJn4QDKGuZsnj72RPzSOTZK2', NULL, NULL, NULL, NULL, 'admin', '[\"employee\"]', 'مفعل', NULL, 1, '2021-01-03 07:02:34', '2021-06-29 05:10:02'),
(3, 'Diaa', 'diaa@gmail.com', '$2y$10$Yc7zKvx/Tf9Cc1jb3qhxre9V9KUOV3ntaWRq3J140n8zA.fSpmzeu', '2021-04-18', '0568645742', 'hail', '1618695044.png', 'admin', '[\"Admin\"]', 'مفعل', NULL, 1, '2021-04-17 19:30:44', '2021-06-29 05:10:02'),
(4, 'khalid', 'khalid@gmail.com', '$2y$10$cMTJJhsHX/NiuB/XH5wI8OaGjCi1dOXP0pnMXbU4EvAz8czIt.Yqq', NULL, '0568645742', 'alazeezia', '1625121236.jpg', 'admin', '[\"Admin\"]', 'مفعل', NULL, 1, '2021-07-01 06:33:56', '2021-07-01 06:48:58');

-- --------------------------------------------------------

--
-- Table structure for table `user_activations`
--

CREATE TABLE `user_activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_activations`
--

INSERT INTO `user_activations` (`id`, `id_user`, `token`, `created_at`) VALUES
(17, 46, 'wRCUuY6p4FNsU8AkTS6lhsj3fqpnZv', '2019-07-26 15:05:12'),
(18, 47, 'aJh0nf5Qd6cF9JCvATURoKyZiLXaDC', '2019-07-26 15:06:39'),
(19, 48, 'tI8o1v3KYSkuvW4UvZlppbl1GSLAlg', '2019-07-26 15:07:35'),
(20, 49, '5znaQl1c8czNqIBK78NPQjrCjhDKbS', '2019-07-26 15:12:48'),
(21, 50, 'I9KOruqrYwyhwnETiHOQlDgkq4MGsX', '2019-07-26 15:13:38'),
(22, 51, 'rGrupyZ4pLBCH0hzzJxmWrKlYN3fX0', '2019-07-26 15:14:26'),
(23, 52, 'ldy9v4fbJLQeo602BqHoAUl63GByBy', '2019-07-26 15:16:54'),
(24, 53, 'JtMVXPqRCSXXkO82RkRvuQHacNB5o3', '2019-07-26 15:21:19'),
(25, 54, 'u8uq6TD1N35qSwzD8Y5qtcTgMFmPix', '2019-07-26 15:22:48'),
(27, 56, 'D817mWCY3ohbejmY7VqycupmCeBgRM', '2019-07-26 15:43:57'),
(28, 57, 'aAq3F7pLrXVatrRHqUbWx25riI1dTu', '2019-07-26 16:09:02'),
(30, 59, '9MnCNruNYlAg7r8NGnZCwQAFy4Jnkm', '2019-07-26 16:18:06'),
(33, 62, 'eoBEFeJ97bVdGfQxakcCtvpxZqi1it', '2019-07-31 13:58:15'),
(34, 63, 'gSMcY3YH7ih4o46xcajdxLFCeCVLrc', '2019-07-31 14:01:45'),
(35, 64, '2wggWg0km1DwoAuxGzjp5iM8CLwN4y', '2019-07-31 14:18:35'),
(36, 66, '9vTjokj1XfQ6YBrmKlHLStosu4ZlxP', '2019-07-31 14:52:39'),
(37, 68, '88vKtOb9gQHRgTURMkLNF7w2LTnfU2', '2019-08-14 08:57:57'),
(38, 69, 'HFjv33PE7cRNYbWtyKXqO75CId1pXx', '2019-08-17 18:12:01'),
(39, 71, 'IzuYfBFFNoZUJS8IVgXBTzs47hFVir', '2019-08-26 10:49:58'),
(40, 72, 'XHwBU9lKRSeCORwEWvRE0w6A5FvwUi', '2019-08-26 13:42:00'),
(41, 73, 'qqU1KuJRNTM84aL3v2qWHi66XFv77F', '2019-08-26 13:55:46'),
(42, 74, 'Pg504T5fUwsroaylcsLjlPzmSAGidW', '2019-08-26 14:07:26'),
(43, 75, 've1At2uRTu8W3XK9sfWhumU7lmJjuX', '2019-08-26 14:18:42'),
(44, 76, 'XFILt9WUndtHKinLyvwsQMYQ2t1yme', '2019-08-26 14:37:19'),
(45, 77, 'O6Dfqb2VDmIbro2aHYL1BYPSCiRG5y', '2019-08-26 14:44:15'),
(46, 78, 'XlPQiVDqLf1IT4QOP5elgWswPhk301', '2019-08-26 14:45:05'),
(47, 79, 'oUgzXqj9XIHp8Y9Ve6g4IQXe2NJDpz', '2019-08-26 14:46:39'),
(51, 83, 'XFUv8LVBvy52rESkSY0yW3jQs0EYQv', '2019-09-12 11:53:02'),
(52, 84, 'h5Vz05ZamaqQfBYifoCXOLrisFj3sU', '2019-09-12 11:54:25'),
(53, 85, 'kitHeA3OfvVNfc8A6O1eeltwtMyQhT', '2019-09-18 09:28:25'),
(55, 87, 'xBEK7PLPHzJ6iPFV3NGdyHkf8ucLBF', '2019-09-20 18:17:54'),
(57, 89, 'AtRIr7iuGKuRuv1C1emI0EeTpvfnfx', '2019-09-22 10:46:31'),
(58, 90, 'UUhU7WmsXgQHdTfzjJrAFr6071hpSv', '2019-09-23 07:23:49'),
(59, 91, 'l34hgty99FZMYVC1ZnQ2emzh57lKhf', '2019-09-24 14:07:57'),
(61, 93, 'FsN2rsEaS2BkkPeV4I6mwarIK6ooHS', '2019-10-01 12:10:26'),
(62, 94, 'S8DxkOQgFvNRhLNtBMZy16SA8cSm8l', '2019-10-01 12:10:55'),
(63, 95, '6jArwMUENPDtVw6pxa2lHdBy79ZgZN', '2019-10-01 16:54:33'),
(64, 96, '5uHL98cvPMo7DArFbKHkabfxgRzmI0', '2019-10-01 16:56:52'),
(65, 97, 'vVRcckylQloyIZVEilROsNB67n2fXM', '2019-10-01 16:57:37'),
(67, 99, 'cBPmcGEO48lAG8xvT29wXvbXCLgTRf', '2019-10-06 13:04:12'),
(68, 100, 'tJdTeWizQK8HqVazFUNnAObVPhJQGH', '2019-10-06 13:20:55'),
(69, 101, '1ozQpbPauG4JYLl8U1z5VipWcwmE9p', '2019-10-06 13:38:09'),
(70, 102, 'PBDezHw6gFkHBYZM5OpIhRsOtn9jrA', '2019-10-06 14:32:42'),
(71, 103, '4Zm6wQEx8KnP7oE4vBRxtGxDtcbXJs', '2019-10-09 16:49:45'),
(72, 104, 'YR450vdwnBytSRU62rwb6g745B57Sy', '2019-10-09 16:51:40'),
(73, 105, 'WrqHpWFSVUvaUr5icPQzI8zDZ2gaZW', '2019-10-10 11:09:47'),
(74, 106, 'souTev0X8U3DK3PgMiNZetDMZHsE9g', '2019-10-10 11:13:02'),
(76, 108, 'rtXgNdMFmgzoVUPPY2ZbHIUpa2neg4', '2019-10-13 11:24:08'),
(77, 109, 'aF88mHmPqv6RreqUmUz4GgHTLa2gqQ', '2019-10-13 14:03:10'),
(79, 111, 'p2PBn6rFQuhiToQr5ZAOEi2MHDxGuG', '2019-10-14 08:29:05'),
(80, 112, 'axR44ep4AEkaf1sTCK5s7qUDYhUwIE', '2019-10-14 08:33:51'),
(81, 114, 'ZnWezytEji1RdY9L5WJaGEO829Udel', '2019-10-14 08:46:43'),
(82, 115, 'cvD6DrT9Y8jgirJ56Ph6qi2YzZ0Rxt', '2019-10-14 08:50:58'),
(84, 117, 'mKthSBmihRwIUGtLyItDL1VmWavCXh', '2019-10-22 05:02:25'),
(85, 118, 'YZUqNyBvFxEz7AraOZfMevxH3wNwgw', '2019-10-25 14:44:54'),
(86, 122, 'wE5pJUNgOSXCzlCFlBBjNhfdy8wjV8', '2019-12-23 14:27:18'),
(87, 123, 'JgySjzbZA6fAapizsPPdjeNEr4eiL2', '2019-12-23 14:57:13'),
(88, 124, 'oTSsmcEtmYBK6kUedNwNJbTJqfaD2l', '2019-12-23 15:20:32'),
(89, 125, 'PHcpSW3Z1kNeOSDRW9jxZKroyVOw67', '2019-12-23 15:21:41'),
(90, 126, '7ioXkbjfrAM18i3xVu8KlKgLwP1gVV', '2019-12-23 15:26:30'),
(91, 127, 'OquNYgYaYB4RcB1YwOMneCowh4bFtu', '2019-12-23 15:30:27'),
(92, 128, 'KNSPjzrIMPNTE2AKZK3brQZQnMv7Js', '2019-12-23 15:48:46'),
(94, 130, 'OI6EXyxmf5lVdQa6XV1GcuaKlS1BCY', '2020-01-06 16:30:23'),
(95, 131, 'ezzIFPBrGdrtu6aTBGnwdx5Eh1o35d', '2020-01-09 12:23:13'),
(97, 18, 'Lr9A7s1DohdRxPo41S61vr6lKow7n9C0', '2021-03-08 05:43:26'),
(98, 19, 'xbkYxOaqEExohIoLvlD7691elszuhgWc', '2021-03-08 05:44:30'),
(99, 21, 'bB5krp2D1ww1QxoO0ofXnM7DDU1u5LR4', '2021-03-08 06:24:07'),
(100, 22, 'hHqFopeYzWKX71152KA9VfCGC9DVzCyF', '2021-03-08 06:24:47'),
(101, 23, '9Z45uVsiqdLsk5OyxHhOAIGgtGkmCyUT', '2021-03-08 06:26:08'),
(102, 24, 'y4wi8F5fPfF7EhaY32UmQng4DMDuVbXR', '2021-03-08 06:31:31'),
(103, 25, 'ouiDlyHVmrquSbo3zL9OfLCTpSwaAFjM', '2021-03-08 06:35:23'),
(104, 26, 'spXGUNHWgUOWVYJQu1wNyc6CcZwQVUvW', '2021-04-13 01:54:21'),
(105, 27, 'Hs6qny9ENuXTFndxEqFvLVCjUFumLkjL', '2021-04-13 01:59:13'),
(106, 28, '2HXjJ8jeaj8XUHiY9MP2dtJKNIEnW6Ib', '2021-04-13 02:02:31'),
(107, 29, 'xdKy16vIfVrI4Nx5DOxCngy8KeWP198b', '2021-04-13 02:03:33'),
(108, 30, 'uO2seA1rH8Y7d6iAjwPfibX0haR0KIsB', '2021-04-13 02:07:35'),
(109, 31, 'oR71euAjzWwvm3xaMjmxyetz6sOfsx9s', '2021-04-13 02:08:47'),
(110, 18, 'wn0yaN7ykvvIzdJHY2r3eBPvAL4Cq8VD', '2021-04-13 02:25:31'),
(111, 19, 'mMWydEeZi0nCTXIdeEocTPUsGBipJmOn', '2021-04-13 02:51:10'),
(112, 20, 'eNqKpv4aVfMZ0pTZsEaktVKfHxycNiiF', '2021-04-13 03:41:44'),
(113, 21, 'jYHZ6v0KuepNJEdFaIRW2RiW31VSv58x', '2021-04-13 03:53:01'),
(118, 33, 'FWYPC2E7QLycWjmlDACPSIr7AuJHA3KI', '2021-04-13 10:16:44'),
(121, 36, '9mtn1STG17qiD2KODyZBL9xJZeDmjltQ', '2021-04-16 05:58:39'),
(122, 38, 'NGIgugxwSNadoJBwq6gOG9kJRKb3qfJu', '2021-04-16 06:06:21'),
(123, 39, 'fQQNuNlVoPz0ojou7j3Efq0wStRnvrBt', '2021-04-16 06:07:14'),
(124, 40, 'Zz7o9PU6ia5v3c1sIN3QLThg1BEQ7kpK', '2021-04-16 07:42:43'),
(126, 44, 'sHLZLQfeaBJw7fBLhLQZ5jHhDFbOuc7V', '2021-04-16 12:10:56'),
(127, 37, 'W235XWrIOTusZyEHUTvs2F6afR4nf6L1', '2021-04-16 22:17:18'),
(128, 38, 'TsYlhRArS9XAoiI7xnXQQfmrTALeCVBM', '2021-04-17 16:22:29'),
(129, 46, 'DQgMUIcmgzZY4vQa1cPpGmJ38aQ4pzkX', '2021-04-20 05:35:00'),
(130, 42, 'B1NBvkxJDppE66IpeoY0SSBtLHwVuC5Q', '2021-04-20 05:39:03'),
(131, 44, 'FKPA9TSul9uz7DAvqcPt4ZDLwSK0P8in', '2021-04-21 09:59:30'),
(132, 45, 'w3E0MDQnGixxbGYYpbF39ERvZ1nSfH9a', '2021-04-21 10:04:08'),
(133, 46, 'Pe3Jo2LzzG2Iimdl7cQbVoqBrNRWXanI', '2021-04-21 10:07:06'),
(134, 47, 'sP7pjEvuNMzasrtZa0XRFsZ8dZ9X5W1D', '2021-04-21 10:08:23'),
(135, 48, 'zTzJAwrpfnS5gxHoJoeEVhx0X9BSLQPS', '2021-04-24 04:49:50'),
(136, 2, 'SUH5e7fBVNlzgnU3MjSX93UFpLOlNefB', '2021-06-25 06:38:14'),
(137, 4, 'YmzNJEArq9a8AnFwWuftPl9Mhs68UL6P', '2021-06-25 06:57:12'),
(138, 5, 't0OCR8vnKglwxZ7ObHXg3Vnxb0BZpiRg', '2021-06-25 07:00:46'),
(140, 7, 'GQ6VtZU6IVsTmixFXQzbVsDlQ8EZAZcE', '2021-06-25 07:09:18'),
(141, 8, '6o6xlvZVsbkPihhRtT8fStyltGI4eFNI', '2021-06-25 07:09:39'),
(142, 9, '6pLBfGZRnVZuMuHtkhVOkMiRVOQNe7yX', '2021-06-25 07:10:19'),
(143, 10, 'GkC61JmCZrwbHgLsmaR3WgOVaMZJkvI8', '2021-06-25 07:11:30'),
(144, 1, 'GaRqLdBQhYgBPVDn2bp9kGUsU7ijwE9r', '2021-07-18 18:44:04'),
(145, 2, 'tAbOnmMb4STgaTSieDPOJCm7kfulO8I1', '2021-07-19 05:20:44'),
(146, 3, 'g5HQJmGKMmwTbh7Qwo8rxpR1LV5BocN8', '2021-07-19 05:22:49'),
(147, 6, 'un0BnS1A99opDabjy8s1pSP1JQ5sZ58X', '2021-07-19 06:53:29'),
(148, 7, 'xCDVOJXv6MGElJRnvWxSF2AUgqRO37LE', '2021-07-19 06:54:45'),
(149, 8, 'AaHjAH5ubjhIJNIcvDaq49tbNPwtLdYZ', '2021-07-19 06:55:16'),
(150, 1, 'WtXWDnUmt3BzXfbQsHisz6QITjuLtMfe', '2021-07-19 08:14:11'),
(151, 2, 'BLsfZAMKlnMJ08b7b9V3366dl6thrain', '2021-07-24 07:00:54'),
(152, 3, '9eJ4MMIXXRo9wQR5ft3ST8kEpWQeaOCZ', '2021-07-24 07:01:49'),
(153, 5, 'zo9uNrAgIm3RfYNoU77P8Yrh1WojC2d2', '2021-07-29 06:33:27'),
(154, 6, 'x40Iq9B4NrgtlPz0r6rGy2CtOWbtXg9a', '2021-07-29 06:33:45'),
(155, 5, 'kRSteWLj5thggtbXayMSL0gkTFJWew22', '2021-07-29 06:34:06'),
(156, 7, 'd2pf9hywDUak8D4D2d7XG6AU8YfTP3e7', '2021-07-29 06:39:47'),
(157, 8, 'f4d7FEAOFZk4iOtOIn3Q5NWMkMA8we0z', '2021-07-29 06:50:30'),
(165, 13, 'vGGLrqihtkKBnppUVGcPHWA2CVpU8Smz', '2021-07-30 08:01:41'),
(166, 9, '3AZ2ktcYDe8fh9aVi8oFD8W06Ujyy4zC', '2021-07-30 09:03:54'),
(167, 70, 'LKyc4nDnSFMrFrBFJAU0OXDFQqdcFe2d', '2021-12-29 22:22:15'),
(168, 71, 'mo0k5ndnxIKdvQH38Sh9oICKyQlU4msx', '2022-10-15 14:44:53'),
(169, 8, 'x4RYIlInTjZkERxCCfYtCydMmxbqtPhY', '2022-10-16 08:26:48'),
(170, 9, 'eJNLMiv3SaPfwWUkTBIcoZcFXCuHKPHI', '2022-10-16 08:30:12'),
(171, 10, 'MnCdv193nbiCNknWyCIBxloL0Hhj1tlF', '2022-10-16 08:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(255) NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `working_days`
--

CREATE TABLE `working_days` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctorId` bigint(20) UNSIGNED NOT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `day` varchar(255) DEFAULT NULL,
  `day_number` varchar(255) DEFAULT NULL,
  `from_morning` varchar(255) DEFAULT NULL,
  `to_morning` varchar(255) DEFAULT NULL,
  `from_afternoon` varchar(255) DEFAULT NULL,
  `to_afternoon` varchar(255) DEFAULT NULL,
  `from_evening` varchar(255) DEFAULT NULL,
  `to_evening` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `working_days`
--

INSERT INTO `working_days` (`id`, `doctorId`, `from_date`, `to_date`, `day`, `day_number`, `from_morning`, `to_morning`, `from_afternoon`, `to_afternoon`, `from_evening`, `to_evening`, `duration`, `created_at`, `updated_at`) VALUES
(94, 6, '2021-08-11', '2021-09-30', 'sat', '6', '8:0', '12:0', '13:0', '16:0', '17:0', '22:0', '30', '2021-08-11 15:41:34', '2021-08-11 15:41:34'),
(95, 6, '2021-08-11', '2021-09-30', 'sun', '0', '8:0', '12:0', '13:0', '16:0', '17:0', '22:0', '30', '2021-08-11 15:41:34', '2021-08-11 15:41:34'),
(96, 6, '2021-08-11', '2021-09-30', 'mon', '1', '8:0', '12:0', '13:0', '16:0', '17:0', '22:0', '30', '2021-08-11 15:41:34', '2021-08-11 15:41:34'),
(97, 6, '2021-08-11', '2021-09-30', 'tus', '2', '8:0', '12:0', '13:0', '16:0', '17:0', '22:0', '30', '2021-08-11 15:41:34', '2021-08-11 15:41:34'),
(98, 6, '2021-08-11', '2021-09-30', 'wed', '3', '8:0', '12:0', '13:0', '16:0', '17:0', '22:0', '30', '2021-08-11 15:41:34', '2021-08-11 15:41:34'),
(99, 6, '2021-08-11', '2021-09-30', 'thu', '4', '8:0', '12:0', '13:0', '16:0', '17:0', '22:0', '30', '2021-08-11 15:41:34', '2021-08-11 15:41:34'),
(100, 6, '2021-08-11', '2021-09-30', 'fri', '5', '8:0', '12:0', '13:0', '16:0', '17:0', '22:0', '30', '2021-08-11 15:41:34', '2021-08-11 15:41:34'),
(101, 7, '2021-08-12', '2021-08-19', 'sat', '6', '8:0', '12:0', NULL, NULL, NULL, NULL, '5', '2021-08-12 06:33:52', '2021-08-12 06:33:52'),
(102, 7, '2021-08-12', '2021-08-19', 'sun', '0', '8:0', '12:0', NULL, NULL, NULL, NULL, '5', '2021-08-12 06:33:52', '2021-08-12 06:33:52'),
(103, 7, '2021-08-12', '2021-08-19', 'mon', '1', '8:0', '12:0', NULL, NULL, NULL, NULL, '5', '2021-08-12 06:33:52', '2021-08-12 06:33:52'),
(104, 7, '2021-08-12', '2021-08-19', 'tus', '2', '8:0', '12:0', NULL, NULL, NULL, NULL, '5', '2021-08-12 06:33:52', '2021-08-12 06:33:52'),
(105, 7, '2021-08-12', '2021-08-19', 'fri', '5', '8:0', '12:0', NULL, NULL, NULL, NULL, '5', '2021-08-12 06:33:52', '2021-08-12 06:33:52'),
(106, 7, '2021-08-12', '2021-08-19', 'thu', '4', '8:0', '12:0', NULL, NULL, NULL, NULL, '5', '2021-08-12 06:33:52', '2021-08-12 06:33:52'),
(107, 7, '2021-08-12', '2021-08-19', 'wed', '3', '8:0', '12:0', NULL, NULL, NULL, NULL, '5', '2021-08-12 06:33:52', '2021-08-12 06:33:52'),
(114, 1, '2022-10-18', '2022-10-25', 'sat', '6', '9:0', '11:0', '1:0', '3:0', '6:0', '9:0', '15', '2022-10-18 21:26:41', '2022-10-18 21:26:41'),
(115, 1, '2022-10-18', '2022-10-25', 'sun', '0', '9:0', '11:0', '1:0', '3:0', '6:0', '9:0', '15', '2022-10-18 21:26:41', '2022-10-18 21:26:41'),
(116, 1, '2022-10-18', '2022-10-25', 'mon', '1', '9:0', '11:0', '1:0', '3:0', '6:0', '9:0', '15', '2022-10-18 21:26:41', '2022-10-18 21:26:41'),
(117, 1, '2022-10-18', '2022-10-25', 'tus', '2', '9:0', '11:0', '1:0', '3:0', '6:0', '9:0', '15', '2022-10-18 21:26:41', '2022-10-18 21:26:41'),
(118, 1, '2022-10-18', '2022-10-25', 'wed', '3', '9:0', '11:0', '1:0', '3:0', '6:0', '9:0', '15', '2022-10-18 21:26:41', '2022-10-18 21:26:41'),
(119, 1, '2022-10-18', '2022-10-25', 'thu', '4', '9:0', '11:0', '1:0', '3:0', '6:0', '9:0', '15', '2022-10-18 21:26:41', '2022-10-18 21:26:41'),
(120, 1, '2022-10-18', '2022-10-25', 'fri', '5', '9:0', '11:0', '1:0', '3:0', '6:0', '9:0', '15', '2022-10-18 21:26:41', '2022-10-18 21:26:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointments_doctorid_foreign` (`doctorId`),
  ADD KEY `appointments_patientid_foreign` (`patientId`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_doctorid_foreign` (`doctorId`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chats_doctorid_foreign` (`doctorId`),
  ADD KEY `chats_patientid_foreign` (`patientId`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_countryid_foreign` (`countryId`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_articleid_foreign` (`articleId`),
  ADD KEY `comments_patientid_foreign` (`patientId`);

--
-- Indexes for table `contact_infos`
--
ALTER TABLE `contact_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diagnostics`
--
ALTER TABLE `diagnostics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diagnostics_doctorid_foreign` (`doctorId`),
  ADD KEY `diagnostics_patientid_foreign` (`patientId`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `doctors_email_unique` (`email`),
  ADD KEY `doctors_specialityid_foreign` (`specialityId`),
  ADD KEY `doctors_countryid_foreign` (`countryId`),
  ADD KEY `doctors_cityid_foreign` (`cityId`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_doctorid_foreign` (`doctorId`),
  ADD KEY `favorites_patientid_foreign` (`patientId`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `offers_doctorid_foreign` (`doctorId`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `patients_email_unique` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_appointmentid_foreign` (`appointmentId`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_doctorid_foreign` (`doctorId`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_doctorid_foreign` (`doctorId`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specialities`
--
ALTER TABLE `specialities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_activations`
--
ALTER TABLE `user_activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_activations_id_user_foreign` (`id_user`);

--
-- Indexes for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `working_days`
--
ALTER TABLE `working_days`
  ADD PRIMARY KEY (`id`),
  ADD KEY `working_days_doctorid_foreign` (`doctorId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_infos`
--
ALTER TABLE `contact_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `diagnostics`
--
ALTER TABLE `diagnostics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `specialities`
--
ALTER TABLE `specialities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_activations`
--
ALTER TABLE `user_activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `working_days`
--
ALTER TABLE `working_days`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_doctorid_foreign` FOREIGN KEY (`doctorId`) REFERENCES `doctors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `appointments_patientid_foreign` FOREIGN KEY (`patientId`) REFERENCES `patients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_doctorid_foreign` FOREIGN KEY (`doctorId`) REFERENCES `doctors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chats`
--
ALTER TABLE `chats`
  ADD CONSTRAINT `chats_doctorid_foreign` FOREIGN KEY (`doctorId`) REFERENCES `doctors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chats_patientid_foreign` FOREIGN KEY (`patientId`) REFERENCES `patients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_countryid_foreign` FOREIGN KEY (`countryId`) REFERENCES `countries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_articleid_foreign` FOREIGN KEY (`articleId`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_patientid_foreign` FOREIGN KEY (`patientId`) REFERENCES `patients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `diagnostics`
--
ALTER TABLE `diagnostics`
  ADD CONSTRAINT `diagnostics_doctorid_foreign` FOREIGN KEY (`doctorId`) REFERENCES `doctors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `diagnostics_patientid_foreign` FOREIGN KEY (`patientId`) REFERENCES `patients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `doctors_cityid_foreign` FOREIGN KEY (`cityId`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `doctors_countryid_foreign` FOREIGN KEY (`countryId`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `doctors_specialityid_foreign` FOREIGN KEY (`specialityId`) REFERENCES `specialities` (`id`);

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_doctorid_foreign` FOREIGN KEY (`doctorId`) REFERENCES `doctors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorites_patientid_foreign` FOREIGN KEY (`patientId`) REFERENCES `patients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `offers`
--
ALTER TABLE `offers`
  ADD CONSTRAINT `offers_doctorid_foreign` FOREIGN KEY (`doctorId`) REFERENCES `doctors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_appointmentid_foreign` FOREIGN KEY (`appointmentId`) REFERENCES `appointments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_doctorid_foreign` FOREIGN KEY (`doctorId`) REFERENCES `doctors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_doctorid_foreign` FOREIGN KEY (`doctorId`) REFERENCES `doctors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `working_days`
--
ALTER TABLE `working_days`
  ADD CONSTRAINT `working_days_doctorid_foreign` FOREIGN KEY (`doctorId`) REFERENCES `doctors` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
