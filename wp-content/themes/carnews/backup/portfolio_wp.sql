-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2018 at 12:49 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio_wp`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-08-28 04:21:19', '2018-08-28 04:21:19', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 1, 'admin', 'bappy@dev.com', '', '::1', '2018-08-29 17:28:46', '2018-08-29 11:28:46', 'test comment', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '', 0, 1),
(3, 57, 'admin', 'bappy@dev.com', '', '::1', '2018-08-29 17:40:52', '2018-08-29 11:40:52', 'test comment', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '', 0, 1),
(4, 57, 'admin', 'bappy@dev.com', '', '::1', '2018-08-29 17:41:09', '2018-08-29 11:41:09', 'another test', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '', 0, 1),
(5, 54, 'Bappy', 'mustafizur120133@gmail.com', 'http://test', '::1', '2018-08-30 14:27:55', '2018-08-30 08:27:55', 'test', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/portfolio_wp', 'yes'),
(2, 'home', 'http://localhost/portfolio_wp', 'yes'),
(3, 'blogname', 'Portfolio Template', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'bappy@dev.com', 'yes'),
(7, 'start_of_week', '6', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:115:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:14:\"slider-item/?$\";s:32:\"index.php?post_type=slider-items\";s:44:\"slider-item/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=slider-items&feed=$matches[1]\";s:39:\"slider-item/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=slider-items&feed=$matches[1]\";s:31:\"slider-item/page/([0-9]{1,})/?$\";s:50:\"index.php?post_type=slider-items&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:39:\"slider-item/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"slider-item/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"slider-item/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"slider-item/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"slider-item/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"slider-item/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"slider-item/([^/]+)/embed/?$\";s:45:\"index.php?slider-items=$matches[1]&embed=true\";s:32:\"slider-item/([^/]+)/trackback/?$\";s:39:\"index.php?slider-items=$matches[1]&tb=1\";s:52:\"slider-item/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?slider-items=$matches[1]&feed=$matches[2]\";s:47:\"slider-item/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?slider-items=$matches[1]&feed=$matches[2]\";s:40:\"slider-item/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?slider-items=$matches[1]&paged=$matches[2]\";s:47:\"slider-item/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?slider-items=$matches[1]&cpage=$matches[2]\";s:36:\"slider-item/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?slider-items=$matches[1]&page=$matches[2]\";s:28:\"slider-item/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"slider-item/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"slider-item/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"slider-item/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"slider-item/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"slider-item/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:56:\"slider-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?slider_cat=$matches[1]&feed=$matches[2]\";s:51:\"slider-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?slider_cat=$matches[1]&feed=$matches[2]\";s:32:\"slider-category/([^/]+)/embed/?$\";s:43:\"index.php?slider_cat=$matches[1]&embed=true\";s:44:\"slider-category/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?slider_cat=$matches[1]&paged=$matches[2]\";s:26:\"slider-category/([^/]+)/?$\";s:32:\"index.php?slider_cat=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=20&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '6', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'carnews', 'yes'),
(41, 'stylesheet', 'carnews', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:4:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:3;a:4:{s:5:\"title\";s:4:\"test\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:4;a:4:{s:5:\"title\";s:12:\"All category\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:5:{i:2;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '107', 'yes'),
(84, 'page_on_front', '20', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:3:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}i:3;a:2:{s:5:\"title\";s:8:\"Comments\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:5:{i:2;a:1:{s:5:\"title\";s:0:\"\";}i:3;a:1:{s:5:\"title\";s:11:\"Login Panel\";}i:4;a:1:{s:5:\"title\";s:11:\"Login Panel\";}i:5;a:1:{s:5:\"title\";s:11:\"Login Panel\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:6:{s:19:\"wp_inactive_widgets\";a:11:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";i:4;s:8:\"search-2\";i:5;s:14:\"recent-posts-2\";i:6;s:17:\"recent-comments-2\";i:7;s:10:\"archives-2\";i:8;s:12:\"categories-2\";i:9;s:6:\"meta-2\";i:10;s:12:\"categories-3\";}s:15:\"widget-home-one\";a:1:{i:0;s:6:\"meta-3\";}s:13:\"footer-widget\";a:3:{i:0;s:12:\"categories-4\";i:1;s:10:\"calendar-2\";i:2;s:17:\"recent-comments-3\";}s:17:\"footer-widget-one\";a:1:{i:0;s:6:\"meta-4\";}s:17:\"footer-widget-two\";a:1:{i:0;s:6:\"meta-5\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:2:{i:2;a:1:{s:5:\"title\";s:11:\"My calender\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:5:{i:1535973680;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1535991680;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1536034893;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1536046296;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:3:\"top\";i:2;s:6:\"social\";i:2;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1535540569;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";i:4;s:6:\"meta-3\";}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"meta-4\";}s:9:\"sidebar-3\";a:1:{i:0;s:12:\"categories-3\";}}}}', 'yes'),
(116, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1535949150;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(121, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1535959824;s:7:\"checked\";a:5:{s:7:\"carnews\";s:3:\"1.0\";s:9:\"portfolio\";s:3:\"1.0\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(122, '_site_transient_timeout_browser_11d9a73fb38b2f1c4799e1f5e17c7b14', '1536034895', 'no'),
(123, '_site_transient_browser_11d9a73fb38b2f1c4799e1f5e17c7b14', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"68.0.3440.106\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(125, 'can_compress_scripts', '1', 'no'),
(141, 'WPLANG', '', 'yes'),
(142, 'new_admin_email', 'bappy@dev.com', 'yes'),
(156, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(161, 'current_theme', 'Carnews', 'yes'),
(162, 'theme_mods_portfolio', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:15:\"header_top_menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1535456937;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";i:4;s:8:\"search-2\";i:5;s:14:\"recent-posts-2\";i:6;s:17:\"recent-comments-2\";i:7;s:10:\"archives-2\";i:8;s:12:\"categories-2\";i:9;s:6:\"meta-2\";}}}}', 'yes'),
(163, 'theme_switched', '', 'yes'),
(181, 'theme_mods_carnews', 'a:14:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:11:\"footer_menu\";i:3;s:15:\"header_top_menu\";i:2;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1535891079;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:11:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";i:4;s:8:\"search-2\";i:5;s:14:\"recent-posts-2\";i:6;s:17:\"recent-comments-2\";i:7;s:10:\"archives-2\";i:8;s:12:\"categories-2\";i:9;s:6:\"meta-2\";i:10;s:12:\"categories-3\";}s:15:\"widget-home-one\";a:1:{i:0;s:6:\"meta-3\";}s:13:\"footer-widget\";a:3:{i:0;s:12:\"categories-4\";i:1;s:10:\"calendar-2\";i:2;s:17:\"recent-comments-3\";}s:17:\"footer-widget-one\";a:1:{i:0;s:6:\"meta-4\";}s:17:\"footer-widget-two\";a:1:{i:0;s:6:\"meta-5\";}}}s:18:\"custom_css_post_id\";i:-1;s:4:\"logo\";s:71:\"http://localhost/portfolio_wp/wp-content/uploads/2018/09/logo-light.png\";s:7:\"favicon\";s:68:\"http://localhost/portfolio_wp/wp-content/uploads/2018/09/favicon.ico\";s:12:\"header_phone\";s:18:\"(007) 123 456 7890\";s:12:\"header_email\";s:13:\"bappy@dev.com\";s:15:\"header_facebook\";s:23:\"http://www.facebook.com\";s:14:\"header_twitter\";s:22:\"http://www.twitter.com\";s:16:\"header_instagram\";s:24:\"http://www.instagram.com\";s:14:\"header_youtube\";s:22:\"http://www.youtube.com\";s:24:\"themeslug_url_setting_id\";s:22:\"http://www.youtube.com\";s:15:\"header_bg_color\";s:7:\"#012c3a\";}', 'yes'),
(256, 'category_children', 'a:0:{}', 'yes'),
(267, '_site_transient_timeout_browser_01fe6d96f512df15cc1b10345d6b37d9', '1536163071', 'no'),
(268, '_site_transient_browser_01fe6d96f512df15cc1b10345d6b37d9', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"68.0.3440.106\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(305, '_transient_random_seed', 'ce3920bd6649b666bc08363eb225b8ce', 'yes'),
(318, 'slider_cat_children', 'a:0:{}', 'yes'),
(328, 'theme_mods_twentyfifteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1535891096;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:17:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";i:4;s:8:\"search-2\";i:5;s:14:\"recent-posts-2\";i:6;s:17:\"recent-comments-2\";i:7;s:10:\"archives-2\";i:8;s:12:\"categories-2\";i:9;s:6:\"meta-2\";i:10;s:12:\"categories-3\";i:11;s:6:\"meta-3\";i:12;s:12:\"categories-4\";i:13;s:10:\"calendar-2\";i:14;s:17:\"recent-comments-3\";i:15;s:6:\"meta-4\";i:16;s:6:\"meta-5\";}s:9:\"sidebar-1\";a:0:{}}}}', 'yes'),
(330, '_transient_twentyfifteen_categories', '2', 'yes'),
(338, 'recently_activated', 'a:0:{}', 'yes'),
(344, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1535949154;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.0.3\";s:9:\"hello.php\";s:3:\"1.7\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.0.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.0.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(345, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.0.3\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1535810352;s:7:\"version\";s:5:\"5.0.3\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(399, '_site_transient_timeout_available_translations', '1535960906', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(400, '_site_transient_available_translations', 'a:113:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-06 13:56:09\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-29 21:06:24\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-04 08:43:29\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.5/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-06-23 07:27:43\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:7:\"Bengali\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.6/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-26 07:51:00\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-04 20:20:28\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-25 04:47:06\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-03 08:58:57\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-27 10:53:54\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-07-06 08:46:24\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-03 00:30:25\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.9.8/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-13 13:32:08\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 11:47:36\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 11:48:22\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/4.9.8/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-28 18:56:04\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-31 14:47:16\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-16 14:33:05\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-24 23:12:03\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-24 21:31:15\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-30 17:20:26\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-01 16:09:29\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-25 19:18:20\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-03 20:43:09\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-21 14:41:13\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 15:03:42\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 23:17:08\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2017-07-31 15:12:02\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.6/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-01 17:54:52\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-28 15:49:41\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-19 14:11:29\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-12-09 21:12:23\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-09 15:53:36\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-02 12:18:54\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-06 16:13:32\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-01-31 11:16:06\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-26 17:19:07\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-25 14:30:50\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-02-14 06:16:04\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-15 08:49:46\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-06-17 09:33:44\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-14 10:04:37\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-03 10:29:39\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 13:16:13\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-04-13 13:55:54\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.7/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-23 06:29:23\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-31 06:32:41\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-21 12:12:01\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-22 22:24:38\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.5/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-07 02:07:59\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-04 12:57:46\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:48:25\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-24 09:42:27\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-03-17 20:40:40\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.7/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:54:41\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.7/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.6/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-30 20:27:25\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-03 07:24:43\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-29 11:28:05\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-15 06:55:24\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-06 12:43:59\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.9.8/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-13 11:47:22\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-29 17:20:37\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-24 16:20:30\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-09 13:28:31\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-09 09:30:48\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/4.9.5/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-27 22:23:19\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-03 12:07:46\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-28 12:46:02\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-24 22:24:39\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-02 20:59:54\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-24 18:15:31\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-02 17:08:41\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-02 21:09:54\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-05 13:55:11\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-06-20 11:37:47\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.6/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-09 10:37:43\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-24 07:41:18\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-09 00:56:52\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-13 02:41:15\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-17 22:20:52\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}}', 'no'),
(418, '_site_transient_timeout_theme_roots', '1535961623', 'no'),
(419, '_site_transient_theme_roots', 'a:5:{s:7:\"carnews\";s:7:\"/themes\";s:9:\"portfolio\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(423, 'r_notice_data', '\n{\"type\":\"redux-message\",\"title\":\"<strong>The Ultimate Redux Extensions Bundle!<\\/strong><br\\/>\\r\\n\\r\\n\",\"message\":\"Attention Redux Developers!  Due to popular demand, we are extending the availability of the Ultimate Redux Extension Bundle, which includes <strong>all<\\/strong> of our extensions at over 40% off!  Grab you\'re copy today at <a href=\\\"https:\\/\\/reduxframework.com\\/extension\\/ultimate-bundle\\\">https:\\/\\/reduxframework.com\\/extension\\/ultimate-bundle<\\/a>\",\"color\":\"rgba(0,162,227,1)\"}\n', 'yes'),
(424, 'redux_blast', '1535962661', 'yes'),
(425, 'redux_version_upgraded_from', '3.6.11', 'yes'),
(426, 'redux_demo', 'a:9:{s:8:\"last_tab\";s:1:\"1\";s:8:\"opt-logo\";a:9:{s:3:\"url\";s:67:\"http://localhost/portfolio_wp/wp-content/uploads/2018/09/logo-2.png\";s:2:\"id\";s:3:\"154\";s:6:\"height\";s:2:\"63\";s:5:\"width\";s:3:\"231\";s:9:\"thumbnail\";s:74:\"http://localhost/portfolio_wp/wp-content/uploads/2018/09/logo-2-150x63.png\";s:5:\"title\";s:6:\"logo-2\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:11:\"opt-favicon\";a:9:{s:3:\"url\";s:68:\"http://localhost/portfolio_wp/wp-content/uploads/2018/09/favicon.png\";s:2:\"id\";s:3:\"155\";s:6:\"height\";s:2:\"17\";s:5:\"width\";s:2:\"21\";s:9:\"thumbnail\";s:68:\"http://localhost/portfolio_wp/wp-content/uploads/2018/09/favicon.png\";s:5:\"title\";s:7:\"favicon\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:18:\"opt-topbar-address\";s:18:\"Set topbar address\";s:19:\"opt-topbar-facebook\";s:23:\"http://www.facebook.com\";s:18:\"opt-topbar-twitter\";s:22:\"http://www.twitter.com\";s:17:\"opt-topbar-google\";s:21:\"http://www.google.com\";s:19:\"opt-topbar-pintrest\";s:23:\"http://www.pintrest.com\";s:18:\"opt-topbar-dribble\";s:22:\"http://www.dribble.com\";}', 'yes'),
(427, 'redux_demo-transients', 'a:3:{s:14:\"changed_values\";a:6:{s:8:\"last_tab\";s:0:\"\";s:19:\"opt-topbar-facebook\";s:33:\"http://www.facebook.com/versatile\";s:18:\"opt-topbar-twitter\";s:32:\"http://www.twitter.com/versatile\";s:17:\"opt-topbar-google\";s:31:\"http://www.google.com/versatile\";s:19:\"opt-topbar-pintrest\";s:33:\"http://www.pintrest.com/versatile\";s:18:\"opt-topbar-dribble\";s:32:\"http://www.dribble.com/versatile\";}s:9:\"last_save\";i:1535971619;s:13:\"last_compiler\";i:1535970601;}', 'yes'),
(428, '_transient_timeout_select2-css_style_cdn_is_up', '1536049069', 'no'),
(429, '_transient_select2-css_style_cdn_is_up', '1', 'no'),
(430, '_transient_timeout_select2-js_script_cdn_is_up', '1536049070', 'no'),
(431, '_transient_select2-js_script_cdn_is_up', '1', 'no'),
(432, '_transient_timeout_ace-editor-js_script_cdn_is_up', '1536049071', 'no'),
(433, '_transient_ace-editor-js_script_cdn_is_up', '1', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 1, '_edit_lock', '1535522020:1'),
(4, 5, '_wp_attached_file', '2018/08/espresso.jpg'),
(5, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2018/08/espresso.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"espresso-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"espresso-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"espresso-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"espresso-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"espresso-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(6, 5, '_starter_content_theme', 'twentyseventeen'),
(7, 5, '_customize_draft_post_name', 'espresso'),
(8, 6, '_wp_attached_file', '2018/08/sandwich.jpg'),
(9, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2018/08/sandwich.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"sandwich-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"sandwich-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"sandwich-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"sandwich-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"sandwich-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(10, 6, '_starter_content_theme', 'twentyseventeen'),
(11, 6, '_customize_draft_post_name', 'sandwich'),
(12, 7, '_wp_attached_file', '2018/08/coffee.jpg'),
(13, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:18:\"2018/08/coffee.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"coffee-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"coffee-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"coffee-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"coffee-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:18:\"coffee-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(14, 7, '_starter_content_theme', 'twentyseventeen'),
(15, 7, '_customize_draft_post_name', 'coffee'),
(16, 8, '_customize_draft_post_name', 'home'),
(17, 8, '_customize_changeset_uuid', 'db5d75a7-5b56-4215-97a1-4de61c6afeb8'),
(18, 9, '_thumbnail_id', '6'),
(19, 9, '_customize_draft_post_name', 'about'),
(20, 9, '_customize_changeset_uuid', 'db5d75a7-5b56-4215-97a1-4de61c6afeb8'),
(21, 10, '_thumbnail_id', '5'),
(22, 10, '_customize_draft_post_name', 'contact'),
(23, 10, '_customize_changeset_uuid', 'db5d75a7-5b56-4215-97a1-4de61c6afeb8'),
(24, 11, '_thumbnail_id', '7'),
(25, 11, '_customize_draft_post_name', 'blog'),
(26, 11, '_customize_changeset_uuid', 'db5d75a7-5b56-4215-97a1-4de61c6afeb8'),
(27, 12, '_thumbnail_id', '5'),
(28, 12, '_customize_draft_post_name', 'a-homepage-section'),
(29, 12, '_customize_changeset_uuid', 'db5d75a7-5b56-4215-97a1-4de61c6afeb8'),
(39, 2, '_edit_lock', '1535439747:1'),
(40, 15, '_edit_last', '1'),
(41, 15, '_edit_lock', '1535800274:1'),
(42, 17, '_menu_item_type', 'post_type'),
(43, 17, '_menu_item_menu_item_parent', '0'),
(44, 17, '_menu_item_object_id', '15'),
(45, 17, '_menu_item_object', 'page'),
(46, 17, '_menu_item_target', ''),
(47, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(48, 17, '_menu_item_xfn', ''),
(49, 17, '_menu_item_url', ''),
(51, 18, '_menu_item_type', 'post_type'),
(52, 18, '_menu_item_menu_item_parent', '0'),
(53, 18, '_menu_item_object_id', '15'),
(54, 18, '_menu_item_object', 'page'),
(55, 18, '_menu_item_target', ''),
(56, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(57, 18, '_menu_item_xfn', ''),
(58, 18, '_menu_item_url', ''),
(60, 19, '_menu_item_type', 'post_type'),
(61, 19, '_menu_item_menu_item_parent', '0'),
(62, 19, '_menu_item_object_id', '2'),
(63, 19, '_menu_item_object', 'page'),
(64, 19, '_menu_item_target', ''),
(65, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(66, 19, '_menu_item_xfn', ''),
(67, 19, '_menu_item_url', ''),
(68, 20, '_edit_last', '1'),
(69, 20, '_edit_lock', '1535791209:1'),
(70, 22, '_edit_last', '1'),
(71, 22, '_edit_lock', '1535959667:1'),
(72, 24, '_menu_item_type', 'post_type'),
(73, 24, '_menu_item_menu_item_parent', '0'),
(74, 24, '_menu_item_object_id', '22'),
(75, 24, '_menu_item_object', 'page'),
(76, 24, '_menu_item_target', ''),
(77, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(78, 24, '_menu_item_xfn', ''),
(79, 24, '_menu_item_url', ''),
(81, 25, '_menu_item_type', 'post_type'),
(82, 25, '_menu_item_menu_item_parent', '0'),
(83, 25, '_menu_item_object_id', '20'),
(84, 25, '_menu_item_object', 'page'),
(85, 25, '_menu_item_target', ''),
(86, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(87, 25, '_menu_item_xfn', ''),
(88, 25, '_menu_item_url', ''),
(90, 26, '_edit_last', '1'),
(91, 26, '_edit_lock', '1535570940:1'),
(96, 31, '_wp_attached_file', '2018/08/python.png'),
(97, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:200;s:4:\"file\";s:18:\"2018/08/python.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"python-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"python-300x150.png\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"python-200x200.png\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(98, 32, '_wp_attached_file', '2018/08/node-js-736399_960_720-400x200.png'),
(99, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:200;s:4:\"file\";s:42:\"2018/08/node-js-736399_960_720-400x200.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"node-js-736399_960_720-400x200-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"node-js-736399_960_720-400x200-300x150.png\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:42:\"node-js-736399_960_720-400x200-200x200.png\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(100, 1, '_edit_last', '1'),
(101, 1, '_thumbnail_id', '32'),
(104, 26, '_thumbnail_id', '37'),
(113, 36, '_wp_attached_file', '2018/08/screenshot.png'),
(114, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:900;s:4:\"file\";s:22:\"2018/08/screenshot.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"screenshot-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"screenshot-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"screenshot-768x576.png\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"screenshot-1024x768.png\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"screenshot-200x200.png\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"custom-image\";a:4:{s:4:\"file\";s:23:\"screenshot-1170x500.png\";s:5:\"width\";i:1170;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(119, 37, '_wp_attached_file', '2018/08/download.jpg'),
(120, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:318;s:6:\"height\";i:159;s:4:\"file\";s:20:\"2018/08/download.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"download-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"download-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"download-200x159.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:159;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(123, 38, '_edit_last', '1'),
(124, 38, '_edit_lock', '1535570446:1'),
(125, 39, '_wp_attached_file', '2018/08/mean.png'),
(126, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:200;s:4:\"file\";s:16:\"2018/08/mean.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"mean-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"mean-300x150.png\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:16:\"mean-200x200.png\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(127, 38, '_thumbnail_id', '39'),
(130, 41, '_edit_last', '1'),
(133, 41, '_edit_lock', '1535526535:1'),
(136, 44, '_wp_attached_file', '2018/08/csharpnet.jpg'),
(137, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:200;s:4:\"file\";s:21:\"2018/08/csharpnet.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"csharpnet-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"csharpnet-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:21:\"csharpnet-200x200.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(138, 41, '_thumbnail_id', '44'),
(143, 41, '_wp_trash_meta_status', 'publish'),
(144, 41, '_wp_trash_meta_time', '1535526685'),
(145, 41, '_wp_desired_post_slug', 'test'),
(146, 45, '_edit_last', '1'),
(147, 45, '_edit_lock', '1535531739:1'),
(148, 45, '_thumbnail_id', '44'),
(153, 47, '_edit_last', '1'),
(154, 47, '_edit_lock', '1535540116:1'),
(157, 49, '_edit_last', '1'),
(158, 49, '_edit_lock', '1535570858:1'),
(159, 50, '_wp_attached_file', '2018/08/java-script-1.png'),
(160, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:200;s:4:\"file\";s:25:\"2018/08/java-script-1.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"java-script-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"java-script-1-300x150.png\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:25:\"java-script-1-200x200.png\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(161, 49, '_thumbnail_id', '50'),
(164, 52, '_wp_attached_file', '2018/08/Screenshot002.png'),
(165, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1349;s:6:\"height\";i:658;s:4:\"file\";s:25:\"2018/08/Screenshot002.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Screenshot002-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"Screenshot002-300x146.png\";s:5:\"width\";i:300;s:6:\"height\";i:146;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"Screenshot002-768x375.png\";s:5:\"width\";i:768;s:6:\"height\";i:375;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"Screenshot002-1024x499.png\";s:5:\"width\";i:1024;s:6:\"height\";i:499;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:25:\"Screenshot002-200x200.png\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"custom-image\";a:4:{s:4:\"file\";s:25:\"Screenshot002-500x658.png\";s:5:\"width\";i:500;s:6:\"height\";i:658;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(166, 47, '_thumbnail_id', '32'),
(171, 54, '_edit_last', '1'),
(172, 54, '_edit_lock', '1535570832:1'),
(173, 55, '_wp_attached_file', '2018/08/t1.jpeg'),
(174, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:200;s:4:\"file\";s:15:\"2018/08/t1.jpeg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"t1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"t1-300x150.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:15:\"t1-200x200.jpeg\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(175, 54, '_thumbnail_id', '55'),
(180, 57, '_edit_last', '1'),
(181, 57, '_edit_lock', '1535794843:1'),
(182, 57, '_thumbnail_id', '39'),
(185, 20, '_wp_page_template', 'home-page-template.php'),
(186, 15, '_wp_page_template', 'contact-page.php'),
(187, 22, '_wp_page_template', 'about-page.php'),
(196, 65, '_edit_last', '1'),
(197, 65, '_edit_lock', '1535778186:1'),
(198, 72, '_wp_attached_file', '2018/08/3176d-road-bg.jpg'),
(199, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1081;s:4:\"file\";s:25:\"2018/08/3176d-road-bg.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"3176d-road-bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"3176d-road-bg-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"3176d-road-bg-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"3176d-road-bg-1024x577.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:577;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:25:\"3176d-road-bg-200x200.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"custom-image\";a:4:{s:4:\"file\";s:25:\"3176d-road-bg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"slider-items\";a:4:{s:4:\"file\";s:27:\"3176d-road-bg-1920x1080.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(200, 65, '_thumbnail_id', '72'),
(201, 73, '_edit_last', '1'),
(202, 73, '_edit_lock', '1535777427:1'),
(203, 74, '_wp_attached_file', '2018/08/motion-car2.png'),
(204, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:384;s:6:\"height\";i:162;s:4:\"file\";s:23:\"2018/08/motion-car2.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"motion-car2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"motion-car2-300x127.png\";s:5:\"width\";i:300;s:6:\"height\";i:127;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:23:\"motion-car2-200x162.png\";s:5:\"width\";i:200;s:6:\"height\";i:162;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"custom-image\";a:4:{s:4:\"file\";s:23:\"motion-car2-300x162.png\";s:5:\"width\";i:300;s:6:\"height\";i:162;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(205, 75, '_wp_attached_file', '2018/08/e13ec-06-audi-s2.png'),
(206, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:673;s:6:\"height\";i:349;s:4:\"file\";s:28:\"2018/08/e13ec-06-audi-s2.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"e13ec-06-audi-s2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"e13ec-06-audi-s2-300x156.png\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:28:\"e13ec-06-audi-s2-200x200.png\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"custom-image\";a:4:{s:4:\"file\";s:28:\"e13ec-06-audi-s2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(207, 73, '_thumbnail_id', '75'),
(208, 73, 'meta-subtitle-slider', 'Your car needs!'),
(209, 73, 'meta-url-slider', 'Contact Us'),
(210, 65, 'meta-subtitle-slider', 'We Provide best solution. consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.'),
(211, 65, 'meta-url-slider', ''),
(212, 80, '_edit_last', '1'),
(213, 80, '_edit_lock', '1535777418:1'),
(214, 81, '_wp_attached_file', '2018/08/9c326-img2.png'),
(215, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:676;s:6:\"height\";i:704;s:4:\"file\";s:22:\"2018/08/9c326-img2.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"9c326-img2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"9c326-img2-288x300.png\";s:5:\"width\";i:288;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"9c326-img2-200x200.png\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"custom-image\";a:4:{s:4:\"file\";s:22:\"9c326-img2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(216, 80, '_thumbnail_id', '81'),
(217, 80, 'meta-subtitle-slider', 'Your car needs!'),
(218, 80, 'meta-url-slider', ''),
(219, 80, '_wp_trash_meta_status', 'publish'),
(220, 80, '_wp_trash_meta_time', '1535777565'),
(221, 80, '_wp_desired_post_slug', 'test-slider'),
(222, 73, '_wp_trash_meta_status', 'publish'),
(223, 73, '_wp_trash_meta_time', '1535777574'),
(224, 73, '_wp_desired_post_slug', 'we-have-everything'),
(225, 82, '_edit_last', '1'),
(226, 82, '_edit_lock', '1535884280:1'),
(227, 82, 'meta-subtitle-slider', 'We are dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
(228, 82, 'meta-url-slider', ''),
(229, 83, '_wp_attached_file', '2018/09/04.jpg'),
(230, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:450;s:6:\"height\";i:321;s:4:\"file\";s:14:\"2018/09/04.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"04-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"04-300x214.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:214;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:14:\"04-200x200.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"custom-image\";a:4:{s:4:\"file\";s:14:\"04-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(231, 82, '_thumbnail_id', '83'),
(232, 84, '_edit_last', '1'),
(233, 84, '_edit_lock', '1535785928:1'),
(234, 84, '_wp_page_template', 'default'),
(235, 84, '_wp_trash_meta_status', 'publish'),
(236, 84, '_wp_trash_meta_time', '1535786076'),
(237, 84, '_wp_desired_post_slug', 'shortcode-test'),
(238, 89, '_edit_last', '1'),
(239, 89, '_edit_lock', '1535787440:1'),
(240, 89, '_wp_page_template', 'default'),
(241, 99, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(242, 99, '_mail', 'a:8:{s:7:\"subject\";s:35:\"Portfolio Template \"[your-subject]\"\";s:6:\"sender\";s:27:\"[your-name] <bappy@dev.com>\";s:4:\"body\";s:186:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Portfolio Template (http://localhost/portfolio_wp)\";s:9:\"recipient\";s:13:\"bappy@dev.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(243, 99, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:35:\"Portfolio Template \"[your-subject]\"\";s:6:\"sender\";s:34:\"Portfolio Template <bappy@dev.com>\";s:4:\"body\";s:128:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Portfolio Template (http://localhost/portfolio_wp)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:23:\"Reply-To: bappy@dev.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(244, 99, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(245, 99, '_additional_settings', NULL),
(246, 99, '_locale', 'en_US'),
(247, 100, '_form', '<div class=\"contact-form row\">\n    <div class=\"col-lg-6 col-sm-12\">\n        <div class=\"form-group\">\n            [text* your-name id:your-name class:form-control placeholder \"Your name\"]\n        </div>\n    </div>\n    <div class=\"col-lg-6 col-sm-12\">\n        <div class=\"form-group\">\n            [email* email id:email class:form-control placeholder \"Your email\"]\n        </div>\n    </div>\n    <div class=\"col-lg-6 col-sm-12\">\n        <div class=\"form-group\">\n            [text phone class:form-control placeholder \"Phone number\"]\n        </div>\n    </div>\n    <div class=\"col-lg-6 col-sm-12\">\n        <div class=\"form-group\">\n           [text* subject class:form-control placeholder \"Message subject\"]\n        </div>\n    </div>\n    <div class=\"col-md-12\">\n        <div class=\"form-group\">\n            [textarea* comment class:form-control placeholder \"Enter your message\"]\n        </div>\n    </div>\n    <div class=\"col-md-12\">\n       [submit class:button class:red \"Send Message\"]\n    </div>\n</div>'),
(248, 100, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"Portfolio Template \"[subject]\"\";s:6:\"sender\";s:21:\"[your-name] <[email]>\";s:9:\"recipient\";s:13:\"bappy@dev.com\";s:4:\"body\";s:193:\"From: [your-name] <[email]>\nSubject: [subject]\nPhone Number: [phone]\n\nMessage Body:\n[comment]\n\n-- \nThis e-mail was sent from a contact form on Portfolio Template (http://localhost/portfolio_wp)\";s:18:\"additional_headers\";s:17:\"Reply-To: [email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(249, 100, '_mail_2', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"Portfolio Template \"[subject]\"\";s:6:\"sender\";s:34:\"Portfolio Template <bappy@dev.com>\";s:9:\"recipient\";s:7:\"[email]\";s:4:\"body\";s:194:\"From: [your-name] <[email]>\nSubject: [subject]\nPhone Number: [phone]\n\nMessage Body:\n[comment]\n\n-- \nThis e-mail was reply from a contact form on Portfolio Template (http://localhost/portfolio_wp)\";s:18:\"additional_headers\";s:17:\"Reply-To: [email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(250, 100, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(251, 100, '_additional_settings', ''),
(252, 100, '_locale', 'en_US'),
(254, 101, '_edit_last', '1'),
(255, 101, '_edit_lock', '1535790977:1'),
(256, 101, '_wp_page_template', 'fullwidth-template.php'),
(272, 107, '_edit_last', '1'),
(273, 107, '_edit_lock', '1535794790:1'),
(274, 107, '_wp_page_template', 'default'),
(275, 109, '_wp_attached_file', '2018/09/03.jpg'),
(276, 109, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:450;s:6:\"height\";i:321;s:4:\"file\";s:14:\"2018/09/03.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"03-300x214.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:214;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:14:\"03-200x200.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"custom-image\";a:4:{s:4:\"file\";s:14:\"03-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(277, 22, '_thumbnail_id', '109'),
(278, 110, '_wp_attached_file', '2018/09/13.png'),
(279, 110, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:234;s:4:\"file\";s:14:\"2018/09/13.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"13-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"13-300x88.png\";s:5:\"width\";i:300;s:6:\"height\";i:88;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"13-768x225.png\";s:5:\"width\";i:768;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:14:\"13-200x200.png\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"custom-image\";a:4:{s:4:\"file\";s:14:\"13-300x234.png\";s:5:\"width\";i:300;s:6:\"height\";i:234;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(280, 15, '_thumbnail_id', '110'),
(281, 13, '_customize_restore_dismissed', '1'),
(282, 111, '_wp_trash_meta_status', 'publish'),
(283, 111, '_wp_trash_meta_time', '1535800506'),
(284, 112, '_edit_lock', '1535800515:1'),
(285, 112, '_customize_restore_dismissed', '1'),
(286, 113, '_wp_trash_meta_status', 'publish'),
(287, 113, '_wp_trash_meta_time', '1535800522'),
(288, 114, '_wp_trash_meta_status', 'publish'),
(289, 114, '_wp_trash_meta_time', '1535801000'),
(290, 115, '_wp_trash_meta_status', 'publish'),
(291, 115, '_wp_trash_meta_time', '1535801007'),
(292, 116, '_wp_trash_meta_status', 'publish'),
(293, 116, '_wp_trash_meta_time', '1535801882'),
(294, 117, '_wp_trash_meta_status', 'publish'),
(295, 117, '_wp_trash_meta_time', '1535802082'),
(296, 118, '_wp_attached_file', '2018/09/logo-dark.png'),
(297, 118, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:105;s:4:\"file\";s:21:\"2018/09/logo-dark.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"logo-dark-150x105.png\";s:5:\"width\";i:150;s:6:\"height\";i:105;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"logo-dark-300x53.png\";s:5:\"width\";i:300;s:6:\"height\";i:53;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:21:\"logo-dark-200x105.png\";s:5:\"width\";i:200;s:6:\"height\";i:105;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"custom-image\";a:4:{s:4:\"file\";s:21:\"logo-dark-300x105.png\";s:5:\"width\";i:300;s:6:\"height\";i:105;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(298, 119, '_wp_attached_file', '2018/09/logo-light.png'),
(299, 119, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:105;s:4:\"file\";s:22:\"2018/09/logo-light.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"logo-light-150x105.png\";s:5:\"width\";i:150;s:6:\"height\";i:105;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"logo-light-300x53.png\";s:5:\"width\";i:300;s:6:\"height\";i:53;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"logo-light-200x105.png\";s:5:\"width\";i:200;s:6:\"height\";i:105;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"custom-image\";a:4:{s:4:\"file\";s:22:\"logo-light-300x105.png\";s:5:\"width\";i:300;s:6:\"height\";i:105;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(300, 120, '_wp_trash_meta_status', 'publish'),
(301, 120, '_wp_trash_meta_time', '1535884101'),
(302, 121, '_wp_attached_file', '2018/09/favicon.ico'),
(303, 122, '_wp_trash_meta_status', 'publish'),
(304, 122, '_wp_trash_meta_time', '1535884145'),
(305, 123, '_wp_trash_meta_status', 'publish'),
(306, 123, '_wp_trash_meta_time', '1535885149'),
(307, 124, '_wp_trash_meta_status', 'publish'),
(308, 124, '_wp_trash_meta_time', '1535885326'),
(309, 125, '_wp_trash_meta_status', 'publish'),
(310, 125, '_wp_trash_meta_time', '1535885838'),
(311, 126, '_wp_trash_meta_status', 'publish'),
(312, 126, '_wp_trash_meta_time', '1535886237'),
(313, 127, '_wp_trash_meta_status', 'publish'),
(314, 127, '_wp_trash_meta_time', '1535887061'),
(315, 128, '_wp_trash_meta_status', 'publish'),
(316, 128, '_wp_trash_meta_time', '1535887099'),
(317, 129, '_wp_trash_meta_status', 'publish'),
(318, 129, '_wp_trash_meta_time', '1535887146'),
(319, 130, '_edit_lock', '1535888872:1'),
(320, 130, '_customize_restore_dismissed', '1'),
(321, 131, '_edit_lock', '1535889353:1'),
(322, 131, '_customize_restore_dismissed', '1'),
(323, 132, '_edit_lock', '1535890569:1'),
(324, 132, '_customize_restore_dismissed', '1'),
(325, 133, '_edit_lock', '1535890654:1'),
(326, 133, '_customize_restore_dismissed', '1'),
(327, 134, '_edit_lock', '1535890842:1'),
(328, 134, '_customize_restore_dismissed', '1'),
(329, 135, '_edit_lock', '1535891406:1'),
(330, 135, '_customize_restore_dismissed', '1'),
(332, 136, '_customize_restore_dismissed', '1'),
(333, 137, '_edit_lock', '1535891783:1'),
(334, 137, '_customize_restore_dismissed', '1'),
(335, 138, '_edit_lock', '1535892077:1'),
(336, 138, '_customize_restore_dismissed', '1'),
(337, 139, '_wp_trash_meta_status', 'publish'),
(338, 139, '_wp_trash_meta_time', '1535892177'),
(339, 140, '_wp_trash_meta_status', 'publish'),
(340, 140, '_wp_trash_meta_time', '1535892210'),
(342, 142, '_menu_item_type', 'post_type'),
(343, 142, '_menu_item_menu_item_parent', '0'),
(344, 142, '_menu_item_object_id', '107'),
(345, 142, '_menu_item_object', 'page'),
(346, 142, '_menu_item_target', ''),
(347, 142, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(348, 142, '_menu_item_xfn', ''),
(349, 142, '_menu_item_url', ''),
(351, 143, '_edit_last', '1'),
(352, 143, '_edit_lock', '1535953654:1'),
(353, 143, '_wp_page_template', 'home-page-two.php'),
(354, 145, '_menu_item_type', 'post_type'),
(355, 145, '_menu_item_menu_item_parent', '25'),
(356, 145, '_menu_item_object_id', '143'),
(357, 145, '_menu_item_object', 'page'),
(358, 145, '_menu_item_target', ''),
(359, 145, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(360, 145, '_menu_item_xfn', ''),
(361, 145, '_menu_item_url', ''),
(363, 149, 'Note', 'We should point out that maintaining your vehicle'),
(364, 149, '_edit_last', '1'),
(365, 149, '_edit_lock', '1535962526:1'),
(367, 151, '_wp_attached_file', '2018/09/thumb-6.jpg'),
(368, 151, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:19:\"2018/09/thumb-6.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(369, 149, '_thumbnail_id', '151'),
(374, 141, '_customize_restore_dismissed', '1'),
(375, 153, '_wp_attached_file', '2018/09/logo.png'),
(376, 153, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:70;s:4:\"file\";s:16:\"2018/09/logo.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-150x70.png\";s:5:\"width\";i:150;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"logo-300x70.png\";s:5:\"width\";i:300;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-200x70.png\";s:5:\"width\";i:200;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"custom-image\";a:4:{s:4:\"file\";s:15:\"logo-300x70.png\";s:5:\"width\";i:300;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(377, 154, '_wp_attached_file', '2018/09/logo-2.png'),
(378, 154, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:231;s:6:\"height\";i:63;s:4:\"file\";s:18:\"2018/09/logo-2.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"logo-2-150x63.png\";s:5:\"width\";i:150;s:6:\"height\";i:63;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:17:\"logo-2-200x63.png\";s:5:\"width\";i:200;s:6:\"height\";i:63;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(379, 155, '_wp_attached_file', '2018/09/favicon.png'),
(380, 155, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:21;s:6:\"height\";i:17;s:4:\"file\";s:19:\"2018/09/favicon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-08-28 04:21:19', '2018-08-28 04:21:19', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-08-29 11:52:03', '2018-08-29 05:52:03', '', 0, 'http://localhost/portfolio_wp/?p=1', 0, 'post', '', 2),
(2, 1, '2018-08-28 04:21:19', '2018-08-28 04:21:19', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/portfolio_wp/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-08-28 04:21:19', '2018-08-28 04:21:19', '', 0, 'http://localhost/portfolio_wp/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-08-28 04:21:19', '2018-08-28 04:21:19', '<h2>Who we are</h2><p>Our website address is: http://localhost/portfolio_wp.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-08-28 04:21:19', '2018-08-28 04:21:19', '', 0, 'http://localhost/portfolio_wp/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-08-28 04:21:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-08-28 04:21:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_wp/?p=4', 0, 'post', '', 0),
(5, 1, '2018-08-28 10:35:09', '0000-00-00 00:00:00', '', 'Espresso', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-08-28 10:35:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_wp/wp-content/uploads/2018/08/espresso.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, '2018-08-28 10:35:09', '0000-00-00 00:00:00', '', 'Sandwich', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-08-28 10:35:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_wp/wp-content/uploads/2018/08/sandwich.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2018-08-28 10:35:09', '0000-00-00 00:00:00', '', 'Coffee', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-08-28 10:35:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_wp/wp-content/uploads/2018/08/coffee.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2018-08-28 10:35:09', '0000-00-00 00:00:00', 'Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time.', 'Home', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-28 10:35:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_wp/?page_id=8', 0, 'page', '', 0),
(9, 1, '2018-08-28 10:35:09', '0000-00-00 00:00:00', 'You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.', 'About', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-28 10:35:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_wp/?page_id=9', 0, 'page', '', 0),
(10, 1, '2018-08-28 10:35:09', '0000-00-00 00:00:00', 'This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-28 10:35:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_wp/?page_id=10', 0, 'page', '', 0),
(11, 1, '2018-08-28 10:35:09', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-28 10:35:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_wp/?page_id=11', 0, 'page', '', 0),
(12, 1, '2018-08-28 10:35:09', '0000-00-00 00:00:00', 'This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.', 'A homepage section', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-28 10:35:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_wp/?page_id=12', 0, 'page', '', 0),
(13, 1, '2018-08-28 10:35:09', '0000-00-00 00:00:00', '{\n    \"widget_text[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"8279ae2c5dcbd0d24d4d23ae12b0ae2b\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-28 04:35:09\"\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==\",\n            \"title\": \"Search\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"0d8ddf947bfce3bab2d51a44e996b8e5\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-28 04:35:09\"\n    },\n    \"widget_text[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"33349fc574f4cfed31fd68e431800a9c\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-28 04:35:09\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-2\",\n            \"search-3\",\n            \"text-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-28 04:35:09\"\n    },\n    \"widget_text[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"8279ae2c5dcbd0d24d4d23ae12b0ae2b\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-28 04:35:09\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-28 04:35:09\"\n    },\n    \"widget_text[5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"33349fc574f4cfed31fd68e431800a9c\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-28 04:35:09\"\n    },\n    \"widget_search[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==\",\n            \"title\": \"Search\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"0d8ddf947bfce3bab2d51a44e996b8e5\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-28 04:35:09\"\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-5\",\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-28 04:35:09\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            5,\n            6,\n            7,\n            8,\n            9,\n            10,\n            11,\n            12\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-28 04:35:09\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Top Menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-28 04:35:09\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/portfolio_wp/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-28 04:35:09\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 9,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"About\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-28 04:35:09\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 11,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-28 04:35:09\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 10,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-28 04:35:09\"\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-28 04:35:09\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Social Links Menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-28 04:35:09\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-28 04:35:09\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-28 04:35:09\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-28 04:35:09\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-28 04:35:09\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 4,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-28 04:35:09\"\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-28 04:35:09\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-28 04:35:09\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 8,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-28 04:35:09\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 11,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-28 04:35:09\"\n    },\n    \"twentyseventeen::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 12,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-28 04:35:09\"\n    },\n    \"twentyseventeen::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-28 04:35:09\"\n    },\n    \"twentyseventeen::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 11,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-28 04:35:09\"\n    },\n    \"twentyseventeen::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 10,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-28 04:35:09\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'db5d75a7-5b56-4215-97a1-4de61c6afeb8', '', '', '2018-08-28 10:35:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_wp/?p=13', 0, 'customize_changeset', '', 0),
(15, 1, '2018-08-28 13:31:44', '2018-08-28 07:31:44', '[contact-form-7 id=\"100\" title=\"Main contact form\"]', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2018-09-01 16:11:19', '2018-09-01 10:11:19', '', 0, 'http://localhost/portfolio_wp/?page_id=15', 0, 'page', '', 0),
(16, 1, '2018-08-28 13:31:44', '2018-08-28 07:31:44', '', 'test', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-08-28 13:31:44', '2018-08-28 07:31:44', '', 15, 'http://localhost/portfolio_wp/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-08-28 13:31:54', '2018-08-28 07:31:54', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2018-09-03 13:03:53', '2018-09-03 07:03:53', '', 0, 'http://localhost/portfolio_wp/?p=17', 5, 'nav_menu_item', '', 0),
(18, 1, '2018-08-28 16:30:55', '2018-08-28 10:30:55', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2018-08-28 16:30:55', '2018-08-28 10:30:55', '', 0, 'http://localhost/portfolio_wp/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2018-08-28 16:30:55', '2018-08-28 10:30:55', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2018-08-28 16:30:55', '2018-08-28 10:30:55', '', 0, 'http://localhost/portfolio_wp/?p=19', 2, 'nav_menu_item', '', 0),
(20, 1, '2018-08-29 09:47:07', '2018-08-29 03:47:07', 'Dealer obcaecati adipisci vero lorem ipsum dolor sit amet, consectetur adipisicing elit. dolorum pariatur aut consectetur. Sit quisquam rerum corporis neque atque inventore nulla, quibusdam, ipsa suscipit aperiam reiciendis, ea odio?', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-09-01 14:11:05', '2018-09-01 08:11:05', '', 0, 'http://localhost/portfolio_wp/?page_id=20', 0, 'page', '', 0),
(21, 1, '2018-08-29 09:47:07', '2018-08-29 03:47:07', '', 'home', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-08-29 09:47:07', '2018-08-29 03:47:07', '', 20, 'http://localhost/portfolio_wp/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2018-08-29 09:47:18', '2018-08-29 03:47:18', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2018-09-01 16:10:42', '2018-09-01 10:10:42', '', 0, 'http://localhost/portfolio_wp/?page_id=22', 0, 'page', '', 0),
(23, 1, '2018-08-29 09:47:18', '2018-08-29 03:47:18', '', 'about', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-08-29 09:47:18', '2018-08-29 03:47:18', '', 22, 'http://localhost/portfolio_wp/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2018-08-29 09:47:47', '2018-08-29 03:47:47', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2018-09-03 13:03:53', '2018-09-03 07:03:53', '', 0, 'http://localhost/portfolio_wp/?p=24', 3, 'nav_menu_item', '', 0),
(25, 1, '2018-08-29 09:47:47', '2018-08-29 03:47:47', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2018-09-03 13:03:53', '2018-09-03 07:03:53', '', 0, 'http://localhost/portfolio_wp/?p=25', 1, 'nav_menu_item', '', 0),
(26, 1, '2018-08-29 10:52:35', '2018-08-29 04:52:35', 'You will begin to realize why this exercise is called the Dickens Pattern with reference to the ghost showing Scrooge some different futures as you notice that the idea of this exercise is to hypnotize yourself to be aware of two very real possibilities for your future. Two distinct pathways that you could take for your life this very day. Have a think about something that you do that you are maybe not motivated.', 'The Best Time to Go', '', 'publish', 'open', 'open', '', 'the-best-time-to-go', '', '', '2018-08-30 01:30:17', '2018-08-29 19:30:17', '', 0, 'http://localhost/portfolio_wp/?p=26', 0, 'post', '', 0),
(27, 1, '2018-08-29 10:52:35', '2018-08-29 04:52:35', '', 'The Best Time to Go', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-08-29 10:52:35', '2018-08-29 04:52:35', '', 26, 'http://localhost/portfolio_wp/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2018-08-29 10:52:58', '2018-08-29 04:52:58', 'You will begin to realize why this exercise is called the Dickens Pattern with reference to the ghost showing Scrooge some different futures as you notice that the idea of this exercise is to hypnotize yourself to be aware of two very real possibilities for your future. Two distinct pathways that you could take for your life this very day. Have a think about something that you do that you are maybe not motivated.', 'The Best Time to Go', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-08-29 10:52:58', '2018-08-29 04:52:58', '', 26, 'http://localhost/portfolio_wp/26-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-08-29 11:44:23', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-08-29 11:44:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_wp/?p=29', 0, 'post', '', 0),
(30, 1, '2018-08-29 11:44:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-29 11:44:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_wp/?page_id=30', 0, 'page', '', 0),
(31, 1, '2018-08-29 11:50:14', '2018-08-29 05:50:14', '', 'python', '', 'inherit', 'open', 'closed', '', 'python', '', '', '2018-08-29 11:50:14', '2018-08-29 05:50:14', '', 26, 'http://localhost/portfolio_wp/wp-content/uploads/2018/08/python.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2018-08-29 11:51:42', '2018-08-29 05:51:42', '', 'node-js-736399_960_720-400x200', '', 'inherit', 'open', 'closed', '', 'node-js-736399_960_720-400x200', '', '', '2018-08-29 11:51:42', '2018-08-29 05:51:42', '', 1, 'http://localhost/portfolio_wp/wp-content/uploads/2018/08/node-js-736399_960_720-400x200.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2018-08-29 11:52:03', '2018-08-29 05:52:03', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-08-29 11:52:03', '2018-08-29 05:52:03', '', 1, 'http://localhost/portfolio_wp/1-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-08-29 11:59:51', '2018-08-29 05:59:51', '<img class=\"alignnone size-medium wp-image-31\" src=\"http://localhost/portfolio_wp/wp-content/uploads/2018/08/python-300x150.png\" alt=\"\" width=\"300\" height=\"150\" />You will begin to realize why this exercise is called the Dickens Pattern with reference to the ghost showing Scrooge some different futures as you notice that the idea of this exercise is to hypnotize yourself to be aware of two very real possibilities for your future. Two distinct pathways that you could take for your life this very day. Have a think about something that you do that you are maybe not motivated.', 'The Best Time to Go', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-08-29 11:59:51', '2018-08-29 05:59:51', '', 26, 'http://localhost/portfolio_wp/26-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-08-29 12:00:27', '2018-08-29 06:00:27', 'You will begin to realize why this exercise is called the Dickens Pattern with reference to the ghost showing Scrooge some different futures as you notice that the idea of this exercise is to hypnotize yourself to be aware of two very real possibilities for your future. Two distinct pathways that you could take for your life this very day. Have a think about something that you do that you are maybe not motivated.', 'The Best Time to Go', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-08-29 12:00:27', '2018-08-29 06:00:27', '', 26, 'http://localhost/portfolio_wp/26-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2018-08-29 12:04:04', '2018-08-29 06:04:04', '', 'screenshot', '', 'inherit', 'open', 'closed', '', 'screenshot', '', '', '2018-08-29 12:04:04', '2018-08-29 06:04:04', '', 26, 'http://localhost/portfolio_wp/wp-content/uploads/2018/08/screenshot.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2018-08-29 12:06:02', '2018-08-29 06:06:02', '', 'download', '', 'inherit', 'open', 'closed', '', 'download', '', '', '2018-08-29 12:06:02', '2018-08-29 06:06:02', '', 26, 'http://localhost/portfolio_wp/wp-content/uploads/2018/08/download.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2018-08-29 12:07:11', '2018-08-29 06:07:11', 'You will begin to realize why this exercise is called the Dickens Pattern with reference to the ghost showing Scrooge some different futures as you notice that the idea of this exercise is to hypnotize yourself to be aware of two very real possibilities for your future. Two distinct pathways that you could take for your life this very day. Have a think about something that you do that you are maybe not motivated.', 'My third post', '', 'publish', 'open', 'open', '', 'my-third-post', '', '', '2018-08-30 01:17:26', '2018-08-29 19:17:26', '', 0, 'http://localhost/portfolio_wp/?p=38', 0, 'post', '', 0),
(39, 1, '2018-08-29 12:07:07', '2018-08-29 06:07:07', '', 'mean', '', 'inherit', 'open', 'closed', '', 'mean', '', '', '2018-08-29 12:07:07', '2018-08-29 06:07:07', '', 38, 'http://localhost/portfolio_wp/wp-content/uploads/2018/08/mean.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2018-08-29 12:07:11', '2018-08-29 06:07:11', 'You will begin to realize why this exercise is called the Dickens Pattern with reference to the ghost showing Scrooge some different futures as you notice that the idea of this exercise is to hypnotize yourself to be aware of two very real possibilities for your future. Two distinct pathways that you could take for your life this very day. Have a think about something that you do that you are maybe not motivated.', 'My third post', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-08-29 12:07:11', '2018-08-29 06:07:11', '', 38, 'http://localhost/portfolio_wp/38-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2018-08-29 12:21:57', '2018-08-29 06:21:57', 'You will begin to realize why this exercise is called the Dickens Pattern with reference to the ghost showing Scrooge some different futures as you notice that the idea of this exercise is to hypnotize yourself to be aware of two very real possibilities for your future. Two distinct pathways that you could take for your life this very day. Have a think about something that you do that you are maybe not motivated.', 'test', '', 'trash', 'open', 'open', '', 'test__trashed', '', '', '2018-08-29 13:11:25', '2018-08-29 07:11:25', '', 0, 'http://localhost/portfolio_wp/?p=41', 0, 'post', '', 0),
(42, 1, '2018-08-29 12:21:57', '2018-08-29 06:21:57', '', 'test', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-08-29 12:21:57', '2018-08-29 06:21:57', '', 41, 'http://localhost/portfolio_wp/41-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2018-08-29 13:09:29', '2018-08-29 07:09:29', 'You will begin to realize why this exercise is called the Dickens Pattern with reference to the ghost showing Scrooge some different futures as you notice that the idea of this exercise is to hypnotize yourself to be aware of two very real possibilities for your future. Two distinct pathways that you could take for your life this very day. Have a think about something that you do that you are maybe not motivated.', 'test', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-08-29 13:09:29', '2018-08-29 07:09:29', '', 41, 'http://localhost/portfolio_wp/41-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2018-08-29 13:09:42', '2018-08-29 07:09:42', '', 'csharpnet', '', 'inherit', 'open', 'closed', '', 'csharpnet', '', '', '2018-08-29 13:09:42', '2018-08-29 07:09:42', '', 41, 'http://localhost/portfolio_wp/wp-content/uploads/2018/08/csharpnet.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2018-08-29 13:12:29', '2018-08-29 07:12:29', 'You will begin to realize why this exercise is called the Dickens Pattern with reference to the ghost showing Scrooge some different futures as you notice that the idea of this exercise is to hypnotize yourself to be aware of two very real possibilities for your future. Two distinct pathways that you could take for your life this very day. Have a think about something that you do that you are maybe not motivated.', 'Replacing a timing', '', 'publish', 'open', 'open', '', 'replacing-a-timing', '', '', '2018-08-29 14:36:49', '2018-08-29 08:36:49', '', 0, 'http://localhost/portfolio_wp/?p=45', 0, 'post', '', 0),
(46, 1, '2018-08-29 13:12:29', '2018-08-29 07:12:29', 'You will begin to realize why this exercise is called the Dickens Pattern with reference to the ghost showing Scrooge some different futures as you notice that the idea of this exercise is to hypnotize yourself to be aware of two very real possibilities for your future. Two distinct pathways that you could take for your life this very day. Have a think about something that you do that you are maybe not motivated.', 'Replacing a timing', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2018-08-29 13:12:29', '2018-08-29 07:12:29', '', 45, 'http://localhost/portfolio_wp/45-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2018-08-29 14:44:42', '2018-08-29 08:44:42', 'Mr jashim is proprietor for aroma international. he is a pure businessman with many diversity business. He is a great social worker. Mr jashim is concern region chairperson 315Bb2. President, Lion Club senbag Central. Organize Secretary, Senbag kollan somity dhaka. Secretary, Edilpur Sikkah o Saskrikik faundation.', 'ABOUT PROPRIETOR', '', 'publish', 'open', 'open', '', 'about-proprietor', '', '', '2018-08-29 16:51:31', '2018-08-29 10:51:31', '', 0, 'http://localhost/portfolio_wp/?p=47', 0, 'post', '', 0),
(48, 1, '2018-08-29 14:44:42', '2018-08-29 08:44:42', 'Mr jashim is proprietor for aroma international. he is a pure businessman with many diversity business. He is a great social worker. Mr jashim is concern region chairperson 315Bb2. President, Lion Club senbag Central. Organize Secretary, Senbag kollan somity dhaka. Secretary, Edilpur Sikkah o Saskrikik faundation.', 'ABOUT PROPRIETOR', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2018-08-29 14:44:42', '2018-08-29 08:44:42', '', 47, 'http://localhost/portfolio_wp/47-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2018-08-29 14:45:31', '2018-08-29 08:45:31', '', 'SERVICE WE PROVIDE', '', 'publish', 'open', 'open', '', 'service-we-provide', '', '', '2018-08-30 01:29:59', '2018-08-29 19:29:59', '', 0, 'http://localhost/portfolio_wp/?p=49', 0, 'post', '', 0),
(50, 1, '2018-08-29 14:45:27', '2018-08-29 08:45:27', '', 'java-script-1', '', 'inherit', 'open', 'closed', '', 'java-script-1', '', '', '2018-08-29 14:45:27', '2018-08-29 08:45:27', '', 49, 'http://localhost/portfolio_wp/wp-content/uploads/2018/08/java-script-1.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2018-08-29 14:45:31', '2018-08-29 08:45:31', '', 'SERVICE WE PROVIDE', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2018-08-29 14:45:31', '2018-08-29 08:45:31', '', 49, 'http://localhost/portfolio_wp/49-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2018-08-29 15:32:05', '2018-08-29 09:32:05', '', 'Screenshot002', '', 'inherit', 'open', 'closed', '', 'screenshot002', '', '', '2018-08-29 15:32:05', '2018-08-29 09:32:05', '', 47, 'http://localhost/portfolio_wp/wp-content/uploads/2018/08/Screenshot002.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2018-08-29 15:42:22', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-08-29 15:42:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_wp/?p=53', 0, 'post', '', 0),
(54, 1, '2018-08-29 16:46:54', '2018-08-29 10:46:54', 'You will begin to realize why this exercise is called the Dickens Pattern with reference to the ghost showing Scrooge some different futures as you notice that the idea of this exercise is to hypnotize yourself to be aware of two very real possibilities for your future. Two distinct pathways that you could take for your life this very day. Have a think about something that you do that you are maybe not motivated.', 'New post', '', 'publish', 'open', 'open', '', 'new-post', '', '', '2018-08-30 01:23:24', '2018-08-29 19:23:24', '', 0, 'http://localhost/portfolio_wp/?p=54', 0, 'post', '', 1),
(55, 1, '2018-08-29 16:46:50', '2018-08-29 10:46:50', '', 't1', '', 'inherit', 'open', 'closed', '', 't1', '', '', '2018-08-29 16:46:50', '2018-08-29 10:46:50', '', 54, 'http://localhost/portfolio_wp/wp-content/uploads/2018/08/t1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2018-08-29 16:46:54', '2018-08-29 10:46:54', 'You will begin to realize why this exercise is called the Dickens Pattern with reference to the ghost showing Scrooge some different futures as you notice that the idea of this exercise is to hypnotize yourself to be aware of two very real possibilities for your future. Two distinct pathways that you could take for your life this very day. Have a think about something that you do that you are maybe not motivated.', 'New post', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2018-08-29 16:46:54', '2018-08-29 10:46:54', '', 54, 'http://localhost/portfolio_wp/54-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2018-08-29 16:58:39', '2018-08-29 10:58:39', 'You will begin to realize why this exercise is called the Dickens Pattern with reference to the ghost showing Scrooge some different futures as you notice that the idea of this exercise is to hypnotize yourself to be aware of two very real possibilities for your future. Two distinct pathways that you could take for your life this very day. Have a think about something that you do that you are maybe not motivated.', 'Check tag post', '', 'publish', 'open', 'open', '', 'check-tag-post', '', '', '2018-08-29 16:58:39', '2018-08-29 10:58:39', '', 0, 'http://localhost/portfolio_wp/?p=57', 0, 'post', '', 2),
(58, 1, '2018-08-29 16:58:39', '2018-08-29 10:58:39', 'You will begin to realize why this exercise is called the Dickens Pattern with reference to the ghost showing Scrooge some different futures as you notice that the idea of this exercise is to hypnotize yourself to be aware of two very real possibilities for your future. Two distinct pathways that you could take for your life this very day. Have a think about something that you do that you are maybe not motivated.', 'Check tag post', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-08-29 16:58:39', '2018-08-29 10:58:39', '', 57, 'http://localhost/portfolio_wp/57-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2018-08-29 23:59:57', '2018-08-29 17:59:57', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-08-29 23:59:57', '2018-08-29 17:59:57', '', 22, 'http://localhost/portfolio_wp/22-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2018-08-30 00:00:10', '2018-08-29 18:00:10', '', 'Home', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-08-30 00:00:10', '2018-08-29 18:00:10', '', 20, 'http://localhost/portfolio_wp/20-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2018-08-30 00:00:26', '2018-08-29 18:00:26', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-08-30 00:00:26', '2018-08-29 18:00:26', '', 15, 'http://localhost/portfolio_wp/15-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2018-08-30 00:01:19', '2018-08-29 18:01:19', 'Dealer obcaecati adipisci vero lorem ipsum dolor sit amet, consectetur adipisicing elit. dolorum pariatur aut consectetur. Sit quisquam rerum corporis neque atque inventore nulla, quibusdam, ipsa suscipit aperiam reiciendis, ea odio?', 'Home', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-08-30 00:01:19', '2018-08-29 18:01:19', '', 20, 'http://localhost/portfolio_wp/20-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2018-08-30 15:05:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-30 15:05:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_wp/?post_type=slider-items&p=63', 0, 'slider-items', '', 0),
(64, 1, '2018-08-30 15:08:41', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-30 15:08:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_wp/?post_type=slider-items&p=64', 0, 'slider-items', '', 0),
(65, 1, '2018-08-30 15:10:18', '2018-08-30 09:10:18', 'We Provide best solution. consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.', 'Welcome to the most stunning', '', 'publish', 'closed', 'closed', '', 'test', '', '', '2018-09-01 10:58:14', '2018-09-01 04:58:14', '', 0, 'http://localhost/portfolio_wp/?post_type=slider-items&#038;p=65', 0, 'slider-items', '', 0),
(66, 1, '2018-08-30 15:41:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-30 15:41:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_wp/?post_type=slider-items&p=66', 0, 'slider-items', '', 0),
(67, 1, '2018-08-30 15:41:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-30 15:41:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_wp/?post_type=slider-items&p=67', 0, 'slider-items', '', 0),
(68, 1, '2018-08-30 15:42:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-30 15:42:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_wp/?post_type=slider-items&p=68', 0, 'slider-items', '', 0),
(69, 1, '2018-08-30 15:46:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-30 15:46:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_wp/?post_type=slider-items&p=69', 0, 'slider-items', '', 0),
(70, 1, '2018-08-30 15:46:22', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-30 15:46:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_wp/?post_type=slider-items&p=70', 0, 'slider-items', '', 0),
(71, 1, '2018-08-30 15:48:44', '2018-08-30 09:48:44', 'Car dealer website', 'Welcome to the most stunning', '', 'inherit', 'closed', 'closed', '', '65-autosave-v1', '', '', '2018-08-30 15:48:44', '2018-08-30 09:48:44', '', 65, 'http://localhost/portfolio_wp/65-autosave-v1/', 0, 'revision', '', 0),
(72, 1, '2018-08-30 15:48:53', '2018-08-30 09:48:53', '', '3176d-road-bg', '', 'inherit', 'open', 'closed', '', '3176d-road-bg', '', '', '2018-08-30 15:48:53', '2018-08-30 09:48:53', '', 65, 'http://localhost/portfolio_wp/wp-content/uploads/2018/08/3176d-road-bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2018-08-30 16:07:46', '2018-08-30 10:07:46', 'Your car needs!', 'We have everything', '', 'trash', 'closed', 'closed', '', 'we-have-everything__trashed', '', '', '2018-09-01 10:52:54', '2018-09-01 04:52:54', '', 0, 'http://localhost/portfolio_wp/?post_type=slider-items&#038;p=73', 0, 'slider-items', '', 0),
(74, 1, '2018-08-30 16:07:13', '2018-08-30 10:07:13', '', 'motion-car2', '', 'inherit', 'open', 'closed', '', 'motion-car2', '', '', '2018-08-30 16:07:13', '2018-08-30 10:07:13', '', 73, 'http://localhost/portfolio_wp/wp-content/uploads/2018/08/motion-car2.png', 0, 'attachment', 'image/png', 0),
(75, 1, '2018-08-30 16:07:38', '2018-08-30 10:07:38', '', 'e13ec-06-audi-s2', '', 'inherit', 'open', 'closed', '', 'e13ec-06-audi-s2', '', '', '2018-08-30 16:07:38', '2018-08-30 10:07:38', '', 73, 'http://localhost/portfolio_wp/wp-content/uploads/2018/08/e13ec-06-audi-s2.png', 0, 'attachment', 'image/png', 0),
(76, 1, '2018-08-30 16:13:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-30 16:13:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_wp/?post_type=slider-items&p=76', 0, 'slider-items', '', 0),
(77, 1, '2018-08-30 16:17:40', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-30 16:17:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_wp/?post_type=slider-items&p=77', 0, 'slider-items', '', 0),
(78, 1, '2018-08-30 16:20:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-30 16:20:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_wp/?post_type=slider-items&p=78', 0, 'slider-items', '', 0),
(79, 1, '2018-08-30 16:20:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-30 16:20:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_wp/?post_type=slider-items&p=79', 0, 'slider-items', '', 0),
(80, 1, '2018-08-30 17:09:58', '2018-08-30 11:09:58', '', 'Test Slider', '', 'trash', 'closed', 'closed', '', 'test-slider__trashed', '', '', '2018-09-01 10:52:45', '2018-09-01 04:52:45', '', 0, 'http://localhost/portfolio_wp/?post_type=slider-items&#038;p=80', 0, 'slider-items', '', 0),
(81, 1, '2018-08-30 17:09:50', '2018-08-30 11:09:50', '', '9c326-img2', '', 'inherit', 'open', 'closed', '', '9c326-img2', '', '', '2018-08-30 17:09:50', '2018-08-30 11:09:50', '', 80, 'http://localhost/portfolio_wp/wp-content/uploads/2018/08/9c326-img2.png', 0, 'attachment', 'image/png', 0),
(82, 1, '2018-09-01 11:06:24', '2018-09-01 05:06:24', 'We are dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'The wind is not even close to us', '', 'publish', 'closed', 'closed', '', 'the-wind-is-not-even-close-to-us', '', '', '2018-09-01 11:07:05', '2018-09-01 05:07:05', '', 0, 'http://localhost/portfolio_wp/?post_type=slider-items&#038;p=82', 0, 'slider-items', '', 0),
(83, 1, '2018-09-01 11:07:01', '2018-09-01 05:07:01', '', '04', '', 'inherit', 'open', 'closed', '', '04', '', '', '2018-09-01 11:07:01', '2018-09-01 05:07:01', '', 82, 'http://localhost/portfolio_wp/wp-content/uploads/2018/09/04.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2018-09-01 13:00:49', '2018-09-01 07:00:49', '[boxes]You will begin to realize why this exercise is called the Dickens Pattern with reference to the ghost showing Scrooge some different futures as you notice that the idea of this exercise is to hypnotize yourself to be aware of two very real possibilities for your future. Two distinct pathways that you could take for[/boxes]', 'Shortcode test', '', 'trash', 'closed', 'closed', '', 'shortcode-test__trashed', '', '', '2018-09-01 13:14:36', '2018-09-01 07:14:36', '', 0, 'http://localhost/portfolio_wp/?page_id=84', 0, 'page', '', 0),
(85, 1, '2018-09-01 13:00:49', '2018-09-01 07:00:49', '[basic]shortcode test[/basic]', 'Shortcode test', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2018-09-01 13:00:49', '2018-09-01 07:00:49', '', 84, 'http://localhost/portfolio_wp/84-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2018-09-01 13:06:40', '2018-09-01 07:06:40', '[youtube]shortcode test[/youtube]', 'Shortcode test', '', 'inherit', 'closed', 'closed', '', '84-autosave-v1', '', '', '2018-09-01 13:06:40', '2018-09-01 07:06:40', '', 84, 'http://localhost/portfolio_wp/84-autosave-v1/', 0, 'revision', '', 0),
(87, 1, '2018-09-01 13:07:26', '2018-09-01 07:07:26', '[youtube]04LyWbiho4E[/youtube]', 'Shortcode test', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2018-09-01 13:07:26', '2018-09-01 07:07:26', '', 84, 'http://localhost/portfolio_wp/84-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2018-09-01 13:13:24', '2018-09-01 07:13:24', '[boxes]You will begin to realize why this exercise is called the Dickens Pattern with reference to the ghost showing Scrooge some different futures as you notice that the idea of this exercise is to hypnotize yourself to be aware of two very real possibilities for your future. Two distinct pathways that you could take for[/boxes]', 'Shortcode test', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2018-09-01 13:13:24', '2018-09-01 07:13:24', '', 84, 'http://localhost/portfolio_wp/84-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(89, 1, '2018-09-01 13:14:57', '2018-09-01 07:14:57', '[boxes text=\"Car Dealer is the best premium HTML5 Template. We provide everything you need to build an Amazing dealership website developed especially for car sellers, dealers or auto motor retailers. You can use this template for creating website based on any framework and any language\" class=\"boxes-default\"][/boxes][boxes text=\"Car Dealer is the best premium HTML5 Template. We provide everything you need to build an Amazing dealership website developed especially for car sellers, dealers or auto motor retailers. You can use this template for creating website based on any framework and any language\" class=\"boxes-blue\"][/boxes][boxes text=\"Car Dealer is the best premium HTML5 Template. We provide everything you need to build an Amazing dealership website developed especially for car sellers, dealers or auto motor retailers. You can use this template for creating website based on any framework and any language\" class=\"boxes-aqua\"][/boxes]', 'Shortcode test', '', 'publish', 'closed', 'closed', '', 'shortcode-test', '', '', '2018-09-01 13:36:39', '2018-09-01 07:36:39', '', 0, 'http://localhost/portfolio_wp/?page_id=89', 0, 'page', '', 0),
(90, 1, '2018-09-01 13:14:57', '2018-09-01 07:14:57', '[boxes]You will begin to realize why this exercise is called the Dickens Pattern with reference to the ghost showing Scrooge some different futures as you notice that the idea of this exercise is to hypnotize yourself to be aware of two very real possibilities for your future. Two distinct pathways that you could take for[/boxes]', 'Shortcode test', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2018-09-01 13:14:57', '2018-09-01 07:14:57', '', 89, 'http://localhost/portfolio_wp/89-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2018-09-01 13:20:07', '2018-09-01 07:20:07', '[boxes]You will begin to realize why this exercise is called the Dickens Pattern with reference to the ghost showing Scrooge some different futures as you notice that the idea of this exercise is to hypnotize yourself to be aware of two very real possibilities for your future. Two distinct pathways that you could take for[/boxes][boxes]You will begin to realize why this exercise is called the Dickens Pattern with reference to the ghost showing Scrooge some different futures as you notice that the idea of this exercise is to hypnotize yourself to be aware of two very real possibilities for your future. Two distinct pathways that you could take for[/boxes][boxes]You will begin to realize why this exercise is called the Dickens Pattern with reference to the ghost showing Scrooge some different futures as you notice that the idea of this exercise is to hypnotize yourself to be aware of two very real possibilities for your future. Two distinct pathways that you could take for[/boxes]', 'Shortcode test', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2018-09-01 13:20:07', '2018-09-01 07:20:07', '', 89, 'http://localhost/portfolio_wp/89-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2018-09-01 13:36:21', '2018-09-01 07:36:21', '[boxes text=\"Car Dealer is the best premium HTML5 Template. We provide everything you need to build an Amazing dealership website developed especially for car sellers, dealers or auto motor retailers. You can use this template for creating website based on any framework and any language\" class=\"boxes-default\"][/boxes][boxes text=\"Car Dealer is the best premium HTML5 Template. We provide everything you need to build an Amazing dealership website developed especially for car sellers, dealers or auto motor retailers. You can use this template for creating website based on any framework and any language\" class=\"boxes-default\"][/boxes][boxes text=\"Car Dealer is the best premium HTML5 Template. We provide everything you need to build an Amazing dealership website developed especially for car sellers, dealers or auto motor retailers. You can use this template for creating website based on any framework and any language\" class=\"boxes-default\"][/boxes]', 'Shortcode test', '', 'inherit', 'closed', 'closed', '', '89-autosave-v1', '', '', '2018-09-01 13:36:21', '2018-09-01 07:36:21', '', 89, 'http://localhost/portfolio_wp/89-autosave-v1/', 0, 'revision', '', 0),
(93, 1, '2018-09-01 13:28:38', '2018-09-01 07:28:38', '[youtube video_id=\"WEqIVC-qY5E\" width=\"400\" height=\"300\"][/youtube]', 'Shortcode test', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2018-09-01 13:28:38', '2018-09-01 07:28:38', '', 89, 'http://localhost/portfolio_wp/89-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2018-09-01 13:29:05', '2018-09-01 07:29:05', '[youtube video_id=\"WEqIVC-qY5E\" width=\"400px\" height=\"300px\"][/youtube]', 'Shortcode test', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2018-09-01 13:29:05', '2018-09-01 07:29:05', '', 89, 'http://localhost/portfolio_wp/89-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2018-09-01 13:30:44', '2018-09-01 07:30:44', '[youtube video_id=\"WEqIVC-qY5E\" width=\"500px\" height=\"300px\"][/youtube]', 'Shortcode test', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2018-09-01 13:30:44', '2018-09-01 07:30:44', '', 89, 'http://localhost/portfolio_wp/89-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2018-09-01 13:34:37', '2018-09-01 07:34:37', '[boxes text=\"Car Dealer is the best premium HTML5 Template. We provide everything you need to build an Amazing dealership website developed especially for car sellers, dealers or auto motor retailers. You can use this template for creating website based on any framework and any language\" class=\"boxes\"][/boxes]', 'Shortcode test', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2018-09-01 13:34:37', '2018-09-01 07:34:37', '', 89, 'http://localhost/portfolio_wp/89-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2018-09-01 13:35:42', '2018-09-01 07:35:42', '[boxes text=\"Car Dealer is the best premium HTML5 Template. We provide everything you need to build an Amazing dealership website developed especially for car sellers, dealers or auto motor retailers. You can use this template for creating website based on any framework and any language\" class=\"boxes-default\"][/boxes]', 'Shortcode test', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2018-09-01 13:35:42', '2018-09-01 07:35:42', '', 89, 'http://localhost/portfolio_wp/89-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2018-09-01 13:36:39', '2018-09-01 07:36:39', '[boxes text=\"Car Dealer is the best premium HTML5 Template. We provide everything you need to build an Amazing dealership website developed especially for car sellers, dealers or auto motor retailers. You can use this template for creating website based on any framework and any language\" class=\"boxes-default\"][/boxes][boxes text=\"Car Dealer is the best premium HTML5 Template. We provide everything you need to build an Amazing dealership website developed especially for car sellers, dealers or auto motor retailers. You can use this template for creating website based on any framework and any language\" class=\"boxes-blue\"][/boxes][boxes text=\"Car Dealer is the best premium HTML5 Template. We provide everything you need to build an Amazing dealership website developed especially for car sellers, dealers or auto motor retailers. You can use this template for creating website based on any framework and any language\" class=\"boxes-aqua\"][/boxes]', 'Shortcode test', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2018-09-01 13:36:39', '2018-09-01 07:36:39', '', 89, 'http://localhost/portfolio_wp/89-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2018-09-01 13:59:12', '2018-09-01 07:59:12', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\nPortfolio Template \"[your-subject]\"\n[your-name] <bappy@dev.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Portfolio Template (http://localhost/portfolio_wp)\nbappy@dev.com\nReply-To: [your-email]\n\n0\n0\n\nPortfolio Template \"[your-subject]\"\nPortfolio Template <bappy@dev.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Portfolio Template (http://localhost/portfolio_wp)\n[your-email]\nReply-To: bappy@dev.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-09-01 13:59:12', '2018-09-01 07:59:12', '', 0, 'http://localhost/portfolio_wp/?post_type=wpcf7_contact_form&p=99', 0, 'wpcf7_contact_form', '', 0),
(100, 1, '2018-09-01 14:03:04', '2018-09-01 08:03:04', '<div class=\"contact-form row\">\r\n    <div class=\"col-lg-6 col-sm-12\">\r\n        <div class=\"form-group\">\r\n            [text* your-name id:your-name class:form-control placeholder \"Your name\"]\r\n        </div>\r\n    </div>\r\n    <div class=\"col-lg-6 col-sm-12\">\r\n        <div class=\"form-group\">\r\n            [email* email id:email class:form-control placeholder \"Your email\"]\r\n        </div>\r\n    </div>\r\n    <div class=\"col-lg-6 col-sm-12\">\r\n        <div class=\"form-group\">\r\n            [text phone class:form-control placeholder \"Phone number\"]\r\n        </div>\r\n    </div>\r\n    <div class=\"col-lg-6 col-sm-12\">\r\n        <div class=\"form-group\">\r\n           [text* subject class:form-control placeholder \"Message subject\"]\r\n        </div>\r\n    </div>\r\n    <div class=\"col-md-12\">\r\n        <div class=\"form-group\">\r\n            [textarea* comment class:form-control placeholder \"Enter your message\"]\r\n        </div>\r\n    </div>\r\n    <div class=\"col-md-12\">\r\n       [submit class:button class:red \"Send Message\"]\r\n    </div>\r\n</div>\n1\nPortfolio Template \"[subject]\"\n[your-name] <[email]>\nbappy@dev.com\nFrom: [your-name] <[email]>\r\nSubject: [subject]\r\nPhone Number: [phone]\r\n\r\nMessage Body:\r\n[comment]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Portfolio Template (http://localhost/portfolio_wp)\nReply-To: [email]\n\n\n\n1\nPortfolio Template \"[subject]\"\nPortfolio Template <bappy@dev.com>\n[email]\nFrom: [your-name] <[email]>\r\nSubject: [subject]\r\nPhone Number: [phone]\r\n\r\nMessage Body:\r\n[comment]\r\n\r\n-- \r\nThis e-mail was reply from a contact form on Portfolio Template (http://localhost/portfolio_wp)\nReply-To: [email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Main contact form', '', 'publish', 'closed', 'closed', '', 'main-contact-form', '', '', '2018-09-01 15:23:21', '2018-09-01 09:23:21', '', 0, 'http://localhost/portfolio_wp/?post_type=wpcf7_contact_form&#038;p=100', 0, 'wpcf7_contact_form', '', 0),
(101, 1, '2018-09-01 14:05:29', '2018-09-01 08:05:29', '[contact-form-7 id=\"100\" title=\"Main contact form\"]', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-09-01 14:07:46', '2018-09-01 08:07:46', '', 0, 'http://localhost/portfolio_wp/?page_id=101', 0, 'page', '', 0),
(102, 1, '2018-09-01 14:05:29', '2018-09-01 08:05:29', '[contact-form-7 id=\"100\" title=\"Main contact form\"]', 'Contact', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2018-09-01 14:05:29', '2018-09-01 08:05:29', '', 101, 'http://localhost/portfolio_wp/101-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2018-09-01 14:38:47', '2018-09-01 08:38:47', '[contact-form-7 id=\"100\" title=\"Main contact form\"]', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-09-01 14:38:47', '2018-09-01 08:38:47', '', 15, 'http://localhost/portfolio_wp/15-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2018-09-01 15:20:17', '2018-09-01 09:20:17', '[contact-form-7 id=\"99\" title=\"Contact form 1\"]', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-09-01 15:20:17', '2018-09-01 09:20:17', '', 15, 'http://localhost/portfolio_wp/15-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2018-09-01 15:21:55', '2018-09-01 09:21:55', '[contact-form-7 id=\"100\" title=\"Main contact form\"]', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-09-01 15:21:55', '2018-09-01 09:21:55', '', 15, 'http://localhost/portfolio_wp/15-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2018-09-01 15:38:22', '2018-09-01 09:38:22', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-09-01 15:39:05', '2018-09-01 09:39:05', '', 0, 'http://localhost/portfolio_wp/?page_id=107', 0, 'page', '', 0),
(108, 1, '2018-09-01 15:38:22', '2018-09-01 09:38:22', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2018-09-01 15:38:22', '2018-09-01 09:38:22', '', 107, 'http://localhost/portfolio_wp/107-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2018-09-01 16:10:38', '2018-09-01 10:10:38', '', '03', '', 'inherit', 'open', 'closed', '', '03', '', '', '2018-09-01 16:10:38', '2018-09-01 10:10:38', '', 22, 'http://localhost/portfolio_wp/wp-content/uploads/2018/09/03.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2018-09-01 16:11:16', '2018-09-01 10:11:16', '', '13', '', 'inherit', 'open', 'closed', '', '13', '', '', '2018-09-01 16:11:16', '2018-09-01 10:11:16', '', 15, 'http://localhost/portfolio_wp/wp-content/uploads/2018/09/13.png', 0, 'attachment', 'image/png', 0),
(111, 1, '2018-09-01 17:15:06', '2018-09-01 11:15:06', '{\n    \"carnews::logo\": {\n        \"value\": \"http://localhost/portfolio_wp/wp-content/uploads/2018/09/03.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-01 11:15:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '33c1d6f9-e075-4f77-a2a0-4848cd6555e6', '', '', '2018-09-01 17:15:06', '2018-09-01 11:15:06', '', 0, 'http://localhost/portfolio_wp/33c1d6f9-e075-4f77-a2a0-4848cd6555e6/', 0, 'customize_changeset', '', 0),
(112, 1, '2018-09-01 17:15:15', '0000-00-00 00:00:00', '{\n    \"carnews::logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-01 11:15:15\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '330097f9-b3fc-4611-b8bb-307c59a8ede0', '', '', '2018-09-01 17:15:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_wp/?p=112', 0, 'customize_changeset', '', 0),
(113, 1, '2018-09-01 17:15:22', '2018-09-01 11:15:22', '{\n    \"carnews::logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-01 11:15:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a09ad980-b84f-4d75-9dcf-09eb5a7527b0', '', '', '2018-09-01 17:15:22', '2018-09-01 11:15:22', '', 0, 'http://localhost/portfolio_wp/a09ad980-b84f-4d75-9dcf-09eb5a7527b0/', 0, 'customize_changeset', '', 0),
(114, 1, '2018-09-01 17:23:19', '2018-09-01 11:23:19', '{\n    \"carnews::logo\": {\n        \"value\": \"http://localhost/portfolio_wp/wp-content/uploads/2018/09/13.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-01 11:23:19\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '59730b87-6a81-4a92-b3b7-d0b6549344a3', '', '', '2018-09-01 17:23:19', '2018-09-01 11:23:19', '', 0, 'http://localhost/portfolio_wp/59730b87-6a81-4a92-b3b7-d0b6549344a3/', 0, 'customize_changeset', '', 0),
(115, 1, '2018-09-01 17:23:27', '2018-09-01 11:23:27', '{\n    \"carnews::favicon\": {\n        \"value\": \"http://localhost/portfolio_wp/wp-content/uploads/2018/09/03.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-01 11:23:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'caa3eb04-3b85-49d3-8ca0-16f57d0cc999', '', '', '2018-09-01 17:23:27', '2018-09-01 11:23:27', '', 0, 'http://localhost/portfolio_wp/caa3eb04-3b85-49d3-8ca0-16f57d0cc999/', 0, 'customize_changeset', '', 0),
(116, 1, '2018-09-01 17:38:01', '2018-09-01 11:38:01', '{\n    \"carnews::header_phone\": {\n        \"value\": \"(007) 123 456 7890\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-01 11:38:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2e1ba705-88c1-48ef-9356-6d090558fd04', '', '', '2018-09-01 17:38:01', '2018-09-01 11:38:01', '', 0, 'http://localhost/portfolio_wp/2e1ba705-88c1-48ef-9356-6d090558fd04/', 0, 'customize_changeset', '', 0),
(117, 1, '2018-09-01 17:41:22', '2018-09-01 11:41:22', '{\n    \"carnews::header_email\": {\n        \"value\": \"bappy@dev.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-01 11:41:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '42594d51-26b3-4ea4-a3d1-292ba89d2e10', '', '', '2018-09-01 17:41:22', '2018-09-01 11:41:22', '', 0, 'http://localhost/portfolio_wp/42594d51-26b3-4ea4-a3d1-292ba89d2e10/', 0, 'customize_changeset', '', 0),
(118, 1, '2018-09-02 16:27:51', '2018-09-02 10:27:51', '', 'logo-dark', '', 'inherit', 'open', 'closed', '', 'logo-dark', '', '', '2018-09-02 16:27:51', '2018-09-02 10:27:51', '', 0, 'http://localhost/portfolio_wp/wp-content/uploads/2018/09/logo-dark.png', 0, 'attachment', 'image/png', 0),
(119, 1, '2018-09-02 16:28:13', '2018-09-02 10:28:13', '', 'logo-light', '', 'inherit', 'open', 'closed', '', 'logo-light', '', '', '2018-09-02 16:28:13', '2018-09-02 10:28:13', '', 0, 'http://localhost/portfolio_wp/wp-content/uploads/2018/09/logo-light.png', 0, 'attachment', 'image/png', 0),
(120, 1, '2018-09-02 16:28:21', '2018-09-02 10:28:21', '{\n    \"carnews::logo\": {\n        \"value\": \"http://localhost/portfolio_wp/wp-content/uploads/2018/09/logo-light.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-02 10:28:21\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0a07b6af-16c7-4838-8d97-ed6f5e3b6fc3', '', '', '2018-09-02 16:28:21', '2018-09-02 10:28:21', '', 0, 'http://localhost/portfolio_wp/0a07b6af-16c7-4838-8d97-ed6f5e3b6fc3/', 0, 'customize_changeset', '', 0),
(121, 1, '2018-09-02 16:28:54', '2018-09-02 10:28:54', '', 'favicon', '', 'inherit', 'open', 'closed', '', 'favicon', '', '', '2018-09-02 16:28:54', '2018-09-02 10:28:54', '', 0, 'http://localhost/portfolio_wp/wp-content/uploads/2018/09/favicon.ico', 0, 'attachment', 'image/x-icon', 0),
(122, 1, '2018-09-02 16:29:05', '2018-09-02 10:29:05', '{\n    \"carnews::favicon\": {\n        \"value\": \"http://localhost/portfolio_wp/wp-content/uploads/2018/09/favicon.ico\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-02 10:29:05\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bc440363-2caa-4984-84f6-245f33e6ae85', '', '', '2018-09-02 16:29:05', '2018-09-02 10:29:05', '', 0, 'http://localhost/portfolio_wp/bc440363-2caa-4984-84f6-245f33e6ae85/', 0, 'customize_changeset', '', 0),
(123, 1, '2018-09-02 16:45:49', '2018-09-02 10:45:49', '{\n    \"carnews::header_facebook\": {\n        \"value\": \"www.facebook.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-02 10:45:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1e3dffc2-1612-4648-ae74-fbfd5655778d', '', '', '2018-09-02 16:45:49', '2018-09-02 10:45:49', '', 0, 'http://localhost/portfolio_wp/1e3dffc2-1612-4648-ae74-fbfd5655778d/', 0, 'customize_changeset', '', 0),
(124, 1, '2018-09-02 16:48:46', '2018-09-02 10:48:46', '{\n    \"carnews::header_twitter\": {\n        \"value\": \"www.twitter.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-02 10:48:46\"\n    },\n    \"carnews::header_instagram\": {\n        \"value\": \"www.instagram.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-02 10:48:46\"\n    },\n    \"carnews::header_youtube\": {\n        \"value\": \"www.youtube.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-02 10:48:46\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2beaa146-02f2-4016-bd1f-ff8d7f7e7c12', '', '', '2018-09-02 16:48:46', '2018-09-02 10:48:46', '', 0, 'http://localhost/portfolio_wp/2beaa146-02f2-4016-bd1f-ff8d7f7e7c12/', 0, 'customize_changeset', '', 0),
(125, 1, '2018-09-02 16:57:18', '2018-09-02 10:57:18', '{\n    \"carnews::themeslug_url_setting_id\": {\n        \"value\": \"www.youtube.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-02 10:57:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b582440a-ce69-46c8-987f-122decd50a02', '', '', '2018-09-02 16:57:18', '2018-09-02 10:57:18', '', 0, 'http://localhost/portfolio_wp/b582440a-ce69-46c8-987f-122decd50a02/', 0, 'customize_changeset', '', 0),
(126, 1, '2018-09-02 17:03:57', '2018-09-02 11:03:57', '{\n    \"carnews::header_facebook\": {\n        \"value\": \"http://www.facebook.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-02 11:03:57\"\n    },\n    \"carnews::header_twitter\": {\n        \"value\": \"http://www.twitter.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-02 11:03:57\"\n    },\n    \"carnews::header_instagram\": {\n        \"value\": \"http://www.instagram.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-02 11:03:57\"\n    },\n    \"carnews::header_youtube\": {\n        \"value\": \"http://www.youtube.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-02 11:03:57\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e882b95e-9531-49e7-ae46-fb6f7efd5121', '', '', '2018-09-02 17:03:57', '2018-09-02 11:03:57', '', 0, 'http://localhost/portfolio_wp/e882b95e-9531-49e7-ae46-fb6f7efd5121/', 0, 'customize_changeset', '', 0),
(127, 1, '2018-09-02 17:17:41', '2018-09-02 11:17:41', '{\n    \"carnews::header_bg_color\": {\n        \"value\": \"#ff1111\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-02 11:17:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '59b8fe52-d25c-4d8a-b5ef-2b8f40b26f35', '', '', '2018-09-02 17:17:41', '2018-09-02 11:17:41', '', 0, 'http://localhost/portfolio_wp/59b8fe52-d25c-4d8a-b5ef-2b8f40b26f35/', 0, 'customize_changeset', '', 0),
(128, 1, '2018-09-02 17:18:19', '2018-09-02 11:18:19', '{\n    \"carnews::header_bg_color\": {\n        \"value\": \"#000000\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-02 11:18:19\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6865aceb-9f12-4d6c-bb2d-d4c87b7a230e', '', '', '2018-09-02 17:18:19', '2018-09-02 11:18:19', '', 0, 'http://localhost/portfolio_wp/6865aceb-9f12-4d6c-bb2d-d4c87b7a230e/', 0, 'customize_changeset', '', 0),
(129, 1, '2018-09-02 17:19:05', '2018-09-02 11:19:05', '{\n    \"carnews::header_bg_color\": {\n        \"value\": \"#183847\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-02 11:19:05\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8042f8f7-a7bf-4b55-acb2-6b8736553981', '', '', '2018-09-02 17:19:05', '2018-09-02 11:19:05', '', 0, 'http://localhost/portfolio_wp/8042f8f7-a7bf-4b55-acb2-6b8736553981/', 0, 'customize_changeset', '', 0),
(130, 1, '2018-09-02 17:46:53', '0000-00-00 00:00:00', '{\n    \"carnews::header_bg_color\": {\n        \"value\": \"#009396\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-02 11:46:53\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'ba85af8f-eb45-47af-b500-6084d3f87a0c', '', '', '2018-09-02 17:46:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_wp/?p=130', 0, 'customize_changeset', '', 0),
(131, 1, '2018-09-02 17:55:53', '0000-00-00 00:00:00', '{\n    \"carnews::header_bg_color\": {\n        \"value\": \"#231e59\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-02 11:55:53\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '5345ad90-9cc8-4f1b-8656-c419d51b9bb0', '', '', '2018-09-02 17:55:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_wp/?p=131', 0, 'customize_changeset', '', 0),
(132, 1, '2018-09-02 18:14:21', '0000-00-00 00:00:00', '{\n    \"carnews::header_bg_color\": {\n        \"value\": \"#683baf\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-02 12:14:21\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '4d156d6a-d58f-4ab1-a188-500a43641fa2', '', '', '2018-09-02 18:14:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_wp/?p=132', 0, 'customize_changeset', '', 0),
(133, 1, '2018-09-02 18:17:34', '0000-00-00 00:00:00', '{\n    \"carnews::header_bg_color\": {\n        \"value\": \"#180c59\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-02 12:17:34\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'dd6eab5f-c6b4-4a0d-857a-17277eae566a', '', '', '2018-09-02 18:17:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_wp/?p=133', 0, 'customize_changeset', '', 0),
(134, 1, '2018-09-02 18:20:42', '0000-00-00 00:00:00', '{\n    \"carnews::header_bg_color\": {\n        \"value\": \"#748e00\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-02 12:20:42\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '475fc977-84a3-4c65-9dfb-bf14f3ea8571', '', '', '2018-09-02 18:20:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_wp/?p=134', 0, 'customize_changeset', '', 0),
(135, 1, '2018-09-02 18:26:00', '0000-00-00 00:00:00', '{\n    \"carnews::header_bg_color\": {\n        \"value\": \"#3d961c\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-02 12:26:00\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '14a427d5-b1cb-40f4-90d8-8f2a2b3a057a', '', '', '2018-09-02 18:26:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_wp/?p=135', 0, 'customize_changeset', '', 0),
(136, 1, '2018-09-02 18:31:04', '0000-00-00 00:00:00', '{\n    \"carnews::header_bg_color\": {\n        \"value\": \"#0d7a43\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-02 12:31:04\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'f8ae3d81-bc1f-4061-9bd6-d4eac8e9f086', '', '', '2018-09-02 18:31:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_wp/?p=136', 0, 'customize_changeset', '', 0),
(137, 1, '2018-09-02 18:36:23', '0000-00-00 00:00:00', '{\n    \"carnews::header_bg_color\": {\n        \"value\": \"#00771b\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-02 12:36:23\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '374302d0-2805-4435-a428-e1940fec068a', '', '', '2018-09-02 18:36:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_wp/?p=137', 0, 'customize_changeset', '', 0),
(138, 1, '2018-09-02 18:40:29', '0000-00-00 00:00:00', '{\n    \"carnews::header_bg_color\": {\n        \"value\": \"#ce0469\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-02 12:40:29\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '87ebee44-5287-4b75-ad3c-6d4a3abf8766', '', '', '2018-09-02 18:40:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_wp/?p=138', 0, 'customize_changeset', '', 0),
(139, 1, '2018-09-02 18:42:57', '2018-09-02 12:42:57', '{\n    \"carnews::header_bg_color\": {\n        \"value\": \"#ea4f5a\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-02 12:42:57\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e5b5b595-d701-469b-8a8f-fe0f5447f983', '', '', '2018-09-02 18:42:57', '2018-09-02 12:42:57', '', 0, 'http://localhost/portfolio_wp/e5b5b595-d701-469b-8a8f-fe0f5447f983/', 0, 'customize_changeset', '', 0),
(140, 1, '2018-09-02 18:43:29', '2018-09-02 12:43:29', '{\n    \"carnews::header_bg_color\": {\n        \"value\": \"#012c3a\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-02 12:43:29\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4e52d397-c4cc-44a5-9fa3-0dc5b617bbb3', '', '', '2018-09-02 18:43:29', '2018-09-02 12:43:29', '', 0, 'http://localhost/portfolio_wp/4e52d397-c4cc-44a5-9fa3-0dc5b617bbb3/', 0, 'customize_changeset', '', 0),
(141, 1, '2018-09-03 10:20:06', '0000-00-00 00:00:00', '{\n    \"carnews::header_bg_color\": {\n        \"value\": \"#00352b\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-03 04:20:06\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '410d0a08-4711-4391-9449-9987d46ee0e5', '', '', '2018-09-03 10:20:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_wp/?p=141', 0, 'customize_changeset', '', 0),
(142, 1, '2018-09-03 10:49:24', '2018-09-03 04:49:24', ' ', '', '', 'publish', 'closed', 'closed', '', '142', '', '', '2018-09-03 13:03:53', '2018-09-03 07:03:53', '', 0, 'http://localhost/portfolio_wp/?p=142', 4, 'nav_menu_item', '', 0),
(143, 1, '2018-09-03 11:49:54', '2018-09-03 05:49:54', '', 'Home Two', '', 'publish', 'closed', 'closed', '', 'home-two', '', '', '2018-09-03 11:49:54', '2018-09-03 05:49:54', '', 0, 'http://localhost/portfolio_wp/?page_id=143', 0, 'page', '', 0),
(144, 1, '2018-09-03 11:49:54', '2018-09-03 05:49:54', '', 'Home Two', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2018-09-03 11:49:54', '2018-09-03 05:49:54', '', 143, 'http://localhost/portfolio_wp/143-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2018-09-03 11:50:09', '2018-09-03 05:50:09', ' ', '', '', 'publish', 'closed', 'closed', '', '145', '', '', '2018-09-03 13:03:53', '2018-09-03 07:03:53', '', 0, 'http://localhost/portfolio_wp/?p=145', 2, 'nav_menu_item', '', 0),
(146, 1, '2018-09-03 13:28:46', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-09-03 13:28:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_wp/?p=146', 0, 'post', '', 0),
(147, 1, '2018-09-03 13:31:02', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-03 13:31:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_wp/?post_type=slider-items&p=147', 0, 'slider-items', '', 0),
(148, 1, '2018-09-03 13:31:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-03 13:31:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_wp/?post_type=slider-items&p=148', 0, 'slider-items', '', 0),
(149, 1, '2018-09-03 13:36:03', '2018-09-03 07:36:03', 'Pharetra libero non facilisis imperdiet mi augue feugiat nisl sit amet mollis enim velit Vestibulum fringilla nulla ultricies sem imperdiet semper. Maecenas tincidunt. Proin porttitor lacus eget mi. Aenean at mi.', 'Custom field test', '', 'publish', 'open', 'open', '', 'custom-field-test', '', '', '2018-09-03 13:39:39', '2018-09-03 07:39:39', '', 0, 'http://localhost/portfolio_wp/?p=149', 0, 'post', '', 0),
(150, 1, '2018-09-03 13:34:18', '2018-09-03 07:34:18', '', 'Draft created on September 3, 2018 at 7:34 am', '', 'inherit', 'closed', 'closed', '', '149-revision-v1', '', '', '2018-09-03 13:34:18', '2018-09-03 07:34:18', '', 149, 'http://localhost/portfolio_wp/149-revision-v1/', 0, 'revision', '', 0),
(151, 1, '2018-09-03 13:35:56', '2018-09-03 07:35:56', '', 'thumb-6', '', 'inherit', 'open', 'closed', '', 'thumb-6', '', '', '2018-09-03 13:35:56', '2018-09-03 07:35:56', '', 149, 'http://localhost/portfolio_wp/wp-content/uploads/2018/09/thumb-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(152, 1, '2018-09-03 13:36:03', '2018-09-03 07:36:03', 'Pharetra libero non facilisis imperdiet mi augue feugiat nisl sit amet mollis enim velit Vestibulum fringilla nulla ultricies sem imperdiet semper. Maecenas tincidunt. Proin porttitor lacus eget mi. Aenean at mi.', 'Custom field test', '', 'inherit', 'closed', 'closed', '', '149-revision-v1', '', '', '2018-09-03 13:36:03', '2018-09-03 07:36:03', '', 149, 'http://localhost/portfolio_wp/149-revision-v1/', 0, 'revision', '', 0),
(153, 1, '2018-09-03 15:42:06', '2018-09-03 09:42:06', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2018-09-03 15:42:06', '2018-09-03 09:42:06', '', 0, 'http://localhost/portfolio_wp/wp-content/uploads/2018/09/logo.png', 0, 'attachment', 'image/png', 0),
(154, 1, '2018-09-03 15:42:22', '2018-09-03 09:42:22', '', 'logo-2', '', 'inherit', 'open', 'closed', '', 'logo-2', '', '', '2018-09-03 15:42:22', '2018-09-03 09:42:22', '', 0, 'http://localhost/portfolio_wp/wp-content/uploads/2018/09/logo-2.png', 0, 'attachment', 'image/png', 0),
(155, 1, '2018-09-03 15:47:22', '2018-09-03 09:47:22', '', 'favicon', '', 'inherit', 'open', 'closed', '', 'favicon-2', '', '', '2018-09-03 15:47:22', '2018-09-03 09:47:22', '', 0, 'http://localhost/portfolio_wp/wp-content/uploads/2018/09/favicon.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0),
(3, 'Footer Menu', 'footer-menu', 0),
(4, 'test', 'test', 0),
(5, 'Founder', 'founder', 0),
(6, 'Services', 'services', 0),
(7, 'New Category', 'new-category', 0),
(8, 'new', 'new', 0),
(9, 'post', 'post', 0),
(10, 'founder', 'founder', 0),
(11, 'test', 'test', 0),
(12, 'versatile', 'versatile', 0),
(13, 'lorem', 'lorem', 0),
(14, 'one', 'one', 0),
(15, 'two', 'two', 0),
(16, 'three', 'three', 0),
(17, 'four', 'four', 0),
(18, 'Car Slider', 'car-slider', 0),
(19, 'Bus slider', 'bus-slider', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(17, 2, 0),
(18, 3, 0),
(19, 3, 0),
(24, 2, 0),
(25, 2, 0),
(26, 1, 0),
(26, 17, 0),
(38, 1, 0),
(38, 17, 0),
(41, 1, 0),
(45, 1, 0),
(45, 4, 0),
(47, 5, 0),
(47, 10, 0),
(47, 11, 0),
(47, 12, 0),
(47, 13, 0),
(49, 6, 0),
(49, 17, 0),
(54, 7, 0),
(54, 8, 0),
(54, 9, 0),
(54, 10, 0),
(54, 17, 0),
(57, 1, 0),
(57, 14, 0),
(57, 15, 0),
(57, 16, 0),
(57, 17, 0),
(142, 2, 0),
(145, 2, 0),
(149, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 5),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'nav_menu', '', 0, 2),
(4, 4, 'category', '', 0, 2),
(5, 5, 'category', '', 0, 1),
(6, 6, 'category', '', 0, 1),
(7, 7, 'category', '', 0, 1),
(8, 8, 'post_tag', '', 0, 1),
(9, 9, 'post_tag', '', 0, 1),
(10, 10, 'post_tag', '', 0, 2),
(11, 11, 'post_tag', '', 0, 1),
(12, 12, 'post_tag', '', 0, 1),
(13, 13, 'post_tag', '', 0, 1),
(14, 14, 'post_tag', '', 0, 1),
(15, 15, 'post_tag', '', 0, 1),
(16, 16, 'post_tag', '', 0, 1),
(17, 17, 'post_tag', '', 0, 5),
(18, 18, 'slider_cat', '', 0, 0),
(19, 19, 'slider_cat', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', 'Exercise is called you will begin to Pattern realize why this the Dickens Pattern with reference to ghost'),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:5:{s:64:\"09b20dfb9b88d0ad788a159a6e6eacaa78647f57b2c1fd6cc90b83e34f413f51\";a:4:{s:10:\"expiration\";i:1535948457;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1535775657;}s:64:\"3a94ca1f6ea3c4baf337acb50cb752678f435ab317f73e0effc73cba4a1f82c2\";a:4:{s:10:\"expiration\";i:1536056181;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1535883381;}s:64:\"cbc72acf4da33afb0f65839fc87933c72209d7dfceeb4f2698ce4f07b678da04\";a:4:{s:10:\"expiration\";i:1536064542;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:129:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134\";s:5:\"login\";i:1535891742;}s:64:\"5ae61670082c8b72395bc0a17abca18f5159ca3dbe204f1b61e5aac029c10cab\";a:4:{s:10:\"expiration\";i:1536121113;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1535948313;}s:64:\"507215d801910b67c677b27ae506ce02ae431fb793156d77fd57bc9245d62931\";a:4:{s:10:\"expiration\";i:1536121171;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:72:\"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0\";s:5:\"login\";i:1535948371;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'wp_user-settings', 'mfold=o&libraryContent=browse&editor=html'),
(22, 1, 'wp_user-settings-time', '1535785244'),
(23, 1, 'closedpostboxes_page', 'a:0:{}'),
(24, 1, 'metaboxhidden_page', 'a:5:{i:0;s:10:\"postcustom\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),
(25, 1, 'facebook', 'http://www.facebook.com/BappyMustafiz'),
(26, 1, 'skype', 'http://www.skype.com/BappyMustafiz'),
(27, 1, 'instagram', 'http://www.instagram.com/BappyMustafiz'),
(28, 1, 'linkedin', 'http://www.linkedin.com/BappyMustafiz'),
(29, 1, 'twitter', 'http://www.twitter.com/BappyMustafiz'),
(30, 1, '_new_email', 'a:2:{s:4:\"hash\";s:32:\"57d266bd6d7c54dde2c0d66a6d3ca48c\";s:8:\"newemail\";s:26:\"mustafizur120133@gmail.com\";}'),
(31, 1, 'closedpostboxes_post', 'a:0:{}'),
(32, 1, 'metaboxhidden_post', 'a:4:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:16:\"commentstatusdiv\";i:3;s:7:\"slugdiv\";}'),
(33, 1, 'wp_r_tru_u_x', 'a:2:{s:2:\"id\";s:0:\"\";s:7:\"expires\";i:86400;}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bzfimwz9cZIzKDNNb3DyI1A2kMHPyL.', 'admin', 'bappy@dev.com', '', '2018-08-28 04:21:18', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=437;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=381;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
