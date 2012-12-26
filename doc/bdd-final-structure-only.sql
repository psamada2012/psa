-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Client: 127.0.0.1
-- Généré le: Mar 25 Décembre 2012 à 19:05
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
