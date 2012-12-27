-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Client: 127.0.0.1
-- Généré le: Mar 25 Décembre 2012 à 19:03
-- Version du serveur: 5.5.27
-- Version de PHP: 5.4.7

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `symfony`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `titre` varchar(255) NOT NULL,
  `contenu` longtext NOT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `date_publication` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_BFDD3168A76ED395` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Contenu de la table `articles`
--

INSERT INTO `articles` (`id`, `user_id`, `titre`, `contenu`, `image1`, `date_publication`) VALUES
(3, 1, 'Activité rurale', 'dofolor sitametaPlacerat cras ultrices tristique. Parturient ut ultrices viverra fusce ultricies curae. Phasellus ultrices semper metus facilisis. Tristique quisque ante neque morbi. Luctus aenean risus etiam sodales lobortis lacinia. Hendrerit arcu interdum eu vivamus in nunc. Mollis tincidunt natoque libero posuere auctor quam aliquam. Pellentesque viverra vulputate enim. Aliquam erat volutpat. Pellentesque tristique ante ut risus. Quisque dictum. Integer nisl risus, sagittis convallis, rutrum id, elementum congue, nibh. Suspendisse dictum porta lectus. Donec placerat odio vel elit. Nullam ante orci, pellentesque eget, tempus quis, ultrices in, est. Curabitur sit amet nulla. Nam in massa. Sed vel tellus. Curabitur sem urna, consequat vel, suscipit in, mattis placerat, nulla. Sed ac leo. Pellentesque imperdiet. Donec placerat odio vel elit. Nullam ante orci, pellentesque eget, tempus quis, ultrices in, est. Curabitur sit amet nulla. Nam in massa.Placerat cras ultrices tristique. Parturient ut ultrices viverra fusce ultricies curae. Phasellus ultrices semper metus facilisis. Tristique quisque ante neque morbi. Luctus aenean risus etiam sodales lobortis lacinia. Hendrerit arcu interdum eu vivamus in nunc. Mollis tincidunt natoque libero posuere auctor quam aliquam. Pellentesque viverra vulputate enim. Aliquam erat volutpat. Pellentesque tristique ante ut risus. Quisque dictum. Integer nisl risus, sagittis convallis, rutrum id, elementum congue, nibh. Suspendisse dictum porta lectus. Donec placerat odio vel elit. Nullam ante orci, pellentesque eget, tempus quis, ultrices in, est. Curabitur sit amet nulla. Nam in massa. Sed vel tellus. Curabitur sem urna, consequat vel, suscipit in, mattis placerat, nulla. Sed ac leo. Pellentesque imperdiet. Donec placerat odio vel elit. Nullam ante orci, pellentesque eget, tempus quis, ultrices in, est. Curabitur sit amet nulla. Nam in massa', 'images/5ca10c6ddfc7089c45fc139df8993c6b.jpg', '2010-05-05 05:03:00'),
(4, 1, 'manaraka', 'ballnabnanklna dqfsdfsdfsqdfsdfsdfsdf\r\nsqdfsdfsdfsdfd\r\nfsdfsdfsdf\r\ndsfsdfsdfsdf\r\nsdsfsdfsdfsdf\r\nsdfsdfsdfsdf\r\ndannalnlna', 'images/483b8693df78b6c923a1633c6c344c2c.jpg', '2007-01-01 00:00:00'),
(5, 1, 'nyvaouvao', '<p>mididma gasecear dorloz sita maenae tematat tama</p>', NULL, '2015-01-01 00:00:00'),
(6, 1, 'Feno manandrana update article', '<p style="color: #2c17e7;"><span style="text-decoration: underline;"><strong>Ceci est un article pas comme les autres</strong></span></p>\r\n<p>Isaky ny maheno aho, ka mahita soratra hoe "Kalvary"</p>\r\n<p>Dia tsaroako iany Kristy mijaly, niari-pery tsy namaly</p>\r\n<p>Nalatsa-dra ianao, noho ireo ankason''ny tany, Jesosy oooooo</p>', 'images/b22546da68056c4c04604eb107634f0c.png', '2013-01-01 00:00:00'),
(7, 1, 'lava be ny conteny', '<p>omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ips sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur,ctetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis A quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam . qui dolorem ipsum quia dolor sit amet, conse. fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, velit, sed quia non numquam eius modi tempora</p>', NULL, '2011-05-09 00:00:00'),
(8, 1, 'POLITINGINA FOHY Fa TSY LAVA', '<p>omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ips sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur,ctetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis A quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam . qui dolorem ipsum quia dolor sit amet, conse. fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, velit, sed quia non numquam eius modi tempora</p>', NULL, '2013-01-01 00:00:00'),
(9, 1, 'POLITINGINA2', 'omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ips sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur,ctetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis A quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam . qui dolorem ipsum quia dolor sit amet, conse. fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, velit, sed quia non numquam eius modi tempora', 'images/de175907f6dffff2576ffba5eb524d5c.jpg', '2011-04-27 00:00:00'),
(10, 1, 'POLITINGINA3', 'omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ips sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur,ctetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis A quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam . qui dolorem ipsum quia dolor sit amet, conse. fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, velit, sed quia non numquam eius modi tempora', 'images/4f8d9eccd468e1bd1484903680160a8e.jpg', '2012-05-14 16:13:00'),
(11, 1, 'Dernier ligne droite pour 2012', 'kjdhqjh qkhjqj fqjkjd fqkjf qjkdq\r\ndfqhdkjfdfqdf\r\nfdfjdqsfjdfjksjfkjdsfdjfkjqsf\r\nqfqkfklqsdjfjqljlfq\r\nfqkdfjldfkdjfkjdfjkdjfksdjf\r\ndffklsdjfdfldjlkfldf\r\ndfkzjkfhekhfehhfhkqz\r\njoahozqghojijrogazeg\r\ngazegkpjzlagjkajkgkegklazega\r\ngkzheughiehgiozajgiazkpgea', 'images/161d28164ecf75149057bb8cd79c4e49.jpg', '2013-05-05 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `cc_component_attachment`
--

CREATE TABLE IF NOT EXISTS `cc_component_attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_owned_by_user_id` int(11) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `file_name_original` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name_hashed` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_extension` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_size` tinytext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `IDX_3E30D3EE3BB9921A` (`fk_owned_by_user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Contenu de la table `cc_component_attachment`
--

INSERT INTO `cc_component_attachment` (`id`, `fk_owned_by_user_id`, `created_date`, `description`, `file_name_original`, `file_name_hashed`, `file_extension`, `file_size`) VALUES
(3, 2, '2012-12-25 03:44:59', 'Pomme', 'apple.png', 'd6a0ec6eb7fd97265c77b85397cbe0bc', 'png', '4.06KiB'),
(4, 3, '2012-12-25 06:16:34', 'moi', 'clock.png', '90790df9e5d5d99fc95a0b852f226b2c', 'png', '5.6KiB');

-- --------------------------------------------------------

--
-- Structure de la table `cc_forum_board`
--

CREATE TABLE IF NOT EXISTS `cc_forum_board` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_category_id` int(11) DEFAULT NULL,
  `fk_last_post_id` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `cached_topic_count` int(11) NOT NULL,
  `cached_post_count` int(11) NOT NULL,
  `list_order_priority` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CE330F5ACD83D7D` (`fk_last_post_id`),
  KEY `IDX_CE330F5A7BB031D6` (`fk_category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `cc_forum_board`
--

INSERT INTO `cc_forum_board` (`id`, `fk_category_id`, `fk_last_post_id`, `name`, `description`, `cached_topic_count`, `cached_post_count`, `list_order_priority`) VALUES
(1, 1, 8, 'Board fenonantenaina', 'Fanandramana mikasika ilay Forum ity', 2, 8, 1),
(2, 2, 10, 'Board name test', 'Hiresahana ny mikasika ireo olana ara-toekarena eto madagasikara', 1, 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `cc_forum_category`
--

CREATE TABLE IF NOT EXISTS `cc_forum_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `list_order_priority` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `cc_forum_category`
--

INSERT INTO `cc_forum_category` (`id`, `name`, `list_order_priority`) VALUES
(1, 'PSAEP Caadp Madagascar', 1),
(2, 'Etech Consulting Madagascar', 2);

-- --------------------------------------------------------

--
-- Structure de la table `cc_forum_draft`
--

CREATE TABLE IF NOT EXISTS `cc_forum_draft` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_board_id` int(11) DEFAULT NULL,
  `fk_topic_id` int(11) DEFAULT NULL,
  `fk_created_by_user_id` int(11) DEFAULT NULL,
  `fk_attachment_id` int(11) DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8_unicode_ci,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D019B289D5C4145B` (`fk_board_id`),
  KEY `IDX_D019B2892D7D63E3` (`fk_topic_id`),
  KEY `IDX_D019B289CEB06035` (`fk_created_by_user_id`),
  KEY `IDX_D019B289602E9349` (`fk_attachment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Contenu de la table `cc_forum_draft`
--

INSERT INTO `cc_forum_draft` (`id`, `fk_board_id`, `fk_topic_id`, `fk_created_by_user_id`, `fk_attachment_id`, `title`, `body`, `created_date`) VALUES
(1, NULL, 2, 1, NULL, NULL, 'qfs qsdf qsdfq dsf qsdfqsdfqs qsdf qsd fq qsdf qsdf qsdf qsdgqdfh sfgjhq dfhqdfgqd qd gqsdf qsd fqsdfqs sh qdfhgqd fsfgjh sghjq shgqdfgqd sh sfdhgsdgsdfg sdf :-)', '2012-12-23 07:23:46');

-- --------------------------------------------------------

--
-- Structure de la table `cc_forum_karma`
--

CREATE TABLE IF NOT EXISTS `cc_forum_karma` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_post_id` int(11) DEFAULT NULL,
  `fk_rating_for_user_id` int(11) DEFAULT NULL,
  `fk_rating_by_user_id` int(11) DEFAULT NULL,
  `posted_date` datetime DEFAULT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL,
  `is_positive` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_80ACFD20BBA63E00` (`fk_post_id`),
  KEY `IDX_80ACFD2059A28AFF` (`fk_rating_for_user_id`),
  KEY `IDX_80ACFD20F25DC488` (`fk_rating_by_user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `cc_forum_karma`
--

INSERT INTO `cc_forum_karma` (`id`, `fk_post_id`, `fk_rating_for_user_id`, `fk_rating_by_user_id`, `posted_date`, `comment`, `is_positive`) VALUES
(1, 6, 2, 1, '2012-12-23 08:45:30', 'milay izany ka, tena marina mits lets', 1),
(2, 3, 1, 3, '2012-12-23 08:48:09', 'fa aiz no mandé le rate e?????', 1);

-- --------------------------------------------------------

--
-- Structure de la table `cc_forum_post`
--

CREATE TABLE IF NOT EXISTS `cc_forum_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_topic_id` int(11) DEFAULT NULL,
  `fk_created_by_user_id` int(11) DEFAULT NULL,
  `fk_edited_by_user_id` int(11) DEFAULT NULL,
  `fk_deleted_by_user_id` int(11) DEFAULT NULL,
  `fk_locked_by_user_id` int(11) DEFAULT NULL,
  `fk_attachment_id` int(11) DEFAULT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL,
  `edited_date` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `is_locked` tinyint(1) NOT NULL,
  `locked_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_3606FFC72D7D63E3` (`fk_topic_id`),
  KEY `IDX_3606FFC7CEB06035` (`fk_created_by_user_id`),
  KEY `IDX_3606FFC746B4308F` (`fk_edited_by_user_id`),
  KEY `IDX_3606FFC74F5AE4DA` (`fk_deleted_by_user_id`),
  KEY `IDX_3606FFC72AF06A63` (`fk_locked_by_user_id`),
  KEY `IDX_3606FFC7602E9349` (`fk_attachment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Contenu de la table `cc_forum_post`
--

INSERT INTO `cc_forum_post` (`id`, `fk_topic_id`, `fk_created_by_user_id`, `fk_edited_by_user_id`, `fk_deleted_by_user_id`, `fk_locked_by_user_id`, `fk_attachment_id`, `body`, `created_date`, `edited_date`, `is_deleted`, `deleted_date`, `is_locked`, `locked_date`) VALUES
(1, 2, 1, NULL, NULL, NULL, NULL, 'Fa inona no tsy mampandé ilay forum neza za efa tena miasa mafi manao azy?', '2012-12-23 06:56:37', NULL, 0, NULL, 0, NULL),
(2, 2, 1, NULL, NULL, NULL, NULL, 'Lety e, ts lasa akory v rangah le iz :(', '2012-12-23 07:25:28', NULL, 0, NULL, 0, NULL),
(3, 2, 1, NULL, NULL, NULL, NULL, '[QUOTE=psa]Lety e, ts lasa akory v rangah le iz :([/QUOTE]', '2012-12-23 07:26:18', NULL, 0, NULL, 0, NULL),
(4, 3, 1, NULL, NULL, NULL, NULL, 'Izay mahay mamaly aoka izy hamaly tompoko', '2012-12-23 07:27:02', NULL, 0, NULL, 0, NULL),
(5, 3, 1, NULL, NULL, NULL, NULL, 'lol\r\n:-)\r\n[B] tsy mande le iz sa mande e ? [/B]', '2012-12-23 07:45:09', NULL, 0, NULL, 0, NULL),
(6, 2, 2, NULL, NULL, NULL, NULL, 'aza mamorona zavatra ts misy ry sefo a :)', '2012-12-23 08:30:54', NULL, 0, NULL, 0, NULL),
(7, 2, 3, NULL, NULL, NULL, NULL, 'Efa ela iany zay fa de ehehe ts mandé leri', '2012-12-23 08:48:50', NULL, 0, NULL, 0, NULL),
(8, 2, 2, NULL, NULL, NULL, NULL, 'sqdfqsd fqsd qsdf qsdf qsd fqs fqsdf', '2012-12-23 08:51:36', NULL, 0, NULL, 0, NULL),
(9, 4, 3, NULL, NULL, NULL, NULL, 'Efa fotoana maro no tsy nahomby ny vokatra tety @ faritra alaotra, mis zvt azo atao v mba ahafahanay manatanteraka izany?', '2012-12-23 09:36:21', NULL, 0, NULL, 0, NULL),
(10, 4, 4, NULL, NULL, NULL, NULL, 'tena manahirana mits nge ity resaka fambolena ity e. Tsy ny aty aminareo alaotra mangoro iany fa hatrany @ faritra avaratry ny nosy koa aza dia tahaka izany.', '2012-12-23 09:52:13', NULL, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cc_forum_registry`
--

CREATE TABLE IF NOT EXISTS `cc_forum_registry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_owned_by_user_id` int(11) DEFAULT NULL,
  `cached_post_count` int(11) NOT NULL,
  `cached_karma_positive_count` int(11) NOT NULL,
  `cached_karma_negative_count` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_156659CE3BB9921A` (`fk_owned_by_user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Contenu de la table `cc_forum_registry`
--

INSERT INTO `cc_forum_registry` (`id`, `fk_owned_by_user_id`, `cached_post_count`, `cached_karma_positive_count`, `cached_karma_negative_count`) VALUES
(1, 1, 5, 1, 0),
(2, 2, 2, 1, 0),
(3, 3, 2, 0, 0),
(4, 4, 1, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `cc_forum_subscription`
--

CREATE TABLE IF NOT EXISTS `cc_forum_subscription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_topic_id` int(11) DEFAULT NULL,
  `fk_owned_by_user_id` int(11) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL,
  `is_subscribed` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F00B98B82D7D63E3` (`fk_topic_id`),
  KEY `IDX_F00B98B83BB9921A` (`fk_owned_by_user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Contenu de la table `cc_forum_subscription`
--

INSERT INTO `cc_forum_subscription` (`id`, `fk_topic_id`, `fk_owned_by_user_id`, `is_read`, `is_subscribed`) VALUES
(1, 2, 1, 1, 1),
(2, 3, 1, 1, 1),
(3, 2, 2, 1, 1),
(4, 2, 3, 1, 1),
(5, 4, 3, 1, 1),
(6, 4, 4, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `cc_forum_topic`
--

CREATE TABLE IF NOT EXISTS `cc_forum_topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_board_id` int(11) DEFAULT NULL,
  `fk_first_post_id` int(11) DEFAULT NULL,
  `fk_last_post_id` int(11) DEFAULT NULL,
  `fk_closed_by_user_id` int(11) DEFAULT NULL,
  `fk_deleted_by_user_id` int(11) DEFAULT NULL,
  `fk_stickied_by_user_id` int(11) DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cached_view_count` int(11) NOT NULL,
  `cached_reply_count` int(11) NOT NULL,
  `is_closed` tinyint(1) NOT NULL,
  `closed_date` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `stickied_date` datetime DEFAULT NULL,
  `is_sticky` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B25FA063C4F1A12` (`fk_first_post_id`),
  UNIQUE KEY `UNIQ_B25FA06CD83D7D` (`fk_last_post_id`),
  KEY `IDX_B25FA06D5C4145B` (`fk_board_id`),
  KEY `IDX_B25FA06D5A466FA` (`fk_closed_by_user_id`),
  KEY `IDX_B25FA064F5AE4DA` (`fk_deleted_by_user_id`),
  KEY `IDX_B25FA0645768453` (`fk_stickied_by_user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Contenu de la table `cc_forum_topic`
--

INSERT INTO `cc_forum_topic` (`id`, `fk_board_id`, `fk_first_post_id`, `fk_last_post_id`, `fk_closed_by_user_id`, `fk_deleted_by_user_id`, `fk_stickied_by_user_id`, `title`, `cached_view_count`, `cached_reply_count`, `is_closed`, `closed_date`, `is_deleted`, `deleted_date`, `stickied_date`, `is_sticky`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, 'Topic Title pour Board feno', 2, 0, 0, NULL, 0, NULL, NULL, 0),
(2, 1, 1, 8, NULL, NULL, NULL, 'Fanontaniana mikasika ny forum', 68, 5, 0, NULL, 0, NULL, NULL, 0),
(3, 1, 4, 5, NULL, NULL, NULL, 'Topic faharoa', 9, 1, 0, NULL, 0, NULL, NULL, 0),
(4, 2, 9, 10, NULL, NULL, NULL, 'Olana mikasika ny fambolem-bary aty alaotra mangoro', 6, 1, 0, NULL, 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `cc_message_folder`
--

CREATE TABLE IF NOT EXISTS `cc_message_folder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_owned_by_user_id` int(11) DEFAULT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `special_type` int(11) DEFAULT NULL,
  `cached_read_count` int(11) DEFAULT NULL,
  `cached_unread_count` int(11) DEFAULT NULL,
  `cached_total_message_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_DA623A813BB9921A` (`fk_owned_by_user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;

--
-- Contenu de la table `cc_message_folder`
--

INSERT INTO `cc_message_folder` (`id`, `fk_owned_by_user_id`, `name`, `special_type`, `cached_read_count`, `cached_unread_count`, `cached_total_message_count`) VALUES
(1, 2, 'inbox', 1, 0, 0, 0),
(2, 2, 'sent', 2, 0, 0, 0),
(3, 2, 'drafts', 3, 0, 0, 0),
(4, 2, 'junk', 4, 0, 0, 0),
(5, 2, 'trash', 5, 0, 0, 0),
(6, 1, 'inbox', 1, 0, 1, 1),
(7, 1, 'sent', 2, 0, 0, 0),
(8, 1, 'drafts', 3, 0, 0, 0),
(9, 1, 'junk', 4, 0, 0, 0),
(10, 1, 'trash', 5, 0, 0, 0),
(11, 3, 'inbox', 1, 0, 0, 0),
(12, 3, 'sent', 2, 0, 0, 0),
(13, 3, 'drafts', 3, 0, 0, 0),
(14, 3, 'junk', 4, 0, 0, 0),
(15, 3, 'trash', 5, 0, 0, 0),
(16, 4, 'inbox', 1, 1, 0, 1),
(17, 4, 'sent', 2, 0, 0, 0),
(18, 4, 'drafts', 3, 0, 0, 0),
(19, 4, 'junk', 4, 0, 0, 0),
(20, 4, 'trash', 5, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `cc_message_message`
--

CREATE TABLE IF NOT EXISTS `cc_message_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_folder_id` int(11) DEFAULT NULL,
  `fk_sent_to_user_id` int(11) DEFAULT NULL,
  `fk_from_user_id` int(11) DEFAULT NULL,
  `fk_owned_by_user_id` int(11) DEFAULT NULL,
  `fk_attachment_id` int(11) DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sent_date` datetime DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `send_to` longtext COLLATE utf8_unicode_ci NOT NULL,
  `is_draft` tinyint(1) NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `is_flagged` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C9E1FDF777756ED2` (`fk_folder_id`),
  KEY `IDX_C9E1FDF7E34CC5D2` (`fk_sent_to_user_id`),
  KEY `IDX_C9E1FDF7ED3223` (`fk_from_user_id`),
  KEY `IDX_C9E1FDF73BB9921A` (`fk_owned_by_user_id`),
  KEY `IDX_C9E1FDF7602E9349` (`fk_attachment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Contenu de la table `cc_message_message`
--

INSERT INTO `cc_message_message` (`id`, `fk_folder_id`, `fk_sent_to_user_id`, `fk_from_user_id`, `fk_owned_by_user_id`, `fk_attachment_id`, `subject`, `body`, `sent_date`, `created_date`, `send_to`, `is_draft`, `is_read`, `is_flagged`) VALUES
(1, 6, 1, 2, 1, NULL, 'valin''ny forum nataonao', 'Aza dia miteniteny foana fa raha mitohy izao fanaonao izao dia ts maints blockéna ianao an. Mba feropero ihany ny vava avoaka', '2012-12-25 02:59:40', '2012-12-25 02:59:40', 'psasuper', 0, 0, 0),
(2, 2, NULL, 2, 2, NULL, 'valin''ny forum nataonao', 'Aza dia miteniteny foana fa raha mitohy izao fanaonao izao dia ts maints blockéna ianao an. Mba feropero ihany ny vava avoaka', '2012-12-25 02:59:40', '2012-12-25 02:59:40', 'psasuper', 0, 1, 0),
(3, 16, 4, 3, 4, 4, 'Fanontaniana', 'Aiza ny lalana makany?', '2012-12-25 06:30:56', '2012-12-25 06:30:56', 'psamoderator', 0, 1, 0),
(4, 12, NULL, 3, 3, 4, 'Fanontaniana', 'Aiza ny lalana makany?', '2012-12-25 06:30:56', '2012-12-25 06:30:56', 'psamoderator', 0, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `cc_message_registry`
--

CREATE TABLE IF NOT EXISTS `cc_message_registry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_owned_by_user_id` int(11) DEFAULT NULL,
  `cached_unread_message_count` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_2EB44AD53BB9921A` (`fk_owned_by_user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `cc_message_registry`
--

INSERT INTO `cc_message_registry` (`id`, `fk_owned_by_user_id`, `cached_unread_message_count`) VALUES
(1, 1, 1),
(2, 4, 0);

-- --------------------------------------------------------

--
-- Structure de la table `cc_user_profile`
--

CREATE TABLE IF NOT EXISTS `cc_user_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_user_id` int(11) DEFAULT NULL,
  `avatar_is_remote` tinyint(1) DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aim` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aim_is_public` tinyint(1) DEFAULT NULL,
  `msn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msn_is_public` tinyint(1) DEFAULT NULL,
  `icq` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icq_is_public` tinyint(1) DEFAULT NULL,
  `yahoo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `yahoo_is_public` tinyint(1) DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` longtext COLLATE utf8_unicode_ci,
  `signature` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_localAvatar_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_6A74B2835741EEB9` (`fk_user_id`),
  KEY `IDX_F85916A1CC933FA2` (`fk_localAvatar_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Contenu de la table `cc_user_profile`
--

INSERT INTO `cc_user_profile` (`id`, `fk_user_id`, `avatar_is_remote`, `avatar`, `aim`, `aim_is_public`, `msn`, `msn_is_public`, `icq`, `icq_is_public`, `yahoo`, `yahoo_is_public`, `website`, `location`, `bio`, `signature`, `fk_localAvatar_id`) VALUES
(1, 1, 0, 'D:\\Document\\Icon\\logo\\Abuledu.jpg', NULL, 0, 'fenouh_r@hotmail.com', 1, NULL, 0, 'psa@yahoo.fr', 1, 'www.psaep-caadp-mg.org', 'Antananarivo', 'za dia bandy ts mahay n''inin fa d manao fotsin', 'f.rakotonjanahary psaep-caadp-mg.org', NULL),
(3, 2, 0, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 3),
(5, 3, 0, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 4),
(7, 4, 0, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `documents`
--

CREATE TABLE IF NOT EXISTS `documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `date_upload` date NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_A2B07288A76ED395` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `documents`
--

INSERT INTO `documents` (`id`, `path`, `description`, `date_upload`, `user_id`) VALUES
(1, 'da4341e4564885404cae49d77b627a01.pdf', 'Premier doucmentaaaaa\r\nqfkdhsjfhjf dfqfd', '2012-07-09', 1),
(2, '', '<p>Document manadihaddy</p>', '2010-04-05', 1),
(3, '', '<p>doe managhiriah nahhhjf belkhh ahahihihfdh sqfsd</p>', '2014-03-07', 1),
(4, '0452aa23766002a8c077aeff457cc1ac.pdf', 'andra na andrahjy testa', '2012-06-07', 1);

-- --------------------------------------------------------

--
-- Structure de la table `fos_user`
--

CREATE TABLE IF NOT EXISTS `fos_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_profile_id` int(11) DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `registered_date` datetime DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebookId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_957A64793C94D82B` (`fk_profile_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Contenu de la table `fos_user`
--

INSERT INTO `fos_user` (`id`, `fk_profile_id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`, `registered_date`, `firstname`, `lastname`, `facebookId`) VALUES
(1, 1, 'psasuper', 'psasuper', 'psasuper@mada.com', 'psasuper@mada.com', 1, 'fl3ntmezapwgggo0gs8gw4kk444o08o', 'ssBW6S5CGiUTBJwQdqdc6oXdNPqwFVJCP6DLm8MRcVDEfuIGjaEXOKxk2VYK6sETHS5su/GzqKOWLOqmRLn6Dg==', '2012-12-25 07:00:35', 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:16:"ROLE_SUPER_ADMIN";}', 0, NULL, NULL, NULL, NULL, NULL),
(2, 3, 'psaadmin', 'psaadmin', 'psaadmin@mada.fr', 'psaadmin@mada.fr', 1, 'pp8cp69nw6s808og00g0gowso04k0kc', 'f+BYnSW9PaZApB+RnZCyD4S3F2D+b01r63fSiAWYiUa+rYKIrqI6wuJkphLsGDKxuqre8tLrskO2LqRXN8B99A==', '2012-12-25 06:37:16', 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:10:"ROLE_ADMIN";}', 0, NULL, NULL, NULL, NULL, NULL),
(3, 5, 'psauser', 'psauser', 'psauser@mada.com', 'psauser@mada.com', 1, 'i4791ry6zpk4o80gs08wk8gkcw8408k', 'ZpVQzqJPph1wDI4WRlGVe7hEHA50rKUorntg7gBGZjL6pvJw2Zd8KuatLiDp7o2Fey+w9oY5TjYrjtH7ADO9+A==', '2012-12-25 06:15:31', 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, NULL, NULL, NULL, NULL),
(4, 7, 'psautilisateur', 'psautilisateur', 'psautilisateur@hotmail.com', 'psautilisateur@hotmail.com', 1, '83fuz5tgs7k8kk8c8ksw0wcgowsk04w', 'wkuLsNa3jYygQ5mPuj2KGmMmUmIwQ8ffOZtWicVKGry2594vNp301i47hfTl0bhgUbf/SKpzqR/kJUUvSCL34w==', '2012-12-25 06:47:58', 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_message` datetime NOT NULL,
  `from_email` varchar(255) NOT NULL,
  `to_email` varchar(255) NOT NULL,
  `contenu` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `messages`
--

INSERT INTO `messages` (`id`, `date_message`, `from_email`, `to_email`, `contenu`) VALUES
(1, '2011-04-05 02:04:00', 'rabouda@gmail.com', 'ratou@gmail.com', 'sarisari zaritenana'),
(2, '2011-05-06 00:00:00', 'rabdddouda@gmail.com', 'ratoddu@gmail.com', 'sms gratos gatot'),
(3, '2012-01-01 00:00:00', 'rabddzzdouda@gmail.com', 'ratzzzou@gmail.com', 'qdfqsfd \r\nqfknhdsfhsdhf\r\nkldjfkjsdkfjs\r\ndljfldjslfdlkfkdfqddfqsdfqsdf'),
(4, '2007-01-01 00:00:00', 'rabddzzdouda@gmail.com', 'ratou@gmail.com', 'qdq fqsdfqsdfdfdfdf\r\ndfdfdffqqdfdf\r\n\r\ndfdfdffqqdfdfdfdfdffqqdfdf\r\ndfdfdffqqdfdfdfdfdffqqdfdf\r\nfqqdfdfsqdf'),
(5, '2012-12-12 08:14:23', 'worthcrey@gmail.com', 'psamada@gmail.com', 'huah bafze dshfjqhd qshdjfhqsd');

-- --------------------------------------------------------

--
-- Structure de la table `page_meta`
--

CREATE TABLE IF NOT EXISTS `page_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cle` varchar(255) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `page_meta`
--

INSERT INTO `page_meta` (`id`, `cle`, `value`) VALUES
(1, 'accueil-texte', '<p style="font-size: 16px; color: #faba04;"><span style="text-decoration: underline;">PSA Madagascar</span></p>\r\n<p><img src="/psa/web/images/tinyMCE/pics01.jpg" alt="" /></p>\r\n<p>Psa madagascar&nbsp; sqmdfjq sd qsmdfjq smdfjq smsqdj fmqsjdf qsmdfjq mj mqsjd mfq sjdfmqjsdfq dsmjf mqsdjfmqsd fqsjdfq j mqsjdf qms jdsfmqjsdfqsdfqsd jfq sdmfjqmsdfjmqsd fmqjs dfqjsmdfjqmsf qjsm jmj sdmfjqsmdjfmqsdjf mqsjd fmqjsdmfqsd qsdmjfqmsdfjqmsdfqsdfkjq mdf qmsjdfqsmjdfqsdf mqjs dfjqsdfjqsdfjqs dfmqs dmfjq sdmfq smdfj qmsdjfm qsdf qmsj mqsjdfmqsdf qsmdjf qmsdj fmqjsdmf qsfjqsdfqjsdf mqsjd fmqsjdfsdf</p>\r\n<p>&nbsp;</p>'),
(2, 'about', '<p>qui somme nous mnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ips sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur,ctetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis A quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam . qui dolorem ipsum quia dolor sit amet, conse. fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, velit, sed quia non num qsdfqsdf qsdfqs qsdfqsdfq sdf qsdfqsdf qsdfqsdfqsdfqsdfqsdf fenonantenaina rakotonjanahary</p>');

-- --------------------------------------------------------

--
-- Structure de la table `slide`
--

CREATE TABLE IF NOT EXISTS `slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `src` varchar(255) DEFAULT NULL,
  `tri` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `slide`
--

INSERT INTO `slide` (`id`, `src`, `tri`) VALUES
(1, 'images/fb704e7d9003533832157439af1c7ea6.jpg', 1),
(2, 'images/d5588f1032f2719c5c7a41cb58577f26.jpg', 2),
(3, 'images/362f9c905c4d3fe1e6472165458160c3.jpg', 3),
(4, 'images/206fde1ce13b341294b39a99991f40fc.jpg', 4);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `username_canonical` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_canonical` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D64992FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_8D93D649A0D96FBF` (`email_canonical`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`) VALUES
(1, 'psamada2012', 'psamada2012', 'psamada2012@gmail.com', 'psamada2012@gmail.com', 1, 'kadhbyyh3284kcskw0808cswg0k8g0c', '6KT3FJjsUzMxxbkX0IDp5WeRJjUPjF+50tIsspVyVw4MoaIX+uktWgUvPBONb/PGwjB7kGHxWdMimxBFJLQv6g==', '2012-12-19 04:26:45', 0, 0, NULL, '1ylsbakknluswww8wokcc8wck4koo4wcg4wkocg44sw4804884', NULL, 'a:1:{i:0;s:16:"ROLE_SUPER_ADMIN";}', 0, NULL);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `FK_BFDD3168A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `cc_component_attachment`
--
ALTER TABLE `cc_component_attachment`
  ADD CONSTRAINT `FK_3E30D3EE3BB9921A` FOREIGN KEY (`fk_owned_by_user_id`) REFERENCES `fos_user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `cc_forum_board`
--
ALTER TABLE `cc_forum_board`
  ADD CONSTRAINT `FK_CE330F5A7BB031D6` FOREIGN KEY (`fk_category_id`) REFERENCES `cc_forum_category` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_CE330F5ACD83D7D` FOREIGN KEY (`fk_last_post_id`) REFERENCES `cc_forum_post` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `cc_forum_draft`
--
ALTER TABLE `cc_forum_draft`
  ADD CONSTRAINT `FK_D019B2892D7D63E3` FOREIGN KEY (`fk_topic_id`) REFERENCES `cc_forum_topic` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_D019B289602E9349` FOREIGN KEY (`fk_attachment_id`) REFERENCES `cc_component_attachment` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_D019B289CEB06035` FOREIGN KEY (`fk_created_by_user_id`) REFERENCES `fos_user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_D019B289D5C4145B` FOREIGN KEY (`fk_board_id`) REFERENCES `cc_forum_board` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `cc_forum_karma`
--
ALTER TABLE `cc_forum_karma`
  ADD CONSTRAINT `FK_80ACFD2059A28AFF` FOREIGN KEY (`fk_rating_for_user_id`) REFERENCES `fos_user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_80ACFD20BBA63E00` FOREIGN KEY (`fk_post_id`) REFERENCES `cc_forum_post` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_80ACFD20F25DC488` FOREIGN KEY (`fk_rating_by_user_id`) REFERENCES `fos_user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `cc_forum_post`
--
ALTER TABLE `cc_forum_post`
  ADD CONSTRAINT `FK_3606FFC72AF06A63` FOREIGN KEY (`fk_locked_by_user_id`) REFERENCES `fos_user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_3606FFC72D7D63E3` FOREIGN KEY (`fk_topic_id`) REFERENCES `cc_forum_topic` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_3606FFC746B4308F` FOREIGN KEY (`fk_edited_by_user_id`) REFERENCES `fos_user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_3606FFC74F5AE4DA` FOREIGN KEY (`fk_deleted_by_user_id`) REFERENCES `fos_user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_3606FFC7602E9349` FOREIGN KEY (`fk_attachment_id`) REFERENCES `cc_component_attachment` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_3606FFC7CEB06035` FOREIGN KEY (`fk_created_by_user_id`) REFERENCES `fos_user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `cc_forum_registry`
--
ALTER TABLE `cc_forum_registry`
  ADD CONSTRAINT `FK_156659CE3BB9921A` FOREIGN KEY (`fk_owned_by_user_id`) REFERENCES `fos_user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `cc_forum_subscription`
--
ALTER TABLE `cc_forum_subscription`
  ADD CONSTRAINT `FK_F00B98B82D7D63E3` FOREIGN KEY (`fk_topic_id`) REFERENCES `cc_forum_topic` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_F00B98B83BB9921A` FOREIGN KEY (`fk_owned_by_user_id`) REFERENCES `fos_user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `cc_forum_topic`
--
ALTER TABLE `cc_forum_topic`
  ADD CONSTRAINT `FK_B25FA063C4F1A12` FOREIGN KEY (`fk_first_post_id`) REFERENCES `cc_forum_post` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_B25FA0645768453` FOREIGN KEY (`fk_stickied_by_user_id`) REFERENCES `fos_user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_B25FA064F5AE4DA` FOREIGN KEY (`fk_deleted_by_user_id`) REFERENCES `fos_user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_B25FA06CD83D7D` FOREIGN KEY (`fk_last_post_id`) REFERENCES `cc_forum_post` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_B25FA06D5A466FA` FOREIGN KEY (`fk_closed_by_user_id`) REFERENCES `fos_user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_B25FA06D5C4145B` FOREIGN KEY (`fk_board_id`) REFERENCES `cc_forum_board` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `cc_message_folder`
--
ALTER TABLE `cc_message_folder`
  ADD CONSTRAINT `FK_DA623A813BB9921A` FOREIGN KEY (`fk_owned_by_user_id`) REFERENCES `fos_user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `cc_message_message`
--
ALTER TABLE `cc_message_message`
  ADD CONSTRAINT `FK_C9E1FDF73BB9921A` FOREIGN KEY (`fk_owned_by_user_id`) REFERENCES `fos_user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_C9E1FDF7602E9349` FOREIGN KEY (`fk_attachment_id`) REFERENCES `cc_component_attachment` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_C9E1FDF777756ED2` FOREIGN KEY (`fk_folder_id`) REFERENCES `cc_message_folder` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_C9E1FDF7E34CC5D2` FOREIGN KEY (`fk_sent_to_user_id`) REFERENCES `fos_user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_C9E1FDF7ED3223` FOREIGN KEY (`fk_from_user_id`) REFERENCES `fos_user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `cc_message_registry`
--
ALTER TABLE `cc_message_registry`
  ADD CONSTRAINT `FK_2EB44AD53BB9921A` FOREIGN KEY (`fk_owned_by_user_id`) REFERENCES `fos_user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `cc_user_profile`
--
ALTER TABLE `cc_user_profile`
  ADD CONSTRAINT `FK_6A74B2835741EEB9` FOREIGN KEY (`fk_user_id`) REFERENCES `fos_user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_F85916A1CC933FA2` FOREIGN KEY (`fk_localAvatar_id`) REFERENCES `cc_component_attachment` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `FK_A2B07288A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `fos_user`
--
ALTER TABLE `fos_user`
  ADD CONSTRAINT `FK_957A64793C94D82B` FOREIGN KEY (`fk_profile_id`) REFERENCES `cc_user_profile` (`id`) ON DELETE SET NULL;
SET FOREIGN_KEY_CHECKS=1;


CREATE TABLE albums (id INT AUTO_INCREMENT NOT NULL, titre VARCHAR(255) NOT NULL, date_creation DATETIME NOT NULL, PRIMARY KEY(id)) ENGINE = InnoDB;
CREATE TABLE gallery (id INT AUTO_INCREMENT NOT NULL, album_id INT DEFAULT NULL, src VARCHAR(255) NOT NULL, PRIMARY KEY(id)) ENGINE = InnoDB



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
