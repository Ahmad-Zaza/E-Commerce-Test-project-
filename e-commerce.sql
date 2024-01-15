-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 15 يناير 2024 الساعة 22:18
-- إصدار الخادم: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-commerce`
--

-- --------------------------------------------------------

--
-- بنية الجدول `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'et sed', 'et-sed', '2021-08-11 21:01:28', '2021-08-11 21:01:28'),
(2, 'autem doloremque', 'autem-doloremque', '2021-08-11 21:01:28', '2021-08-11 21:01:28'),
(3, 'qui quam', 'qui-quam', '2021-08-11 21:01:28', '2021-08-11 21:01:28'),
(4, 'quia facere', 'quia-facere', '2021-08-11 21:01:28', '2021-08-11 21:01:28'),
(5, 'illo facere', 'illo-facere', '2021-08-11 21:01:28', '2021-08-11 21:01:28'),
(6, 'dolor omnis', 'dolor-omnis', '2021-08-11 21:01:28', '2021-08-11 21:01:28');

-- --------------------------------------------------------

--
-- بنية الجدول `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(12, '2019_08_19_000000_create_failed_jobs_table', 1),
(13, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(14, '2021_08_09_231416_create_sessions_table', 1),
(15, '2021_08_11_231300_create_categories_table', 1),
(16, '2021_08_11_231312_create_products_table', 1);

-- --------------------------------------------------------

--
-- بنية الجدول `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'ab distinctio ducimus omnis', 'ab-distinctio-ducimus-omnis', 'Nesciunt velit ad numquam. Accusantium reprehenderit qui est ut. Qui officia adipisci ex voluptas id repudiandae eum. Quis rerum ut quibusdam laudantium.', 'Blanditiis dolor aut itaque adipisci aut. Harum iste harum ut vel. Non porro officiis ad quia. Voluptatem cum qui esse. Rem accusantium quidem facilis. Dicta quas pariatur omnis tempore in eum nihil. Reiciendis deleniti dolor est quod. Temporibus temporibus natus voluptate non officiis. Sed molestias ipsa saepe cumque aut velit. Qui sit rerum similique et.', '205.00', NULL, 'DIGT292', 'instock', 0, 415, 'digital_22.jpg', NULL, 1, '2021-08-11 21:01:28', '2021-08-11 21:01:28'),
(2, 'non quidem ut at', 'non-quidem-ut-at', 'Consectetur optio quaerat fugit non. Est aut provident quis voluptatum sed fuga voluptatum. Et rem asperiores vitae sit voluptatibus eum. Nam earum pariatur dolor in officia eaque in animi.', 'Sapiente voluptatum dolores expedita officiis aut rerum at. Et repellendus doloribus quam et et. Vitae explicabo impedit dolor sapiente cum. Architecto sunt et quod dicta est. Veniam architecto voluptatem nemo similique consectetur eligendi. Rerum earum dolor sapiente quia. Qui veritatis autem unde quaerat tempore.', '389.00', NULL, 'DIGT383', 'instock', 0, 420, 'digital_18.jpg', NULL, 1, '2021-08-11 21:01:28', '2021-08-11 21:01:28'),
(3, 'et eos rem dolorem', 'et-eos-rem-dolorem', 'Corrupti alias sed explicabo omnis sequi inventore. Aut totam rerum ipsam perspiciatis dolores facere. Nobis non laborum autem. Vero corrupti nemo fugiat voluptatem.', 'Repellat quis voluptatibus minima ipsum quia omnis eaque. Harum quam sit beatae. Et voluptatum et sunt unde qui illo. Aliquam ipsa fugiat eveniet sit voluptatem ut rerum. Harum alias qui voluptatem dolorem. Aut quis quia sunt et cumque rem ex repellendus. Soluta ab quas qui voluptates iusto. Perferendis aut autem porro.', '243.00', NULL, 'DIGT189', 'instock', 0, 314, 'digital_11.jpg', NULL, 1, '2021-08-11 21:01:28', '2021-08-11 21:01:28'),
(4, 'magnam sed omnis voluptatem', 'magnam-sed-omnis-voluptatem', 'Quis provident tenetur qui non omnis accusamus. Voluptatem perferendis ex quia dolores et inventore est et. Sit debitis voluptatem ea sunt ut pariatur voluptatibus.', 'Rem facilis reiciendis id consequatur quia ipsum occaecati. Odio beatae non a ad odio qui facere. Eum ut nesciunt sed et. Voluptas possimus alias aspernatur et non porro vel. Voluptatem voluptatem voluptatem quia vel. Ab maiores ut numquam rerum dolore. Corporis est et soluta nisi dolorem. Quasi molestiae quaerat placeat nostrum eligendi omnis est. Rerum fuga vel delectus maxime aut mollitia commodi architecto.', '319.00', NULL, 'DIGT161', 'instock', 0, 261, 'digital_5.jpg', NULL, 3, '2021-08-11 21:01:28', '2021-08-11 21:01:28'),
(5, 'aperiam dolorum sit et', 'aperiam-dolorum-sit-et', 'Cum itaque id culpa. Ut est eum rem sed quo aut. Excepturi quasi aliquid voluptatem quia. Cupiditate laborum rerum unde maiores ullam aperiam sequi. Fugit asperiores reiciendis eveniet libero.', 'Et atque accusamus maiores rerum sit vel voluptatem nihil. Qui eveniet excepturi ipsa neque architecto. Eius explicabo nisi harum voluptatem. Nemo corrupti culpa praesentium itaque. Cum vero quas magni quisquam doloremque nostrum sunt quam. Incidunt in corporis voluptate exercitationem sit expedita. Aspernatur harum voluptas similique explicabo maxime.', '102.00', NULL, 'DIGT365', 'instock', 0, 242, 'digital_20.jpg', NULL, 2, '2021-08-11 21:01:28', '2021-08-11 21:01:28'),
(6, 'beatae iusto eligendi quaerat', 'beatae-iusto-eligendi-quaerat', 'Error occaecati veniam maxime possimus qui sequi odit. Cupiditate rerum voluptate numquam et. Quia eos ut eum iure ea rerum.', 'Voluptatem distinctio dolorem velit sit repudiandae dolorum excepturi. Qui incidunt est praesentium. Officiis et maxime est et enim id. Eum aut quo sunt debitis perferendis cum reprehenderit. Omnis id nisi possimus ex odit. Excepturi tempore reiciendis voluptas et vel harum. Et eaque placeat dolores magni. Consequuntur nulla et beatae ut.', '400.00', NULL, 'DIGT291', 'instock', 0, 278, 'digital_14.jpg', NULL, 5, '2021-08-11 21:01:28', '2021-08-11 21:01:28'),
(7, 'enim nemo quis cupiditate', 'enim-nemo-quis-cupiditate', 'Placeat dolorem harum non modi. Sunt nam dolor distinctio sit quos sed. Maiores et ut commodi fugit magnam vitae. Et nam ea sunt veritatis.', 'Sit quasi fugit unde qui. Rerum et illum ipsam amet consequuntur. Quasi cumque fugiat officia illo incidunt et itaque. A eaque voluptates sed iusto alias veritatis totam. Voluptas est quod qui et quia vero. Sit autem minus in. Voluptatem numquam atque dolor dignissimos corrupti qui. Fuga aut aut sit.', '282.00', NULL, 'DIGT247', 'instock', 0, 324, 'digital_13.jpg', NULL, 2, '2021-08-11 21:01:28', '2021-08-11 21:01:28'),
(8, 'ipsa et quos iure', 'ipsa-et-quos-iure', 'Libero dicta tenetur repellendus dolorum vero voluptatum possimus. Possimus exercitationem est nisi tempore voluptates officia. Consequatur dolore placeat ut reiciendis. Eum quaerat sunt ipsam eos.', 'Possimus architecto qui qui. Rerum sint perferendis sint perferendis. Et quae ex rerum quia. Non vel accusantium fugit sed accusantium. Et deleniti tempore odio esse et iste. Perspiciatis aliquid voluptas corporis eos illum repellendus sunt. Possimus nobis sit eaque eum minus eum praesentium. Magni excepturi id quibusdam odit autem quis et. Explicabo delectus minima libero dolorem sequi tempore est. Deleniti nihil et necessitatibus voluptatem.', '167.00', NULL, 'DIGT172', 'instock', 0, 262, 'digital_8.jpg', NULL, 2, '2021-08-11 21:01:28', '2021-08-11 21:01:28'),
(9, 'quod ratione iusto vel', 'quod-ratione-iusto-vel', 'Autem possimus unde illo beatae. Aliquam occaecati quae sit alias. Repudiandae odit aut voluptates sint. Aut iure eum in autem veritatis ad.', 'Ipsum occaecati similique suscipit et distinctio est. Expedita reiciendis quo velit dolor voluptate modi. Est ut aut in alias totam. Rerum accusantium mollitia laudantium reprehenderit odio. Beatae hic dolorem rem velit inventore provident mollitia aut. Et dignissimos culpa aliquam quia laborum. Quisquam culpa est ut reprehenderit dicta laboriosam.', '211.00', NULL, 'DIGT492', 'instock', 0, 361, 'digital_10.jpg', NULL, 1, '2021-08-11 21:01:28', '2021-08-11 21:01:28'),
(10, 'veritatis temporibus vitae sunt', 'veritatis-temporibus-vitae-sunt', 'Tenetur maxime voluptatem et quam ipsa dolore modi ut. Ut qui tempore sint. Officia voluptas illum ut assumenda numquam. Facilis voluptatem et dolorem ratione id et veniam.', 'Itaque velit qui et quo voluptatibus enim. Asperiores vitae odio itaque quia quis. Et praesentium consequatur eum nisi aut. Dicta ut incidunt voluptatem unde blanditiis. Blanditiis aperiam deleniti repellat velit. Aut maiores at voluptatem suscipit quidem dolorum distinctio.', '400.00', NULL, 'DIGT222', 'instock', 0, 232, 'digital_12.jpg', NULL, 2, '2021-08-11 21:01:28', '2021-08-11 21:01:28'),
(11, 'vel eum natus qui', 'vel-eum-natus-qui', 'Tempora adipisci saepe officiis itaque dolore aut. Nulla tempora est optio porro et aliquam. Provident dolores consequatur voluptate. Eum facilis dignissimos eaque consectetur quisquam nulla.', 'Odit aut rerum mollitia ab tenetur. Atque optio id amet nihil vitae. Ipsam debitis eaque iusto et. Voluptate id nesciunt vel nesciunt. Enim facilis nulla velit possimus voluptatem. Et quia tenetur ut odio non iusto aut. Numquam aut officiis et fugit expedita fugit. Sequi et iure sit laudantium omnis. Totam perspiciatis sed quis commodi. Corporis nostrum ipsum doloribus. Ut optio facere ut impedit minus.', '440.00', NULL, 'DIGT349', 'instock', 0, 400, 'digital_21.jpg', NULL, 2, '2021-08-11 21:01:28', '2021-08-11 21:01:28'),
(12, 'libero velit omnis aliquam', 'libero-velit-omnis-aliquam', 'Assumenda quia nobis laboriosam voluptatem sint eum. Dolores ut hic laudantium voluptas. Non sint est ex et consequatur ullam.', 'Voluptatum aut itaque est dolores. Tempore pariatur est et nihil ipsa. Commodi est ut dolores velit modi quis. Et facilis aut totam dolorum debitis qui maxime. Laboriosam saepe aut veniam accusantium. Nesciunt eaque ipsa illo sint et. Aut totam quis tempore aut. Sed debitis quo et id similique.', '436.00', NULL, 'DIGT274', 'instock', 0, 424, 'digital_17.jpg', NULL, 2, '2021-08-11 21:01:28', '2021-08-11 21:01:28'),
(13, 'distinctio voluptas nesciunt et', 'distinctio-voluptas-nesciunt-et', 'Eos maxime illum praesentium qui harum sint. Voluptatum dolorum aspernatur voluptas odit ut. Sunt quae ut et et ut ad non. Molestiae et at aspernatur adipisci.', 'Minima est quos sit et. Ratione ex itaque cum commodi dolorum ut numquam. Dolore voluptas sed tempora quae facere voluptatem. Reiciendis optio placeat odio omnis quia beatae quia. Aut quos alias omnis totam a et dolorem. Ad quis deleniti saepe laudantium voluptates laborum esse. Et explicabo quis dolorum. Quia impedit culpa itaque laborum ut impedit. Perspiciatis ipsum quia dignissimos. Excepturi suscipit delectus vitae quod a saepe explicabo. Quisquam officiis qui qui autem.', '146.00', NULL, 'DIGT314', 'instock', 0, 470, 'digital_9.jpg', NULL, 1, '2021-08-11 21:01:28', '2021-08-11 21:01:28'),
(14, 'dolores voluptatem impedit ullam', 'dolores-voluptatem-impedit-ullam', 'Et sed ducimus quas ipsa ipsum est porro. Nihil aut placeat et cumque sint dolorem iusto. Perferendis quod impedit alias non nostrum maiores.', 'Culpa quis corporis nisi repellat inventore aut nulla. Magni qui delectus quas eaque minus incidunt. Quo totam enim et praesentium sint cum eos. Sed aut et non veniam minus vitae. Quo porro nam neque id delectus. Et dolores eos et qui. Sint doloremque quia officiis in impedit sint. Reprehenderit culpa consectetur ut quidem.', '191.00', NULL, 'DIGT356', 'instock', 0, 404, 'digital_4.jpg', NULL, 1, '2021-08-11 21:01:28', '2021-08-11 21:01:28'),
(15, 'omnis et repellat a', 'omnis-et-repellat-a', 'Eveniet et voluptatem consequatur numquam. At quibusdam officiis odit. Eum quasi alias voluptatibus ea quis dolore iste. Officia nulla aliquid ipsam sequi eum tempore quo.', 'Explicabo hic molestiae corrupti amet ipsam expedita corporis. Nemo et alias hic aliquam et. Impedit ad inventore accusantium odit nobis vero illum. Non occaecati quam dolorem. Sed dicta ipsa ducimus ad. Repudiandae atque dolor cum ut nulla. Pariatur quos est ea quibusdam et asperiores. Et magni modi consequatur et optio rerum sunt. Aut animi voluptate accusamus cupiditate voluptatem et nesciunt. Vel qui voluptatem velit fuga. Sunt unde aut vero a nihil facilis rem quo.', '332.00', NULL, 'DIGT244', 'instock', 0, 417, 'digital_2.jpg', NULL, 1, '2021-08-11 21:01:28', '2021-08-11 21:01:28'),
(16, 'est magnam facilis earum', 'est-magnam-facilis-earum', 'Porro nostrum totam omnis dolor quisquam culpa ipsa. Molestias sed quaerat laboriosam dolores. Velit iste et dolores eligendi.', 'Sit sed sunt et exercitationem. Delectus delectus voluptas reiciendis qui vitae deserunt ut. Maiores praesentium officiis amet quos. Nisi dolor dolores odit nihil. Aperiam quo mollitia totam natus maiores aut impedit odit. Beatae voluptatem ut qui eius doloribus unde. Ea quia consequatur repellat nam rerum dolor autem. Molestias qui qui eum veritatis possimus.', '492.00', NULL, 'DIGT221', 'instock', 0, 224, 'digital_15.jpg', NULL, 3, '2021-08-11 21:01:28', '2021-08-11 21:01:28'),
(17, 'qui debitis numquam recusandae', 'qui-debitis-numquam-recusandae', 'Necessitatibus sit nam quam. Molestias inventore vel eaque placeat voluptates animi eos. Et temporibus officia ut et molestiae eos. Possimus aut nostrum quia et laborum.', 'Sapiente voluptas et dolores quia eaque. Laboriosam aliquid non consectetur id laboriosam labore. Dolor aliquid a dolorum aut officiis at. Fugiat dolorem optio sed asperiores placeat tenetur illum. Sed suscipit ut non explicabo. Ipsum veniam iste quo aut. Ad iure natus sit blanditiis. Ipsa ab iusto qui vitae. Dolorem voluptatum et maxime iste mollitia necessitatibus nulla.', '415.00', NULL, 'DIGT272', 'instock', 0, 472, 'digital_1.jpg', NULL, 1, '2021-08-11 21:01:28', '2021-08-11 21:01:28'),
(18, 'quia et harum quod', 'quia-et-harum-quod', 'Quis aut aut reiciendis maiores iusto ipsum. Facere est molestiae earum esse sequi. Commodi perferendis quisquam id animi tempora ipsum.', 'Ut voluptatem doloremque dolor aut beatae. Aut expedita minus praesentium possimus. Id quaerat laudantium exercitationem placeat dolor autem. Nihil ratione optio facere dignissimos. Impedit quisquam quasi nesciunt et animi necessitatibus molestiae. Qui assumenda labore at corporis saepe. Quia possimus eaque repellat in. Et veniam non consequuntur ducimus. Amet nemo deleniti saepe nesciunt. Et minus consequuntur ut alias nihil deleniti.', '281.00', NULL, 'DIGT281', 'instock', 0, 413, 'digital_19.jpg', NULL, 2, '2021-08-11 21:01:28', '2021-08-11 21:01:28'),
(19, 'doloremque perspiciatis impedit consequatur', 'doloremque-perspiciatis-impedit-consequatur', 'Harum quis minus molestias quaerat quisquam. Sed animi blanditiis id.', 'Cupiditate iste consequatur architecto voluptas. A recusandae repellendus dolorum deleniti fugiat. Rerum quia adipisci ipsa aliquam ab alias. Officiis ut ut sed nisi. Amet fuga adipisci molestiae qui cupiditate. Earum nesciunt temporibus voluptates et veritatis. Consequuntur neque excepturi tempora placeat eum. Officiis ratione qui dolorem praesentium suscipit. Perspiciatis ut sunt et alias excepturi non explicabo ut. Ut repellat unde tenetur.', '152.00', NULL, 'DIGT196', 'instock', 0, 218, 'digital_7.jpg', NULL, 1, '2021-08-11 21:01:28', '2021-08-11 21:01:28'),
(20, 'non aliquid repellat omnis', 'non-aliquid-repellat-omnis', 'Accusantium beatae quas quas et qui quae suscipit. Dolore rerum officia eum asperiores. Iste totam veniam porro qui porro pariatur blanditiis labore. Eius magnam beatae harum illo nesciunt aut.', 'Quia praesentium quibusdam optio eligendi in. Modi exercitationem eos ut reiciendis explicabo. Est aliquam possimus quasi quis ad quia. Consequatur consequatur non voluptatem ut ducimus incidunt. Consequuntur quia voluptates enim quae accusamus. Consequatur tempora et ipsa itaque ut quisquam. Facilis id cumque illum eligendi quia omnis. Dolores voluptatibus sed ducimus autem.', '474.00', NULL, 'DIGT472', 'instock', 0, 282, 'digital_3.jpg', NULL, 4, '2021-08-11 21:01:28', '2021-08-11 21:01:28'),
(21, 'quia sit adipisci autem', 'quia-sit-adipisci-autem', 'Culpa voluptas quia officiis. Pariatur officia id perferendis in ut non adipisci. Et qui temporibus consequatur consequuntur. Mollitia aspernatur ut est sequi.', 'A corporis natus necessitatibus aut minus. Unde ipsa voluptates et eum. Vitae laboriosam facilis impedit quo blanditiis non. Accusantium sed expedita qui voluptatem consectetur eius. Aliquid voluptatem rem suscipit quia quae non minus. Ut reiciendis alias qui magnam fugiat. Sed quo commodi natus ratione ipsam hic dolores quis. Odit illum aspernatur unde consequuntur labore laboriosam.', '316.00', NULL, 'DIGT298', 'instock', 0, 457, 'digital_6.jpg', NULL, 4, '2021-08-11 21:01:28', '2021-08-11 21:01:28'),
(22, 'eaque voluptas exercitationem quia', 'eaque-voluptas-exercitationem-quia', 'Sint excepturi dicta inventore. Et accusantium consectetur earum consequatur sed enim natus. Nostrum unde est voluptatum voluptatem dolorum debitis eveniet error.', 'Illum cupiditate voluptas nisi sapiente. Ipsam ex doloribus voluptate dicta rem. Est voluptatem nihil illum ab iusto suscipit. Omnis rerum consequatur exercitationem minima delectus est. Voluptatem facilis id ut quia quos deserunt. Et quae dolorum fugit deleniti. Consectetur amet nihil enim dolor quis atque. Sint enim doloribus ad.', '233.00', NULL, 'DIGT433', 'instock', 0, 324, 'digital_16.jpg', NULL, 4, '2021-08-11 21:01:28', '2021-08-11 21:01:28');

-- --------------------------------------------------------

--
-- بنية الجدول `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0A4JPMiIo0gMliIcJViI2ynfXmkjKGnAtMGM9Vw9', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiczZPWThIQXB4S0d3NGhuTFhuR25LMWFqdjFpTnJVMnVhTTlJZ0lMNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9zaG9wIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo0OiJjYXJ0IjthOjE6e3M6NzoiZGVmYXVsdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjE6e3M6ODoiACoAaXRlbXMiO2E6MTp7czozMjoiYTc3NWJhYzljZmY3ZGVjMmI5ODRlMDIzYjk1MjA2YWEiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjo5OntzOjU6InJvd0lkIjtzOjMyOiJhNzc1YmFjOWNmZjdkZWMyYjk4NGUwMjNiOTUyMDZhYSI7czoyOiJpZCI7czoxOiIzIjtzOjM6InF0eSI7aToxO3M6NDoibmFtZSI7czoxODoiZXQgZW9zIHJlbSBkb2xvcmVtIjtzOjU6InByaWNlIjtkOjI0MztzOjc6Im9wdGlvbnMiO086Mzk6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtT3B0aW9ucyI6MTp7czo4OiIAKgBpdGVtcyI7YTowOnt9fXM6NDk6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBhc3NvY2lhdGVkTW9kZWwiO3M6MTg6IkFwcFxNb2RlbHNcUHJvZHVjdCI7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAHRheFJhdGUiO2k6MjE7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGlzU2F2ZWQiO2I6MDt9fX19fQ==', 1628994480),
('F6BTcfo6czN24clT0DS5vWNneUFNet4mFBiwifoL', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZzdOWmh4aHJJVlF3cnc3aWVZUE9wMjNFVmJHaEtqekE2OGhpTkJRYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXJ0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo0OiJjYXJ0IjthOjE6e3M6NzoiZGVmYXVsdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjE6e3M6ODoiACoAaXRlbXMiO2E6Mzp7czozMjoiMzcwZDA4NTg1MzYwZjVjNTY4YjE4ZDFmMmU0Y2ExZGYiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjo5OntzOjU6InJvd0lkIjtzOjMyOiIzNzBkMDg1ODUzNjBmNWM1NjhiMThkMWYyZTRjYTFkZiI7czoyOiJpZCI7czoxOiIyIjtzOjM6InF0eSI7aToyO3M6NDoibmFtZSI7czoxNjoibm9uIHF1aWRlbSB1dCBhdCI7czo1OiJwcmljZSI7ZDozODk7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjE6e3M6ODoiACoAaXRlbXMiO2E6MDp7fX1zOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtzOjE4OiJBcHBcTW9kZWxzXFByb2R1Y3QiO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQB0YXhSYXRlIjtpOjIxO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBpc1NhdmVkIjtiOjA7fXM6MzI6ImE3NzViYWM5Y2ZmN2RlYzJiOTg0ZTAyM2I5NTIwNmFhIjtPOjMyOiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbSI6OTp7czo1OiJyb3dJZCI7czozMjoiYTc3NWJhYzljZmY3ZGVjMmI5ODRlMDIzYjk1MjA2YWEiO3M6MjoiaWQiO3M6MToiMyI7czozOiJxdHkiO2k6MjtzOjQ6Im5hbWUiO3M6MTg6ImV0IGVvcyByZW0gZG9sb3JlbSI7czo1OiJwcmljZSI7ZDoyNDM7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjE6e3M6ODoiACoAaXRlbXMiO2E6MDp7fX1zOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtzOjE4OiJBcHBcTW9kZWxzXFByb2R1Y3QiO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQB0YXhSYXRlIjtpOjIxO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBpc1NhdmVkIjtiOjA7fXM6MzI6IjAyN2M5MTM0MWZkNWNmNGQyNTc5YjQ5YzRiNmE5MGRhIjtPOjMyOiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbSI6OTp7czo1OiJyb3dJZCI7czozMjoiMDI3YzkxMzQxZmQ1Y2Y0ZDI1NzliNDljNGI2YTkwZGEiO3M6MjoiaWQiO3M6MToiMSI7czozOiJxdHkiO2k6MjtzOjQ6Im5hbWUiO3M6Mjc6ImFiIGRpc3RpbmN0aW8gZHVjaW11cyBvbW5pcyI7czo1OiJwcmljZSI7ZDoyMDU7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjE6e3M6ODoiACoAaXRlbXMiO2E6MDp7fX1zOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtzOjE4OiJBcHBcTW9kZWxzXFByb2R1Y3QiO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQB0YXhSYXRlIjtpOjIxO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBpc1NhdmVkIjtiOjA7fX19fX0=', 1705351910),
('IGPUyd1Ma2exAnrvAs0za8wYV1hT2m1z6D7RBOYR', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRFg2QU95R1E3QnkwQjVUeXpIcllCbnV6RUdlSVlvNTl3Q2tQV1N6WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9jYXJ0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo0OiJjYXJ0IjthOjE6e3M6NzoiZGVmYXVsdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjE6e3M6ODoiACoAaXRlbXMiO2E6Mzp7czozMjoiYTc3NWJhYzljZmY3ZGVjMmI5ODRlMDIzYjk1MjA2YWEiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjo5OntzOjU6InJvd0lkIjtzOjMyOiJhNzc1YmFjOWNmZjdkZWMyYjk4NGUwMjNiOTUyMDZhYSI7czoyOiJpZCI7czoxOiIzIjtzOjM6InF0eSI7aTozO3M6NDoibmFtZSI7czoxODoiZXQgZW9zIHJlbSBkb2xvcmVtIjtzOjU6InByaWNlIjtkOjI0MztzOjc6Im9wdGlvbnMiO086Mzk6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtT3B0aW9ucyI6MTp7czo4OiIAKgBpdGVtcyI7YTowOnt9fXM6NDk6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBhc3NvY2lhdGVkTW9kZWwiO3M6MTg6IkFwcFxNb2RlbHNcUHJvZHVjdCI7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAHRheFJhdGUiO2k6MjE7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGlzU2F2ZWQiO2I6MDt9czozMjoiMzcwZDA4NTg1MzYwZjVjNTY4YjE4ZDFmMmU0Y2ExZGYiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjo5OntzOjU6InJvd0lkIjtzOjMyOiIzNzBkMDg1ODUzNjBmNWM1NjhiMThkMWYyZTRjYTFkZiI7czoyOiJpZCI7czoxOiIyIjtzOjM6InF0eSI7aTozO3M6NDoibmFtZSI7czoxNjoibm9uIHF1aWRlbSB1dCBhdCI7czo1OiJwcmljZSI7ZDozODk7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjE6e3M6ODoiACoAaXRlbXMiO2E6MDp7fX1zOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtzOjE4OiJBcHBcTW9kZWxzXFByb2R1Y3QiO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQB0YXhSYXRlIjtpOjIxO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBpc1NhdmVkIjtiOjA7fXM6MzI6IjAyN2M5MTM0MWZkNWNmNGQyNTc5YjQ5YzRiNmE5MGRhIjtPOjMyOiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbSI6OTp7czo1OiJyb3dJZCI7czozMjoiMDI3YzkxMzQxZmQ1Y2Y0ZDI1NzliNDljNGI2YTkwZGEiO3M6MjoiaWQiO3M6MToiMSI7czozOiJxdHkiO2k6MTtzOjQ6Im5hbWUiO3M6Mjc6ImFiIGRpc3RpbmN0aW8gZHVjaW11cyBvbW5pcyI7czo1OiJwcmljZSI7ZDoyMDU7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjE6e3M6ODoiACoAaXRlbXMiO2E6MDp7fX1zOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtzOjE4OiJBcHBcTW9kZWxzXFByb2R1Y3QiO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQB0YXhSYXRlIjtpOjIxO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBpc1NhdmVkIjtiOjA7fX19fX0=', 1628906819),
('Jz5O1pnILbqNKhx9Vphs55yLlcrkKGaeKxg1vs0Q', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoid2hUZnB2ZTNYS1c1aGtIa2M5NU40UEI4dFQ4UE5Dam5GZnNoOFZXbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTk6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9wcm9kdWN0L2JlYXRhZS1pdXN0by1lbGlnZW5kaS1xdWFlcmF0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo0OiJjYXJ0IjthOjE6e3M6NzoiZGVmYXVsdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjE6e3M6ODoiACoAaXRlbXMiO2E6NTp7czozMjoiMzcwZDA4NTg1MzYwZjVjNTY4YjE4ZDFmMmU0Y2ExZGYiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjo5OntzOjU6InJvd0lkIjtzOjMyOiIzNzBkMDg1ODUzNjBmNWM1NjhiMThkMWYyZTRjYTFkZiI7czoyOiJpZCI7czoxOiIyIjtzOjM6InF0eSI7aToxO3M6NDoibmFtZSI7czoxNjoibm9uIHF1aWRlbSB1dCBhdCI7czo1OiJwcmljZSI7ZDozODk7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjE6e3M6ODoiACoAaXRlbXMiO2E6MDp7fX1zOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtzOjE4OiJBcHBcTW9kZWxzXFByb2R1Y3QiO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQB0YXhSYXRlIjtpOjIxO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBpc1NhdmVkIjtiOjA7fXM6MzI6IjhhNDhhYTdjOGU1MjAyODQxZGRhZjc2N2JiNGQxMGRhIjtPOjMyOiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbSI6OTp7czo1OiJyb3dJZCI7czozMjoiOGE0OGFhN2M4ZTUyMDI4NDFkZGFmNzY3YmI0ZDEwZGEiO3M6MjoiaWQiO3M6MToiNiI7czozOiJxdHkiO2k6MTtzOjQ6Im5hbWUiO3M6Mjk6ImJlYXRhZSBpdXN0byBlbGlnZW5kaSBxdWFlcmF0IjtzOjU6InByaWNlIjtkOjQwMDtzOjc6Im9wdGlvbnMiO086Mzk6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtT3B0aW9ucyI6MTp7czo4OiIAKgBpdGVtcyI7YTowOnt9fXM6NDk6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBhc3NvY2lhdGVkTW9kZWwiO3M6MTg6IkFwcFxNb2RlbHNcUHJvZHVjdCI7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAHRheFJhdGUiO2k6MjE7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGlzU2F2ZWQiO2I6MDt9czozMjoiNDY4Mzk5NTgxMzQyNTA1YzQ3ZjQ2MTViODFiZWRhYTkiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjo5OntzOjU6InJvd0lkIjtzOjMyOiI0NjgzOTk1ODEzNDI1MDVjNDdmNDYxNWI4MWJlZGFhOSI7czoyOiJpZCI7czoxOiI1IjtzOjM6InF0eSI7aToxO3M6NDoibmFtZSI7czoyMjoiYXBlcmlhbSBkb2xvcnVtIHNpdCBldCI7czo1OiJwcmljZSI7ZDoxMDI7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjE6e3M6ODoiACoAaXRlbXMiO2E6MDp7fX1zOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtzOjE4OiJBcHBcTW9kZWxzXFByb2R1Y3QiO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQB0YXhSYXRlIjtpOjIxO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBpc1NhdmVkIjtiOjA7fXM6MzI6ImVmYjI2ZTJjNmFiNmJkNGQxMzIzMjg4OTIzNTIyZDRlIjtPOjMyOiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbSI6OTp7czo1OiJyb3dJZCI7czozMjoiZWZiMjZlMmM2YWI2YmQ0ZDEzMjMyODg5MjM1MjJkNGUiO3M6MjoiaWQiO3M6MToiNCI7czozOiJxdHkiO2k6MTtzOjQ6Im5hbWUiO3M6Mjc6Im1hZ25hbSBzZWQgb21uaXMgdm9sdXB0YXRlbSI7czo1OiJwcmljZSI7ZDozMTk7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjE6e3M6ODoiACoAaXRlbXMiO2E6MDp7fX1zOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtzOjE4OiJBcHBcTW9kZWxzXFByb2R1Y3QiO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQB0YXhSYXRlIjtpOjIxO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBpc1NhdmVkIjtiOjA7fXM6MzI6IjYyMGQ2NzBkOTVmMDQxOWUzNWY5MTgyNjk1OTE4YzY4IjtPOjMyOiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbSI6OTp7czo1OiJyb3dJZCI7czozMjoiNjIwZDY3MGQ5NWYwNDE5ZTM1ZjkxODI2OTU5MThjNjgiO3M6MjoiaWQiO3M6MjoiMTEiO3M6MzoicXR5IjtpOjE7czo0OiJuYW1lIjtzOjE3OiJ2ZWwgZXVtIG5hdHVzIHF1aSI7czo1OiJwcmljZSI7ZDo0NDA7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjE6e3M6ODoiACoAaXRlbXMiO2E6MDp7fX1zOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtzOjE4OiJBcHBcTW9kZWxzXFByb2R1Y3QiO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQB0YXhSYXRlIjtpOjIxO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBpc1NhdmVkIjtiOjA7fX19fX0=', 1629075317),
('u2p9VijlmzAGrFJyQLJuIcEmmTgk4quVVIsPR33a', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiU2Q5a1VJYWlWWmlhY2dpQmZxUnZJY1N3MGJHT2RSRjZMelN3NUZteSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9jYXJ0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo0OiJjYXJ0IjthOjE6e3M6NzoiZGVmYXVsdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjE6e3M6ODoiACoAaXRlbXMiO2E6Mzp7czozMjoiZWZiMjZlMmM2YWI2YmQ0ZDEzMjMyODg5MjM1MjJkNGUiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjo5OntzOjU6InJvd0lkIjtzOjMyOiJlZmIyNmUyYzZhYjZiZDRkMTMyMzI4ODkyMzUyMmQ0ZSI7czoyOiJpZCI7czoxOiI0IjtzOjM6InF0eSI7aToxO3M6NDoibmFtZSI7czoyNzoibWFnbmFtIHNlZCBvbW5pcyB2b2x1cHRhdGVtIjtzOjU6InByaWNlIjtkOjMxOTtzOjc6Im9wdGlvbnMiO086Mzk6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtT3B0aW9ucyI6MTp7czo4OiIAKgBpdGVtcyI7YTowOnt9fXM6NDk6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBhc3NvY2lhdGVkTW9kZWwiO3M6MTg6IkFwcFxNb2RlbHNcUHJvZHVjdCI7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAHRheFJhdGUiO2k6MjE7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGlzU2F2ZWQiO2I6MDt9czozMjoiMThkNjkzNDQ4M2I5OTRmYjk5NDNiNDNiN2Q3NjQ2YmYiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjo5OntzOjU6InJvd0lkIjtzOjMyOiIxOGQ2OTM0NDgzYjk5NGZiOTk0M2I0M2I3ZDc2NDZiZiI7czoyOiJpZCI7czoxOiI4IjtzOjM6InF0eSI7aToxO3M6NDoibmFtZSI7czoxNzoiaXBzYSBldCBxdW9zIGl1cmUiO3M6NToicHJpY2UiO2Q6MTY3O3M6Nzoib3B0aW9ucyI7TzozOToiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW1PcHRpb25zIjoxOntzOjg6IgAqAGl0ZW1zIjthOjA6e319czo0OToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGFzc29jaWF0ZWRNb2RlbCI7czoxODoiQXBwXE1vZGVsc1xQcm9kdWN0IjtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AdGF4UmF0ZSI7aToyMTtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AaXNTYXZlZCI7YjowO31zOjMyOiJlZWYxMjU3MzE3NjEyNWNlNTNlMzMzZTEzZDc0N2ExNyI7TzozMjoiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0iOjk6e3M6NToicm93SWQiO3M6MzI6ImVlZjEyNTczMTc2MTI1Y2U1M2UzMzNlMTNkNzQ3YTE3IjtzOjI6ImlkIjtzOjI6IjEyIjtzOjM6InF0eSI7aToxO3M6NDoibmFtZSI7czoyNjoibGliZXJvIHZlbGl0IG9tbmlzIGFsaXF1YW0iO3M6NToicHJpY2UiO2Q6NDM2O3M6Nzoib3B0aW9ucyI7TzozOToiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW1PcHRpb25zIjoxOntzOjg6IgAqAGl0ZW1zIjthOjA6e319czo0OToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGFzc29jaWF0ZWRNb2RlbCI7czoxODoiQXBwXE1vZGVsc1xQcm9kdWN0IjtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AdGF4UmF0ZSI7aToyMTtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AaXNTYXZlZCI7YjowO319fX19', 1630760790);

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM or USR',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- قيود الجداول المحفوظة
--

--
-- القيود للجدول `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
