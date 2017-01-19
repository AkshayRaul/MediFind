-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 27, 2016 at 08:31 PM
-- Server version: 5.5.46-0ubuntu0.14.04.2
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `MediFind`
--

-- --------------------------------------------------------

--
-- Table structure for table `Chemist_Has`
--

CREATE TABLE IF NOT EXISTS `Chemist_Has` (
  `ID` int(15) NOT NULL,
  `Medicine` varchar(40) NOT NULL,
  `Quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Chemist_Has`
--

INSERT INTO `Chemist_Has` (`ID`, `Medicine`, `Quantity`) VALUES
(1, 'Crocin', 20),
(2, 'Crocin', 50),
(5, 'Crocin', 13),
(1, 'Adnet', 10),
(3, 'Adnet', 12),
(1, 'Cadrol(10mg)', 5);

-- --------------------------------------------------------

--
-- Table structure for table `Location`
--

CREATE TABLE IF NOT EXISTS `Location` (
  `Chemist_ID` int(15) NOT NULL AUTO_INCREMENT,
  `Chemist_Name` varchar(30) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Contact` varchar(15) NOT NULL,
  `Latitude` float NOT NULL,
  `Longitude` float NOT NULL,
  PRIMARY KEY (`Chemist_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='This ' AUTO_INCREMENT=140 ;

--
-- Dumping data for table `Location`
--

INSERT INTO `Location` (`Chemist_ID`, `Chemist_Name`, `Address`, `Contact`, `Latitude`, `Longitude`) VALUES
(1, 'General Medical ', 'Shop No 2/ 3, Ground Floor, Kartar Bhavan, Arthur ', '+(91)-22-385360', 18.9245, 72.8294),
(2, 'Mahalaxmi Medical Stores and G', 'Shop No D-1, Bhagyoday Chs, Plot No 114, Borivali ', '+(91)-22-385451', 19.2296, 72.829),
(3, 'General Medical ', 'Shop No 2/ 3, Ground Floor, Kartar Bhavan, Arthur ', '+(91)-22-385360', 18.9245, 72.8294),
(4, 'Mahalaxmi Medical Stores and G', 'Shop No D-1, Bhagyoday Chs, Plot No 114, Borivali ', '+(91)-22-385451', 19.2296, 72.829),
(5, 'New Empire Chemist', 'Shop No 3, Empire House, S V Road, Vile Parle West', '+(91)-22-385858', 19.1078, 72.8403),
(6, 'New Royal Chemist', ' Shop No 4, Marol Village, Marol Maroshi Road, And', '+(91)-22-385526', 19.1177, 72.8802),
(7, 'Mamaji’s Medical and General S', 'Shop No.21, ''C'' Wing, Lake Primrose, Phase-4, Lake', '022 2857 9933', 19.1146, 72.899),
(8, 'Rameshwar chemist', 'C/O, Dr. Patwardhan Hospital, Dr. Ambedkar Road, O', '098203 23667', 19.0102, 73.1107),
(9, 'Flora Chemist', 'Shop No 8/9, Yamuna Tower, Jangid Comlpex, Mira Ro', '+(91)-22-642741', 19.2235, 72.9665),
(10, 'Salman Chemist', 'Shop No 1, Gautam Nagar, Behram Baug Road, Jogeshw', '+(91)-22-385725', 19.1433, 72.8373),
(11, 'Care Medical store', 'Shop No 17 Galaxy Height, New Link Road, Goregaon ', '+(91)-22-385968', 19.1622, 72.835),
(12, 'Kwik 7 Oasis', 'Shop No 4, Capricon Centre, Sane Guruji Marg, Maha', '+(91)-22-385382', 18.9663, 72.8402),
(13, 'Dhanvantri Medical ', '4, Ashok Apartment, Khar West, Mumbai - 400052, Ne', '+(91)-22-385149', 19.0726, 72.8336),
(14, 'General Medical ', 'Shop No 2/ 3, Ground Floor, Kartar Bhavan, Arthur ', '+(91)-22-385360', 18.9245, 72.8294),
(15, 'Mahalaxmi Medical Stores and G', 'Shop No D-1, Bhagyoday Chs, Plot No 114, Borivali ', '+(91)-22-385451', 19.2296, 72.829),
(16, 'New Empire Chemist', 'Shop No 3, Empire House, S V Road, Vile Parle West', '+(91)-22-385858', 19.1078, 72.8403),
(17, 'New Royal Chemist', ' Shop No 4, Marol Village, Marol Maroshi Road, And', '+(91)-22-385526', 19.1177, 72.8802),
(18, 'Mamaji’s Medical and General S', 'Shop No.21, ''C'' Wing, Lake Primrose, Phase-4, Lake', '022 2857 9933', 19.1146, 72.899),
(19, 'Rameshwar chemist', 'C/O, Dr. Patwardhan Hospital, Dr. Ambedkar Road, O', '098203 23667', 19.0102, 73.1107),
(20, 'Flora Chemist', 'Shop No 8/9, Yamuna Tower, Jangid Comlpex, Mira Ro', '+(91)-22-642741', 19.2235, 72.9665),
(21, 'Salman Chemist', 'Shop No 1, Gautam Nagar, Behram Baug Road, Jogeshw', '+(91)-22-385725', 19.1433, 72.8373),
(22, 'Care Medical store', 'Shop No 17 Galaxy Height, New Link Road, Goregaon ', '+(91)-22-385968', 19.1622, 72.835),
(23, 'Kwik 7 Oasis', 'Shop No 4, Capricon Centre, Sane Guruji Marg, Maha', '+(91)-22-385382', 18.9663, 72.8402),
(24, 'Dhanvantri Medical ', '4, Ashok Apartment, Khar West, Mumbai - 400052, Ne', '+(91)-22-385149', 19.0726, 72.8336),
(25, 'Hayat Pharmacy', 'Shop No 1, Ground Floor, 22/ 24, KBJ Mansion, L J ', '+(91)-22-385411', 19.0319, 72.8407),
(26, 'Mohan Medical', 'Shop No 15, Evershine Apartment No 2, Off J P Road', '+(91)-22-399337', 19.1369, 72.8253),
(27, 'Healthcare Chemist', 'Shop No 3, Alisaheb Patra Chawl, Ganpatrao Kadam M', '+(91)-22-393709', 19.0789, 72.9103),
(28, 'Noble Medicals', ' Shop No 1,2, Clanfield Co Operative Housing Socie', '+(91)-22-263242', 19.077, 72.9081),
(29, 'National Chemist', 'Shop 2,3,4,5, Laher Bros Mansion, Dr E Bros Marg, ', '+(91)-22-406807', 19.0763, 72.8776),
(30, 'Novel Plus', '241, Hill View Building, Hill Road, Bandra West, M', '+(91)-22-265503', 19.0582, 72.8298),
(31, 'Nobel Medicals', '0/A, Rustomjee Ozone, Mulund Link Road, Goregaon W', '+(91)-22-287100', 19.1736, 72.8422),
(32, 'Sil Mart', 'Shop No 11/12, Ganga Vasant Sagar, Thakur Village,', '+(91)-22-288460', 19.2151, 72.8289),
(33, 'Real Chemist', 'Shop No 9, Shubham Co-Operative Housing Society, J', '+(91)-22-262844', 19.1248, 72.8228),
(34, 'Apollo Pharmacy', 'Shop No 20, Borgoankar Wadi Complex, Kalyan Statio', '+(91)-40-474769', 19.2366, 73.1314),
(35, 'Maharashtra Medical Store and ', ' Shop No 16 Eden Rose Shopping Center, Beverly Par', '+(91)-22-281265', 19.2929, 72.8718),
(36, 'General Medical ', 'Shop No 2/ 3, Ground Floor, Kartar Bhavan, Arthur ', '+(91)-22-385360', 18.9245, 72.8294),
(37, 'Mahalaxmi Medical Stores and G', 'Shop No D-1, Bhagyoday Chs, Plot No 114, Borivali ', '+(91)-22-385451', 19.2296, 72.829),
(38, 'New Empire Chemist', 'Shop No 3, Empire House, S V Road, Vile Parle West', '+(91)-22-385858', 19.1078, 72.8403),
(39, 'New Royal Chemist', ' Shop No 4, Marol Village, Marol Maroshi Road, And', '+(91)-22-385526', 19.1177, 72.8802),
(40, 'Mamaji’s Medical and General S', 'Shop No.21, ''C'' Wing, Lake Primrose, Phase-4, Lake', '022 2857 9933', 19.1146, 72.899),
(41, 'Rameshwar chemist', 'C/O, Dr. Patwardhan Hospital, Dr. Ambedkar Road, O', '098203 23667', 19.0102, 73.1107),
(42, 'Flora Chemist', 'Shop No 8/9, Yamuna Tower, Jangid Comlpex, Mira Ro', '+(91)-22-642741', 19.2235, 72.9665),
(43, 'Salman Chemist', 'Shop No 1, Gautam Nagar, Behram Baug Road, Jogeshw', '+(91)-22-385725', 19.1433, 72.8373),
(44, 'Care Medical store', 'Shop No 17 Galaxy Height, New Link Road, Goregaon ', '+(91)-22-385968', 19.1622, 72.835),
(45, 'Kwik 7 Oasis', 'Shop No 4, Capricon Centre, Sane Guruji Marg, Maha', '+(91)-22-385382', 18.9663, 72.8402),
(46, 'Dhanvantri Medical ', '4, Ashok Apartment, Khar West, Mumbai - 400052, Ne', '+(91)-22-385149', 19.0726, 72.8336),
(47, 'Hayat Pharmacy', 'Shop No 1, Ground Floor, 22/ 24, KBJ Mansion, L J ', '+(91)-22-385411', 19.0319, 72.8407),
(48, 'Mohan Medical', 'Shop No 15, Evershine Apartment No 2, Off J P Road', '+(91)-22-399337', 19.1369, 72.8253),
(49, 'Healthcare Chemist', 'Shop No 3, Alisaheb Patra Chawl, Ganpatrao Kadam M', '+(91)-22-393709', 19.0789, 72.9103),
(50, 'Noble Medicals', ' Shop No 1,2, Clanfield Co Operative Housing Socie', '+(91)-22-263242', 19.077, 72.9081),
(51, 'National Chemist', 'Shop 2,3,4,5, Laher Bros Mansion, Dr E Bros Marg, ', '+(91)-22-406807', 19.0763, 72.8776),
(52, 'Novel Plus', '241, Hill View Building, Hill Road, Bandra West, M', '+(91)-22-265503', 19.0582, 72.8298),
(53, 'Nobel Medicals', '0/A, Rustomjee Ozone, Mulund Link Road, Goregaon W', '+(91)-22-287100', 19.1736, 72.8422),
(54, 'Sil Mart', 'Shop No 11/12, Ganga Vasant Sagar, Thakur Village,', '+(91)-22-288460', 19.2151, 72.8289),
(55, 'Real Chemist', 'Shop No 9, Shubham Co-Operative Housing Society, J', '+(91)-22-262844', 19.1248, 72.8228),
(56, 'Apollo Pharmacy', 'Shop No 20, Borgoankar Wadi Complex, Kalyan Statio', '+(91)-40-474769', 19.2366, 73.1314),
(57, 'Maharashtra Medical Store and ', ' Shop No 16 Eden Rose Shopping Center, Beverly Par', '+(91)-22-281265', 19.2929, 72.8718),
(58, 'Raj Sukh Medical and General S', ' Shop No 5, Laxmi Shopping Centre, Tulinj Road, Na', '9766107016', 19.4164, 72.851),
(59, 'General Medical ', 'Shop No 2/ 3, Ground Floor, Kartar Bhavan, Arthur ', '+(91)-22-385360', 18.9245, 72.8294),
(60, 'Mahalaxmi Medical Stores and G', 'Shop No D-1, Bhagyoday Chs, Plot No 114, Borivali ', '+(91)-22-385451', 19.2296, 72.829),
(61, 'New Empire Chemist', 'Shop No 3, Empire House, S V Road, Vile Parle West', '+(91)-22-385858', 19.1078, 72.8403),
(62, 'New Royal Chemist', ' Shop No 4, Marol Village, Marol Maroshi Road, And', '+(91)-22-385526', 19.1177, 72.8802),
(63, 'Mamaji’s Medical and General S', 'Shop No.21, ''C'' Wing, Lake Primrose, Phase-4, Lake', '022 2857 9933', 19.1146, 72.899),
(64, 'Rameshwar chemist', 'C/O, Dr. Patwardhan Hospital, Dr. Ambedkar Road, O', '098203 23667', 19.0102, 73.1107),
(65, 'Flora Chemist', 'Shop No 8/9, Yamuna Tower, Jangid Comlpex, Mira Ro', '+(91)-22-642741', 19.2235, 72.9665),
(66, 'Salman Chemist', 'Shop No 1, Gautam Nagar, Behram Baug Road, Jogeshw', '+(91)-22-385725', 19.1433, 72.8373),
(67, 'Care Medical store', 'Shop No 17 Galaxy Height, New Link Road, Goregaon ', '+(91)-22-385968', 19.1622, 72.835),
(68, 'Kwik 7 Oasis', 'Shop No 4, Capricon Centre, Sane Guruji Marg, Maha', '+(91)-22-385382', 18.9663, 72.8402),
(69, 'Dhanvantri Medical ', '4, Ashok Apartment, Khar West, Mumbai - 400052, Ne', '+(91)-22-385149', 19.0726, 72.8336),
(70, 'Hayat Pharmacy', 'Shop No 1, Ground Floor, 22/ 24, KBJ Mansion, L J ', '+(91)-22-385411', 19.0319, 72.8407),
(71, 'Mohan Medical', 'Shop No 15, Evershine Apartment No 2, Off J P Road', '+(91)-22-399337', 19.1369, 72.8253),
(72, 'Healthcare Chemist', 'Shop No 3, Alisaheb Patra Chawl, Ganpatrao Kadam M', '+(91)-22-393709', 19.0789, 72.9103),
(73, 'Noble Medicals', ' Shop No 1,2, Clanfield Co Operative Housing Socie', '+(91)-22-263242', 19.077, 72.9081),
(74, 'National Chemist', 'Shop 2,3,4,5, Laher Bros Mansion, Dr E Bros Marg, ', '+(91)-22-406807', 19.0763, 72.8776),
(75, 'Novel Plus', '241, Hill View Building, Hill Road, Bandra West, M', '+(91)-22-265503', 19.0582, 72.8298),
(76, 'Nobel Medicals', '0/A, Rustomjee Ozone, Mulund Link Road, Goregaon W', '+(91)-22-287100', 19.1736, 72.8422),
(77, 'Sil Mart', 'Shop No 11/12, Ganga Vasant Sagar, Thakur Village,', '+(91)-22-288460', 19.2151, 72.8289),
(78, 'Real Chemist', 'Shop No 9, Shubham Co-Operative Housing Society, J', '+(91)-22-262844', 19.1248, 72.8228),
(79, 'Apollo Pharmacy', 'Shop No 20, Borgoankar Wadi Complex, Kalyan Statio', '+(91)-40-474769', 19.2366, 73.1314),
(80, 'Maharashtra Medical Store and ', ' Shop No 16 Eden Rose Shopping Center, Beverly Par', '+(91)-22-281265', 19.2929, 72.8718),
(81, 'Raj Sukh Medical and General S', ' Shop No 5, Laxmi Shopping Centre, Tulinj Road, Na', '9766107016', 19.4164, 72.851),
(82, 'Chetna Medical', ' Shop No. 07 Surya Apartment, Nagindas Pada, Nalas', '', 19.2931, 72.8587),
(83, 'Wordell Chemist', ' Braborne Stadium House, Veer Nariman Road, Church', '+(91)-22-228207', 18.933, 72.8258),
(84, 'General Medical ', 'Shop No 2/ 3, Ground Floor, Kartar Bhavan, Arthur ', '+(91)-22-385360', 18.9245, 72.8294),
(85, 'Mahalaxmi Medical Stores and G', 'Shop No D-1, Bhagyoday Chs, Plot No 114, Borivali ', '+(91)-22-385451', 19.2296, 72.829),
(86, 'New Empire Chemist', 'Shop No 3, Empire House, S V Road, Vile Parle West', '+(91)-22-385858', 19.1078, 72.8403),
(87, 'New Royal Chemist', ' Shop No 4, Marol Village, Marol Maroshi Road, And', '+(91)-22-385526', 19.1177, 72.8802),
(88, 'Mamaji’s Medical and General S', 'Shop No.21, ''C'' Wing, Lake Primrose, Phase-4, Lake', '022 2857 9933', 19.1146, 72.899),
(89, 'Rameshwar chemist', 'C/O, Dr. Patwardhan Hospital, Dr. Ambedkar Road, O', '098203 23667', 19.0102, 73.1107),
(90, 'Flora Chemist', 'Shop No 8/9, Yamuna Tower, Jangid Comlpex, Mira Ro', '+(91)-22-642741', 19.2235, 72.9665),
(91, 'Salman Chemist', 'Shop No 1, Gautam Nagar, Behram Baug Road, Jogeshw', '+(91)-22-385725', 19.1433, 72.8373),
(92, 'Care Medical store', 'Shop No 17 Galaxy Height, New Link Road, Goregaon ', '+(91)-22-385968', 19.1622, 72.835),
(93, 'Kwik 7 Oasis', 'Shop No 4, Capricon Centre, Sane Guruji Marg, Maha', '+(91)-22-385382', 18.9663, 72.8402),
(94, 'Dhanvantri Medical ', '4, Ashok Apartment, Khar West, Mumbai - 400052, Ne', '+(91)-22-385149', 19.0726, 72.8336),
(95, 'Hayat Pharmacy', 'Shop No 1, Ground Floor, 22/ 24, KBJ Mansion, L J ', '+(91)-22-385411', 19.0319, 72.8407),
(96, 'Mohan Medical', 'Shop No 15, Evershine Apartment No 2, Off J P Road', '+(91)-22-399337', 19.1369, 72.8253),
(97, 'Healthcare Chemist', 'Shop No 3, Alisaheb Patra Chawl, Ganpatrao Kadam M', '+(91)-22-393709', 19.0789, 72.9103),
(98, 'Noble Medicals', ' Shop No 1,2, Clanfield Co Operative Housing Socie', '+(91)-22-263242', 19.077, 72.9081),
(99, 'National Chemist', 'Shop 2,3,4,5, Laher Bros Mansion, Dr E Bros Marg, ', '+(91)-22-406807', 19.0763, 72.8776),
(100, 'Novel Plus', '241, Hill View Building, Hill Road, Bandra West, M', '+(91)-22-265503', 19.0582, 72.8298),
(101, 'Nobel Medicals', '0/A, Rustomjee Ozone, Mulund Link Road, Goregaon W', '+(91)-22-287100', 19.1736, 72.8422),
(102, 'Sil Mart', 'Shop No 11/12, Ganga Vasant Sagar, Thakur Village,', '+(91)-22-288460', 19.2151, 72.8289),
(103, 'Real Chemist', 'Shop No 9, Shubham Co-Operative Housing Society, J', '+(91)-22-262844', 19.1248, 72.8228),
(104, 'Apollo Pharmacy', 'Shop No 20, Borgoankar Wadi Complex, Kalyan Statio', '+(91)-40-474769', 19.2366, 73.1314),
(105, 'Maharashtra Medical Store and ', ' Shop No 16 Eden Rose Shopping Center, Beverly Par', '+(91)-22-281265', 19.2929, 72.8718),
(106, 'Raj Sukh Medical and General S', ' Shop No 5, Laxmi Shopping Centre, Tulinj Road, Na', '9766107016', 19.4164, 72.851),
(107, 'Chetna Medical', ' Shop No. 07 Surya Apartment, Nagindas Pada, Nalas', '', 19.2931, 72.8587),
(108, 'Wordell Chemist', ' Braborne Stadium House, Veer Nariman Road, Church', '+(91)-22-228207', 18.933, 72.8258),
(109, 'Alankar Chemist', ' 3 B, Stadium House, Veer Nariman Road, Churchgate', '+(91)-22-228166', 18.9331, 72.8256),
(110, 'New Bombay Chemist', ' 39/40 Kakkad Arcade, New Marine Lines-Churchgate,', '+(91)-22-220011', 18.9414, 72.8278),
(111, 'General Medical ', 'Shop No 2/ 3, Ground Floor, Kartar Bhavan, Arthur ', '+(91)-22-385360', 18.9245, 72.8294),
(112, 'Mahalaxmi Medical Stores and G', 'Shop No D-1, Bhagyoday Chs, Plot No 114, Borivali ', '+(91)-22-385451', 19.2296, 72.829),
(113, 'New Empire Chemist', 'Shop No 3, Empire House, S V Road, Vile Parle West', '+(91)-22-385858', 19.1078, 72.8403),
(114, 'New Royal Chemist', ' Shop No 4, Marol Village, Marol Maroshi Road, And', '+(91)-22-385526', 19.1177, 72.8802),
(115, 'Mamaji’s Medical and General S', 'Shop No.21, ''C'' Wing, Lake Primrose, Phase-4, Lake', '022 2857 9933', 19.1146, 72.899),
(116, 'Rameshwar chemist', 'C/O, Dr. Patwardhan Hospital, Dr. Ambedkar Road, O', '098203 23667', 19.0102, 73.1107),
(117, 'Flora Chemist', 'Shop No 8/9, Yamuna Tower, Jangid Comlpex, Mira Ro', '+(91)-22-642741', 19.2235, 72.9665),
(118, 'Salman Chemist', 'Shop No 1, Gautam Nagar, Behram Baug Road, Jogeshw', '+(91)-22-385725', 19.1433, 72.8373),
(119, 'Care Medical store', 'Shop No 17 Galaxy Height, New Link Road, Goregaon ', '+(91)-22-385968', 19.1622, 72.835),
(120, 'Kwik 7 Oasis', 'Shop No 4, Capricon Centre, Sane Guruji Marg, Maha', '+(91)-22-385382', 18.9663, 72.8402),
(121, 'Dhanvantri Medical ', '4, Ashok Apartment, Khar West, Mumbai - 400052, Ne', '+(91)-22-385149', 19.0726, 72.8336),
(122, 'Hayat Pharmacy', 'Shop No 1, Ground Floor, 22/ 24, KBJ Mansion, L J ', '+(91)-22-385411', 19.0319, 72.8407),
(123, 'Mohan Medical', 'Shop No 15, Evershine Apartment No 2, Off J P Road', '+(91)-22-399337', 19.1369, 72.8253),
(124, 'Healthcare Chemist', 'Shop No 3, Alisaheb Patra Chawl, Ganpatrao Kadam M', '+(91)-22-393709', 19.0789, 72.9103),
(125, 'Noble Medicals', ' Shop No 1,2, Clanfield Co Operative Housing Socie', '+(91)-22-263242', 19.077, 72.9081),
(126, 'National Chemist', 'Shop 2,3,4,5, Laher Bros Mansion, Dr E Bros Marg, ', '+(91)-22-406807', 19.0763, 72.8776),
(127, 'Novel Plus', '241, Hill View Building, Hill Road, Bandra West, M', '+(91)-22-265503', 19.0582, 72.8298),
(128, 'Nobel Medicals', '0/A, Rustomjee Ozone, Mulund Link Road, Goregaon W', '+(91)-22-287100', 19.1736, 72.8422),
(129, 'Sil Mart', 'Shop No 11/12, Ganga Vasant Sagar, Thakur Village,', '+(91)-22-288460', 19.2151, 72.8289),
(130, 'Real Chemist', 'Shop No 9, Shubham Co-Operative Housing Society, J', '+(91)-22-262844', 19.1248, 72.8228),
(131, 'Apollo Pharmacy', 'Shop No 20, Borgoankar Wadi Complex, Kalyan Statio', '+(91)-40-474769', 19.2366, 73.1314),
(132, 'Maharashtra Medical Store and ', ' Shop No 16 Eden Rose Shopping Center, Beverly Par', '+(91)-22-281265', 19.2929, 72.8718),
(133, 'Raj Sukh Medical and General S', ' Shop No 5, Laxmi Shopping Centre, Tulinj Road, Na', '9766107016', 19.4164, 72.851),
(134, 'Chetna Medical', ' Shop No. 07 Surya Apartment, Nagindas Pada, Nalas', '', 19.2931, 72.8587),
(135, 'Wordell Chemist', ' Braborne Stadium House, Veer Nariman Road, Church', '+(91)-22-228207', 18.933, 72.8258),
(136, 'Alankar Chemist', ' 3 B, Stadium House, Veer Nariman Road, Churchgate', '+(91)-22-228166', 18.9331, 72.8256),
(137, 'New Bombay Chemist', ' 39/40 Kakkad Arcade, New Marine Lines-Churchgate,', '+(91)-22-220011', 18.9414, 72.8278),
(138, 'Reliable Chemist', ' 38/11, Kakdar Arcade, 11 New Marine Lines, Church', '+(91)-22-220050', 18.9414, 72.8282),
(139, 'Kiran Medicos', ' Shop No 1, Progressive Villa I, Plot No 77, Cbd B', '+(91)-22-275608', 19.0129, 73.0365);

-- --------------------------------------------------------

--
-- Table structure for table `main`
--

CREATE TABLE IF NOT EXISTS `main` (
  `fname` varchar(20) NOT NULL,
  `mname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `phno` bigint(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='signup table';

--
-- Dumping data for table `main`
--

INSERT INTO `main` (`fname`, `mname`, `lname`, `age`, `phno`, `gender`, `email`, `password`) VALUES
('Akshay', 'P', 'Raul', 19, 8097912183, 'Male', 'raulakshay@gmail.com', '$2y$10$K924AXYTlZhAff942mBQm.arODCsvN6yswjhhQqEOdotHdX8Vt9Pq'),
('kshitij', '', 'yerande', 20, 9165879999999, 'Male', 'kshitijyerande@gmail.com', '$2y$10$0TFoJKK8/xF6NxE.Rvc7A.FjNl1MaUBqsqmJ7noIb.AP5Zy.A5aaa'),
('vijeta', 'yogesh', 'mariwalla', 19, 9821004900, 'Female', 'vijetamariwalla@gmail.com', '$2y$10$oPh3cGviF4Bxdg4GZSRfD.AMr2.cD711qT1c4kTYHKyZsuVecps2O'),
('Arnav', 'Ajit', 'Sharma', 19, 9920309065, 'Male', 'arnnava31596@gmail.com', '$2y$10$9G88cHamz96sXPqER7vmPeONf8iaEMGehYpIyVf2pO8AkqnfMnEPq'),
('Shreya', 'Kedar', 'Sawleshwarkar', 20, 8652707799, 'Female', 'shreyasmiles180@gmail.com', '$2y$10$QctqHI1E9kAqlX9BFOvg2uMfvUfoycKdBEKCGaHK6X9JWsA2sp132'),
('Atharva', 'R', 'Patil', 19, 0, 'Male', 'atharvapatil1996@outlook.com', '$2y$10$FFtW5R4wTRhG618po5WeXeKjfXdbwnQSATV1O0xVDClftyLFgBZv6');

-- --------------------------------------------------------

--
-- Table structure for table `mappoints`
--

CREATE TABLE IF NOT EXISTS `mappoints` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `mapID` int(11) DEFAULT NULL,
  `pointLat` decimal(5,3) DEFAULT NULL,
  `pointLong` decimal(6,3) DEFAULT NULL,
  `pointText` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `mappoints`
--

INSERT INTO `mappoints` (`ID`, `mapID`, `pointLat`, `pointLong`, `pointText`) VALUES
(1, 1, 45.249, -122.897, 'Champoeg State Park'),
(2, 1, 45.374, -121.696, 'Mount Hood'),
(3, 2, -33.807, 18.366, 'Robben Island'),
(4, 2, -33.903, 18.411, 'Cape Town Stadium'),
(5, 3, 57.481, -4.225, 'Inverness Bus Station'),
(6, 3, 57.476, -4.226, 'Inverness Castle'),
(7, 3, 57.487, -4.139, 'The Barn Church'),
(8, 4, 19.123, 72.844, 'Bombay Bazaar');

-- --------------------------------------------------------

--
-- Table structure for table `maps`
--

CREATE TABLE IF NOT EXISTS `maps` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `centerLat` decimal(5,3) DEFAULT NULL,
  `centerLong` decimal(6,3) DEFAULT NULL,
  `zoom` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `maps`
--

INSERT INTO `maps` (`ID`, `centerLat`, `centerLong`, `zoom`) VALUES
(1, 45.520, -122.682, 9),
(2, -33.980, 18.424, 10),
(3, 57.480, -4.225, 12),
(4, 19.122, 72.847, 10),
(5, 19.079, 72.874, 10);

-- --------------------------------------------------------

--
-- Table structure for table `markers`
--

CREATE TABLE IF NOT EXISTS `markers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `address` varchar(80) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=140 ;

--
-- Dumping data for table `markers`
--

INSERT INTO `markers` (`id`, `name`, `address`, `contact`, `lat`, `lng`) VALUES
(1, 'General Medical ', 'Shop No 2/ 3, Ground Floor, Kartar Bhavan, Arthur ', '+(91)-22-385360', 18.924500, 72.829399),
(2, 'Mahalaxmi Medical Stores and G', 'Shop No D-1, Bhagyoday Chs, Plot No 114, Borivali ', '+(91)-22-385451', 19.229601, 72.829002),
(3, 'General Medical ', 'Shop No 2/ 3, Ground Floor, Kartar Bhavan, Arthur ', '+(91)-22-385360', 18.924500, 72.829399),
(4, 'Mahalaxmi Medical Stores and G', 'Shop No D-1, Bhagyoday Chs, Plot No 114, Borivali ', '+(91)-22-385451', 19.229601, 72.829002),
(5, 'New Empire Chemist', 'Shop No 3, Empire House, S V Road, Vile Parle West', '+(91)-22-385858', 19.107800, 72.840302);

-- --------------------------------------------------------

--
-- Table structure for table `Medicine_Info`
--

CREATE TABLE IF NOT EXISTS `Medicine_Info` (
  `Medicine_Name` varchar(25) NOT NULL,
  `Drug_1` varchar(30) NOT NULL,
  `Drug_2` varchar(30) DEFAULT NULL,
  `Drug_3` varchar(30) DEFAULT NULL,
  `Manufacturer` varchar(50) NOT NULL,
  `Drug_Quantity` int(5) NOT NULL,
  `Price` float NOT NULL,
  PRIMARY KEY (`Medicine_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Medicine_Info`
--

INSERT INTO `Medicine_Info` (`Medicine_Name`, `Drug_1`, `Drug_2`, `Drug_3`, `Manufacturer`, `Drug_Quantity`, `Price`) VALUES
('Adenoject', 'Adenosine', NULL, NULL, 'Inca (Sun Pharmaceutical Industries Ltd.)', 3, 934),
('Adenoz', 'Adenosine', NULL, NULL, 'Celon Labs', 6, 109),
('Adnet', 'Adenosine', NULL, NULL, 'SPM Drugs Pvt. Ltd.', 6, 275),
('Adnet (3 mg)', 'Adenosine', NULL, NULL, 'SPM Drugs Pvt. Ltd.', 3, 275),
('Aloten (50 mg)', 'Atenolol', NULL, NULL, 'Core Healthcare Ltd', 50, 12),
('Cadrol(10mg)', 'Bisoprolol', NULL, NULL, 'Taj Pharmaceuticals Ltd.', 10, 76.47),
('Crocin', 'paracetamol', '', '', 'Cipla', 50, 20);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
