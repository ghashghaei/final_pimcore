-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 18, 2020 at 01:06 AM
-- Server version: 5.7.29
-- PHP Version: 7.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prj`
--

-- --------------------------------------------------------

--
-- Table structure for table `application_logs`
--

CREATE TABLE `application_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `timestamp` datetime NOT NULL,
  `message` text,
  `priority` enum('emergency','alert','critical','error','warning','notice','info','debug') DEFAULT NULL,
  `fileobject` varchar(1024) DEFAULT NULL,
  `info` varchar(1024) DEFAULT NULL,
  `component` varchar(190) DEFAULT NULL,
  `source` varchar(190) DEFAULT NULL,
  `relatedobject` int(11) UNSIGNED DEFAULT NULL,
  `relatedobjecttype` enum('object','document','asset') DEFAULT NULL,
  `maintenanceChecked` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` int(11) UNSIGNED NOT NULL,
  `parentId` int(11) UNSIGNED DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `path` varchar(765) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `mimetype` varchar(190) DEFAULT NULL,
  `creationDate` int(11) UNSIGNED DEFAULT NULL,
  `modificationDate` int(11) UNSIGNED DEFAULT NULL,
  `userOwner` int(11) UNSIGNED DEFAULT NULL,
  `userModification` int(11) UNSIGNED DEFAULT NULL,
  `customSettings` longtext,
  `hasMetaData` tinyint(1) NOT NULL DEFAULT '0',
  `versionCount` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `parentId`, `type`, `filename`, `path`, `mimetype`, `creationDate`, `modificationDate`, `userOwner`, `userModification`, `customSettings`, `hasMetaData`, `versionCount`) VALUES
(1, 0, 'folder', '', '/', NULL, 1584464703, 1584464703, 1, 1, NULL, 0, 0),
(2, 1, 'folder', '_default_upload_bucket', '/', NULL, 1584466275, 1584466275, 1, 2, 'a:0:{}', 0, 1),
(3, 2, 'image', 'download (1).jpg', '/_default_upload_bucket/', 'image/jpeg', 1584466276, 1584466276, 2, 2, 'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:275;s:11:\"imageHeight\";i:183;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1584466275;s:8:\"FileSize\";i:13660;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}', 0, 1),
(4, 2, 'image', 'download (2).jpg', '/_default_upload_bucket/', 'image/jpeg', 1584466287, 1584466287, 2, 2, 'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:272;s:11:\"imageHeight\";i:185;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1584466286;s:8:\"FileSize\";i:11659;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}', 0, 1),
(5, 2, 'image', 'download (3).jpg', '/_default_upload_bucket/', 'image/jpeg', 1584466296, 1584466296, 2, 2, 'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:284;s:11:\"imageHeight\";i:177;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1584466296;s:8:\"FileSize\";i:13418;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}', 0, 1),
(6, 2, 'image', 'download (1)_1.jpg', '/_default_upload_bucket/', 'image/jpeg', 1584468518, 1584468518, 2, 2, 'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:275;s:11:\"imageHeight\";i:183;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1584468518;s:8:\"FileSize\";i:13660;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}', 0, 1),
(7, 2, 'image', 'download (1)_2.jpg', '/_default_upload_bucket/', 'image/jpeg', 1584469060, 1584469060, 2, 2, 'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:275;s:11:\"imageHeight\";i:183;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1584469060;s:8:\"FileSize\";i:13660;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}', 0, 1),
(8, 2, 'image', '57935799.jpg', '/_default_upload_bucket/', 'image/jpeg', 1584469410, 1584478962, 2, 2, 'a:6:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:640;s:11:\"imageHeight\";i:480;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1584469409;s:8:\"FileSize\";i:61603;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;s:26:\"disableFocalPointDetection\";b:1;}', 0, 2),
(9, 2, 'image', 'download (3)_1.jpg', '/_default_upload_bucket/', 'image/jpeg', 1584469619, 1584469620, 2, 2, 'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:284;s:11:\"imageHeight\";i:177;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1584469619;s:8:\"FileSize\";i:13418;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}', 0, 1),
(10, 2, 'image', 'download (3)_2.jpg', '/_default_upload_bucket/', 'image/jpeg', 1584478903, 1584478904, 2, 2, 'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:284;s:11:\"imageHeight\";i:177;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1584478903;s:8:\"FileSize\";i:13418;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}', 0, 1),
(11, 2, 'image', 'فروش-تابلو-رنگ-روغن-راه-پاییزی.jpg', '/_default_upload_bucket/', 'image/jpeg', 1584478918, 1584478918, 2, 2, 'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:458;s:11:\"imageHeight\";i:458;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1584478918;s:8:\"FileSize\";i:76920;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:7:\"COMMENT\";}s:25:\"embeddedMetaDataExtracted\";b:1;}', 0, 1),
(12, 2, 'image', 'gallery-image-12-128x120.jpg', '/_default_upload_bucket/', 'image/jpeg', 1584478938, 1584478938, 2, 2, 'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:154;s:11:\"imageHeight\";i:144;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1584478937;s:8:\"FileSize\";i:8748;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}', 0, 1),
(13, 2, 'image', 'download.jpg', '/_default_upload_bucket/', 'image/jpeg', 1584478959, 1584478960, 2, 2, 'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:284;s:11:\"imageHeight\";i:177;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1584478959;s:8:\"FileSize\";i:8373;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}', 0, 1),
(14, 2, 'image', 'admin-ajax.png', '/_default_upload_bucket/', 'image/png', 1584478981, 1584478981, 2, 2, 'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:1290;s:11:\"imageHeight\";i:748;s:16:\"embeddedMetaData\";a:0:{}s:25:\"embeddedMetaDataExtracted\";b:1;}', 0, 1),
(15, 2, 'image', 'paj.jpg', '/_default_upload_bucket/', 'image/jpeg', 1584478991, 1584478991, 2, 2, 'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:283;s:11:\"imageHeight\";i:194;s:16:\"embeddedMetaData\";a:6:{s:12:\"FileDateTime\";i:1584478991;s:8:\"FileSize\";i:39579;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:13:\"ANY_TAG, IFD0\";s:11:\"Orientation\";i:1;}s:25:\"embeddedMetaDataExtracted\";b:1;}', 0, 1),
(16, 2, 'image', 'slider-2-slide-3-1920x850.jpg', '/_default_upload_bucket/', 'image/jpeg', 1584479020, 1584479020, 2, 2, 'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:1919;s:11:\"imageHeight\";i:850;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1584479019;s:8:\"FileSize\";i:321339;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}', 0, 1),
(17, 2, 'image', 'download (3)_3.jpg', '/_default_upload_bucket/', 'image/jpeg', 1584479033, 1584479033, 2, 2, 'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:284;s:11:\"imageHeight\";i:177;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1584479033;s:8:\"FileSize\";i:13418;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}', 0, 1),
(18, 2, 'image', 'Header-Doctor-with-Patient.jpg', '/_default_upload_bucket/', 'image/jpeg', 1584479076, 1584479076, 2, 2, 'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:1920;s:11:\"imageHeight\";i:700;s:16:\"embeddedMetaData\";a:15:{s:11:\"DerivedFrom\";s:91:\"xmp.iid:12904ef6-1de7-114f-b581-11bca37db877 | xmp.did:6fabd084-7f74-5d4b-95ea-f6979b19efd4\";s:6:\"rights\";s:27:\"©nenetus - stock.adobe.com\";s:7:\"creator\";s:9:\"Lifestock\";s:5:\"title\";s:50:\"Female doctor explaining diagnosis to her patient.\";s:12:\"FileDateTime\";i:1584479076;s:8:\"FileSize\";i:150809;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:20:\"ANY_TAG, IFD0, APP12\";s:9:\"Copyright\";s:27:\"©nenetus - stock.adobe.com\";s:7:\"Company\";s:5:\"Ducky\";s:4:\"Info\";s:1:\"\";s:17:\"CodedCharacterSet\";s:3:\"%G\";s:24:\"ApplicationRecordVersion\";s:2:\"\0\";s:15:\"CopyrightNotice\";s:27:\"©nenetus - stock.adobe.com\";}s:25:\"embeddedMetaDataExtracted\";b:1;}', 0, 1),
(19, 2, 'image', 'download (1)_3.jpg', '/_default_upload_bucket/', 'image/jpeg', 1584479092, 1584479092, 2, 2, 'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:275;s:11:\"imageHeight\";i:183;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1584479091;s:8:\"FileSize\";i:13660;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}', 0, 1),
(20, 2, 'image', 'gallery-image-12-128x120_1.jpg', '/_default_upload_bucket/', 'image/jpeg', 1584479100, 1584479100, 2, 2, 'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:154;s:11:\"imageHeight\";i:144;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1584479099;s:8:\"FileSize\";i:8748;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}', 0, 1),
(21, 2, 'image', 'Header-Woman-Doctor-with-Clipboard.jpg', '/_default_upload_bucket/', 'image/jpeg', 1584479106, 1584479106, 2, 2, 'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:1920;s:11:\"imageHeight\";i:500;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1584479106;s:8:\"FileSize\";i:121598;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `assets_metadata`
--

CREATE TABLE `assets_metadata` (
  `cid` int(11) NOT NULL,
  `name` varchar(190) NOT NULL,
  `language` varchar(10) CHARACTER SET ascii NOT NULL DEFAULT '',
  `type` enum('input','textarea','asset','document','object','date','select','checkbox') DEFAULT NULL,
  `data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `id` varchar(165) CHARACTER SET ascii NOT NULL DEFAULT '',
  `data` longblob,
  `mtime` int(11) UNSIGNED DEFAULT NULL,
  `expire` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`id`, `data`, `mtime`, `expire`) VALUES
('system_cache_write_lock', 0x693a313538343439313231383b, 1584491218, 1584491248),
('system_route_redirect', 0x733a363a22613a303a7b7d223b, 1584488460, 1586907660);

-- --------------------------------------------------------

--
-- Table structure for table `cache_tags`
--

CREATE TABLE `cache_tags` (
  `id` varchar(165) NOT NULL DEFAULT '',
  `tag` varchar(165) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

--
-- Dumping data for table `cache_tags`
--

INSERT INTO `cache_tags` (`id`, `tag`) VALUES
('system_route_redirect', 'redirect'),
('system_route_redirect', 'route'),
('system_route_redirect', 'system');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` varchar(50) NOT NULL,
  `name` varchar(190) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `name`) VALUES
('1', 'content');

-- --------------------------------------------------------

--
-- Table structure for table `classificationstore_collectionrelations`
--

CREATE TABLE `classificationstore_collectionrelations` (
  `colId` int(11) UNSIGNED NOT NULL,
  `groupId` int(11) UNSIGNED NOT NULL,
  `sorter` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `classificationstore_collections`
--

CREATE TABLE `classificationstore_collections` (
  `id` int(11) UNSIGNED NOT NULL,
  `storeId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `creationDate` int(11) UNSIGNED DEFAULT '0',
  `modificationDate` int(11) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `classificationstore_groups`
--

CREATE TABLE `classificationstore_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `storeId` int(11) DEFAULT NULL,
  `parentId` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(190) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `creationDate` int(11) UNSIGNED DEFAULT '0',
  `modificationDate` int(11) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `classificationstore_keys`
--

CREATE TABLE `classificationstore_keys` (
  `id` int(11) UNSIGNED NOT NULL,
  `storeId` int(11) DEFAULT NULL,
  `name` varchar(190) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `type` varchar(190) DEFAULT NULL,
  `creationDate` int(11) UNSIGNED DEFAULT '0',
  `modificationDate` int(11) UNSIGNED DEFAULT '0',
  `definition` longtext,
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `classificationstore_relations`
--

CREATE TABLE `classificationstore_relations` (
  `groupId` int(11) UNSIGNED NOT NULL,
  `keyId` int(11) UNSIGNED NOT NULL,
  `sorter` int(11) DEFAULT NULL,
  `mandatory` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `classificationstore_stores`
--

CREATE TABLE `classificationstore_stores` (
  `id` int(11) NOT NULL,
  `name` varchar(190) DEFAULT NULL,
  `description` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `custom_layouts`
--

CREATE TABLE `custom_layouts` (
  `id` varchar(64) NOT NULL,
  `classId` varchar(50) NOT NULL,
  `name` varchar(190) DEFAULT NULL,
  `description` text,
  `creationDate` int(11) UNSIGNED DEFAULT NULL,
  `modificationDate` int(11) UNSIGNED DEFAULT NULL,
  `userOwner` int(11) UNSIGNED DEFAULT NULL,
  `userModification` int(11) UNSIGNED DEFAULT NULL,
  `default` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dependencies`
--

CREATE TABLE `dependencies` (
  `sourcetype` enum('document','asset','object') NOT NULL DEFAULT 'document',
  `sourceid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `targettype` enum('document','asset','object') NOT NULL DEFAULT 'document',
  `targetid` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dependencies`
--

INSERT INTO `dependencies` (`sourcetype`, `sourceid`, `targettype`, `targetid`) VALUES
('object', 5, 'asset', 6),
('object', 7, 'asset', 13),
('object', 7, 'asset', 16),
('object', 8, 'asset', 9),
('object', 8, 'asset', 17),
('object', 9, 'asset', 11),
('object', 9, 'asset', 12),
('object', 10, 'asset', 18),
('object', 10, 'asset', 19),
('object', 10, 'asset', 20),
('object', 10, 'asset', 21);

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(11) UNSIGNED NOT NULL,
  `parentId` int(11) UNSIGNED DEFAULT NULL,
  `type` enum('page','link','snippet','folder','hardlink','email','newsletter','printpage','printcontainer') DEFAULT NULL,
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `path` varchar(765) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `index` int(11) UNSIGNED DEFAULT '0',
  `published` tinyint(1) UNSIGNED DEFAULT '1',
  `creationDate` int(11) UNSIGNED DEFAULT NULL,
  `modificationDate` int(11) UNSIGNED DEFAULT NULL,
  `userOwner` int(11) UNSIGNED DEFAULT NULL,
  `userModification` int(11) UNSIGNED DEFAULT NULL,
  `versionCount` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `parentId`, `type`, `key`, `path`, `index`, `published`, `creationDate`, `modificationDate`, `userOwner`, `userModification`, `versionCount`) VALUES
(1, 0, 'page', '', '/', 999999, 1, 1584464703, 1584464703, 1, 1, 0),
(6, 1, 'page', 'News-List-Page', '/', 1, 1, 1584470139, 1584472129, 2, 2, 8),
(8, 1, 'page', 'News-Detail-Page', '/', 2, 1, 1584479618, 1584479643, 2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `documents_elements`
--

CREATE TABLE `documents_elements` (
  `documentId` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(750) CHARACTER SET ascii NOT NULL DEFAULT '',
  `type` varchar(50) DEFAULT NULL,
  `data` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `documents_elements`
--

INSERT INTO `documents_elements` (`documentId`, `name`, `type`, `data`) VALUES
(6, 'content', 'relation', 'a:3:{s:2:\"id\";N;s:4:\"type\";N;s:7:\"subtype\";N;}'),
(6, 'headline', 'input', '');

-- --------------------------------------------------------

--
-- Table structure for table `documents_email`
--

CREATE TABLE `documents_email` (
  `id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `module` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `from` varchar(255) DEFAULT NULL,
  `replyTo` varchar(255) DEFAULT NULL,
  `cc` varchar(255) DEFAULT NULL,
  `bcc` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `missingRequiredEditable` tinyint(1) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `documents_hardlink`
--

CREATE TABLE `documents_hardlink` (
  `id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `sourceId` int(11) DEFAULT NULL,
  `propertiesFromSource` tinyint(1) DEFAULT NULL,
  `childrenFromSource` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `documents_link`
--

CREATE TABLE `documents_link` (
  `id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `internalType` enum('document','asset','object') DEFAULT NULL,
  `internal` int(11) UNSIGNED DEFAULT NULL,
  `direct` varchar(1000) DEFAULT NULL,
  `linktype` enum('direct','internal') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `documents_newsletter`
--

CREATE TABLE `documents_newsletter` (
  `id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `module` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `from` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `trackingParameterSource` varchar(255) DEFAULT NULL,
  `trackingParameterMedium` varchar(255) DEFAULT NULL,
  `trackingParameterName` varchar(255) DEFAULT NULL,
  `enableTrackingParameters` tinyint(1) UNSIGNED DEFAULT NULL,
  `sendingMode` varchar(20) DEFAULT NULL,
  `plaintext` longtext,
  `missingRequiredEditable` tinyint(1) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `documents_page`
--

CREATE TABLE `documents_page` (
  `id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `module` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(383) DEFAULT NULL,
  `metaData` text,
  `prettyUrl` varchar(190) DEFAULT NULL,
  `contentMasterDocumentId` int(11) DEFAULT NULL,
  `targetGroupIds` varchar(255) DEFAULT NULL,
  `missingRequiredEditable` tinyint(1) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `documents_page`
--

INSERT INTO `documents_page` (`id`, `module`, `controller`, `action`, `template`, `title`, `description`, `metaData`, `prettyUrl`, `contentMasterDocumentId`, `targetGroupIds`, `missingRequiredEditable`) VALUES
(1, NULL, 'default', 'default', '', '', '', NULL, NULL, NULL, NULL, NULL),
(6, 'AppBundle', '@AppBundle\\Controller\\ContentController', 'content', NULL, 'News-List-Page', '', 'a:0:{}', NULL, NULL, '', NULL),
(8, 'AppBundle', '@AppBundle\\Controller\\ContentController', 'detail', NULL, 'News-Detail-Page', '', 'a:0:{}', NULL, NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `documents_printpage`
--

CREATE TABLE `documents_printpage` (
  `id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `module` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `lastGenerated` int(11) DEFAULT NULL,
  `lastGenerateMessage` text,
  `contentMasterDocumentId` int(11) DEFAULT NULL,
  `missingRequiredEditable` tinyint(1) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `documents_snippet`
--

CREATE TABLE `documents_snippet` (
  `id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `module` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `contentMasterDocumentId` int(11) DEFAULT NULL,
  `missingRequiredEditable` tinyint(1) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `documents_translations`
--

CREATE TABLE `documents_translations` (
  `id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `sourceId` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `language` varchar(10) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `edit_lock`
--

CREATE TABLE `edit_lock` (
  `id` int(11) NOT NULL,
  `cid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `ctype` enum('document','asset','object') DEFAULT NULL,
  `userId` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `sessionId` varchar(255) DEFAULT NULL,
  `date` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `edit_lock`
--

INSERT INTO `edit_lock` (`id`, `cid`, `ctype`, `userId`, `sessionId`, `date`) VALUES
(56, 6, 'document', 2, 'da9fd4d5adpj29ou0k1mirgo9c', 1584492020);

-- --------------------------------------------------------

--
-- Table structure for table `element_workflow_state`
--

CREATE TABLE `element_workflow_state` (
  `cid` int(10) NOT NULL DEFAULT '0',
  `ctype` enum('document','asset','object') NOT NULL,
  `place` varchar(255) DEFAULT NULL,
  `workflow` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `email_blacklist`
--

CREATE TABLE `email_blacklist` (
  `address` varchar(190) NOT NULL DEFAULT '',
  `creationDate` int(11) UNSIGNED DEFAULT NULL,
  `modificationDate` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `email_log`
--

CREATE TABLE `email_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `documentId` int(11) DEFAULT NULL,
  `requestUri` varchar(500) DEFAULT NULL,
  `params` text,
  `from` varchar(500) DEFAULT NULL,
  `replyTo` varchar(255) DEFAULT NULL,
  `to` longtext,
  `cc` longtext,
  `bcc` longtext,
  `sentDate` int(11) UNSIGNED DEFAULT NULL,
  `subject` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `glossary`
--

CREATE TABLE `glossary` (
  `id` int(11) UNSIGNED NOT NULL,
  `language` varchar(10) DEFAULT NULL,
  `casesensitive` tinyint(1) DEFAULT NULL,
  `exactmatch` tinyint(1) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `abbr` varchar(255) DEFAULT NULL,
  `acronym` varchar(255) DEFAULT NULL,
  `site` int(11) UNSIGNED DEFAULT NULL,
  `creationDate` int(11) UNSIGNED DEFAULT '0',
  `modificationDate` int(11) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `gridconfigs`
--

CREATE TABLE `gridconfigs` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) DEFAULT NULL,
  `classId` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `searchType` varchar(50) DEFAULT NULL,
  `type` enum('asset','object') NOT NULL DEFAULT 'object',
  `config` longtext,
  `description` longtext,
  `creationDate` int(11) DEFAULT NULL,
  `modificationDate` int(11) DEFAULT NULL,
  `shareGlobally` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `gridconfig_favourites`
--

CREATE TABLE `gridconfig_favourites` (
  `ownerId` int(11) NOT NULL,
  `classId` varchar(50) NOT NULL,
  `objectId` int(11) NOT NULL DEFAULT '0',
  `gridConfigId` int(11) DEFAULT NULL,
  `searchType` varchar(50) NOT NULL DEFAULT '',
  `type` enum('asset','object') NOT NULL DEFAULT 'object'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `gridconfig_shares`
--

CREATE TABLE `gridconfig_shares` (
  `gridConfigId` int(11) NOT NULL,
  `sharedWithUserId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `http_error_log`
--

CREATE TABLE `http_error_log` (
  `id` int(11) UNSIGNED NOT NULL,
  `uri` varchar(3000) CHARACTER SET ascii DEFAULT NULL,
  `code` int(3) DEFAULT NULL,
  `parametersGet` longtext,
  `parametersPost` longtext,
  `cookies` longtext,
  `serverVars` longtext,
  `date` int(11) UNSIGNED DEFAULT NULL,
  `count` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `importconfigs`
--

CREATE TABLE `importconfigs` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) DEFAULT NULL,
  `classId` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `config` longtext,
  `description` longtext,
  `creationDate` int(11) DEFAULT NULL,
  `modificationDate` int(11) DEFAULT NULL,
  `shareGlobally` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `importconfig_shares`
--

CREATE TABLE `importconfig_shares` (
  `importConfigId` int(11) NOT NULL,
  `sharedWithUserId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `locks`
--

CREATE TABLE `locks` (
  `id` varchar(150) NOT NULL DEFAULT '',
  `date` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `ctype` enum('asset','document','object') DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `notes_data`
--

CREATE TABLE `notes_data` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `type` enum('text','date','document','asset','object','bool') DEFAULT NULL,
  `data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'info',
  `title` varchar(250) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `sender` int(11) DEFAULT NULL,
  `recipient` int(11) NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modificationDate` timestamp NULL DEFAULT NULL,
  `linkedElementType` enum('document','asset','object') DEFAULT NULL,
  `linkedElement` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `objects`
--

CREATE TABLE `objects` (
  `o_id` int(11) UNSIGNED NOT NULL,
  `o_parentId` int(11) UNSIGNED DEFAULT NULL,
  `o_type` enum('object','folder','variant') DEFAULT NULL,
  `o_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `o_path` varchar(765) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `o_index` int(11) UNSIGNED DEFAULT '0',
  `o_published` tinyint(1) UNSIGNED DEFAULT '1',
  `o_creationDate` int(11) UNSIGNED DEFAULT NULL,
  `o_modificationDate` int(11) UNSIGNED DEFAULT NULL,
  `o_userOwner` int(11) UNSIGNED DEFAULT NULL,
  `o_userModification` int(11) UNSIGNED DEFAULT NULL,
  `o_classId` varchar(50) DEFAULT NULL,
  `o_className` varchar(255) DEFAULT NULL,
  `o_childrenSortBy` enum('key','index') DEFAULT NULL,
  `o_versionCount` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `objects`
--

INSERT INTO `objects` (`o_id`, `o_parentId`, `o_type`, `o_key`, `o_path`, `o_index`, `o_published`, `o_creationDate`, `o_modificationDate`, `o_userOwner`, `o_userModification`, `o_classId`, `o_className`, `o_childrenSortBy`, `o_versionCount`) VALUES
(1, 0, 'folder', '', '/', 999999, 1, 1584464704, 1584464704, 1, 1, NULL, NULL, NULL, 0),
(2, 1, 'folder', 'MyNews', '/', NULL, 1, 1584466237, 1584466237, 2, 2, NULL, NULL, NULL, 2),
(7, 2, 'object', 'avalin khabar', '/MyNews/', 0, 1, 1584469396, 1584479023, 2, 2, '1', 'content', NULL, 6),
(8, 2, 'object', 'newdsa', '/MyNews/', 0, 1, 1584469608, 1584479036, 2, 2, '1', 'content', NULL, 6),
(9, 2, 'object', 'labore et dolore magna aliqua', '/MyNews/', 0, 1, 1584478869, 1584478941, 2, 2, '1', 'content', NULL, 5),
(10, 2, 'object', 'rhoncus aenean', '/MyNews/', 0, 1, 1584479054, 1584479108, 2, 2, '1', 'content', NULL, 2);

-- --------------------------------------------------------

--
-- Stand-in structure for view `object_1`
-- (See below for the actual view)
--
CREATE TABLE `object_1` (
`oo_id` int(11)
,`oo_classId` varchar(50)
,`oo_className` varchar(255)
,`title` varchar(190)
,`teaser` longtext
,`text` longtext
,`image` int(11)
,`gallery__images` text
,`gallery__hotspots` text
,`relation__id` int(11)
,`relation__type` enum('document','asset','object')
,`o_id` int(11) unsigned
,`o_parentId` int(11) unsigned
,`o_type` enum('object','folder','variant')
,`o_key` varchar(255)
,`o_path` varchar(765)
,`o_index` int(11) unsigned
,`o_published` tinyint(1) unsigned
,`o_creationDate` int(11) unsigned
,`o_modificationDate` int(11) unsigned
,`o_userOwner` int(11) unsigned
,`o_userModification` int(11) unsigned
,`o_classId` varchar(50)
,`o_className` varchar(255)
,`o_childrenSortBy` enum('key','index')
,`o_versionCount` int(10) unsigned
);

-- --------------------------------------------------------

--
-- Table structure for table `object_query_1`
--

CREATE TABLE `object_query_1` (
  `oo_id` int(11) NOT NULL DEFAULT '0',
  `oo_classId` varchar(50) DEFAULT '1',
  `oo_className` varchar(255) DEFAULT 'content',
  `title` varchar(190) DEFAULT NULL,
  `teaser` longtext,
  `text` longtext,
  `image` int(11) DEFAULT NULL,
  `gallery__images` text,
  `gallery__hotspots` text,
  `relation__id` int(11) DEFAULT NULL,
  `relation__type` enum('document','asset','object') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `object_query_1`
--

INSERT INTO `object_query_1` (`oo_id`, `oo_classId`, `oo_className`, `title`, `teaser`, `text`, `image`, `gallery__images`, `gallery__hotspots`, `relation__id`, `relation__type`) VALUES
(7, '1', 'content', 'labore et dolore magna aliqua ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Egestas purus viverra accumsan in nisl nisi Arcu cursus vitae congue mauris rhoncus aenean ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Egestas purus viverra accumsan in nisl nisi Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque In egestas erat imperdiet sed euismod nisi porta lorem mollis Morbi tristique senectus et netus Mattis pellentesque id nibh tortor id aliquet lectus proin Sapien faucibus et molestie ac feugiat sed lectus vestibulum ', 13, ',16,', 'a:1:{i:0;s:63:\"a:3:{s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}s:4:\"crop\";a:0:{}}\";}', NULL, NULL),
(8, '1', 'content', 'eiusmod tempor incididunt ut ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Egestas purus viverra accumsan in nisl nisi Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque In egestas erat imperdiet sed euismod nisi porta lorem mollis Morbi tristique senectus et netus Mattis pellentesque id nibh tortor id aliquet lectus proin Sapien faucibus et molestie ac feugiat sed lectus vestibulum Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget Dictum varius duis at consectetur lorem Nisi vitae suscipit tellus mauris a diam maecenas sed enim Velit ut tortor pretium viverra suspendisse potenti nullam Et molestie ac feugiat sed lectus Non nisi est sit amet facilisis magna Dignissim diam quis enim lobortis scelerisque fermentum Odi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Egestas purus viverra accumsan in nisl nisi Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque In egestas erat imperdiet sed euismod nisi porta lorem mollis Morbi tristique senectus et netus Mattis pellentesque id nibh tortor id aliquet lectus proin Sapien faucibus et molestie ac feugiat sed lectus vestibulum Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget Dictum varius duis at consectetur lorem Nisi vitae suscipit tellus mauris a diam maecenas sed enim Velit ut tortor pretium viverra suspendisse potenti nullam Et molestie ac feugiat sed lectus Non nisi est sit amet facilisis magna Dignissim diam quis enim lobortis scelerisque fermentum Odio ut enim blandit volutpat maecenas volutpat Ornare lectus sit amet est placerat in egestas erat Nisi vitae suscipit tellus mauris a diam maecenas sed Placerat duis ultricies lacus sed turpis tincidunt id aliquet Placerat duis ultricies lacus sed turpis tincidunt id aliquet Placerat duis ultricies lacus sed turpis tincidunt id aliquet Placerat duis ultricies lacus sed turpis tincidunt id aliquet ', 9, ',17,', 'a:1:{i:0;s:63:\"a:3:{s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}s:4:\"crop\";a:0:{}}\";}', NULL, NULL),
(9, '1', 'content', 'sl nisi Arcu cursus vitae ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Egestas purus viverra accumsan in nisl nisi Arcu cursus vitae congue mauris rhoncus aenean apien faucibus et molestie ac feugiat sed lectus vestibulum ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Egestas purus viverra accumsan in nisl nisi Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque In egestas erat imperdiet sed euismod nisi porta lorem mollis Morbi tristique senectus et netus Mattis pellentesque id nibh tortor id aliquet lectus proin Sapien faucibus et molestie ac feugiat sed lectus vestibulum Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget Dictum varius duis at consectetur lorem Nisi vitae suscipit tellus mauris a diam maecenas sed enim Velit ut tortor pretium viverra suspendisse potenti nullam Et molestie ac feugiat sed lectus Non nisi est sit amet facilisis magna Dignissim diam quis enim lobortis scelerisque fermentum Odio ut enim blandit volutpat maecenas volutpat Ornare lectus sit amet est placerat in egestas erat Nisi vitae suscipit tellus mauris a diam maecenas sed Placerat duis ultricies lacus sed turpis tincidunt id aliquet Placerat duis ultricies lacus sed turpis tincidunt id aliquet Placerat duis ultricies lacus sed turpis tincidunt id aliquet Placerat duis ultricies lacus sed turpis tincidunt id aliquet Placerat duis ultricies lacus sed turpis tincidunt id aliquet ', 12, ',11,', 'a:1:{i:0;s:63:\"a:3:{s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}s:4:\"crop\";a:0:{}}\";}', NULL, NULL),
(10, '1', 'content', ' rhoncus aenean ', 'aucibus et molestie ac feugiat sed lectus vestibulum Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget Dictum varius duis at consectetur lorem Nisi vitae suscipit tellus mauris a diam maecenas sed enim Velit ut tortor pretium viverra suspendisse potenti nullam Et molestie ac feugiat sed lectus Non nisi est sit amet facilisis magna Dignissim diam quis enim lobortis sc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Egestas purus viverra accumsan in nisl nisi Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque In egestas erat imperdiet sed euismod nisi porta lorem mollis Morbi tristique senectus et netus Mattis pellentesque id nibh tortor id aliquet lectus proin Sapien faucibus et molestie ac feugiat sed lectus vestibulum Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget Dictum varius duis at consectetur lorem Nisi vitae suscipit tellus mauris a diam maecenas sed enim Velit ut tortor pretium viverra suspendisse potenti nullam Et molestie ac feugiat sed lectus Non nisi est sit amet facilisis magna Dignissim diam quis enim lobortis scelerisque fermentum Odio ut enim blandit volutpat maecenas volutpat Ornare lectus sit amet est placerat in egestas erat Nisi vitae suscipit tellus mauris a diam maecenas sed Placerat duis ultricies lacus sed turpis tincidunt id aliquet Placerat duis ultricies lacus sed turpis tincidunt id aliquet Placerat duis ultricies lacus sed turpis tincidunt id aliquet Placerat duis ultricies lacus sed turpis tincidunt id aliquet Placerat duis ultricies lacus sed turpis tincidunt id aliquet ', 18, ',19,20,21,', 'a:3:{i:0;s:63:\"a:3:{s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}s:4:\"crop\";a:0:{}}\";i:1;s:63:\"a:3:{s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}s:4:\"crop\";a:0:{}}\";i:2;s:63:\"a:3:{s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}s:4:\"crop\";a:0:{}}\";}', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `object_relations_1`
--

CREATE TABLE `object_relations_1` (
  `src_id` int(11) NOT NULL DEFAULT '0',
  `dest_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT '',
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `object_store_1`
--

CREATE TABLE `object_store_1` (
  `oo_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(190) DEFAULT NULL,
  `teaser` longtext,
  `text` longtext,
  `image` int(11) DEFAULT NULL,
  `gallery__images` text,
  `gallery__hotspots` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `object_store_1`
--

INSERT INTO `object_store_1` (`oo_id`, `title`, `teaser`, `text`, `image`, `gallery__images`, `gallery__hotspots`) VALUES
(7, 'labore et dolore magna aliqua ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Egestas purus viverra accumsan in nisl nisi Arcu cursus vitae congue mauris rhoncus aenean ', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Egestas purus viverra accumsan in nisl nisi Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque In egestas erat imperdiet sed euismod nisi porta lorem mollis Morbi tristique senectus et netus Mattis pellentesque id nibh tortor id aliquet lectus proin Sapien faucibus et molestie ac feugiat sed lectus vestibulum</p>\n', 13, ',16,', 'a:1:{i:0;s:63:\"a:3:{s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}s:4:\"crop\";a:0:{}}\";}'),
(8, 'eiusmod tempor incididunt ut ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Egestas purus viverra accumsan in nisl nisi Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque In egestas erat imperdiet sed euismod nisi porta lorem mollis Morbi tristique senectus et netus Mattis pellentesque id nibh tortor id aliquet lectus proin Sapien faucibus et molestie ac feugiat sed lectus vestibulum Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget Dictum varius duis at consectetur lorem Nisi vitae suscipit tellus mauris a diam maecenas sed enim Velit ut tortor pretium viverra suspendisse potenti nullam Et molestie ac feugiat sed lectus Non nisi est sit amet facilisis magna Dignissim diam quis enim lobortis scelerisque fermentum Odi', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Egestas purus viverra accumsan in nisl nisi Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque In egestas erat imperdiet sed euismod nisi porta lorem mollis Morbi tristique senectus et netus Mattis pellentesque id nibh tortor id aliquet lectus proin Sapien faucibus et molestie ac feugiat sed lectus vestibulum Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget Dictum varius duis at consectetur lorem Nisi vitae suscipit tellus mauris a diam maecenas sed enim Velit ut tortor pretium viverra suspendisse potenti nullam Et molestie ac feugiat sed lectus Non nisi est sit amet facilisis magna Dignissim diam quis enim lobortis scelerisque fermentum Odio ut enim blandit volutpat maecenas volutpat Ornare lectus sit amet est placerat in egestas erat Nisi vitae suscipit tellus mauris a diam maecenas sed Placerat duis ultricies lacus sed turpis tincidunt id aliquet Placerat duis ultricies lacus sed turpis tincidunt id aliquet Placerat duis ultricies lacus sed turpis tincidunt id aliquet Placerat duis ultricies lacus sed turpis tincidunt id aliquet</p>\n', 9, ',17,', 'a:1:{i:0;s:63:\"a:3:{s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}s:4:\"crop\";a:0:{}}\";}'),
(9, 'sl nisi Arcu cursus vitae ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Egestas purus viverra accumsan in nisl nisi Arcu cursus vitae congue mauris rhoncus aenean apien faucibus et molestie ac feugiat sed lectus vestibulum ', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Egestas purus viverra accumsan in nisl nisi Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque In egestas erat imperdiet sed euismod nisi porta lorem mollis Morbi tristique senectus et netus Mattis pellentesque id nibh tortor id aliquet lectus proin Sapien faucibus et molestie ac feugiat sed lectus vestibulum Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget Dictum varius duis at consectetur lorem Nisi vitae suscipit tellus mauris a diam maecenas sed enim Velit ut tortor pretium viverra suspendisse potenti nullam Et molestie ac feugiat sed lectus Non nisi est sit amet facilisis magna Dignissim diam quis enim lobortis scelerisque fermentum Odio ut enim blandit volutpat maecenas volutpat Ornare lectus sit amet est placerat in egestas erat Nisi vitae suscipit tellus mauris a diam maecenas sed Placerat duis ultricies lacus sed turpis tincidunt id aliquet Placerat duis ultricies lacus sed turpis tincidunt id aliquet Placerat duis ultricies lacus sed turpis tincidunt id aliquet Placerat duis ultricies lacus sed turpis tincidunt id aliquet Placerat duis ultricies lacus sed turpis tincidunt id aliquet</p>\n', 12, ',11,', 'a:1:{i:0;s:63:\"a:3:{s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}s:4:\"crop\";a:0:{}}\";}'),
(10, ' rhoncus aenean ', 'aucibus et molestie ac feugiat sed lectus vestibulum Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget Dictum varius duis at consectetur lorem Nisi vitae suscipit tellus mauris a diam maecenas sed enim Velit ut tortor pretium viverra suspendisse potenti nullam Et molestie ac feugiat sed lectus Non nisi est sit amet facilisis magna Dignissim diam quis enim lobortis sc', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Egestas purus viverra accumsan in nisl nisi Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque In egestas erat imperdiet sed euismod nisi porta lorem mollis Morbi tristique senectus et netus Mattis pellentesque id nibh tortor id aliquet lectus proin Sapien faucibus et molestie ac feugiat sed lectus vestibulum Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget Dictum varius duis at consectetur lorem Nisi vitae suscipit tellus mauris a diam maecenas sed enim Velit ut tortor pretium viverra suspendisse potenti nullam Et molestie ac feugiat sed lectus Non nisi est sit amet facilisis magna Dignissim diam quis enim lobortis scelerisque fermentum Odio ut enim blandit volutpat maecenas volutpat Ornare lectus sit amet est placerat in egestas erat Nisi vitae suscipit tellus mauris a diam maecenas sed Placerat duis ultricies lacus sed turpis tincidunt id aliquet Placerat duis ultricies lacus sed turpis tincidunt id aliquet Placerat duis ultricies lacus sed turpis tincidunt id aliquet Placerat duis ultricies lacus sed turpis tincidunt id aliquet Placerat duis ultricies lacus sed turpis tincidunt id aliquet</p>\n', 18, ',19,20,21,', 'a:3:{i:0;s:63:\"a:3:{s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}s:4:\"crop\";a:0:{}}\";i:1;s:63:\"a:3:{s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}s:4:\"crop\";a:0:{}}\";i:2;s:63:\"a:3:{s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}s:4:\"crop\";a:0:{}}\";}');

-- --------------------------------------------------------

--
-- Table structure for table `object_url_slugs`
--

CREATE TABLE `object_url_slugs` (
  `objectId` int(11) NOT NULL DEFAULT '0',
  `classId` varchar(50) NOT NULL DEFAULT '0',
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
  `slug` varchar(765) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `siteId` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `pimcore_migrations`
--

CREATE TABLE `pimcore_migrations` (
  `migration_set` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `migrated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pimcore_migrations`
--

INSERT INTO `pimcore_migrations` (`migration_set`, `version`, `migrated_at`) VALUES
('pimcore_core', '20180724144005', '2020-03-17 17:06:17'),
('pimcore_core', '20180830113528', '2020-03-17 17:06:17'),
('pimcore_core', '20180830122128', '2020-03-17 17:06:17'),
('pimcore_core', '20180904201947', '2020-03-17 17:06:17'),
('pimcore_core', '20180906142115', '2020-03-17 17:06:17'),
('pimcore_core', '20180907115436', '2020-03-17 17:06:18'),
('pimcore_core', '20180912140913', '2020-03-17 17:06:18'),
('pimcore_core', '20180913132106', '2020-03-17 17:06:18'),
('pimcore_core', '20180924111736', '2020-03-17 17:06:18'),
('pimcore_core', '20181008132414', '2020-03-17 17:06:18'),
('pimcore_core', '20181009135158', '2020-03-17 17:06:18'),
('pimcore_core', '20181115114003', '2020-03-17 17:06:18'),
('pimcore_core', '20181126094412', '2020-03-17 17:06:18'),
('pimcore_core', '20181126144341', '2020-03-17 17:06:18'),
('pimcore_core', '20181128074035', '2020-03-17 17:06:18'),
('pimcore_core', '20181128112320', '2020-03-17 17:06:18'),
('pimcore_core', '20181214145532', '2020-03-17 17:06:18'),
('pimcore_core', '20190102143436', '2020-03-17 17:06:19'),
('pimcore_core', '20190102153226', '2020-03-17 17:06:19'),
('pimcore_core', '20190108131401', '2020-03-17 17:06:19'),
('pimcore_core', '20190124105627', '2020-03-17 17:06:19'),
('pimcore_core', '20190131074054', '2020-03-17 17:06:19'),
('pimcore_core', '20190131095936', '2020-03-17 17:06:19'),
('pimcore_core', '20190320133439', '2020-03-17 17:06:19'),
('pimcore_core', '20190402073052', '2020-03-17 17:06:19'),
('pimcore_core', '20190403120728', '2020-03-17 17:06:19'),
('pimcore_core', '20190405112707', '2020-03-17 17:06:19'),
('pimcore_core', '20190408084129', '2020-03-17 17:06:19'),
('pimcore_core', '20190508074339', '2020-03-17 17:06:19'),
('pimcore_core', '20190515130651', '2020-03-17 17:06:19'),
('pimcore_core', '20190520151448', '2020-03-17 17:06:19'),
('pimcore_core', '20190522130545', '2020-03-17 17:06:20'),
('pimcore_core', '20190527121800', '2020-03-17 17:06:20'),
('pimcore_core', '20190618154000', '2020-03-17 17:06:20'),
('pimcore_core', '20190701141857', '2020-03-17 17:06:20'),
('pimcore_core', '20190708175236', '2020-03-17 17:06:20'),
('pimcore_core', '20190729085052', '2020-03-17 17:06:20'),
('pimcore_core', '20190802090149', '2020-03-17 17:06:20'),
('pimcore_core', '20190806160450', '2020-03-17 17:06:20'),
('pimcore_core', '20190807121356', '2020-03-17 17:06:20'),
('pimcore_core', '20190828142756', '2020-03-17 17:06:20'),
('pimcore_core', '20190902085052', '2020-03-17 17:06:20'),
('pimcore_core', '20190904154339', '2020-03-17 17:06:20'),
('pimcore_core', '20191015131700', '2020-03-17 17:06:20'),
('pimcore_core', '20191107141816', '2020-03-17 17:06:20'),
('pimcore_core', '20191114123638', '2020-03-17 17:06:20'),
('pimcore_core', '20191114132014', '2020-03-17 17:06:20'),
('pimcore_core', '20191121150326', '2020-03-17 17:06:20'),
('pimcore_core', '20191125135853', '2020-03-17 17:06:20'),
('pimcore_core', '20191125200416', '2020-03-17 17:06:20'),
('pimcore_core', '20191126130004', '2020-03-17 17:06:20'),
('pimcore_core', '20191208175348', '2020-03-17 17:06:20'),
('pimcore_core', '20191213115045', '2020-03-17 17:06:20'),
('pimcore_core', '20191218073528', '2020-03-17 17:06:20'),
('pimcore_core', '20191230103524', '2020-03-17 17:06:21'),
('pimcore_core', '20191230104529', '2020-03-17 17:06:21'),
('pimcore_core', '20200113120101', '2020-03-17 17:06:21'),
('pimcore_core', '20200116181758', '2020-03-17 17:06:21'),
('pimcore_core', '20200121095650', '2020-03-17 17:06:21'),
('pimcore_core', '20200121131304', '2020-03-17 17:06:21'),
('pimcore_core', '20200127102432', '2020-03-17 17:06:21'),
('pimcore_core', '20200129102132', '2020-03-17 17:06:21'),
('pimcore_core', '20200210101048', '2020-03-17 17:06:21'),
('pimcore_core', '20200210164037', '2020-03-17 17:06:21'),
('pimcore_core', '20200211115044', '2020-03-17 17:06:21'),
('pimcore_core', '20200212130011', '2020-03-17 17:06:21'),
('pimcore_core', '20200218104052', '2020-03-17 17:06:21');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `cid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `ctype` enum('document','asset','object') NOT NULL DEFAULT 'document',
  `cpath` varchar(765) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(190) NOT NULL DEFAULT '',
  `type` enum('text','document','asset','object','bool','select') DEFAULT NULL,
  `data` text,
  `inheritable` tinyint(1) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`cid`, `ctype`, `cpath`, `name`, `type`, `data`, `inheritable`) VALUES
(6, 'document', '/News-List-Page', 'navigation_accesskey', 'text', '', 0),
(6, 'document', '/News-List-Page', 'navigation_anchor', 'text', '', 0),
(6, 'document', '/News-List-Page', 'navigation_class', 'text', '', 0),
(6, 'document', '/News-List-Page', 'navigation_exclude', 'bool', '', 0),
(6, 'document', '/News-List-Page', 'navigation_name', 'text', 'News-List-Page', 0),
(6, 'document', '/News-List-Page', 'navigation_parameters', 'text', '', 0),
(6, 'document', '/News-List-Page', 'navigation_relation', 'text', '', 0),
(6, 'document', '/News-List-Page', 'navigation_tabindex', 'text', '', 0),
(6, 'document', '/News-List-Page', 'navigation_target', 'text', NULL, 0),
(6, 'document', '/News-List-Page', 'navigation_title', 'text', '', 0),
(8, 'document', '/News-Detail-Page', 'navigation_name', 'text', 'News-Detail-Page', 0);

-- --------------------------------------------------------

--
-- Table structure for table `quantityvalue_units`
--

CREATE TABLE `quantityvalue_units` (
  `id` int(11) UNSIGNED NOT NULL,
  `group` varchar(50) DEFAULT NULL,
  `abbreviation` varchar(20) NOT NULL,
  `longname` varchar(250) DEFAULT NULL,
  `baseunit` int(11) UNSIGNED DEFAULT NULL,
  `factor` double DEFAULT NULL,
  `conversionOffset` double DEFAULT NULL,
  `reference` varchar(50) DEFAULT NULL,
  `converter` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `recyclebin`
--

CREATE TABLE `recyclebin` (
  `id` int(11) NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `subtype` varchar(20) DEFAULT NULL,
  `path` varchar(765) DEFAULT NULL,
  `amount` int(3) DEFAULT NULL,
  `date` int(11) UNSIGNED DEFAULT NULL,
  `deletedby` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recyclebin`
--

INSERT INTO `recyclebin` (`id`, `type`, `subtype`, `path`, `amount`, `date`, `deletedby`) VALUES
(1, 'document', 'page', '/product', 1, 1584468980, 'admin'),
(2, 'document', 'page', '/News-List-Page', 1, 1584468992, 'admin'),
(3, 'object', 'folder', '/products', 1, 1584469031, 'admin'),
(4, 'document', 'page', '/News-List-Page', 1, 1584469233, 'admin'),
(5, 'object', 'object', '/MyNews/First News', 1, 1584469243, 'admin'),
(6, 'object', 'object', '/MyNews/khabar dovvom', 1, 1584469251, 'admin'),
(7, 'document', 'page', '/News-List-Page', 1, 1584470118, 'admin'),
(8, 'document', 'page', '/News-List-Page/News-Detail-Page', 1, 1584479476, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `redirects`
--

CREATE TABLE `redirects` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` enum('entire_uri','path_query','path','auto_create') NOT NULL,
  `source` varchar(255) DEFAULT NULL,
  `sourceSite` int(11) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `targetSite` int(11) DEFAULT NULL,
  `statusCode` varchar(3) DEFAULT NULL,
  `priority` int(2) DEFAULT '0',
  `regex` tinyint(1) DEFAULT NULL,
  `passThroughParameters` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `expiry` int(11) UNSIGNED DEFAULT NULL,
  `creationDate` int(11) UNSIGNED DEFAULT '0',
  `modificationDate` int(11) UNSIGNED DEFAULT '0',
  `userOwner` int(11) UNSIGNED DEFAULT NULL,
  `userModification` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `sanitycheck`
--

CREATE TABLE `sanitycheck` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` enum('document','asset','object') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `schedule_tasks`
--

CREATE TABLE `schedule_tasks` (
  `id` int(11) UNSIGNED NOT NULL,
  `cid` int(11) UNSIGNED DEFAULT NULL,
  `ctype` enum('document','asset','object') DEFAULT NULL,
  `date` int(11) UNSIGNED DEFAULT NULL,
  `action` enum('publish','unpublish','delete','publish-version') DEFAULT NULL,
  `version` bigint(20) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT '0',
  `userId` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `search_backend_data`
--

CREATE TABLE `search_backend_data` (
  `id` int(11) NOT NULL,
  `fullpath` varchar(765) CHARACTER SET utf8 DEFAULT NULL,
  `maintype` varchar(8) NOT NULL DEFAULT '',
  `type` varchar(20) DEFAULT NULL,
  `subtype` varchar(190) DEFAULT NULL,
  `published` int(11) UNSIGNED DEFAULT NULL,
  `creationDate` int(11) UNSIGNED DEFAULT NULL,
  `modificationDate` int(11) UNSIGNED DEFAULT NULL,
  `userOwner` int(11) DEFAULT NULL,
  `userModification` int(11) DEFAULT NULL,
  `data` longtext,
  `properties` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `search_backend_data`
--

INSERT INTO `search_backend_data` (`id`, `fullpath`, `maintype`, `type`, `subtype`, `published`, `creationDate`, `modificationDate`, `userOwner`, `userModification`, `data`, `properties`) VALUES
(2, '/_default_upload_bucket', 'asset', 'folder', 'folder', 1, 1584466275, 1584466275, 1, 2, 'ID: 2  \nPath: /_default_upload_bucket  \n_default_upload_bucket default upload bucket', ''),
(2, '/MyNews', 'object', 'folder', 'folder', 1, 1584466237, 1584466237, 2, 2, 'ID: 2  \nPath: /MyNews  \nMyNews', ''),
(3, '/_default_upload_bucket/download (1).jpg', 'asset', 'image', 'image', 1, 1584466276, 1584466276, 2, 2, 'ID: 3  \nPath: /_default_upload_bucket/download (1).jpg  \ndownload (1).jpg FileName FileDateTime 1584466276 FileSize 13660 FileType 2 MimeType image/jpeg SectionsFound default upload bucket 1 jpg', ''),
(4, '/_default_upload_bucket/download (2).jpg', 'asset', 'image', 'image', 1, 1584466287, 1584466287, 2, 2, 'ID: 4  \nPath: /_default_upload_bucket/download (2).jpg  \ndownload (2).jpg FileName FileDateTime 1584466287 FileSize 11659 FileType 2 MimeType image/jpeg SectionsFound default upload bucket jpg', ''),
(5, '/_default_upload_bucket/download (3).jpg', 'asset', 'image', 'image', 1, 1584466296, 1584466296, 2, 2, 'ID: 5  \nPath: /_default_upload_bucket/download (3).jpg  \ndownload (3).jpg FileName FileDateTime 1584466296 FileSize 13418 FileType 2 MimeType image/jpeg SectionsFound default upload bucket 3 jpg', ''),
(5, '/products/avali', 'object', 'object', 'product', 1, 1584468506, 1584468523, 2, 2, 'ID: 5  \nPath: /products/avali  \navali sdf sdfsdf asdf asdf  products', ''),
(6, '/_default_upload_bucket/download (1)_1.jpg', 'asset', 'image', 'image', 1, 1584468518, 1584468518, 2, 2, 'ID: 6  \nPath: /_default_upload_bucket/download (1)_1.jpg  \ndownload (1)_1.jpg FileName FileDateTime 1584468518 FileSize 13660 FileType 2 MimeType image/jpeg SectionsFound default upload bucket 1 jpg', ''),
(6, '/News-List-Page', 'document', 'page', 'page', 1, 1584470139, 1584472129, 2, 2, 'ID: 6  \nPath: /News-List-Page  \nNews-List-Page News List Page', 'language: navigation_exclude: navigation_name:News-List-Page navigation_title: navigation_relation: navigation_parameters: navigation_anchor: navigation_target: navigation_class: navigation_tabindex: navigation_accesskey: '),
(7, '/_default_upload_bucket/download (1)_2.jpg', 'asset', 'image', 'image', 1, 1584469060, 1584469060, 2, 2, 'ID: 7  \nPath: /_default_upload_bucket/download (1)_2.jpg  \ndownload (1)_2.jpg FileName FileDateTime 1584469060 FileSize 13660 FileType 2 MimeType image/jpeg SectionsFound default upload bucket 1 jpg', ''),
(7, '/MyNews/avalin khabar', 'object', 'object', 'content', 1, 1584469396, 1584479023, 2, 2, 'ID: 7  \nPath: /MyNews/avalin khabar  \navalin khabar labore et dolore magna aliqua Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut Egestas purus viverra accumsan in nisl nisi Arcu cursus vitae congue mauris rhoncus aenean vel scelerisque In egestas erat imperdiet euismod porta lorem mollis Morbi tristique senectus netus Mattis pellentesque id nibh tortor aliquet lectus proin Sapien faucibus molestie ac feugiat vestibulum MyNews', ''),
(8, '/_default_upload_bucket/57935799.jpg', 'asset', 'image', 'image', 1, 1584469410, 1584478962, 2, 2, 'ID: 8  \nPath: /_default_upload_bucket/57935799.jpg  \n57935799.jpg FileName FileDateTime 1584469410 FileSize 61603 FileType 2 MimeType image/jpeg SectionsFound default upload bucket 57935799 jpg', ''),
(8, '/News-Detail-Page', 'document', 'page', 'page', 1, 1584479618, 1584479643, 2, 2, 'ID: 8  \nPath: /News-Detail-Page  \nNews-Detail-Page News Detail Page', 'navigation_name:News-Detail-Page '),
(8, '/MyNews/newdsa', 'object', 'object', 'content', 1, 1584469608, 1584479036, 2, 2, 'ID: 8  \nPath: /MyNews/newdsa  \nnewdsa eiusmod tempor incididunt ut Lorem ipsum dolor sit amet consectetur adipiscing elit sed do labore et dolore magna aliqua Egestas purus viverra accumsan in nisl nisi Arcu cursus vitae congue mauris rhoncus aenean vel scelerisque In egestas erat imperdiet euismod porta lorem mollis Morbi tristique senectus netus Mattis pellentesque id nibh tortor aliquet lectus proin Sapien faucibus molestie ac feugiat vestibulum Ullamcorper velit ullamcorper morbi tincidunt ornare massa eget Dictum varius duis at Nisi suscipit tellus a diam maecenas enim Velit pretium suspendisse potenti nullam Et Non est facilisis Dignissim quis lobortis fermentum Odi Odio blandit volutpat Ornare placerat Placerat ultricies lacus turpis MyNews', ''),
(9, '/_default_upload_bucket/download (3)_1.jpg', 'asset', 'image', 'image', 1, 1584469619, 1584469620, 2, 2, 'ID: 9  \nPath: /_default_upload_bucket/download (3)_1.jpg  \ndownload (3)_1.jpg FileName FileDateTime 1584469619 FileSize 13418 FileType 2 MimeType image/jpeg SectionsFound default upload bucket 3 1 jpg', ''),
(9, '/MyNews/labore et dolore magna aliqua', 'object', 'object', 'content', 1, 1584478869, 1584478941, 2, 2, 'ID: 9  \nPath: /MyNews/labore et dolore magna aliqua  \nlabore et dolore magna aliqua sl nisi Arcu cursus vitae Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut Egestas purus viverra accumsan in nisl congue mauris rhoncus aenean apien faucibus molestie ac feugiat lectus vestibulum vel scelerisque In egestas erat imperdiet euismod porta lorem mollis Morbi tristique senectus netus Mattis pellentesque id nibh tortor aliquet proin Sapien Ullamcorper velit ullamcorper morbi tincidunt ornare massa eget Dictum varius duis at Nisi suscipit tellus a diam maecenas enim Velit pretium suspendisse potenti nullam Et Non est facilisis Dignissim quis lobortis fermentum Odio blandit volutpat Ornare placerat Placerat ultricies lacus turpis MyNews', ''),
(10, '/_default_upload_bucket/download (3)_2.jpg', 'asset', 'image', 'image', 1, 1584478903, 1584478904, 2, 2, 'ID: 10  \nPath: /_default_upload_bucket/download (3)_2.jpg  \ndownload (3)_2.jpg FileName FileDateTime 1584478903 FileSize 13418 FileType 2 MimeType image/jpeg SectionsFound default upload bucket 3 jpg', ''),
(10, '/MyNews/rhoncus aenean', 'object', 'object', 'content', 1, 1584479054, 1584479108, 2, 2, 'ID: 10  \nPath: /MyNews/rhoncus aenean  \nrhoncus aenean aucibus et molestie ac feugiat sed lectus vestibulum Ullamcorper velit ullamcorper morbi tincidunt ornare massa eget Dictum varius duis at consectetur lorem Nisi vitae suscipit tellus mauris a diam maecenas enim Velit ut tortor pretium viverra suspendisse potenti nullam Et Non nisi est sit amet facilisis magna Dignissim quis lobortis sc Lorem ipsum dolor adipiscing elit do eiusmod tempor incididunt labore dolore aliqua Egestas purus accumsan in nisl Arcu cursus congue vel scelerisque In egestas erat imperdiet euismod porta mollis Morbi tristique senectus netus Mattis pellentesque id nibh aliquet proin Sapien faucibus fermentum Odio blandit volutpat Ornare placerat Placerat ultricies lacus turpis MyNews', ''),
(11, '/_default_upload_bucket/فروش-تابلو-رنگ-روغن-راه-پاییزی.jpg', 'asset', 'image', 'image', 1, 1584478918, 1584478918, 2, 2, 'ID: 11  \nPath: /_default_upload_bucket/فروش-تابلو-رنگ-روغن-راه-پاییزی.jpg  \nفروش-تابلو-رنگ-روغن-راه-پاییزی.jpg FileDateTime 1584478918 FileSize 76920 FileType 2 MimeType image/jpeg SectionsFound COMMENT default upload bucket فروش تابلو رنگ روغن راه پاییزی jpg', ''),
(12, '/_default_upload_bucket/gallery-image-12-128x120.jpg', 'asset', 'image', 'image', 1, 1584478938, 1584478938, 2, 2, 'ID: 12  \nPath: /_default_upload_bucket/gallery-image-12-128x120.jpg  \ngallery-image-12-128x120.jpg FileName FileDateTime 1584478938 FileSize 8748 FileType 2 MimeType image/jpeg SectionsFound default upload bucket gallery image 12 128x120 jpg', ''),
(13, '/_default_upload_bucket/download.jpg', 'asset', 'image', 'image', 1, 1584478959, 1584478960, 2, 2, 'ID: 13  \nPath: /_default_upload_bucket/download.jpg  \ndownload.jpg FileName FileDateTime 1584478959 FileSize 8373 FileType 2 MimeType image/jpeg SectionsFound default upload bucket download jpg', ''),
(14, '/_default_upload_bucket/admin-ajax.png', 'asset', 'image', 'image', 1, 1584478981, 1584478981, 2, 2, 'ID: 14  \nPath: /_default_upload_bucket/admin-ajax.png  \nadmin-ajax.png default upload bucket admin ajax png', ''),
(15, '/_default_upload_bucket/paj.jpg', 'asset', 'image', 'image', 1, 1584478991, 1584478991, 2, 2, 'ID: 15  \nPath: /_default_upload_bucket/paj.jpg  \npaj.jpg FileName FileDateTime 1584478991 FileSize 39579 FileType 2 MimeType image/jpeg SectionsFound ANY_TAG IFD0 Orientation 1 default upload bucket paj jpg', ''),
(16, '/_default_upload_bucket/slider-2-slide-3-1920x850.jpg', 'asset', 'image', 'image', 1, 1584479020, 1584479020, 2, 2, 'ID: 16  \nPath: /_default_upload_bucket/slider-2-slide-3-1920x850.jpg  \nslider-2-slide-3-1920x850.jpg FileName FileDateTime 1584479020 FileSize 321339 FileType 2 MimeType image/jpeg SectionsFound default upload bucket slider slide 3 1920x850 jpg', ''),
(17, '/_default_upload_bucket/download (3)_3.jpg', 'asset', 'image', 'image', 1, 1584479033, 1584479033, 2, 2, 'ID: 17  \nPath: /_default_upload_bucket/download (3)_3.jpg  \ndownload (3)_3.jpg FileName FileDateTime 1584479033 FileSize 13418 FileType 2 MimeType image/jpeg SectionsFound default upload bucket 3 jpg', ''),
(18, '/_default_upload_bucket/Header-Doctor-with-Patient.jpg', 'asset', 'image', 'image', 1, 1584479076, 1584479076, 2, 2, 'ID: 18  \nPath: /_default_upload_bucket/Header-Doctor-with-Patient.jpg  \nHeader-Doctor-with-Patient.jpg FileName FileDateTime 1584479076 FileSize 150809 FileType 2 MimeType image/jpeg SectionsFound ANY_TAG IFD0 APP12 Copyright ©nenetus - stock.adobe.com Company Ducky Info  CodedCharacterSet %G ApplicationRecordVersion  CopyrightNotice default upload bucket Header Doctor with Patient jpg', ''),
(19, '/_default_upload_bucket/download (1)_3.jpg', 'asset', 'image', 'image', 1, 1584479092, 1584479092, 2, 2, 'ID: 19  \nPath: /_default_upload_bucket/download (1)_3.jpg  \ndownload (1)_3.jpg FileName FileDateTime 1584479092 FileSize 13660 FileType 2 MimeType image/jpeg SectionsFound default upload bucket 1 3 jpg', ''),
(20, '/_default_upload_bucket/gallery-image-12-128x120_1.jpg', 'asset', 'image', 'image', 1, 1584479100, 1584479100, 2, 2, 'ID: 20  \nPath: /_default_upload_bucket/gallery-image-12-128x120_1.jpg  \ngallery-image-12-128x120_1.jpg FileName FileDateTime 1584479100 FileSize 8748 FileType 2 MimeType image/jpeg SectionsFound default upload bucket gallery image 12 128x120 1 jpg', ''),
(21, '/_default_upload_bucket/Header-Woman-Doctor-with-Clipboard.jpg', 'asset', 'image', 'image', 1, 1584479106, 1584479106, 2, 2, 'ID: 21  \nPath: /_default_upload_bucket/Header-Woman-Doctor-with-Clipboard.jpg  \nHeader-Woman-Doctor-with-Clipboard.jpg FileName FileDateTime 1584479106 FileSize 121598 FileType 2 MimeType image/jpeg SectionsFound default upload bucket Header Woman Doctor with Clipboard jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

CREATE TABLE `sites` (
  `id` int(11) UNSIGNED NOT NULL,
  `mainDomain` varchar(255) DEFAULT NULL,
  `domains` text,
  `rootId` int(11) UNSIGNED DEFAULT NULL,
  `errorDocument` varchar(255) DEFAULT NULL,
  `redirectToMainDomain` tinyint(1) DEFAULT NULL,
  `creationDate` int(11) UNSIGNED DEFAULT '0',
  `modificationDate` int(11) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parentId` int(10) UNSIGNED DEFAULT NULL,
  `idPath` varchar(190) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tags_assignment`
--

CREATE TABLE `tags_assignment` (
  `tagid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cid` int(10) NOT NULL DEFAULT '0',
  `ctype` enum('document','asset','object') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `targeting_rules`
--

CREATE TABLE `targeting_rules` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `scope` varchar(50) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `prio` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `conditions` longtext,
  `actions` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `targeting_storage`
--

CREATE TABLE `targeting_storage` (
  `visitorId` varchar(100) NOT NULL,
  `scope` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` text,
  `creationDate` datetime DEFAULT NULL,
  `modificationDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `targeting_target_groups`
--

CREATE TABLE `targeting_target_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `threshold` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tmp_store`
--

CREATE TABLE `tmp_store` (
  `id` varchar(190) NOT NULL DEFAULT '',
  `tag` varchar(190) DEFAULT NULL,
  `data` longtext,
  `serialized` tinyint(2) NOT NULL DEFAULT '0',
  `date` int(11) UNSIGNED DEFAULT NULL,
  `expiryDate` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tmp_store`
--

INSERT INTO `tmp_store` (`id`, `tag`, `data`, `serialized`, `date`, `expiryDate`) VALUES
('object_session_7_da9fd4d5adpj29ou0k1mirgo9c', 'object-session', 'O:32:\"Pimcore\\Model\\DataObject\\Content\":30:{s:12:\"\0*\0o_classId\";s:1:\"1\";s:14:\"\0*\0o_className\";s:7:\"content\";s:8:\"\0*\0title\";s:30:\"labore et dolore magna aliqua \";s:9:\"\0*\0teaser\";s:214:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Egestas purus viverra accumsan in nisl nisi Arcu cursus vitae congue mauris rhoncus aenean \";s:7:\"\0*\0text\";s:458:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Egestas purus viverra accumsan in nisl nisi Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque In egestas erat imperdiet sed euismod nisi porta lorem mollis Morbi tristique senectus et netus Mattis pellentesque id nibh tortor id aliquet lectus proin Sapien faucibus et molestie ac feugiat sed lectus vestibulum</p>\n\";s:8:\"\0*\0image\";O:25:\"Pimcore\\Model\\Asset\\Image\":20:{s:7:\"\0*\0type\";s:5:\"image\";s:5:\"\0*\0id\";i:13;s:11:\"\0*\0parentId\";i:2;s:11:\"\0*\0filename\";s:12:\"download.jpg\";s:7:\"\0*\0path\";s:24:\"/_default_upload_bucket/\";s:11:\"\0*\0mimetype\";s:10:\"image/jpeg\";s:15:\"\0*\0creationDate\";i:1584478959;s:19:\"\0*\0modificationDate\";i:1584478960;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:284;s:11:\"imageHeight\";i:177;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1584478959;s:8:\"FileSize\";i:8373;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1584478960;s:12:\"\0*\0_fulldump\";b:0;}s:10:\"\0*\0gallery\";O:42:\"Pimcore\\Model\\DataObject\\Data\\ImageGallery\":4:{s:8:\"\0*\0items\";a:1:{i:0;O:42:\"Pimcore\\Model\\DataObject\\Data\\Hotspotimage\":7:{s:8:\"\0*\0image\";O:25:\"Pimcore\\Model\\Asset\\Image\":20:{s:7:\"\0*\0type\";s:5:\"image\";s:5:\"\0*\0id\";i:16;s:11:\"\0*\0parentId\";i:2;s:11:\"\0*\0filename\";s:29:\"slider-2-slide-3-1920x850.jpg\";s:7:\"\0*\0path\";s:24:\"/_default_upload_bucket/\";s:11:\"\0*\0mimetype\";s:10:\"image/jpeg\";s:15:\"\0*\0creationDate\";i:1584479020;s:19:\"\0*\0modificationDate\";i:1584479020;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:1919;s:11:\"imageHeight\";i:850;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1584479019;s:8:\"FileSize\";i:321339;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1584479020;s:12:\"\0*\0_fulldump\";b:0;}s:11:\"\0*\0hotspots\";a:0:{}s:9:\"\0*\0marker\";a:0:{}s:7:\"\0*\0crop\";N;s:9:\"\0*\0_owner\";N;s:13:\"\0*\0_fieldname\";N;s:12:\"\0*\0_language\";N;}}s:9:\"\0*\0_owner\";N;s:13:\"\0*\0_fieldname\";N;s:12:\"\0*\0_language\";N;}s:11:\"\0*\0relation\";N;s:20:\"\0*\0__rawRelationData\";a:0:{}s:14:\"\0*\0o_published\";b:1;s:7:\"\0*\0o_id\";i:7;s:13:\"\0*\0o_parentId\";i:2;s:9:\"\0*\0o_type\";s:6:\"object\";s:8:\"\0*\0o_key\";s:13:\"avalin khabar\";s:9:\"\0*\0o_path\";s:8:\"/MyNews/\";s:10:\"\0*\0o_index\";i:0;s:17:\"\0*\0o_creationDate\";i:1584469396;s:21:\"\0*\0o_modificationDate\";i:1584479023;s:14:\"\0*\0o_userOwner\";i:2;s:21:\"\0*\0o_userModification\";i:2;s:15:\"\0*\0o_properties\";a:0:{}s:13:\"\0*\0o_siblings\";a:0:{}s:16:\"\0*\0o_hasSiblings\";a:0:{}s:13:\"\0*\0o_children\";a:0:{}s:11:\"\0*\0o_locked\";N;s:22:\"\0*\0o_elementAdminStyle\";N;s:19:\"\0*\0o_childrenSortBy\";N;s:17:\"\0*\0o_versionCount\";i:6;s:25:\"\0*\0__dataVersionTimestamp\";i:1584479023;s:12:\"\0*\0_fulldump\";b:1;}', 0, 1584481364, 1585086164);

-- --------------------------------------------------------

--
-- Table structure for table `tracking_events`
--

CREATE TABLE `tracking_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(190) DEFAULT NULL,
  `action` varchar(190) DEFAULT NULL,
  `label` varchar(190) DEFAULT NULL,
  `data` varchar(190) DEFAULT NULL,
  `timestamp` int(11) UNSIGNED DEFAULT NULL,
  `year` int(5) UNSIGNED DEFAULT NULL,
  `month` int(2) UNSIGNED DEFAULT NULL,
  `day` int(2) UNSIGNED DEFAULT NULL,
  `dayOfWeek` int(1) UNSIGNED DEFAULT NULL,
  `dayOfYear` int(3) UNSIGNED DEFAULT NULL,
  `weekOfYear` int(2) UNSIGNED DEFAULT NULL,
  `hour` int(2) UNSIGNED DEFAULT NULL,
  `minute` int(2) UNSIGNED DEFAULT NULL,
  `second` int(2) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `translations_admin`
--

CREATE TABLE `translations_admin` (
  `key` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `language` varchar(10) NOT NULL DEFAULT '',
  `text` text,
  `creationDate` int(11) UNSIGNED DEFAULT NULL,
  `modificationDate` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `translations_admin`
--

INSERT INTO `translations_admin` (`key`, `language`, `text`, `creationDate`, `modificationDate`) VALUES
(';', 'cs', '', 1584465269, 1584465269),
(';', 'de', '', 1584465269, 1584465269),
(';', 'en', '', 1584465269, 1584465269),
(';', 'es', '', 1584465269, 1584465269),
(';', 'fa', '', 1584465269, 1584465269),
(';', 'fr', '', 1584465269, 1584465269),
(';', 'it', '', 1584465269, 1584465269),
(';', 'ja', '', 1584465269, 1584465269),
(';', 'nl', '', 1584465269, 1584465269),
(';', 'pl', '', 1584465269, 1584465269),
(';', 'pt_BR', '', 1584465269, 1584465269),
(';', 'ru', '', 1584465269, 1584465269),
(';', 'sk', '', 1584465269, 1584465269),
(';', 'sv', '', 1584465269, 1584465269),
(';', 'sv_FI', '', 1584465269, 1584465269),
(';', 'tr', '', 1584465269, 1584465269),
(';', 'uk', '', 1584465269, 1584465269),
(';', 'zh_Hans', '', 1584465269, 1584465269),
('CSV Export', 'cs', '', 1584481390, 1584481390),
('CSV Export', 'de', '', 1584481390, 1584481390),
('CSV Export', 'en', '', 1584481390, 1584481390),
('CSV Export', 'es', '', 1584481390, 1584481390),
('CSV Export', 'fa', '', 1584481390, 1584481390),
('CSV Export', 'fr', '', 1584481390, 1584481390),
('CSV Export', 'it', '', 1584481390, 1584481390),
('CSV Export', 'ja', '', 1584481390, 1584481390),
('CSV Export', 'nl', '', 1584481390, 1584481390),
('CSV Export', 'pl', '', 1584481390, 1584481390),
('CSV Export', 'pt_BR', '', 1584481390, 1584481390),
('CSV Export', 'ru', '', 1584481390, 1584481390),
('CSV Export', 'sk', '', 1584481390, 1584481390),
('CSV Export', 'sv', '', 1584481390, 1584481390),
('CSV Export', 'sv_FI', '', 1584481390, 1584481390),
('CSV Export', 'tr', '', 1584481390, 1584481390),
('CSV Export', 'uk', '', 1584481390, 1584481390),
('CSV Export', 'zh_Hans', '', 1584481390, 1584481390),
('Content', 'cs', '', 1584466096, 1584466096),
('Content', 'de', '', 1584466096, 1584466096),
('Content', 'en', '', 1584466096, 1584466096),
('Content', 'es', '', 1584466096, 1584466096),
('Content', 'fa', '', 1584466096, 1584466096),
('Content', 'fr', '', 1584466096, 1584466096),
('Content', 'it', '', 1584466096, 1584466096),
('Content', 'ja', '', 1584466096, 1584466096),
('Content', 'nl', '', 1584466096, 1584466096),
('Content', 'pl', '', 1584466096, 1584466096),
('Content', 'pt_BR', '', 1584466096, 1584466096),
('Content', 'ru', '', 1584466096, 1584466096),
('Content', 'sk', '', 1584466096, 1584466096),
('Content', 'sv', '', 1584466096, 1584466096),
('Content', 'sv_FI', '', 1584466096, 1584466096),
('Content', 'tr', '', 1584466096, 1584466096),
('Content', 'uk', '', 1584466096, 1584466096),
('Content', 'zh_Hans', '', 1584466096, 1584466096),
('Gallery', 'cs', '', 1584466279, 1584466279),
('Gallery', 'de', '', 1584466279, 1584466279),
('Gallery', 'en', '', 1584466279, 1584466279),
('Gallery', 'es', '', 1584466279, 1584466279),
('Gallery', 'fa', '', 1584466279, 1584466279),
('Gallery', 'fr', '', 1584466279, 1584466279),
('Gallery', 'it', '', 1584466279, 1584466279),
('Gallery', 'ja', '', 1584466279, 1584466279),
('Gallery', 'nl', '', 1584466279, 1584466279),
('Gallery', 'pl', '', 1584466279, 1584466279),
('Gallery', 'pt_BR', '', 1584466279, 1584466279),
('Gallery', 'ru', '', 1584466279, 1584466279),
('Gallery', 'sk', '', 1584466279, 1584466279),
('Gallery', 'sv', '', 1584466279, 1584466279),
('Gallery', 'sv_FI', '', 1584466279, 1584466279),
('Gallery', 'tr', '', 1584466279, 1584466279),
('Gallery', 'uk', '', 1584466279, 1584466279),
('Gallery', 'zh_Hans', '', 1584466279, 1584466279),
('Image', 'cs', '', 1584467308, 1584467308),
('Image', 'de', '', 1584467308, 1584467308),
('Image', 'en', '', 1584467308, 1584467308),
('Image', 'es', '', 1584467308, 1584467308),
('Image', 'fa', '', 1584467308, 1584467308),
('Image', 'fr', '', 1584467308, 1584467308),
('Image', 'it', '', 1584467308, 1584467308),
('Image', 'ja', '', 1584467308, 1584467308),
('Image', 'nl', '', 1584467308, 1584467308),
('Image', 'pl', '', 1584467308, 1584467308),
('Image', 'pt_BR', '', 1584467308, 1584467308),
('Image', 'ru', '', 1584467308, 1584467308),
('Image', 'sk', '', 1584467308, 1584467308),
('Image', 'sv', '', 1584467308, 1584467308),
('Image', 'sv_FI', '', 1584467308, 1584467308),
('Image', 'tr', '', 1584467308, 1584467308),
('Image', 'uk', '', 1584467308, 1584467308),
('Image', 'zh_Hans', '', 1584467308, 1584467308),
('Master', 'cs', '', 1584466279, 1584466279),
('Master', 'de', '', 1584466279, 1584466279),
('Master', 'en', '', 1584466279, 1584466279),
('Master', 'es', '', 1584466279, 1584466279),
('Master', 'fa', '', 1584466279, 1584466279),
('Master', 'fr', '', 1584466279, 1584466279),
('Master', 'it', '', 1584466279, 1584466279),
('Master', 'ja', '', 1584466279, 1584466279),
('Master', 'nl', '', 1584466279, 1584466279),
('Master', 'pl', '', 1584466279, 1584466279),
('Master', 'pt_BR', '', 1584466279, 1584466279),
('Master', 'ru', '', 1584466279, 1584466279),
('Master', 'sk', '', 1584466279, 1584466279),
('Master', 'sv', '', 1584466279, 1584466279),
('Master', 'sv_FI', '', 1584466279, 1584466279),
('Master', 'tr', '', 1584466279, 1584466279),
('Master', 'uk', '', 1584466279, 1584466279),
('Master', 'zh_Hans', '', 1584466279, 1584466279),
('Master (Admin Mode)', 'cs', '', 1584466278, 1584466278),
('Master (Admin Mode)', 'de', '', 1584466278, 1584466278),
('Master (Admin Mode)', 'en', '', 1584466278, 1584466278),
('Master (Admin Mode)', 'es', '', 1584466278, 1584466278),
('Master (Admin Mode)', 'fa', '', 1584466278, 1584466278),
('Master (Admin Mode)', 'fr', '', 1584466278, 1584466278),
('Master (Admin Mode)', 'it', '', 1584466278, 1584466278),
('Master (Admin Mode)', 'ja', '', 1584466278, 1584466278),
('Master (Admin Mode)', 'nl', '', 1584466278, 1584466278),
('Master (Admin Mode)', 'pl', '', 1584466278, 1584466278),
('Master (Admin Mode)', 'pt_BR', '', 1584466278, 1584466278),
('Master (Admin Mode)', 'ru', '', 1584466278, 1584466278),
('Master (Admin Mode)', 'sk', '', 1584466278, 1584466278),
('Master (Admin Mode)', 'sv', '', 1584466278, 1584466278),
('Master (Admin Mode)', 'sv_FI', '', 1584466278, 1584466278),
('Master (Admin Mode)', 'tr', '', 1584466278, 1584466278),
('Master (Admin Mode)', 'uk', '', 1584466278, 1584466278),
('Master (Admin Mode)', 'zh_Hans', '', 1584466278, 1584466278),
('SEO', 'cs', '', 1584465389, 1584465389),
('SEO', 'de', '', 1584465389, 1584465389),
('SEO', 'en', '', 1584465389, 1584465389),
('SEO', 'es', '', 1584465389, 1584465389),
('SEO', 'fa', '', 1584465389, 1584465389),
('SEO', 'fr', '', 1584465389, 1584465389),
('SEO', 'it', '', 1584465389, 1584465389),
('SEO', 'ja', '', 1584465389, 1584465389),
('SEO', 'nl', '', 1584465389, 1584465389),
('SEO', 'pl', '', 1584465389, 1584465389),
('SEO', 'pt_BR', '', 1584465389, 1584465389),
('SEO', 'ru', '', 1584465389, 1584465389),
('SEO', 'sk', '', 1584465389, 1584465389),
('SEO', 'sv', '', 1584465389, 1584465389),
('SEO', 'sv_FI', '', 1584465389, 1584465389),
('SEO', 'tr', '', 1584465389, 1584465389),
('SEO', 'uk', '', 1584465389, 1584465389),
('SEO', 'zh_Hans', '', 1584465389, 1584465389),
('Teaser', 'cs', '', 1584466279, 1584466279),
('Teaser', 'de', '', 1584466279, 1584466279),
('Teaser', 'en', '', 1584466279, 1584466279),
('Teaser', 'es', '', 1584466279, 1584466279),
('Teaser', 'fa', '', 1584466279, 1584466279),
('Teaser', 'fr', '', 1584466279, 1584466279),
('Teaser', 'it', '', 1584466279, 1584466279),
('Teaser', 'ja', '', 1584466279, 1584466279),
('Teaser', 'nl', '', 1584466279, 1584466279),
('Teaser', 'pl', '', 1584466279, 1584466279),
('Teaser', 'pt_BR', '', 1584466279, 1584466279),
('Teaser', 'ru', '', 1584466279, 1584466279),
('Teaser', 'sk', '', 1584466279, 1584466279),
('Teaser', 'sv', '', 1584466279, 1584466279),
('Teaser', 'sv_FI', '', 1584466279, 1584466279),
('Teaser', 'tr', '', 1584466279, 1584466279),
('Teaser', 'uk', '', 1584466279, 1584466279),
('Teaser', 'zh_Hans', '', 1584466279, 1584466279),
('Text', 'cs', '', 1584467307, 1584467307),
('Text', 'de', '', 1584467307, 1584467307),
('Text', 'en', '', 1584467307, 1584467307),
('Text', 'es', '', 1584467307, 1584467307),
('Text', 'fa', '', 1584467307, 1584467307),
('Text', 'fr', '', 1584467307, 1584467307),
('Text', 'it', '', 1584467307, 1584467307),
('Text', 'ja', '', 1584467307, 1584467307),
('Text', 'nl', '', 1584467307, 1584467307),
('Text', 'pl', '', 1584467307, 1584467307),
('Text', 'pt_BR', '', 1584467307, 1584467307),
('Text', 'ru', '', 1584467307, 1584467307),
('Text', 'sk', '', 1584467307, 1584467307),
('Text', 'sv', '', 1584467307, 1584467307),
('Text', 'sv_FI', '', 1584467307, 1584467307),
('Text', 'tr', '', 1584467307, 1584467307),
('Text', 'uk', '', 1584467307, 1584467307),
('Text', 'zh_Hans', '', 1584467307, 1584467307),
('XLSX Export', 'cs', '', 1584481390, 1584481390),
('XLSX Export', 'de', '', 1584481390, 1584481390),
('XLSX Export', 'en', '', 1584481390, 1584481390),
('XLSX Export', 'es', '', 1584481390, 1584481390),
('XLSX Export', 'fa', '', 1584481390, 1584481390),
('XLSX Export', 'fr', '', 1584481390, 1584481390),
('XLSX Export', 'it', '', 1584481390, 1584481390),
('XLSX Export', 'ja', '', 1584481390, 1584481390),
('XLSX Export', 'nl', '', 1584481390, 1584481390),
('XLSX Export', 'pl', '', 1584481390, 1584481390),
('XLSX Export', 'pt_BR', '', 1584481390, 1584481390),
('XLSX Export', 'ru', '', 1584481390, 1584481390),
('XLSX Export', 'sk', '', 1584481390, 1584481390),
('XLSX Export', 'sv', '', 1584481390, 1584481390),
('XLSX Export', 'sv_FI', '', 1584481390, 1584481390),
('XLSX Export', 'tr', '', 1584481390, 1584481390),
('XLSX Export', 'uk', '', 1584481390, 1584481390),
('XLSX Export', 'zh_Hans', '', 1584481390, 1584481390),
('bottom', 'cs', '', 1584482832, 1584482832),
('bottom', 'de', '', 1584482832, 1584482832),
('bottom', 'en', '', 1584482832, 1584482832),
('bottom', 'es', '', 1584482832, 1584482832),
('bottom', 'fa', '', 1584482832, 1584482832),
('bottom', 'fr', '', 1584482832, 1584482832),
('bottom', 'it', '', 1584482832, 1584482832),
('bottom', 'ja', '', 1584482832, 1584482832),
('bottom', 'nl', '', 1584482832, 1584482832),
('bottom', 'pl', '', 1584482832, 1584482832),
('bottom', 'pt_BR', '', 1584482832, 1584482832),
('bottom', 'ru', '', 1584482832, 1584482832),
('bottom', 'sk', '', 1584482832, 1584482832),
('bottom', 'sv', '', 1584482832, 1584482832),
('bottom', 'sv_FI', '', 1584482832, 1584482832),
('bottom', 'tr', '', 1584482832, 1584482832),
('bottom', 'uk', '', 1584482832, 1584482832),
('bottom', 'zh_Hans', '', 1584482832, 1584482832),
('content', 'cs', '', 1584469273, 1584469273),
('content', 'de', '', 1584469273, 1584469273),
('content', 'en', '', 1584469273, 1584469273),
('content', 'es', '', 1584469273, 1584469273),
('content', 'fa', '', 1584469273, 1584469273),
('content', 'fr', '', 1584469273, 1584469273),
('content', 'it', '', 1584469273, 1584469273),
('content', 'ja', '', 1584469273, 1584469273),
('content', 'nl', '', 1584469273, 1584469273),
('content', 'pl', '', 1584469273, 1584469273),
('content', 'pt_BR', '', 1584469273, 1584469273),
('content', 'ru', '', 1584469273, 1584469273),
('content', 'sk', '', 1584469273, 1584469273),
('content', 'sv', '', 1584469273, 1584469273),
('content', 'sv_FI', '', 1584469273, 1584469273),
('content', 'tr', '', 1584469273, 1584469273),
('content', 'uk', '', 1584469273, 1584469273),
('content', 'zh_Hans', '', 1584469273, 1584469273),
('gallery', 'cs', '', 1584469408, 1584469408),
('gallery', 'de', '', 1584469408, 1584469408),
('gallery', 'en', '', 1584469408, 1584469408),
('gallery', 'es', '', 1584469408, 1584469408),
('gallery', 'fa', '', 1584469408, 1584469408),
('gallery', 'fr', '', 1584469408, 1584469408),
('gallery', 'it', '', 1584469408, 1584469408),
('gallery', 'ja', '', 1584469408, 1584469408),
('gallery', 'nl', '', 1584469408, 1584469408),
('gallery', 'pl', '', 1584469408, 1584469408),
('gallery', 'pt_BR', '', 1584469408, 1584469408),
('gallery', 'ru', '', 1584469408, 1584469408),
('gallery', 'sk', '', 1584469408, 1584469408),
('gallery', 'sv', '', 1584469408, 1584469408),
('gallery', 'sv_FI', '', 1584469408, 1584469408),
('gallery', 'tr', '', 1584469408, 1584469408),
('gallery', 'uk', '', 1584469408, 1584469408),
('gallery', 'zh_Hans', '', 1584469408, 1584469408),
('object_add_dialog_custom_text.Content', 'cs', '', 1584466248, 1584466248),
('object_add_dialog_custom_text.Content', 'de', '', 1584466248, 1584466248),
('object_add_dialog_custom_text.Content', 'en', '', 1584466248, 1584466248),
('object_add_dialog_custom_text.Content', 'es', '', 1584466248, 1584466248),
('object_add_dialog_custom_text.Content', 'fa', '', 1584466248, 1584466248),
('object_add_dialog_custom_text.Content', 'fr', '', 1584466248, 1584466248),
('object_add_dialog_custom_text.Content', 'it', '', 1584466248, 1584466248),
('object_add_dialog_custom_text.Content', 'ja', '', 1584466248, 1584466248),
('object_add_dialog_custom_text.Content', 'nl', '', 1584466248, 1584466248),
('object_add_dialog_custom_text.Content', 'pl', '', 1584466248, 1584466248),
('object_add_dialog_custom_text.Content', 'pt_BR', '', 1584466248, 1584466248),
('object_add_dialog_custom_text.Content', 'ru', '', 1584466248, 1584466248),
('object_add_dialog_custom_text.Content', 'sk', '', 1584466248, 1584466248),
('object_add_dialog_custom_text.Content', 'sv', '', 1584466248, 1584466248),
('object_add_dialog_custom_text.Content', 'sv_FI', '', 1584466248, 1584466248),
('object_add_dialog_custom_text.Content', 'tr', '', 1584466248, 1584466248),
('object_add_dialog_custom_text.Content', 'uk', '', 1584466248, 1584466248),
('object_add_dialog_custom_text.Content', 'zh_Hans', '', 1584466248, 1584466248),
('object_add_dialog_custom_text.content', 'cs', '', 1584469407, 1584469407),
('object_add_dialog_custom_text.content', 'de', '', 1584469407, 1584469407),
('object_add_dialog_custom_text.content', 'en', '', 1584469407, 1584469407),
('object_add_dialog_custom_text.content', 'es', '', 1584469407, 1584469407),
('object_add_dialog_custom_text.content', 'fa', '', 1584469407, 1584469407),
('object_add_dialog_custom_text.content', 'fr', '', 1584469407, 1584469407),
('object_add_dialog_custom_text.content', 'it', '', 1584469407, 1584469407),
('object_add_dialog_custom_text.content', 'ja', '', 1584469407, 1584469407),
('object_add_dialog_custom_text.content', 'nl', '', 1584469407, 1584469407),
('object_add_dialog_custom_text.content', 'pl', '', 1584469407, 1584469407),
('object_add_dialog_custom_text.content', 'pt_BR', '', 1584469407, 1584469407),
('object_add_dialog_custom_text.content', 'ru', '', 1584469407, 1584469407),
('object_add_dialog_custom_text.content', 'sk', '', 1584469407, 1584469407),
('object_add_dialog_custom_text.content', 'sv', '', 1584469407, 1584469407),
('object_add_dialog_custom_text.content', 'sv_FI', '', 1584469407, 1584469407),
('object_add_dialog_custom_text.content', 'tr', '', 1584469407, 1584469407),
('object_add_dialog_custom_text.content', 'uk', '', 1584469407, 1584469407),
('object_add_dialog_custom_text.content', 'zh_Hans', '', 1584469407, 1584469407),
('object_add_dialog_custom_text.product', 'cs', '', 1584468506, 1584468506),
('object_add_dialog_custom_text.product', 'de', '', 1584468506, 1584468506),
('object_add_dialog_custom_text.product', 'en', '', 1584468506, 1584468506),
('object_add_dialog_custom_text.product', 'es', '', 1584468506, 1584468506),
('object_add_dialog_custom_text.product', 'fa', '', 1584468506, 1584468506),
('object_add_dialog_custom_text.product', 'fr', '', 1584468506, 1584468506),
('object_add_dialog_custom_text.product', 'it', '', 1584468506, 1584468506),
('object_add_dialog_custom_text.product', 'ja', '', 1584468506, 1584468506),
('object_add_dialog_custom_text.product', 'nl', '', 1584468506, 1584468506),
('object_add_dialog_custom_text.product', 'pl', '', 1584468506, 1584468506),
('object_add_dialog_custom_text.product', 'pt_BR', '', 1584468506, 1584468506),
('object_add_dialog_custom_text.product', 'ru', '', 1584468506, 1584468506),
('object_add_dialog_custom_text.product', 'sk', '', 1584468506, 1584468506),
('object_add_dialog_custom_text.product', 'sv', '', 1584468506, 1584468506),
('object_add_dialog_custom_text.product', 'sv_FI', '', 1584468506, 1584468506),
('object_add_dialog_custom_text.product', 'tr', '', 1584468506, 1584468506),
('object_add_dialog_custom_text.product', 'uk', '', 1584468506, 1584468506),
('object_add_dialog_custom_text.product', 'zh_Hans', '', 1584468506, 1584468506),
('object_add_dialog_custom_title.Content', 'cs', '', 1584466249, 1584466249),
('object_add_dialog_custom_title.Content', 'de', '', 1584466249, 1584466249),
('object_add_dialog_custom_title.Content', 'en', '', 1584466249, 1584466249),
('object_add_dialog_custom_title.Content', 'es', '', 1584466249, 1584466249),
('object_add_dialog_custom_title.Content', 'fa', '', 1584466249, 1584466249),
('object_add_dialog_custom_title.Content', 'fr', '', 1584466249, 1584466249),
('object_add_dialog_custom_title.Content', 'it', '', 1584466249, 1584466249),
('object_add_dialog_custom_title.Content', 'ja', '', 1584466249, 1584466249),
('object_add_dialog_custom_title.Content', 'nl', '', 1584466249, 1584466249),
('object_add_dialog_custom_title.Content', 'pl', '', 1584466249, 1584466249),
('object_add_dialog_custom_title.Content', 'pt_BR', '', 1584466249, 1584466249),
('object_add_dialog_custom_title.Content', 'ru', '', 1584466249, 1584466249),
('object_add_dialog_custom_title.Content', 'sk', '', 1584466249, 1584466249),
('object_add_dialog_custom_title.Content', 'sv', '', 1584466249, 1584466249),
('object_add_dialog_custom_title.Content', 'sv_FI', '', 1584466249, 1584466249),
('object_add_dialog_custom_title.Content', 'tr', '', 1584466249, 1584466249),
('object_add_dialog_custom_title.Content', 'uk', '', 1584466249, 1584466249),
('object_add_dialog_custom_title.Content', 'zh_Hans', '', 1584466249, 1584466249),
('object_add_dialog_custom_title.content', 'cs', '', 1584469407, 1584469407),
('object_add_dialog_custom_title.content', 'de', '', 1584469407, 1584469407),
('object_add_dialog_custom_title.content', 'en', '', 1584469407, 1584469407),
('object_add_dialog_custom_title.content', 'es', '', 1584469407, 1584469407),
('object_add_dialog_custom_title.content', 'fa', '', 1584469407, 1584469407),
('object_add_dialog_custom_title.content', 'fr', '', 1584469407, 1584469407),
('object_add_dialog_custom_title.content', 'it', '', 1584469407, 1584469407),
('object_add_dialog_custom_title.content', 'ja', '', 1584469407, 1584469407),
('object_add_dialog_custom_title.content', 'nl', '', 1584469407, 1584469407),
('object_add_dialog_custom_title.content', 'pl', '', 1584469407, 1584469407),
('object_add_dialog_custom_title.content', 'pt_BR', '', 1584469407, 1584469407),
('object_add_dialog_custom_title.content', 'ru', '', 1584469407, 1584469407),
('object_add_dialog_custom_title.content', 'sk', '', 1584469407, 1584469407),
('object_add_dialog_custom_title.content', 'sv', '', 1584469407, 1584469407),
('object_add_dialog_custom_title.content', 'sv_FI', '', 1584469407, 1584469407),
('object_add_dialog_custom_title.content', 'tr', '', 1584469407, 1584469407),
('object_add_dialog_custom_title.content', 'uk', '', 1584469407, 1584469407),
('object_add_dialog_custom_title.content', 'zh_Hans', '', 1584469407, 1584469407),
('object_add_dialog_custom_title.product', 'cs', '', 1584468507, 1584468507),
('object_add_dialog_custom_title.product', 'de', '', 1584468507, 1584468507),
('object_add_dialog_custom_title.product', 'en', '', 1584468507, 1584468507),
('object_add_dialog_custom_title.product', 'es', '', 1584468507, 1584468507),
('object_add_dialog_custom_title.product', 'fa', '', 1584468507, 1584468507),
('object_add_dialog_custom_title.product', 'fr', '', 1584468507, 1584468507),
('object_add_dialog_custom_title.product', 'it', '', 1584468507, 1584468507),
('object_add_dialog_custom_title.product', 'ja', '', 1584468507, 1584468507),
('object_add_dialog_custom_title.product', 'nl', '', 1584468507, 1584468507),
('object_add_dialog_custom_title.product', 'pl', '', 1584468507, 1584468507),
('object_add_dialog_custom_title.product', 'pt_BR', '', 1584468507, 1584468507),
('object_add_dialog_custom_title.product', 'ru', '', 1584468507, 1584468507),
('object_add_dialog_custom_title.product', 'sk', '', 1584468507, 1584468507),
('object_add_dialog_custom_title.product', 'sv', '', 1584468507, 1584468507),
('object_add_dialog_custom_title.product', 'sv_FI', '', 1584468507, 1584468507),
('object_add_dialog_custom_title.product', 'tr', '', 1584468507, 1584468507),
('object_add_dialog_custom_title.product', 'uk', '', 1584468507, 1584468507),
('object_add_dialog_custom_title.product', 'zh_Hans', '', 1584468507, 1584468507),
('picture', 'cs', '', 1584468541, 1584468541),
('picture', 'de', '', 1584468541, 1584468541),
('picture', 'en', '', 1584468541, 1584468541),
('picture', 'es', '', 1584468541, 1584468541),
('picture', 'fa', '', 1584468541, 1584468541),
('picture', 'fr', '', 1584468541, 1584468541),
('picture', 'it', '', 1584468541, 1584468541),
('picture', 'ja', '', 1584468541, 1584468541),
('picture', 'nl', '', 1584468541, 1584468541),
('picture', 'pl', '', 1584468541, 1584468541),
('picture', 'pt_BR', '', 1584468541, 1584468541),
('picture', 'ru', '', 1584468541, 1584468541),
('picture', 'sk', '', 1584468541, 1584468541),
('picture', 'sv', '', 1584468541, 1584468541),
('picture', 'sv_FI', '', 1584468541, 1584468541),
('picture', 'tr', '', 1584468541, 1584468541),
('picture', 'uk', '', 1584468541, 1584468541),
('picture', 'zh_Hans', '', 1584468541, 1584468541),
('product', 'cs', '', 1584468390, 1584468390),
('product', 'de', '', 1584468390, 1584468390),
('product', 'en', '', 1584468390, 1584468390),
('product', 'es', '', 1584468390, 1584468390),
('product', 'fa', '', 1584468390, 1584468390),
('product', 'fr', '', 1584468390, 1584468390),
('product', 'it', '', 1584468390, 1584468390),
('product', 'ja', '', 1584468390, 1584468390),
('product', 'nl', '', 1584468390, 1584468390),
('product', 'pl', '', 1584468390, 1584468390),
('product', 'pt_BR', '', 1584468390, 1584468390),
('product', 'ru', '', 1584468390, 1584468390),
('product', 'sk', '', 1584468390, 1584468390),
('product', 'sv', '', 1584468390, 1584468390),
('product', 'sv_FI', '', 1584468390, 1584468390),
('product', 'tr', '', 1584468390, 1584468390),
('product', 'uk', '', 1584468390, 1584468390),
('product', 'zh_Hans', '', 1584468390, 1584468390),
('sku', 'cs', '', 1584468540, 1584468540),
('sku', 'de', '', 1584468540, 1584468540),
('sku', 'en', '', 1584468540, 1584468540),
('sku', 'es', '', 1584468540, 1584468540),
('sku', 'fa', '', 1584468540, 1584468540),
('sku', 'fr', '', 1584468540, 1584468540),
('sku', 'it', '', 1584468540, 1584468540),
('sku', 'ja', '', 1584468540, 1584468540),
('sku', 'nl', '', 1584468540, 1584468540),
('sku', 'pl', '', 1584468540, 1584468540),
('sku', 'pt_BR', '', 1584468540, 1584468540),
('sku', 'ru', '', 1584468540, 1584468540),
('sku', 'sk', '', 1584468540, 1584468540),
('sku', 'sv', '', 1584468540, 1584468540),
('sku', 'sv_FI', '', 1584468540, 1584468540),
('sku', 'tr', '', 1584468540, 1584468540),
('sku', 'uk', '', 1584468540, 1584468540),
('sku', 'zh_Hans', '', 1584468540, 1584468540),
('teaser', 'cs', '', 1584469408, 1584469408),
('teaser', 'de', '', 1584469408, 1584469408),
('teaser', 'en', '', 1584469408, 1584469408),
('teaser', 'es', '', 1584469408, 1584469408),
('teaser', 'fa', '', 1584469408, 1584469408),
('teaser', 'fr', '', 1584469408, 1584469408),
('teaser', 'it', '', 1584469408, 1584469408),
('teaser', 'ja', '', 1584469408, 1584469408),
('teaser', 'nl', '', 1584469408, 1584469408),
('teaser', 'pl', '', 1584469408, 1584469408),
('teaser', 'pt_BR', '', 1584469408, 1584469408),
('teaser', 'ru', '', 1584469408, 1584469408),
('teaser', 'sk', '', 1584469408, 1584469408),
('teaser', 'sv', '', 1584469408, 1584469408),
('teaser', 'sv_FI', '', 1584469408, 1584469408),
('teaser', 'tr', '', 1584469408, 1584469408),
('teaser', 'uk', '', 1584469408, 1584469408),
('teaser', 'zh_Hans', '', 1584469408, 1584469408),
('top', 'cs', '', 1584482832, 1584482832),
('top', 'de', '', 1584482832, 1584482832),
('top', 'en', '', 1584482832, 1584482832),
('top', 'es', '', 1584482832, 1584482832),
('top', 'fa', '', 1584482832, 1584482832),
('top', 'fr', '', 1584482832, 1584482832),
('top', 'it', '', 1584482832, 1584482832),
('top', 'ja', '', 1584482832, 1584482832),
('top', 'nl', '', 1584482832, 1584482832),
('top', 'pl', '', 1584482832, 1584482832),
('top', 'pt_BR', '', 1584482832, 1584482832),
('top', 'ru', '', 1584482832, 1584482832),
('top', 'sk', '', 1584482832, 1584482832),
('top', 'sv', '', 1584482832, 1584482832),
('top', 'sv_FI', '', 1584482832, 1584482832),
('top', 'tr', '', 1584482832, 1584482832),
('top', 'uk', '', 1584482832, 1584482832),
('top', 'zh_Hans', '', 1584482832, 1584482832);

-- --------------------------------------------------------

--
-- Table structure for table `translations_website`
--

CREATE TABLE `translations_website` (
  `key` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `language` varchar(10) NOT NULL DEFAULT '',
  `text` text,
  `creationDate` int(11) UNSIGNED DEFAULT NULL,
  `modificationDate` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tree_locks`
--

CREATE TABLE `tree_locks` (
  `id` int(11) NOT NULL DEFAULT '0',
  `type` enum('asset','document','object') NOT NULL DEFAULT 'asset',
  `locked` enum('self','propagate') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `parentId` int(11) UNSIGNED DEFAULT NULL,
  `type` enum('user','userfolder','role','rolefolder') NOT NULL DEFAULT 'user',
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(190) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `language` varchar(10) DEFAULT NULL,
  `contentLanguages` longtext,
  `admin` tinyint(1) UNSIGNED DEFAULT '0',
  `active` tinyint(1) UNSIGNED DEFAULT '1',
  `permissions` text,
  `roles` varchar(1000) DEFAULT NULL,
  `welcomescreen` tinyint(1) DEFAULT NULL,
  `closeWarning` tinyint(1) DEFAULT NULL,
  `memorizeTabs` tinyint(1) DEFAULT NULL,
  `allowDirtyClose` tinyint(1) UNSIGNED DEFAULT '1',
  `docTypes` varchar(255) DEFAULT NULL,
  `classes` text,
  `apiKey` varchar(255) DEFAULT NULL,
  `twoFactorAuthentication` varchar(255) DEFAULT NULL,
  `activePerspective` varchar(255) DEFAULT NULL,
  `perspectives` longtext,
  `websiteTranslationLanguagesEdit` longtext,
  `websiteTranslationLanguagesView` longtext,
  `lastLogin` int(11) UNSIGNED DEFAULT NULL,
  `keyBindings` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `parentId`, `type`, `name`, `password`, `firstname`, `lastname`, `email`, `language`, `contentLanguages`, `admin`, `active`, `permissions`, `roles`, `welcomescreen`, `closeWarning`, `memorizeTabs`, `allowDirtyClose`, `docTypes`, `classes`, `apiKey`, `twoFactorAuthentication`, `activePerspective`, `perspectives`, `websiteTranslationLanguagesEdit`, `websiteTranslationLanguagesView`, `lastLogin`, `keyBindings`) VALUES
(0, 0, 'user', 'system', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 0, 'user', 'admin', '$2y$10$0PH69Do0nZkjvqiP.uH.9.6jjfdvLriW47x.INHaaa3JObS2R1EWe', NULL, NULL, NULL, 'en', NULL, 1, 1, '', '', 0, 1, 1, 0, '', '', NULL, 'null', NULL, '', '', '', 1584465196, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_permission_definitions`
--

CREATE TABLE `users_permission_definitions` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `category` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_permission_definitions`
--

INSERT INTO `users_permission_definitions` (`key`, `category`) VALUES
('admin_translations', ''),
('application_logging', ''),
('assets', ''),
('asset_metadata', ''),
('classes', ''),
('clear_cache', ''),
('clear_fullpage_cache', ''),
('clear_temp_files', ''),
('dashboards', ''),
('documents', ''),
('document_types', ''),
('emails', ''),
('gdpr_data_extractor', ''),
('glossary', ''),
('http_errors', ''),
('notes_events', ''),
('notifications', ''),
('notifications_send', ''),
('objects', ''),
('piwik_reports', ''),
('piwik_settings', ''),
('plugins', ''),
('predefined_properties', ''),
('qr_codes', ''),
('recyclebin', ''),
('redirects', ''),
('reports', ''),
('reports_config', ''),
('robots.txt', ''),
('routes', ''),
('seemode', ''),
('seo_document_editor', ''),
('share_configurations', ''),
('system_settings', ''),
('tags_assignment', ''),
('tags_configuration', ''),
('tags_search', ''),
('tag_snippet_management', ''),
('targeting', ''),
('thumbnails', ''),
('translations', ''),
('users', ''),
('web2print_settings', ''),
('website_settings', ''),
('workflow_details', '');

-- --------------------------------------------------------

--
-- Table structure for table `users_workspaces_asset`
--

CREATE TABLE `users_workspaces_asset` (
  `cid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `cpath` varchar(765) CHARACTER SET utf8 DEFAULT NULL,
  `userId` int(11) NOT NULL DEFAULT '0',
  `list` tinyint(1) DEFAULT '0',
  `view` tinyint(1) DEFAULT '0',
  `publish` tinyint(1) DEFAULT '0',
  `delete` tinyint(1) DEFAULT '0',
  `rename` tinyint(1) DEFAULT '0',
  `create` tinyint(1) DEFAULT '0',
  `settings` tinyint(1) DEFAULT '0',
  `versions` tinyint(1) DEFAULT '0',
  `properties` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `users_workspaces_document`
--

CREATE TABLE `users_workspaces_document` (
  `cid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `cpath` varchar(765) CHARACTER SET utf8 DEFAULT NULL,
  `userId` int(11) NOT NULL DEFAULT '0',
  `list` tinyint(1) UNSIGNED DEFAULT '0',
  `view` tinyint(1) UNSIGNED DEFAULT '0',
  `save` tinyint(1) UNSIGNED DEFAULT '0',
  `publish` tinyint(1) UNSIGNED DEFAULT '0',
  `unpublish` tinyint(1) UNSIGNED DEFAULT '0',
  `delete` tinyint(1) UNSIGNED DEFAULT '0',
  `rename` tinyint(1) UNSIGNED DEFAULT '0',
  `create` tinyint(1) UNSIGNED DEFAULT '0',
  `settings` tinyint(1) UNSIGNED DEFAULT '0',
  `versions` tinyint(1) UNSIGNED DEFAULT '0',
  `properties` tinyint(1) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `users_workspaces_object`
--

CREATE TABLE `users_workspaces_object` (
  `cid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `cpath` varchar(765) CHARACTER SET utf8 DEFAULT NULL,
  `userId` int(11) NOT NULL DEFAULT '0',
  `list` tinyint(1) UNSIGNED DEFAULT '0',
  `view` tinyint(1) UNSIGNED DEFAULT '0',
  `save` tinyint(1) UNSIGNED DEFAULT '0',
  `publish` tinyint(1) UNSIGNED DEFAULT '0',
  `unpublish` tinyint(1) UNSIGNED DEFAULT '0',
  `delete` tinyint(1) UNSIGNED DEFAULT '0',
  `rename` tinyint(1) UNSIGNED DEFAULT '0',
  `create` tinyint(1) UNSIGNED DEFAULT '0',
  `settings` tinyint(1) UNSIGNED DEFAULT '0',
  `versions` tinyint(1) UNSIGNED DEFAULT '0',
  `properties` tinyint(1) UNSIGNED DEFAULT '0',
  `lEdit` text,
  `lView` text,
  `layouts` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `uuids`
--

CREATE TABLE `uuids` (
  `uuid` char(36) NOT NULL,
  `itemId` int(11) UNSIGNED NOT NULL,
  `type` varchar(25) NOT NULL,
  `instanceIdentifier` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `versions`
--

CREATE TABLE `versions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cid` int(11) UNSIGNED DEFAULT NULL,
  `ctype` enum('document','asset','object') DEFAULT NULL,
  `userId` int(11) UNSIGNED DEFAULT NULL,
  `note` text,
  `stackTrace` text,
  `date` int(11) UNSIGNED DEFAULT NULL,
  `public` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `serialized` tinyint(1) UNSIGNED DEFAULT '0',
  `versionCount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `binaryFileHash` varchar(128) CHARACTER SET ascii DEFAULT NULL,
  `binaryFileId` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `versions`
--

INSERT INTO `versions` (`id`, `cid`, `ctype`, `userId`, `note`, `stackTrace`, `date`, `public`, `serialized`, `versionCount`, `binaryFileHash`, `binaryFileId`) VALUES
(4, 3, 'asset', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(852): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(540): Pimcore\\Model\\Asset->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(374): Pimcore\\Model\\Asset->save()\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\AssetController.php(441): Pimcore\\Model\\Asset::create(2, Array)\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\AssetController.php(324): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset(Object(Symfony\\Component\\HttpFoundation\\Request), Object(Pimcore\\Config))\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetCompatibilityAction(Object(Symfony\\Component\\HttpFoundation\\Request), Object(Pimcore\\Config))\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#9 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#10 {main}', 1584466276, 0, 1, 1, '4f5e682eb7d610b22f28900fa2b3372d29d883a2deffa0894639d77339dfc3d120ef4b327ef2ed65988e580c42c19b38e97f06f2328286bd43a33b633ae70525', NULL),
(5, 4, 'asset', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(852): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(540): Pimcore\\Model\\Asset->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(374): Pimcore\\Model\\Asset->save()\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\AssetController.php(441): Pimcore\\Model\\Asset::create(2, Array)\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\AssetController.php(324): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset(Object(Symfony\\Component\\HttpFoundation\\Request), Object(Pimcore\\Config))\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetCompatibilityAction(Object(Symfony\\Component\\HttpFoundation\\Request), Object(Pimcore\\Config))\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#9 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#10 {main}', 1584466287, 0, 1, 1, '5cc5cf4011285c1f40499a4900324c0be0e13a15d7b05efb660a66c63b66c9d29b869ebb73317f5b9e4d8b1e0346c06f5247a6aa8f13dff0e4b642716b16de35', NULL),
(6, 5, 'asset', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(852): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(540): Pimcore\\Model\\Asset->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(374): Pimcore\\Model\\Asset->save()\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\AssetController.php(441): Pimcore\\Model\\Asset::create(2, Array)\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\AssetController.php(324): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset(Object(Symfony\\Component\\HttpFoundation\\Request), Object(Pimcore\\Config))\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetCompatibilityAction(Object(Symfony\\Component\\HttpFoundation\\Request), Object(Pimcore\\Config))\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#9 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#10 {main}', 1584466296, 0, 1, 1, '66ed2322a0b99df940a68df250c5ff6353c1d188a9c3a0e052f2e419e0638aedaa0190ade1d5ea9b4160a293211eb74ca13adaefd78013fcec18c432d7ca14b7', NULL),
(13, 5, 'object', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(291): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(199): Pimcore\\Model\\DataObject\\Concrete->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\AbstractObject.php(639): Pimcore\\Model\\DataObject\\Concrete->update(false, Array)\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(735): Pimcore\\Model\\DataObject\\AbstractObject->save(Array)\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController.php(842): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->addAction(Object(Symfony\\Component\\HttpFoundation\\Request))\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#9 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#10 {main}', 1584468506, 0, 1, 1, NULL, NULL),
(14, 6, 'asset', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(852): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(540): Pimcore\\Model\\Asset->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(374): Pimcore\\Model\\Asset->save()\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\AssetController.php(441): Pimcore\\Model\\Asset::create(2, Array)\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\AssetController.php(324): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset(Object(Symfony\\Component\\HttpFoundation\\Request), Object(Pimcore\\Config))\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetCompatibilityAction(Object(Symfony\\Component\\HttpFoundation\\Request), Object(Pimcore\\Config))\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#9 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#10 {main}', 1584468518, 0, 1, 1, '4f5e682eb7d610b22f28900fa2b3372d29d883a2deffa0894639d77339dfc3d120ef4b327ef2ed65988e580c42c19b38e97f06f2328286bd43a33b633ae70525', NULL),
(15, 5, 'object', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(291): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(199): Pimcore\\Model\\DataObject\\Concrete->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\AbstractObject.php(639): Pimcore\\Model\\DataObject\\Concrete->update(true, Array)\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(735): Pimcore\\Model\\DataObject\\AbstractObject->save(Array)\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController.php(1280): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction(Object(Symfony\\Component\\HttpFoundation\\Request))\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#9 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#10 {main}', 1584468523, 0, 1, 2, NULL, NULL),
(22, 7, 'asset', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(852): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(540): Pimcore\\Model\\Asset->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(374): Pimcore\\Model\\Asset->save()\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\AssetController.php(441): Pimcore\\Model\\Asset::create(2, Array)\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\AssetController.php(324): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset(Object(Symfony\\Component\\HttpFoundation\\Request), Object(Pimcore\\Config))\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetCompatibilityAction(Object(Symfony\\Component\\HttpFoundation\\Request), Object(Pimcore\\Config))\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#9 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#10 {main}', 1584469060, 0, 1, 1, '4f5e682eb7d610b22f28900fa2b3372d29d883a2deffa0894639d77339dfc3d120ef4b327ef2ed65988e580c42c19b38e97f06f2328286bd43a33b633ae70525', NULL),
(26, 7, 'object', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(291): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(199): Pimcore\\Model\\DataObject\\Concrete->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\AbstractObject.php(639): Pimcore\\Model\\DataObject\\Concrete->update(false, Array)\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(735): Pimcore\\Model\\DataObject\\AbstractObject->save(Array)\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController.php(842): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->addAction(Object(Symfony\\Component\\HttpFoundation\\Request))\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#9 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#10 {main}', 1584469396, 0, 1, 1, NULL, NULL),
(27, 8, 'asset', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(852): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(540): Pimcore\\Model\\Asset->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(374): Pimcore\\Model\\Asset->save()\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\AssetController.php(441): Pimcore\\Model\\Asset::create(2, Array)\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\AssetController.php(324): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset(Object(Symfony\\Component\\HttpFoundation\\Request), Object(Pimcore\\Config))\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetCompatibilityAction(Object(Symfony\\Component\\HttpFoundation\\Request), Object(Pimcore\\Config))\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#9 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#10 {main}', 1584469410, 0, 1, 1, 'e0353d4d4356597c862a494b9baf685f97b18610c2b1e201a23eb39e46e87cb4eeca590bb5898fe00a786d51471f760fe8890ed2494b0cca69986ca571db5a12', NULL),
(28, 7, 'object', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(291): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(199): Pimcore\\Model\\DataObject\\Concrete->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\AbstractObject.php(639): Pimcore\\Model\\DataObject\\Concrete->update(true, Array)\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(735): Pimcore\\Model\\DataObject\\AbstractObject->save(Array)\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController.php(1280): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction(Object(Symfony\\Component\\HttpFoundation\\Request))\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#9 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#10 {main}', 1584469417, 0, 1, 2, NULL, NULL),
(32, 8, 'object', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(291): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(199): Pimcore\\Model\\DataObject\\Concrete->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\AbstractObject.php(639): Pimcore\\Model\\DataObject\\Concrete->update(false, Array)\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(735): Pimcore\\Model\\DataObject\\AbstractObject->save(Array)\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController.php(842): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->addAction(Object(Symfony\\Component\\HttpFoundation\\Request))\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#9 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#10 {main}', 1584469608, 0, 1, 1, NULL, NULL),
(33, 9, 'asset', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(852): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(540): Pimcore\\Model\\Asset->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(374): Pimcore\\Model\\Asset->save()\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\AssetController.php(441): Pimcore\\Model\\Asset::create(2, Array)\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\AssetController.php(324): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset(Object(Symfony\\Component\\HttpFoundation\\Request), Object(Pimcore\\Config))\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetCompatibilityAction(Object(Symfony\\Component\\HttpFoundation\\Request), Object(Pimcore\\Config))\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#9 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#10 {main}', 1584469620, 0, 1, 1, '66ed2322a0b99df940a68df250c5ff6353c1d188a9c3a0e052f2e419e0638aedaa0190ade1d5ea9b4160a293211eb74ca13adaefd78013fcec18c432d7ca14b7', NULL),
(34, 8, 'object', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(291): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(199): Pimcore\\Model\\DataObject\\Concrete->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\AbstractObject.php(639): Pimcore\\Model\\DataObject\\Concrete->update(true, Array)\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(735): Pimcore\\Model\\DataObject\\AbstractObject->save(Array)\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController.php(1280): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction(Object(Symfony\\Component\\HttpFoundation\\Request))\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#9 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#10 {main}', 1584469623, 0, 1, 2, NULL, NULL),
(36, 6, 'document', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Document\\PageSnippet.php(159): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Document\\PageSnippet.php(120): Pimcore\\Model\\Document\\PageSnippet->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Document.php(427): Pimcore\\Model\\Document\\PageSnippet->update(Array)\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\Document\\DocumentController.php(258): Pimcore\\Model\\Document->save()\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\Document\\DocumentController->addAction(Object(Symfony\\Component\\HttpFoundation\\Request))\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#9 {main}', 1584470140, 0, 1, 1, NULL, NULL),
(37, 6, 'document', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Document\\PageSnippet.php(159): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Document\\PageSnippet.php(120): Pimcore\\Model\\Document\\PageSnippet->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Document.php(427): Pimcore\\Model\\Document\\PageSnippet->update(Array)\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\Document\\PageController.php(151): Pimcore\\Model\\Document->save()\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\Document\\PageController->saveAction(Object(Symfony\\Component\\HttpFoundation\\Request))\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#9 {main}', 1584470172, 0, 1, 2, NULL, NULL),
(38, 6, 'document', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Document\\PageSnippet.php(159): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Document\\PageSnippet.php(120): Pimcore\\Model\\Document\\PageSnippet->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Document.php(427): Pimcore\\Model\\Document\\PageSnippet->update(Array)\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\Document\\PageController.php(151): Pimcore\\Model\\Document->save()\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\Document\\PageController->saveAction(Object(Symfony\\Component\\HttpFoundation\\Request))\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#9 {main}', 1584471301, 0, 1, 3, NULL, NULL),
(39, 6, 'document', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Document\\PageSnippet.php(159): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Document\\PageSnippet.php(120): Pimcore\\Model\\Document\\PageSnippet->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Document.php(427): Pimcore\\Model\\Document\\PageSnippet->update(Array)\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\Document\\PageController.php(151): Pimcore\\Model\\Document->save()\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\Document\\PageController->saveAction(Object(Symfony\\Component\\HttpFoundation\\Request))\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#9 {main}', 1584471357, 0, 1, 4, NULL, NULL),
(40, 6, 'document', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Document\\PageSnippet.php(159): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Document\\PageSnippet.php(120): Pimcore\\Model\\Document\\PageSnippet->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Document.php(427): Pimcore\\Model\\Document\\PageSnippet->update(Array)\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\Document\\PageController.php(151): Pimcore\\Model\\Document->save()\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\Document\\PageController->saveAction(Object(Symfony\\Component\\HttpFoundation\\Request))\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#9 {main}', 1584471382, 0, 1, 5, NULL, NULL),
(41, 6, 'document', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Document\\PageSnippet.php(159): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Document\\PageSnippet.php(120): Pimcore\\Model\\Document\\PageSnippet->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Document.php(427): Pimcore\\Model\\Document\\PageSnippet->update(Array)\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\Document\\PageController.php(151): Pimcore\\Model\\Document->save()\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\Document\\PageController->saveAction(Object(Symfony\\Component\\HttpFoundation\\Request))\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#9 {main}', 1584471391, 0, 1, 6, NULL, NULL),
(42, 6, 'document', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Document\\PageSnippet.php(159): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Document\\PageSnippet.php(120): Pimcore\\Model\\Document\\PageSnippet->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Document.php(427): Pimcore\\Model\\Document\\PageSnippet->update(Array)\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\Document\\PageController.php(151): Pimcore\\Model\\Document->save()\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\Document\\PageController->saveAction(Object(Symfony\\Component\\HttpFoundation\\Request))\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#9 {main}', 1584472110, 0, 1, 7, NULL, NULL),
(43, 6, 'document', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Document\\PageSnippet.php(159): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Document\\PageSnippet.php(120): Pimcore\\Model\\Document\\PageSnippet->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Document.php(427): Pimcore\\Model\\Document\\PageSnippet->update(Array)\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\Document\\PageController.php(151): Pimcore\\Model\\Document->save()\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\Document\\PageController->saveAction(Object(Symfony\\Component\\HttpFoundation\\Request))\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#9 {main}', 1584472129, 0, 1, 8, NULL, NULL),
(44, 7, 'object', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(291): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(199): Pimcore\\Model\\DataObject\\Concrete->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\AbstractObject.php(639): Pimcore\\Model\\DataObject\\Concrete->update(true, Array)\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(735): Pimcore\\Model\\DataObject\\AbstractObject->save(Array)\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController.php(1280): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction(Object(Symfony\\Component\\HttpFoundation\\Request))\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#9 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#10 {main}', 1584472136, 0, 1, 3, NULL, NULL),
(45, 8, 'object', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(291): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(199): Pimcore\\Model\\DataObject\\Concrete->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\AbstractObject.php(639): Pimcore\\Model\\DataObject\\Concrete->update(true, Array)\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(735): Pimcore\\Model\\DataObject\\AbstractObject->save(Array)\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController.php(1280): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction(Object(Symfony\\Component\\HttpFoundation\\Request))\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#9 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#10 {main}', 1584472184, 0, 1, 3, NULL, NULL);
INSERT INTO `versions` (`id`, `cid`, `ctype`, `userId`, `note`, `stackTrace`, `date`, `public`, `serialized`, `versionCount`, `binaryFileHash`, `binaryFileId`) VALUES
(46, 7, 'object', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(291): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(199): Pimcore\\Model\\DataObject\\Concrete->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\AbstractObject.php(639): Pimcore\\Model\\DataObject\\Concrete->update(true, Array)\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(735): Pimcore\\Model\\DataObject\\AbstractObject->save(Array)\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController.php(1280): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction(Object(Symfony\\Component\\HttpFoundation\\Request))\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#9 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#10 {main}', 1584472200, 0, 1, 4, NULL, NULL),
(47, 7, 'object', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(291): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(199): Pimcore\\Model\\DataObject\\Concrete->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\AbstractObject.php(639): Pimcore\\Model\\DataObject\\Concrete->update(true, Array)\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(735): Pimcore\\Model\\DataObject\\AbstractObject->save(Array)\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController.php(1280): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction(Object(Symfony\\Component\\HttpFoundation\\Request))\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#9 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#10 {main}', 1584478824, 0, 1, 5, NULL, NULL),
(48, 8, 'object', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(291): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(199): Pimcore\\Model\\DataObject\\Concrete->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\AbstractObject.php(639): Pimcore\\Model\\DataObject\\Concrete->update(true, Array)\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(735): Pimcore\\Model\\DataObject\\AbstractObject->save(Array)\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController.php(1280): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction(Object(Symfony\\Component\\HttpFoundation\\Request))\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#9 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#10 {main}', 1584478849, 0, 1, 4, NULL, NULL),
(49, 9, 'object', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(291): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(199): Pimcore\\Model\\DataObject\\Concrete->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\AbstractObject.php(639): Pimcore\\Model\\DataObject\\Concrete->update(false, Array)\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(735): Pimcore\\Model\\DataObject\\AbstractObject->save(Array)\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController.php(842): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->addAction(Object(Symfony\\Component\\HttpFoundation\\Request))\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#9 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#10 {main}', 1584478869, 0, 1, 1, NULL, NULL),
(50, 9, 'object', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(291): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(199): Pimcore\\Model\\DataObject\\Concrete->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\AbstractObject.php(639): Pimcore\\Model\\DataObject\\Concrete->update(true, Array)\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(735): Pimcore\\Model\\DataObject\\AbstractObject->save(Array)\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController.php(1280): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction(Object(Symfony\\Component\\HttpFoundation\\Request))\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#9 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#10 {main}', 1584478882, 0, 1, 2, NULL, NULL),
(51, 10, 'asset', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(852): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(540): Pimcore\\Model\\Asset->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(374): Pimcore\\Model\\Asset->save()\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\AssetController.php(441): Pimcore\\Model\\Asset::create(2, Array)\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\AssetController.php(324): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset(Object(Symfony\\Component\\HttpFoundation\\Request), Object(Pimcore\\Config))\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetCompatibilityAction(Object(Symfony\\Component\\HttpFoundation\\Request), Object(Pimcore\\Config))\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#9 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#10 {main}', 1584478904, 0, 1, 1, '66ed2322a0b99df940a68df250c5ff6353c1d188a9c3a0e052f2e419e0638aedaa0190ade1d5ea9b4160a293211eb74ca13adaefd78013fcec18c432d7ca14b7', NULL),
(52, 9, 'object', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(291): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(199): Pimcore\\Model\\DataObject\\Concrete->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\AbstractObject.php(639): Pimcore\\Model\\DataObject\\Concrete->update(true, Array)\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(735): Pimcore\\Model\\DataObject\\AbstractObject->save(Array)\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController.php(1280): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction(Object(Symfony\\Component\\HttpFoundation\\Request))\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#9 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#10 {main}', 1584478908, 0, 1, 3, NULL, NULL),
(53, 11, 'asset', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(852): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(540): Pimcore\\Model\\Asset->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(374): Pimcore\\Model\\Asset->save()\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\AssetController.php(441): Pimcore\\Model\\Asset::create(2, Array)\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\AssetController.php(324): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset(Object(Symfony\\Component\\HttpFoundation\\Request), Object(Pimcore\\Config))\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetCompatibilityAction(Object(Symfony\\Component\\HttpFoundation\\Request), Object(Pimcore\\Config))\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#9 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#10 {main}', 1584478918, 0, 1, 1, 'd04e609bd5c069751be8261ee41ab3d1fe996f544d99974d6c8a3a4ccee639d25acd3837d90c6b0cec3d421dcdf334afe9df6408192e3c457c97358bb8be5e43', NULL),
(54, 9, 'object', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(291): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(199): Pimcore\\Model\\DataObject\\Concrete->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\AbstractObject.php(639): Pimcore\\Model\\DataObject\\Concrete->update(true, Array)\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(735): Pimcore\\Model\\DataObject\\AbstractObject->save(Array)\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController.php(1280): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction(Object(Symfony\\Component\\HttpFoundation\\Request))\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#9 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#10 {main}', 1584478921, 0, 1, 4, NULL, NULL),
(55, 12, 'asset', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(852): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(540): Pimcore\\Model\\Asset->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(374): Pimcore\\Model\\Asset->save()\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\AssetController.php(441): Pimcore\\Model\\Asset::create(2, Array)\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\AssetController.php(324): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset(Object(Symfony\\Component\\HttpFoundation\\Request), Object(Pimcore\\Config))\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetCompatibilityAction(Object(Symfony\\Component\\HttpFoundation\\Request), Object(Pimcore\\Config))\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#9 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#10 {main}', 1584478938, 0, 1, 1, '4954abcf70a2d78e2170097d3e92e9ab237bb58f8c68d85332a0be4b4ff8fb3b3be26d3ceb5188165de2fc498d82251521bb7ace06e7510b118c17d68fbf4266', NULL),
(56, 9, 'object', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(291): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(199): Pimcore\\Model\\DataObject\\Concrete->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\AbstractObject.php(639): Pimcore\\Model\\DataObject\\Concrete->update(true, Array)\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(735): Pimcore\\Model\\DataObject\\AbstractObject->save(Array)\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController.php(1280): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction(Object(Symfony\\Component\\HttpFoundation\\Request))\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#9 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#10 {main}', 1584478941, 0, 1, 5, NULL, NULL),
(57, 13, 'asset', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(852): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(540): Pimcore\\Model\\Asset->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(374): Pimcore\\Model\\Asset->save()\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\AssetController.php(441): Pimcore\\Model\\Asset::create(2, Array)\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\AssetController.php(324): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset(Object(Symfony\\Component\\HttpFoundation\\Request), Object(Pimcore\\Config))\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetCompatibilityAction(Object(Symfony\\Component\\HttpFoundation\\Request), Object(Pimcore\\Config))\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#9 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#10 {main}', 1584478960, 0, 1, 1, '012927634b46ac648f9f7606ed092f4b99c03e689effe3c7ee7e2e62be36f771140db40b10516fd7080cbf122fbb36d22ca5e3d6a3361035e9cda2f1b9587e92', NULL),
(58, 8, 'asset', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(852): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(540): Pimcore\\Model\\Asset->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\AssetController.php(944): Pimcore\\Model\\Asset->save()\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->saveAction(Object(Symfony\\Component\\HttpFoundation\\Request))\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#8 {main}', 1584478962, 0, 1, 2, 'e0353d4d4356597c862a494b9baf685f97b18610c2b1e201a23eb39e46e87cb4eeca590bb5898fe00a786d51471f760fe8890ed2494b0cca69986ca571db5a12', 27),
(59, 14, 'asset', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(852): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(540): Pimcore\\Model\\Asset->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(374): Pimcore\\Model\\Asset->save()\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\AssetController.php(441): Pimcore\\Model\\Asset::create(2, Array)\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\AssetController.php(324): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset(Object(Symfony\\Component\\HttpFoundation\\Request), Object(Pimcore\\Config))\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetCompatibilityAction(Object(Symfony\\Component\\HttpFoundation\\Request), Object(Pimcore\\Config))\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#9 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#10 {main}', 1584478981, 0, 1, 1, 'e5896e1ece80596ff47786c1af879852592b19380be86e1c15b3135fdb16d13786f3af23c87ea5b18e4ff369d31c6b9d9ae3583275245587bca2321af1c7496f', NULL),
(60, 15, 'asset', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(852): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(540): Pimcore\\Model\\Asset->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(374): Pimcore\\Model\\Asset->save()\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\AssetController.php(441): Pimcore\\Model\\Asset::create(2, Array)\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\AssetController.php(324): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset(Object(Symfony\\Component\\HttpFoundation\\Request), Object(Pimcore\\Config))\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetCompatibilityAction(Object(Symfony\\Component\\HttpFoundation\\Request), Object(Pimcore\\Config))\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#9 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#10 {main}', 1584478991, 0, 1, 1, '4001422b46db768baef7bf9627ed4b661e96f0da3294a22aaa55b3674110a908b73d11a52571872dd75a10523f15c5f6e6ed0efdc3ba77cb8ebba9a408ab2801', NULL),
(61, 8, 'object', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(291): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(199): Pimcore\\Model\\DataObject\\Concrete->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\AbstractObject.php(639): Pimcore\\Model\\DataObject\\Concrete->update(true, Array)\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(735): Pimcore\\Model\\DataObject\\AbstractObject->save(Array)\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController.php(1280): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction(Object(Symfony\\Component\\HttpFoundation\\Request))\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#9 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#10 {main}', 1584478995, 0, 1, 5, NULL, NULL),
(62, 16, 'asset', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(852): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(540): Pimcore\\Model\\Asset->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(374): Pimcore\\Model\\Asset->save()\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\AssetController.php(441): Pimcore\\Model\\Asset::create(2, Array)\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\AssetController.php(324): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset(Object(Symfony\\Component\\HttpFoundation\\Request), Object(Pimcore\\Config))\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetCompatibilityAction(Object(Symfony\\Component\\HttpFoundation\\Request), Object(Pimcore\\Config))\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#9 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#10 {main}', 1584479020, 0, 1, 1, 'b39550b01b2076286d58ea959cfbf2ffc51d3b5e95f43c3b6b6d7f527b683aae994da983662b652093b95d5ffda3c81ee86ea95f466798ddb0b268054f2ed11a', NULL),
(63, 7, 'object', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(291): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(199): Pimcore\\Model\\DataObject\\Concrete->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\AbstractObject.php(639): Pimcore\\Model\\DataObject\\Concrete->update(true, Array)\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(735): Pimcore\\Model\\DataObject\\AbstractObject->save(Array)\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController.php(1280): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction(Object(Symfony\\Component\\HttpFoundation\\Request))\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#9 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#10 {main}', 1584479023, 0, 1, 6, NULL, NULL),
(64, 17, 'asset', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(852): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(540): Pimcore\\Model\\Asset->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(374): Pimcore\\Model\\Asset->save()\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\AssetController.php(441): Pimcore\\Model\\Asset::create(2, Array)\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\AssetController.php(324): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset(Object(Symfony\\Component\\HttpFoundation\\Request), Object(Pimcore\\Config))\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetCompatibilityAction(Object(Symfony\\Component\\HttpFoundation\\Request), Object(Pimcore\\Config))\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#9 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#10 {main}', 1584479033, 0, 1, 1, '66ed2322a0b99df940a68df250c5ff6353c1d188a9c3a0e052f2e419e0638aedaa0190ade1d5ea9b4160a293211eb74ca13adaefd78013fcec18c432d7ca14b7', NULL),
(65, 8, 'object', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(291): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(199): Pimcore\\Model\\DataObject\\Concrete->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\AbstractObject.php(639): Pimcore\\Model\\DataObject\\Concrete->update(true, Array)\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(735): Pimcore\\Model\\DataObject\\AbstractObject->save(Array)\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController.php(1280): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction(Object(Symfony\\Component\\HttpFoundation\\Request))\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#9 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#10 {main}', 1584479036, 0, 1, 6, NULL, NULL),
(66, 10, 'object', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(291): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(199): Pimcore\\Model\\DataObject\\Concrete->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\AbstractObject.php(639): Pimcore\\Model\\DataObject\\Concrete->update(false, Array)\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(735): Pimcore\\Model\\DataObject\\AbstractObject->save(Array)\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController.php(842): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->addAction(Object(Symfony\\Component\\HttpFoundation\\Request))\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#9 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#10 {main}', 1584479054, 0, 1, 1, NULL, NULL),
(67, 18, 'asset', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(852): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(540): Pimcore\\Model\\Asset->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(374): Pimcore\\Model\\Asset->save()\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\AssetController.php(441): Pimcore\\Model\\Asset::create(2, Array)\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\AssetController.php(324): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset(Object(Symfony\\Component\\HttpFoundation\\Request), Object(Pimcore\\Config))\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetCompatibilityAction(Object(Symfony\\Component\\HttpFoundation\\Request), Object(Pimcore\\Config))\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#9 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#10 {main}', 1584479076, 0, 1, 1, 'b8fc52c29afa27d9edd080b66e1cbbcd956f987c3c73323e9efda9c908b79bd3d36b034b35d779f29b61de739076ae7f7c56b252792904b37687d42011bf2693', NULL);
INSERT INTO `versions` (`id`, `cid`, `ctype`, `userId`, `note`, `stackTrace`, `date`, `public`, `serialized`, `versionCount`, `binaryFileHash`, `binaryFileId`) VALUES
(68, 19, 'asset', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(852): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(540): Pimcore\\Model\\Asset->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(374): Pimcore\\Model\\Asset->save()\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\AssetController.php(441): Pimcore\\Model\\Asset::create(2, Array)\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\AssetController.php(296): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset(Object(Symfony\\Component\\HttpFoundation\\Request), Object(Pimcore\\Config))\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetAction(Object(Symfony\\Component\\HttpFoundation\\Request), Object(Pimcore\\Config))\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#9 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#10 {main}', 1584479092, 0, 1, 1, '4f5e682eb7d610b22f28900fa2b3372d29d883a2deffa0894639d77339dfc3d120ef4b327ef2ed65988e580c42c19b38e97f06f2328286bd43a33b633ae70525', NULL),
(69, 20, 'asset', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(852): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(540): Pimcore\\Model\\Asset->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(374): Pimcore\\Model\\Asset->save()\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\AssetController.php(441): Pimcore\\Model\\Asset::create(2, Array)\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\AssetController.php(296): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset(Object(Symfony\\Component\\HttpFoundation\\Request), Object(Pimcore\\Config))\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetAction(Object(Symfony\\Component\\HttpFoundation\\Request), Object(Pimcore\\Config))\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#9 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#10 {main}', 1584479100, 0, 1, 1, '4954abcf70a2d78e2170097d3e92e9ab237bb58f8c68d85332a0be4b4ff8fb3b3be26d3ceb5188165de2fc498d82251521bb7ace06e7510b118c17d68fbf4266', NULL),
(70, 21, 'asset', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(852): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(540): Pimcore\\Model\\Asset->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Asset.php(374): Pimcore\\Model\\Asset->save()\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\AssetController.php(441): Pimcore\\Model\\Asset::create(2, Array)\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\AssetController.php(296): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset(Object(Symfony\\Component\\HttpFoundation\\Request), Object(Pimcore\\Config))\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetAction(Object(Symfony\\Component\\HttpFoundation\\Request), Object(Pimcore\\Config))\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#9 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#10 {main}', 1584479106, 0, 1, 1, '11b9cfe9b08ffcc0bef898968768d4f95e69bbb2794e0de389604b0668bc51731bcad5bbc87661af5ef190d2058b0c667e583bad3c8aa4e0b231398dcf4a371f', NULL),
(71, 10, 'object', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(291): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(199): Pimcore\\Model\\DataObject\\Concrete->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\AbstractObject.php(639): Pimcore\\Model\\DataObject\\Concrete->update(true, Array)\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\DataObject\\Concrete.php(735): Pimcore\\Model\\DataObject\\AbstractObject->save(Array)\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController.php(1280): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction(Object(Symfony\\Component\\HttpFoundation\\Request))\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#9 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#10 {main}', 1584479108, 0, 1, 2, NULL, NULL),
(74, 8, 'document', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Document\\PageSnippet.php(159): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Document\\PageSnippet.php(120): Pimcore\\Model\\Document\\PageSnippet->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Document.php(427): Pimcore\\Model\\Document\\PageSnippet->update(Array)\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\Document\\DocumentController.php(258): Pimcore\\Model\\Document->save()\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\Document\\DocumentController->addAction(Object(Symfony\\Component\\HttpFoundation\\Request))\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#9 {main}', 1584479618, 0, 1, 1, NULL, NULL),
(75, 8, 'document', 2, '', '#0 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Element\\AbstractElement.php(318): Pimcore\\Model\\Version->save()\n#1 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Document\\PageSnippet.php(159): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion(NULL, false)\n#2 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Document\\PageSnippet.php(120): Pimcore\\Model\\Document\\PageSnippet->saveVersion(false, false, NULL)\n#3 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\models\\Document.php(427): Pimcore\\Model\\Document\\PageSnippet->update(Array)\n#4 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\pimcore\\pimcore\\bundles\\AdminBundle\\Controller\\Admin\\Document\\PageController.php(151): Pimcore\\Model\\Document->save()\n#5 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(146): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\Document\\PageController->saveAction(Object(Symfony\\Component\\HttpFoundation\\Request))\n#6 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\HttpKernel.php(68): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw(Object(Symfony\\Component\\HttpFoundation\\Request), 1)\n#7 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\vendor\\symfony\\symfony\\src\\Symfony\\Component\\HttpKernel\\Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request), 1, true)\n#8 C:\\Bitnami\\pimcore-6.5.3-0\\apps\\pimcore\\htdocs\\web\\app.php(36): Symfony\\Component\\HttpKernel\\Kernel->handle(Object(Symfony\\Component\\HttpFoundation\\Request))\n#9 {main}', 1584479643, 0, 1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure for view `object_1`
--
DROP TABLE IF EXISTS `object_1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `object_1`  AS  select `object_query_1`.`oo_id` AS `oo_id`,`object_query_1`.`oo_classId` AS `oo_classId`,`object_query_1`.`oo_className` AS `oo_className`,`object_query_1`.`title` AS `title`,`object_query_1`.`teaser` AS `teaser`,`object_query_1`.`text` AS `text`,`object_query_1`.`image` AS `image`,`object_query_1`.`gallery__images` AS `gallery__images`,`object_query_1`.`gallery__hotspots` AS `gallery__hotspots`,`object_query_1`.`relation__id` AS `relation__id`,`object_query_1`.`relation__type` AS `relation__type`,`objects`.`o_id` AS `o_id`,`objects`.`o_parentId` AS `o_parentId`,`objects`.`o_type` AS `o_type`,`objects`.`o_key` AS `o_key`,`objects`.`o_path` AS `o_path`,`objects`.`o_index` AS `o_index`,`objects`.`o_published` AS `o_published`,`objects`.`o_creationDate` AS `o_creationDate`,`objects`.`o_modificationDate` AS `o_modificationDate`,`objects`.`o_userOwner` AS `o_userOwner`,`objects`.`o_userModification` AS `o_userModification`,`objects`.`o_classId` AS `o_classId`,`objects`.`o_className` AS `o_className`,`objects`.`o_childrenSortBy` AS `o_childrenSortBy`,`objects`.`o_versionCount` AS `o_versionCount` from (`object_query_1` join `objects` on((`objects`.`o_id` = `object_query_1`.`oo_id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application_logs`
--
ALTER TABLE `application_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `component` (`component`),
  ADD KEY `timestamp` (`timestamp`),
  ADD KEY `relatedobject` (`relatedobject`),
  ADD KEY `priority` (`priority`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fullpath` (`path`,`filename`),
  ADD KEY `parentId` (`parentId`),
  ADD KEY `filename` (`filename`),
  ADD KEY `modificationDate` (`modificationDate`);

--
-- Indexes for table `assets_metadata`
--
ALTER TABLE `assets_metadata`
  ADD PRIMARY KEY (`cid`,`name`,`language`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache_tags`
--
ALTER TABLE `cache_tags`
  ADD PRIMARY KEY (`id`,`tag`),
  ADD KEY `tag` (`tag`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `classificationstore_collectionrelations`
--
ALTER TABLE `classificationstore_collectionrelations`
  ADD PRIMARY KEY (`colId`,`groupId`),
  ADD KEY `FK_classificationstore_collectionrelations_groups` (`groupId`);

--
-- Indexes for table `classificationstore_collections`
--
ALTER TABLE `classificationstore_collections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `storeId` (`storeId`);

--
-- Indexes for table `classificationstore_groups`
--
ALTER TABLE `classificationstore_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `storeId` (`storeId`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `classificationstore_keys`
--
ALTER TABLE `classificationstore_keys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `enabled` (`enabled`),
  ADD KEY `type` (`type`),
  ADD KEY `storeId` (`storeId`);

--
-- Indexes for table `classificationstore_relations`
--
ALTER TABLE `classificationstore_relations`
  ADD PRIMARY KEY (`groupId`,`keyId`),
  ADD KEY `FK_classificationstore_relations_classificationstore_keys` (`keyId`),
  ADD KEY `mandatory` (`mandatory`);

--
-- Indexes for table `classificationstore_stores`
--
ALTER TABLE `classificationstore_stores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `custom_layouts`
--
ALTER TABLE `custom_layouts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`,`classId`);

--
-- Indexes for table `dependencies`
--
ALTER TABLE `dependencies`
  ADD PRIMARY KEY (`sourcetype`,`sourceid`,`targetid`,`targettype`),
  ADD KEY `sourceid` (`sourceid`),
  ADD KEY `targetid` (`targetid`),
  ADD KEY `targettype` (`targettype`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fullpath` (`path`,`key`),
  ADD KEY `parentId` (`parentId`),
  ADD KEY `key` (`key`),
  ADD KEY `published` (`published`),
  ADD KEY `modificationDate` (`modificationDate`);

--
-- Indexes for table `documents_elements`
--
ALTER TABLE `documents_elements`
  ADD PRIMARY KEY (`documentId`,`name`);

--
-- Indexes for table `documents_email`
--
ALTER TABLE `documents_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents_hardlink`
--
ALTER TABLE `documents_hardlink`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sourceId` (`sourceId`);

--
-- Indexes for table `documents_link`
--
ALTER TABLE `documents_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents_newsletter`
--
ALTER TABLE `documents_newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents_page`
--
ALTER TABLE `documents_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prettyUrl` (`prettyUrl`);

--
-- Indexes for table `documents_printpage`
--
ALTER TABLE `documents_printpage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents_snippet`
--
ALTER TABLE `documents_snippet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents_translations`
--
ALTER TABLE `documents_translations`
  ADD PRIMARY KEY (`sourceId`,`language`),
  ADD KEY `id` (`id`),
  ADD KEY `language` (`language`);

--
-- Indexes for table `edit_lock`
--
ALTER TABLE `edit_lock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ctype` (`ctype`),
  ADD KEY `cidtype` (`cid`,`ctype`);

--
-- Indexes for table `element_workflow_state`
--
ALTER TABLE `element_workflow_state`
  ADD PRIMARY KEY (`cid`,`ctype`,`workflow`);

--
-- Indexes for table `email_blacklist`
--
ALTER TABLE `email_blacklist`
  ADD PRIMARY KEY (`address`);

--
-- Indexes for table `email_log`
--
ALTER TABLE `email_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sentDate` (`sentDate`,`id`);
ALTER TABLE `email_log` ADD FULLTEXT KEY `fulltext` (`from`,`to`,`cc`,`bcc`,`subject`,`params`);

--
-- Indexes for table `glossary`
--
ALTER TABLE `glossary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language` (`language`),
  ADD KEY `site` (`site`);

--
-- Indexes for table `gridconfigs`
--
ALTER TABLE `gridconfigs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ownerId` (`ownerId`),
  ADD KEY `classId` (`classId`),
  ADD KEY `searchType` (`searchType`),
  ADD KEY `shareGlobally` (`shareGlobally`);

--
-- Indexes for table `gridconfig_favourites`
--
ALTER TABLE `gridconfig_favourites`
  ADD PRIMARY KEY (`ownerId`,`classId`,`searchType`,`objectId`),
  ADD KEY `classId` (`classId`),
  ADD KEY `searchType` (`searchType`);

--
-- Indexes for table `gridconfig_shares`
--
ALTER TABLE `gridconfig_shares`
  ADD PRIMARY KEY (`gridConfigId`,`sharedWithUserId`),
  ADD KEY `sharedWithUserId` (`sharedWithUserId`);

--
-- Indexes for table `http_error_log`
--
ALTER TABLE `http_error_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uri` (`uri`(765)),
  ADD KEY `code` (`code`),
  ADD KEY `date` (`date`),
  ADD KEY `count` (`count`);

--
-- Indexes for table `importconfigs`
--
ALTER TABLE `importconfigs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ownerId` (`ownerId`),
  ADD KEY `classId` (`classId`),
  ADD KEY `shareGlobally` (`shareGlobally`);

--
-- Indexes for table `importconfig_shares`
--
ALTER TABLE `importconfig_shares`
  ADD PRIMARY KEY (`importConfigId`,`sharedWithUserId`),
  ADD KEY `sharedWithUserId` (`sharedWithUserId`);

--
-- Indexes for table `locks`
--
ALTER TABLE `locks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cid` (`cid`),
  ADD KEY `ctype` (`ctype`),
  ADD KEY `date` (`date`);

--
-- Indexes for table `notes_data`
--
ALTER TABLE `notes_data`
  ADD KEY `id` (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipient` (`recipient`);

--
-- Indexes for table `objects`
--
ALTER TABLE `objects`
  ADD PRIMARY KEY (`o_id`),
  ADD UNIQUE KEY `fullpath` (`o_path`,`o_key`),
  ADD KEY `key` (`o_key`),
  ADD KEY `index` (`o_index`),
  ADD KEY `published` (`o_published`),
  ADD KEY `parentId` (`o_parentId`),
  ADD KEY `type` (`o_type`),
  ADD KEY `o_modificationDate` (`o_modificationDate`);

--
-- Indexes for table `object_query_1`
--
ALTER TABLE `object_query_1`
  ADD PRIMARY KEY (`oo_id`);

--
-- Indexes for table `object_relations_1`
--
ALTER TABLE `object_relations_1`
  ADD KEY `forward_lookup` (`src_id`,`ownertype`,`ownername`,`position`),
  ADD KEY `reverse_lookup` (`dest_id`,`type`);

--
-- Indexes for table `object_store_1`
--
ALTER TABLE `object_store_1`
  ADD PRIMARY KEY (`oo_id`);

--
-- Indexes for table `object_url_slugs`
--
ALTER TABLE `object_url_slugs`
  ADD PRIMARY KEY (`slug`,`siteId`),
  ADD KEY `index` (`index`),
  ADD KEY `objectId` (`objectId`),
  ADD KEY `classId` (`classId`),
  ADD KEY `fieldname` (`fieldname`),
  ADD KEY `position` (`position`),
  ADD KEY `ownertype` (`ownertype`),
  ADD KEY `ownername` (`ownername`),
  ADD KEY `slug` (`slug`),
  ADD KEY `siteId` (`siteId`);

--
-- Indexes for table `pimcore_migrations`
--
ALTER TABLE `pimcore_migrations`
  ADD PRIMARY KEY (`migration_set`,`version`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`cid`,`ctype`,`name`),
  ADD KEY `cpath` (`cpath`),
  ADD KEY `inheritable` (`inheritable`),
  ADD KEY `ctype` (`ctype`);

--
-- Indexes for table `quantityvalue_units`
--
ALTER TABLE `quantityvalue_units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_baseunit` (`baseunit`);

--
-- Indexes for table `recyclebin`
--
ALTER TABLE `recyclebin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `redirects`
--
ALTER TABLE `redirects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `priority` (`priority`),
  ADD KEY `routing_lookup` (`active`,`regex`,`sourceSite`,`source`,`type`,`expiry`,`priority`);

--
-- Indexes for table `sanitycheck`
--
ALTER TABLE `sanitycheck`
  ADD PRIMARY KEY (`id`,`type`);

--
-- Indexes for table `schedule_tasks`
--
ALTER TABLE `schedule_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cid` (`cid`),
  ADD KEY `ctype` (`ctype`),
  ADD KEY `active` (`active`),
  ADD KEY `version` (`version`);

--
-- Indexes for table `search_backend_data`
--
ALTER TABLE `search_backend_data`
  ADD PRIMARY KEY (`id`,`maintype`),
  ADD KEY `fullpath` (`fullpath`),
  ADD KEY `maintype` (`maintype`),
  ADD KEY `type` (`type`),
  ADD KEY `subtype` (`subtype`),
  ADD KEY `published` (`published`);
ALTER TABLE `search_backend_data` ADD FULLTEXT KEY `fulltext` (`data`,`properties`);

--
-- Indexes for table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rootId` (`rootId`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idpath` (`idPath`),
  ADD KEY `parentid` (`parentId`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tags_assignment`
--
ALTER TABLE `tags_assignment`
  ADD PRIMARY KEY (`tagid`,`cid`,`ctype`),
  ADD KEY `ctype` (`ctype`),
  ADD KEY `ctype_cid` (`cid`,`ctype`);

--
-- Indexes for table `targeting_rules`
--
ALTER TABLE `targeting_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `targeting_storage`
--
ALTER TABLE `targeting_storage`
  ADD PRIMARY KEY (`visitorId`,`scope`,`name`),
  ADD KEY `targeting_storage_scope_index` (`scope`),
  ADD KEY `targeting_storage_name_index` (`name`);

--
-- Indexes for table `targeting_target_groups`
--
ALTER TABLE `targeting_target_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tmp_store`
--
ALTER TABLE `tmp_store`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag` (`tag`),
  ADD KEY `date` (`date`),
  ADD KEY `expiryDate` (`expiryDate`);

--
-- Indexes for table `tracking_events`
--
ALTER TABLE `tracking_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `timestamp` (`timestamp`),
  ADD KEY `year` (`year`),
  ADD KEY `month` (`month`),
  ADD KEY `day` (`day`),
  ADD KEY `dayOfWeek` (`dayOfWeek`),
  ADD KEY `dayOfYear` (`dayOfYear`),
  ADD KEY `weekOfYear` (`weekOfYear`),
  ADD KEY `hour` (`hour`),
  ADD KEY `minute` (`minute`),
  ADD KEY `second` (`second`),
  ADD KEY `category` (`category`),
  ADD KEY `action` (`action`),
  ADD KEY `label` (`label`),
  ADD KEY `data` (`data`);

--
-- Indexes for table `translations_admin`
--
ALTER TABLE `translations_admin`
  ADD PRIMARY KEY (`key`,`language`),
  ADD KEY `language` (`language`);

--
-- Indexes for table `translations_website`
--
ALTER TABLE `translations_website`
  ADD PRIMARY KEY (`key`,`language`),
  ADD KEY `language` (`language`);

--
-- Indexes for table `tree_locks`
--
ALTER TABLE `tree_locks`
  ADD PRIMARY KEY (`id`,`type`),
  ADD KEY `type` (`type`),
  ADD KEY `locked` (`locked`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type_name` (`type`,`name`),
  ADD KEY `parentId` (`parentId`),
  ADD KEY `name` (`name`),
  ADD KEY `password` (`password`);

--
-- Indexes for table `users_permission_definitions`
--
ALTER TABLE `users_permission_definitions`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `users_workspaces_asset`
--
ALTER TABLE `users_workspaces_asset`
  ADD PRIMARY KEY (`cid`,`userId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `users_workspaces_document`
--
ALTER TABLE `users_workspaces_document`
  ADD PRIMARY KEY (`cid`,`userId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `users_workspaces_object`
--
ALTER TABLE `users_workspaces_object`
  ADD PRIMARY KEY (`cid`,`userId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `uuids`
--
ALTER TABLE `uuids`
  ADD PRIMARY KEY (`itemId`,`type`,`uuid`);

--
-- Indexes for table `versions`
--
ALTER TABLE `versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cid` (`cid`),
  ADD KEY `ctype_cid` (`ctype`,`cid`),
  ADD KEY `date` (`date`),
  ADD KEY `binaryFileHash` (`binaryFileHash`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `application_logs`
--
ALTER TABLE `application_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `classificationstore_collections`
--
ALTER TABLE `classificationstore_collections`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classificationstore_groups`
--
ALTER TABLE `classificationstore_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classificationstore_keys`
--
ALTER TABLE `classificationstore_keys`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classificationstore_stores`
--
ALTER TABLE `classificationstore_stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `edit_lock`
--
ALTER TABLE `edit_lock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `email_log`
--
ALTER TABLE `email_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `glossary`
--
ALTER TABLE `glossary`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gridconfigs`
--
ALTER TABLE `gridconfigs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `http_error_log`
--
ALTER TABLE `http_error_log`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `importconfigs`
--
ALTER TABLE `importconfigs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `objects`
--
ALTER TABLE `objects`
  MODIFY `o_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `quantityvalue_units`
--
ALTER TABLE `quantityvalue_units`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recyclebin`
--
ALTER TABLE `recyclebin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `redirects`
--
ALTER TABLE `redirects`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedule_tasks`
--
ALTER TABLE `schedule_tasks`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sites`
--
ALTER TABLE `sites`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `targeting_rules`
--
ALTER TABLE `targeting_rules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `targeting_target_groups`
--
ALTER TABLE `targeting_target_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracking_events`
--
ALTER TABLE `tracking_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `versions`
--
ALTER TABLE `versions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `classificationstore_collectionrelations`
--
ALTER TABLE `classificationstore_collectionrelations`
  ADD CONSTRAINT `FK_classificationstore_collectionrelations_groups` FOREIGN KEY (`groupId`) REFERENCES `classificationstore_groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `classificationstore_relations`
--
ALTER TABLE `classificationstore_relations`
  ADD CONSTRAINT `FK_classificationstore_relations_classificationstore_groups` FOREIGN KEY (`groupId`) REFERENCES `classificationstore_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_classificationstore_relations_classificationstore_keys` FOREIGN KEY (`keyId`) REFERENCES `classificationstore_keys` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `quantityvalue_units`
--
ALTER TABLE `quantityvalue_units`
  ADD CONSTRAINT `fk_baseunit` FOREIGN KEY (`baseunit`) REFERENCES `quantityvalue_units` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
