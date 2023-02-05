-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2023 at 06:55 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `helpdesk`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignedsc`
--

CREATE TABLE `assignedsc` (
  `rno` varchar(255) NOT NULL,
  `service_company` text NOT NULL,
  `acc_no` text NOT NULL,
  `amount` float NOT NULL,
  `review` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `no` int(11) NOT NULL,
  `branch` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`no`, `branch`) VALUES
(1, 'Minister Office'),
(2, 'Secretary Office'),
(3, 'Administration Division'),
(4, 'Legal Division'),
(5, 'Reforms Division'),
(6, 'Development Division'),
(7, 'National Integration Division'),
(8, 'Accounts Division'),
(9, 'Supply Division'),
(10, 'Engineering Division'),
(11, 'Planning Division'),
(12, 'Internal Audit Division'),
(13, 'Translation Division'),
(14, 'Labour Tribunal Division'),
(15, 'Gov Audit Division'),
(16, 'IT Unit'),
(17, 'Media Unit'),
(18, 'Transport Unit'),
(19, 'Mediation Office'),
(20, 'Mediation Office - Training Unit'),
(21, 'Non Judicial Officers Training Institute');

-- --------------------------------------------------------

--
-- Table structure for table `deleteddevices`
--

CREATE TABLE `deleteddevices` (
  `rno` varchar(200) NOT NULL,
  `sn` varchar(200) NOT NULL,
  `pdate` text NOT NULL,
  `branch` text NOT NULL,
  `status` text NOT NULL,
  `review` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `device`
--

CREATE TABLE `device` (
  `rno` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` text NOT NULL,
  `sn` text NOT NULL,
  `type` text NOT NULL,
  `brand` text NOT NULL,
  `model` text NOT NULL,
  `pdate` date NOT NULL,
  `edate` date NOT NULL,
  `seller` text NOT NULL,
  `branch` text NOT NULL,
  `amount` varchar(200) NOT NULL,
  `review` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `device`
--

INSERT INTO `device` (`rno`, `timestamp`, `status`, `sn`, `type`, `brand`, `model`, `pdate`, `edate`, `seller`, `branch`, `amount`, `review`) VALUES
('ACC1', '2022-10-19 06:00:46', 'In Use', 'SGH725TPN9', 'CPU', 'HP', 'ProDesk 400 G4 MT', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Pradeepa'),
('ACC10', '2022-10-04 06:27:40', 'In Use', 'EW2618031697G019', 'CPU', 'Ewis', 'Pro 2600 MT', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Thushani'),
('ACC11', '2022-10-04 06:32:13', 'In Use', 'SGH8020MHY', 'CPU', 'HP', 'Compaq dx 7400 MT', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Lasanthi'),
('ACC12', '2022-10-11 04:33:40', 'In Use', 'SGH245TFS2', 'CPU', 'HP', 'Pro 3330 MT', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Sabeetha'),
('ACC13', '2022-10-11 04:41:13', 'In Use', 'SGH306S0PL', 'CPU', 'HP', 'Pro 3330 MT', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Nadeeshani'),
('ACC14', '2022-10-11 04:45:42', 'In Use', 'SGH008R972', 'CPU', 'HP', 'Pro 2000 MT', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Shilpa'),
('ACC15', '2022-10-11 04:51:45', 'In Use', 'EW2819122056A003', 'CPU', 'Ewis', 'Pro 2800 MT', '2019-12-20', '2022-12-20', '', 'Accounts Division', '', 'Anusha'),
('ACC16', '2022-10-17 06:40:38', 'In Use', 'PSVD903007137089689201', 'CPU', 'HP', 'Veriton M2610', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Pradeepa (payroll)'),
('ACC17', '2022-10-17 06:45:10', 'In Use', '2705GY1', 'CPU', 'DELL', 'OptiPlex 7010', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Nimashi'),
('ACC18', '2022-10-17 06:51:44', 'In Use', 'DTVJSSG00144700FA59600', 'CPU', 'acer', 'Veriton M2630', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Dulanjalee'),
('ACC19', '2022-10-17 06:56:38', 'In Use', '79F2VB1UYFC2FGN100526', 'CPU', 'acer', 'Veriton M2610', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Chamanthi'),
('ACC2', '2022-10-04 05:24:30', 'In Use', 'DXGY52S', 'CPU', 'DELL', 'Vostro 230', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Adhukaa'),
('ACC20', '2022-10-17 07:00:39', 'In Use', 'SGH151SB4H', 'CPU', 'HP', 'Compaq 6200', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Rupika'),
('ACC21', '2022-10-17 07:05:22', 'In Use', 'PSVD9030041310560C9200', 'CPU', 'acer', 'Veriton M2610', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Rumesha'),
('ACC22', '2022-10-17 07:09:48', 'In Use', '4CE0392KKQ', 'CPU', 'HP', '280 Pro G6 MT', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Madushika'),
('ACC23', '2022-10-17 07:12:08', 'In Use', 'SGH008R95Z', 'CPU', 'HP', 'Pro 2000 MT', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Ranjan'),
('ACC24', '2022-10-17 07:16:06', 'In Use', 'SGH151SB1L', 'CPU', 'HP', 'Compaq 6200 MT', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Renuka'),
('ACC25', '2022-10-17 07:26:11', 'In Use', '35010621A', 'CPU', 'NEC', 'MG33LBZEEDVFSBZ', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Yamuna'),
('ACC26', '2022-10-17 07:27:41', 'In Use', 'SGH245TG0J', 'CPU', 'HP', 'Pro 3330 MT', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'CC'),
('ACC27', '2022-10-17 07:35:30', 'In Use', '5XGY52S', 'CPU', 'DELL', 'Vostro 230', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Shroff'),
('ACC28', '2022-10-18 06:34:41', 'In Use', 'SGH008R992', 'CPU', 'HP', 'Pro 2000 MT', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Accountant Accounts - Piumi'),
('ACC29', '2022-10-18 06:16:25', 'In Use', 'DKZDL8', 'CPU', 'Dell', 'OptiPlex 3080', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Chief Accountant'),
('ACC3', '2022-10-04 05:33:19', 'In Use', 'SGH041S40V', 'CPU', 'HP', 'Compaq dc 7900', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Nayani'),
('ACC30', '2022-10-18 06:25:34', 'In Use', 'HN05GY1', 'CPU', 'Dell', 'OptiPlex 7010', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Court Administration - Jeewanthi'),
('ACC31', '2022-10-18 06:31:17', 'In Use', 'EW2819061968A006', 'CPU', 'Ewis', 'Pro 2800 MT', '2019-04-06', '2022-04-06', '', 'Accounts Division', '', 'Accountant Payment - Dilrukshi'),
('ACC4', '2022-10-04 05:39:00', 'In Use', 'DTVJSSG00144606BBE9600', 'CPU', 'ACER', 'VERITON M2630', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', ''),
('ACC5', '2022-10-04 05:44:52', 'In Use', 'EW2819061968C017', 'CPU', 'EWIS', 'Pro 2800 MT', '2019-06-22', '2022-06-22', '', 'Accounts Division', '', 'Thushari'),
('ACC6', '2022-10-04 05:50:18', 'In Use', 'SGH138TDW9', 'CPU', 'HP', 'Compaq 6200pro MT', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Nayami'),
('ACC7', '2022-10-04 05:59:27', 'In Use', 'DTVJSSG001448012F79600', 'CPU', 'ACER', 'VERITON M2630', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Dushani'),
('ACC8', '2022-10-04 06:14:11', 'In Use', 'DTXOCSGO1254903DC39600', 'CPU', 'acer', 'Extensa', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Piumi'),
('ACC9', '2022-10-04 06:21:30', 'In Use', 'PDVD90000413206D039201', 'CPU', 'acer', 'Veriton M2610', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Anusha'),
('ACCL1', '2022-10-17 07:20:23', 'In Use', '5CD61136YB', 'Laptop', 'HP', 'Pavillion', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Shyama'),
('ACCL2', '2022-10-17 07:40:46', 'In Use', '5CD6460H4T', 'Laptop', 'HP', 'Probook 450 G3', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Nadeesha'),
('ACCL3', '2022-10-18 06:41:09', 'In Use', '5CD7071D6C', 'Laptop', 'HP', 'ProBook 450 G4', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Shalika'),
('ACCM1', '2022-10-04 05:19:50', 'In Use', '3CQ7232CV8', 'Monitor', 'HP', 'V194', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Pradeepa'),
('ACCM10', '2022-10-04 06:28:32', 'In Use', 'EWMO185V180100761', 'Monitor', 'Ewis', '', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Thushani'),
('ACCM11', '2022-10-04 06:33:30', 'In Use', 'CNC004P5YZ', 'Monitor', 'HP', 'LE1851w', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Lasanthi'),
('ACCM12', '2022-10-11 04:35:29', 'In Use', 'MMLY6SS0064450BB208501', 'Monitor', 'acer', 'V206HQL', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Sabeetha'),
('ACCM13', '2022-10-11 04:42:31', 'In Use', '109PMHW053473', 'Monitor', 'LG', 'FLATRON E1941', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Nadeeshani'),
('ACCM14', '2022-10-11 04:47:37', 'In Use', 'C2VD6W2', 'Monitor', 'DELL', 'P2219H', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Shilpa'),
('ACCM15', '2022-10-11 04:53:36', 'In Use', 'EWMO185V190400099D', 'Monitor', 'Ewis', '', '2019-12-20', '2022-12-20', '', 'Accounts Division', '', 'Anusha'),
('ACCM16', '2022-10-17 06:36:41', 'In Use', 'CMC004P678', 'Monitor', 'HP', 'LE1851w', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Pradeepa (payroll)'),
('ACCM17', '2022-10-17 06:47:06', 'In Use', 'CN-0X0T4K-72872-36M-CR0B', 'Monitor', 'DELL', 'E1914Hs', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Nimashi'),
('ACCM18', '2022-10-17 06:50:35', 'In Use', 'MMLY6SS0064450BB008501', 'Monitor', 'acer', 'V206HQL', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Dulanjalee'),
('ACCM19', '2022-10-17 06:57:28', 'In Use', '6CM249131V', 'Monitor', 'HP', 'LV1911', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Chamanthi'),
('ACCM2', '2022-10-04 05:25:57', 'In Use', '109PMRX053590', 'Monitor', 'LG', 'E1941S', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Madhukaa'),
('ACCM20', '2022-10-17 07:01:51', 'In Use', 'ETLKX0W0241250688C4300', 'Monitor', 'acer', 'V193HQV', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Rupika'),
('ACCM21', '2022-10-17 07:06:46', 'In Use', 'CMC036RCW7', 'Monitor', 'HP', 'LE1851w', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Rumesha'),
('ACCM22', '2022-10-17 07:10:51', 'In Use', '3CQ0370BJK', 'Monitor', 'HP', 'V197', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Madushika'),
('ACCM23', '2022-10-17 07:13:21', 'In Use', 'ETLKX0W024125068AF4300', 'Monitor', 'acer', 'V193HQV', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Ranjan'),
('ACCM24', '2022-10-17 07:17:41', 'In Use', 'CNT143B1CP', 'Monitor', 'HP', 'Compaq LE1902x', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Renuka'),
('ACCM25', '2022-10-17 07:22:23', 'In Use', 'ETLKX0W024125068844300', 'Monitor', 'acer', 'V193HQV', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Yamuna'),
('ACCM26', '2022-10-17 07:28:52', 'In Use', '6CM2410BND', 'Monitor', 'HP', 'LV1911', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'CC'),
('ACCM27', '2022-10-17 07:36:04', 'In Use', 'CNT143B1CW', 'Monitor', 'HP', 'Compaq LE1902x', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Shroff'),
('ACCM28', '2022-10-18 07:55:39', 'In Use', 'CNC004P5ZB', 'Monitor', 'HP', 'LE1851w', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Accountant Accounts - Piumi'),
('ACCM29', '2022-10-18 06:17:30', 'In Use', '9D9W363', 'Monitor', 'Dell', 'E1920H', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Chief Accountant'),
('ACCM3', '2022-10-04 05:34:29', 'In Use', 'CNC036RD38', 'Monitor', 'HP', 'LE1851w', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Nayani'),
('ACCM30', '2022-10-18 06:28:01', 'In Use', 'CN-0X0T4K-72872-36M-CRHB', 'Monitor', 'Dell', 'E1914Hs', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Court Administration - Jeewanthi'),
('ACCM31', '2022-10-18 06:32:30', 'In Use', 'EWMO185V190400334', 'Monitor', 'Ewis', '', '2019-04-06', '2022-04-06', '', 'Accounts Division', '', 'Accountant Payment - Dilrukshi'),
('ACCM4', '2022-10-04 05:41:02', 'In Use', '12502677943', 'Monitor', 'ACER', 'V193HQV', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Madhushani'),
('ACCM5', '2022-10-04 05:46:41', 'In Use', 'EWMO185V190400175', 'Monitor', 'EWIS', '', '2019-06-22', '2022-10-04', '', 'Accounts Division', '', 'Thushari'),
('ACCM7', '2022-10-04 06:01:11', 'In Use', 'MMLY6SS0064450BB408501', 'Monitor', 'ACER', 'V206HQL', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Dushani'),
('ACCM8', '2022-10-04 06:16:39', 'In Use', 'MMT3FSS004550003573B00', 'Monitor', 'acer', 'E1900HQ', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Piumi'),
('ACCM9', '2022-10-04 06:22:55', 'In Use', 'CMC004P676', 'Monitor', 'HP', 'LE1851w', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Anusha'),
('ACCPH1', '2022-10-17 07:43:05', 'In Use', 'A789047007285', 'Photocopy', 'KONICA MINOLTA', 'bizhub 367', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Common 1'),
('ACCPH2', '2022-10-17 07:55:49', 'Not In Use', 'RMW02330', 'Photocopy', 'Canon', 'ImageRunner 2525', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Common 2'),
('ACCPR1', '2022-10-04 05:22:05', 'In Use', 'E75662D7N617963', 'Printer', 'Brother', 'HL-L5100DN', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Pradeepa'),
('ACCPR10', '2022-10-04 06:29:49', 'In Use', '460083610D5XL', 'Printer', 'LEXMARK', 'MS421dw', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Thushani'),
('ACCPR11', '2022-10-04 06:34:53', 'In Use', 'NKLA015264', 'Printer', 'Canon', 'LBP 214 dw', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Lasanthi'),
('ACCPR12', '2022-10-11 04:38:12', 'In Use', '460083610D5Y2', 'Printer', 'Lexmark', 'MS421', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Sabeetha'),
('ACCPR13', '2022-10-11 04:43:38', 'In Use', 'E69530K1J134092', 'Printer', 'brother', 'HL-2250DN', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Nadeeshani'),
('ACCPR14', '2022-10-11 04:48:46', 'In Use', 'E66821L9J427246', 'Printer', 'brother', 'HL-5350DN', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Shilpa'),
('ACCPR15', '2022-10-11 04:56:26', 'In Use', 'E66821L9J427246', 'Printer', 'brother', 'HL-5350DN', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Anusha'),
('ACCPR16-1', '2022-10-17 06:42:08', 'In Use', 'E66821L9J427510', 'Printer', 'brother', 'HL-5350DN', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Pradeepa (payroll)'),
('ACCPR16-2', '2022-10-17 06:43:58', 'In Use', 'MK3Y078435', 'Printer', 'EPSON', 'LQ-2190', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Pradeepa (payroll)'),
('ACCPR17', '2022-10-17 06:48:04', 'In Use', 'E75662D7N617833', 'Printer', 'brother', 'HL-L5100DN', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Nimashi'),
('ACCPR18', '2022-10-17 06:49:27', 'In Use', 'NKLA015265', 'Printer', 'Canon', 'LBP 214dw', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Dulanjalee'),
('ACCPR19', '2022-10-17 06:58:21', 'In Use', 'E75667K8N298645', 'Printer', 'brother', 'HL-L6200DW', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Chamanthi'),
('ACCPR2', '2022-10-04 05:29:40', 'In Use', '72LL5VD', 'Printer', 'LEXMARK', 'E160dn', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Madhukaa'),
('ACCPR20', '2022-10-17 07:03:20', 'In Use', '451432LM0WL8M', 'Printer', 'Lexmark', 'MS310dn', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Rupika'),
('ACCPR26', '2022-10-17 07:29:51', 'In Use', '994DXGZ', 'Printer', 'Lexmark', 'E120', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'CC'),
('ACCPR27', '2022-10-17 07:37:49', 'In Use', 'SGFBF50054', 'Printer', 'HP', 'Laserjet 1015', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Shroff'),
('ACCPR28', '2022-10-18 06:35:38', 'In Use', 'E69530K1J134084', 'Printer', 'brother', 'HL-2250DN', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Accountant Accounts - Piumi'),
('ACCPR29', '2022-10-18 06:19:36', 'In Use', 'WQZ15114', 'Printer', 'Canon', 'Image CLASS MF235', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Chief Accountant'),
('ACCPR3', '2022-10-04 05:36:13', 'In Use', 'E66817K0J791636', 'Printer', 'BROTHER', 'HL-5340D', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Nayani'),
('ACCPR31', '2022-10-18 06:33:52', 'In Use', 'E75667B8N933836', 'Printer', 'brother', 'HL-L6200DW', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Accountant Payment - Dilrukshi'),
('ACCPR4', '2022-10-04 05:42:37', 'In Use', '3223349390', 'Printer', 'XEROX ', 'PHRASER3320', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Madhushani'),
('ACCPR5', '2022-10-04 05:47:43', 'In Use', 'NKLA031892', 'Printer', 'CANON', 'LBP214dw', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', ''),
('ACCPR6', '2022-10-04 05:54:37', 'In Use', 'SGFBD50896', 'Printer', 'HP', 'LaserJet 1015', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Nayomi'),
('ACCPR7', '2022-10-04 06:02:28', 'In Use', 'NQAA005324', 'Printer', 'CANON', 'LBP228x', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Dushani'),
('ACCPR8', '2022-10-04 06:18:39', 'In Use', 'E66817M0J851019', 'Printer', 'brother', 'HL-5340D', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Piumi'),
('ACCPR9', '2022-10-04 06:24:24', 'In Use', '460083610D5Y3', 'Printer', 'LEXMARK', 'MS421dw', '0000-00-00', '0000-00-00', '', 'Accounts Division', '', 'Anusha'),
('ADM1', '2022-09-29 09:34:59', 'In Use', 'PDUD90000413206D739201', 'CPU', 'ACER', 'Veriton M26 10', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADM10', '2022-09-29 04:12:34', 'In Use', 'SGH008R97M', 'CPU', 'HP', 'HP Pro 2000MT', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADM11', '2022-09-29 04:16:08', 'In Use', '35010481A', 'CPU', 'NEC', 'MG33LBZEEDVFSBZ', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADM12', '2022-09-29 04:19:45', 'In Use', 'PDVAV0000504300FF22700', 'CPU', 'ACER', 'VERITON X490G', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADM13', '2022-09-29 04:24:49', 'In Use', 'SGH245TFS4', 'CPU', 'HP', 'Pro 3330 MT', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADM14', '2022-09-29 04:41:47', 'In Use', 'SGH008R98Y', 'CPU', 'HP', 'Pro 2000 MT', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADM15', '2022-09-29 04:45:10', 'In Use', 'SGH245TFSG', 'CPU', 'HP', 'Pro 3330 MT', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADM16', '2022-09-29 04:49:11', 'In Use', 'DTVK7SG076506062BF9600', 'CPU', 'ACER', 'VERITON M2631', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADM17', '2022-09-29 04:58:09', 'In Use', 'EW2819061968A002', 'CPU', 'EWIS', 'PRO 2800', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADM18', '2022-09-29 05:05:18', 'In Use', 'PDVD90000413206CF39201', 'CPU', 'ACER', 'VERITON M2610', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADM19', '2022-09-29 04:59:31', 'In Use', '35010151A', 'CPU', 'NEC', 'MG33LBZEEDVFSBZ', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADM2', '2022-09-28 10:06:56', 'In Use', '3Y00488FA', 'CPU', 'NEC', 'PC-MG33LBZEESSF', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADM20', '2022-09-29 05:08:44', 'In Use', '35010571A', 'CPU', 'NEC', 'MG33LBZEEDVFSBZ', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADM21', '2022-09-29 05:13:39', 'In Use', 'PSVD9030041310566B9200', 'CPU', 'ACER', 'VERITON M2610', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADM22', '2022-09-29 05:18:18', 'In Use', 'FGDRC2S', 'CPU', 'DELL', 'OptiPlex', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADM23', '2022-09-29 05:26:52', 'In Use', 'SGH008R97H', 'CPU', 'HP', 'HP Pro 2000MT', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADM24', '2022-09-29 05:32:09', 'In Use', '9LCRC2S', 'CPU', 'DELL', 'OptiPlex 390', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADM25', '2022-09-29 06:01:41', 'In Use', 'SGH008R96J', 'CPU', 'HP', 'Pro 2000 MT', '0000-00-00', '0000-00-00', '', 'Transport Unit', '', ''),
('ADM26', '2022-09-29 06:00:41', 'In Use', 'G415GY1', 'CPU', 'DELL', 'OptiPlex 7010', '0000-00-00', '0000-00-00', '', 'Transport Unit', '', ''),
('ADM27', '2022-09-29 05:59:11', 'In Use', 'SGH245TFXN', 'CPU', 'HP', 'Pro 3330 MT', '0000-00-00', '0000-00-00', '', 'Transport Unit', '', ''),
('ADM28', '2022-09-29 05:58:45', 'In Use', 'EW2618031697G031', 'CPU', 'EVIS', 'H110M-S2PH', '0000-00-00', '0000-00-00', '', 'Transport Unit', '', ''),
('ADM29', '2022-09-29 05:54:45', 'In Use', 'DUMMY29', 'CPU', 'Gigabyte', 'H81M-DS2', '0000-00-00', '0000-00-00', '', 'Administration Division', '', 'CC MANURI MISS'),
('ADM3', '2022-09-28 10:10:15', 'In Use', 'PDVCX00009232032189201', 'CPU', 'ACER', 'Veriton X4610G', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADM30', '2022-09-29 06:14:53', 'In Use', 'EW2819061968A005', 'CPU', 'EWIS', 'PRO 2800', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADM31', '2022-09-29 09:24:35', 'In Use', 'DTX0CSG01254903D129600', 'CPU', 'ACER', 'Extensa M2610', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADM32', '2022-09-29 09:13:35', 'In Use', '00186-052-135-669', 'CPU', 'DELL', '', '0000-00-00', '0000-00-00', '', 'Administration Division', '', 'Hapugaswatta sir'),
('ADM33', '2022-09-29 09:48:18', 'In Use', 'EW261606998GN028', 'CPU', 'EWIS', 'Pro 2600', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADM34', '2022-09-29 10:07:45', 'In Use', '6QR362S', 'CPU', 'DELL', 'Vostro 230', '0000-00-00', '0000-00-00', '', 'Administration Division', '', 'Buddhika madam'),
('ADM35', '2022-10-12 09:09:22', 'In Use', 'DTX0CSG01254903D269600', 'CPU', 'Acer', 'Extensa M2610', '0000-00-00', '0000-00-00', '', 'Administration Division', '', 'AS 2 sumudu madam'),
('ADM36', '2022-10-14 05:05:12', 'In Use', '4CE0392KLB', 'CPU', 'HP', '280 Pro G6 MT', '0000-00-00', '0000-00-00', '', 'Administration Division', '', 'Postal Unit-Osaka'),
('ADM37', '2022-10-14 05:10:00', 'In Use', 'DUMMY', 'CPU', 'HP', 'Pro 330MT', '0000-00-00', '0000-00-00', '', 'Administration Division', '', 'Not clear SN'),
('ADM4', '2022-09-28 10:14:28', 'In Use', 'SGH008R991', 'CPU', 'HP', 'Pro 2000MT', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADM5', '2022-09-29 03:43:29', 'In Use', 'SGH008R97N', 'CPU', 'HP', 'HP Pro 2000/2080', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADM6', '2022-09-29 03:50:00', 'In Use', 'DUMMYM6', 'CPU', 'FALCON', '', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADM7', '2022-09-29 03:53:18', 'In Use', 'SGH306RZ9T', 'CPU', 'HP', 'Pro 3330 MT', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADM8', '2022-09-29 04:01:53', 'In Use', '3Y00337FA', 'CPU', 'NEC', 'PC-MG33LBZEESSF', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADM9', '2022-09-29 04:09:40', 'In Use', 'SGH110SFWD', 'CPU', 'HP', 'HP Pro 2000MT', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADMFAX1', '2022-09-29 09:35:29', 'In Use', 'E71447E4J677726', 'Fax', 'BROTHER ', 'FAX-2840', '0000-00-00', '0000-00-00', '', 'Administration Division', '', 'Hapugaswatta sir'),
('ADMFAX2', '2022-09-29 09:56:15', 'In Use', 'E71447D0J781337', 'Fax', 'BROTHER ', 'LBP 253X', '0000-00-00', '0000-00-00', '', 'Administration Division', '', 'AO'),
('ADMFAX3', '2022-10-14 05:02:24', 'In Use', 'E71447E4J677835', 'Fax', 'Brother', 'FAX-2840', '0000-00-00', '0000-00-00', '', 'Transport Unit', '', 'Miyuranga'),
('ADML1', '2022-10-06 07:37:42', 'In Use', 'DUMMY', 'Laptop', 'DELL', '', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADML2', '2022-10-06 07:38:41', 'In Use', 'YWX3G-QVYTK3DPF3', 'Laptop', 'HP', '', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADML3', '2022-10-06 07:39:51', 'In Use', 'F8NOCV147105339', 'Laptop', 'ASUS', '', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADML4', '2022-10-06 07:40:32', 'In Use', '5DC6460HBIJ', 'Laptop', 'HP', '', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADML5', '2022-10-06 07:40:59', 'In Use', 'SCD015953H', 'Laptop', 'HP', '', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADML6', '2022-10-06 07:41:34', 'In Use', 'DMPFH3CVPV13', 'Laptop', 'APPLE', '', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADML7', '2022-10-06 07:42:12', 'In Use', '5CD6460H8M', 'Laptop', 'HP', '', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADML8', '2022-10-06 07:43:05', 'In Use', '5CD8010HXB', 'Laptop', 'HP', '', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADML9', '2022-10-06 07:43:36', 'In Use', '5CO7022Y32', 'Laptop', 'HP', '', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADMM1', '2022-09-30 09:14:32', 'In Use', '6CM2410YNT', 'Monitor', 'HP', 'LV1911', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADMM10', '2022-09-29 04:13:52', 'In Use', 'CNC004P5WV', 'Monitor', 'HP', 'LE1851w', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADMM11', '2022-09-29 04:17:04', 'In Use', '36505371NN', 'Monitor', 'NEC', 'VE1904G-BK', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADMM12', '2022-09-29 04:20:57', 'In Use', 'ETLPB0D00204501E738504', 'Monitor', 'ACER', 'G195HQV', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADMM13', '2022-09-29 04:25:45', 'In Use', '3CQ832306J', 'Monitor', 'HP', 'L1710', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADMM14', '2022-09-29 04:42:36', 'In Use', 'CND70426XP', 'Monitor', 'HP', 'L1710', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADMM15', '2022-09-29 04:46:57', 'In Use', 'ETLKX0W0241250689E4300', 'Monitor', 'ACER', 'V193HQV', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADMM16', '2022-09-29 04:51:01', 'In Use', 'MMLXKSG00151704A454220', 'Monitor', 'ACER', 'V206HQL', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADMM17', '2022-09-29 04:58:46', 'In Use', 'EWMO185V190400195', 'Monitor', 'EWIS', '', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADMM18', '2022-09-29 05:06:38', 'In Use', 'MMLX3SS0093237B5604220', 'Monitor', 'ACER', 'G196HQL', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADMM19', '2022-09-29 05:00:51', 'In Use', '36505880NN', 'Monitor', 'NEC', 'VE 1904G-BK', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADMM2', '2022-09-28 10:08:20', 'In Use', '34503518NN', 'Monitor', 'NEC', 'L190NU', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADMM20', '2022-09-29 05:11:24', 'In Use', '36505351NN', 'Monitor', 'NEC', 'VE1904G-BK', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADMM21', '2022-09-29 05:14:49', 'In Use', 'MMLX3SS0093237B5594220', 'Monitor', 'ACER', 'G196HQL', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADMM22', '2022-09-29 05:19:51', 'In Use', 'CN-07C2R4-72872-342-DD1L', 'Monitor', 'DELL', '', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADMM23', '2022-09-29 05:27:42', 'In Use', 'CNC004P66V', 'Monitor', 'HP', 'LE1851w', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADMM24', '2022-09-29 05:33:46', 'In Use', 'CN-0J672H-64180-9BQ0VHL', 'Monitor', 'DELL', '', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADMM25', '2022-09-30 09:15:24', 'In Use', '3CQ8322ZYM', 'Monitor', 'HP', 'L1710', '0000-00-00', '0000-00-00', '', 'Transport Unit', '', ''),
('ADMM26', '2022-09-30 09:15:50', 'In Use', '0X0T4K-72872-36M-DJRB', 'Monitor', 'DELL', '', '0000-00-00', '0000-00-00', '', 'Transport Unit', '', ''),
('ADMM27', '2022-09-30 09:16:31', 'In Use', '6CM2410C4F', 'Monitor', 'HP', 'LV1911', '0000-00-00', '0000-00-00', '', 'Transport Unit', '', ''),
('ADMM28', '2022-10-18 07:57:31', 'In Use', 'EWMO185V180100601D', 'Monitor', 'EWIS', '', '0000-00-00', '0000-00-00', '', 'Transport Unit', '', ''),
('ADMM29', '2022-09-29 05:55:33', 'In Use', '6CM4121ZQY', 'Monitor', 'HP', 'LV1911', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADMM3', '2022-09-28 10:11:55', 'In Use', 'CN-03XNMH-64180-22P-0PVS', 'Monitor', 'Dell', '', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADMM30', '2022-09-29 06:15:51', 'In Use', 'PENDING', 'Monitor', 'EWIS', '', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADMM31', '2022-09-29 09:26:00', 'In Use', 'MMT3FSS004550002953B00', 'Monitor', 'ACER', 'E1900HQ', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADMM32', '2022-09-29 09:15:06', 'In Use', 'CN-0J672H-64180-9BQ-17AL', 'Monitor', 'DELL', '', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADMM33', '2022-09-29 09:49:53', 'In Use', 'EWMO185V160200289', 'Monitor', 'EWIS', '', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADMM34', '2022-09-29 10:08:56', 'In Use', 'MMT3FSS004550002C33B00', 'Monitor', 'ACER', 'E1900HQ', '0000-00-00', '0000-00-00', '', 'Administration Division', '', 'Buddhika madam'),
('ADMM35', '2022-10-12 09:11:19', 'In Use', 'CNC004P672', 'Monitor', 'HP', 'LE1851w', '0000-00-00', '0000-00-00', '', 'Administration Division', '', 'AS 2 sumudu madam'),
('ADMM36', '2022-10-14 05:06:10', 'In Use', '3CQ03708CQ', 'Monitor', 'HP', 'V194', '0000-00-00', '0000-00-00', '', 'Administration Division', '', 'Postal Unit-Osaka'),
('ADMM37', '2022-10-14 05:10:59', 'In Use', '6CM24912WQ', 'Monitor', 'HP', 'LV1911', '0000-00-00', '0000-00-00', '', 'Administration Division', '', 'Postal Unit-Buddhika'),
('ADMM4', '2022-09-28 10:15:44', 'In Use', 'ETLKX0W024125068944300', 'Monitor', 'ACER', 'V193HQV', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADMM5', '2022-09-29 03:47:12', 'In Use', 'CNC004P5Z0', 'Monitor', 'HP', 'LE1851w', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADMM6', '2022-09-29 03:51:58', 'In Use', 'MMLX3SS0093237B4D34220', 'Monitor', 'ACER', 'G196HQL', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADMM7', '2022-09-29 03:54:18', 'In Use', '6CM2490Y6W', 'Monitor', 'HP', 'LV1911', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADMM8', '2022-09-29 04:03:01', 'In Use', '36505917NN', 'Monitor', 'NEC', 'VE1904G-BK', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADMM9', '2022-09-29 04:10:30', 'In Use', 'CNC050PKQ1', 'Monitor', 'HP', '', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADMPH1', '2022-10-18 07:59:32', 'In Use', '3390567064', 'Photocopy', 'Xerox', 'Versalink B7030', '0000-00-00', '0000-00-00', '', 'Administration Division', '', 'Common'),
('ADMPH2', '2022-09-29 06:06:03', 'In Use', 'A789047009258', 'Photocopy', 'KONICA', 'BIZHUB 367', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADMPH3', '2022-10-14 04:55:14', 'Not In Use', '3390566807', 'Monitor', 'Xerox', 'Versalink B7030', '0000-00-00', '0000-00-00', '', 'Administration Division', '', 'Vinod'),
('ADMPR1', '2022-09-28 10:05:27', 'In Use', 'NEAA005864', 'Printer', 'CANON', 'LBP253x', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADMPR10', '2022-09-29 09:54:42', 'In Use', 'NEAA006166', 'Printer', 'CANON', 'F161900', '0000-00-00', '0000-00-00', '', 'Administration Division', '', 'Ao '),
('ADMPR11', '2022-10-12 09:14:41', 'In Use', 'DUMMYPR11', 'Printer', 'BROTHER', 'HL-L5100DN', '0000-00-00', '0000-00-00', '', 'Administration Division', '', 'Buddhika madam'),
('ADMPR12', '2022-10-12 09:16:11', 'In Use', 'ZD7GBJAG700045B', 'Printer', 'SAMSUNG', 'ProXpress M3320ND', '0000-00-00', '0000-00-00', '', 'Administration Division', '', 'AS 2 sumudu madam'),
('ADMPR13', '2022-10-17 07:56:54', 'Not In Use', 'ZD7GBJAG700041W', 'Printer', 'Samsung', 'ProXpress M3320ND', '0000-00-00', '0000-00-00', '', 'Administration Division', '', 'Common'),
('ADMPR14', '2022-10-17 07:57:13', 'Not In Use', 'E75667K8N297439', 'Printer', 'BROTHER', 'HL-L6200DW', '0000-00-00', '0000-00-00', '', 'Administration Division', '', 'Common'),
('ADMPR15', '2022-10-17 07:57:37', 'Not In Use', '72B74BV', 'Printer', 'Lexmark', 'E260dn', '0000-00-00', '0000-00-00', '', 'Administration Division', '', 'Common-Buddhini WS'),
('ADMPR16', '2022-10-14 05:08:38', 'In Use', 'NQAA005332', 'Printer', 'Canon', 'LBP 228x', '0000-00-00', '0000-00-00', '', 'Administration Division', '', 'Postal Unit-Osaka'),
('ADMPR17', '2022-10-31 07:59:04', 'In Use', 'E715662D7N617983', 'Printer', 'Brother', 'HL-L5100DN', '0000-00-00', '0000-00-00', '', 'Administration Division', '', 'E5'),
('ADMPR2', '2022-09-28 10:13:01', 'In Use', 'E66821L9J427472', 'Printer', 'BROTHER ', 'HL-5350DN', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADMPR3', '2022-09-29 05:12:32', 'In Use', 'E66821L9J427250', 'Printer', 'BROTHER', 'HL5350DN', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADMPR4', '2022-09-29 05:15:56', 'In Use', 'DUMMYPR4', 'Printer', 'LEXMARK', 'E260dn', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADMPR5', '2022-09-29 05:34:38', 'In Use', 'E66821L9J427371', 'Printer', 'BROTHER', 'HL5350DN', '0000-00-00', '0000-00-00', '', 'Administration Division', '', ''),
('ADMPR6', '2022-09-29 06:04:23', 'In Use', 'E66821L9J427488', 'Printer', 'BROTHER', 'HL5350DN', '0000-00-00', '0000-00-00', '', 'Transport Unit', '', ''),
('ADMPR7', '2022-09-29 06:03:36', 'In Use', '3223350665', 'Printer', 'XEROX', 'PHASER 3320', '0000-00-00', '0000-00-00', '', 'Transport Unit', '', ''),
('ADMPR8', '2022-09-29 09:31:54', 'In Use', 'E69530K1J134101', 'Printer', 'BROTHER', 'HL22', '0000-00-00', '0000-00-00', '', 'Administration Division', '', 'Sas 2 matheesha madam'),
('ADMPR9', '2022-09-29 09:34:39', 'In Use', 'VNL3G00756', 'Printer', 'HP', '', '0000-00-00', '0000-00-00', '', 'Administration Division', '', 'SAS1'),
('AUD1', '2022-09-27 06:12:13', 'In Use', 'EW2819122056A002', 'CPU', 'Ewis', 'Pro 2800 MT', '2019-12-20', '2022-12-20', '', 'Internal Audit Division', '', 'Wasanthi'),
('AUD10', '2022-09-28 05:02:03', 'In Use', 'EW2819122056A008', 'CPU', 'Ewis', 'Pro 2800 MT', '2019-12-20', '2022-12-20', '', 'Internal Audit Division', '', 'Babuji'),
('AUD11', '2022-09-28 05:07:32', 'In Use', 'PSVD903004131056639200', 'CPU', 'acer', 'Veriton M2610', '0000-00-00', '0000-00-00', '', 'Internal Audit Division', '', 'Duminda'),
('AUD12', '2022-09-28 05:16:19', 'In Use', 'EW2819122056A007', 'CPU', 'Ewis', 'Pro 2800 MT', '2019-12-20', '2022-12-20', '', 'Internal Audit Division', '', 'Common 2'),
('AUD2', '2022-09-27 06:19:44', 'In Use', 'EW2819122056A001', 'CPU', 'Ewis', 'Pro 2800 MT', '2019-12-20', '2022-12-20', '', 'Internal Audit Division', '', 'Namal'),
('AUD3', '2022-09-28 04:55:33', 'In Use', 'SGH245TFS9', 'CPU', 'HP', 'Pro 3330 MT', '0000-00-00', '0000-00-00', '', 'Internal Audit Division', '', 'Suganya'),
('AUD4', '2022-09-28 05:08:27', 'In Use', 'DTVJSSG00144700FA79600', 'CPU', 'acer', 'Veriton M2630', '0000-00-00', '0000-00-00', '', 'Internal Audit Division', '', 'Inoka'),
('AUD5', '2022-09-28 04:26:59', 'In Use', 'SGH725TPRB', 'CPU', 'HP', 'ProDesk 400 G4 MT', '0000-00-00', '0000-00-00', '', 'Internal Audit Division', '', 'Deshamani'),
('AUD6', '2022-09-28 04:30:58', 'In Use', 'SGH245TF7K', 'CPU', 'HP', 'Pro 3330 MT', '0000-00-00', '0000-00-00', '', 'Internal Audit Division', '', 'Common 1'),
('AUD7', '2022-09-28 04:38:55', 'In Use', 'SGH151SB2L', 'CPU', 'HP', 'Compaq 6200 Pro MT', '0000-00-00', '0000-00-00', '', 'Internal Audit Division', '', 'Mallika'),
('AUD8', '2022-09-28 04:50:52', 'In Use', 'SGH306RZB0', 'CPU', 'HP', 'Pro 3330 MT', '0000-00-00', '0000-00-00', '', 'Internal Audit Division', '', 'Amila'),
('AUD9', '2022-09-28 04:56:46', 'In Use', 'SGH245TF3P', 'CPU', 'HP', 'Pro 3330 MT', '0000-00-00', '0000-00-00', '', 'Internal Audit Division', '', 'Hashan'),
('AUDL1', '2022-09-28 05:33:39', 'In Use', '5CD6460H2Z', 'Laptop', 'HP', 'ProBook 450 G3', '0000-00-00', '0000-00-00', '', 'Internal Audit Division', '', 'Common 3'),
('AUDM1', '2022-09-27 06:15:36', 'In Use', 'EWMO185V190100446D', 'Monitor', 'Ewis', '', '2019-12-20', '2022-12-20', '', 'Internal Audit Division', '', 'Wasanthi'),
('AUDM10', '2022-09-28 05:03:15', 'In Use', 'EWMO185V190100516D', 'Monitor', 'Ewis', '', '2019-12-20', '2022-12-20', '', 'Internal Audit Division', '', 'Babuji'),
('AUDM11', '2022-09-28 05:10:27', 'In Use', '6CM2410ZFH', 'Monitor', 'HP', 'LV1911', '0000-00-00', '0000-00-00', '', 'Internal Audit Division', '', 'Duminda'),
('AUDM12', '2022-09-28 05:18:39', 'In Use', 'EWMO185V190100528D', 'Monitor', 'Ewis', '', '2019-12-20', '2022-12-20', '', 'Internal Audit Division', '', 'Common 2'),
('AUDM2', '2022-09-27 06:21:15', 'In Use', 'EWMO185V190100529D', 'Monitor', 'Ewis', '', '2019-12-20', '2022-12-20', '', 'Internal Audit Division', '', 'Namal'),
('AUDM3', '2022-09-27 06:25:26', 'In Use', '6CM2410X0K', 'Monitor', 'HP', 'LV 1911', '0000-00-00', '0000-00-00', '', 'Internal Audit Division', '', 'Suganya'),
('AUDM4', '2022-09-27 06:36:37', 'In Use', 'CN-03XNMH-64180-22P-0P4S', 'Monitor', 'Dell', '', '0000-00-00', '0000-00-00', '', 'Internal Audit Division', '', 'Inoka'),
('AUDM5', '2022-09-28 04:28:27', 'In Use', 'CN-0J672H-64180-9BQ-17XL', 'Monitor', 'Dell', 'E1709Wc', '0000-00-00', '0000-00-00', '', 'Internal Audit Division', '', 'Deshamani'),
('AUDM6', '2022-09-28 04:34:29', 'In Use', 'MMLY6SS0064450BB418501', 'Monitor', 'acer', 'V206HQL', '0000-00-00', '0000-00-00', '', 'Internal Audit Division', '', 'Common 1'),
('AUDM7', '2022-09-28 04:40:23', 'In Use', 'ETLKX0W0241250685C4300', 'Monitor', 'acer', 'V193HQV', '0000-00-00', '0000-00-00', '', 'Internal Audit Division', '', 'Mallika'),
('AUDM8', '2022-09-28 04:52:00', 'In Use', '6CM249126C', 'Monitor', 'HP', 'LV1911', '0000-00-00', '0000-00-00', '', 'Internal Audit Division', '', 'Amila'),
('AUDM9', '2022-09-28 04:57:44', 'In Use', '3CQ7232C76', 'Monitor', 'HP', 'V194', '0000-00-00', '0000-00-00', '', 'Internal Audit Division', '', 'Hashan'),
('AUDPH1', '2022-09-28 04:43:56', 'In Use', 'PC070786', 'Photocopy', 'TOSHIBA', 'e-STUDIO2518A', '0000-00-00', '0000-00-00', '', 'Internal Audit Division', '', ''),
('AUDPR1', '2022-09-27 06:17:00', 'In Use', 'NEAA005866', 'Printer', 'Canon', 'LBP 253x', '0000-00-00', '0000-00-00', '', 'Internal Audit Division', '', 'Wasanthi'),
('AUDPR2', '2022-09-28 05:19:59', 'In Use', 'E75662D7N618013', 'Printer', 'brother', 'HL-L5100DN', '0000-00-00', '0000-00-00', '', 'Internal Audit Division', '', 'Inoka'),
('AUDPR3', '2022-09-28 05:21:45', 'In Use', 'E66817MOJ851012', 'Printer', 'brother', 'HL-5340D', '0000-00-00', '0000-00-00', '', 'Internal Audit Division', '', 'Common 2'),
('AUDPR4', '2022-09-28 05:26:18', 'In Use', 'NKLA015267', 'Printer', 'Canon', '', '0000-00-00', '0000-00-00', '', 'Internal Audit Division', '', 'Chief Internal Auditor'),
('DEV10', '2022-09-28 04:43:31', 'In Use', 'SGH245TFS0', 'CPU', 'HP', '', '0000-00-00', '0000-00-00', '', 'Development Division', '', ''),
('DEV2', '2022-09-28 04:47:04', 'In Use', 'EW261606998GN007', 'CPU', 'Evis', '', '0000-00-00', '0000-00-00', '', 'Development Division', '', ''),
('DEV3', '2022-09-28 04:14:49', 'In Use', '35010041A', 'CPU', 'NEC', '', '0000-00-00', '0000-00-00', '', 'Development Division', '', ''),
('DEV4', '2022-09-28 04:17:49', 'In Use', 'SGH151SB14', 'CPU', 'HP', '', '0000-00-00', '0000-00-00', '', 'Development Division', '', ''),
('DEV5', '2022-09-28 04:25:56', 'In Use', '17EU8ZKKTG3GJJ5EJ3M1', 'CPU', 'HP', '', '0000-00-00', '0000-00-00', '', 'Development Division', '', ''),
('DEV6', '2022-09-28 04:28:56', 'In Use', 'DTX0CSG01254903D0E9600', 'CPU', 'ACER', '', '0000-00-00', '0000-00-00', '', 'Development Division', '', ''),
('DEV7', '2022-09-28 04:32:25', 'In Use', 'PSVD903004131056719200', 'CPU', 'ACER', '', '0000-00-00', '0000-00-00', '', 'Development Division', '', ''),
('DEV8', '2022-09-28 04:35:45', 'In Use', 'SGH725TPPF', 'CPU', 'HP', '', '0000-00-00', '0000-00-00', '', 'Development Division', '', ''),
('DEV9', '2022-09-28 04:39:41', 'In Use', 'PSVD903004131056769200', 'CPU', 'ACER', '', '0000-00-00', '0000-00-00', '', 'Development Division', '', ''),
('DEVFAX1', '2022-09-28 04:54:04', 'In Use', 'DUMMYF1', 'Fax', 'BROTHER', '', '0000-00-00', '0000-00-00', '', 'Development Division', '', ''),
('DEVL1', '2022-09-28 04:50:31', 'In Use', '5CD0159S4C', 'Laptop', 'HP', '', '0000-00-00', '0000-00-00', '', 'Development Division', '', ''),
('DEVM10', '2022-09-28 04:44:58', 'In Use', '3CQ7232CVN', 'Monitor', 'HP', '', '0000-00-00', '0000-00-00', '', 'Development Division', '', ''),
('DEVM2', '2022-09-28 04:48:21', 'In Use', 'CND7500W6L', 'Monitor', 'HP', '', '0000-00-00', '0000-00-00', '', 'Development Division', '', ''),
('DEVM3', '2022-09-28 04:14:24', 'In Use', '6CM2410ZLK', 'Monitor', 'HP', '', '0000-00-00', '0000-00-00', '', 'Development Division', '', ''),
('DEVM4', '2022-09-28 04:19:08', 'In Use', 'EWMO185V160200362D', 'Monitor', 'Evis', '', '0000-00-00', '0000-00-00', '', 'Development Division', '', ''),
('DEVM5', '2022-09-28 04:23:36', 'In Use', '6CM2430BYQ', 'Monitor', 'HP', '', '0000-00-00', '0000-00-00', '', 'Development Division', '', ''),
('DEVM6', '2022-09-28 04:30:56', 'In Use', 'EZ30515094CRXC', 'Monitor', 'HP', '', '0000-00-00', '0000-00-00', '', 'Development Division', '', ''),
('DEVM7', '2022-09-28 04:34:25', 'In Use', 'ETLKR0D0231450B6458501', 'Monitor', 'ACER', '', '0000-00-00', '0000-00-00', '', 'Development Division', '', ''),
('DEVM8', '2022-09-28 04:37:19', 'In Use', '36505252NN', 'Monitor', 'NEC', '', '0000-00-00', '0000-00-00', '', 'Development Division', '', ''),
('DEVM9', '2022-09-28 04:41:36', 'In Use', 'MMT3FSS004550003683B00', 'Monitor', 'ACER', '', '0000-00-00', '0000-00-00', '', 'Development Division', '', ''),
('DEVPH1', '2022-09-28 04:52:50', 'In Use', 'A789047007208', 'Photocopy', 'CONICA', '', '0000-00-00', '0000-00-00', '', 'Development Division', '', ''),
('DEVPR1', '2022-09-28 04:57:39', 'In Use', 'NEAA005855', 'Printer', 'CANON', '', '0000-00-00', '0000-00-00', '', 'Development Division', '', ''),
('DEVPR2', '2022-09-28 05:00:30', 'In Use', 'NQAA005328', 'Printer', 'CANON', '', '0000-00-00', '0000-00-00', '', 'Development Division', '', ''),
('DEVPR3', '2022-09-28 05:02:22', 'In Use', 'E69530D2J194284', 'Printer', 'BROTHER', 'HL-2250DN', '0000-00-00', '0000-00-00', '', 'Development Division', '', ''),
('ENG1', '2022-10-18 05:30:40', 'In Use', 'SGH245TFRZ', 'CPU', 'HP', 'Pro 3330 Micro Tower', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', 'CC'),
('ENG10', '2022-10-31 08:11:41', 'In Use', '54901563396', 'CPU', 'ACER', 'extensa m2610', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', 'Sanjeewan sir eng1'),
('ENG11', '2022-10-31 08:24:05', 'In Use', 'SGH245TFS6', 'CPU', 'HP', 'PRO 3330MT', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', 'Gajan sir eng 3'),
('ENG12', '2022-11-01 04:33:47', 'In Use', 'EW2819061968A003', 'CPU', 'EWIS', 'EWIS Pro2800', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', 'indika ms'),
('ENG13', '2022-11-01 04:37:30', 'In Use', 'EW2819122056A004', 'CPU', 'EWIS', 'EWIS Pro2800', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', ''),
('ENG14', '2022-11-01 04:41:38', 'In Use', 'DTX0CSG01254903DB49600', 'CPU', 'ACER', 'EXTENSA M2610', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', ''),
('ENG15', '2022-11-01 04:54:52', 'In Use', 'SGH245TFV9', 'CPU', 'HP ', 'PRO 3330MT', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', ''),
('ENG2', '2022-10-18 05:41:56', 'In Use', '36008181A', 'CPU', 'NEC', 'MG33LBZEEDVFSBZ', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', ''),
('ENG3', '2022-10-18 05:46:18', 'In Use', 'EW2819122056A005', 'CPU', 'EVIS', 'Pro 2800', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', ''),
('ENG4', '2022-10-18 05:54:54', 'In Use', 'DUMMY', 'CPU', 'ACER', 'Veriton M490', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', ''),
('ENG5', '2022-10-18 05:58:02', 'In Use', 'DTX0CSG01254903DC79600', 'CPU', 'ACER', 'Extensa M2610', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', ''),
('ENG6', '2022-10-18 06:08:40', 'In Use', 'SGH245TFS1', 'CPU', 'HP', 'Pro3330 MT', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', ''),
('ENG7', '2022-10-18 06:16:48', 'In Use', 'DTVJSSG00144700FAD9600', 'CPU', 'ACER', 'Veriton M2630', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', ''),
('ENG8', '2022-10-18 06:28:22', 'In Use', 'SGH008R954', 'CPU', 'HP', 'Pro2000/2080 ', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', ''),
('ENG9', '2022-10-18 06:39:03', 'In Use', 'DTX0CSG01254903D159600', 'CPU', 'ACER', 'Extensa M2610', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', ''),
('ENGFAX1', '2022-10-19 04:17:15', 'In Use', 'E71447J1J91152', 'Fax', 'Brother', '2840', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', ''),
('ENGL1', '2022-10-31 08:27:24', 'In Use', '5CD8010HVG', 'Laptop', 'HP', '', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', 'Gajan sir eng 3'),
('ENGL2', '2022-10-31 08:29:07', 'In Use', '5CD611371R', 'Laptop', 'HP', '', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', 'PRABATH SIR ENG 2'),
('ENGL3', '2022-11-01 05:22:46', 'In Use', '5CDO159S40', 'Laptop', 'HP', 'ProBook450G7', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', 'DIR ENG'),
('ENGM1', '2022-10-18 05:32:58', 'In Use', 'MMT3FSS004550002833B00', 'Monitor', 'ACER', 'E1900HQ', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', 'CC'),
('ENGM10', '2022-10-31 08:14:27', 'In Use', 'MMT3FSS004550003623B00', 'Monitor', 'ACER', 'E1900HQ', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', ''),
('ENGM11', '2022-10-31 08:22:08', 'In Use', '6CM24109Y2', 'Monitor', 'HP', 'LV1911', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', 'Gajan sir eng 3'),
('ENGM12', '2022-11-01 04:35:06', 'In Use', 'EWMO185V190400159', 'Monitor', 'EWIS', '', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', ''),
('ENGM13', '2022-11-01 04:40:07', 'In Use', 'EWMO185V190400005D', 'Monitor', 'EWIS', '', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', ''),
('ENGM14', '2022-11-01 04:42:34', 'In Use', '6CM2410BRT', 'Monitor', 'HP', 'LV1911', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', ''),
('ENGM15', '2022-11-01 06:16:36', 'In Use', '6CM2410C45', 'Monitor', 'HP', 'LV1911', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', ''),
('ENGM2', '2022-10-18 05:44:09', 'In Use', '36505773NN', 'Monitor', 'NEC', 'L190NU', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', ''),
('ENGM3', '2022-10-18 05:48:42', 'In Use', 'EWMO185V190400040D', 'Monitor', 'EVIS', '', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', ''),
('ENGM4', '2022-10-18 05:52:42', 'In Use', 'ETLKX0W0241250685E4300', 'Monitor', 'ACER', 'V193HQV', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', ''),
('ENGM5', '2022-10-18 06:00:01', 'In Use', 'MMT3FSS0045500028C3B00', 'Monitor', 'ACER', 'E1900HQ', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', ''),
('ENGM6', '2022-10-18 06:11:43', 'In Use', 'MMLY6SS0064450BB3B8501', 'Monitor', 'ACER', 'P206HQL', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', ''),
('ENGM7', '2022-10-18 06:17:51', 'In Use', '6CM2430B8B', 'Monitor', 'HP', 'LV1911', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', ''),
('ENGM8', '2022-10-18 06:23:04', 'In Use', 'CNC004P66Z', 'Monitor', 'HP', 'LE1851w', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', ''),
('ENGM9', '2022-10-18 06:41:09', 'In Use', 'MMT3FSS004550003583B00', 'Monitor', 'ACER', 'E1900HQ', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', ''),
('ENGPH1', '2022-10-19 04:14:47', 'In Use', '3390633059', 'Photocopy', 'Xerox', 'VersaLink B7030', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', ''),
('ENGPH2', '2022-10-19 04:26:09', 'In Use', '2VM02903', 'Photocopy', 'CANON', 'imageRUNNER 2625i', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', ''),
('ENGPR1', '2022-10-18 05:35:13', 'In Use', 'SGHB071432', 'Printer', 'HP', 'LaserJet1015', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', 'CC'),
('ENGPR2', '2022-10-18 06:06:31', 'In Use', 'E66817K0J791606', 'Printer', 'Brother', 'LH-53', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', ''),
('ENGPR3', '2022-10-18 06:30:32', 'In Use', 'E69530D2J194270', 'Printer', 'Brother', 'HL-2250DN', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', ''),
('ENGPR4', '2022-10-18 06:44:11', 'In Use', 'E69530D2J194135', 'Printer', 'Brother', 'HL-2250DN', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', ''),
('ENGPR5', '2022-10-31 08:16:49', 'In Use', 'E75667K8N297444', 'Printer', 'BROTHER', 'HL-L6200DW', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', 'Sanjeewan sir eng1'),
('ENGPR6', '2022-11-01 04:57:28', 'In Use', '460083610D5X6', 'Printer', 'Lexmark', 'MS421', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', ''),
('ENGPR7', '2022-11-01 05:19:49', 'In Use', 'NNXA115025', 'Printer', 'CANON', 'LBPb21Cw', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', 'ADDL SEC ENG color'),
('GOV1', '2022-11-03 08:51:35', 'In Use', 'SGH725TPQH', 'CPU', 'HP', 'ProDesk 400 G4 MT', '0000-00-00', '0000-00-00', '', 'Gov Audit Division', '', ''),
('GOV2', '2022-11-03 08:59:23', 'In Use', 'SGH245TFS7', 'CPU', 'HP', 'Pro 3330 MT', '0000-00-00', '0000-00-00', '', 'Gov Audit Division', '', ''),
('GOVM1', '2022-11-03 08:54:15', 'In Use', '3CQ7232CSZ', 'Monitor', 'HP', 'V194', '0000-00-00', '0000-00-00', '', 'Gov Audit Division', '', ''),
('GOVM2', '2022-11-03 08:56:54', 'In Use', '6CM2410BNH', 'Monitor', 'HP', 'LV1911', '0000-00-00', '0000-00-00', '', 'Gov Audit Division', '', ''),
('GOVPR1', '2022-11-03 09:00:52', 'In Use', 'E75662D7N617852', 'Printer', 'Brother', 'HL-L5100DN', '0000-00-00', '0000-00-00', '', 'Gov Audit Division', '', ''),
('IT1', '2022-09-21 07:34:40', 'In Use', 'DTVJSSG00144606BBF9600', 'CPU', 'Acer', 'Vertion M2630', '0000-00-00', '0000-00-00', '', 'IT Unit', '', ''),
('IT2', '2022-09-21 07:34:53', 'In Use', 'DUMMY2', 'CPU', 'Acer', 'Verition', '0000-00-00', '0000-00-00', '', 'IT Unit', '', ''),
('IT3', '2022-09-22 08:54:04', 'In Use', '36008221A', 'CPU', 'Nec', 'MG33LBZEEDVFSBZ	', '0000-00-00', '0000-00-00', '', 'IT Unit', '', ''),
('IT4', '2022-09-28 05:29:11', 'In Use', 'SGH725TPR2', 'CPU', 'HP', 'ProDesk 400 G4 MT', '0000-00-00', '0000-00-00', '', 'IT Unit', '', ''),
('IT5', '2022-09-22 09:03:19', 'In Use', '36008211A', 'CPU', 'NEC', 'MG33LBZEEDVFSBZ', '0000-00-00', '0000-00-00', '', 'IT Unit', '', 'From Sec office'),
('ITL1', '2022-09-22 06:10:20', 'In Use', '5CG32404S0', 'Laptop', 'HP', '2000', '0000-00-00', '0000-00-00', '', 'IT Unit', '', ''),
('ITL2', '2022-09-28 05:29:40', 'In Use', '5CD6460HBH', 'Laptop', 'HP', '', '0000-00-00', '0000-00-00', '', 'IT Unit', '', ''),
('ITL4', '2022-09-22 08:38:31', 'In Use', '36505782NN', 'Monitor', 'NEC', 'L190NU', '0000-00-00', '0000-00-00', '', 'IT Unit', '', ''),
('ITM1', '2022-09-22 08:39:43', 'In Use', 'MMLY6SS0064450BB3F8501', 'Monitor', 'Acer', 'V206HQL', '0000-00-00', '0000-00-00', '', 'IT Unit', '', ''),
('ITM2', '2022-09-22 08:47:30', 'In Use', 'CNC004P5X5', 'Monitor', 'HP', 'LE1851w', '0000-00-00', '0000-00-00', '', 'IT Unit', '', ''),
('ITM3', '2022-09-28 05:49:18', 'In Use', '6CM249127V', 'Monitor', 'HP', 'LV1911', '0000-00-00', '0000-00-00', '', 'IT Unit', '', ''),
('ITM5', '2022-09-22 08:50:58', 'In Use', 'CNC004P5XF', 'Monitor', 'HP', 'LE1851w', '0000-00-00', '0000-00-00', '', 'IT Unit', '', 'From Sec office'),
('ITPH1', '2022-09-21 07:34:26', 'In Use', '22149', 'Photocopy', 'Canon', 'IR23I8L', '0000-00-00', '0000-00-00', '', 'IT Unit', '', ''),
('ITPR1', '2022-09-21 07:16:38', 'In Use', 'ZD7GBJAG70004HH', 'Printer', 'Samsung', 'M3320ND', '0000-00-00', '0000-00-00', '', 'IT Unit', '', ''),
('ITPR2', '2022-09-21 07:16:46', 'In Use', '3223344738', 'Printer', 'Acer', 'Xerox prase 3320', '0000-00-00', '0000-00-00', '', 'IT Unit', '', ''),
('LEG1', '2022-10-17 04:01:09', 'In Use', 'no serial', 'CPU', 'LAPrO', '', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Dinushika');
INSERT INTO `device` (`rno`, `timestamp`, `status`, `sn`, `type`, `brand`, `model`, `pdate`, `edate`, `seller`, `branch`, `amount`, `review`) VALUES
('LEG10', '2022-11-01 05:46:01', 'In Use', 'PDVCX00009232032119201', 'CPU', 'acer', 'Veriton VX4610G', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Naduni'),
('LEG11', '2022-11-01 05:53:50', 'In Use', 'SGH245TG0G', 'CPU', 'HP', 'Pro 3330 MT', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Piyarathna - CC'),
('LEG12', '2022-11-01 06:09:53', 'In Use', 'DTVK7SG076506063389600', 'CPU', 'acer', 'Veriton M2631', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Ganga'),
('LEG13', '2022-11-01 06:51:41', 'In Use', 'EW2618021670G001', 'CPU', 'Ewis', 'Pro 2600 MT', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Legal Consultant (Dilhara)'),
('LEG14', '2022-11-01 06:55:12', 'In Use', 'DTX0CSG01254903D219600', 'CPU', 'acer', 'Extensa M2610', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'AS-I (Chandima Welikala)'),
('LEG15', '2022-11-01 08:06:30', 'Not In Use', 'SGH245TFWT', 'CPU', 'HP', 'Pro 3330 MT', '0000-00-00', '0000-00-00', '', 'Legal Division', '', ''),
('LEG16', '2022-11-01 08:58:11', 'Not In Use', 'no serial', 'CPU', 'LAPrO', '', '0000-00-00', '0000-00-00', '', 'Legal Division', '', ''),
('LEG17', '2022-11-01 08:59:55', 'Not In Use', '35010651A', 'CPU', 'NEC', 'MG33LBZEEDVFSBZ', '0000-00-00', '0000-00-00', '', 'Legal Division', '', ''),
('LEG18', '2022-11-01 09:01:15', 'Not In Use', 'SGH306RZC7', 'CPU', 'HP', 'Pro 3330 MT', '0000-00-00', '0000-00-00', '', 'Legal Division', '', ''),
('LEG19', '2022-11-01 09:04:40', 'In Use', '155P8X1', 'CPU', 'Dell', 'OptiPlex 3010', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'SAS-II (Hiranya Perera)'),
('LEG2', '2022-10-17 04:05:07', 'In Use', 'EW2616071058G005', 'CPU', 'Ewis', 'Pro 2600 MT', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Uma'),
('LEG20', '2022-11-01 10:47:49', 'In Use', '3G7D0D3', 'CPU', 'Dell', 'OptiPlex 5080', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Additional Secretary (Piyumanthi Peiris)'),
('LEG3', '2022-10-17 04:11:26', 'In Use', 'SGH027R9TK', 'CPU', 'HP', 'Pro 2000 MT', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Liyangani'),
('LEG4', '2022-10-17 04:28:02', 'In Use', 'PSVD90000413206D42920', 'CPU', 'acer', 'Veriton M490', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Pradeep'),
('LEG5', '2022-10-17 04:34:22', 'In Use', 'PDVCX00009232032259201', 'CPU', 'acer', 'Veriton VX4610G', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Meenu'),
('LEG6', '2022-10-20 05:00:09', 'In Use', 'EW261606998GN020', 'CPU', 'Ewis', 'Pro 2600 MT', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Bhagya'),
('LEG7', '2022-10-31 10:31:25', 'In Use', '3Y00629FA', 'CPU', 'NEC', 'MG33LBZEESSF', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Dulaji'),
('LEG8', '2022-10-31 10:40:09', 'In Use', 'SGH725TPP1', 'CPU', 'HP', 'ProDesk 400 G4 MT', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Sanjeewani'),
('LEG9', '2022-10-31 10:56:06', 'In Use', 'PSVAV0C001112031552700', 'CPU', 'acer', 'Veriton X490G', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Priyani'),
('LEGF1', '2022-11-01 06:45:33', 'Not In Use', 'U61547J0K768813', 'Fax', 'brother', 'FAX-236', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Legal Consultant (Dilhara)'),
('LEGF2', '2022-11-01 08:00:54', 'In Use', 'U61547H4W938223', 'Fax', 'brother', 'FAX-236', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Branch'),
('LEGL1', '2022-11-01 06:32:03', 'In Use', '5CD8010HWR', 'Laptop', 'HP', 'ProBook 450 G4', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'SAS-I (Roshani Hettige)'),
('LEGL2', '2022-11-01 07:45:54', 'In Use', '5CD6460HGF', 'Laptop', 'HP', 'ProBook 450 G3', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Branch 1'),
('LEGL3', '2022-11-01 07:48:59', 'In Use', '5CG32404HM', 'Laptop', 'HP', '2000', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Branch 2'),
('LEGL4', '2022-11-08 07:12:07', 'In Use', 'F8N0CV14703833B', 'Laptop', 'Asus', 'X555L', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Assistant Secretary-II (Ruwanadini)'),
('LEGM1', '2022-10-17 04:03:22', 'In Use', '6CM24912W9', 'Monitor', 'HP', 'LV1911', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Dinushika'),
('LEGM10', '2022-11-01 05:47:37', 'In Use', '6CM412220Q', 'Monitor', 'HP', 'LV1911', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Naduni'),
('LEGM11', '2022-11-01 05:55:24', 'In Use', '36505843NN', 'Monitor', 'NEC', 'VE1904G-BK', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Piyarathna - CC'),
('LEGM12', '2022-11-01 06:12:02', 'In Use', 'MMLXKSG00151704A6B4220', 'Monitor', 'acer', 'V206HQL', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Ganga'),
('LEGM13', '2022-11-01 06:42:49', 'In Use', 'EWMO185V180100656', 'Monitor', 'Ewis', '', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Legal Consultant (Dilhara)'),
('LEGM14', '2022-11-01 06:56:55', 'In Use', 'MMT3FSS004550002843B00', 'Monitor', 'acer', 'E1900HQ', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'AS-I (Chandima Welikala)'),
('LEGM15', '2022-11-01 08:12:26', 'Not In Use', 'MMLX3SS0093237B5B94220', 'Monitor', 'acer', 'G196HQL', '0000-00-00', '0000-00-00', '', 'Legal Division', '', ''),
('LEGM16', '2022-11-01 09:06:57', 'In Use', 'CN-07C2R4-72872-2C1-A9WM', 'Monitor', 'Dell', 'E1912Hf', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'SAS-II (Hiranya Perera)'),
('LEGM17', '2022-11-01 10:50:27', 'In Use', 'CN-05G6XN-FCC00-14J-C61B-A06', 'Monitor', 'Dell', 'E1920H', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Additional Secretary (Piyumanthi Peiris)'),
('LEGM2', '2022-10-17 04:06:14', 'In Use', 'EWMO185V160200037', 'Monitor', 'Ewis', '', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Uma'),
('LEGM3', '2022-10-17 04:12:41', 'In Use', '36505906NN', 'Monitor', 'NEC', 'VE1904G-BK', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Liyangani'),
('LEGM4', '2022-10-17 04:29:55', 'In Use', 'MMT3FSS004550003653B00', 'Monitor', 'acer', 'E1900HQ', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Pradeep'),
('LEGM5', '2022-10-17 04:36:17', 'In Use', 'MMLX3SS0093237B55F4220', 'Monitor', 'acer', 'G196HQL', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Meenu'),
('LEGM6', '2022-10-20 05:05:36', 'In Use', '6CM24109XR', 'Monitor', 'HP', 'LV1911', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Bhagya'),
('LEGM7', '2022-10-31 10:32:46', 'In Use', 'EWMO185V160200741', 'Monitor', 'Ewis', '', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Dulaji'),
('LEGM8', '2022-10-31 10:41:11', 'In Use', 'CNC015PDR6', 'Monitor', 'HP', 'LE1851w', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Sanjeewani'),
('LEGM9', '2022-10-31 10:53:51', 'In Use', 'ETLNF080101120A0C64202', 'Monitor', 'acer', 'G195HQV', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Priyani'),
('LEGPH1', '2022-11-01 06:04:22', 'In Use', 'A789047007434', 'Photocopy', 'KONICA MINOLTA', 'bizhub 367', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Common 1'),
('LEGPH2', '2022-11-01 07:21:22', 'In Use', 'A1VF041109374', 'Photocopy', 'KONICA MINOLTA', 'bizhub 283', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Common 2'),
('LEGPH3', '2022-11-01 07:35:03', 'Not In Use', 'PC335338', 'Photocopy', 'TOSHIBA', 'e-STUDIO256SE', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Common 3'),
('LEGPH4', '2022-11-01 07:36:39', 'Not In Use', 'PC25065', 'Photocopy', 'TOSHIBA', 'e-STUDIO255', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Common 4'),
('LEGPR1', '2022-10-17 04:08:34', 'In Use', 'NEAA005862', 'Printer', 'Canon', 'LBP 253x', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Uma'),
('LEGPR10', '2022-11-01 06:39:52', 'In Use', 'CJ6J001105', 'Printer', 'PANTUM', 'BP5100DW', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'SAS-I (Roshani Hettige)'),
('LEGPR11', '2022-11-01 06:59:41', 'In Use', 'ZD7GBJAG700048Y', 'Printer', 'Samsung', 'ProXpress M3320ND', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'AS-I (Chandima Welikala)'),
('LEGPR12', '2022-11-01 07:27:35', 'Not In Use', '460083610D5XCM', 'Printer', 'Lexmark', 'MS421', '0000-00-00', '0000-00-00', '', 'Legal Division', '', ''),
('LEGPR13', '2022-11-01 07:39:48', 'Not In Use', 'CNCJD40301', 'Printer', 'HP', 'LaserJet P2050d', '0000-00-00', '0000-00-00', '', 'Legal Division', '', ''),
('LEGPR14', '2022-11-01 07:57:49', 'In Use', '45146PHH32H6R', 'Printer', 'Lexmark', 'MS510dn', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'SAS-II (Hiranya Perera)'),
('LEGPR15', '2022-11-01 10:59:35', 'In Use', 'NEAA005853', 'Printer', 'Canon', 'LBP 253x', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Additional Secretary (Piyumanthi Peiris)'),
('LEGPR16', '2022-11-08 07:17:42', 'In Use', 'NEAA005850', 'Printer', 'Canon', 'LBP 253x', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Assistant Secretary-II (Ruwanadini)'),
('LEGPR2', '2022-10-17 04:14:41', 'In Use', 'NKLA015025', 'Printer', 'Canon', 'LBP 214dw', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Liyangani'),
('LEGPR3', '2022-10-17 04:38:41', 'In Use', 'E75662D7N617989', 'Printer', 'brother', 'HL-L5100DN', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Meenu'),
('LEGPR4', '2022-10-20 05:08:48', 'In Use', '460083610D5XC', 'Printer', 'Lexmark', 'MS421', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Bhagya'),
('LEGPR5', '2022-10-31 10:43:28', 'In Use', 'NKLA015026', 'Printer', 'Canon', 'LBP 214dw', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Sanjeewani'),
('LEGPR6', '2022-11-01 05:49:36', 'In Use', 'NEAA006165', 'Printer', 'Canon', 'LBP 253x', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Naduni'),
('LEGPR7', '2022-11-01 05:57:17', 'In Use', 'E69530K1J134080', 'Printer', 'brother', 'HL-2250DN', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Piyarathna - CC'),
('LEGPR8', '2022-11-01 07:54:09', 'Not In Use', 'E69530D2J194230', 'Printer', 'brother', 'HL-2250DN', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'SAS-II (Hiranya Perera)'),
('LEGPR9', '2022-11-01 06:13:32', 'In Use', 'E69530K1J134074', 'Printer', 'brother', 'HL-2250DN', '0000-00-00', '0000-00-00', '', 'Legal Division', '', 'Ganga'),
('LT1', '2022-10-12 09:22:44', 'In Use', '8C15GY1', 'CPU', 'Dell', 'OptiPlex 7010', '0000-00-00', '0000-00-00', '', 'Labour Tribunal Division', '', ''),
('LT2', '2022-10-12 09:27:34', 'In Use', 'J67D0D3', 'CPU', 'Dell', 'OptiPlex 5080', '0000-00-00', '0000-00-00', '', 'Labour Tribunal Division', '', ''),
('LT3', '2022-10-12 09:22:59', 'In Use', 'FMCRC2S', 'CPU', 'Dell', 'OptiPlex 390', '0000-00-00', '0000-00-00', '', 'Labour Tribunal Division', '', 'sanduni'),
('LT4', '2022-10-12 09:30:53', 'In Use', '3Y00503FA', 'CPU', 'NEC', 'PC MG33LBZEESSF', '0000-00-00', '0000-00-00', '', 'Labour Tribunal Division', '', ''),
('LT5', '2022-10-20 08:10:51', 'Not In Use', '177D0D3', 'CPU', 'Dell', 'OptiPlex 5080', '0000-00-00', '0000-00-00', '', 'Labour Tribunal Division', '', 'Empty Room'),
('LTM1', '2022-10-12 09:24:44', 'In Use', 'ETLKX0W024125068854300', 'Monitor', 'Acer', 'V193HQV', '0000-00-00', '0000-00-00', '', 'Labour Tribunal Division', '', ''),
('LTM2', '2022-10-12 09:32:14', 'In Use', '05G6XIN-FCC00-14J-C768-A06', 'Monitor', 'Dell', 'E1910H', '0000-00-00', '0000-00-00', '', 'Labour Tribunal Division', '', ''),
('LTM3', '2022-10-12 09:26:26', 'In Use', 'CNC004P5LW', 'Monitor', 'HP', 'LE1851w', '0000-00-00', '0000-00-00', '', 'Labour Tribunal Division', '', 'sanduni'),
('LTM4', '2022-10-12 09:33:17', 'In Use', '6CM24109XP', 'Monitor', 'HP', 'LV1911', '0000-00-00', '0000-00-00', '', 'Labour Tribunal Division', '', ''),
('LTM5', '2022-10-20 08:12:44', 'Not In Use', 'CN-05G6XN-FCC00-13J-D7UB-A06', 'Monitor', 'Dell', 'E1920H', '0000-00-00', '0000-00-00', '', 'Labour Tribunal Division', '', 'Empty Room'),
('LTPR1', '2022-10-27 06:26:10', 'In Use', 'ZD7GBJAG10000FN', 'Printer', 'Samsung', 'ProXpress M3320ND', '0000-00-00', '0000-00-00', '', 'Labour Tribunal Division', '', 'Dilshani'),
('LTPR2', '2022-10-27 06:27:47', 'In Use', 'NQAA005832', 'Printer', 'Canon', 'LBP 228x', '0000-00-00', '0000-00-00', '', 'Labour Tribunal Division', '', 'Sanduni'),
('MED1', '2022-10-07 09:21:44', 'In Use', 'EW2618031697G030', 'CPU', 'Ewis', 'Pro 2600 MT', '2018-03-26', '2021-03-26', '', 'Media Unit', '', 'Media Secretary'),
('MED2', '2022-11-04 08:39:59', 'In Use', 'CMS693KKN11143300995', 'CPU', 'Asus', '', '0000-00-00', '0000-00-00', '', 'Media Unit', '', 'Chaminda'),
('MED3', '2022-11-04 08:52:10', 'In Use', 'EW2618031697G032', 'CPU', 'Ewis', 'Pro 2600 MT', '2018-03-26', '2021-03-26', '', 'Media Unit', '', 'Sameera'),
('MED4', '2022-11-04 08:55:33', 'In Use', 'SGH151SB0T', 'CPU', 'HP', 'Compaq 6200 Pro MT', '0000-00-00', '0000-00-00', '', 'Media Unit', '', 'Thusitha'),
('MED5', '2022-11-04 09:00:24', 'In Use', 'SGH725TPN8', 'CPU', 'HP', 'ProDesk 400 G4 MT', '0000-00-00', '0000-00-00', '', 'Media Unit', '', 'Rohan'),
('MED6', '2022-11-04 09:57:18', 'In Use', '0123456789', 'CPU', 'CoolerMaster', '', '0000-00-00', '0000-00-00', '', 'Media Unit', '', 'Kavinda'),
('MED7', '2022-11-04 10:07:35', 'In Use', 'SGH139PZZD', 'CPU', 'HP', 'Compaq 6200 Pro MT', '0000-00-00', '0000-00-00', '', 'Media Unit', '', 'Priyantha'),
('MEDF1', '2022-11-04 09:13:17', 'In Use', 'E71447B7J402940', 'Fax', 'brother', 'FAX-2840', '0000-00-00', '0000-00-00', '', 'Media Unit', '', ''),
('MEDL1', '2022-11-04 09:07:14', 'In Use', '2CE3490DPY', 'Laptop', 'HP', 'ProBook 450 G1', '0000-00-00', '0000-00-00', '', 'Media Unit', '', 'Thusitha'),
('MEDL2', '2022-11-04 09:10:31', 'In Use', 'NHQAUSG00H11600E693400', 'Laptop', 'Acer', 'Predator Helios 300', '0000-00-00', '0000-00-00', '', 'Media Unit', '', 'Kavinda'),
('MEDL3', '2022-11-04 10:10:39', 'In Use', 'NXVJKSG00392001DF87200', 'Laptop', 'acer', 'N18P4', '0000-00-00', '0000-00-00', '', 'Media Unit', '', 'Priyantha'),
('MEDM1', '2022-10-07 09:24:00', 'In Use', 'CNT143B1D1', 'Monitor', 'HP', 'LE1902x', '0000-00-00', '0000-00-00', '', 'Media Unit', '', 'Media Secretary'),
('MEDM2', '2022-11-04 08:42:07', 'In Use', 'D9LMTF114307', 'Monitor', 'Asus', 'VE278', '0000-00-00', '0000-00-00', '', 'Media Unit', '', 'Chaminda'),
('MEDM3', '2022-11-04 08:49:39', 'In Use', 'EWMO185V180100686D', 'Monitor', 'Ewis', '', '0000-00-00', '0000-00-00', '', 'Media Unit', '', 'Sameera'),
('MEDM4', '2022-11-04 08:57:27', 'In Use', 'CNC036RD3S', 'Monitor', 'HP', 'LE1851w', '0000-00-00', '0000-00-00', '', 'Media Unit', '', 'Thusitha'),
('MEDM5', '2022-11-04 09:02:07', 'In Use', 'CNT143B1CS', 'Monitor', 'HP', 'Compaq LE1902x', '0000-00-00', '0000-00-00', '', 'Media Unit', '', 'Rohan'),
('MEDM6', '2022-11-04 10:00:25', 'In Use', 'M5LMRS009125', 'Monitor', 'Asus', 'MX279', '0000-00-00', '0000-00-00', '', 'Media Unit', '', 'Kavinda'),
('MEDM7', '2022-11-04 10:02:43', 'In Use', 'M5LMRS009097', 'Monitor', 'Asus', 'MX279', '0000-00-00', '0000-00-00', '', 'Media Unit', '', 'Kavinda'),
('MEDM8', '2022-11-04 10:06:12', 'In Use', 'CN412909CG', 'Monitor', 'HP', 'S1932', '0000-00-00', '0000-00-00', '', 'Media Unit', '', 'Priyantha'),
('MEDPH1', '2022-11-04 09:24:05', 'In Use', '2VM02883', 'Photocopy', 'Canon', 'imageRUNNER 2625i', '0000-00-00', '0000-00-00', '', 'Media Unit', '', ''),
('MEDPR1', '2022-10-07 09:26:04', 'In Use', 'E73795A8N309720', 'Printer', 'brother', 'HL-L2360DN', '0000-00-00', '0000-00-00', '', 'Media Unit', '', 'Media Secretary'),
('MEDPR2', '2022-11-04 08:45:00', 'In Use', 'CNC1G34183', 'Printer', 'HP', 'LaserJet P2015', '0000-00-00', '0000-00-00', '', 'Media Unit', '', 'Chaminda'),
('MEDPR3', '2022-11-04 08:47:53', 'In Use', 'E75662D7N618065', 'Printer', 'brother', 'HL-L5100DN', '0000-00-00', '0000-00-00', '', 'Media Unit', '', 'Sameera'),
('MEDPR4', '2022-11-04 09:04:20', 'In Use', 'NNXA115024', 'Printer', 'Canon', 'LBP 621Cw', '0000-00-00', '0000-00-00', '', 'Media Unit', '', 'Rohan'),
('MIN1', '2022-11-08 03:57:20', 'In Use', 'EW2819122056A010', 'CPU', 'Ewis', 'Pro 2800 MT', '0000-00-00', '0000-00-00', '', 'Minister Office', '', 'Sulakshi'),
('MIN2', '2022-11-08 04:00:41', 'In Use', 'EW2819122056A009', 'CPU', 'Ewis', 'Pro 2800 MT', '0000-00-00', '0000-00-00', '', 'Minister Office', '', 'Amandi'),
('MIN3', '2022-11-08 04:11:38', 'In Use', 'PDVCX00009232032319201', 'CPU', 'acer', 'Veriton VX4610G', '0000-00-00', '0000-00-00', '', 'Minister Office', '', 'Prabath'),
('MIN4', '2022-11-08 04:14:13', 'In Use', 'SGH245TFSW', 'CPU', 'HP', 'Pro 3330 MT', '0000-00-00', '0000-00-00', '', 'Minister Office', '', ''),
('MIN5', '2022-11-08 04:16:14', 'In Use', 'SGH725TPNX', 'CPU', 'HP', 'ProDesk 400 G4 MT', '0000-00-00', '0000-00-00', '', 'Minister Office', '', 'Chathurangi'),
('MIN6', '2022-11-08 04:20:07', 'Not In Use', 'SGH151SB3N', 'CPU', 'HP', 'Compaq 6200 Pro MT', '0000-00-00', '0000-00-00', '', 'Minister Office', '', ''),
('MIN7', '2022-11-08 05:33:05', 'In Use', 'PDVCX00009232032269201', 'CPU', 'acer', 'Veriton VX490G', '0000-00-00', '0000-00-00', '', 'Minister Office', '', 'Co-ordinating Secretary (Lakshman Gamini)'),
('MIN8', '2022-11-08 05:42:24', 'In Use', 'EW2819061968A004', 'CPU', 'Ewis', 'Pro 2800 MT', '2019-04-06', '2019-04-06', '', 'Minister Office', '', 'PRO (Saman Udawatta)'),
('MIN9', '2022-11-08 05:46:57', 'In Use', '4CE0392KLF', 'CPU', 'HP', 'OptiPlex 7010', '0000-00-00', '0000-00-00', '', 'Minister Office', '', 'Private Secretary (Gamage)'),
('MINF1', '2022-11-08 03:59:19', 'In Use', 'E71447K7J498909', 'Fax', 'brother', 'FAX-2840', '0000-00-00', '0000-00-00', '', 'Minister Office', '', 'Sulakshi'),
('MINF2', '2022-11-08 04:26:04', 'Not In Use', 'U61626D7F204437', 'Fax', 'brother', 'MFC-3360C', '0000-00-00', '0000-00-00', '', 'Minister Office', '', ''),
('MINF3', '2022-11-08 05:38:54', 'In Use', 'E71447D7J421946', 'Fax', 'brother', 'FAX-2840', '0000-00-00', '0000-00-00', '', 'Minister Office', '', 'Co-ordinating Secretary (Lakshman Gamini)'),
('MINF4', '2022-11-08 05:54:26', 'In Use', 'E71447B7J402963', 'Fax', 'brother', 'FAX-2840', '0000-00-00', '0000-00-00', '', 'Minister Office', '', 'Private Secretary (Gamage)'),
('MINL1', '2022-11-08 04:23:16', 'In Use', '5CD550056Q', 'Laptop', 'HP', 'Pavilion 15-ab203tu', '0000-00-00', '0000-00-00', '', 'Minister Office', '', 'Sameera'),
('MINM1', '2022-11-08 03:58:05', 'In Use', 'EWMO185V190100522D', 'Monitor', 'Ewis', '', '0000-00-00', '0000-00-00', '', 'Minister Office', '', 'Sulakshi'),
('MINM2', '2022-11-08 04:01:21', 'In Use', 'EWMO185V190400039D', 'Monitor', 'Ewis', '', '0000-00-00', '0000-00-00', '', 'Minister Office', '', 'Amandi'),
('MINM3', '2022-11-08 04:12:58', 'In Use', '3CQ7232CVS', 'Monitor', 'HP', 'V194', '0000-00-00', '0000-00-00', '', 'Minister Office', '', 'Prabath'),
('MINM4', '2022-11-08 04:14:53', 'In Use', '3CQ7232CTT', 'Monitor', 'HP', 'V194', '0000-00-00', '0000-00-00', '', 'Minister Office', '', ''),
('MINM5', '2022-11-08 04:17:38', 'In Use', '36505409NN', 'Monitor', 'NEC', 'VE1904G-BK', '0000-00-00', '0000-00-00', '', 'Minister Office', '', 'Chathurangi'),
('MINM6', '2022-11-08 05:35:48', 'In Use', '6CM3040F66', 'Monitor', 'HP', 'LV1911', '0000-00-00', '0000-00-00', '', 'Minister Office', '', 'Co-ordinating Secretary (Lakshman Gamini)'),
('MINM7', '2022-11-08 05:44:46', 'In Use', 'EWMO185V190400069', 'Monitor', 'Ewis', '', '2019-04-06', '2022-04-06', '', 'Minister Office', '', 'PRO (Saman Udawatta)'),
('MINM8', '2022-11-08 05:48:22', 'In Use', '3CQ03708CZ', 'Monitor', 'HP', 'V194', '0000-00-00', '0000-00-00', '', 'Minister Office', '', 'Private Secretary (Gamage)'),
('MINPH1', '2022-11-08 04:18:46', 'In Use', 'A789047007369', 'Photocopy', 'KONICA MINOLTA', 'bizhub 367', '0000-00-00', '0000-00-00', '', 'Minister Office', '', ''),
('MINPH2', '2022-11-08 05:55:38', 'Not In Use', '20762836', 'Photocopy', 'KONICA MINOLTA', 'bizhub 210', '0000-00-00', '0000-00-00', '', 'Minister Office', '', 'Private Secretary (Gamage)'),
('MINPR1', '2022-11-08 04:09:18', 'In Use', 'E66817K0J791590', 'Printer', 'brother', 'HL-5340D', '0000-00-00', '0000-00-00', '', 'Minister Office', '', 'Amandi'),
('MINPR2', '2022-11-08 04:24:32', 'Not In Use', 'E73795A8N309662', 'Printer', 'brother', 'HL-L2360DN', '0000-00-00', '0000-00-00', '', 'Minister Office', '', ''),
('MINPR3', '2022-11-08 05:50:34', 'In Use', 'E75662D7N617914', 'Printer', 'brother', 'HL-L5100DN', '0000-00-00', '0000-00-00', '', 'Minister Office', '', 'Private Secretary (Gamage)'),
('MINPR4', '2022-11-08 05:52:59', 'In Use', '5029928033W7D', 'Printer', 'Lexmark', 'CS421dn', '0000-00-00', '0000-00-00', '', 'Minister Office', '', 'Private Secretary (Gamage)'),
('PLA1', '2022-09-30 04:55:32', 'In Use', '35007511A', 'CPU', 'NEC', 'MG33LBZEEDVFSBZ', '0000-00-00', '0000-00-00', '', 'Planning Division', '', 'Kumudumali'),
('PLA10', '2022-10-04 04:33:24', 'In Use', 'EW2819122056A006', 'CPU', 'Ewis', 'Pro 2800 MT', '2019-12-20', '2022-12-20', '', 'Planning Division', '', 'Dir planning'),
('PLA2', '2022-09-30 05:12:59', 'In Use', 'EW2618031697G033', 'CPU', 'Ewis', 'Pro 2600 MT', '2018-03-26', '2021-03-26', '', 'Planning Division', '', 'Saranga'),
('PLA3', '2022-09-30 05:06:40', 'In Use', 'SGH725TPQ2', 'CPU', 'HP', 'ProDesk 400 G4 MT', '0000-00-00', '0000-00-00', '', 'Planning Division', '', 'Nirmala'),
('PLA4', '2022-09-30 05:18:53', 'In Use', 'NO SERIAL', 'CPU', 'LAPrO', 'H81-M1', '0000-00-00', '0000-00-00', '', 'Planning Division', '', 'Amalka'),
('PLA5', '2022-09-30 05:43:41', 'In Use', 'EW281906198A007', 'CPU', 'Ewis', 'Pro 2800 MT', '2019-04-06', '2022-04-06', '', 'Planning Division', '', 'Danusha'),
('PLA6', '2022-09-30 05:48:43', 'In Use', '36008161A', 'CPU', 'NEC', 'MG33LBZEEDVFSBZ', '0000-00-00', '0000-00-00', '', 'Planning Division', '', 'Danushika'),
('PLA7', '2022-09-30 05:53:51', 'In Use', 'SGH306RZB8', 'CPU', 'HP', 'Pro 3330 MT', '0000-00-00', '0000-00-00', '', 'Planning Division', '', 'Upeksha'),
('PLA8', '2022-09-30 06:11:57', 'In Use', 'DTVK7SG076506063349600', 'CPU', 'acer', 'Veriton M2631', '0000-00-00', '0000-00-00', '', 'Planning Division', '', 'Herath'),
('PLA9', '2022-09-30 06:28:12', 'In Use', '4CE0392KP9', 'CPU', 'HP', '280 Pro G6 MT', '0000-00-00', '0000-00-00', '', 'Planning Division', '', 'Deputy Director'),
('PLAF1', '2022-09-30 06:15:30', 'In Use', 'E71447J1J921171', 'Fax', 'brother', 'FAX-2840', '0000-00-00', '0000-00-00', '', 'Planning Division', '', 'Herath'),
('PLAL1', '2022-09-30 04:59:35', 'In Use', '5CD724503Q', 'Laptop', 'HP', 'ProBook 450 G4', '0000-00-00', '0000-00-00', '', 'Planning Division', '', 'Nisansala'),
('PLAL2', '2022-09-30 06:00:28', 'In Use', '5CD7022Y25', 'Laptop', 'HP', 'ProBook 450 G3', '0000-00-00', '0000-00-00', '', 'Planning Division', '', 'Shashikala'),
('PLAL3', '2022-09-30 06:36:01', 'In Use', 'Dell 3501', 'Laptop', 'DELL', 'Inspiron 3501', '2021-12-30', '2023-12-30', 'State Trading Corporation', 'Planning Division', '', 'Deputy Director'),
('PLAL4', '2022-10-04 04:37:08', 'In Use', '5CD742BOF9', 'Laptop', 'HP', 'ProBook 440 G4', '0000-00-00', '0000-00-00', '', 'Planning Division', '', 'DD PLANNING(2) KUMUDU MADAM'),
('PLAM1', '2022-09-30 04:57:34', 'In Use', 'MMLX3SS0093237B55C4220', 'Monitor', 'acer', 'G196HQL', '0000-00-00', '0000-00-00', '', 'Planning Division', '', 'Kumudumali'),
('PLAM10', '2022-10-04 04:35:08', 'In Use', 'EWMO185V190100513D', 'Monitor', 'Ewis', '', '2019-12-20', '2022-12-20', '', 'Planning Division', '', 'Dir planning'),
('PLAM2', '2022-09-30 05:13:55', 'In Use', '6CM41220QT', 'Monitor', 'HP', 'LV1911', '0000-00-00', '0000-00-00', '', 'Planning Division', '', 'Saranga'),
('PLAM3', '2022-09-30 05:08:44', 'In Use', '3CQ7232CTV', 'Monitor', 'HP', 'V194', '0000-00-00', '0000-00-00', '', 'Planning Division', '', 'Nirmala'),
('PLAM4', '2022-09-30 05:20:59', 'In Use', 'CN-078DVT-QDC00-953-2H9U-A03', 'Monitor', 'DELL', 'P2219H', '0000-00-00', '0000-00-00', '', 'Planning Division', '', 'Amalka'),
('PLAM5', '2022-09-30 05:44:48', 'In Use', 'EWMO185V190400224', 'Monitor', 'Ewis', '', '2019-04-06', '2022-04-06', '', 'Planning Division', '', 'Danusha'),
('PLAM6', '2022-09-30 05:49:39', 'In Use', '36505772NN', 'Monitor', 'NEC', 'VE1904G-BK', '0000-00-00', '0000-00-00', '', 'Planning Division', '', 'Danushika'),
('PLAM7', '2022-09-30 05:55:21', 'In Use', 'MMLXKSG00151704A4B4220', 'Monitor', 'acer', 'V206HQL', '0000-00-00', '0000-00-00', '', 'Planning Division', '', 'Upeksha'),
('PLAM8', '2022-09-30 06:13:20', 'In Use', 'MMLXKSG001517049E44220', 'Monitor', 'acer', 'V206HQL', '0000-00-00', '0000-00-00', '', 'Planning Division', '', 'Herath'),
('PLAM9', '2022-09-30 06:29:56', 'In Use', '3CQ0370BJ5', 'Monitor', 'HP', 'V194', '0000-00-00', '0000-00-00', '', 'Planning Division', '', 'Deputy Director'),
('PLAPH1', '2022-09-30 06:05:45', 'In Use', '3390562828', 'Photocopy', 'Xerox', 'Versalink B7030', '0000-00-00', '0000-00-00', '', 'Planning Division', '', 'Common 1'),
('PLAPH2', '2022-10-17 07:56:29', 'Not In Use', 'PC21537', 'Photocopy', 'TOSHIBA', 'e-STUDIO232', '0000-00-00', '0000-00-00', '', 'Planning Division', '', 'Common 2'),
('PLAPR1', '2022-09-30 05:02:44', 'In Use', 'E75667G9N582363', 'Printer', 'brother', 'HL-L6200DW', '0000-00-00', '0000-00-00', '', 'Planning Division', '', 'Nisansala'),
('PLAPR2', '2022-09-30 05:57:42', 'In Use', 'E66817K0J791645', 'Printer', 'brother', 'HL-5340D', '0000-00-00', '0000-00-00', '', 'Planning Division', '', 'Upeksha'),
('PLAPR3', '2022-09-30 06:01:53', 'In Use', 'E75667G9N582282', 'Printer', 'brother', 'HL-L6200DW', '0000-00-00', '0000-00-00', '', 'Planning Division', '', 'Shashikala'),
('PLAPR4', '2022-09-30 06:31:26', 'In Use', 'E75662D7N618100', 'Printer', 'brother', 'HL-L5100DN', '0000-00-00', '0000-00-00', '', 'Planning Division', '', 'Deputy Director'),
('PLAPR5', '2022-10-04 04:39:09', 'In Use', 'E75662D7N617967', 'Printer', 'Brother', 'HL-L5100DN', '0000-00-00', '0000-00-00', '', 'Planning Division', '', 'Dir planning'),
('REF10', '2022-09-28 06:58:00', 'In Use', 'SGH306RZCH', 'CPU', 'HP', 'Pro 3330MT', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', ''),
('REF11', '2022-09-28 07:03:27', 'In Use', '35010241A', 'CPU', 'NEC', 'NG33LBZEEDVFSBZ', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', ''),
('REF12', '2022-09-28 07:07:55', 'In Use', 'SGH725TPQZ', 'CPU', 'HP', 'Pro Desk 400 G4 MT', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', ''),
('REF13', '2022-09-28 07:25:04', 'In Use', 'EW2618031697G018', 'CPU', 'EWIS', 'PRO 2600', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', ''),
('REF14', '2022-09-28 09:12:20', 'In Use', '4CE9522SYR', 'CPU', 'HP', 'Desktop Pro G3', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', ''),
('REF15', '2022-09-28 09:20:53', 'In Use', 'SGH008R97G', 'CPU', 'HP', 'Pro 2000 MT', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', ''),
('REF16', '2022-09-28 09:23:36', 'In Use', '3Y00483FA', 'CPU', 'NEC', 'PC-MG33LBZEESSF', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', ''),
('REF17', '2022-09-28 09:31:06', 'In Use', '4CE9522XL', 'CPU', 'HP', 'Desktop Pro G3', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', ''),
('REF18', '2022-09-28 09:36:50', 'In Use', 'Dummy18', 'CPU', 'ZEBRONICS', '', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', ''),
('REF19', '2022-09-30 09:04:49', 'In Use', '4CE95229Y9', 'CPU', 'HP', 'Desktop pro G3', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', 'Dir ref'),
('REF5', '2022-09-28 06:24:33', 'In Use', 'SGH245TG20', 'CPU', 'HP', 'Pro 3330MT', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', ''),
('REF6', '2022-09-28 06:13:41', 'In Use', 'SGH8320KHR', 'CPU', 'HP', 'COMPAQ dx2390 MT', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', ''),
('REF7', '2022-09-28 06:33:41', 'In Use', 'FHZ4GY1', 'CPU', 'Dell', 'OptiFlex7010', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', ''),
('REF8', '2022-09-28 06:42:26', 'In Use', 'PDUCX000092320325B9201', 'CPU', 'ACER', 'Veriton X4610G', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', ''),
('REF9', '2022-09-28 06:47:57', 'In Use', '4CE9522SZ6', 'CPU', 'HP', 'Desktop Pro G3', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', ''),
('REFL1', '2022-10-27 06:24:26', 'In Use', 'F8N0CV14709433B', 'Laptop', 'Asus', 'X555L', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', 'Yashodha'),
('REFL2', '2022-10-27 06:25:22', 'In Use', '5CD8010HTY', 'Laptop', 'HP', 'Probook 450 G4', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', 'Assistant Secretary (Madhu)'),
('REFL3', '2022-10-27 06:18:29', 'In Use', '5CD7436NW9', 'Laptop', 'HP', 'ProBook 440 G4', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', 'Additional Secretary'),
('REFM10', '2022-09-28 06:59:21', 'In Use', '6CM24912WP', 'Monitor', 'HP', 'LV1911', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', ''),
('REFM11', '2022-09-28 07:05:34', 'In Use', '36505836NN', 'Monitor', 'NEC', 'L190NU', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', ''),
('REFM12', '2022-09-28 07:09:47', 'In Use', 'CNC004P673', 'Monitor', 'HP', 'LE1851W', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', ''),
('REFM13', '2022-09-28 07:27:40', 'In Use', 'EWMO185V180100941', 'Monitor', 'EWIS', '', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', ''),
('REFM14', '2022-09-28 09:14:46', 'In Use', '3CQ0220WX4', 'Monitor', 'HP', 'V194', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', ''),
('REFM15', '2022-09-28 09:23:50', 'In Use', 'CN-OXOT4K-72872-36M-DK78', 'Monitor', 'DELL', '', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', ''),
('REFM16', '2022-09-28 09:25:52', 'In Use', '36505803NN', 'Monitor', 'NEC', 'VE190NU', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', ''),
('REFM17', '2022-09-28 09:33:49', 'In Use', '3CQ0220GK9', 'Monitor', 'HP', 'V194', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', ''),
('REFM18', '2022-09-28 09:38:14', 'In Use', 'MMLX3SS0093237B5B04220', 'Monitor', 'ACER', '', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', ''),
('REFM19', '2022-09-30 09:06:16', 'In Use', '3CQ0220WVM', 'Monitor', 'HP', 'V194', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', ''),
('REFM5', '2022-09-28 06:08:17', 'In Use', 'CN0J672H641809BQ183L', 'Monitor', 'DELL', '', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', ''),
('REFM7', '2022-09-28 06:34:55', 'In Use', '3CQ7232C7K', 'Monitor', 'HP', 'V194', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', ''),
('REFM8', '2022-09-28 06:43:44', 'In Use', '3CQ0220WVD', 'Monitor', 'HP', 'V194', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', ''),
('REFM9', '2022-09-28 06:50:57', 'In Use', 'CN04H19R728721ARAHUS', 'Monitor', 'Dell', '', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', ''),
('REFP8', '2022-09-28 09:27:20', 'In Use', 'ZD7GBJAG70003EH', 'Printer', 'SAMSUNG', 'Pro Xpress M3320ND', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', ''),
('REFPH1', '2022-09-28 09:03:37', 'In Use', '05008321', 'Photocopy', 'SHARP', 'NX-M265Nv', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', ''),
('REFPR1', '2022-09-28 06:09:28', 'In Use', 'NKLA029380', 'Printer', 'CANON', '', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', ''),
('REFPR2', '2022-09-28 06:26:55', 'In Use', 'ZD7GBJAG7034DN', 'Printer', 'SAMSUNG', 'Pro Xpress M3320ND', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', ''),
('REFPR3', '2022-09-28 06:28:45', 'In Use', 'E66821L9J427374', 'Printer', 'BROTHER ', 'HL-5350DN', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', ''),
('REFPR4', '2022-09-28 07:13:04', 'In Use', 'NKLA031893', 'Printer', 'Canon', 'LBP214dw', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', ''),
('REFPR5', '2022-09-28 07:16:02', 'In Use', 'NKLA031896', 'Printer', 'Canon', 'LBP214dw', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', ''),
('REFPR6', '2022-09-28 07:14:34', 'In Use', 'NKLA031897', 'Printer', 'Canon', 'LBP214dw', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', ''),
('REFPR7', '2022-09-28 07:19:57', 'In Use', '36S2812-006', 'Printer', 'LEXMARK', 'MF421', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', ''),
('REFPR8', '2022-09-30 08:52:34', 'In Use', 'E66821L9J427491', 'Printer', 'BROTHER', 'HL5340', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', 'addl ref '),
('REFPR9', '2022-09-30 09:11:32', 'In Use', 'NKLA031895', 'Printer', 'CANON', 'LBP214DW', '0000-00-00', '0000-00-00', '', 'Reforms Division', '', 'Dir ref'),
('SEC1', '2022-09-22 09:10:58', 'In Use', '4CE0392KMQ', 'CPU', 'HP', '280 Pro G6', '0000-00-00', '0000-00-00', '', 'Secretary Office', '', 'Randika'),
('SEC2', '2022-09-22 09:22:29', 'In Use', 'SGH245TFSJ', 'CPU', 'HP', 'Pro 3330 MT', '0000-00-00', '0000-00-00', '', 'Secretary Office', '', 'Chanika'),
('SEC3', '2022-09-22 09:30:31', 'In Use', '4CE0392KLZ', 'CPU', 'HP', '280 Pro G6', '0000-00-00', '0000-00-00', '', 'Secretary Office', '', 'Mishani'),
('SEC4', '2022-09-22 09:40:01', 'In Use', 'EW2616071058G008', 'CPU', 'EWIS', 'Pro 2600 MT', '0000-00-00', '0000-00-00', '', 'Secretary Office', '', 'Hiranya'),
('SEC5', '2022-10-17 07:54:11', 'Not In Use', 'SGH008R99L', 'CPU', 'HP', 'Pro 2000 MT', '0000-00-00', '0000-00-00', '', 'Secretary Office', '', 'Ashan'),
('SEC6', '2022-09-22 10:11:09', 'In Use', 'CND1113XTB', 'Laptop', 'HP', '15s-du1xxx', '0000-00-00', '0000-00-00', '', 'Secretary Office', '', 'Secretary'),
('SEC7', '2022-09-27 04:44:20', 'In Use', '5CD742B0FN', 'Laptop', 'HP', 'ProBook 440 G4', '0000-00-00', '0000-00-00', '', 'Secretary Office', '', 'PA'),
('SEC8', '2022-10-17 07:54:31', 'Not In Use', '857D0D3', 'CPU', 'Dell', 'OptiPlex 5080', '0000-00-00', '0000-00-00', '', 'Secretary Office', '', 'PA'),
('SECF1', '2022-09-22 09:46:18', 'In Use', 'E71447H9J723236', 'Fax', 'brother', 'FAX-2840', '0000-00-00', '0000-00-00', '', 'Secretary Office', '', ''),
('SECM1', '2022-09-22 09:15:27', 'In Use', '3CQ0370BHQ', 'Monitor', 'HP', 'V194', '0000-00-00', '0000-00-00', '', 'Secretary Office', '', 'Randika'),
('SECM2', '2022-09-22 09:24:34', 'In Use', '6CM2410BRY', 'Monitor', 'HP', 'LV1911', '0000-00-00', '0000-00-00', '', 'Secretary Office', '', 'Chanika'),
('SECM3', '2022-09-22 09:31:30', 'In Use', '3CQ03708CJ', 'Monitor', 'HP', 'V194', '0000-00-00', '0000-00-00', '', 'Secretary Office', '', 'Mishani'),
('SECM4', '2022-09-22 09:41:02', 'In Use', 'EWMO185V160200265', 'Monitor', 'EWIS', '', '0000-00-00', '0000-00-00', '', 'Secretary Office', '', 'Hiranya'),
('SECM5', '2022-10-17 07:55:01', 'Not In Use', '36505777NN', 'Monitor', 'NEC', 'VE1904G-BK', '0000-00-00', '0000-00-00', '', 'Secretary Office', '', 'Ashan'),
('SECM8', '2022-10-17 07:55:20', 'Not In Use', 'CN-05G6XN-FCC00-14J-C90B-A06', 'Monitor', 'Dell', 'E1920H', '0000-00-00', '0000-00-00', '', 'Secretary Office', '', 'PA'),
('SECPH1', '2022-09-22 09:50:45', 'In Use', 'PC057379', 'Photocopy', 'TOSHIBA', 'e-STUDIO2508A', '0000-00-00', '0000-00-00', '', 'Secretary Office', '', ''),
('SECPR1', '2022-09-22 09:17:13', 'In Use', 'NEAA005868', 'Printer', 'Canon', 'LBP253x', '0000-00-00', '0000-00-00', '', 'Secretary Office', '', 'Randika'),
('SECPR2', '2022-09-22 09:35:57', 'In Use', 'LXCA34710', 'Printer', 'Canon', 'E610', '0000-00-00', '0000-00-00', '', 'Secretary Office', '', 'Mishani'),
('SECPR3', '2022-09-22 10:12:36', 'In Use', 'NQAA005833', 'Printer', 'Canon', 'LBP228x', '0000-00-00', '0000-00-00', '', 'Secretary Office', '', 'Secretary'),
('SECPR8', '2022-10-17 07:56:05', 'Not In Use', 'CNT1JC9300835CD6HCG7N0077', 'Printer', 'Samsung', 'ProXpress M3320ND', '0000-00-00', '0000-00-00', '', 'Secretary Office', '', 'PA'),
('SUP1', '2022-11-16 05:24:38', 'In Use', 'SGH143TT7C', 'CPU', 'HP', 'Compaq 6200 Pro MT', '0000-00-00', '0000-00-00', '', 'Supply Division', '', ''),
('SUP10', '2022-11-18 05:06:07', 'In Use', 'SGH9340CVJ', 'CPU', 'HP', 'Conpaq dx2810 MT 250W', '0000-00-00', '0000-00-00', '', 'Supply Division', '', 'dir supply'),
('SUP2', '2022-11-16 04:40:39', 'In Use', 'SGH041S451', 'CPU', 'HP', 'Compaq dc7900', '0000-00-00', '0000-00-00', '', 'Supply Division', '', 'Madhushika'),
('SUP3', '2022-11-16 04:45:13', 'In Use', 'SGH008R98X', 'CPU', 'HP', 'Pro 2000Mt', '0000-00-00', '0000-00-00', '', 'Supply Division', '', ''),
('SUP4', '2022-11-16 05:38:56', 'In Use', 'HKZ4GY1', 'CPU', 'DELL', 'OptiPlex 7010', '0000-00-00', '0000-00-00', '', 'Supply Division', '', ''),
('SUP6', '2022-11-16 05:22:09', 'In Use', 'SGH245TFSB', 'CPU', 'HP', 'Pro 3330 MT', '0000-00-00', '0000-00-00', '', 'Supply Division', '', 'SAUMYA'),
('SUP7', '2022-11-16 05:29:42', 'In Use', '777D0D3', 'CPU', 'DELL', 'OptPlex 5080', '0000-00-00', '0000-00-00', '', 'Supply Division', '', ''),
('SUP8', '2022-11-16 05:39:17', 'In Use', 'SGH013QQM8', 'CPU', 'HP', 'Pro 2000MT', '0000-00-00', '0000-00-00', '', 'Supply Division', '', ''),
('SUP9', '2022-11-17 09:09:39', 'In Use', 'PDVD90000413206CF19201', 'CPU', 'ACER', 'Veriton M2610', '0000-00-00', '0000-00-00', '', 'Supply Division', '', 'CFO'),
('SUPL1', '2022-11-18 04:11:53', 'In Use', '5CD7436NWF', 'Laptop', 'HP', 'ProBook 440 G4', '0000-00-00', '0000-00-00', '', 'Supply Division', '', 'Kohomban madam'),
('SUPL2', '2022-11-18 05:03:36', 'In Use', '5CD6460H7S', 'Laptop', 'HP', 'PRO 450G3', '0000-00-00', '0000-00-00', '', 'Supply Division', '', 'Sanka'),
('SUPM1', '2022-11-16 05:25:41', 'In Use', 'CNT143B1CQ', 'Monitor', 'HP', 'Compaq LE1902X', '0000-00-00', '0000-00-00', '', 'Supply Division', '', ''),
('SUPM10', '2022-11-18 05:08:22', 'In Use', 'D3P4KK2', 'Monitor', 'DELL', 'E2219HN', '0000-00-00', '0000-00-00', '', 'Supply Division', '', 'dir supply'),
('SUPM2', '2022-11-16 04:42:59', 'In Use', 'CNC036RD17', 'Monitor', 'HP', 'LE1851w', '0000-00-00', '0000-00-00', '', 'Supply Division', '', 'Madhushika'),
('SUPM3', '2022-11-16 04:47:50', 'In Use', 'CNC004P5Z6', 'Monitor', 'HP', 'LE1851w', '0000-00-00', '0000-00-00', '', 'Supply Division', '', ''),
('SUPM4', '2022-11-16 05:41:11', 'In Use', 'CN-0X0T4K-72872-36M-D4EB', 'Monitor', 'DELL', '', '0000-00-00', '0000-00-00', '', 'Supply Division', '', ''),
('SUPM5', '2022-11-16 05:01:04', 'Not In Use', '3CQ916024Q', 'Monitor', 'HP', 'L1710', '0000-00-00', '0000-00-00', '', 'Supply Division', '', ''),
('SUPM6', '2022-11-16 05:23:06', 'In Use', '6CM2410ZF8', 'Monitor', 'HP', 'LV1911', '0000-00-00', '0000-00-00', '', 'Supply Division', '', ''),
('SUPM7', '2022-11-16 05:31:55', 'In Use', 'CN-05G6XN-FCC00-14J-C78B-A06', 'Monitor', 'DELL', '1920H', '0000-00-00', '0000-00-00', '', 'Supply Division', '', ''),
('SUPM8', '2022-11-16 05:40:17', 'In Use', 'CNC009PWD4', 'Printer', 'HP', 'LE1851w', '0000-00-00', '0000-00-00', '', 'Supply Division', '', ''),
('SUPM9', '2022-11-17 09:04:58', 'In Use', 'ETLKX0W0241250689C4300', 'Monitor', 'ACER', 'V193HQV', '0000-00-00', '0000-00-00', '', 'Supply Division', '', 'CFO'),
('SUPPH1', '2022-11-16 04:50:56', 'In Use', 'A1UF041108663', 'Photocopy', 'KONICA', 'bizhub283', '0000-00-00', '0000-00-00', '', 'Supply Division', '', ''),
('SUPPH2', '2022-11-16 04:54:25', 'In Use', '53017189', 'Photocopy', 'SHARP', 'AR-6026N', '0000-00-00', '0000-00-00', '', 'Supply Division', '', ''),
('SUPPR1', '2022-11-16 05:35:18', 'In Use', 'N/A', 'Printer', 'XEROX', 'Phaser 3320', '0000-00-00', '0000-00-00', '', 'Supply Division', '', ''),
('SUPPR2', '2022-11-17 03:41:40', 'In Use', 'CN-0X0T4K-72872-36M-D4EB', 'Printer', 'Lexmark', 'MS310dn', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', ''),
('SUPPR3', '2022-11-18 04:15:27', 'In Use', 'LXCA25394', 'Printer', 'Canon', 'Pixma E610', '0000-00-00', '0000-00-00', '', 'Supply Division', '', 'Kohomban madam'),
('SUPPR4', '2022-11-18 05:18:39', 'In Use', 'E68530D2J200274', 'Printer', 'Brother', 'HL-2250DN', '0000-00-00', '0000-00-00', '', 'Supply Division', '', 'dir supply'),
('TO1', '2022-11-17 05:26:22', 'In Use', 'DTVJSSG001448012ED9500', 'CPU', 'acer', 'Veriton M2630', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', 'Roshini miss'),
('TO2', '2022-11-17 05:02:19', 'In Use', '3Y00340FA', 'CPU', 'NEC', 'PC-MG33LBZEESSF	', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', 'Janaki miss'),
('TO3', '2022-11-17 05:28:37', 'In Use', 'SGH725TPQ4', 'CPU', 'HP', 'ProBook 450 G4', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', 'Kanthi miss'),
('TOL1', '2022-11-17 04:51:11', 'In Use', '5CD8010HXP', 'Laptop', 'HP', 'ProBook 450 G4', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', ''),
('TOL2', '2022-11-17 04:54:09', 'In Use', '5CD0159S45', 'Laptop', 'HP', 'ProBook 450 G7', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', ''),
('TOM1', '2022-11-17 05:20:30', 'In Use', 'MMLY6SS0064450BAFE8501', 'Monitor', 'acer', 'V206HQL', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', 'Roshini miss'),
('TOM2', '2022-11-17 05:05:23', 'In Use', '36505936NN', 'Monitor', 'NEC', 'VE1904G-BK	', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', 'Janaki miss'),
('TOM3', '2022-11-17 05:29:58', 'In Use', '3CQ7222142', 'Monitor', 'HP', 'V194	', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', ''),
('TOPR1', '2022-11-17 05:22:24', 'In Use', '460083610D5X4', 'Printer', 'Lexmark', 'MS421dw', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', 'Roshini miss'),
('TOPR2', '2022-11-17 05:12:56', 'In Use', 'ZD7GBJAG70004CX', 'Printer', 'Samsung', 'ProExpress M3320ND', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', 'Janaki miss'),
('TOPR3', '2022-11-17 05:31:40', 'In Use', 'E66821L9J427505', 'Printer', 'BROTHER', 'HL5340', '0000-00-00', '0000-00-00', '', 'Engineering Division', '', 'Kanthi miss'),
('TRL1', '2022-09-30 09:51:33', 'In Use', '3Y00361FA', 'CPU', 'NEC', 'PC-MG33LBZEESSF', '0000-00-00', '0000-00-00', '', 'Translation Division', '', 'Translater sir'),
('TRL2', '2022-09-30 09:41:41', 'In Use', '3Y00623FA', 'CPU', 'NEC', 'PC-MG33LBZEESSF', '0000-00-00', '0000-00-00', '', 'Translation Division', '', ''),
('TRL3', '2022-09-30 09:47:50', 'In Use', 'DTVJSSG00144700FAB9600', 'CPU', 'ACER', 'VERITON M2630', '0000-00-00', '0000-00-00', '', 'Translation Division', '', 'Translater sir'),
('TRL4', '2022-09-30 10:00:12', 'In Use', '36008011A', 'CPU', 'NEC', 'MG33LBZEEDVFSBZ', '0000-00-00', '0000-00-00', '', 'Translation Division', '', ''),
('TRL5', '2022-09-30 10:07:56', 'In Use', '36007981A', 'CPU', 'NEC', 'MG33LBZEEDVFSBZ', '0000-00-00', '0000-00-00', '', 'Translation Division', '', ''),
('TRL6', '2022-09-30 10:10:51', 'In Use', 'SGH306SOFF', 'CPU', 'HP', 'Pro 3330 MT', '0000-00-00', '0000-00-00', '', 'Translation Division', '', ''),
('TRLM1', '2022-09-30 09:52:50', 'In Use', '36505908NN', 'Monitor', 'NEC', 'VE1904G-BK', '0000-00-00', '0000-00-00', '', 'Translation Division', '', 'Translater sir'),
('TRLM2', '2022-09-30 09:44:11', 'In Use', '36505940NN', 'Monitor', 'NEC', 'VE1904G-BK', '0000-00-00', '0000-00-00', '', 'Translation Division', '', ''),
('TRLM3', '2022-09-30 09:49:13', 'In Use', 'MMLY6SS0064450BB028501', 'Monitor', 'ACER', 'V206HQL', '0000-00-00', '0000-00-00', '', 'Translation Division', '', ''),
('TRLM4', '2022-09-30 10:02:14', 'In Use', '3655672NN', 'Monitor', 'NEC', 'VE1904G-BK', '0000-00-00', '0000-00-00', '', 'Translation Division', '', ''),
('TRLM5', '2022-09-30 10:08:59', 'In Use', '36505677NN', 'Monitor', 'NEC', 'VE1904G-BK', '0000-00-00', '0000-00-00', '', 'Translation Division', '', ''),
('TRLM6', '2022-09-30 10:11:45', 'In Use', '6CM249130G', 'Monitor', 'HP', 'LB1911', '0000-00-00', '0000-00-00', '', 'Translation Division', '', ''),
('TRLPH1', '2022-09-30 09:55:55', 'In Use', '(21)DQT2849X', 'Photocopy', 'CANON', 'IR1024', '0000-00-00', '0000-00-00', '', 'Translation Division', '', 'Translater sir'),
('TRLPR2', '2022-09-30 10:13:31', 'Not In Use', 'SGFBD50899', 'Printer', 'HP', 'LaserJet1015', '0000-00-00', '0000-00-00', '', 'Translation Division', '', ''),
('TRLPR3', '2022-09-30 10:13:10', 'Not In Use', '994DXHC', 'Printer', 'LEXMARK', 'E120', '0000-00-00', '0000-00-00', '', 'Translation Division', '', ''),
('TRLPR4', '2022-09-30 10:14:57', 'In Use', 'E75667K8N298641', 'Printer', 'BROTHER', 'HL-L6200DW', '0000-00-00', '0000-00-00', '', 'Translation Division', '', ''),
('TTRLPR1', '2022-09-30 09:54:15', 'In Use', 'NEAA005867', 'Printer', 'CANON', 'LBP253x', '0000-00-00', '0000-00-00', '', 'Translation Division', '', 'Translater sir');

-- --------------------------------------------------------

--
-- Table structure for table `devicetype`
--

CREATE TABLE `devicetype` (
  `no` int(11) NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `devicetype`
--

INSERT INTO `devicetype` (`no`, `type`) VALUES
(1, 'CPU'),
(2, 'Laptop'),
(3, 'Printer'),
(4, 'Fax'),
(5, 'Photocopy'),
(6, 'Monitor'),
(7, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `service_company`
--

CREATE TABLE `service_company` (
  `service_company` varchar(100) NOT NULL,
  `bank` text NOT NULL,
  `acc_no` text NOT NULL,
  `branch` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_company`
--

INSERT INTO `service_company` (`service_company`, `bank`, `acc_no`, `branch`) VALUES
('SC1', '', 'sc1111', ''),
('SC2', '', 'sc222', '');

-- --------------------------------------------------------

--
-- Table structure for table `trouble`
--

CREATE TABLE `trouble` (
  `rno` int(255) NOT NULL,
  `name` text NOT NULL,
  `designation` text NOT NULL,
  `branch` text NOT NULL,
  `sn` varchar(255) NOT NULL,
  `dcat` text NOT NULL,
  `trouble` text NOT NULL,
  `pn` text NOT NULL,
  `date` datetime NOT NULL,
  `assignee` text NOT NULL,
  `status` text NOT NULL,
  `review` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trouble`
--

INSERT INTO `trouble` (`rno`, `name`, `designation`, `branch`, `sn`, `dcat`, `trouble`, `pn`, `date`, `assignee`, `status`, `review`) VALUES
(1, 'Mr Rohan', '', 'Media Unit', 'CNT143B1CS', 'Monitor', 'Power Issue', '', '0000-00-00 00:00:00', 'Choose option', 'Not Assigned', 'Call for the relevant service company'),
(2, 'Mr Rohan', '', 'Media Unit', 'LXRU0C00421209F756600', 'Laptop', 'Keyboard and Power problem', '', '0000-00-00 00:00:00', 'itm1', 'Cannot Repair', 'Call for the relevant service company...'),
(3, 'Kanthi', '', 'Gov Audit Division', 'SGH725TPQH', 'CPU', 'Display Automatic Repair Message', '', '0000-00-00 00:00:00', 'itm1', 'Assigned', 'Call for the relevant service company'),
(4, 'Irushan', '', 'Mediation Office - Training Unit', '460083610D5X2', 'Printer', 'Power Failure', '', '0000-00-00 00:00:00', 'itm2', 'Assigned', 'Check with Ewis as warranty remaining'),
(5, 'Fayad Bakir', '', 'Minister Office', 'PDVCX00009232032269201', 'CPU', 'No Power', '', '0000-00-00 00:00:00', 'itm2', 'Assigned', 'Please Service Machine'),
(8, 'Ganga Prasad', '', 'Accounts Division', 'DXGY52S', 'CPU', 'Beep sound, Power on failure', '', '0000-00-00 00:00:00', 'itm1', 'Assigned', 'Call relevant service company'),
(9, 'Hashan', '', 'Internal Audit Division', 'SGH245TF3P', 'CPU', 'Power not on, hard disk failure', '', '0000-00-00 00:00:00', 'itm1', 'Done!!!', 'Replace a new 500GB hard disk and install windows 7'),
(11, 'Ashan', '', 'Secretary Office', '', 'CPU', 'VGA port of wall socket has damaged. cannot connect to projector', '', '0000-00-00 00:00:00', 'itm2', 'Assign to Service Company', 'Repair the VGA wall socket'),
(13, 'Dilini', '', 'Engineering Division', '5CD6460HCJ', 'Laptop', 'No Battery Backup, some keyboard keys hard to press, windows goes to automatic repair', '', '0000-00-00 00:00:00', 'itm1', 'Assign to Service Company', 'Call Relevant Service Company'),
(14, 'Walgampaya', 'Superintendent of Translation', 'Translation Division', 'NEAA005867', 'Printer', 'Print Blank Page. Printer stuck.', '', '0000-00-00 00:00:00', '', 'Assigned', 'Call for service'),
(18, 'K.A. Thanushka Sammani', '', 'Administration Division', 'PDVCX00009232032389201', 'CPU', 'Front & back Usb ports not working', '', '0000-00-00 00:00:00', 'Choose option', 'Assign to Service Company', 'call for relevant service company'),
(19, 'P. Manjula', '', 'National Integration Division', '8L1DG2S', 'CPU', 'The Computer have to be format & Service', '', '0000-00-00 00:00:00', 'itm2', 'Done!!!', ''),
(20, 'D. M. D. L Dissanayake', '', '', 'SGH2317002', 'CPU', 'The Computer have to be format & Service', '', '0000-00-00 00:00:00', 'itm1', 'Assigned', ''),
(21, 'Dilini', '', 'Engineering Division', '5CD6460HCJ', 'Laptop', 'Does not turn on', '', '2023-02-05 23:17:43', 'itm1', 'Done!!!', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `name` text NOT NULL,
  `designation` text NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pwd` text NOT NULL,
  `ulevel` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Timestamp`, `name`, `designation`, `uname`, `pwd`, `ulevel`) VALUES
('2022-11-16 10:08:46', 'acc', 'acc', 'acc', 'acc', 'Accounts'),
('2022-11-16 10:09:05', 'dir', 'dir', 'dir', 'dir', 'IT-Director'),
('2022-11-16 10:09:19', 'inc', 'inc', 'inc', 'inc', 'IT-Incharge'),
('2023-02-05 03:46:06', 'itm1', 'itm1', 'itm1', 'itm1', 'IT-Member'),
('2023-02-05 17:35:56', 'itm2', '', 'itm2', 'itm2', 'IT-Member'),
('2022-11-16 10:09:56', 'sup', 'sup', 'sup', 'sup', 'Supply');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignedsc`
--
ALTER TABLE `assignedsc`
  ADD PRIMARY KEY (`rno`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `device`
--
ALTER TABLE `device`
  ADD PRIMARY KEY (`rno`);

--
-- Indexes for table `devicetype`
--
ALTER TABLE `devicetype`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `service_company`
--
ALTER TABLE `service_company`
  ADD PRIMARY KEY (`service_company`);

--
-- Indexes for table `trouble`
--
ALTER TABLE `trouble`
  ADD PRIMARY KEY (`rno`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uname`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
