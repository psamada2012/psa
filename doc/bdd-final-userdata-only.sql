-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Client: 127.0.0.1
-- Généré le: Mar 25 Décembre 2012 à 19:06
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

--
-- Contenu de la table `cc_user_profile`
--

INSERT INTO `cc_user_profile` (`id`, `fk_user_id`, `avatar_is_remote`, `avatar`, `aim`, `aim_is_public`, `msn`, `msn_is_public`, `icq`, `icq_is_public`, `yahoo`, `yahoo_is_public`, `website`, `location`, `bio`, `signature`, `fk_localAvatar_id`) VALUES
(1, 1, 0, 'D:\\Document\\Icon\\logo\\Abuledu.jpg', NULL, 0, 'fenouh_r@hotmail.com', 1, NULL, 0, 'psa@yahoo.fr', 1, 'www.psaep-caadp-mg.org', 'Antananarivo', 'za dia bandy ts mahay n''inin fa d manao fotsin', 'f.rakotonjanahary psaep-caadp-mg.org', NULL),
(3, 2, 0, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 3),
(5, 3, 0, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 4),
(7, 4, 0, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL);

--
-- Contenu de la table `fos_user`
--

INSERT INTO `fos_user` (`id`, `fk_profile_id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`, `registered_date`, `firstname`, `lastname`, `facebookId`) VALUES
(1, 1, 'psasuper', 'psasuper', 'psasuper@mada.com', 'psasuper@mada.com', 1, 'fl3ntmezapwgggo0gs8gw4kk444o08o', 'ssBW6S5CGiUTBJwQdqdc6oXdNPqwFVJCP6DLm8MRcVDEfuIGjaEXOKxk2VYK6sETHS5su/GzqKOWLOqmRLn6Dg==', '2012-12-25 07:00:35', 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:16:"ROLE_SUPER_ADMIN";}', 0, NULL, NULL, NULL, NULL, NULL),
(2, 3, 'psaadmin', 'psaadmin', 'psaadmin@mada.fr', 'psaadmin@mada.fr', 1, 'pp8cp69nw6s808og00g0gowso04k0kc', 'f+BYnSW9PaZApB+RnZCyD4S3F2D+b01r63fSiAWYiUa+rYKIrqI6wuJkphLsGDKxuqre8tLrskO2LqRXN8B99A==', '2012-12-25 06:37:16', 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:10:"ROLE_ADMIN";}', 0, NULL, NULL, NULL, NULL, NULL),
(3, 5, 'psauser', 'psauser', 'psauser@mada.com', 'psauser@mada.com', 1, 'i4791ry6zpk4o80gs08wk8gkcw8408k', 'ZpVQzqJPph1wDI4WRlGVe7hEHA50rKUorntg7gBGZjL6pvJw2Zd8KuatLiDp7o2Fey+w9oY5TjYrjtH7ADO9+A==', '2012-12-25 06:15:31', 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, NULL, NULL, NULL, NULL),
(4, 7, 'psautilisateur', 'psautilisateur', 'psautilisateur@hotmail.com', 'psautilisateur@hotmail.com', 1, '83fuz5tgs7k8kk8c8ksw0wcgowsk04w', 'wkuLsNa3jYygQ5mPuj2KGmMmUmIwQ8ffOZtWicVKGry2594vNp301i47hfTl0bhgUbf/SKpzqR/kJUUvSCL34w==', '2012-12-25 06:47:58', 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, NULL, NULL, NULL, NULL);

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`) VALUES
(1, 'psamada2012', 'psamada2012', 'psamada2012@gmail.com', 'psamada2012@gmail.com', 1, 'kadhbyyh3284kcskw0808cswg0k8g0c', '6KT3FJjsUzMxxbkX0IDp5WeRJjUPjF+50tIsspVyVw4MoaIX+uktWgUvPBONb/PGwjB7kGHxWdMimxBFJLQv6g==', '2012-12-19 04:26:45', 0, 0, NULL, '1ylsbakknluswww8wokcc8wck4koo4wcg4wkocg44sw4804884', NULL, 'a:1:{i:0;s:16:"ROLE_SUPER_ADMIN";}', 0, NULL);
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
