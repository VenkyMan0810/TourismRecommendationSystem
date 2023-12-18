-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2019 at 11:47 AM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `decisiontreebasedtourism_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

CREATE TABLE `admin_details` (
  `id` int(11) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_details`
--

INSERT INTO `admin_details` (`id`, `Username`, `Password`) VALUES
(1, 'Admin', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(25, 'Can add admin_ details', 7, 'add_admin_details'),
(26, 'Can change admin_ details', 7, 'change_admin_details'),
(27, 'Can delete admin_ details', 7, 'delete_admin_details'),
(28, 'Can view admin_ details', 7, 'view_admin_details'),
(29, 'Can add travel_ packages', 8, 'add_travel_packages'),
(30, 'Can change travel_ packages', 8, 'change_travel_packages'),
(31, 'Can delete travel_ packages', 8, 'delete_travel_packages'),
(32, 'Can view travel_ packages', 8, 'view_travel_packages'),
(33, 'Can add user_ bookings', 9, 'add_user_bookings'),
(34, 'Can change user_ bookings', 9, 'change_user_bookings'),
(35, 'Can delete user_ bookings', 9, 'delete_user_bookings'),
(36, 'Can view user_ bookings', 9, 'view_user_bookings'),
(37, 'Can add user_ details', 10, 'add_user_details'),
(38, 'Can change user_ details', 10, 'change_user_details'),
(39, 'Can delete user_ details', 10, 'delete_user_details'),
(40, 'Can view user_ details', 10, 'view_user_details'),
(41, 'Can add review', 11, 'add_review'),
(42, 'Can change review', 11, 'change_review'),
(43, 'Can delete review', 11, 'delete_review'),
(44, 'Can view review', 11, 'view_review'),
(45, 'Can add user_ review', 11, 'add_user_review'),
(46, 'Can change user_ review', 11, 'change_user_review'),
(47, 'Can delete user_ review', 11, 'delete_user_review'),
(48, 'Can view user_ review', 11, 'view_user_review');

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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$120000$Uu7aFOOpVdl1$VOBeFPblKrcu2K+S1wq6fbXtO8ctVekST9ZV3aIsu1s=', '2019-11-18 07:41:52.915457', 1, 'surya', '', '', 'surya@gmail.com', 1, 1, '2019-11-18 07:40:53.133038');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-11-18 08:03:51.370868', '1', 'Travel_Packages object (1)', 1, '[{"added": {}}]', 8, 1),
(2, '2019-11-18 08:13:35.205262', '2', 'Travel_Packages object (2)', 1, '[{"added": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'AppDecisionTreeBasedTourism', 'admin_details'),
(8, 'AppDecisionTreeBasedTourism', 'travel_packages'),
(9, 'AppDecisionTreeBasedTourism', 'user_bookings'),
(10, 'AppDecisionTreeBasedTourism', 'user_details'),
(11, 'AppDecisionTreeBasedTourism', 'user_review'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-11-14 11:20:00.105122'),
(2, 'auth', '0001_initial', '2019-11-14 11:20:08.270589'),
(3, 'admin', '0001_initial', '2019-11-14 11:20:10.052691'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-11-14 11:20:10.131696'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-11-14 11:20:10.211700'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-11-14 11:20:11.789790'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-11-14 11:20:13.295877'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-11-14 11:20:13.945914'),
(9, 'auth', '0004_alter_user_username_opts', '2019-11-14 11:20:13.992917'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-11-14 11:20:14.694957'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-11-14 11:20:14.783962'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-11-14 11:20:14.862966'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-11-14 11:20:15.366995'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-11-14 11:20:16.031033'),
(15, 'sessions', '0001_initial', '2019-11-14 11:20:16.623067'),
(16, 'AppDecisionTreeBasedTourism', '0001_initial', '2019-11-15 07:25:50.453160'),
(17, 'AppDecisionTreeBasedTourism', '0002_travel_packages_desc', '2019-11-18 07:44:07.429151'),
(18, 'AppDecisionTreeBasedTourism', '0003_auto_20191118_1328', '2019-11-18 07:58:30.903539'),
(19, 'AppDecisionTreeBasedTourism', '0004_auto_20191118_1703', '2019-11-18 11:33:09.613344'),
(20, 'AppDecisionTreeBasedTourism', '0005_auto_20191119_1358', '2019-11-19 08:29:01.744811'),
(21, 'AppDecisionTreeBasedTourism', '0006_user_bookings_packageamount', '2019-11-19 12:31:35.591572'),
(22, 'AppDecisionTreeBasedTourism', '0007_auto_20191120_1231', '2019-11-20 07:01:25.086550'),
(23, 'AppDecisionTreeBasedTourism', '0008_auto_20191120_1517', '2019-11-20 09:47:11.944908'),
(24, 'AppDecisionTreeBasedTourism', '0009_user_review_productid', '2019-11-20 09:53:50.519705'),
(25, 'AppDecisionTreeBasedTourism', '0010_auto_20191120_1552', '2019-11-20 10:22:41.804729'),
(26, 'AppDecisionTreeBasedTourism', '0011_user_review_month', '2019-11-20 12:28:41.998902'),
(27, 'AppDecisionTreeBasedTourism', '0012_auto_20191121_1552', '2019-11-21 10:22:33.373236'),
(28, 'AppDecisionTreeBasedTourism', '0013_user_bookings_status', '2019-11-21 12:04:02.684524');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('wreg18pt82qigvzs9fb0xf7oryloxwha', 'NjcxMmNmM2M4MmM0MzY4NWZmZTcxMzE5NmE5MDMwOGU1MjE0NGNjZjp7ImN1c3RvbWVyX2lkIjoiMSIsInR5cGVfaWQiOiJVc2VyIiwibG9naW4iOiJZZXMifQ==', '2019-12-06 08:22:31.759976');

-- --------------------------------------------------------

--
-- Table structure for table `travel_packages`
--

CREATE TABLE `travel_packages` (
  `id` int(11) NOT NULL,
  `Package_name` varchar(50) NOT NULL,
  `Image1` varchar(100) NOT NULL,
  `Image2` varchar(100) NOT NULL,
  `Image3` varchar(100) NOT NULL,
  `Itenary` varchar(10000) NOT NULL,
  `Duration` varchar(100) NOT NULL,
  `Price` int(11) NOT NULL,
  `Suitable_group` varchar(100) NOT NULL,
  `Suitable_Month` varchar(100) NOT NULL,
  `Desc` varchar(500) NOT NULL,
  `City` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travel_packages`
--

INSERT INTO `travel_packages` (`id`, `Package_name`, `Image1`, `Image2`, `Image3`, `Itenary`, `Duration`, `Price`, `Suitable_group`, `Suitable_Month`, `Desc`, `City`) VALUES
(1, 'Mini Kerala - Value Added', 'img/images/4-min.jpg', 'img/images/featured-image.jpg', 'img/images/klhb-bnn-1.jpg', 'Arrival in Kochi via flight   Private AC Sedan - AC for transfer from airport in Cochin to hotel in Munnar    Valara Waterfalls   Tea Plantation at Devikulam    Check-in to Hotel in Munnar   Breakfast at Hotel in Munna     Tata Tea Museum   Eravikulam national park    Mattupetty Dam   Echo Point', '2N Munnar . 1N Thekkady', 20918, 'Romantic', 'december', 'Visit backwaters and tea gardens | See Eravikulam National Park | Car value pack - Snack box on arrival & extra 2 hours at disposal, once in each city', 'kochi'),
(2, 'Splendours of Kerala - Value Added', 'img/images/cochin.jpg', 'img/images/Cochin-Chinese-Fishing-Nest_19_73_cochin_938_410.jpg', 'img/images/ktm-rc-200-white.png', 'Arrival in Kochi via flight   Private AC Sedan - AC for transfer from airport in Cochin to hotel in Munnar    Valara Waterfalls   Tea Plantation at Devikulam    Check-in to Hotel in Munnar   Breakfast at Hotel in Munna     Tata Tea Museum   Eravikulam national park    Mattupetty Dam   Echo Point', '1N Cochin . 2N Munnar . 1N Thekkady', 25019, 'Family', 'september', 'AC sedan for extended sightseeing with a complimentary snack box | Tea plantation visit in Devikulam |Relax at the scenic backwaters', 'bengaluru'),
(3, 'Free Sightseeing - Goan Holiday with Family - 4N', 'img/images/GOA.jpg', 'img/images/goa1.jpg', 'klhb-bnn-1.jpg', ' Arrival in Goa via flight , Transfer to hotel via private vehicle.  Check-in to Hotel in Goa Breakfast at Hotel in Goa ,South Goa Sightseeing by an MUV, North Goa Sightseeing by an MUV Checkout from Hotel in Goa Transfer to airport via private vehicle. Departure from Goa via flight', '4N Goa', 18215, 'Romantic', 'November', 'Explore attractions of North & South Goa in an MUV (Upto 6 pax) | Private Airport transfers with a welcome kit | Plenty of free time to explore on your own', 'Maharashtra'),
(4, 'Sikkim Delight with Darjeeling (customizable)', 'img/images/sikkim.jpg', 'img/images/sikkim2.jpg', 'ktm-rc-200-white.png', 'Arrival in Bagdogra via flight Private Non AC Mini Car - Non AC for transfer from airport in Bagdogra to hotel in Gangtok Gangtok  Check-in to Hotel in Gangtok  Breakfast at Hotel in Gangtok Changu Lake - Excursion Baba Mandir  Breakfast at Hotel in Gangtok Rumtek Monastery Do Drul Namgayal Institute of Tibetology Flower Exhibition Checkout from Hotel in Gangtok Private Non AC Mini Car - Non AC for transfer from Gangtok to Darjeeling', '3N Gangtok . 2N Darjeeling', 26545, 'Family', 'February', 'Changu Lake and New Baba Mandir excursion | View the sunrise from Tiger Hill | Get Blessed at the famous Rumtek Monastery', 'Delhi');

-- --------------------------------------------------------

--
-- Table structure for table `user_bookings`
--

CREATE TABLE `user_bookings` (
  `id` int(11) NOT NULL,
  `Package_name` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `User_id` varchar(50) NOT NULL,
  `Duration` varchar(50) NOT NULL,
  `Travelling_Month` varchar(100) NOT NULL,
  `travelling_persons` int(11) NOT NULL,
  `Group_type` varchar(50) NOT NULL,
  `PackageAmount` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_bookings`
--

INSERT INTO `user_bookings` (`id`, `Package_name`, `City`, `User_id`, `Duration`, `Travelling_Month`, `travelling_persons`, `Group_type`, `PackageAmount`, `status`) VALUES
(1, 'Free Sightseeing - Goan Holiday with Family - 4N', 'Mumbai', '1', '4N Goa', '2019-11-29', 1, 'Friends', 18215, 'Confirmed'),
(2, 'Splendours of Kerala - Value Added', 'Mumbai', '1', '1N Cochin . 2N Munnar . 1N Thekkady', '2019-11-29', 1, 'Office Trips', 25019, 'Not Confirmed'),
(3, 'Splendours of Kerala - Value Added', 'Mumbai', '1', '1N Cochin . 2N Munnar . 1N Thekkady', '2019-11-16', 1, 'Romantic', 25019, 'Confirmed');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(11) NOT NULL,
  `First_name` varchar(50) NOT NULL,
  `Last_name` varchar(50) NOT NULL,
  `Dob` varchar(50) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Phone` int(11) NOT NULL,
  `Email` varchar(254) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(100) NOT NULL,
  `State` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `First_name`, `Last_name`, `Dob`, `Gender`, `Phone`, `Email`, `Username`, `Password`, `Address`, `City`, `State`) VALUES
(1, 'test', 'test', '2019-11-12', 'Female', 987654321, 'test@gmail.com', 'test', '1234', 'qwfrg qwd', 'mumbai', 'Maharashtra');

-- --------------------------------------------------------

--
-- Table structure for table `user_review`
--

CREATE TABLE `user_review` (
  `id` int(11) NOT NULL,
  `Package_name` varchar(50) NOT NULL,
  `User_id` varchar(50) NOT NULL,
  `Reviews` varchar(5000) NOT NULL,
  `Ratings` int(11) NOT NULL,
  `productid` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `month` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_review`
--

INSERT INTO `user_review` (`id`, `Package_name`, `User_id`, `Reviews`, `Ratings`, `productid`, `City`, `month`) VALUES
(1, 'Free Sightseeing - Goan Holiday with Family - 4N', '1', 'awesome place for friends', 3, '3', 'Maharashtra', 'November'),
(2, 'Splendours of Kerala - Value Added', '1', 'awesome', 4, '2', 'bengaluru', 'November');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_details`
--
ALTER TABLE `admin_details`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `travel_packages`
--
ALTER TABLE `travel_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_bookings`
--
ALTER TABLE `user_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_review`
--
ALTER TABLE `user_review`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_details`
--
ALTER TABLE `admin_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `travel_packages`
--
ALTER TABLE `travel_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user_bookings`
--
ALTER TABLE `user_bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_review`
--
ALTER TABLE `user_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

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
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
