-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 04-Fev-2025 às 16:50
-- Versão do servidor: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ellite_landing_desenvolvimento_2024`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `attachmentable`
--

CREATE TABLE `attachmentable` (
  `id` int(10) UNSIGNED NOT NULL,
  `attachmentable_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachmentable_id` int(10) UNSIGNED NOT NULL,
  `attachment_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `attachmentable`
--

INSERT INTO `attachmentable` (`id`, `attachmentable_type`, `attachmentable_id`, `attachment_id`) VALUES
(1, 'Ellite\\Banners\\Models\\Banner', 1, 1),
(2, 'Ellite\\Banners\\Models\\Banner', 1, 2),
(3, 'Ellite\\Differentials\\Models\\Differential', 1, 4),
(4, 'Ellite\\Differentials\\Models\\Differential', 2, 8),
(5, 'Ellite\\Differentials\\Models\\Differential', 3, 9),
(6, 'Ellite\\Differentials\\Models\\Differential', 4, 10),
(7, 'Ellite\\Solutions\\Models\\Solution', 1, 11),
(10, 'Ellite\\Brands\\Models\\Brand', 1, 14),
(11, 'Ellite\\Brands\\Models\\Brand', 2, 16),
(12, 'Ellite\\Brands\\Models\\Brand', 3, 17),
(13, 'Ellite\\Brands\\Models\\Brand', 4, 18),
(14, 'Ellite\\Brands\\Models\\Brand', 5, 21),
(22, 'Ellite\\Solutions\\Models\\Solution', 1, 29),
(23, 'Ellite\\Testimonials\\Models\\Testimony', 1, 30),
(24, 'Ellite\\Differentials\\Models\\Differential', 5, 31),
(25, 'Ellite\\Differentials\\Models\\Differential', 6, 32),
(26, 'Ellite\\Differentials\\Models\\Differential', 7, 33),
(27, 'Ellite\\Differentials\\Models\\Differential', 8, 34),
(28, 'Ellite\\Differentials\\Models\\Differential', 9, 35),
(29, 'Ellite\\Differentials\\Models\\Differential', 10, 36),
(30, 'Ellite\\Differentials\\Models\\Differential', 11, 38),
(31, 'Ellite\\Differentials\\Models\\Differential', 12, 37),
(32, 'Ellite\\Differentials\\Models\\Differential', 13, 39),
(33, 'Ellite\\Differentials\\Models\\Differential', 14, 40),
(34, 'Ellite\\Differentials\\Models\\Differential', 15, 41),
(35, 'Ellite\\Differentials\\Models\\Differential', 16, 42),
(36, 'Ellite\\Differentials\\Models\\Differential', 17, 44),
(37, 'Ellite\\Differentials\\Models\\Differential', 18, 43),
(38, 'Ellite\\Differentials\\Models\\Differential', 19, 46),
(39, 'Ellite\\Differentials\\Models\\Differential', 20, 47),
(41, 'Ellite\\Solutions\\Models\\Solution', 3, 49),
(42, 'Ellite\\Solutions\\Models\\Solution', 4, 50),
(43, 'Ellite\\Solutions\\Models\\Solution', 5, 52),
(44, 'Ellite\\Solutions\\Models\\Solution', 2, 53),
(45, 'Ellite\\Solutions\\Models\\Solution', 1, 54),
(46, 'Ellite\\Solutions\\Models\\Solution', 2, 55),
(47, 'Ellite\\Solutions\\Models\\Solution', 2, 56),
(50, 'Ellite\\Solutions\\Models\\Solution', 6, 60),
(51, 'Ellite\\Testimonials\\Models\\Testimony', 5, 62);

-- --------------------------------------------------------

--
-- Estrutura da tabela `attachments`
--

CREATE TABLE `attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `alt` text COLLATE utf8mb4_unicode_ci,
  `hash` text COLLATE utf8mb4_unicode_ci,
  `disk` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `group` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `attachments`
--

INSERT INTO `attachments` (`id`, `name`, `original_name`, `mime`, `extension`, `size`, `sort`, `path`, `description`, `alt`, `hash`, `disk`, `user_id`, `group`, `created_at`, `updated_at`) VALUES
(1, 'cd689302b3d1ab10a567694c35446ad3d9713705', 'banner (1).png', 'image/png', 'png', 730708, 0, '2024/09/16/', NULL, NULL, '9ae815df353e0186bee352d95d7284ddae79ef40', 'public', 1, 'desktop_banner_pt-BR', '2024-09-16 19:12:05', '2024-09-16 19:12:05'),
(2, 'cd689302b3d1ab10a567694c35446ad3d9713705', 'banner (1).png', 'image/png', 'png', 730708, 0, '2024/09/16/', NULL, NULL, '9ae815df353e0186bee352d95d7284ddae79ef40', 'public', 1, 'mobile_banner_pt-BR', '2024-09-16 19:12:11', '2024-09-16 19:12:11'),
(3, 'bf2cd967167b1c87ebd3d057f26f24a7b670a7ca', 'internet.svg', 'image/svg+xml', 'svg', 8430, 0, '2024/09/17/', NULL, NULL, '76b6471f2231d606060f5316ab58dbdb4e32aab1', 'public', 1, 'image_differential', '2024-09-17 13:41:54', '2024-09-17 13:41:54'),
(4, 'e4fa32fdb406fab186d537d07e578c3476835145', 'internet.svg', 'image/svg+xml', 'svg', 83678, 0, '2024/09/17/', NULL, NULL, 'e57108a66885edd9af89d5c02d9b54b77671c383', 'public', 1, 'image_differential', '2024-09-17 13:42:17', '2024-09-17 13:42:17'),
(7, '7d37a4ba858c7db2383f1a1f6c01b04af823659f', 'Vector (1).png', 'image/png', 'png', 2608, 0, '2024/09/17/', NULL, NULL, 'a5273d639a3e865dc5d1de30ad58b3be9fa19645', 'public', 1, 'image_differential', '2024-09-17 13:44:19', '2024-09-17 13:44:19'),
(8, '7d37a4ba858c7db2383f1a1f6c01b04af823659f', 'Vector (1).png', 'image/png', 'png', 2608, 0, '2024/09/17/', NULL, NULL, 'a5273d639a3e865dc5d1de30ad58b3be9fa19645', 'public', 1, 'image_differential', '2024-09-17 13:44:40', '2024-09-17 13:44:40'),
(9, '5e563ed1fada92bd31dcf34af5f1657deb81362d', 'Vector (2).svg', 'image/svg+xml', 'svg', 3690, 0, '2024/09/17/', NULL, NULL, '5b60e95610d79851476128d13d38f7f1a42f6b97', 'public', 1, 'image_differential', '2024-09-17 13:45:02', '2024-09-17 13:45:02'),
(10, 'e20a738a7ec3e2b683657e1463cd7673c6886bb1', 'Vector (3).svg', 'image/svg+xml', 'svg', 826, 0, '2024/09/17/', NULL, NULL, '2af950c37c84057c775fb276229e543462fc8144', 'public', 1, 'image_differential', '2024-09-17 13:45:44', '2024-09-17 13:45:44'),
(11, '18797a0e312c9c1cfb3c75a6ed71abf4ca11c0c2', 'image.png', 'image/png', 'png', 633518, 0, '2024/09/17/', NULL, NULL, '098b144071768f2b65f934b4437cd57d81495d66', 'public', 1, 'image_solution', '2024-09-17 13:51:10', '2024-09-17 13:51:10'),
(14, '95bee9dae37dc9fe7db2184f1341897dc0718031', '3d8bda7b3e104b0000493bab4cc50c56cecf5db3.png.png', 'image/png', 'png', 8316, 0, '2024/09/17/', NULL, NULL, '5f1281660599dca5ffaa451d743e95bf5c49aaee', 'public', 1, 'image_brand', '2024-09-17 19:23:34', '2024-09-17 19:23:34'),
(15, 'a20dc6e75dedd14c440a3824a0b26f7e5bedad39', 'Vector (4).svg', 'image/svg+xml', 'svg', 173, 0, '2024/09/17/', NULL, NULL, '2aa9f19ace5b2e2b8a2a7597be7e2570c844d3c5', 'public', 1, 'image_brand', '2024-09-17 19:23:43', '2024-09-17 19:23:43'),
(16, '0c5c83b9a05ab1b6d66ebd977aab40486f33c1c2', '115181ef3b19ddc9c97d6f8987484dc0761b4ddc.png.svg', 'image/svg+xml', 'svg', 116213, 0, '2024/09/17/', NULL, NULL, '5998b7152fe1b9ae11e6d9efd1a5d144d88c7046', 'public', 1, 'image_brand', '2024-09-17 19:24:00', '2024-09-17 19:24:00'),
(17, '8d367cc2b6085583ef4e84b46b01fcd881106c76', 'ea5f8543f0791735d491ae5f22558f29ab802a9e.svg.svg', 'image/svg+xml', 'svg', 9388, 0, '2024/09/17/', NULL, NULL, 'c63f73f1c6efaf207bd4878a2b4c34184d96426d', 'public', 1, 'image_brand', '2024-09-17 19:24:11', '2024-09-17 19:24:11'),
(18, 'e2c5e7dfdb9c42892eabd416547566f397b001ae', 'dd549be4fb8f7a4ddd246f712c0a5c8e114ba34d.png.png', 'image/png', 'png', 11424, 0, '2024/09/17/', NULL, NULL, 'c8e88b0d7436d494dcaf73904af5af967fb5fe03', 'public', 1, 'image_brand', '2024-09-17 19:24:21', '2024-09-17 19:24:21'),
(21, '88ea9bd1991fc0e08b184b321d35d4dc92edc76c', 'f9d9f278e04e5a243750e58481dff3b569a85297.png', 'image/png', 'png', 6579, 0, '2024/09/17/', NULL, NULL, '923f9e373b76b2490e2806ba6e8aa63925945868', 'public', 1, 'image_brand', '2024-09-17 19:26:15', '2024-09-17 19:26:15'),
(29, 'bf658b06ee933efc3309e70b337175437b8b4bb7', 'bf658b06ee933efc3309e70b337175437b8b4bb7.png', 'image/png', 'png', 120899, 1, '2024/09/17/', NULL, NULL, 'ab7191e1519d445e6cf8395bf7b870c90906365d', 'public', 1, 'image_solution', '2024-09-18 20:43:25', '2024-09-18 20:43:26'),
(30, 'a84523cf6a1d325146e2ebf1836f7835f79ad6d6', 'Captura de tela 2024-09-23 085857.png', 'image/png', 'png', 620778, 0, '2024/09/23/', NULL, NULL, 'fde6a0f3e8a911ca8a5469e3aa710605314e9eef', 'public', 1, 'image_testimony', '2024-09-23 11:59:04', '2024-09-23 11:59:04'),
(31, '847732199bf94754fa368b68a378b60d565d2f63', 'Vector (5).svg', 'image/svg+xml', 'svg', 952, 0, '2024/09/23/', NULL, NULL, 'b180fc325c69a73d3afb19d33ac981b1efe033d8', 'public', 1, 'image_differential', '2024-09-23 12:42:10', '2024-09-23 12:42:10'),
(32, 'c2ad74c1cde4c4e09b13c6927e23372df1b425fc', 'Vector (6).svg', 'image/svg+xml', 'svg', 320, 0, '2024/09/23/', NULL, NULL, '813a3a5bede04e4a1624eccfe5096cd78e13c6a6', 'public', 1, 'image_differential', '2024-09-23 12:42:42', '2024-09-23 12:42:42'),
(33, '4b6d02dcc483972743b39a4223ca06dce1d82d34', 'carbon_security.svg', 'image/svg+xml', 'svg', 965, 0, '2024/09/23/', NULL, NULL, '6d5436700973c7c88cd46d0b70546731f9070a71', 'public', 1, 'image_differential', '2024-09-23 12:43:08', '2024-09-23 12:43:08'),
(34, '7366d8e3d89f2b9ef54903ec263139bf5c02e732', 'conexão.svg', 'image/svg+xml', 'svg', 5572, 0, '2024/09/23/', NULL, NULL, 'd162731378f09ca58e10e95bfcc86289ca386d66', 'public', 1, 'image_differential', '2024-09-23 12:43:44', '2024-09-23 12:43:44'),
(35, '5f73b7f82a0e69bc4b50556d81638aaf6ddb634b', 'operação.svg', 'image/svg+xml', 'svg', 37982, 0, '2024/09/23/', NULL, NULL, 'f7ee27003329be839093b41478fede5ab8261cfa', 'public', 1, 'image_differential', '2024-09-23 12:52:00', '2024-09-23 12:52:00'),
(36, 'afa276e05b8fe53c4561f9621f6e413a94a324e1', 'personalizar.svg', 'image/svg+xml', 'svg', 1410, 0, '2024/09/23/', NULL, NULL, '3b0bd49783ce87dc5d599d3234f6f9549d683544', 'public', 1, 'image_differential', '2024-09-23 12:52:07', '2024-09-23 12:52:07'),
(37, '20208ec9d09caab97fd1e5c1f0e284cb226f04ec', 'api 2.svg', 'image/svg+xml', 'svg', 1964, 0, '2024/09/23/', NULL, NULL, '47c053b180c84f166c998a0f5ea89a5fc610e283', 'public', 1, 'image_differential', '2024-09-23 12:52:37', '2024-09-23 12:52:37'),
(38, 'cea265b11f22305a1b4b8c1cdaee91d9ae79ee3c', 'carbon_security (1).svg', 'image/svg+xml', 'svg', 936, 0, '2024/09/23/', NULL, NULL, '5cffc7b5f58b03ab63b440c687e3b911ff6507f1', 'public', 1, 'image_differential', '2024-09-23 12:52:41', '2024-09-23 12:52:41'),
(39, 'a1f6318e10ea5a4d7ce33b3e6fa4d5fb88e39ec1', 'Capa_1.svg', 'image/svg+xml', 'svg', 9712, 0, '2024/09/23/', NULL, NULL, '161a00b7aa0fa183eb80715ff4dd217127368cb2', 'public', 1, 'image_differential', '2024-09-23 12:53:34', '2024-09-23 12:53:34'),
(40, '9ec7d2a07eeb9460375f3de197a1e2bd7caab9c4', 'verificado (1).svg', 'image/svg+xml', 'svg', 4868, 0, '2024/09/23/', NULL, NULL, '7bdce60c7c0a15aaf2f62626fd99384cab66ab29', 'public', 1, 'image_differential', '2024-09-23 12:53:51', '2024-09-23 12:53:51'),
(41, 'd0f5d998520c0f88cdfca1eda94d09c039e165c8', 'seo.svg', 'image/svg+xml', 'svg', 3680, 0, '2024/09/23/', NULL, NULL, '9431f5aa1d7ef302b0efdcbb12585642acfce371', 'public', 1, 'image_differential', '2024-09-23 12:54:18', '2024-09-23 12:54:18'),
(42, '832f9da0589f43d035f199169a0753cbe6c0b71d', 'local.svg', 'image/svg+xml', 'svg', 1086, 0, '2024/09/23/', NULL, NULL, '15ecd6dcb4158dfd9aca662aeb463f70301e6cc0', 'public', 1, 'image_differential', '2024-09-23 12:54:36', '2024-09-23 12:54:36'),
(43, '35ba609e8573ac54fc448f6fbbac98256680d66c', 'nimbus_money.svg', 'image/svg+xml', 'svg', 1841, 0, '2024/09/23/', NULL, NULL, '4247bef3f718d62dd2be8349d46cd8ffd1573da9', 'public', 1, 'image_differential', '2024-09-23 12:56:42', '2024-09-23 12:56:42'),
(44, 'f1174508765c81031833bdc7485f496fbe6cf81a', 'seo (1).svg', 'image/svg+xml', 'svg', 5417, 0, '2024/09/23/', NULL, NULL, '4857147bc838655df476c04a85eadf10acad952a', 'public', 1, 'image_differential', '2024-09-23 12:56:50', '2024-09-23 12:56:50'),
(46, '8b49e0ca3ecd4f83277b936021c9b902dd08b7e9', 'material-symbols-light_conversion-path.svg', 'image/svg+xml', 'svg', 2354, 0, '2024/09/23/', NULL, NULL, '8f436a19df7708b63c42273a001f5ecbf1f5c595', 'public', 1, 'image_differential', '2024-09-23 12:57:11', '2024-09-23 12:57:11'),
(47, '13154dc12d436a40d404d52c8106b517dde3f4f6', 'marketing.svg', 'image/svg+xml', 'svg', 2027, 0, '2024/09/23/', NULL, NULL, '3ab3e8c4473c84622d784c2d2ee98c285542eb28', 'public', 1, 'image_differential', '2024-09-23 12:57:23', '2024-09-23 12:57:23'),
(49, 'fca69a905a6c64513908d607eca37cc024f5e0f7', 'image (1).png', 'image/png', 'png', 490497, 0, '2024/09/23/', NULL, NULL, 'bde773f5f582d965a59b7b5387f25be2367d0ef0', 'public', 1, 'image_solution', '2024-09-23 12:59:54', '2024-09-23 12:59:54'),
(50, '4162c4adf0f7e577fee6a39de1beefa2da55eb68', 'image (2).png', 'image/png', 'png', 125665, 0, '2024/09/23/', NULL, NULL, '5c5e99a85dc7737a873dcf0dfc2ac2eb408a411d', 'public', 1, 'image_solution', '2024-09-23 13:01:16', '2024-09-23 13:01:16'),
(51, 'a06c78ecfb6a2aa3b7332bfd96be26169ce1af3e', 'image.png', 'image/png', 'png', 400889, 0, '2024/09/23/', NULL, NULL, 'e535ceab22e0bc6e3cdf3b2d7aaac73b8816b500', 'public', 1, NULL, '2024-09-23 13:01:20', '2024-09-23 13:01:20'),
(52, '4941721528e8d239aecefd4d688dbcfae22c6f8e', 'image (3).png', 'image/png', 'png', 241041, 0, '2024/09/23/', NULL, NULL, '1fe6db92a4846f5cdc4de3312896ee0645c54f26', 'public', 1, 'image_solution', '2024-09-23 13:02:24', '2024-09-23 13:02:24'),
(53, '8b514aab1d8062c5a0242ad7acf34a2a901ca09c', 'H3.mp4', 'video/mp4', 'mp4', 21966883, 0, '2024/10/08/', NULL, NULL, 'e085f02e4b0e7988e5dd223431a8f16a3aedc440', 'public', 1, 'image_solution', '2024-10-08 12:43:34', '2024-10-08 13:04:10'),
(54, '8b514aab1d8062c5a0242ad7acf34a2a901ca09c', 'H3.mp4', 'video/mp4', 'mp4', 21966883, 0, '2024/10/08/', NULL, NULL, 'e085f02e4b0e7988e5dd223431a8f16a3aedc440', 'public', 1, 'upload_solution', '2024-10-08 12:56:42', '2024-10-08 12:56:42'),
(55, 'bf1014f566fb016651e7dfd219ff7182fec0a008', 'Marcon.png', 'image/png', 'png', 554564, 1, '2024/10/08/', NULL, NULL, 'aae65da06d9b00c96ad2b477387022fa18b34eaf', 'public', 1, 'image_solution', '2024-10-08 13:04:10', '2024-10-08 13:04:10'),
(56, '3ec7f074d35f15a19b54060d121f2d429ddd655d', 'Stefanello.png', 'image/png', 'png', 1088345, 2, '2024/10/08/', NULL, NULL, 'b12197b160177e58753a50a430eb36cdc281b7c9', 'public', 1, 'image_solution', '2024-10-08 13:04:10', '2024-10-08 13:04:10'),
(60, '6fc5d51a4681e0c09e44a50053202d0119f1682a', 'h3_original.webp', 'image/webp', 'webp', 154262, 0, '2024/10/10/', NULL, NULL, 'c35f5a22246cd9bf7c19bba947861f075bd0e9d7', 'public', 1, 'image_solution', '2024-10-10 18:24:36', '2024-10-10 18:24:36'),
(62, '3c95e190a1b619ea87af6a21dbcf8625b1f773b9', 'icon1.png', 'image/png', 'png', 9953, 0, '2024/10/21/', NULL, NULL, 'b95fd48395ffbe062ae92ae8bf600d1948bf096a', 'public', 1, 'image_testimony', '2024-10-21 19:55:50', '2024-10-21 19:55:50');

-- --------------------------------------------------------

--
-- Estrutura da tabela `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '9999',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `words` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `banners`
--

INSERT INTO `banners` (`id`, `created_at`, `updated_at`, `name`, `order`, `active`, `words`) VALUES
(1, '2024-09-16 19:06:37', '2024-10-08 13:58:07', 'Banner 1', 9999, 1, '{\"1\": {\"name\": \"Aplicativos\"}, \"2\": {\"name\": \"Landing Pages\"}, \"3\": {\"name\": \"E-commerces\"}, \"4\": {\"name\": \"Sistemas\"}, \"7\": {\"name\": \"Websites\"}}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `banners_translations`
--

CREATE TABLE `banners_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `banner_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_1` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_2` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_3` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_4` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_1` text COLLATE utf8mb4_unicode_ci,
  `text_2` text COLLATE utf8mb4_unicode_ci,
  `text_3` text COLLATE utf8mb4_unicode_ci,
  `text_4` text COLLATE utf8mb4_unicode_ci,
  `link_1` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_2` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_3` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_4` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_link_1` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_link_2` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_link_3` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_link_4` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `banners_translations`
--

INSERT INTO `banners_translations` (`id`, `created_at`, `updated_at`, `banner_id`, `locale`, `title_1`, `title_2`, `title_3`, `title_4`, `text_1`, `text_2`, `text_3`, `text_4`, `link_1`, `link_2`, `link_3`, `link_4`, `text_link_1`, `text_link_2`, `text_link_3`, `text_link_4`) VALUES
(1, '2024-09-16 19:06:37', '2024-09-27 11:43:14', 1, 'pt-BR', NULL, NULL, NULL, NULL, '<p><strong><span style=\"color: rgb(222, 149, 40);\">Impulsione</span> </strong>seu</p>\r\n<p>neg&oacute;cio com um</p>\r\n<p>projeto&nbsp;<strong><span style=\"color: rgb(222, 149, 40);\">sob medida</span></strong></p>', 'Desenvolvimento de', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '9999',
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `brands`
--

INSERT INTO `brands` (`id`, `created_at`, `updated_at`, `name`, `order`, `active`) VALUES
(1, '2024-09-17 19:23:40', '2024-09-17 19:23:40', 'Sexy fantasy', 9999, 1),
(2, '2024-09-17 19:24:04', '2024-09-17 19:24:04', 'Macrosul', 9999, 1),
(3, '2024-09-17 19:24:16', '2024-09-17 19:24:16', 'Master Power Turbo', 9999, 1),
(4, '2024-09-17 19:24:25', '2024-09-17 19:24:25', 'Ludfor', 9999, 1),
(5, '2024-09-17 19:26:18', '2024-09-17 19:26:18', 'MA TV Sul', 9999, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `brands_translations`
--

CREATE TABLE `brands_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_1` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_1` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_link` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `brands_translations`
--

INSERT INTO `brands_translations` (`id`, `created_at`, `updated_at`, `brand_id`, `locale`, `title`, `title_1`, `link`, `link_1`, `text_link`) VALUES
(1, '2024-09-17 19:23:40', '2024-09-17 19:23:40', 1, 'pt-BR', 'Sexy fantasy', NULL, NULL, NULL, NULL),
(2, '2024-09-17 19:24:04', '2024-09-17 19:24:04', 2, 'pt-BR', 'Macrosul', NULL, NULL, NULL, NULL),
(3, '2024-09-17 19:24:16', '2024-09-17 19:24:16', 3, 'pt-BR', 'Master Power Turbo', NULL, NULL, NULL, NULL),
(4, '2024-09-17 19:24:25', '2024-09-17 19:24:25', 4, 'pt-BR', 'Ludfor', NULL, NULL, NULL, NULL),
(5, '2024-09-17 19:26:18', '2024-09-17 19:26:18', 5, 'pt-BR', 'MA TV Sul', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `configurations`
--

CREATE TABLE `configurations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email_authenticated` int(11) NOT NULL DEFAULT '0',
  `email_dsn` mediumtext COLLATE utf8mb4_unicode_ci,
  `email_from` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `configurations`
--

INSERT INTO `configurations` (`id`, `created_at`, `updated_at`, `email_authenticated`, `email_dsn`, `email_from`) VALUES
(1, '2024-09-16 18:52:07', '2024-09-17 16:28:20', 1, 'smtp://noreply@ellitedigital.com.br:Ellitedigital87@mail.ellitedigital.com.br:587?tls=true', 'noreply@ellitedigital.com.br');

-- --------------------------------------------------------

--
-- Estrutura da tabela `configurations_translations`
--

CREATE TABLE `configurations_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `configuration_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `keywords` mediumtext COLLATE utf8mb4_unicode_ci,
  `custom_js_head` mediumtext COLLATE utf8mb4_unicode_ci,
  `custom_js_body` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `configurations_translations`
--

INSERT INTO `configurations_translations` (`id`, `created_at`, `updated_at`, `configuration_id`, `locale`, `description`, `keywords`, `custom_js_head`, `custom_js_body`) VALUES
(1, '2024-09-17 16:28:20', '2024-09-17 16:28:20', 1, 'pt-BR', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `differentials`
--

CREATE TABLE `differentials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '9999',
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `differentials`
--

INSERT INTO `differentials` (`id`, `created_at`, `updated_at`, `name`, `order`, `active`) VALUES
(1, '2024-09-17 13:42:19', '2024-09-17 13:42:19', 'Presença Online', 9999, 1),
(2, '2024-09-17 13:44:52', '2024-09-17 13:44:52', 'Credibilidade e Confiança', 9999, 1),
(3, '2024-09-17 13:45:10', '2024-09-17 13:45:10', 'SEO Otimizado', 9999, 1),
(4, '2024-09-17 13:45:46', '2024-09-17 13:45:46', 'Layout personalizado', 9999, 1),
(5, '2024-09-23 12:42:28', '2024-09-23 12:42:28', 'Venda contínua', 9999, 1),
(6, '2024-09-23 12:42:56', '2024-09-23 12:42:56', 'Aumento de Vendas', 9999, 1),
(7, '2024-09-23 12:43:23', '2024-09-23 12:43:23', 'Segurança Avançada', 9999, 1),
(8, '2024-09-23 12:43:45', '2024-09-23 12:43:45', 'Integrações  Multiplataformas', 9999, 1),
(9, '2024-09-23 12:52:02', '2024-09-23 12:52:02', 'Eficiência Operacional', 9999, 1),
(10, '2024-09-23 12:52:19', '2024-09-23 12:52:19', 'Customização', 9999, 1),
(11, '2024-09-23 12:52:55', '2024-09-23 12:52:55', 'Segurança de Dados', 9999, 1),
(12, '2024-09-23 12:52:57', '2024-09-23 12:52:57', 'Integração com APIS', 9999, 1),
(13, '2024-09-23 12:53:35', '2024-09-23 12:53:35', 'Suporte Multiplataforma', 9999, 1),
(14, '2024-09-23 12:53:54', '2024-09-23 12:53:54', 'Engajamento', 9999, 1),
(15, '2024-09-23 12:54:19', '2024-09-23 12:54:19', 'Customização', 9999, 1),
(16, '2024-09-23 12:54:37', '2024-09-23 12:54:37', 'Praticidade', 9999, 1),
(17, '2024-09-23 12:56:51', '2024-09-23 12:56:51', 'Performance', 9999, 1),
(18, '2024-09-23 12:56:53', '2024-09-23 12:56:53', 'Eficiência de marketing', 9999, 1),
(19, '2024-09-23 12:57:13', '2024-09-23 13:05:03', 'Alta taxa de conversão', 9999, 1),
(20, '2024-09-23 12:57:24', '2024-09-23 12:57:24', 'Objetivos Claros', 9999, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `differentials_translations`
--

CREATE TABLE `differentials_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `differential_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_1` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_2` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_1` text COLLATE utf8mb4_unicode_ci,
  `text_2` text COLLATE utf8mb4_unicode_ci,
  `text_3` text COLLATE utf8mb4_unicode_ci,
  `text_4` text COLLATE utf8mb4_unicode_ci,
  `link_1` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_2` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_3` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_4` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_link_1` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_link_2` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_link_3` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_link_4` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `differentials_translations`
--

INSERT INTO `differentials_translations` (`id`, `created_at`, `updated_at`, `differential_id`, `locale`, `title_1`, `title_2`, `text_1`, `text_2`, `text_3`, `text_4`, `link_1`, `link_2`, `link_3`, `link_4`, `text_link_1`, `text_link_2`, `text_link_3`, `text_link_4`) VALUES
(1, '2024-09-17 13:42:19', '2024-09-17 13:42:19', 1, 'pt-BR', NULL, NULL, 'Presença Online', 'Fortalecimento da marca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2024-09-17 13:44:52', '2024-09-17 13:44:52', 2, 'pt-BR', NULL, NULL, 'Credibilidade e Confiança', 'Site profissional e funcional', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '2024-09-17 13:45:10', '2024-09-17 13:45:10', 3, 'pt-BR', NULL, NULL, 'SEO Otimizado', 'Melhor visibilidade nos resultados de pesquisa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '2024-09-17 13:45:46', '2024-09-17 13:45:46', 4, 'pt-BR', NULL, NULL, 'Layout personalizado', 'Design adaptado para dispositivos móveis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '2024-09-23 12:42:28', '2024-09-23 12:42:28', 5, 'pt-BR', NULL, NULL, 'Venda contínua', '24h por dia, 7 dias por semana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '2024-09-23 12:42:56', '2024-09-23 12:42:56', 6, 'pt-BR', NULL, NULL, 'Aumento de Vendas', 'Platafoma otimizada para conversão', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '2024-09-23 12:43:23', '2024-09-26 13:45:47', 7, 'pt-BR', NULL, NULL, 'Segurança Avançada', 'Proteção robusta para transações e dados do clienteteste', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '2024-09-23 12:43:45', '2024-09-23 12:43:45', 8, 'pt-BR', NULL, NULL, 'Integrações  Multiplataformas', 'Design adaptado para dispositivos móveis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '2024-09-23 12:52:02', '2024-09-23 12:52:02', 9, 'pt-BR', NULL, NULL, 'Eficiência Operacional', 'Automação de processos e tarefas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '2024-09-23 12:52:19', '2024-09-23 12:52:19', 10, 'pt-BR', NULL, NULL, 'Customização', 'Sistema personalizado para o seu negócio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '2024-09-23 12:52:55', '2024-09-23 12:52:55', 11, 'pt-BR', NULL, NULL, 'Segurança de Dados', 'Medidas robusta para projeter dados sensíveis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '2024-09-23 12:52:57', '2024-09-23 12:52:57', 12, 'pt-BR', NULL, NULL, 'Integração com APIS', 'Conexão com outros sistemas e serviços', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '2024-09-23 12:53:35', '2024-09-23 12:53:35', 13, 'pt-BR', NULL, NULL, 'Suporte Multiplataforma', 'Desenvolvimento para ANDROID e IOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '2024-09-23 12:53:54', '2024-09-23 12:53:54', 14, 'pt-BR', NULL, NULL, 'Engajamento', 'Comunicação mais eficaz com seu cliente', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '2024-09-23 12:54:19', '2024-09-23 12:54:19', 15, 'pt-BR', NULL, NULL, 'Customização', 'Personalização para a necessidade do seu negócio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '2024-09-23 12:54:37', '2024-09-23 12:54:37', 16, 'pt-BR', NULL, NULL, 'Praticidade', 'Acesso em qualquer lugar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '2024-09-23 12:56:51', '2024-09-23 12:56:51', 17, 'pt-BR', NULL, NULL, 'Performance', 'Foco em resultados', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '2024-09-23 12:56:53', '2024-09-23 12:56:53', 18, 'pt-BR', NULL, NULL, 'Eficiência de marketing', 'Redução de custos por aquisição', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '2024-09-23 12:57:13', '2024-09-23 13:05:03', 19, 'pt-BR', NULL, NULL, 'Alta taxa de conversão', 'Fortalecimento da marca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '2024-09-23 12:57:24', '2024-09-23 12:57:24', 20, 'pt-BR', NULL, NULL, 'Objetivos Claros', 'Páginas para campanhas de marketing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_in_language` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `main` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `show` tinyint(1) NOT NULL DEFAULT '0',
  `date_format_short` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_format_long` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `locale`, `name_in_language`, `position`, `main`, `active`, `show`, `date_format_short`, `date_format_long`, `created_at`, `updated_at`) VALUES
(1, 'Português', 'pt', 'pt-BR', 'Português', 1, 1, 1, 1, 'd/m/Y', 'd \'de\' F \'de\' Y', '2024-09-16 18:50:30', '2024-09-16 18:50:30'),
(2, 'Inglês', 'en', 'en', 'English', 2, 0, 0, 0, 'm/d/Y', 'F, dS Y', '2024-09-16 18:50:30', '2024-09-16 18:50:30'),
(3, 'Espanhol', 'es', 'es', 'Español', 3, 0, 0, 0, 'd/m/Y', 'd \'de\' F \'de\' Y', '2024-09-16 18:50:30', '2024-09-16 18:50:30');

-- --------------------------------------------------------

--
-- Estrutura da tabela `logs`
--

CREATE TABLE `logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_name` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `entity_id` int(11) DEFAULT NULL,
  `entity_model` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `logs`
--

INSERT INTO `logs` (`id`, `message`, `action`, `user_name`, `user_id`, `entity_id`, `entity_model`, `created_at`, `updated_at`) VALUES
(1, 'Cadastrou o banner Banner 1', 'create', 'Ellite Agência Digital', 1, 1, 'Ellite\\Banners\\Models\\Banner', '2024-09-16 19:06:37', '2024-09-16 19:06:37'),
(2, 'Editou o banner Banner 1', 'edit', 'Ellite Agência Digital', 1, 1, 'Ellite\\Banners\\Models\\Banner', '2024-09-16 19:12:12', '2024-09-16 19:12:12'),
(3, 'Editou o banner Banner 1', 'edit', 'Ellite Agência Digital', 1, 1, 'Ellite\\Banners\\Models\\Banner', '2024-09-16 19:56:35', '2024-09-16 19:56:35'),
(4, 'Editou o banner Banner 1', 'edit', 'Ellite Agência Digital', 1, 1, 'Ellite\\Banners\\Models\\Banner', '2024-09-17 11:15:18', '2024-09-17 11:15:18'),
(5, 'Editou o banner Banner 1', 'edit', 'Ellite Agência Digital', 1, 1, 'Ellite\\Banners\\Models\\Banner', '2024-09-17 11:15:28', '2024-09-17 11:15:28'),
(6, 'Editou o banner Banner 1', 'edit', 'Ellite Agência Digital', 1, 1, 'Ellite\\Banners\\Models\\Banner', '2024-09-17 11:26:51', '2024-09-17 11:26:51'),
(7, 'Editou a página home ', 'edit', 'Ellite Agência Digital', 1, 1, 'Ellite\\PageHome\\Models\\PageHome', '2024-09-17 12:14:30', '2024-09-17 12:14:30'),
(8, 'Editou a página de contato ', 'edit', 'Ellite Agência Digital', 1, 1, 'Ellite\\Contact\\Models\\PageContact', '2024-09-17 12:19:10', '2024-09-17 12:19:10'),
(9, 'Editou a página home ', 'edit', 'Ellite Agência Digital', 1, 1, 'Ellite\\PageHome\\Models\\PageHome', '2024-09-17 12:39:08', '2024-09-17 12:39:08'),
(10, 'Cadastrou o diferencial Presença Online', 'create', 'Ellite Agência Digital', 1, 1, 'Ellite\\Differentials\\Models\\Differential', '2024-09-17 13:42:19', '2024-09-17 13:42:19'),
(11, 'Cadastrou o diferencial Credibilidade e Confiança', 'create', 'Ellite Agência Digital', 1, 2, 'Ellite\\Differentials\\Models\\Differential', '2024-09-17 13:44:52', '2024-09-17 13:44:52'),
(12, 'Cadastrou o diferencial SEO Otimizado', 'create', 'Ellite Agência Digital', 1, 3, 'Ellite\\Differentials\\Models\\Differential', '2024-09-17 13:45:10', '2024-09-17 13:45:10'),
(13, 'Cadastrou o diferencial Layout personalizado', 'create', 'Ellite Agência Digital', 1, 4, 'Ellite\\Differentials\\Models\\Differential', '2024-09-17 13:45:46', '2024-09-17 13:45:46'),
(14, 'Cadastrou a solução Websites', 'create', 'Ellite Agência Digital', 1, 1, 'Ellite\\Solutions\\Models\\Solution', '2024-09-17 13:51:12', '2024-09-17 13:51:12'),
(15, 'Editou a solução Websites', 'edit', 'Ellite Agência Digital', 1, 1, 'Ellite\\Solutions\\Models\\Solution', '2024-09-17 13:51:42', '2024-09-17 13:51:42'),
(16, 'Editou a configuração ', 'edit', 'Ellite Agência Digital', 1, 1, 'App\\Models\\Configuration', '2024-09-17 16:28:20', '2024-09-17 16:28:20'),
(17, 'Editou a página de contato ', 'edit', 'Ellite Agência Digital', 1, 1, 'Ellite\\Contact\\Models\\PageContact', '2024-09-17 16:28:36', '2024-09-17 16:28:36'),
(18, 'Editou a solução Websites', 'edit', 'Ellite Agência Digital', 1, 1, 'Ellite\\Solutions\\Models\\Solution', '2024-09-17 16:50:15', '2024-09-17 16:50:15'),
(19, 'Editou a solução Websites', 'edit', 'Ellite Agência Digital', 1, 1, 'Ellite\\Solutions\\Models\\Solution', '2024-09-17 16:50:50', '2024-09-17 16:50:50'),
(20, 'Cadastrou a solução Lojas Virtuais', 'create', 'Ellite Agência Digital', 1, 2, 'Ellite\\Solutions\\Models\\Solution', '2024-09-17 16:53:14', '2024-09-17 16:53:14'),
(21, 'Editou a solução Websites', 'edit', 'Ellite Agência Digital', 1, 1, 'Ellite\\Solutions\\Models\\Solution', '2024-09-17 19:04:44', '2024-09-17 19:04:44'),
(22, 'Cadastrou a marca Sexy fantasy', 'create', 'Ellite Agência Digital', 1, 1, 'Ellite\\Brands\\Models\\Brand', '2024-09-17 19:23:41', '2024-09-17 19:23:41'),
(23, 'Cadastrou a marca Macrosul', 'create', 'Ellite Agência Digital', 1, 2, 'Ellite\\Brands\\Models\\Brand', '2024-09-17 19:24:04', '2024-09-17 19:24:04'),
(24, 'Cadastrou a marca Master Power Turbo', 'create', 'Ellite Agência Digital', 1, 3, 'Ellite\\Brands\\Models\\Brand', '2024-09-17 19:24:16', '2024-09-17 19:24:16'),
(25, 'Cadastrou a marca Ludfor', 'create', 'Ellite Agência Digital', 1, 4, 'Ellite\\Brands\\Models\\Brand', '2024-09-17 19:24:25', '2024-09-17 19:24:25'),
(26, 'Cadastrou a marca MA TV Sul', 'create', 'Ellite Agência Digital', 1, 5, 'Ellite\\Brands\\Models\\Brand', '2024-09-17 19:26:19', '2024-09-17 19:26:19'),
(27, 'Cadastrou o depoimento Devon Miles', 'create', 'Ellite Agência Digital', 1, 1, 'Ellite\\Testimonials\\Models\\Testimony', '2024-09-17 20:07:41', '2024-09-17 20:07:41'),
(28, 'Editou o depoimento Devon Miles 1', 'edit', 'Ellite Agência Digital', 1, 1, 'Ellite\\Testimonials\\Models\\Testimony', '2024-09-17 20:09:32', '2024-09-17 20:09:32'),
(29, 'Cadastrou o depoimento Devon Miles 2', 'create', 'Ellite Agência Digital', 1, 2, 'Ellite\\Testimonials\\Models\\Testimony', '2024-09-17 20:09:34', '2024-09-17 20:09:34'),
(30, 'Cadastrou o depoimento Devon Miles 3', 'create', 'Ellite Agência Digital', 1, 3, 'Ellite\\Testimonials\\Models\\Testimony', '2024-09-17 20:09:39', '2024-09-17 20:09:39'),
(31, 'Cadastrou o depoimento Devon Miles 4', 'create', 'Ellite Agência Digital', 1, 4, 'Ellite\\Testimonials\\Models\\Testimony', '2024-09-17 20:09:40', '2024-09-17 20:09:40'),
(32, 'Editou o depoimento Devon Miles 2', 'edit', 'Ellite Agência Digital', 1, 2, 'Ellite\\Testimonials\\Models\\Testimony', '2024-09-17 20:20:30', '2024-09-17 20:20:30'),
(33, 'Editou o depoimento Devon Miles 1', 'edit', 'Ellite Agência Digital', 1, 1, 'Ellite\\Testimonials\\Models\\Testimony', '2024-09-17 20:24:03', '2024-09-17 20:24:03'),
(34, 'Editou o depoimento Devon Miles 1', 'edit', 'Ellite Agência Digital', 1, 1, 'Ellite\\Testimonials\\Models\\Testimony', '2024-09-17 20:38:58', '2024-09-17 20:38:58'),
(35, 'Editou o depoimento Devon Miles 1', 'edit', 'Ellite Agência Digital', 1, 1, 'Ellite\\Testimonials\\Models\\Testimony', '2024-09-17 20:40:28', '2024-09-17 20:40:28'),
(36, 'Editou o depoimento Devon Miles 1', 'edit', 'Ellite Agência Digital', 1, 1, 'Ellite\\Testimonials\\Models\\Testimony', '2024-09-17 20:41:01', '2024-09-17 20:41:01'),
(37, 'Editou o depoimento Devon Miles 1', 'edit', 'Ellite Agência Digital', 1, 1, 'Ellite\\Testimonials\\Models\\Testimony', '2024-09-17 20:41:18', '2024-09-17 20:41:18'),
(38, 'Editou o depoimento Devon Miles 1', 'edit', 'Ellite Agência Digital', 1, 1, 'Ellite\\Testimonials\\Models\\Testimony', '2024-09-17 20:41:39', '2024-09-17 20:41:39'),
(39, 'Editou a página de contato ', 'edit', 'Ellite Agência Digital', 1, 1, 'Ellite\\Contact\\Models\\PageContact', '2024-09-18 12:10:07', '2024-09-18 12:10:07'),
(40, 'Cadastrou o banner Banner 2', 'create', 'Ellite Agência Digital', 1, 2, 'Ellite\\Banners\\Models\\Banner', '2024-09-18 16:49:50', '2024-09-18 16:49:50'),
(41, 'Alterou active do banner Banner 1 para 0', 'toggleField', 'Ellite Agência Digital', 1, 1, 'Ellite\\Banners\\Models\\Banner', '2024-09-18 17:09:10', '2024-09-18 17:09:10'),
(42, 'Alterou active do banner Banner 1 para 1', 'toggleField', 'Ellite Agência Digital', 1, 1, 'Ellite\\Banners\\Models\\Banner', '2024-09-18 17:10:50', '2024-09-18 17:10:50'),
(43, 'Alterou active do banner Banner 1 para 1', 'toggleField', 'Ellite Agência Digital', 1, 1, 'Ellite\\Banners\\Models\\Banner', '2024-09-18 17:11:01', '2024-09-18 17:11:01'),
(44, 'Deletou o banner Banner 2', 'delete', 'Ellite Agência Digital', 1, 2, 'Ellite\\Banners\\Models\\Banner', '2024-09-18 17:11:06', '2024-09-18 17:11:06'),
(45, 'Editou a página home ', 'edit', 'Ellite Agência Digital', 1, 1, 'Ellite\\PageHome\\Models\\PageHome', '2024-09-18 19:17:11', '2024-09-18 19:17:11'),
(46, 'Editou a solução Websites', 'edit', 'Ellite Agência Digital', 1, 1, 'Ellite\\Solutions\\Models\\Solution', '2024-09-18 20:43:26', '2024-09-18 20:43:26'),
(47, 'Deletou o depoimento Devon Miles 2', 'delete', 'Ellite Agência Digital', 1, 2, 'Ellite\\Testimonials\\Models\\Testimony', '2024-09-23 11:58:02', '2024-09-23 11:58:02'),
(48, 'Deletou o depoimento Devon Miles 3', 'delete', 'Ellite Agência Digital', 1, 3, 'Ellite\\Testimonials\\Models\\Testimony', '2024-09-23 11:58:05', '2024-09-23 11:58:05'),
(49, 'Deletou o depoimento Devon Miles 4', 'delete', 'Ellite Agência Digital', 1, 4, 'Ellite\\Testimonials\\Models\\Testimony', '2024-09-23 11:58:08', '2024-09-23 11:58:08'),
(50, 'Editou o depoimento Arthur Gonzalez', 'edit', 'Ellite Agência Digital', 1, 1, 'Ellite\\Testimonials\\Models\\Testimony', '2024-09-23 11:59:07', '2024-09-23 11:59:07'),
(51, 'Editou o depoimento Arthur Gonzalez', 'edit', 'Ellite Agência Digital', 1, 1, 'Ellite\\Testimonials\\Models\\Testimony', '2024-09-23 11:59:16', '2024-09-23 11:59:16'),
(52, 'Cadastrou o diferencial Venda contínua', 'create', 'Ellite Agência Digital', 1, 5, 'Ellite\\Differentials\\Models\\Differential', '2024-09-23 12:42:28', '2024-09-23 12:42:28'),
(53, 'Cadastrou o diferencial Aumento de Vendas', 'create', 'Ellite Agência Digital', 1, 6, 'Ellite\\Differentials\\Models\\Differential', '2024-09-23 12:42:56', '2024-09-23 12:42:56'),
(54, 'Cadastrou o diferencial Segurança Avançada', 'create', 'Ellite Agência Digital', 1, 7, 'Ellite\\Differentials\\Models\\Differential', '2024-09-23 12:43:23', '2024-09-23 12:43:23'),
(55, 'Cadastrou o diferencial Integrações  Multiplataformas', 'create', 'Ellite Agência Digital', 1, 8, 'Ellite\\Differentials\\Models\\Differential', '2024-09-23 12:43:45', '2024-09-23 12:43:45'),
(56, 'Editou a solução Lojas Virtuais', 'edit', 'Ellite Agência Digital', 1, 2, 'Ellite\\Solutions\\Models\\Solution', '2024-09-23 12:44:27', '2024-09-23 12:44:27'),
(57, 'Cadastrou o diferencial Eficiência Operacional', 'create', 'Ellite Agência Digital', 1, 9, 'Ellite\\Differentials\\Models\\Differential', '2024-09-23 12:52:02', '2024-09-23 12:52:02'),
(58, 'Cadastrou o diferencial Customização', 'create', 'Ellite Agência Digital', 1, 10, 'Ellite\\Differentials\\Models\\Differential', '2024-09-23 12:52:19', '2024-09-23 12:52:19'),
(59, 'Cadastrou o diferencial Segurança de Dados', 'create', 'Ellite Agência Digital', 1, 11, 'Ellite\\Differentials\\Models\\Differential', '2024-09-23 12:52:55', '2024-09-23 12:52:55'),
(60, 'Cadastrou o diferencial Integração com APIS', 'create', 'Ellite Agência Digital', 1, 12, 'Ellite\\Differentials\\Models\\Differential', '2024-09-23 12:52:57', '2024-09-23 12:52:57'),
(61, 'Cadastrou o diferencial Suporte Multiplataforma', 'create', 'Ellite Agência Digital', 1, 13, 'Ellite\\Differentials\\Models\\Differential', '2024-09-23 12:53:35', '2024-09-23 12:53:35'),
(62, 'Cadastrou o diferencial Engajamento', 'create', 'Ellite Agência Digital', 1, 14, 'Ellite\\Differentials\\Models\\Differential', '2024-09-23 12:53:54', '2024-09-23 12:53:54'),
(63, 'Cadastrou o diferencial Customização', 'create', 'Ellite Agência Digital', 1, 15, 'Ellite\\Differentials\\Models\\Differential', '2024-09-23 12:54:19', '2024-09-23 12:54:19'),
(64, 'Cadastrou o diferencial Praticidade', 'create', 'Ellite Agência Digital', 1, 16, 'Ellite\\Differentials\\Models\\Differential', '2024-09-23 12:54:37', '2024-09-23 12:54:37'),
(65, 'Cadastrou o diferencial Performance', 'create', 'Ellite Agência Digital', 1, 17, 'Ellite\\Differentials\\Models\\Differential', '2024-09-23 12:56:51', '2024-09-23 12:56:51'),
(66, 'Cadastrou o diferencial Eficiência de marketing', 'create', 'Ellite Agência Digital', 1, 18, 'Ellite\\Differentials\\Models\\Differential', '2024-09-23 12:56:53', '2024-09-23 12:56:53'),
(67, 'Cadastrou o diferencial Foco em resultados', 'create', 'Ellite Agência Digital', 1, 19, 'Ellite\\Differentials\\Models\\Differential', '2024-09-23 12:57:13', '2024-09-23 12:57:13'),
(68, 'Cadastrou o diferencial Objetivos Claros', 'create', 'Ellite Agência Digital', 1, 20, 'Ellite\\Differentials\\Models\\Differential', '2024-09-23 12:57:24', '2024-09-23 12:57:24'),
(69, 'Cadastrou a solução SISTEMAS PERSONALIZADOS', 'create', 'Ellite Agência Digital', 1, 3, 'Ellite\\Solutions\\Models\\Solution', '2024-09-23 12:59:35', '2024-09-23 12:59:35'),
(70, 'Editou a solução SISTEMAS PERSONALIZADOS', 'edit', 'Ellite Agência Digital', 1, 3, 'Ellite\\Solutions\\Models\\Solution', '2024-09-23 12:59:55', '2024-09-23 12:59:55'),
(71, 'Editou a solução Sistemas Personalizados', 'edit', 'Ellite Agência Digital', 1, 3, 'Ellite\\Solutions\\Models\\Solution', '2024-09-23 13:00:04', '2024-09-23 13:00:04'),
(72, 'Cadastrou a solução Aplicativos', 'create', 'Ellite Agência Digital', 1, 4, 'Ellite\\Solutions\\Models\\Solution', '2024-09-23 13:02:05', '2024-09-23 13:02:05'),
(73, 'Cadastrou a solução Landing Pages', 'create', 'Ellite Agência Digital', 1, 5, 'Ellite\\Solutions\\Models\\Solution', '2024-09-23 13:02:53', '2024-09-23 13:02:53'),
(74, 'Editou a solução Landing Pages', 'edit', 'Ellite Agência Digital', 1, 5, 'Ellite\\Solutions\\Models\\Solution', '2024-09-23 13:04:14', '2024-09-23 13:04:14'),
(75, 'Editou o diferencial Alta taxa de conversão', 'edit', 'Ellite Agência Digital', 1, 19, 'Ellite\\Differentials\\Models\\Differential', '2024-09-23 13:05:03', '2024-09-23 13:05:03'),
(76, 'Editou a solução Landing Pages', 'edit', 'Ellite Agência Digital', 1, 5, 'Ellite\\Solutions\\Models\\Solution', '2024-09-23 13:05:45', '2024-09-23 13:05:45'),
(77, 'Editou o depoimento Arthur Gonzalez', 'edit', 'Ellite Agência Digital', 1, 1, 'Ellite\\Testimonials\\Models\\Testimony', '2024-09-23 13:07:25', '2024-09-23 13:07:25'),
(78, 'Cadastrou o nível Administrador', 'create', 'Ellite Agência Digital', 1, 1, 'Orchid\\Platform\\Models\\Role', '2024-09-23 16:17:30', '2024-09-23 16:17:30'),
(79, 'Cadastrou o usuário Redação Ellite', 'create', 'Ellite Agência Digital', 1, 2, 'Orchid\\Platform\\Models\\User', '2024-09-23 16:17:56', '2024-09-23 16:17:56'),
(80, 'Editou o diferencial Segurança Avançada', 'edit', 'Ellite Agência Digital', 1, 7, 'Ellite\\Differentials\\Models\\Differential', '2024-09-26 13:45:47', '2024-09-26 13:45:47'),
(81, 'Editou a solução Websites', 'edit', 'Ellite Agência Digital', 1, 1, 'Ellite\\Solutions\\Models\\Solution', '2024-09-26 13:46:19', '2024-09-26 13:46:19'),
(82, 'Editou o banner Banner 1', 'edit', 'Ellite Agência Digital', 1, 1, 'Ellite\\Banners\\Models\\Banner', '2024-09-27 11:42:53', '2024-09-27 11:42:53'),
(83, 'Editou o banner Banner 1', 'edit', 'Ellite Agência Digital', 1, 1, 'Ellite\\Banners\\Models\\Banner', '2024-09-27 11:43:14', '2024-09-27 11:43:14'),
(84, 'Editou o banner Banner 1', 'edit', 'Ellite Agência Digital', 1, 1, 'Ellite\\Banners\\Models\\Banner', '2024-09-27 12:58:42', '2024-09-27 12:58:42'),
(85, 'Editou o banner Banner 1', 'edit', 'Ellite Agência Digital', 1, 1, 'Ellite\\Banners\\Models\\Banner', '2024-09-27 13:11:06', '2024-09-27 13:11:06'),
(86, 'Editou a solução Lojas Virtuais', 'edit', 'Ellite Agência Digital', 1, 2, 'Ellite\\Solutions\\Models\\Solution', '2024-10-08 12:43:41', '2024-10-08 12:43:41'),
(87, 'Editou a solução Lojas Virtuais', 'edit', 'Ellite Agência Digital', 1, 2, 'Ellite\\Solutions\\Models\\Solution', '2024-10-08 12:44:31', '2024-10-08 12:44:31'),
(88, 'Editou a solução Websites', 'edit', 'Ellite Agência Digital', 1, 1, 'Ellite\\Solutions\\Models\\Solution', '2024-10-08 12:56:43', '2024-10-08 12:56:43'),
(89, 'Editou a solução Lojas Virtuais', 'edit', 'Ellite Agência Digital', 1, 2, 'Ellite\\Solutions\\Models\\Solution', '2024-10-08 13:04:11', '2024-10-08 13:04:11'),
(90, 'Cadastrou o banner Banner 2', 'create', 'Ellite Agência Digital', 1, 3, 'Ellite\\Banners\\Models\\Banner', '2024-10-08 13:51:00', '2024-10-08 13:51:00'),
(91, 'Alterou active do banner Banner 1 para 0', 'toggleField', 'Ellite Agência Digital', 1, 1, 'Ellite\\Banners\\Models\\Banner', '2024-10-08 13:51:04', '2024-10-08 13:51:04'),
(92, 'Editou o banner Banner 2', 'edit', 'Ellite Agência Digital', 1, 3, 'Ellite\\Banners\\Models\\Banner', '2024-10-08 13:51:33', '2024-10-08 13:51:33'),
(93, 'Editou o banner Banner 2', 'edit', 'Ellite Agência Digital', 1, 3, 'Ellite\\Banners\\Models\\Banner', '2024-10-08 13:51:53', '2024-10-08 13:51:53'),
(94, 'Editou o banner Banner 2', 'edit', 'Ellite Agência Digital', 1, 3, 'Ellite\\Banners\\Models\\Banner', '2024-10-08 13:52:05', '2024-10-08 13:52:05'),
(95, 'Editou o banner Banner 2', 'edit', 'Ellite Agência Digital', 1, 3, 'Ellite\\Banners\\Models\\Banner', '2024-10-08 13:52:43', '2024-10-08 13:52:43'),
(96, 'Editou o banner Banner 2', 'edit', 'Ellite Agência Digital', 1, 3, 'Ellite\\Banners\\Models\\Banner', '2024-10-08 13:52:56', '2024-10-08 13:52:56'),
(97, 'Editou o banner Banner 2', 'edit', 'Ellite Agência Digital', 1, 3, 'Ellite\\Banners\\Models\\Banner', '2024-10-08 13:54:35', '2024-10-08 13:54:35'),
(98, 'Editou o banner Banner 2', 'edit', 'Ellite Agência Digital', 1, 3, 'Ellite\\Banners\\Models\\Banner', '2024-10-08 13:56:16', '2024-10-08 13:56:16'),
(99, 'Editou o banner Banner 2', 'edit', 'Ellite Agência Digital', 1, 3, 'Ellite\\Banners\\Models\\Banner', '2024-10-08 13:56:25', '2024-10-08 13:56:25'),
(100, 'Editou o banner Banner 2', 'edit', 'Ellite Agência Digital', 1, 3, 'Ellite\\Banners\\Models\\Banner', '2024-10-08 13:56:46', '2024-10-08 13:56:46'),
(101, 'Editou o banner Banner 2', 'edit', 'Ellite Agência Digital', 1, 3, 'Ellite\\Banners\\Models\\Banner', '2024-10-08 13:57:04', '2024-10-08 13:57:04'),
(102, 'Editou o banner Banner 2', 'edit', 'Ellite Agência Digital', 1, 3, 'Ellite\\Banners\\Models\\Banner', '2024-10-08 13:57:22', '2024-10-08 13:57:22'),
(103, 'Deletou o banner Banner 2', 'delete', 'Ellite Agência Digital', 1, 3, 'Ellite\\Banners\\Models\\Banner', '2024-10-08 13:58:06', '2024-10-08 13:58:06'),
(104, 'Alterou active do banner Banner 1 para 1', 'toggleField', 'Ellite Agência Digital', 1, 1, 'Ellite\\Banners\\Models\\Banner', '2024-10-08 13:58:08', '2024-10-08 13:58:08'),
(105, 'Cadastrou a solução parallax', 'create', 'Ellite Agência Digital', 1, 6, 'Ellite\\Solutions\\Models\\Solution', '2024-10-10 18:24:49', '2024-10-10 18:24:49'),
(106, 'Editou a solução Websites', 'edit', 'Ellite Agência Digital', 1, 1, 'Ellite\\Solutions\\Models\\Solution', '2024-10-15 11:10:10', '2024-10-15 11:10:10'),
(107, 'Cadastrou o depoimento Teste', 'create', 'Ellite Agência Digital', 1, 5, 'Ellite\\Testimonials\\Models\\Testimony', '2024-10-21 19:55:52', '2024-10-21 19:55:52'),
(108, 'Editou a política de privacidade ', 'edit', 'Ellite Agência Digital', 1, 1, 'Ellite\\PagePrivacy\\Models\\PagePrivacy', '2025-01-07 20:18:15', '2025-01-07 20:18:15'),
(109, 'Editou a política de privacidade ', 'edit', 'Ellite Agência Digital', 1, 1, 'Ellite\\PagePrivacy\\Models\\PagePrivacy', '2025-01-07 20:18:19', '2025-01-07 20:18:19');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(35, '2014_10_12_000000_create_users_table', 1),
(36, '2014_10_12_100000_create_password_resets_table', 1),
(37, '2015_04_12_000000_create_orchid_users_table', 1),
(38, '2015_10_19_214424_create_orchid_roles_table', 1),
(39, '2015_10_19_214425_create_orchid_role_users_table', 1),
(40, '2016_08_07_125128_create_orchid_attachmentstable_table', 1),
(41, '2017_09_17_125801_create_notifications_table', 1),
(42, '2019_08_19_000000_create_failed_jobs_table', 1),
(43, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(44, '2023_03_01_092021_add_ellite_user_to_users_table', 1),
(45, '2023_03_01_105506_create_logs_table', 1),
(46, '2023_03_01_202439_create_languages_table', 1),
(47, '2023_03_01_202750_add_languages', 1),
(48, '2023_03_01_214035_create_banners_table', 1),
(49, '2023_03_01_215035_create_configurations_table', 1),
(50, '2023_03_02_105530_create_banners_translations_table', 1),
(51, '2023_03_02_202439_create_person_types_table', 1),
(52, '2023_03_02_202750_add_person_types', 1),
(53, '2023_03_03_094035_create_differentials_table', 1),
(54, '2023_03_06_075035_create_brands_table', 1),
(55, '2023_03_07_081035_create_pages_home_table', 1),
(56, '2023_03_07_094035_create_pages_contacts_table', 1),
(57, '2023_03_07_104035_create_pages_privacy_table', 1),
(58, '2023_03_09_094035_create_site_emails_table', 1),
(59, '2023_03_22_084035_create_solutions_categories_table', 1),
(60, '2023_03_22_131235_create_pages_solutions_table', 1),
(61, '2023_03_22_135035_create_solutions_table', 1),
(62, '2023_03_22_172035_create_rel_solutions_categories_table', 1),
(63, '2023_04_20_094035_create_testimonials_table', 1),
(64, '2023_10_16_164750_add_privacy_text', 1),
(65, '2024_09_11_094035_add_link_to_pages_contacts_table', 1),
(66, '2024_09_17_000001_create_rel_solutions_differentials_table', 2),
(67, '2024_09_11_094035_add_link_to_banners_table', 3),
(68, '2024_11_05_090852_add_lgpd_active_to_pages_privacies', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pages_contact`
--

CREATE TABLE `pages_contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pages_contact`
--

INSERT INTO `pages_contact` (`id`, `created_at`, `updated_at`) VALUES
(1, '2024-09-16 18:52:07', '2024-09-16 18:52:07');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pages_contact_translations`
--

CREATE TABLE `pages_contact_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `page_contact_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `keywords` mediumtext COLLATE utf8mb4_unicode_ci,
  `title` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_1` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_2` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_3` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_4` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8mb4_unicode_ci,
  `text_1` mediumtext COLLATE utf8mb4_unicode_ci,
  `text_2` mediumtext COLLATE utf8mb4_unicode_ci,
  `text_3` mediumtext COLLATE utf8mb4_unicode_ci,
  `text_4` mediumtext COLLATE utf8mb4_unicode_ci,
  `video` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_1` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_2` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_3` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_4` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adresses` json DEFAULT NULL,
  `iframes_links` json DEFAULT NULL,
  `phones` json DEFAULT NULL,
  `emails` json DEFAULT NULL,
  `whatsapps` json DEFAULT NULL,
  `social_networks` json DEFAULT NULL,
  `site_messages_destinies` json DEFAULT NULL,
  `sitelink` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buttontext` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pages_contact_translations`
--

INSERT INTO `pages_contact_translations` (`id`, `created_at`, `updated_at`, `page_contact_id`, `locale`, `description`, `keywords`, `title`, `title_1`, `title_2`, `title_3`, `title_4`, `text`, `text_1`, `text_2`, `text_3`, `text_4`, `video`, `video_1`, `video_2`, `video_3`, `video_4`, `adresses`, `iframes_links`, `phones`, `emails`, `whatsapps`, `social_networks`, `site_messages_destinies`, `sitelink`, `buttontext`) VALUES
(1, '2024-09-17 12:19:10', '2024-09-18 12:10:07', 1, 'pt-BR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"link\": \"https://www.google.com/maps/place/Av.+Rubem+Bento+Alves,+4626+-+Santa+Catarina,+Caxias+do+Sul+-+RS/data=!4m2!3m1!1s0x951ea2c16ab73bab:0x830ea198b84112fd?sa=X&ved=1t:242&ictx=111\", \"address\": \"Av. Rubem Bento Alves, 4626 - Santa Catarina - 95032-318 - Caxias do Sul - RS\"}]', NULL, '[{\"phone\": \"(54) 3028.8407\", \"phone_link\": \"555430288407\"}]', '[{\"email\": \"ellite@ellitedigital.com.br\"}]', '[{\"phone\": \"(54) 99608.1996\", \"phone_link\": \"5554996081996\"}]', '[{\"youtube\": null, \"facebook\": null, \"linkedin\": null, \"instagram\": null}]', '{\"1\": {\"form\": \"form-destiny-contact\", \"email\": \"arthur@ellitedigital.com.br\"}}', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pages_home`
--

CREATE TABLE `pages_home` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pages_home`
--

INSERT INTO `pages_home` (`id`, `created_at`, `updated_at`) VALUES
(1, '2024-09-16 18:52:07', '2024-09-16 18:52:07');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pages_home_translations`
--

CREATE TABLE `pages_home_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `page_home_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `keywords` mediumtext COLLATE utf8mb4_unicode_ci,
  `title` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_1` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_2` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_3` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_4` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_5` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_6` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8mb4_unicode_ci,
  `text_1` mediumtext COLLATE utf8mb4_unicode_ci,
  `text_2` mediumtext COLLATE utf8mb4_unicode_ci,
  `text_3` mediumtext COLLATE utf8mb4_unicode_ci,
  `text_4` mediumtext COLLATE utf8mb4_unicode_ci,
  `text_5` mediumtext COLLATE utf8mb4_unicode_ci,
  `text_6` mediumtext COLLATE utf8mb4_unicode_ci,
  `video` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_1` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_2` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_3` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_4` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_5` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_6` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_text` mediumtext COLLATE utf8mb4_unicode_ci,
  `call_text_1` mediumtext COLLATE utf8mb4_unicode_ci,
  `call_text_2` mediumtext COLLATE utf8mb4_unicode_ci,
  `call_text_3` mediumtext COLLATE utf8mb4_unicode_ci,
  `call_text_4` mediumtext COLLATE utf8mb4_unicode_ci,
  `call_text_5` mediumtext COLLATE utf8mb4_unicode_ci,
  `call_text_6` mediumtext COLLATE utf8mb4_unicode_ci,
  `call_link` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_link_1` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_link_2` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_link_3` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_link_4` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_link_5` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_link_6` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_text_link` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_text_link_1` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_text_link_2` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_text_link_3` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_text_link_4` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_text_link_5` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_text_link_6` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `values` json DEFAULT NULL,
  `count_up` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pages_home_translations`
--

INSERT INTO `pages_home_translations` (`id`, `created_at`, `updated_at`, `page_home_id`, `locale`, `description`, `keywords`, `title`, `title_1`, `title_2`, `title_3`, `title_4`, `title_5`, `title_6`, `text`, `text_1`, `text_2`, `text_3`, `text_4`, `text_5`, `text_6`, `video`, `video_1`, `video_2`, `video_3`, `video_4`, `video_5`, `video_6`, `call_text`, `call_text_1`, `call_text_2`, `call_text_3`, `call_text_4`, `call_text_5`, `call_text_6`, `call_link`, `call_link_1`, `call_link_2`, `call_link_3`, `call_link_4`, `call_link_5`, `call_link_6`, `call_text_link`, `call_text_link_1`, `call_text_link_2`, `call_text_link_3`, `call_text_link_4`, `call_text_link_5`, `call_text_link_6`, `values`, `count_up`) VALUES
(1, '2024-09-17 12:14:30', '2024-09-18 19:17:11', 1, 'pt-BR', 'Conheça a Ellite Digital, a agência que faz mais: veja nossas soluções, cases, clientes e resultados que entregamos.', 'ellite digital, desenvolvimento, sites, websites, landing page, digital, elite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Ecossistema que transforma <strong>desafios em oportunidades, oportunidades em resultados reais</strong>. Fazemos a diferen&ccedil;a na vida e no neg&oacute;cio das pessoas com inova&ccedil;&atilde;o e pensamento estrat&eacute;gico.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"text\": null, \"title\": null}]', '[{\"num_unity\": \"Anos\", \"num_prefix\": \"+\", \"num_target\": \"16\", \"num_subject\": \"de mercado\"}, {\"num_unity\": \"Clientes\", \"num_prefix\": \"+\", \"num_target\": \"1800\", \"num_subject\": \"atendidos\"}, {\"num_unity\": \"Estados\", \"num_prefix\": \"+\", \"num_target\": \"4\", \"num_subject\": \"do Brasil\"}]');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pages_privacies`
--

CREATE TABLE `pages_privacies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ellite_lgpd_active` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pages_privacies`
--

INSERT INTO `pages_privacies` (`id`, `created_at`, `updated_at`, `ellite_lgpd_active`) VALUES
(1, '2024-09-16 18:50:55', '2025-01-07 20:18:19', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pages_privacies_translations`
--

CREATE TABLE `pages_privacies_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `page_privacy_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `keywords` mediumtext COLLATE utf8mb4_unicode_ci,
  `text` mediumtext COLLATE utf8mb4_unicode_ci,
  `text_1` mediumtext COLLATE utf8mb4_unicode_ci,
  `text_2` mediumtext COLLATE utf8mb4_unicode_ci,
  `text_3` mediumtext COLLATE utf8mb4_unicode_ci,
  `text_4` mediumtext COLLATE utf8mb4_unicode_ci,
  `video` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_1` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_2` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_3` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_4` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pages_privacies_translations`
--

INSERT INTO `pages_privacies_translations` (`id`, `created_at`, `updated_at`, `page_privacy_id`, `locale`, `description`, `keywords`, `text`, `text_1`, `text_2`, `text_3`, `text_4`, `video`, `video_1`, `video_2`, `video_3`, `video_4`) VALUES
(1, '2024-09-16 18:50:55', '2024-09-16 18:50:55', 1, 'pt-BR', NULL, NULL, '<p><strong>1 - Defini&ccedil;&otilde;es</strong></p>\r\n<p>Para fins desta Pol&iacute;tica de Privacidade, aplicam-se as seguintes defini&ccedil;&otilde;es:</p>\r\n<p>Cookies: Arquivos enviados pelo servidor do Portal para o computador dos Visitantes, com a finalidade de identificar o computador e obter dados de acesso, como p&aacute;ginas navegadas ou links clicados, permitindo, desta forma, personalizar a navega&ccedil;&atilde;o dos Visitantes no Portal, de acordo com o seu perfil.</p>\r\n<p>{{nome}}: Denomina&ccedil;&atilde;o utilizada neste documento para identificar a controladora e propriet&aacute;ria deste Portal, {{razao_social}}, inscrita sob o n&ordm; {{cnpj}}, com sede na cidade de {{endereco}}.</p>\r\n<p>IP: Abreviatura de Internet Protocol. &Eacute; um conjunto de n&uacute;meros que identifica o computador dos Visitantes na Internet.</p>\r\n<p>Logs: Registros de atividades dos Visitantes efetuadas no Portal.</p>\r\n<p>Portal: Designa o endere&ccedil;o eletr&ocirc;nico {{dominio}} e seus subdom&iacute;nios.</p>\r\n<p>Visitante: Qualquer pessoa que navegar pelo Portal.</p>\r\n<p>Usu&aacute;rio: Visitantes que estiverem autenticados no sistema do Portal.</p>\r\n<p>Web beacons: Linhas de programa&ccedil;&atilde;o em p&aacute;ginas HTML que tem como finalidade obter detalhes da navega&ccedil;&atilde;o do usu&aacute;rio, a exemplo de quanto tempo ficou com o site aberto, qual endere&ccedil;o visitado em seguida, dentre outros.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>2 - Obten&ccedil;&atilde;o dos dados e informa&ccedil;&otilde;es</strong></p>\r\n<p>2.1 - Os dados e informa&ccedil;&otilde;es ser&atilde;o obtidos quando os Visitantes interagirem com as diversas funcionalidades existentes no Portal, fornecendo as informa&ccedil;&otilde;es voluntariamente, como na se&ccedil;&atilde;o de &ldquo;Central de Atendimento&rdquo; por exemplo.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>3 - Armazenamento dos Dados e Informa&ccedil;&otilde;es</strong></p>\r\n<p>3.1 - Todos os dados e informa&ccedil;&otilde;es coletados dos Visitantes ser&atilde;o incorporados ao banco de dados do Portal, sendo sua respons&aacute;vel a {{nome}}.</p>\r\n<p>3.2 - Os dados e informa&ccedil;&otilde;es coletados estar&atilde;o armazenados em ambiente seguro, observado o estado da t&eacute;cnica dispon&iacute;vel, e somente poder&atilde;o ser acessadas por pessoas qualificadas e autorizadas pela {{nome}}.</p>\r\n<p>3.3 - Considerando que nenhum sistema de seguran&ccedil;a &eacute; absolutamente seguro, a {{nome}} se exime de quaisquer responsabilidades por eventuais danos e/ou preju&iacute;zos decorrentes de falhas, v&iacute;rus ou invas&otilde;es do banco de dados do Portal, salvo nos casos de dolo ou culpa pela mesma.</p>\r\n<p>3.4 - A {{nome}} coleta somente as informa&ccedil;&otilde;es indispens&aacute;veis &agrave; viabiliza&ccedil;&atilde;o de seu neg&oacute;cio, qual seja, ind&uacute;stria aliment&iacute;cia.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>4 - Uso dos Dados e Informa&ccedil;&otilde;es</strong></p>\r\n<p>4.1 - Os dados e informa&ccedil;&otilde;es coletados dos Visitantes poder&atilde;o ser utilizados para as seguintes finalidades:</p>\r\n<p>a) Responder a eventuais d&uacute;vidas e solicita&ccedil;&otilde;es dos Visitantes;</p>\r\n<p>b) Cumprimento de ordem legal ou judicial;</p>\r\n<p>c) Constituir, defender ou exercer regularmente direitos em &acirc;mbito judicial ou administrativo;</p>\r\n<p>d) Elaborar estat&iacute;sticas gerais, para identifica&ccedil;&atilde;o do perfil dos Visitantes e desenvolvimento de campanhas da {{nome}}, mas sem realizar identifica&ccedil;&atilde;o pessoal;</p>\r\n<p>e) Garantir a seguran&ccedil;a dos Visitantes;</p>\r\n<p>f) Manter atualizados os cadastros dos Visitantes para fins de contato por telefone, correio eletr&ocirc;nico, SMS, mala direta ou por outros meios de comunica&ccedil;&atilde;o;</p>\r\n<p>g) Informar a respeito de novidades, promo&ccedil;&otilde;es e eventos da {{nome}} e de seus parceiros comerciais.</p>\r\n<p>4.2 - A base de dados coletados pelo Portal {{nome}} n&atilde;o ser&aacute; compartilhada, vendida, cedida, transferida, informada ou alugada a terceiros.</p>\r\n<p>4.3 - Os dados adquiridos somente poder&atilde;o ser acessados por profissionais devidamente autorizados pela {{nome}}, respeitando a necessidade a que ser&atilde;o submetidos, a relev&acirc;ncia para os objetivos do Portal e aos interesses dos usu&aacute;rios, al&eacute;m de preservar a privacidade dos usu&aacute;rios.</p>\r\n<p>4.4 - Caso o Usu&aacute;rio deixe de utilizar os servi&ccedil;os oferecidos pelo Portal, a {{nome}} poder&aacute;, para fins de auditoria e preserva&ccedil;&atilde;o de direitos, permanecer com o registro de seus dados e informa&ccedil;&otilde;es, pelo per&iacute;odo m&aacute;ximo de 5 (cinco) anos, com a faculdade de exclu&iacute;-los definitivamente segundo sua conveni&ecirc;ncia.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>5 - Cookies</strong></p>\r\n<p>5.1 - O Portal poder&aacute; fazer o uso de cookies, cabendo aos Visitantes configurarem o seu navegador de Internet, caso deseje bloque&aacute;-los. Nesta hip&oacute;tese, algumas funcionalidades do Portal poder&atilde;o ser limitadas.</p>\r\n<p>5.2. Tamb&eacute;m, o Portal poder&aacute; utilizar web beacons para coletar dados de comportamento dos visitantes das p&aacute;ginas, onde a instala&ccedil;&atilde;o de arquivos nos equipamentos dos visitantes n&atilde;o &eacute; necess&aacute;ria.</p>\r\n<p>5.3. Outras tecnologias poder&atilde;o ser utilizadas para a obten&ccedil;&atilde;o de dados de navega&ccedil;&atilde;o pelo usu&aacute;rio, no entanto, respeitar&atilde;o sempre aos termos desta pol&iacute;tica e as op&ccedil;&otilde;es do usu&aacute;rio a respeito de sua coleta e armazenamento.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>6 - Disposi&ccedil;&otilde;es Gerais</strong></p>\r\n<p>6.1 - As disposi&ccedil;&otilde;es constantes desta Pol&iacute;tica de Privacidade poder&atilde;o ser atualizadas ou modificadas a qualquer momento, cabendo aos Visitantes verific&aacute;-la sempre que efetuar o acesso ao Portal.</p>\r\n<p>6.2 - Os Visitantes dever&atilde;o entrar em contato em caso de qualquer d&uacute;vida com rela&ccedil;&atilde;o &agrave;s disposi&ccedil;&otilde;es constantes desta Pol&iacute;tica de Privacidade atrav&eacute;s da Se&ccedil;&atilde;o de &ldquo;Central de Atendimento&rdquo;.</p>\r\n<p>6.3 - O usu&aacute;rio ao colocar informa&ccedil;&otilde;es em uma &aacute;rea p&uacute;blica do Portal {{nome}} est&aacute; ciente de que elas estar&atilde;o dispon&iacute;veis a outros Visitantes e Usu&aacute;rios do site.</p>\r\n<p>6.4 - A {{nome}} n&atilde;o pode controlar o que fa&ccedil;am os Visitantes e Usu&aacute;rios da informa&ccedil;&atilde;o publicada no site. Lembre-se de que qualquer informa&ccedil;&atilde;o divulgada nestas &aacute;reas pode tornar-se informa&ccedil;&atilde;o p&uacute;blica e que, portanto, &eacute; importante cautela e bom senso ao publicar qualquer conte&uacute;do.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>7 - Lei Aplic&aacute;vel e Jurisdi&ccedil;&atilde;o</strong></p>\r\n<p>7.1 - A presente Pol&iacute;tica de Privacidade ser&aacute; interpretada segundo a legisla&ccedil;&atilde;o brasileira, no idioma portugu&ecirc;s, sendo eleito o Foro da Comarca de Caxias do Sul no estado do Rio Grande do Sul para dirimir qualquer lit&iacute;gio, quest&atilde;o ou d&uacute;vida superveniente, com expressa ren&uacute;ncia de qualquer outro, por mais privilegiado que seja.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2024-09-16 18:50:55', '2024-09-16 18:50:55', 1, 'en', NULL, NULL, '<h2><strong>Privacy Policy</strong></h2>\r\n<p><br><em>Last updated: {{data}}</em></p>\r\n<p>{{nome}}, with CNPJ {{cnpj}} and headquartered at {{endereco}} (\"we\", \"our\" or \"company\"), is committed to protecting your privacy and ensuring the security of personal information that you provide to us when accessing our institutional website. This privacy policy explains how we collect, use, share and protect the personal information you provide to us when accessing our institutional website. Please read the following carefully to understand our approach to privacy and how your information will be treated.</p>\r\n<p><strong>1. Information We Collect</strong></p>\r\n<p>1.1. Personal Information: We may collect personal information such as your name, email address and telephone number when you voluntarily provide this data to us by filling in forms on our website.</p>\r\n<p>1.2. Navigation Information: We may collect navigation information, such as IP address, browser, operating system and pages visited, for the purposes of data analysis and improvements to our website.</p>\r\n<p><strong>2. Use of Information</strong></p>\r\n<p>2.1. We use personal information to fulfill your requests and to contact you regarding services, information or updates relevant to your interaction with us.</p>\r\n<p>2.2. Navigational information is used to analyze trends, administer the site, and gather demographic information. They are not linked to personally identifiable information.</p>\r\n<p><strong>3. Information Sharing</strong></p>\r\n<p>3.1. We do not sell, rent or disclose your personal information to third parties unless necessary to fulfill a request or comply with a legal obligation.</p>\r\n<p><strong>4. Information Security</strong></p>\r\n<p>4.1. We have implemented security measures to protect your personal information from unauthorized access or disclosure. However, no data transmission over the internet is completely secure, and we cannot guarantee absolute security.</p>\r\n<p>5. Cookies and Tracking</p>\r\n<p>5.1. We use cookies to improve the user experience on our website. You can manage cookie settings in your browser.</p>\r\n<p><strong>6. Changes to the Privacy Policy</strong></p>\r\n<p>6.1. We reserve the right to update or modify this privacy policy at any time. The last updated date will be indicated at the top of the policy.</p>\r\n<p><strong>7. Contact</strong></p>\r\n<p>7.1. If you have any questions about this privacy policy or the treatment of your information, please contact us at:</p>\r\n<p>{{nome}}<br>Address: {{endereco}}<br>CNPJ: {{cnpj}}<br>Email: {{email}}<br>Phone: {{telefone}}</p>\r\n<p>By accessing and using our website, you agree to this privacy policy. We recommend that you periodically visit this page to check for updates or changes to our privacy policy.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '2024-09-16 18:50:55', '2024-09-16 18:50:55', 1, 'es', NULL, NULL, '<h2><strong>Pol&iacute;tica de privacidad</strong></h2>\r\n<p><br><em>&Uacute;ltima actualizaci&oacute;n: {{data}}</em></p>\r\n<p>{{nome}}, con CNPJ {{cnpj}} y con sede en {{endereco}} (\"nosotros\", \"nuestro\" o \"empresa\"), se compromete a proteger su privacidad y garantizar la seguridad de la informaci&oacute;n personal que usted nos proporciona al acceder a nuestra p&aacute;gina web institucional. Esta pol&iacute;tica de privacidad explica c&oacute;mo recopilamos, usamos, compartimos y protegemos la informaci&oacute;n personal que usted nos proporciona al acceder a nuestro sitio web institucional. Lea atentamente lo siguiente para comprender nuestro enfoque de privacidad y c&oacute;mo se tratar&aacute; su informaci&oacute;n.</p>\r\n<p><strong>1. Informaci&oacute;n que recopilamos</strong></p>\r\n<p>1.1. Informaci&oacute;n personal: Podemos recopilar informaci&oacute;n personal como su nombre, direcci&oacute;n de correo electr&oacute;nico y n&uacute;mero de tel&eacute;fono cuando usted nos proporciona voluntariamente estos datos al completar formularios en nuestro sitio web.</p>\r\n<p>1.2. Informaci&oacute;n de navegaci&oacute;n: podemos recopilar informaci&oacute;n de navegaci&oacute;n, como direcci&oacute;n IP, navegador, sistema operativo y p&aacute;ginas visitadas, con el fin de analizar datos y mejorar nuestro sitio web.</p>\r\n<p><strong>2. Uso de la informaci&oacute;n</strong></p>\r\n<p>2.1. Utilizamos informaci&oacute;n personal para cumplir con sus solicitudes y contactarlo con respecto a servicios, informaci&oacute;n o actualizaciones relevantes para su interacci&oacute;n con nosotros.</p>\r\n<p>2.2. La informaci&oacute;n de navegaci&oacute;n se utiliza para analizar tendencias, administrar el sitio y recopilar informaci&oacute;n demogr&aacute;fica. No est&aacute;n vinculados a informaci&oacute;n de identificaci&oacute;n personal.</p>\r\n<p><strong>3. Intercambio de informaci&oacute;n</strong></p>\r\n<p>3.1. No vendemos, alquilamos ni revelamos su informaci&oacute;n personal a terceros a menos que sea necesario para cumplir con una solicitud o cumplir con una obligaci&oacute;n legal.</p>\r\n<p><strong>4. Seguridad de la informaci&oacute;n</strong></p>\r\n<p>4.1. Hemos implementado medidas de seguridad para proteger su informaci&oacute;n personal contra acceso o divulgaci&oacute;n no autorizados. Sin embargo, ninguna transmisi&oacute;n de datos a trav&eacute;s de Internet es completamente segura y no podemos garantizar una seguridad absoluta.</p>\r\n<p><strong>5. Cookies y seguimiento</strong></p>\r\n<p>5.1. Utilizamos cookies para mejorar la experiencia del usuario en nuestro sitio web. Puede administrar la configuraci&oacute;n de cookies en su navegador.</p>\r\n<p><strong>6. Cambios en la Pol&iacute;tica de Privacidad</strong></p>\r\n<p>6.1. Nos reservamos el derecho de actualizar o modificar esta pol&iacute;tica de privacidad en cualquier momento. La &uacute;ltima fecha de actualizaci&oacute;n estar&aacute; indicada en la parte superior de la p&oacute;liza.</p>\r\n<p><strong>7. Contacto</strong></p>\r\n<p>7.1. Si tiene alguna pregunta sobre esta pol&iacute;tica de privacidad o el tratamiento de su informaci&oacute;n, por favor cont&aacute;ctenos en:</p>\r\n<p>{{nome}}<br>Direcci&oacute;n: {{endereco}}<br>CNPJ: {{cnpj}}<br>Correo electr&oacute;nico: {{email}}<br>Tel&eacute;fono: {{telefone}}</p>\r\n<p>Al acceder y utilizar nuestro sitio web, usted acepta esta pol&iacute;tica de privacidad. Le recomendamos que visite peri&oacute;dicamente esta p&aacute;gina para comprobar si hay actualizaciones o cambios en nuestra pol&iacute;tica de privacidad.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pages_solutions`
--

CREATE TABLE `pages_solutions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pages_solutions`
--

INSERT INTO `pages_solutions` (`id`, `created_at`, `updated_at`) VALUES
(1, '2024-09-16 18:52:07', '2024-09-16 18:52:07');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pages_solutions_translations`
--

CREATE TABLE `pages_solutions_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `page_solution_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `keywords` mediumtext COLLATE utf8mb4_unicode_ci,
  `text` mediumtext COLLATE utf8mb4_unicode_ci,
  `text_1` mediumtext COLLATE utf8mb4_unicode_ci,
  `text_2` mediumtext COLLATE utf8mb4_unicode_ci,
  `text_3` mediumtext COLLATE utf8mb4_unicode_ci,
  `text_4` mediumtext COLLATE utf8mb4_unicode_ci,
  `video` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_1` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_2` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_3` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_4` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `person_types`
--

CREATE TABLE `person_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `person_types`
--

INSERT INTO `person_types` (`id`, `name`, `code`, `position`, `created_at`, `updated_at`) VALUES
(1, 'Pessoa Física', 'f', 1, '2024-09-16 18:50:34', '2024-09-16 18:50:34'),
(2, 'Pessoa Jurídica', 'j', 2, '2024-09-16 18:50:34', '2024-09-16 18:50:34');

-- --------------------------------------------------------

--
-- Estrutura da tabela `rel_solutions_categories`
--

CREATE TABLE `rel_solutions_categories` (
  `solution_category_id` bigint(20) UNSIGNED NOT NULL,
  `solution_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `rel_solutions_differentials`
--

CREATE TABLE `rel_solutions_differentials` (
  `differential_id` bigint(20) UNSIGNED NOT NULL,
  `solution_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `rel_solutions_differentials`
--

INSERT INTO `rel_solutions_differentials` (`differential_id`, `solution_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 2),
(6, 2),
(7, 1),
(7, 2),
(8, 2),
(9, 3),
(10, 1),
(10, 3),
(11, 3),
(12, 3),
(13, 4),
(14, 4),
(15, 4),
(16, 4),
(17, 5),
(18, 5),
(19, 5),
(20, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'administrador', 'Administrador', '{\"platform.index\": \"1\", \"platform.brands.edit\": \"1\", \"platform.brands.list\": \"1\", \"platform.banners.edit\": \"1\", \"platform.banners.list\": \"1\", \"platform.systems.logs\": \"1\", \"platform.brands.create\": \"1\", \"platform.brands.delete\": \"1\", \"platform.systems.roles\": \"1\", \"platform.systems.users\": \"1\", \"platform.banners.create\": \"1\", \"platform.banners.delete\": \"1\", \"platform.pageshome.edit\": \"1\", \"platform.solutions.edit\": \"1\", \"platform.solutions.list\": \"1\", \"platform.siteemails.list\": \"1\", \"platform.siteemails.view\": \"1\", \"platform.solutions.create\": \"1\", \"platform.solutions.delete\": \"1\", \"platform.pagescontact.edit\": \"1\", \"platform.pagesprivacy.edit\": \"1\", \"platform.siteemails.delete\": \"1\", \"platform.testimonials.edit\": \"1\", \"platform.testimonials.list\": \"1\", \"platform.differentials.edit\": \"1\", \"platform.differentials.list\": \"1\", \"platform.systems.attachment\": \"1\", \"platform.configurations.edit\": \"1\", \"platform.pagessolutions.edit\": \"1\", \"platform.testimonials.create\": \"1\", \"platform.testimonials.delete\": \"1\", \"platform.differentials.create\": \"1\", \"platform.differentials.delete\": \"1\", \"platform.solutionscategories.edit\": \"1\", \"platform.solutionscategories.list\": \"1\", \"platform.solutionscategories.create\": \"1\", \"platform.solutionscategories.delete\": \"1\"}', '2024-09-23 16:17:30', '2024-09-23 16:17:30');

-- --------------------------------------------------------

--
-- Estrutura da tabela `role_users`
--

CREATE TABLE `role_users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `role_users`
--

INSERT INTO `role_users` (`user_id`, `role_id`) VALUES
(2, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `site_emails`
--

CREATE TABLE `site_emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sent` tinyint(1) NOT NULL DEFAULT '0',
  `form_name` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_slug` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_name` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_id` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` mediumtext COLLATE utf8mb4_unicode_ci,
  `job` text COLLATE utf8mb4_unicode_ci,
  `product` text COLLATE utf8mb4_unicode_ci,
  `form_data` mediumtext COLLATE utf8mb4_unicode_ci,
  `debug` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `site_emails`
--

INSERT INTO `site_emails` (`id`, `created_at`, `updated_at`, `sent`, `form_name`, `form_slug`, `entity_name`, `entity_id`, `name`, `email`, `phone`, `whatsapp`, `subject`, `link`, `file`, `message`, `job`, `product`, `form_data`, `debug`) VALUES
(1, '2024-09-17 16:29:00', '2024-09-17 16:29:03', 1, 'Contato', 'contact', NULL, NULL, 'afaf', 'afw@af', '(44) 11441-2341', NULL, NULL, NULL, NULL, 'afwfwawafaw', NULL, NULL, NULL, NULL),
(2, '2024-09-17 16:30:10', '2024-09-17 16:30:10', 1, 'Contato', 'contact', NULL, NULL, 'awffawfwa', 'awf@awf', '(31) 24143-4121', NULL, NULL, NULL, NULL, 'awf', NULL, NULL, NULL, NULL),
(3, '2024-09-17 16:33:40', '2024-09-17 16:33:41', 1, 'Contato', 'contact', NULL, NULL, 'awf', 'awf@awf', '(32) 14142-3412', NULL, NULL, NULL, NULL, 'awfawfaw', NULL, NULL, NULL, NULL),
(4, '2024-09-18 12:24:25', '2024-09-18 12:24:25', 0, 'Contato', 'contact', NULL, '1', 'awf', 'awf@awf', '(24) 11421-4243', NULL, NULL, NULL, NULL, 'awfawf', NULL, 'Websites', NULL, NULL),
(5, '2024-09-18 12:52:07', '2024-09-18 12:52:07', 0, 'Contato', 'contact', NULL, '1', 'awf', 'awf@awf', '(21) 44114-2142', NULL, NULL, NULL, NULL, 'awa', NULL, 'Websites', NULL, NULL),
(6, '2024-09-18 12:53:11', '2024-09-18 12:53:11', 0, 'Contato', 'contact', NULL, '1', 'awf', 'awf@awf', '(45) 14414-3241', NULL, NULL, NULL, NULL, 'afafw', NULL, 'Websites', NULL, NULL),
(7, '2024-09-18 12:54:08', '2024-09-18 12:54:08', 0, 'Contato', 'contact', NULL, '1', 'awf', 'awf@aw', '(34) 13412-1421', NULL, NULL, NULL, NULL, 'awfaw', NULL, 'Websites', NULL, NULL),
(8, '2024-09-18 12:54:25', '2024-09-18 12:54:27', 1, 'Contato', 'contact', NULL, '1', 'awf', 'awf@AWF', '(14) 41414-2312', NULL, NULL, NULL, NULL, 'AWFFAA', NULL, 'Websites', NULL, NULL),
(9, '2024-09-18 12:54:47', '2024-09-18 12:54:48', 1, 'Contato', 'contact', NULL, '1', 'awffawfw', 'awf@awf', '(21) 44141-1441', NULL, NULL, NULL, NULL, 'afwawffawafw', 'afaawfafw', 'Websites', NULL, NULL),
(10, '2024-09-18 12:55:30', '2024-09-18 12:55:31', 1, 'Contato', 'contact', NULL, '2', 'awf', 'awf@awf', '(41) 21424-1241', NULL, NULL, NULL, NULL, 'awfaff', 'awf', 'Lojas Virtuais', NULL, NULL),
(11, '2024-09-18 12:55:46', '2024-09-18 12:55:47', 1, 'Contato', 'contact', NULL, '1', 'afwafaafwawfafw', 'awf@awf', '(24) 12141-4241', NULL, NULL, NULL, NULL, 'awf', 'awfawawffwaawf', 'Websites', NULL, NULL),
(12, '2024-09-19 19:41:21', '2024-09-19 19:41:22', 1, 'Contato', 'contact', NULL, '1', 'awf', 'awf@awf', '(42) 11422-1424', NULL, NULL, NULL, NULL, 'awfawawf', NULL, 'Websites', NULL, NULL),
(13, '2025-01-06 12:54:00', '2025-01-06 12:54:30', 1, 'Contato', 'contact', NULL, '3', 'VITOR TOIGO FROHLICH', 'toigo.vitor@gmail.com', '(54) 99978-1906', NULL, NULL, NULL, NULL, '0', NULL, 'Sistemas Personalizados', NULL, NULL),
(14, '2025-01-06 12:54:24', '2025-01-06 12:54:53', 1, 'Contato', 'contact', NULL, '1', 'VITOR TOIGO FROHLICH', 'toigo.vitor@gmail.com', '(54) 99978-1906', NULL, NULL, NULL, NULL, '0', NULL, 'Websites', NULL, NULL),
(15, '2025-01-06 13:14:13', '2025-01-06 13:14:26', 1, 'Contato', 'contact', NULL, '2', 'VITOR TOIGO FROHLICH', 'toigo.vitor@gmail.com', '(54) 99978-1906', NULL, NULL, NULL, NULL, 'qwe', NULL, 'Lojas Virtuais', NULL, NULL),
(16, '2025-01-06 13:14:34', '2025-01-06 13:14:46', 1, 'Contato', 'contact', NULL, '2', 'VITOR TOIGO FROHLICH', 'toigo.vitor@gmail.com', '(54) 99978-1906', NULL, NULL, NULL, NULL, 'adsad', NULL, 'Lojas Virtuais', NULL, NULL),
(17, '2025-01-06 13:39:03', '2025-01-06 13:39:04', 1, 'Contato', 'contact', NULL, '2', 'VITOR TOIGO FROHLICH', 'toigo.vitor@gmail.com', '(54) 99978-1906', NULL, NULL, NULL, NULL, '0', NULL, 'Lojas Virtuais', NULL, NULL),
(18, '2025-01-06 14:06:30', '2025-01-06 14:07:26', 1, 'Contato', 'contact', NULL, '1', 'VITOR TOIGO FROHLICH', 'toigo.vitor@gmail.com', '(54) 99978-1906', NULL, NULL, NULL, NULL, 'teste', NULL, 'Websites', NULL, NULL),
(19, '2025-01-06 14:42:32', '2025-01-06 14:43:29', 1, 'Contato', 'contact', NULL, '3', 'VITOR TOIGO FROHLICH', 'toigo.vitor@gmail.com', '(54) 99978-1906', NULL, NULL, NULL, NULL, 'teste', NULL, 'Sistemas Personalizados', NULL, NULL),
(20, '2025-01-10 13:52:59', '2025-01-10 13:53:55', 1, 'Contato', 'contact', NULL, '1', 'VITOR TOIGO FROHLICH', 'toigo.vitor@gmail.com', '(54) 99978-1906', NULL, NULL, NULL, NULL, 'tsete', NULL, 'Websites', NULL, NULL),
(21, '2025-01-10 19:40:25', '2025-01-10 19:41:20', 1, 'Contato', 'contact', NULL, 'sistemas-personalizados', 'VITOR TOIGO FROHLICH', 'toigo.vitor@gmail.com', '(54) 99978-1906', NULL, NULL, NULL, NULL, 'testeqwe', NULL, '{\"id\":3,\"name\":\"Sistemas Personalizados\",\"order\":9999,\"code\":null,\"active\":1,\"created_at\":\"2024-09-23T12:59:35.000000Z\",\"updated_at\":\"2024-09-23T13:00:04.000000Z\",\"price\":null,\"width\":null,\"height\":null,\"length\":null,\"weight\":null,\"title\":\"Sistemas Personalizados\",\"slug\":\"sistemas-personalizados\",\"short_title\":null,\"description\":null,\"keywords\":null,\"text\":\"<p>Estabele&ccedil;a uma presen&ccedil;a online s&oacute;lida e profissional com um site institucional que reflete a ess&ecirc;ncia da sua marca. Nossos sites s&atilde;o desenvolvidos para comunicar sua miss&atilde;o, valores e servi&ccedil;os de forma clara e impactante.<\\/p>\",\"short_text\":\"<p>Transforme a efici&ecirc;ncia do seu neg&oacute;cio com <span style=\\\"color: rgb(222, 149, 40);\\\">sistemas sob medida e inovadores<\\/span><\\/p>\",\"video\":null,\"hits\":0,\"color\":null,\"solution_id\":3,\"locale\":\"pt-BR\",\"translations\":[{\"id\":3,\"title\":\"Sistemas Personalizados\",\"slug\":\"sistemas-personalizados\",\"short_title\":null,\"description\":null,\"keywords\":null,\"text\":\"<p>Estabele&ccedil;a uma presen&ccedil;a online s&oacute;lida e profissional com um site institucional que reflete a ess&ecirc;ncia da sua marca. Nossos sites s&atilde;o desenvolvidos para comunicar sua miss&atilde;o, valores e servi&ccedil;os de forma clara e impactante.<\\/p>\",\"short_text\":\"<p>Transforme a efici&ecirc;ncia do seu neg&oacute;cio com <span style=\\\"color: rgb(222, 149, 40);\\\">sistemas sob medida e inovadores<\\/span><\\/p>\",\"video\":null,\"hits\":0,\"color\":null,\"solution_id\":3,\"locale\":\"pt-BR\",\"created_at\":\"2024-09-23T12:59:35.000000Z\",\"updated_at\":\"2024-09-23T13:00:04.000000Z\"}]}', NULL, NULL),
(22, '2025-01-10 19:40:42', '2025-01-10 19:41:21', 1, 'Contato', 'contact', NULL, 'lojas-virtuais', 'VITOR TOIGO FROHLICH', 'toigo.vitor@gmail.com', '(54) 99978-1906', NULL, NULL, NULL, NULL, 'qweqwe', NULL, '{\"id\":2,\"name\":\"Lojas Virtuais\",\"order\":2,\"code\":null,\"active\":1,\"created_at\":\"2024-09-17T16:53:13.000000Z\",\"updated_at\":\"2024-09-18T20:43:13.000000Z\",\"price\":null,\"width\":null,\"height\":null,\"length\":null,\"weight\":null,\"title\":\"Lojas Virtuais\",\"slug\":\"lojas-virtuais\",\"short_title\":null,\"description\":null,\"keywords\":null,\"text\":\"<p>Crie um experi&ecirc;ncia de compra online que encanta seus clientes e maximiza suas vendas. Nossas lojas virtuais s&atilde;o projetadas para serem intuitivas, seguras e adaptadas &agrave;s suas necessidades especif&iacute;cias, garantindo uma jornada de compra flu&iacute;da e eficaz.<\\/p>\",\"short_text\":\"<p>Venda mais com uma <span style=\\\"color: rgb(255, 255, 255);\\\">loja virtual<\\/span><\\/p>\\r\\n<p><span style=\\\"color: rgb(255, 255, 255);\\\">projetada para o seu sucesso.<\\/span><\\/p>\",\"video\":null,\"hits\":0,\"color\":null,\"solution_id\":2,\"locale\":\"pt-BR\",\"translations\":[{\"id\":2,\"title\":\"Lojas Virtuais\",\"slug\":\"lojas-virtuais\",\"short_title\":null,\"description\":null,\"keywords\":null,\"text\":\"<p>Crie um experi&ecirc;ncia de compra online que encanta seus clientes e maximiza suas vendas. Nossas lojas virtuais s&atilde;o projetadas para serem intuitivas, seguras e adaptadas &agrave;s suas necessidades especif&iacute;cias, garantindo uma jornada de compra flu&iacute;da e eficaz.<\\/p>\",\"short_text\":\"<p>Venda mais com uma <span style=\\\"color: rgb(255, 255, 255);\\\">loja virtual<\\/span><\\/p>\\r\\n<p><span style=\\\"color: rgb(255, 255, 255);\\\">projetada para o seu sucesso.<\\/span><\\/p>\",\"video\":null,\"hits\":0,\"color\":null,\"solution_id\":2,\"locale\":\"pt-BR\",\"created_at\":\"2024-09-17T16:53:14.000000Z\",\"updated_at\":\"2024-09-17T16:53:14.000000Z\"}]}', NULL, NULL),
(23, '2025-01-10 19:42:35', '2025-01-10 19:43:04', 1, 'Contato', 'contact', NULL, 'sistemas-personalizados', 'testee', 'toigo.vitor@gmail.com', '(54) 99978-1906', NULL, NULL, NULL, NULL, 'teste', NULL, 'Sistemas Personalizados', NULL, NULL),
(24, '2025-01-10 19:45:12', '2025-01-10 19:45:24', 1, 'Contato', 'contact', NULL, 'sistemas-personalizados', 'VITOR TOIGO FROHLICH', 'toigo.vitor@gmail.com', '(54) 99978-1906', NULL, NULL, NULL, NULL, 'qweqw', 'teste', 'Sistemas Personalizados', NULL, NULL),
(25, '2025-01-10 19:45:45', '2025-01-10 19:45:57', 1, 'Contato', 'contact', NULL, 'sistemas-personalizados', 'Vitor', 'vitor@ellitedigital.com.br', '(55) 55555-5555', NULL, NULL, NULL, NULL, 'teste', 'Ellite Digital', 'Sistemas Personalizados', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `solutions`
--

CREATE TABLE `solutions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '9999',
  `code` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `width` decimal(10,2) DEFAULT NULL,
  `height` decimal(10,2) DEFAULT NULL,
  `length` decimal(10,2) DEFAULT NULL,
  `weight` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `solutions`
--

INSERT INTO `solutions` (`id`, `name`, `order`, `code`, `active`, `created_at`, `updated_at`, `price`, `width`, `height`, `length`, `weight`) VALUES
(1, 'Websites', 1, NULL, 1, '2024-09-17 13:51:12', '2024-09-18 20:43:13', NULL, NULL, NULL, NULL, NULL),
(2, 'Lojas Virtuais', 2, NULL, 1, '2024-09-17 16:53:13', '2024-09-18 20:43:13', NULL, NULL, NULL, NULL, NULL),
(3, 'Sistemas Personalizados', 9999, NULL, 1, '2024-09-23 12:59:35', '2024-09-23 13:00:04', NULL, NULL, NULL, NULL, NULL),
(4, 'Aplicativos', 9999, NULL, 1, '2024-09-23 13:02:05', '2024-09-23 13:02:05', NULL, NULL, NULL, NULL, NULL),
(5, 'Landing Pages', 9999, NULL, 1, '2024-09-23 13:02:53', '2024-09-23 13:02:53', NULL, NULL, NULL, NULL, NULL),
(6, 'parallax', 9999, NULL, 1, '2024-10-10 18:24:49', '2024-10-10 18:24:49', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `solutions_categories`
--

CREATE TABLE `solutions_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '9999',
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `solutions_categories_translations`
--

CREATE TABLE `solutions_categories_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `solution_category_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `keywords` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `solutions_translations`
--

CREATE TABLE `solutions_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_title` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `text` mediumtext COLLATE utf8mb4_unicode_ci,
  `short_text` mediumtext COLLATE utf8mb4_unicode_ci,
  `video` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `color` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `solution_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `solutions_translations`
--

INSERT INTO `solutions_translations` (`id`, `title`, `slug`, `short_title`, `description`, `keywords`, `text`, `short_text`, `video`, `hits`, `color`, `solution_id`, `locale`, `created_at`, `updated_at`) VALUES
(1, 'Websites', 'websites', NULL, NULL, NULL, '<p>Estabele&ccedil;a uma presen&ccedil;a online s&oacute;lida e profissional com um site institucional que reflete a ess&ecirc;ncia da sua marca. Nossos sites s&atilde;o desenvolvidos para comunicar sua miss&atilde;o, valores e servi&ccedil;os de forma clara e impactante.</p>', '<p>Seu neg&oacute;cio, nossa expertise: teste</p>\r\n<p><span style=\"color: rgb(222, 149, 40);\">Sites que impressionam!</span></p>', NULL, 0, NULL, 1, 'pt-BR', '2024-09-17 13:51:12', '2024-09-26 13:46:19'),
(2, 'Lojas Virtuais', 'lojas-virtuais', NULL, NULL, NULL, '<p>Crie um experi&ecirc;ncia de compra online que encanta seus clientes e maximiza suas vendas. Nossas lojas virtuais s&atilde;o projetadas para serem intuitivas, seguras e adaptadas &agrave;s suas necessidades especif&iacute;cias, garantindo uma jornada de compra flu&iacute;da e eficaz.</p>', '<p>Venda mais com uma <span style=\"color: rgb(255, 255, 255);\">loja virtual</span></p>\r\n<p><span style=\"color: rgb(255, 255, 255);\">projetada para o seu sucesso.</span></p>', NULL, 0, NULL, 2, 'pt-BR', '2024-09-17 16:53:14', '2024-09-17 16:53:14'),
(3, 'Sistemas Personalizados', 'sistemas-personalizados', NULL, NULL, NULL, '<p>Estabele&ccedil;a uma presen&ccedil;a online s&oacute;lida e profissional com um site institucional que reflete a ess&ecirc;ncia da sua marca. Nossos sites s&atilde;o desenvolvidos para comunicar sua miss&atilde;o, valores e servi&ccedil;os de forma clara e impactante.</p>', '<p>Transforme a efici&ecirc;ncia do seu neg&oacute;cio com <span style=\"color: rgb(222, 149, 40);\">sistemas sob medida e inovadores</span></p>', NULL, 0, NULL, 3, 'pt-BR', '2024-09-23 12:59:35', '2024-09-23 13:00:04'),
(4, 'Aplicativos', 'aplicativos', NULL, NULL, NULL, '<p>Leve sua ideia para o pr&oacute;ximo n&iacute;vel com aplicativos m&oacute;veis e web personalizados. Desenvolvemos solu&ccedil;&otilde;es que oferecem uma experi&ecirc;ncia de usu&aacute;rio excepcional e atendem &agrave;s suas necessidades espec&iacute;ficas, seja para iOS, Android ou plataformas web.</p>', '<p>Aplicativos que oferecem <span style=\"color: rgb(255, 255, 255);\">experi&ecirc;ncia &uacute;nica e funcionalidade sob medida</span></p>', NULL, 0, NULL, 4, 'pt-BR', '2024-09-23 13:02:05', '2024-09-23 13:02:05'),
(5, 'Landing Pages', 'landing-pages', NULL, NULL, NULL, '<p>Converta visitantes em clientes com landing pages projetadas para capturar leads e gerar resultados. Utilizamos estrat&eacute;gias comprovadas para criar p&aacute;ginas que atraem, engajam e convertem, ajudando voc&ecirc; a alcan&ccedil;ar seus objetivos de marketing.</p>', '<p>Impulsione seu marketing com landing pages que <span style=\"color: rgb(222, 149, 40);\">geram resultados reais</span></p>', NULL, 0, NULL, 5, 'pt-BR', '2024-09-23 13:02:53', '2024-09-23 13:02:53'),
(6, 'parallax', 'parallax', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 6, 'pt-BR', '2024-10-10 18:24:49', '2024-10-10 18:24:49');

-- --------------------------------------------------------

--
-- Estrutura da tabela `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '9999',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `note` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `testimonials`
--

INSERT INTO `testimonials` (`id`, `created_at`, `updated_at`, `name`, `order`, `active`, `featured`, `note`) VALUES
(1, '2024-09-17 20:07:41', '2024-09-23 11:59:07', 'Arthur Gonzalez', 9999, 1, 0, 0),
(5, '2024-10-21 19:55:52', '2024-10-21 19:55:52', 'Teste', 9999, 1, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `testimonials_translations`
--

CREATE TABLE `testimonials_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `testimony_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_1` text COLLATE utf8mb4_unicode_ci,
  `text_2` text COLLATE utf8mb4_unicode_ci,
  `text_3` text COLLATE utf8mb4_unicode_ci,
  `text_4` text COLLATE utf8mb4_unicode_ci,
  `link_1` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_2` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_3` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_4` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_link_1` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_link_2` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_link_3` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_link_4` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `testimonials_translations`
--

INSERT INTO `testimonials_translations` (`id`, `created_at`, `updated_at`, `testimony_id`, `locale`, `text_1`, `text_2`, `text_3`, `text_4`, `link_1`, `link_2`, `link_3`, `link_4`, `text_link_1`, `text_link_2`, `text_link_3`, `text_link_4`) VALUES
(1, '2024-09-17 20:07:41', '2024-09-23 13:07:25', 1, 'pt-BR', 'Arthur Gonzalez', 'Desenvolvedor', 'Ótimo time de desenvolvimento. Fui super bem atendido! 🤙', NULL, 'https://www.youtube.com/watch?v=5XXilhjI4FM', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '2024-10-21 19:55:52', '2024-10-21 19:55:52', 5, 'pt-BR', 'teste', 'teste', 'testestestestestesteste', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `permissions` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `active`, `visible`, `deleted_at`, `permissions`) VALUES
(1, 'Ellite Agência Digital', 'ellite1', 'dev2@ellitedigital.com.br', '2024-09-16 18:50:30', '$2y$10$3Xs9SamUVUsURkmyX2WQrugKW0VQurjFiDVH9QoJtdFyokhxjitfG', NULL, '2024-09-16 18:50:30', '2024-09-16 18:51:50', 1, 0, NULL, '{\"platform.index\": \"1\", \"platform.brands.edit\": \"1\", \"platform.brands.list\": \"1\", \"platform.banners.edit\": \"1\", \"platform.banners.list\": \"1\", \"platform.systems.logs\": \"1\", \"platform.brands.create\": \"1\", \"platform.brands.delete\": \"1\", \"platform.systems.roles\": \"1\", \"platform.systems.users\": \"1\", \"platform.banners.create\": \"1\", \"platform.banners.delete\": \"1\", \"platform.pageshome.edit\": \"1\", \"platform.solutions.edit\": \"1\", \"platform.solutions.list\": \"1\", \"platform.siteemails.list\": \"1\", \"platform.siteemails.view\": \"1\", \"platform.solutions.create\": \"1\", \"platform.solutions.delete\": \"1\", \"platform.pagescontact.edit\": \"1\", \"platform.pagesprivacy.edit\": \"1\", \"platform.siteemails.delete\": \"1\", \"platform.testimonials.edit\": \"1\", \"platform.testimonials.list\": \"1\", \"platform.differentials.edit\": \"1\", \"platform.differentials.list\": \"1\", \"platform.systems.attachment\": \"1\", \"platform.configurations.edit\": \"1\", \"platform.pagessolutions.edit\": \"1\", \"platform.testimonials.create\": \"1\", \"platform.testimonials.delete\": \"1\", \"platform.differentials.create\": \"1\", \"platform.differentials.delete\": \"1\", \"platform.solutionscategories.edit\": \"1\", \"platform.solutionscategories.list\": \"1\", \"platform.solutionscategories.create\": \"1\", \"platform.solutionscategories.delete\": \"1\"}'),
(2, 'Redação Ellite', 'redacao', 'redacao@ellitedigital.com.br', NULL, '$2y$10$oByx.r/g0.gyzbQm6qdjUuqg5hTUydHKZxqtSITcysq1BzN6RH/jC', NULL, '2024-09-23 16:17:56', '2024-09-23 16:17:56', 1, 1, NULL, '[]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attachmentable`
--
ALTER TABLE `attachmentable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attachmentable_attachmentable_type_attachmentable_id_index` (`attachmentable_type`,`attachmentable_id`),
  ADD KEY `attachmentable_attachment_id_foreign` (`attachment_id`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners_translations`
--
ALTER TABLE `banners_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rel_banners_languages` (`banner_id`,`locale`),
  ADD KEY `banners_translations_banner_id_index` (`banner_id`),
  ADD KEY `banners_translations_locale_index` (`locale`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands_translations`
--
ALTER TABLE `brands_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rel_brands_languages` (`brand_id`,`locale`),
  ADD KEY `brands_translations_brand_id_index` (`brand_id`),
  ADD KEY `brands_translations_locale_index` (`locale`);

--
-- Indexes for table `configurations`
--
ALTER TABLE `configurations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `configurations_translations`
--
ALTER TABLE `configurations_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rel_configurations_languages` (`configuration_id`,`locale`),
  ADD KEY `configurations_translations_configuration_id_index` (`configuration_id`),
  ADD KEY `configurations_translations_locale_index` (`locale`);

--
-- Indexes for table `differentials`
--
ALTER TABLE `differentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `differentials_translations`
--
ALTER TABLE `differentials_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rel_differentials_languages` (`differential_id`,`locale`),
  ADD KEY `differentials_translations_differential_id_index` (`differential_id`),
  ADD KEY `differentials_translations_locale_index` (`locale`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_locale_unique` (`locale`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
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
-- Indexes for table `pages_contact`
--
ALTER TABLE `pages_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages_contact_translations`
--
ALTER TABLE `pages_contact_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rel_pages_contact_languages` (`page_contact_id`,`locale`),
  ADD KEY `pages_contact_translations_page_contact_id_index` (`page_contact_id`),
  ADD KEY `pages_contact_translations_locale_index` (`locale`);

--
-- Indexes for table `pages_home`
--
ALTER TABLE `pages_home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages_home_translations`
--
ALTER TABLE `pages_home_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rel_pages_home_languages` (`page_home_id`,`locale`),
  ADD KEY `pages_home_translations_page_home_id_index` (`page_home_id`),
  ADD KEY `pages_home_translations_locale_index` (`locale`);

--
-- Indexes for table `pages_privacies`
--
ALTER TABLE `pages_privacies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages_privacies_translations`
--
ALTER TABLE `pages_privacies_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rel_pages_privacies_languages` (`page_privacy_id`,`locale`),
  ADD KEY `pages_privacies_translations_page_privacy_id_index` (`page_privacy_id`),
  ADD KEY `pages_privacies_translations_locale_index` (`locale`);

--
-- Indexes for table `pages_solutions`
--
ALTER TABLE `pages_solutions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages_solutions_translations`
--
ALTER TABLE `pages_solutions_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rel_pages_solutions_languages` (`page_solution_id`,`locale`),
  ADD KEY `pages_solutions_translations_page_solution_id_index` (`page_solution_id`),
  ADD KEY `pages_solutions_translations_locale_index` (`locale`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `person_types`
--
ALTER TABLE `person_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `person_types_code_unique` (`code`);

--
-- Indexes for table `rel_solutions_categories`
--
ALTER TABLE `rel_solutions_categories`
  ADD PRIMARY KEY (`solution_category_id`,`solution_id`),
  ADD KEY `rel_solutions_categories_solution_category_id_index` (`solution_category_id`),
  ADD KEY `rel_solutions_categories_solution_id_index` (`solution_id`);

--
-- Indexes for table `rel_solutions_differentials`
--
ALTER TABLE `rel_solutions_differentials`
  ADD PRIMARY KEY (`differential_id`,`solution_id`),
  ADD KEY `rel_solutions_differentials_differential_id_index` (`differential_id`),
  ADD KEY `rel_solutions_differentials_solution_id_index` (`solution_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_users_role_id_foreign` (`role_id`);

--
-- Indexes for table `site_emails`
--
ALTER TABLE `site_emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `site_emails_form_name_index` (`form_name`),
  ADD KEY `site_emails_form_slug_index` (`form_slug`),
  ADD KEY `site_emails_entity_name_index` (`entity_name`),
  ADD KEY `site_emails_entity_id_index` (`entity_id`);

--
-- Indexes for table `solutions`
--
ALTER TABLE `solutions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `solutions_categories`
--
ALTER TABLE `solutions_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `solutions_categories_translations`
--
ALTER TABLE `solutions_categories_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rel_solutions_categories_languages` (`solution_category_id`,`locale`),
  ADD KEY `solutions_categories_translations_solution_category_id_index` (`solution_category_id`),
  ADD KEY `solutions_categories_translations_locale_index` (`locale`);

--
-- Indexes for table `solutions_translations`
--
ALTER TABLE `solutions_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rel_solutions_languages` (`solution_id`,`locale`),
  ADD KEY `solutions_translations_solution_id_index` (`solution_id`),
  ADD KEY `solutions_translations_locale_index` (`locale`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials_translations`
--
ALTER TABLE `testimonials_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rel_testimonials_languages` (`testimony_id`,`locale`),
  ADD KEY `testimonials_translations_testimony_id_index` (`testimony_id`),
  ADD KEY `testimonials_translations_locale_index` (`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attachmentable`
--
ALTER TABLE `attachmentable`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `banners_translations`
--
ALTER TABLE `banners_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `brands_translations`
--
ALTER TABLE `brands_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `configurations`
--
ALTER TABLE `configurations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `configurations_translations`
--
ALTER TABLE `configurations_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `differentials`
--
ALTER TABLE `differentials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `differentials_translations`
--
ALTER TABLE `differentials_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `pages_contact`
--
ALTER TABLE `pages_contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages_contact_translations`
--
ALTER TABLE `pages_contact_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages_home`
--
ALTER TABLE `pages_home`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages_home_translations`
--
ALTER TABLE `pages_home_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages_privacies`
--
ALTER TABLE `pages_privacies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages_privacies_translations`
--
ALTER TABLE `pages_privacies_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pages_solutions`
--
ALTER TABLE `pages_solutions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages_solutions_translations`
--
ALTER TABLE `pages_solutions_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `person_types`
--
ALTER TABLE `person_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_emails`
--
ALTER TABLE `site_emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `solutions`
--
ALTER TABLE `solutions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `solutions_categories`
--
ALTER TABLE `solutions_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `solutions_categories_translations`
--
ALTER TABLE `solutions_categories_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `solutions_translations`
--
ALTER TABLE `solutions_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `testimonials_translations`
--
ALTER TABLE `testimonials_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `attachmentable`
--
ALTER TABLE `attachmentable`
  ADD CONSTRAINT `attachmentable_attachment_id_foreign` FOREIGN KEY (`attachment_id`) REFERENCES `attachments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `banners_translations`
--
ALTER TABLE `banners_translations`
  ADD CONSTRAINT `rel_banners_lang_id` FOREIGN KEY (`banner_id`) REFERENCES `banners` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rel_banners_lang_locale` FOREIGN KEY (`locale`) REFERENCES `languages` (`locale`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `brands_translations`
--
ALTER TABLE `brands_translations`
  ADD CONSTRAINT `rel_brands_lang_id` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rel_brands_lang_locale` FOREIGN KEY (`locale`) REFERENCES `languages` (`locale`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `configurations_translations`
--
ALTER TABLE `configurations_translations`
  ADD CONSTRAINT `rel_configurations_lang_id` FOREIGN KEY (`configuration_id`) REFERENCES `configurations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rel_configurations_lang_locale` FOREIGN KEY (`locale`) REFERENCES `languages` (`locale`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `differentials_translations`
--
ALTER TABLE `differentials_translations`
  ADD CONSTRAINT `rel_differentials_lang_id` FOREIGN KEY (`differential_id`) REFERENCES `differentials` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rel_differentials_lang_locale` FOREIGN KEY (`locale`) REFERENCES `languages` (`locale`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `pages_contact_translations`
--
ALTER TABLE `pages_contact_translations`
  ADD CONSTRAINT `rel_pages_contact_lang_id` FOREIGN KEY (`page_contact_id`) REFERENCES `pages_contact` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rel_pages_contact_lang_locale` FOREIGN KEY (`locale`) REFERENCES `languages` (`locale`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `pages_home_translations`
--
ALTER TABLE `pages_home_translations`
  ADD CONSTRAINT `rel_pages_home_lang_id` FOREIGN KEY (`page_home_id`) REFERENCES `pages_home` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rel_pages_home_lang_locale` FOREIGN KEY (`locale`) REFERENCES `languages` (`locale`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `pages_privacies_translations`
--
ALTER TABLE `pages_privacies_translations`
  ADD CONSTRAINT `rel_pages_privacies_lang_id` FOREIGN KEY (`page_privacy_id`) REFERENCES `pages_privacies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rel_pages_privacies_lang_locale` FOREIGN KEY (`locale`) REFERENCES `languages` (`locale`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `pages_solutions_translations`
--
ALTER TABLE `pages_solutions_translations`
  ADD CONSTRAINT `rel_pages_solutions_lang_id` FOREIGN KEY (`page_solution_id`) REFERENCES `pages_solutions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rel_pages_solutions_lang_locale` FOREIGN KEY (`locale`) REFERENCES `languages` (`locale`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `rel_solutions_categories`
--
ALTER TABLE `rel_solutions_categories`
  ADD CONSTRAINT `rel_solutions_categories_solution_category_id_foreign` FOREIGN KEY (`solution_category_id`) REFERENCES `solutions_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rel_solutions_categories_solution_id_foreign` FOREIGN KEY (`solution_id`) REFERENCES `solutions` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `rel_solutions_differentials`
--
ALTER TABLE `rel_solutions_differentials`
  ADD CONSTRAINT `rel_solutions_differentials_differential_id_foreign` FOREIGN KEY (`differential_id`) REFERENCES `differentials` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rel_solutions_differentials_solution_id_foreign` FOREIGN KEY (`solution_id`) REFERENCES `solutions` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `role_users`
--
ALTER TABLE `role_users`
  ADD CONSTRAINT `role_users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `solutions_categories_translations`
--
ALTER TABLE `solutions_categories_translations`
  ADD CONSTRAINT `rel_solutions_categories_lang_id` FOREIGN KEY (`solution_category_id`) REFERENCES `solutions_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rel_solutions_categories_lang_locale` FOREIGN KEY (`locale`) REFERENCES `languages` (`locale`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `solutions_translations`
--
ALTER TABLE `solutions_translations`
  ADD CONSTRAINT `rel_solutions_lang_id` FOREIGN KEY (`solution_id`) REFERENCES `solutions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rel_solutions_lang_locale` FOREIGN KEY (`locale`) REFERENCES `languages` (`locale`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `testimonials_translations`
--
ALTER TABLE `testimonials_translations`
  ADD CONSTRAINT `rel_testimonials_lang_id` FOREIGN KEY (`testimony_id`) REFERENCES `testimonials` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rel_testimonials_lang_locale` FOREIGN KEY (`locale`) REFERENCES `languages` (`locale`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
