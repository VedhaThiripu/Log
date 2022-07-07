-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2022 at 05:02 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `calog`
--

CREATE TABLE `calog` (
  `ID` int(11) NOT NULL,
  `cdate` varchar(255) DEFAULT NULL,
  `ctime` varchar(255) DEFAULT NULL,
  `logid` varchar(25) DEFAULT NULL,
  `loglevel` varchar(255) DEFAULT NULL,
  `cacert` varchar(255) DEFAULT NULL,
  `daemon` varchar(255) DEFAULT NULL,
  `servername` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `DN` varchar(255) DEFAULT NULL,
  `identifiedby` varchar(255) DEFAULT NULL,
  `fetchedby` varchar(255) DEFAULT NULL,
  `hashstring` varchar(255) DEFAULT NULL,
  `CN` varchar(255) DEFAULT NULL,
  `O` varchar(255) DEFAULT NULL,
  `L` varchar(255) DEFAULT NULL,
  `ST` varchar(255) DEFAULT NULL,
  `C` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `calog`
--

INSERT INTO `calog` (`ID`, `cdate`, `ctime`, `logid`, `loglevel`, `cacert`, `daemon`, `servername`, `remarks`, `DN`, `identifiedby`, `fetchedby`, `hashstring`, `CN`, `O`, `L`, `ST`, `C`) VALUES
(1, '2022-01-16', '00:04:31', '171', 'INFO', 'orgcesecorecertificatescertificateCertificateStoreSessionBean', 'EJBdefault-10', 'EJB', 'ReloadingCAcertificatecache.', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(2, '2022-01-16', '00:04:31', '178', 'DEBUG', 'orgcesecorecertificatescainternalCaCertificateCache', 'EJBdefault-10', 'EJB', 'Loaded4cacertificates', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(3, '2022-01-16', '00:04:31', '178', 'DEBUG', 'orgcesecorecertificatescainternalCaCertificateCache', 'EJBdefault-10', 'EJB', 'Loaded4cacertificates', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(4, '2022-01-16', '00:04:31', '178', 'DEBUG', 'orgcesecorecertificatescainternalCaCertificateCache', 'EJBdefault-10', 'EJB', 'Loaded4cacertificates', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(5, '2022-01-16', '00:04:31', '178', 'DEBUG', 'orgcesecorecertificatescainternalCaCertificateCache', 'EJBdefault-10', 'EJB', 'Loaded4cacertificates', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(6, '2022-01-16', '00:04:31', '178', 'DEBUG', 'orgcesecorecertificatescertificateHashID', 'EJBdefault-10', 'EJB', 'Nil', '', 'Nil', 'Y', '&#39;search.cgi?sKIDHash=HC3Adihk0cB+hBhKVJ5MkvmV3Cc&#39;', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(7, '2022-01-16', '00:04:31', '178', 'DEBUG', 'orgcesecorecertificatescertificateHashID', 'EJBdefault-10', 'EJB', 'Nil', '', 'Y', 'Nil', '&#39;6auB91hktQiVto1dj0/Wg7Cz1pA&#39;', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(8, '2022-01-16', '00:04:31', '178', 'DEBUG', 'orgcesecorecertificatescertificateHashID', 'EJBdefault-10', 'EJB', 'Nil', '', 'Y', 'Nil', '&#39;6auB91hktQiVto1dj0/Wg7Cz1pA&#39;', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(9, '2022-01-16', '00:04:31', '179', 'DEBUG', 'orgcesecorecertificatescertificateHashID', 'EJBdefault-10', 'EJB', 'Nil', '', 'Nil', 'Y', '&#39;search.cgi?sKIDHash=HC3Adihk0cB+hBhKVJ5MkvmV3Cc&#39;', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(10, '2022-01-16', '00:04:31', '179', 'DEBUG', 'orgcesecorecertificatescertificateHashID', 'EJBdefault-10', 'EJB', 'Nil', '', 'Y', 'Nil', '&#39;s7rDYYxjBxNmoMEbKrvi2Ed54Xg&#39;', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(11, '2022-01-16', '00:04:31', '179', 'DEBUG', 'orgcesecorecertificatescertificateHashID', 'EJBdefault-10', 'EJB', 'Nil', '', 'Y', 'Nil', '&#39;s7rDYYxjBxNmoMEbKrvi2Ed54Xg&#39;', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(12, '2022-01-16', '00:04:31', '179', 'DEBUG', 'orgcesecorecertificatescertificateHashID', 'EJBdefault-10', 'EJB', 'Nil', '', 'Nil', 'Y', '&#39;search.cgi?sKIDHash=GI31IUDoPVGhBUHFTKwLfZ3os/w&#39;', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(13, '2022-01-16', '00:04:31', '179', 'DEBUG', 'orgcesecorecertificatescertificateHashID', 'EJBdefault-10', 'EJB', 'Nil', '', 'Y', 'Nil', '&#39;ZOvadAAZjsoUxtjwgt1CGx9JJsA&#39;', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(14, '2022-01-16', '00:04:31', '179', 'DEBUG', 'orgcesecorecertificatescertificateHashID', 'EJBdefault-10', 'EJB', 'Nil', '', 'Y', 'Nil', '&#39;s7rDYYxjBxNmoMEbKrvi2Ed54Xg&#39;', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(15, '2022-01-16', '00:04:31', '179', 'DEBUG', 'orgcesecorecertificatescainternalCaCertificateCache', 'EJBdefault-10', 'EJB', '', 'Nil', 'Nil', 'Nil', 'Nil', 'self-signedca,test-subca,ManagementCA', 'IGCAR,IGCAR,Example', 'KALPAKKAM,KALPAKKAM', 'TN,TN', 'IN,58402C5007B4,IN,7E3FC319E68E'),
(16, '2022-01-16', '00:04:31', '179', 'DEBUG', 'orgcesecorecertificatescainternalCaCertificateCache', 'EJBdefault-10', 'EJB', '', 'Nil', 'Nil', 'Nil', 'Nil', 'self-signedca,test-subca,ManagementCA', 'IGCAR,IGCAR,Example', 'KALPAKKAM,KALPAKKAM', 'TN,TN', 'IN,58402C5007B4,IN,7E3FC319E68E'),
(17, '2022-01-16', '00:04:31', '179', 'DEBUG', 'orgcesecorecertificatescainternalCaCertificateCache', 'EJBdefault-10', 'EJB', '', 'Nil', 'Nil', 'Nil', 'Nil', 'self-signedca,test-subca,ManagementCA', 'IGCAR,IGCAR,Example', 'KALPAKKAM,KALPAKKAM', 'TN,TN', 'IN,58402C5007B4,IN,7E3FC319E68E'),
(18, '2022-01-16', '00:04:31', '179', 'DEBUG', 'orgcesecorecertificatescainternalCaCertificateCache', 'EJBdefault-10', 'EJB', '', 'Nil', 'Nil', 'Nil', 'Nil', 'self-signedca,test-subca,ManagementCA', 'IGCAR,IGCAR,Example', 'KALPAKKAM,KALPAKKAM', 'TN,TN', 'IN,58402C5007B4,IN,7E3FC319E68E'),
(19, '2022-01-16', '00:04:31', '179', 'DEBUG', 'orgcesecorecertificatescainternalCaCertificateCache', 'EJBdefault-10', 'EJB', '', 'Nil', 'Nil', 'Nil', 'Nil', 'self-signedca,test-subca,ManagementCA', 'IGCAR,IGCAR,Example', 'KALPAKKAM,KALPAKKAM', 'TN,TN', 'IN,58402C5007B4,IN,7E3FC319E68E'),
(20, '2022-01-16', '00:04:31', '179', 'DEBUG', 'orgcesecorecertificatescainternalCaCertificateCache', 'EJBdefault-10', 'EJB', '', 'Nil', 'Nil', 'Nil', 'Nil', 'self-signedca,test-subca,ManagementCA', 'IGCAR,IGCAR,Example', 'KALPAKKAM,KALPAKKAM', 'TN,TN', 'IN,58402C5007B4,IN,7E3FC319E68E'),
(21, '2022-01-16', '00:04:31', '179', 'DEBUG', 'orgcesecorecertificatescainternalCaCertificateCache', 'EJBdefault-10', 'EJB', '', 'Nil', 'Nil', 'Nil', 'Nil', 'self-signedca,test-subca,ManagementCA', 'IGCAR,IGCAR,Example', 'KALPAKKAM,KALPAKKAM', 'TN,TN', 'IN,58402C5007B4,IN,7E3FC319E68E'),
(22, '2022-01-16', '00:04:31', '179', 'DEBUG', 'orgcesecorecertificatescainternalCaCertificateCache', 'EJBdefault-10', 'EJB', '', 'Nil', 'Nil', 'Nil', 'Nil', 'self-signedca,test-subca,ManagementCA', 'IGCAR,IGCAR,Example', 'KALPAKKAM,KALPAKKAM', 'TN,TN', 'IN,58402C5007B4,IN,7E3FC319E68E'),
(23, '2022-01-16', '00:04:31', '179', 'DEBUG', 'orgcesecorecertificatescainternalCaCertificateCache', 'EJBdefault-10', 'EJB', '', 'Nil', 'Nil', 'Nil', 'Nil', 'self-signedca,test-subca,ManagementCA', 'IGCAR,IGCAR,Example', 'KALPAKKAM,KALPAKKAM', 'TN,TN', 'IN,58402C5007B4,IN,7E3FC319E68E'),
(24, '2022-01-16', '00:04:31', '179', 'DEBUG', 'orgcesecorecertificatescainternalCaCertificateCache', 'EJBdefault-10', 'EJB', '', 'Nil', 'Nil', 'Nil', 'Nil', 'self-signedca,test-subca,ManagementCA', 'IGCAR,IGCAR,Example', 'KALPAKKAM,KALPAKKAM', 'TN,TN', 'IN,58402C5007B4,IN,7E3FC319E68E'),
(25, '2022-01-16', '00:04:31', '179', 'DEBUG', 'orgcesecorecertificatescainternalCaCertificateCache', 'EJBdefault-10', 'EJB', '', 'Nil', 'Nil', 'Nil', 'Nil', 'self-signedca,test-subca,ManagementCA', 'IGCAR,IGCAR,Example', 'KALPAKKAM,KALPAKKAM', 'TN,TN', 'IN,58402C5007B4,IN,7E3FC319E68E'),
(26, '2022-01-16', '00:04:31', '179', 'DEBUG', 'orgcesecorecertificatescainternalCaCertificateCache', 'EJBdefault-10', 'EJB', '', 'Nil', 'Nil', 'Nil', 'Nil', 'self-signedca,test-subca,ManagementCA', 'IGCAR,IGCAR,Example', 'KALPAKKAM,KALPAKKAM', 'TN,TN', 'IN,58402C5007B4,IN,7E3FC319E68E'),
(27, '2022-01-16', '00:04:51', '646', 'DEBUG', 'orgcesecorecertificatescaCA', 'EJBdefault-3', 'EJB', 'CertsubjectDN:CN=ManagementCA,O=ExampleCA,C=SE', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(28, '2022-01-16', '00:04:51', '646', 'DEBUG', 'orgcesecorecertificatescaCA', 'EJBdefault-3', 'EJB', 'CertissuerDN:CN=ManagementCA,O=ExampleCA,C=SE', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(29, '2022-01-16', '00:04:51', '646', 'DEBUG', 'orgcesecorecertificatescaCA', 'EJBdefault-3', 'EJB', 'CertissuerDN:CN=ManagementCA,O=ExampleCA,C=SE', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(30, '2022-01-16', '00:04:51', '646', 'DEBUG', 'orgcesecorecertificatescaCA', 'EJBdefault-3', 'EJB', 'CertissuerDN:CN=ManagementCA,O=ExampleCA,C=SE', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(31, '2022-01-16', '00:04:51', '646', 'DEBUG', 'orgcesecorecertificatescaCA', 'EJBdefault-3', 'EJB', 'CA-certsubjectDN:CN=ManagementCA,O=ExampleCA,C=SE', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(32, '2022-01-16', '00:04:51', '646', 'DEBUG', 'orgcesecorecertificatescaCA', 'EJBdefault-3', 'EJB', 'CA-certissuerDN:CN=ManagementCA,O=ExampleCA,C=SE', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(33, '2022-01-16', '00:04:51', '646', 'DEBUG', 'orgcesecorecertificatescaCAData', 'EJBdefault-3', 'EJB', 'CAData.getProtectStringgivessize:9216', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(34, '2022-01-16', '00:04:51', '646', 'DEBUG', 'orgcesecorecertificatescaCAData', 'EJBdefault-3', 'EJB', 'CAData.getProtectStringgivessize:9216', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(35, '2022-01-16', '00:04:51', '646', 'DEBUG', 'orgcesecorecertificatescaCAData', 'EJBdefault-3', 'EJB', 'CAData.getProtectStringgivessize:9216', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(36, '2022-01-16', '00:04:51', '646', 'DEBUG', 'orgcesecorecertificatescaCAData', 'EJBdefault-3', 'EJB', 'CAData.getProtectStringgivessize:9216', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(37, '2022-01-16', '00:04:51', '646', 'DEBUG', 'orgcesecorecertificatescaCAData', 'EJBdefault-3', 'EJB', 'CAData.getProtectStringgivessize:9216', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(38, '2022-01-16', '00:04:51', '646', 'DEBUG', 'orgcesecorecertificatescaCAData', 'EJBdefault-3', 'EJB', 'CAData.getProtectStringgivessize:9216', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(39, '2022-01-16', '00:04:51', '649', 'DEBUG', 'orgcesecorecertificatescaCA', 'EJBdefault-3', 'EJB', 'CertsubjectDN:CN=ManagementCA,O=ExampleCA,C=SE', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(40, '2022-01-16', '00:04:51', '649', 'DEBUG', 'orgcesecorecertificatescaCA', 'EJBdefault-3', 'EJB', 'CertissuerDN:CN=ManagementCA,O=ExampleCA,C=SE', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(41, '2022-01-16', '00:04:51', '649', 'DEBUG', 'orgcesecorecertificatescaCA', 'EJBdefault-3', 'EJB', 'CertissuerDN:CN=ManagementCA,O=ExampleCA,C=SE', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(42, '2022-01-16', '00:04:51', '649', 'DEBUG', 'orgcesecorecertificatescaCA', 'EJBdefault-3', 'EJB', 'CertissuerDN:CN=ManagementCA,O=ExampleCA,C=SE', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(43, '2022-01-16', '00:04:51', '649', 'DEBUG', 'orgcesecorecertificatescaCA', 'EJBdefault-3', 'EJB', 'CertissuerDN:CN=ManagementCA,O=ExampleCA,C=SE', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(44, '2022-01-16', '00:04:51', '649', 'DEBUG', 'orgcesecorecertificatescaCA', 'EJBdefault-3', 'EJB', 'CA-certsubjectDN:CN=ManagementCA,O=ExampleCA,C=SE', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(45, '2022-01-16', '00:04:51', '649', 'DEBUG', 'orgcesecorecertificatescaCA', 'EJBdefault-3', 'EJB', 'CA-certissuerDN:CN=ManagementCA,O=ExampleCA,C=SE', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(46, '2022-01-16', '00:04:51', '649', 'DEBUG', 'orgcesecorecertificatescaCA', 'EJBdefault-3', 'EJB', 'CA-certissuerDN:CN=ManagementCA,O=ExampleCA,C=SE', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(47, '2022-01-16', '00:04:51', '649', 'DEBUG', 'orgcesecorecertificatescaCA', 'EJBdefault-3', 'EJB', 'CA-certissuerDN:CN=ManagementCA,O=ExampleCA,C=SE', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(48, '2022-01-16', '00:04:51', '649', 'DEBUG', 'orgcesecorecertificatescaCA', 'EJBdefault-3', 'EJB', 'CA-certissuerDN:CN=ManagementCA,O=ExampleCA,C=SE', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(49, '2022-01-16', '00:04:51', '652', 'DEBUG', 'orgcesecorecertificatesocspcacheOcspSigningCacheEntry', 'EJBdefault-3', 'EJB', 'Includesigningcert:true', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(50, '2022-01-16', '00:04:51', '652', 'DEBUG', 'orgcesecorecertificatesocspcacheOcspSigningCacheEntry', 'EJBdefault-3', 'EJB', 'Includesigningcert:true', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(51, '2022-01-16', '00:04:51', '652', 'DEBUG', 'orgcesecorecertificatesocspcacheOcspSigningCacheEntry', 'EJBdefault-3', 'EJB', 'Includesigningcert:true', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(52, '2022-01-16', '00:04:51', '652', 'DEBUG', 'orgcesecorecertificatesocspcacheOcspSigningCacheEntry', 'EJBdefault-3', 'EJB', 'Includesigningcert:true', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(53, '2022-01-16', '00:04:51', '652', 'DEBUG', 'orgcesecorecertificatesocspcacheOcspSigningCacheEntry', 'EJBdefault-3', 'EJB', 'Includesigningcert:true', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(54, '2022-01-16', '00:04:51', '652', 'DEBUG', 'orgcesecorecertificatesocspcacheOcspSigningCacheEntry', 'EJBdefault-3', 'EJB', 'Includesigningcert:true', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(55, '2022-01-16', '00:04:51', '652', 'DEBUG', 'orgcesecorecertificatesocspcacheOcspSigningCacheEntry', 'EJBdefault-3', 'EJB', 'Includesigningcert:true', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(56, '2022-01-16', '00:04:51', '652', 'DEBUG', 'orgcesecorecertificatesocspcacheOcspSigningCacheEntry', 'EJBdefault-3', 'EJB', 'Includesigningcert:true', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(57, '2022-01-16', '00:04:51', '652', 'DEBUG', 'orgcesecorecertificatesocspcacheOcspSigningCacheEntry', 'EJBdefault-3', 'EJB', 'Includesigningcert:true', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(58, '2022-01-16', '00:04:51', '652', 'DEBUG', 'orgcesecorecertificatesocspcacheOcspSigningCacheEntry', 'EJBdefault-3', 'EJB', 'Includesigningcert:true', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(59, '2022-01-16', '00:04:51', '652', 'DEBUG', 'orgcesecorecertificatesocspcacheOcspSigningCacheEntry', 'EJBdefault-3', 'EJB', 'Includesigningcert:true', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(60, '2022-01-16', '00:04:51', '656', 'DEBUG', 'orgcesecorecertificatescaCA', 'EJBdefault-3', 'EJB', 'CertsubjectDN:CN=self-signedCA,O=IGCAR,L=KALPAKKAM,ST=TN,C=IN', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(61, '2022-01-16', '00:04:51', '656', 'DEBUG', 'orgcesecorecertificatescaCA', 'EJBdefault-3', 'EJB', 'CertissuerDN:CN=self-signedCA,O=IGCAR,L=KALPAKKAM,ST=TN,C=IN', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(62, '2022-01-16', '00:04:51', '656', 'DEBUG', 'orgcesecorecertificatescaCA', 'EJBdefault-3', 'EJB', 'CertissuerDN:CN=self-signedCA,O=IGCAR,L=KALPAKKAM,ST=TN,C=IN', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(63, '2022-01-16', '00:04:51', '656', 'DEBUG', 'orgcesecorecertificatescaCA', 'EJBdefault-3', 'EJB', 'CertissuerDN:CN=self-signedCA,O=IGCAR,L=KALPAKKAM,ST=TN,C=IN', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil'),
(64, '2022-01-16', '00:04:51', '657', 'DEBUG', 'orgcesecorecertificatescaCA', 'EJBdefault-3', 'EJB', 'CA-certsubjectDN:CN=self-signedCA,O=IGCAR,L=KALPAKKAM,ST=TN,C=IN', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil');

-- --------------------------------------------------------

--
-- Table structure for table `hsmlog`
--

CREATE TABLE `hsmlog` (
  `TID` int(11) NOT NULL,
  `hsmdate` varchar(30) DEFAULT NULL,
  `hsmtime` varchar(30) DEFAULT NULL,
  `servername` varchar(30) DEFAULT NULL,
  `daemonname` varchar(50) DEFAULT NULL,
  `daemonid` varchar(20) DEFAULT NULL,
  `id` varchar(50) DEFAULT NULL,
  `servertype` varchar(50) DEFAULT NULL,
  `msgtype` varchar(50) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `events` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hsmlog`
--

INSERT INTO `hsmlog` (`TID`, `hsmdate`, `hsmtime`, `servername`, `daemonname`, `daemonid`, `id`, `servertype`, `msgtype`, `remarks`, `events`) VALUES
(1, '2022-04-17', '01:49:19', 'hardserver', 'nethsm', '1515', '014919', 'nFast Server', 'Notice', 'Fast-path optimization for AES/CBC enabled.\n ', NULL),
(2, '2022-04-17', '01:49:19', 'hardserver', 'nethsm', '1515', '014919', 'nFast Server', 'Notice', 'Fast-path\n optimization for HMAC/SHA256 enabled.\n ', NULL),
(3, '2022-04-17', '01:49:19', 'hardserver', 'nethsm', '1515', '014919', 'nFast Server', 'Notice', 'Fast-path\n optimization for HMAC/SHA256 enabled.\n ', NULL),
(4, '2022-04-17', '01:49:23', 'hardserver', 'nethsm', '1515', '014923', 'nFast Server', 'Remote', 'server error:\n NST Ni584246 shutting down whilst expecting a SetupBegin message: (InvalidModule)\n ', NULL),
(5, '2022-04-17', '01:49:23', 'hardserver', 'nethsm', '1515', '014923', 'nFast Server', 'Remote', 'server error:\n NST Ni584246 shutting down whilst expecting a SetupBegin message: (InvalidModule)\n ', NULL),
(6, '2022-04-17', '01:49:25', 'hardserver', 'nethsm', '1515', '014925', 'nFast Server', 'Notice', 'freeing NST\n Ni584246 with error InvalidModule\n ', NULL),
(7, '2022-04-17', '01:49:25', 'hardserver', 'nethsm', '1515', '014925', 'nFast Server', 'Notice', 'freeing NST\n Ni584246 with error InvalidModule\n ', NULL),
(8, '2022-04-17', '01:49:25', 'hardserver', 'nethsm', '1515', '014925', 'nFast Server', 'Notice', 'RemoteSource\n Rs584246 closing with error (RemoteServerFailed, &lt;us&gt; (InvalidModule))\n ', NULL),
(9, '2022-04-17', '01:49:25', 'hardserver', 'nethsm', '1515', '014925', 'nFast Server', 'Notice', 'RemoteSource\n Rs584246 closing with error (RemoteServerFailed, &lt;us&gt; (InvalidModule))\n ', NULL),
(10, '2022-04-17', '01:49:37', 'hardserver', 'nethsm', '1515', '014937', 'nFast Server', 'Remote', 'server error:\n NST Ni584247 shutting down whilst expecting a SetupBegin message: (InvalidModule)\n ', NULL),
(11, '2022-04-17', '01:49:37', 'hardserver', 'nethsm', '1515', '014937', 'nFast Server', 'Remote', 'server error:\n NST Ni584247 shutting down whilst expecting a SetupBegin message: (InvalidModule)\n ', NULL),
(12, '2022-04-17', '01:49:39', 'hardserver', 'nethsm', '1515', '014939', 'nFast Server', 'Notice', 'freeing NST\n Ni584247 with error InvalidModule\n ', NULL),
(13, '2022-04-17', '01:49:39', 'hardserver', 'nethsm', '1515', '014939', 'nFast Server', 'Notice', 'freeing NST\n Ni584247 with error InvalidModule\n ', NULL),
(14, '2022-04-17', '01:49:39', 'hardserver', 'nethsm', '1515', '014939', 'nFast Server', 'Notice', 'RemoteSource\n Rs584247 closing with error (RemoteServerFailed, &lt;us&gt; (InvalidModule))\n ', NULL),
(15, '2022-04-17', '01:49:39', 'hardserver', 'nethsm', '1515', '014939', 'nFast Server', 'Notice', 'RemoteSource\n Rs584247 closing with error (RemoteServerFailed, &lt;us&gt; (InvalidModule))\n ', NULL),
(16, '2022-04-17', '01:49:51', 'hardserver', 'nethsm', '1515', '014951', 'nFast Server', 'Remote', 'server error:\n NST Ni584248 shutting down whilst expecting a SetupBegin message: (InvalidModule)\n ', NULL),
(17, '2022-04-17', '01:49:51', 'hardserver', 'nethsm', '1515', '014951', 'nFast Server', 'Remote', 'server error:\n NST Ni584248 shutting down whilst expecting a SetupBegin message: (InvalidModule)\n ', NULL),
(18, '2022-04-17', '01:49:53', 'hardserver', 'nethsm', '1515', '014953', 'nFast Server', 'Notice', 'freeing NST\n Ni584248 with error InvalidModule\n ', NULL),
(19, '2022-04-17', '01:49:53', 'hardserver', 'nethsm', '1515', '014953', 'nFast Server', 'Notice', 'freeing NST\n Ni584248 with error InvalidModule\n ', NULL),
(20, '2022-04-17', '01:49:53', 'hardserver', 'nethsm', '1515', '014953', 'nFast Server', 'Notice', 'RemoteSource\n Rs584248 closing with error (RemoteServerFailed, &lt;us&gt; (InvalidModule))\n ', NULL),
(21, '2022-04-17', '01:49:53', 'hardserver', 'nethsm', '1515', '014953', 'nFast Server', 'Notice', 'RemoteSource\n Rs584248 closing with error (RemoteServerFailed, &lt;us&gt; (InvalidModule))\n ', NULL),
(22, '2022-04-17', '01:50:05', 'hardserver', 'nethsm', '1515', '015005', 'nFast Server', 'Remote', 'server error:\n NST Ni584249 shutting down whilst expecting a SetupBegin message: (InvalidModule)\n ', NULL),
(23, '2022-04-17', '01:50:05', 'hardserver', 'nethsm', '1515', '015005', 'nFast Server', 'Remote', 'server error:\n NST Ni584249 shutting down whilst expecting a SetupBegin message: (InvalidModule)\n ', NULL),
(24, '2022-04-17', '01:50:07', 'hardserver', 'nethsm', '1515', '015007', 'nFast Server', 'Notice', 'freeing NST\n Ni584249 with error InvalidModule\n ', NULL),
(25, '2022-04-17', '01:50:07', 'hardserver', 'nethsm', '1515', '015007', 'nFast Server', 'Notice', 'freeing NST\n Ni584249 with error InvalidModule\n ', NULL),
(26, '2022-04-17', '01:50:07', 'hardserver', 'nethsm', '1515', '015007', 'nFast Server', 'Notice', 'RemoteSource\n Rs584249 closing with error (RemoteServerFailed, &lt;us&gt; (InvalidModule))\n ', NULL),
(27, '2022-04-17', '01:50:07', 'hardserver', 'nethsm', '1515', '015007', 'nFast Server', 'Notice', 'RemoteSource\n Rs584249 closing with error (RemoteServerFailed, &lt;us&gt; (InvalidModule))\n ', NULL),
(28, '2022-04-17', '01:50:19', 'hardserver', 'nethsm', '1515', '015019', 'nFast Server', 'Remote', 'server error:\n NST Ni584250 shutting down whilst expecting a SetupBegin message: (InvalidModule)\n ', NULL),
(29, '2022-04-17', '01:50:19', 'hardserver', 'nethsm', '1515', '015019', 'nFast Server', 'Remote', 'server error:\n NST Ni584250 shutting down whilst expecting a SetupBegin message: (InvalidModule)\n ', NULL),
(30, '2022-04-17', '01:50:19', 'hardserver', 'nethsm', '1515', '015019', 'nFast Server', 'Notice', 'CreateClient\n (v1) pid: 2545, process name: /opt/nfast/bin/nfcp\n ', NULL),
(31, '2022-04-17', '01:50:19', 'hardserver', 'nethsm', '1515', '015019', 'nFast Server', 'Notice', 'CreateClient\n (v1) pid: 2545, process name: /opt/nfast/bin/nfcp\n ', NULL),
(32, '2022-04-17', '01:50:19', 'hardserver', 'nethsm', '1515', '015019', 'nFast Server', 'Notice', 'Fast-path\n optimization for AES/CBC enabled.\n ', NULL),
(33, '2022-04-17', '01:50:19', 'hardserver', 'nethsm', '1515', '015019', 'nFast Server', 'Notice', 'Fast-path\n optimization for AES/CBC enabled.\n ', NULL),
(34, '2022-04-17', '01:50:19', 'hardserver', 'nethsm', '1515', '015019', 'nFast Server', 'Notice', 'Fast-path\n optimization for HMAC/SHA256 enabled.\n ', NULL),
(35, '2022-04-17', '01:50:19', 'hardserver', 'nethsm', '1515', '015019', 'nFast Server', 'Notice', 'Fast-path\n optimization for HMAC/SHA256 enabled.\n ', NULL),
(36, '2022-04-17', '01:50:19', 'hardserver', 'nethsm', '1515', '015019', 'nFast Server', 'Notice', 'Fast-path\n optimization for AES/CBC enabled.\n ', NULL),
(37, '2022-04-17', '01:50:19', 'hardserver', 'nethsm', '1515', '015019', 'nFast Server', 'Notice', 'Fast-path\n optimization for AES/CBC enabled.\n ', NULL),
(38, '2022-04-17', '01:50:19', 'hardserver', 'nethsm', '1515', '015019', 'nFast Server', 'Notice', 'Fast-path\n optimization for HMAC/SHA256 enabled.\n ', NULL),
(39, '2022-04-17', '01:50:19', 'hardserver', 'nethsm', '1515', '015019', 'nFast Server', 'Notice', 'Fast-path\n optimization for HMAC/SHA256 enabled.\n ', NULL),
(40, '2022-04-17', '01:50:19', 'hardserver', 'nethsm', '1515', '015019', 'nFast Server', 'Notice', 'CreateClient\n (v1) pid: 2546, process name: /opt/nfast/bin/nfcp\n ', NULL),
(41, '2022-04-17', '01:50:19', 'hardserver', 'nethsm', '1515', '015019', 'nFast Server', 'Notice', 'CreateClient\n (v1) pid: 2546, process name: /opt/nfast/bin/nfcp\n ', NULL),
(42, '2022-04-17', '01:50:19', 'hardserver', 'nethsm', '1515', '015019', 'nFast Server', 'Notice', 'Fast-path\n optimization for AES/CBC enabled.\n ', NULL),
(43, '2022-04-17', '01:50:19', 'hardserver', 'nethsm', '1515', '015019', 'nFast Server', 'Notice', 'Fast-path\n optimization for AES/CBC enabled.\n ', NULL),
(44, '2022-04-17', '01:50:19', 'hardserver', 'nethsm', '1515', '015019', 'nFast Server', 'Notice', 'Fast-path\n optimization for HMAC/SHA256 enabled.\n ', NULL),
(45, '2022-04-17', '01:50:19', 'hardserver', 'nethsm', '1515', '015019', 'nFast Server', 'Notice', 'Fast-path\n optimization for HMAC/SHA256 enabled.\n ', NULL),
(46, '2022-04-17', '01:50:19', 'hardserver', 'nethsm', '1515', '015019', 'nFast Server', 'Notice', 'Fast-path\n optimization for AES/CBC enabled. ', NULL),
(47, '2022-04-17', '01:50:19', 'hardserver', 'nethsm', '1515', '015019', 'nFast Server', 'Notice', 'Fast-path\n optimization for AES/CBC enabled. ', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `igccalog`
--

CREATE TABLE `igccalog` (
  `ID` int(11) NOT NULL,
  `idate` varchar(255) DEFAULT NULL,
  `itime` time DEFAULT NULL,
  `servername` varchar(255) DEFAULT NULL,
  `daemonname` varchar(255) DEFAULT NULL,
  `software` varchar(255) DEFAULT NULL,
  `swver` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `igccalog`
--

INSERT INTO `igccalog` (`ID`, `idate`, `itime`, `servername`, `daemonname`, `software`, `swver`, `remarks`) VALUES
(1, '2022-04-17', '00:01:01', 'igcarca', 'rsyslogd', 'rsyslogd', '8.24.0', 'rsyslogd was HUPed '),
(2, '2022-04-17', '00:01:02', 'igcarca', 'logrotate', 'Nil', 'Nil', 'ALERT exited abnormally with [1] '),
(3, '2022-04-17', '00:01:02', 'igcarca', 'systemd', 'Nil', 'Nil', 'Removed slice User Slice of root. '),
(4, '2022-04-17', '00:01:02', 'igcarca', 'systemd', 'Nil', 'Nil', 'Stopping User Slice of root. '),
(5, '2022-04-17', '00:01:02', 'igcarca', 'dbus', 'Nil', 'Nil', '[system] Successfully activated service &#39;org.fedoraproject.Setroubleshootd&#39; '),
(6, '2022-04-17', '00:01:02', 'igcarca', 'setroubleshoot', 'Nil', 'Nil', 'failed to retrieve rpm info for /var/lib/mysql/igcarca.log '),
(7, '2022-04-17', '00:01:03', 'igcarca', 'setroubleshoot', 'Nil', 'Nil', 'SELinux is preventing /usr/sbin/logrotate from getattr access on the file /var/lib/mysql/igcarca.log. For complete SELinux messages run: sealert -l 983eac16-7b08-4612-aabe- e320ab2f7aeb '),
(8, '2022-04-17', '00:01:03', 'igcarca', 'python', 'Nil', 'Nil', 'access on the file /var/lib/mysql/igcarca.log.'),
(9, '2022-04-17', '00:01:03', 'igcarca', 'setroubleshoot', 'Nil', 'Nil', 'SELinux is preventing /usr/sbin/logrotate from getattr access on the file /var/ossec/logs/ossec.log. For complete SELinux messages run: sealert -l e71aa98f-5ac3-4b2e-a35c- be6adcf25750 '),
(10, '2022-04-17', '00:01:03', 'igcarca', 'python', 'Nil', 'Nil', 'access on the file /var/ossec/logs/ossec.log.'),
(11, '2022-04-17', '00:01:03', 'igcarca', 'setroubleshoot', 'Nil', 'Nil', 'SELinux is preventing /usr/sbin/logrotate from read access on the directory /home/wildfly/add_users/log. Forcomplete SELinux messages run: sealert -l 9977a30c-e70b-400d-b41c- b4f5e8a7a5f7 '),
(12, '2022-04-17', '00:01:03', 'igcarca', 'python', 'Nil', 'Nil', 'access on the directory /home/wildfly/add_users/log.'),
(13, '2022-04-17', '00:01:03', 'igcarca', 'setroubleshoot', 'Nil', 'Nil', 'SELinux is preventing /usr/sbin/logrotate from &#39;read, write&#39; accesses on the file /home/wildfly/add_users/log/ca.log. For complete SELinux messages run: sealert -l 2765441a-7b2b-4a73- bb36-ccf313acd6e1 '),
(14, '2022-04-17', '00:01:03', 'igcarca', 'python', 'Nil', 'Nil', 'write&#39; accesses on the file /home/wildfly/add_users/log/ca.log. '),
(15, '2022-04-17', '00:01:03', 'igcarca', 'setroubleshoot', 'Nil', 'Nil', 'SELinux is preventing /usr/sbin/logrotate from &#39;read, write&#39; accesses on the file /home/wildfly/add_users/log/ca.log. For complete SELinux messages run: sealert -l 2765441a-7b2b-4a73- bb36-ccf313acd6e1 '),
(16, '2022-04-17', '00:01:03', 'igcarca', 'python', 'Nil', 'Nil', 'write&#39; accesses on the file /home/wildfly/add_users/log/ca.log. '),
(17, '2022-04-17', '00:01:04', 'igcarca', 'setroubleshoot', 'Nil', 'Nil', 'SELinux is preventing /usr/sbin/logrotate from write access on the directory /home/wildfly/add_users/log/ca.log. For complete SELinux messages run: sealert -l 74bc8185-b967- 41bd-8837-96c4522c7901  '),
(18, '2022-04-17', '00:01:04', 'igcarca', 'python', 'Nil', 'Nil', 'access on the directory /home/wildfly/add_users/log/ca.log.'),
(19, '2022-04-17', '00:01:04', 'igcarca', 'setroubleshoot', 'Nil', 'Nil', 'SELinux is preventing /usr/sbin/logrotate from write access on the directory /home/wildfly/add_users/log/ca.log. For complete SELinux messages run: sealert -l 74bc8185-b967- 41bd-8837-96c4522c7901 '),
(20, '2022-04-17', '00:01:04', 'igcarca', 'python', 'Nil', 'Nil', 'access on the directory /home/wildfly/add_users/log/ca.log.'),
(21, '2022-04-17', '00:01:04', 'igcarca', 'setroubleshoot', 'Nil', 'Nil', 'SELinux is preventing /usr/sbin/logrotate from write access on the directory /home/wildfly/add_users/log/ca.log. For complete SELinux messages run: sealert -l 74bc8185-b967- 41bd-8837-96c4522c7901 '),
(22, '2022-04-17', '00:01:04', 'igcarca', 'python', 'Nil', 'Nil', 'access on the directory /home/wildfly/add_users/log/ca.log.'),
(23, '2022-04-17', '00:01:04', 'igcarca', 'setroubleshoot', 'Nil', 'Nil', 'SELinux is preventing /usr/sbin/logrotate from write access on the directory /home/wildfly/add_users/log/ca.log. For complete SELinux messages run: sealert -l 74bc8185-b967- 41bd-8837-96c4522c7901 '),
(24, '2022-04-17', '00:01:04', 'igcarca', 'python', 'Nil', 'Nil', 'access on the directory /home/wildfly/add_users/log/ca.log.'),
(25, '2022-04-17', '00:01:04', 'igcarca', 'setroubleshoot', 'Nil', 'Nil', 'SELinux is preventing /usr/sbin/logrotate from write access on the directory /home/wildfly/add_users/log/ca.log. For complete SELinux messages run: sealert -l 74bc8185-b967- 41bd-8837-96c4522c7901 '),
(26, '2022-04-17', '00:01:04', 'igcarca', 'python', 'Nil', 'Nil', 'access on the directory /home/wildfly/add_users/log/ca.log.'),
(27, '2022-04-17', '00:01:04', 'igcarca', 'setroubleshoot', 'Nil', 'Nil', 'SELinux is preventing /usr/sbin/logrotate from create access on the file /home/wildfly/add_users/log/ca.log.  For complete SELinux messages run: sealert -l 0335c7d3-cb7d-4226-93cc-2b6864666c64 '),
(28, '2022-04-17', '00:01:04', 'igcarca', 'python', 'Nil', 'Nil', 'access on the file /home/wildfly/add_users/log/ca.log.'),
(29, '2022-04-17', '00:01:04', 'igcarca', 'setroubleshoot', 'Nil', 'Nil', 'SELinux is preventing /usr/sbin/logrotate from setattr access on the file labeled user_home_t. For complete SELinux messages run: sealert -l aa153b06-bb3d-4684-bee8-b87c6e184c1e '),
(30, '2022-04-17', '00:01:04', 'igcarca', 'python', 'Nil', 'Nil', 'access on the file labeled user_home_t.'),
(31, '2022-04-17', '00:01:04', 'igcarca', 'setroubleshoot', 'Nil', 'Nil', 'SELinux is preventing /usr/sbin/logrotate from unlink access on the file /home/wildfly/add_users/log/ca.log-2 0220116. For complete SELinux messages run: sealert -l 02451d26-7e8f-4280-9bbd-c88216351ce5 '),
(32, '2022-04-17', '00:10:01', 'igcarca', 'systemd', 'Nil', 'Nil', 'Created slice User Slice of root. '),
(33, '2022-04-17', '00:10:01', 'igcarca', 'systemd', 'Nil', 'Nil', 'Starting User Slice of root. '),
(34, '2022-04-17', '00:10:01', 'igcarca', 'systemd', 'Nil', 'Nil', 'Started Session 16012 of user root. '),
(35, '2022-04-17', '00:10:01', 'igcarca', 'systemd', 'Nil', 'Nil', 'Starting Session 16012 of user root. '),
(36, '2022-04-17', '00:10:01', 'igcarca', 'systemd', 'Nil', 'Nil', 'Removed slice User Slice of root. '),
(37, '2022-04-17', '00:10:01', 'igcarca', 'systemd', 'Nil', 'Nil', 'Stopping User Slice of root. '),
(38, '2022-04-17', '00:20:01', 'igcarca', 'systemd', 'Nil', 'Nil', 'Created slice User Slice of root. '),
(39, '2022-04-17', '00:20:01', 'igcarca', 'systemd', 'Nil', 'Nil', 'Starting User Slice of root. '),
(40, '2022-04-17', '00:20:01', 'igcarca', 'systemd', 'Nil', 'Nil', 'Started Session 16013 of user root. '),
(41, '2022-04-17', '00:20:01', 'igcarca', 'systemd', 'Nil', 'Nil', 'Starting Session 16013 of user root. '),
(42, '2022-04-17', '00:20:01', 'igcarca', 'systemd', 'Nil', 'Nil', 'Removed slice User Slice of root. '),
(43, '2022-04-17', '00:20:01', 'igcarca', 'systemd', 'Nil', 'Nil', 'Stopping User Slice of root. '),
(44, '2022-04-17', '03:01:01', 'igcarca', 'dbus', 'Nil', 'Nil', '[system] Activating service name=&#39;org.fedoraproject.Setroubleshootd&#39; (using servicehelper) '),
(45, '2022-04-17', '03:01:01', 'igcarca', 'dbus', 'Nil', 'Nil', '[system] Successfully activated service &#39;org.fedoraproject.Setroubleshootd&#39; '),
(46, '2022-04-17', '03:01:02', 'igcarca', 'setroubleshoot', 'Nil', 'Nil', 'failed to retrieve rpm info for /var/lib/mysql/igcarca.log '),
(47, '2022-04-17', '03:01:02', 'igcarca', 'setroubleshoot', 'Nil', 'Nil', 'SELinux is preventing /usr/sbin/logrotate from getattr access on the file /var/lib/mysql/igcarca.log. For complete SELinux messages run: sealert -l 983eac16-7b08-4612-aabe- e320ab2f7aeb '),
(48, '2022-04-17', '03:01:02', 'igcarca', 'python', 'Nil', 'Nil', 'access on the file /var/lib/mysql/igcarca.log.'),
(49, '2022-04-17', '03:01:05', 'igcarca', 'setroubleshoot', 'Nil', 'Nil', 'SELinux is preventing /usr/sbin/logrotate from getattr access on the file /var/ossec/logs/ossec.log. For complete SELinux messages run: sealert -l e71aa98f-5ac3-4b2e-a35c- be6adcf25750 ');

-- --------------------------------------------------------

--
-- Table structure for table `raserv`
--

CREATE TABLE `raserv` (
  `ID` int(11) NOT NULL,
  `rdate` varchar(50) DEFAULT NULL,
  `rtime` varchar(50) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `servername` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `raserv`
--

INSERT INTO `raserv` (`ID`, `rdate`, `rtime`, `remarks`, `servername`) VALUES
(1, '2020-02-24', '14:46:13:', 'remote administration service initialized\n ', 'raserver'),
(2, '2020-02-24', '14:46:13:', 'found hardserver version 12.50.4\n ', 'raserver'),
(3, '2020-02-24', '15:16:40:', 'termination signal received\n ', 'raserver'),
(4, '2020-02-24', '15:16:40:', 'remote administration service terminating\n ', 'raserver'),
(5, '2020\n-02-24', '15:16:42', ' raserv shutdown ', 'raserver'),
(6, '2020-02-24', '15:16:45:', 'remote administration service initialized\n ', 'raserver'),
(7, '2020-02-24', '15:16:45:', 'found hardserver version 12.50.4\n ', 'raserver'),
(8, '2020-02-25', '09:29:44:', 'termination signal received\n ', 'raserver'),
(9, '2020-02-25', '09:29:44:', 'remote administration service terminating\n ', 'raserver'),
(10, '2020-02-25', '09:31:43:', 'remote administration service initialized\n ', 'raserver'),
(11, '2020-02-25', '09:31:43:', 'found hardserver version 12.50.4\n ', 'raserver'),
(12, '2020-03-05', '14:59:52:', 'termination signal received\n ', 'raserver'),
(13, '2020-03-05', '14:59:52:', 'remote administration service terminating\n ', 'raserver'),
(14, '2020\n-03-5', '14:59:57', ' raserv shutdown ', 'raserver'),
(15, '2020-03-05', '15:08:28:', 'remote administration service initialized\n ', 'raserver'),
(16, '2020-03-05', '15:08:28:', 'found hardserver version 12.50.4\n ', 'raserver'),
(17, '2020-03-05', '15:09:07:', 'termination signal received\n ', 'raserver'),
(18, '2020-03-05', '15:09:07:', 'remote administration service terminating\n ', 'raserver'),
(19, '2020-03-05', '15:14:06:', 'remote administration service initialized\n ', 'raserver'),
(20, '2020-03-05', '15:14:06:', 'found hardserver version 12.50.4\n ', 'raserver'),
(21, '2020-03-05', '15:24:16:', 'termination signal received\n ', 'raserver'),
(22, '2020-03-05', '15:24:16:', 'remote administration service terminating\n ', 'raserver'),
(23, '2020\n-03-5', '15:24:18', ' raserv shutdown ', 'raserver'),
(24, '2020-03-05', '15:26:22:', 'remote administration service initialized\n ', 'raserver'),
(25, '2020-03-05', '15:26:22:', 'found hardserver version 12.50.4\n ', 'raserver'),
(26, '2020-03-05', '15:26:48:', 'termination signal received\n ', 'raserver'),
(27, '2020-03-05', '15:26:48:', 'remote administration service terminating\n ', 'raserver'),
(28, '2020\n-03-5', '15:26:53', ' raserv shutdown ', 'raserver'),
(29, '2020-03-05', '15:28:47:', 'remote administration service initialized\n ', 'raserver'),
(30, '2020-03-05', '15:28:47:', 'found hardserver version 12.50.4\n ', 'raserver'),
(31, '2020-03-05', '15:34:14:', 'remote administration service initialized\n ', 'raserver'),
(32, '2020-03-05', '15:34:14:', 'found hardserver version 12.50.4\n ', 'raserver'),
(33, '2020-03-05', '15:37:13:', 'termination signal received\n ', 'raserver'),
(34, '2020-03-05', '15:37:13:', 'remote administration service terminating\n ', 'raserver'),
(35, '2020-03-05', '15:37:13:', 'termination signal received\n ', 'raserver'),
(36, '2020-03-05', '15:37:13:', 'remote administration service terminating\n ', 'raserver'),
(37, '2020\n-03-5', '15:37:18', ' raserv shutdown ', 'raserver'),
(38, '2020-03-05', '15:39:16:', 'remote administration service initialized\n ', 'raserver'),
(39, '2020-03-05', '15:39:16:', 'found hardserver version 12.50.4\n ', 'raserver'),
(40, '2020-03-13', '17:38:01:', 'termination signal received\n ', 'raserver'),
(41, '2020-03-13', '17:38:01:', 'remote administration service terminating\n ', 'raserver'),
(42, '2020-03-13', '17:38:01:', 'termination signal received\n ', 'raserver'),
(43, '2020-03-13', '17:38:01:', 'remote administration service terminating\n ', 'raserver'),
(44, '2020\n-03-13', '17:38:04', ' raserv shutdown ', 'raserver'),
(45, '2020-10-27', '13:19:27:', 'remote administration service initialized\n ', 'raserver'),
(46, '2020-10-27', '13:19:27:', 'found hardserver version 12.50.4\n ', 'raserver'),
(47, '2020-11-06', '09:36:54:', 'termination signal received\n ', 'raserver'),
(48, '2020-11-06', '09:36:54:', 'remote administration service terminating\n ', 'raserver'),
(49, '2020\n-11-6', '09:36:56', ' raserv shutdown ', 'raserver'),
(50, '2020-11-06', '09:37:00:', 'remote administration service initialized\n ', 'raserver'),
(51, '2020-11-06', '09:37:00:', 'found hardserver version 12.50.4\n ', 'raserver'),
(52, '2021-03-25', '10:18:31:', 'termination signal received ', 'raserver');

-- --------------------------------------------------------

--
-- Table structure for table `seclog`
--

CREATE TABLE `seclog` (
  `TID` int(11) NOT NULL,
  `secdate` varchar(50) DEFAULT NULL,
  `sectime` varchar(50) DEFAULT NULL,
  `servername` varchar(30) DEFAULT NULL,
  `daemonname` varchar(50) DEFAULT NULL,
  `daemonid` varchar(20) DEFAULT NULL,
  `grp` varchar(50) DEFAULT NULL,
  `usr` varchar(50) DEFAULT NULL,
  `gname` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `gid` varchar(50) DEFAULT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `homename` varchar(50) DEFAULT NULL,
  `shname` varchar(50) DEFAULT NULL,
  `accname` varchar(50) DEFAULT NULL,
  `ipaddr` varchar(20) DEFAULT NULL,
  `portno` varchar(20) DEFAULT NULL,
  `servicename` varchar(30) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `events` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seclog`
--

INSERT INTO `seclog` (`TID`, `secdate`, `sectime`, `servername`, `daemonname`, `daemonid`, `grp`, `usr`, `gname`, `uname`, `gid`, `uid`, `homename`, `shname`, `accname`, `ipaddr`, `portno`, `servicename`, `remarks`, `events`) VALUES
(1, '2022-05-23', '13:12:57', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Registered Authentication Agent for unix-process:29117:724843947\n ', NULL),
(2, '2022-05-23', '13:12:57', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Registered Authentication Agent for unix-process:29117:724843947\n ', NULL),
(3, '2022-05-23', '13:12:57', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Registered Authentication Agent for unix-process:29117:724843947\n ', NULL),
(4, '2022-05-23', '13:12:57', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Unregistered Authentication Agent for unix-process:29117:724843947\n ', NULL),
(5, '2022-05-23', '13:12:57', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Unregistered Authentication Agent for unix-process:29117:724843947\n ', NULL),
(6, '2022-05-23', '13:12:57', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Unregistered Authentication Agent for unix-process:29117:724843947\n ', NULL),
(7, '2022-05-23', '13:13:45', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Registered Authentication Agent for unix-process:29232:724848797\n ', NULL),
(8, '2022-05-23', '13:13:45', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Registered Authentication Agent for unix-process:29232:724848797\n ', NULL),
(9, '2022-05-23', '13:13:45', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Registered Authentication Agent for unix-process:29232:724848797\n ', NULL),
(10, '2022-05-23', '13:13:45', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Unregistered Authentication Agent for unix-process:29232:724848797\n ', NULL),
(11, '2022-05-23', '13:13:45', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Unregistered Authentication Agent for unix-process:29232:724848797\n ', NULL),
(12, '2022-05-23', '13:13:45', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Unregistered Authentication Agent for unix-process:29232:724848797\n ', NULL),
(13, '2022-05-23', '13:15:01', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Registered Authentication Agent for unix-process:29329:724856410\n ', NULL),
(14, '2022-05-23', '13:15:01', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Registered Authentication Agent for unix-process:29329:724856410\n ', NULL),
(15, '2022-05-23', '13:15:01', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Registered Authentication Agent for unix-process:29329:724856410\n ', NULL),
(16, '2022-05-23', '13:16:31', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Unregistered Authentication Agent for unix-process:29329:724856410\n ', NULL),
(17, '2022-05-23', '13:16:31', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Unregistered Authentication Agent for unix-process:29329:724856410\n ', NULL),
(18, '2022-05-23', '13:16:31', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Unregistered Authentication Agent for unix-process:29329:724856410\n ', NULL),
(19, '2022-05-23', '13:18:44', 'ccaserver', 'sudo', '', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'pam_unix(sudo-i:session): session closed for user root\n ', NULL),
(20, '2022-05-23', '13:18:49', 'ccaserver', 'sudo', '', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', '/home/test', '/bin/bash\n', 'root', 'Nil', 'Nil', 'Nil', 'Nill', NULL),
(21, '2022-05-23', '13:18:49', 'ccaserver', 'sudo', '', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'root', 'Nil', 'Nil', 'Nil', 'pam_unix(sudo-i:session): session opened for user root by test(uid=0)\n ', NULL),
(22, '2022-05-23', '13:19:51', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Registered Authentication Agent for unix-process:29662:724885445\n ', NULL),
(23, '2022-05-23', '13:19:51', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Registered Authentication Agent for unix-process:29662:724885445\n ', NULL),
(24, '2022-05-23', '13:19:51', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Registered Authentication Agent for unix-process:29662:724885445\n ', NULL),
(25, '2022-05-23', '13:19:51', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Unregistered Authentication Agent for unix-process:29662:724885445\n ', NULL),
(26, '2022-05-23', '13:19:51', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Unregistered Authentication Agent for unix-process:29662:724885445\n ', NULL),
(27, '2022-05-23', '13:19:51', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Unregistered Authentication Agent for unix-process:29662:724885445\n ', NULL),
(28, '2022-05-23', '13:31:44', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Registered Authentication Agent for unix-process:30520:724956751\n ', NULL),
(29, '2022-05-23', '13:31:44', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Registered Authentication Agent for unix-process:30520:724956751\n ', NULL),
(30, '2022-05-23', '13:31:44', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Registered Authentication Agent for unix-process:30520:724956751\n ', NULL),
(31, '2022-05-23', '13:33:15', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Unregistered Authentication Agent for unix-process:30520:724956751\n ', NULL),
(32, '2022-05-23', '13:33:15', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Unregistered Authentication Agent for unix-process:30520:724956751\n ', NULL),
(33, '2022-05-23', '13:33:15', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Unregistered Authentication Agent for unix-process:30520:724956751\n ', NULL),
(34, '2022-05-23', '16:30:11', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Registered Authentication Agent for unix-process:9852:726027437\n ', NULL),
(35, '2022-05-23', '16:30:11', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Registered Authentication Agent for unix-process:9852:726027437\n ', NULL),
(36, '2022-05-23', '16:30:11', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Registered Authentication Agent for unix-process:9852:726027437\n ', NULL),
(37, '2022-05-23', '16:30:25', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Unregistered Authentication Agent for unix-process:9852:726027437\n ', NULL),
(38, '2022-05-23', '16:30:25', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Unregistered Authentication Agent for unix-process:9852:726027437\n ', NULL),
(39, '2022-05-23', '16:30:25', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Unregistered Authentication Agent for unix-process:9852:726027437\n ', NULL),
(40, '2022-05-23', '16:30:40', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Registered Authentication Agent for unix-process:9932:726030293\n ', NULL),
(41, '2022-05-23', '16:30:40', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Registered Authentication Agent for unix-process:9932:726030293\n ', NULL),
(42, '2022-05-23', '16:30:40', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Registered Authentication Agent for unix-process:9932:726030293\n ', NULL),
(43, '2022-05-23', '16:30:40', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Registered Authentication Agent for unix-process:9932:726030293\n ', NULL),
(44, '2022-05-23', '16:30:40', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Unregistered Authentication Agent for unix-process:9932:726030293\n ', NULL),
(45, '2022-05-23', '16:30:40', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Unregistered Authentication Agent for unix-process:9932:726030293\n ', NULL),
(46, '2022-05-23', '16:30:40', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Unregistered Authentication Agent for unix-process:9932:726030293\n ', NULL),
(47, '2022-05-23', '16:31:10', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Registered Authentication Agent for unix-process:10180:726033309\n ', NULL),
(48, '2022-05-23', '16:31:10', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Registered Authentication Agent for unix-process:10180:726033309\n ', NULL),
(49, '2022-05-23', '16:31:10', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Registered Authentication Agent for unix-process:10180:726033309\n ', NULL),
(50, '2022-05-23', '16:31:10', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Unregistered Authentication Agent for unix-process:10180:726033309\n ', NULL),
(51, '2022-05-23', '16:31:10', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Unregistered Authentication Agent for unix-process:10180:726033309\n ', NULL),
(52, '2022-05-23', '16:31:10', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Unregistered Authentication Agent for unix-process:10180:726033309\n ', NULL),
(53, '2022-05-23', '16:32:24', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Registered Authentication Agent for unix-process:10330:726040675\n ', NULL),
(54, '2022-05-23', '16:32:24', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Registered Authentication Agent for unix-process:10330:726040675\n ', NULL),
(55, '2022-05-23', '16:32:24', 'ccaserver', 'polkitd', '660', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Registered Authentication Agent for unix-process:10330:726040675\n ', NULL),
(56, '2022-05-24', '04:38:30', 'ccaserver', 'polkitd', '643', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Loading rules from directory /etc/polkit-1/rules.d\n ', NULL),
(57, '2022-05-24', '04:38:30', 'ccaserver', 'polkitd', '643', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Loading rules from directory /usr/share/polkit-1/rules.d\n ', NULL),
(58, '2022-05-24', '04:38:30', 'ccaserver', 'polkitd', '643', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Finished loading, compiling and executing 2 rules\n ', NULL),
(59, '2022-05-24', '04:38:30', 'ccaserver', 'polkitd', '643', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Acquired the name org.freedesktop.PolicyKit1 on the system bus\n ', NULL),
(60, '2022-05-24', '04:38:37', 'ccaserver', 'sshd', '1378', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', '0.0.0.0', '22', 'Nil', 'Server listening on 0.0.0.0 port 22.\n ', NULL),
(61, '2022-05-24', '04:38:37', 'ccaserver', 'sshd', '1378', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', '22', 'Nil', 'Server listening on :: port 22.\n ', NULL),
(62, '2022-05-24', '04:42:54', 'ccaserver', 'sshd', '2619', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', '10.19.1.52', '503412', 'Nil', 'Accepted password for test from 10.19.1.52 port 50341 ssh2\n ', NULL),
(63, '2022-05-24', '04:42:54', 'ccaserver', 'sshd', '2619', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'pam_unix(sshd:session): session opened for user test by (uid=0)\n ', NULL),
(64, '2022-05-24', '04:43:36', 'ccaserver', 'sudo', '', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', '/home/test', '/bin/bash\n', 'root', 'Nil', 'Nil', 'Nil', 'Nill', NULL),
(65, '2022-05-24', '04:43:36', 'ccaserver', 'sudo', '', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'root', 'Nil', 'Nil', 'Nil', 'pam_unix(sudo-i:session): session opened for user root by test(uid=0)\n ', NULL),
(66, '2022-05-24', '05:08:54', 'ccaserver', 'sudo', '', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', '/home/test', '/bin/bash\n', 'root', 'Nil', 'Nil', 'Nil', 'Nill', NULL),
(67, '2022-05-24', '05:08:54', 'ccaserver', 'sudo', '', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'root', 'Nil', 'Nil', 'Nil', 'pam_unix(sudo-i:session): session opened for user root by test(uid=0)\n ', NULL),
(68, '2022-05-24', '05:19:05', 'ccaserver', 'polkitd', '643', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Registered Authentication Agent for unix-process:5011:245233 (system\n ', NULL),
(69, '2022-01-name', ':1.61', '[/usr/bin/pkttyagent', 'notifyfd', '', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', '5 --fallback], object path\n ', NULL),
(70, '2022-01-name', ':1.61', '[/usr/bin/pkttyagent', 'notifyfd', '', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', '5 --fallback], object path\n ', NULL),
(71, '2022-05-24', '05:19:05', 'ccaserver', 'polkitd', '643', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Unregistered Authentication Agent for unix-process:5011:245233\n ', NULL),
(72, '2022-05-24', '05:19:05', 'ccaserver', 'polkitd', '643', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Unregistered Authentication Agent for unix-process:5011:245233\n ', NULL),
(73, '2022-05-24', '05:19:05', 'ccaserver', 'polkitd', '643', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Unregistered Authentication Agent for unix-process:5011:245233\n ', NULL),
(74, '2022-05-24', '05:19:10', 'ccaserver', 'polkitd', '643', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Registered Authentication Agent for unix-process:5020:245704 (system\n ', NULL),
(75, '2022-01-name', ':1.62', '[/usr/bin/pkttyagent', 'notifyfd', '', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', '5 --fallback], object path\n ', NULL),
(76, '2022-01-name', ':1.62', '[/usr/bin/pkttyagent', 'notifyfd', '', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', '5 --fallback], object path\n ', NULL),
(77, '2022-05-24', '05:19:10', 'ccaserver', 'polkitd', '643', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Unregistered Authentication Agent for unix-process:5020:245704\n ', NULL),
(78, '2022-05-24', '05:19:10', 'ccaserver', 'polkitd', '643', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Unregistered Authentication Agent for unix-process:5020:245704\n ', NULL),
(79, '2022-05-24', '05:19:10', 'ccaserver', 'polkitd', '643', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Unregistered Authentication Agent for unix-process:5020:245704\n ', NULL),
(80, '2022-05-24', '05:19:20', 'ccaserver', 'polkitd', '643', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Registered Authentication Agent for unix-process:5034:246662 (system\n ', NULL),
(81, '2022-01-name', ':1.63', '[/usr/bin/pkttyagent', 'notifyfd', '', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', '5 --fallback], object path\n ', NULL),
(82, '2022-01-name', ':1.63', '[/usr/bin/pkttyagent', 'notifyfd', '', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', '5 --fallback], object path\n ', NULL),
(83, '2022-05-24', '05:19:20', 'ccaserver', 'polkitd', '643', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Unregistered Authentication Agent for unix-process:5034:246662\n ', NULL),
(84, '2022-05-24', '05:19:20', 'ccaserver', 'polkitd', '643', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Unregistered Authentication Agent for unix-process:5034:246662\n ', NULL),
(85, '2022-05-24', '05:19:20', 'ccaserver', 'polkitd', '643', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Unregistered Authentication Agent for unix-process:5034:246662\n ', NULL),
(86, '2022-05-24', '05:19:20', 'ccaserver', 'polkitd', '643', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Unregistered Authentication Agent for unix-process:5034:246662\n ', NULL),
(87, '2022-05-24', '05:19:25', 'ccaserver', 'polkitd', '643', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Registered Authentication Agent for unix-process:5055:247234 (system\n ', NULL),
(88, '2022-01-name', ':1.64', '[/usr/bin/pkttyagent', 'notifyfd', '', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', '5 --fallback], object path\n ', NULL),
(89, '2022-01-name', ':1.64', '[/usr/bin/pkttyagent', 'notifyfd', '', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', '5 --fallback], object path\n ', NULL),
(90, '2022-05-24', '05:19:25', 'ccaserver', 'polkitd', '643', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Unregistered Authentication Agent for unix-process:5055:247234\n ', NULL),
(91, '2022-05-24', '05:19:25', 'ccaserver', 'polkitd', '643', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Unregistered Authentication Agent for unix-process:5055:247234\n ', NULL),
(92, '2022-05-24', '05:19:25', 'ccaserver', 'polkitd', '643', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Unregistered Authentication Agent for unix-process:5055:247234\n ', NULL),
(93, '2022-05-24', '14:28:16', 'ccaserver', 'polkitd', '643', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Registered Authentication Agent for unix-process:19942:1551894\n ', NULL),
(94, '2022-05-24', '14:28:16', 'ccaserver', 'polkitd', '643', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Registered Authentication Agent for unix-process:19942:1551894\n ', NULL),
(95, '2022-05-24', '14:28:16', 'ccaserver', 'polkitd', '643', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Registered Authentication Agent for unix-process:19942:1551894\n ', NULL),
(96, '2022-05-24', '14:28:17', 'ccaserver', 'polkitd', '643', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Unregistered Authentication Agent for unix-process:19942:1551894\n ', NULL),
(97, '2022-05-24', '14:28:17', 'ccaserver', 'polkitd', '643', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Unregistered Authentication Agent for unix-process:19942:1551894\n ', NULL),
(98, '2022-05-24', '14:28:17', 'ccaserver', 'polkitd', '643', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Unregistered Authentication Agent for unix-process:19942:1551894\n ', NULL),
(99, '2022-06-27', '10:18:32', 'ccaserver', 'sshd', '27163', 'Nil', 'root', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', '10.28.200.96', '', 'Nil', 'Accepted password for root from 10.28.200.96 port\n ', NULL),
(100, '2022-06-27', '10:18:32', 'ccaserver', 'sshd', '27163', 'Nil', 'root', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', '10.28.200.96', '', 'Nil', 'Accepted password for root from 10.28.200.96 port\n ', NULL),
(101, '2022-06-27', '10:18:32', 'ccaserver', 'sshd', '27163', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'pam_unix(sshd:session): session opened for user root by\n ', NULL),
(102, '2022-06-27', '10:18:32', 'ccaserver', 'sshd', '27163', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'pam_unix(sshd:session): session opened for user root by\n ', NULL),
(103, '2022-06-27', '10:18:33', 'ccaserver', 'sshd', '27163', 'Nil', 'root', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', '10.28.200.96', '4137211', 'Nil', 'Received disconnect from 10.28.200.96 port 41372:11:\n ', NULL),
(104, '2022-06-27', '10:18:33', 'ccaserver', 'sshd', '27163', 'Nil', 'root', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', '10.28.200.96', '4137211', 'Nil', 'Received disconnect from 10.28.200.96 port 41372:11:\n ', NULL),
(105, '2022-06-27', '10:18:33', 'ccaserver', 'sshd', '27163', 'Nil', 'root', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', '10.28.200.96', '41372', 'Nil', 'Disconnected from 10.28.200.96 port 41372\n ', NULL),
(106, '2022-06-27', '10:18:33', 'ccaserver', 'sshd', '27163', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'pam_unix(sshd:session): session closed for user root ', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `updetails`
--

CREATE TABLE `updetails` (
  `ID` int(11) NOT NULL,
  `upftype` varchar(255) DEFAULT NULL,
  `upfname` varchar(255) DEFAULT NULL,
  `upftime` datetime DEFAULT NULL,
  `sub_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `updetails`
--

INSERT INTO `updetails` (`ID`, `upftype`, `upfname`, `upftime`, `sub_name`) VALUES
(6, 'SEC', 'logfilefive.log', '2022-07-02 11:00:47', 'Admin'),
(7, 'SEC', 'logfilefive.log', '2022-07-02 11:01:02', 'Admin'),
(8, 'IGCCA', 'logfilefour.log', '2022-07-02 11:07:28', 'Admin'),
(9, 'RASERVE', 'logfilethree.log', '2022-07-02 11:08:35', 'Admin'),
(10, 'RASERVE', 'logfilethree.log', '2022-07-02 03:15:30', 'Admin'),
(11, 'SEC', 'logfilefive.log', '2022-07-02 04:02:29', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `useremail` varchar(255) DEFAULT NULL,
  `uname` varchar(255) DEFAULT NULL,
  `upassword` varchar(255) DEFAULT NULL,
  `urole` varchar(255) DEFAULT NULL,
  `sub_name` varchar(255) DEFAULT NULL,
  `sub_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `username`, `useremail`, `uname`, `upassword`, `urole`, `sub_name`, `sub_time`) VALUES
(1, 'Admin', 'test@gmail.com', 'Admin', '4de93544234adffbb681ed60ffcfb941', 'Admin', 'admin@1234', '2022-06-01 05:47:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calog`
--
ALTER TABLE `calog`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `hsmlog`
--
ALTER TABLE `hsmlog`
  ADD PRIMARY KEY (`TID`);

--
-- Indexes for table `igccalog`
--
ALTER TABLE `igccalog`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `raserv`
--
ALTER TABLE `raserv`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `seclog`
--
ALTER TABLE `seclog`
  ADD PRIMARY KEY (`TID`);

--
-- Indexes for table `updetails`
--
ALTER TABLE `updetails`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calog`
--
ALTER TABLE `calog`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `hsmlog`
--
ALTER TABLE `hsmlog`
  MODIFY `TID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `igccalog`
--
ALTER TABLE `igccalog`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `raserv`
--
ALTER TABLE `raserv`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `seclog`
--
ALTER TABLE `seclog`
  MODIFY `TID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `updetails`
--
ALTER TABLE `updetails`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
