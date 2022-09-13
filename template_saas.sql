-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: nans-mysql
-- Tempo de geração: 12-Set-2022 às 12:07
-- Versão do servidor: 8.0.30
-- versão do PHP: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `academy_saas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  `key` varchar(20) NOT NULL,
  `slug` int NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `categories`
--

INSERT INTO `categories` (`id`, `name`, `key`, `slug`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Slider', 'slider', 25, 1, '2022-08-27 10:57:06', '2022-09-03 10:17:53', NULL),
(4, 'Treinos', 'training', 25, 1, '2022-09-03 10:02:01', '2022-09-04 12:26:49', NULL),
(5, 'Grupo', 'team', 25, 1, '2022-09-03 13:50:27', '2022-09-04 12:27:49', NULL),
(6, 'about', 'about', 25, 1, '2022-09-03 14:02:11', '2022-09-03 14:02:11', NULL),
(7, 'Galeria', 'gallery', 25, 1, '2022-09-03 14:55:18', '2022-09-12 08:43:54', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `components`
--

CREATE TABLE `components` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `key` varchar(40) NOT NULL,
  `category_id` int NOT NULL,
  `slug` int NOT NULL,
  `has_title` tinyint(1) NOT NULL DEFAULT '0',
  `has_content` tinyint(1) NOT NULL DEFAULT '0',
  `has_extra` tinyint(1) NOT NULL DEFAULT '0',
  `has_image` tinyint(1) NOT NULL DEFAULT '0',
  `template` text,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `components`
--

INSERT INTO `components` (`id`, `name`, `key`, `category_id`, `slug`, `has_title`, `has_content`, `has_extra`, `has_image`, `template`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'Tópicos de treino', 'training_topic', 4, 25, 1, 1, 0, 1, '<div class=\"col-xl-6 col-lg-6\">\r\n                    <div class=\"single-topic text-center mb-30\">\r\n                        <div class=\"topic-img\">\r\n                            <img src=\"{{ url(\'image/entities\') . \'/\' . $entity_data[\'image\'] }}\" alt=\"\">\r\n                            <div class=\"topic-content-box\">\r\n                                <div class=\"topic-content\">\r\n                                    <h3>{{ $entity_data[\'title\'] }}</h3>\r\n                                    <p>{{ $entity_data[\'content\'] }}</p>\r\n                                    <a href=\"#\" class=\"border-btn\">Visualizar</a>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>', 1, '2022-09-03 10:06:52', '2022-09-04 12:27:19', NULL),
(6, 'Slider topo', 'top_slider', 1, 25, 0, 1, 0, 1, '<div class=\"slider-area position-relative\" \r\n    style=\"background-image: url(\'{{ url(\'image/entities\') . \'/\' . $entity_data[\'image\'] }}\" alt=\"{{ $entity_data[\'image\'] }}\')\">\r\n        <div class=\"slider-active\">\r\n            <!-- Single Slider -->\r\n            <div class=\"single-slider slider-height d-flex align-items-center text-center\">\r\n                <div class=\"container\">\r\n                    <div class=\"row\">\r\n                        <div class=\"col-xl-12 col-lg-12 col-md-12\">\r\n                            <div class=\"hero__caption\">\r\n                                <h1 data-animation=\"fadeInLeft\" data-delay=\"0.4s\">{{ $entity_data[\'content\'] }}</h1>\r\n                                <a href=\"#\" class=\"border-btn hero-btn\" data-animation=\"fadeInLeft\" data-delay=\"0.8s\">Meus trabalhos</a>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>          \r\n            </div>\r\n        </div>\r\n    </div>', 1, '2022-09-03 10:16:34', '2022-09-07 17:33:37', NULL),
(7, 'Recursos', 'resources', 5, 25, 1, 1, 0, 1, '<div class=\"col-lg-4 col-md-6\">\r\n                    <div class=\"single-cat text-center mb-30 wow fadeInUp\" data-wow-duration=\"1s\" data-wow-delay=\".6s\" style=\"visibility: visible; animation-duration: 1s; animation-delay: 0.6s; animation-name: fadeInUp;\">\r\n                        <div class=\"cat-icon\">\r\n                            <img src=\"{{ url(\'image/entities\') . \'/\' . $entity_data[\'image\'] }}\" alt=\"\">\r\n                        </div>\r\n                        <div class=\"cat-cap\">\r\n                            <h5><a href=\"#\">{{ $entity_data[\'title\'] }}</a></h5>\r\n                            <p>{{ $entity_data[\'content\'] }}</p>\r\n                        </div>\r\n                    </div>\r\n                </div>', 1, '2022-09-03 13:53:44', '2022-09-04 12:28:16', NULL),
(8, 'Sobre o site', 'site_about', 6, 25, 1, 1, 0, 1, '<div class=\"support-wrapper align-items-center\">\r\n            <div class=\"right-content2\">\r\n                <!-- img -->\r\n                <div class=\"right-img wow fadeInUp\" data-wow-duration=\"1s\" data-wow-delay=\".1s\">\r\n                    <img src=\"{{ url(\'image/entities\') . \'/\' . $entity_data[\'image\'] }}\" alt=\"\">\r\n                </div>\r\n            </div>\r\n            <div class=\"left-content2\">\r\n                <!-- section tittle -->\r\n                <div class=\"section-tittle2 mb-20 wow fadeInUp\" data-wow-duration=\"1s\" data-wow-delay=\".3s\">\r\n                    <div class=\"front-text\">\r\n                        <h2 class=\"\">{{ $entity_data[\'title\'] }}</h2>\r\n                        <p>{{ $entity_data[\'content\'] }}</p>\r\n                        <a href=\"courses.html\" class=\"border-btn\">My Courses</a>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>', 1, '2022-09-03 14:04:07', '2022-09-04 12:34:38', NULL),
(9, 'Galeria de fotos', 'photos_gallery', 7, 25, 1, 0, 0, 1, '<div class=\"col-xl-4 col-lg-6 col-md-6 col-sm-6\">\r\n                    <div class=\"box snake mb-30\">\r\n                        <div class=\"gallery-img big-img\" style=\"background-image: url(\'{{ url(\'image/entities\') . \'/\' . $entity_data[\'image\'] }}\" alt=\"{{ $entity_data[\'image\'] }}\')\"></div>\r\n                        <div class=\"overlay\">\r\n                            <div class=\"overlay-content\">\r\n                                <h3>{{ $entity_data[\'title\'] }}</h3>\r\n                                <a href=\"#\"></a>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>', 1, '2022-09-03 14:56:40', '2022-09-04 12:28:54', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `config_users`
--

CREATE TABLE `config_users` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `rule_id` int DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `slug` int NOT NULL,
  `admin` tinyint NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Extraindo dados da tabela `config_users`
--

INSERT INTO `config_users` (`id`, `user_id`, `rule_id`, `name`, `slug`, `admin`, `created_at`, `updated_at`) VALUES
(9, 7, 0, 'Ócrinho', 25, 0, '2022-06-04 12:40:18', '2022-06-04 12:40:18'),
(12, 11, 1, 'Gabriel Westerx', 25, 1, '2022-08-20 11:53:35', '2022-09-12 08:43:27'),
(13, 5, 2, 'Léozin boladão', 25, 1, '2022-08-20 12:20:16', '2022-09-07 08:59:43'),
(14, 10, 2, 'Rosinha', 25, 0, '2022-09-07 08:23:47', '2022-09-07 08:23:47');

-- --------------------------------------------------------

--
-- Estrutura da tabela `entities`
--

CREATE TABLE `entities` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `data` json NOT NULL,
  `active` tinyint NOT NULL DEFAULT '0',
  `slug` int NOT NULL,
  `component_id` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `entities`
--

INSERT INTO `entities` (`id`, `name`, `data`, `active`, `slug`, `component_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'Treino de musculação', '{\"image\": \"20220903103423-leo_persona_proporcao.png\", \"title\": \"Treino de musculação\", \"content\": \"É uma forma de exercício contra resistência para o treinamento e desenvolvimento dos músculos esqueléticos.\"}', 1, 25, 5, '2022-09-03 10:08:04', '2022-09-07 17:39:19', NULL),
(6, 'Treino funcional', '{\"image\": \"20220903103611-leo_isolado_correto_2.png\", \"title\": \"Treino funcional\", \"content\": \"É uma classificação de exercícios que envolvem treinar o corpo para desenvolver capacidades funcionais necessárias às atividades da vida diária, como saltar, agachar, empurrar, puxar, correr, levantar e arremessar.\"}', 1, 25, 5, '2022-09-03 10:08:49', '2022-09-07 17:38:59', NULL),
(7, 'Slider topo', '{\"image\": \"20220903102435-leo_header.jpeg\", \"content\": \"SEJAM BEM VINDOS AO CENTRO DE TREINAMENTO STUDIO FOCUS\"}', 1, 25, 6, '2022-09-03 10:17:36', '2022-09-07 17:31:27', NULL),
(8, 'espaco_1_academia', '{\"image\": \"20220903135516-WhatsApp Image 2022-09-02 at 14.42.01.jpeg\", \"title\": \"Ganho de músculo\", \"content\": \"You’ll look at graphs and charts in Task One, how to approach the task\"}', 1, 25, 7, '2022-09-03 13:55:16', '2022-09-03 13:55:16', NULL),
(9, 'espaco_2_academia', '{\"image\": \"20220903135559-WhatsApp Image 2022-09-02 at 14.42.06 (5).jpeg\", \"title\": \"Perca de peso\", \"content\": \"You’ll look at graphs and charts in Task One, how to approach the task\"}', 1, 25, 7, '2022-09-03 13:55:59', '2022-09-03 14:00:38', NULL),
(10, 'espaco_3_academia', '{\"image\": \"20220903135631-WhatsApp Image 2022-09-02 at 14.42.06.jpeg\", \"title\": \"Body building\", \"content\": \"You’ll look at graphs and charts in Task One, how to approach the task\"}', 1, 25, 7, '2022-09-03 13:56:31', '2022-09-03 14:00:58', NULL),
(11, 'about_leo', '{\"image\": \"20220903140511-WhatsApp Image 2022-09-02 at 15.10.02 (3).jpeg\", \"title\": \"MAIS QUEM UM STUDIO!\", \"content\": \"Somos especialistas em musculação e treinamento funcional. Aqui seu treino tem mais qualidade com os melhores profissionais, que podem te ajudar a alcançar seus objetivos! Seja a melhora da qualidade de vida ou perfil estético. Te ajudamos a ser o que você quiser, por que sua meta é nossa meta.\"}', 1, 25, 8, '2022-09-03 14:05:11', '2022-09-07 17:50:31', NULL),
(12, '1_espaco_grande', '{\"image\": \"20220903145732-WhatsApp Image 2022-09-02 at 15.10.02.jpeg\", \"title\": \"Ganho de músculo eisnten\"}', 1, 25, 9, '2022-09-03 14:57:32', '2022-09-03 18:45:36', NULL),
(13, '2_espaco_grande', '{\"image\": \"20220903150350-WhatsApp Image 2022-09-02 at 14.42.05.jpeg\", \"title\": \"Vai dar bom\"}', 1, 25, 9, '2022-09-03 14:58:05', '2022-09-03 15:03:50', NULL),
(14, '3_espaco_grande', '{\"image\": \"20220903145843-WhatsApp Image 2022-09-02 at 14.42.03 (1).jpeg\", \"title\": \"Espaço de sobra\"}', 1, 25, 9, '2022-09-03 14:58:43', '2022-09-03 14:58:43', NULL),
(15, '4_espaco_grande', '{\"image\": \"20220903150128-WhatsApp Image 2022-09-02 at 14.42.04 (2).jpeg\", \"title\": \"É o brabo na área\"}', 1, 25, 9, '2022-09-03 15:01:28', '2022-09-03 15:01:28', NULL),
(16, '5_espaco_grande', '{\"image\": \"20220903150300-WhatsApp Image 2022-09-02 at 14.42.06.jpeg\", \"title\": \"Só macaranã aqui\"}', 1, 25, 9, '2022-09-03 15:03:00', '2022-09-03 15:03:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `historics`
--

CREATE TABLE `historics` (
  `id` int NOT NULL,
  `description` varchar(60) NOT NULL,
  `happened_at` date DEFAULT NULL,
  `slug` int NOT NULL,
  `observation` text,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `historics`
--

INSERT INTO `historics` (`id`, `description`, `happened_at`, `slug`, `observation`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'teste description', '2022-09-08', 25, NULL, '2022-09-07 13:38:28', '2022-09-07 13:38:28', NULL),
(2, 'teste description', '2022-09-08', 25, NULL, '2022-09-07 13:42:30', '2022-09-07 13:42:30', NULL),
(3, 'teste description', '2022-09-08', 25, NULL, '2022-09-07 13:42:59', '2022-09-07 13:42:59', NULL),
(4, 'xteste descriptionx', '2022-09-10', 25, NULL, '2022-09-07 14:01:23', '2022-09-08 07:59:09', NULL),
(5, 'XXX', '2022-09-15', 25, NULL, '2022-09-08 08:06:13', '2022-09-08 08:15:55', NULL),
(6, 'xx', NULL, 25, 'x', '2022-09-08 08:25:54', '2022-09-08 08:25:54', NULL),
(7, 'xxs', '2022-09-11', 25, 'xxs', '2022-09-10 15:55:46', '2022-09-10 15:56:13', NULL),
(8, 'ax', '2022-09-04', 25, 'ax', '2022-09-12 08:42:58', '2022-09-12 08:43:11', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `historic_entities`
--

CREATE TABLE `historic_entities` (
  `id` int NOT NULL,
  `historic_id` int NOT NULL,
  `entity_id` int NOT NULL,
  `entity_type` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `historic_entities`
--

INSERT INTO `historic_entities` (`id`, `historic_id`, `entity_id`, `entity_type`, `created_at`) VALUES
(18, 5, 12, 'modalities', '2022-09-08 11:06:13'),
(19, 5, 7, 'plans', '2022-09-08 11:06:13'),
(20, 5, 13, 'modalities', '2022-09-08 11:10:50'),
(21, 5, 15, 'modalities', '2022-09-08 11:10:50'),
(22, 5, 17, 'modalities', '2022-09-08 11:10:50'),
(23, 5, 6, 'plans', '2022-09-08 11:10:50'),
(24, 5, 11, 'plans', '2022-09-08 11:10:50'),
(25, 5, 9, 'students', '2022-09-08 11:10:50'),
(26, 5, 1, 'categories', '2022-09-08 11:10:50'),
(27, 5, 4, 'categories', '2022-09-08 11:10:50'),
(28, 5, 5, 'categories', '2022-09-08 11:10:50'),
(29, 5, 6, 'categories', '2022-09-08 11:10:50'),
(30, 5, 7, 'categories', '2022-09-08 11:10:50'),
(31, 4, 12, 'modalities', '2022-09-08 11:16:38'),
(32, 7, 12, 'modalities', '2022-09-10 18:55:46'),
(33, 7, 7, 'plans', '2022-09-10 18:55:46'),
(34, 7, 9, 'students', '2022-09-10 18:55:46'),
(35, 7, 4, 'categories', '2022-09-10 18:55:46'),
(36, 7, 13, 'modalities', '2022-09-10 18:56:13'),
(37, 7, 9, 'plans', '2022-09-10 18:56:13'),
(38, 7, 5, 'categories', '2022-09-10 18:56:13'),
(39, 8, 12, 'modalities', '2022-09-12 11:42:58'),
(40, 8, 7, 'plans', '2022-09-12 11:42:58'),
(41, 8, 9, 'students', '2022-09-12 11:42:58'),
(42, 8, 5, 'categories', '2022-09-12 11:42:58'),
(43, 8, 13, 'modalities', '2022-09-12 11:43:11'),
(44, 8, 9, 'plans', '2022-09-12 11:43:11'),
(45, 8, 6, 'categories', '2022-09-12 11:43:11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `modalities`
--

CREATE TABLE `modalities` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  `cost` int NOT NULL,
  `slug` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Extraindo dados da tabela `modalities`
--

INSERT INTO `modalities` (`id`, `name`, `cost`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(12, 'Musculação', 50, 25, '2022-06-01 21:47:07', '2022-06-01 21:47:07', NULL),
(13, 'Personal', 65, 25, '2022-06-01 21:47:20', '2022-06-01 21:47:20', NULL),
(15, 'Muay thai', 13, 25, '2022-09-03 18:49:12', '2022-09-03 18:50:47', NULL),
(17, 'Funcional', 1, 25, '2022-09-07 17:44:21', '2022-09-07 17:49:43', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------


-- --------------------------------------------------------

--
-- Estrutura da tabela `slug_address`
--

CREATE TABLE `slug_address` (
  `id` int NOT NULL,
  `slug_config_id` int NOT NULL,
  `latitude` varchar(30) NOT NULL,
  `longitude` varchar(30) NOT NULL,
  `phone` varchar(18) DEFAULT NULL,
  `cellphone` varchar(18) DEFAULT NULL,
  `country` varchar(25) NOT NULL,
  `state` varchar(25) NOT NULL,
  `city` varchar(25) NOT NULL,
  `street` varchar(25) NOT NULL,
  `number` int NOT NULL,
  `zipcode` int NOT NULL,
  `open_at` time NOT NULL,
  `close_at` time NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `observation` text,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `slug_address`
--

INSERT INTO `slug_address` (`id`, `slug_config_id`, `latitude`, `longitude`, `phone`, `cellphone`, `country`, `state`, `city`, `street`, `number`, `zipcode`, `open_at`, `close_at`, `email`, `observation`, `created_at`, `updated_at`) VALUES
(2, 25, '-22.2078949', '-49.6545122', '+55 14 99102-2986', '+55 14 98218-0923', 'Brasil', 'São Paulo', 'Garça', 'Rua Barão do Rio Branco', 487, 17400082, '06:00:00', '22:00:00', 'studiofocus487@gmail.com', '\"Mil cairão ao teu lado, e dez mil, à tua direita, mas tu não serás atingido.\" - Salmos 91:7-10', '2022-09-02 19:43:13', '2022-09-07 17:52:56');

-- --------------------------------------------------------

--
-- Estrutura da tabela `slug_config`
--

CREATE TABLE `slug_config` (
  `id` int NOT NULL,
  `slug` int NOT NULL,
  `facebook` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `instagram` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `twitter` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `youtube` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `slug_config`
--

INSERT INTO `slug_config` (`id`, `slug`, `facebook`, `instagram`, `twitter`, `youtube`, `created_at`, `updated_at`) VALUES
(13, 25, 'xx', 'https://www.instagram.com/studiofocus_487', 'xx', 'xx', '2022-09-02 16:43:13', '2022-09-12 08:43:40');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `components`
--
ALTER TABLE `components`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `config_users`
--
ALTER TABLE `config_users`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `entities`
--
ALTER TABLE `entities`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices para tabela `historics`
--
ALTER TABLE `historics`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `historic_entities`
--
ALTER TABLE `historic_entities`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `modalities`
--
ALTER TABLE `modalities`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices para tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices para tabela `slug_address`
--
ALTER TABLE `slug_address`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `slug_config`
--
ALTER TABLE `slug_config`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `components`
--
ALTER TABLE `components`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `config_users`
--
ALTER TABLE `config_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `entities`
--
ALTER TABLE `entities`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `historics`
--
ALTER TABLE `historics`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `historic_entities`
--
ALTER TABLE `historic_entities`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `modalities`
--
ALTER TABLE `modalities`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `slug_address`
--
ALTER TABLE `slug_address`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `slug_config`
--
ALTER TABLE `slug_config`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
