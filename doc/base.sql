/*
SQLyog Community Edition- MySQL GUI v7.02 
MySQL - 5.1.49-3 : Database - symfony
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`symfony` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `symfony`;

/*Table structure for table `articles` */

DROP TABLE IF EXISTS `articles`;

CREATE TABLE `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `titre` varchar(255) NOT NULL,
  `contenu` longtext NOT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `date_publication` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_BFDD3168A76ED395` (`user_id`),
  CONSTRAINT `FK_BFDD3168A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `articles` */

insert  into `articles`(`id`,`user_id`,`titre`,`contenu`,`image1`,`image2`,`date_publication`) values (3,1,'Activité rurale','dofolor sitametaPlacerat cras ultrices tristique. Parturient ut ultrices viverra fusce ultricies curae. Phasellus ultrices semper metus facilisis. Tristique quisque ante neque morbi. Luctus aenean risus etiam sodales lobortis lacinia. Hendrerit arcu interdum eu vivamus in nunc. Mollis tincidunt natoque libero posuere auctor quam aliquam. Pellentesque viverra vulputate enim. Aliquam erat volutpat. Pellentesque tristique ante ut risus. Quisque dictum. Integer nisl risus, sagittis convallis, rutrum id, elementum congue, nibh. Suspendisse dictum porta lectus. Donec placerat odio vel elit. Nullam ante orci, pellentesque eget, tempus quis, ultrices in, est. Curabitur sit amet nulla. Nam in massa. Sed vel tellus. Curabitur sem urna, consequat vel, suscipit in, mattis placerat, nulla. Sed ac leo. Pellentesque imperdiet. Donec placerat odio vel elit. Nullam ante orci, pellentesque eget, tempus quis, ultrices in, est. Curabitur sit amet nulla. Nam in massa.Placerat cras ultrices tristique. Parturient ut ultrices viverra fusce ultricies curae. Phasellus ultrices semper metus facilisis. Tristique quisque ante neque morbi. Luctus aenean risus etiam sodales lobortis lacinia. Hendrerit arcu interdum eu vivamus in nunc. Mollis tincidunt natoque libero posuere auctor quam aliquam. Pellentesque viverra vulputate enim. Aliquam erat volutpat. Pellentesque tristique ante ut risus. Quisque dictum. Integer nisl risus, sagittis convallis, rutrum id, elementum congue, nibh. Suspendisse dictum porta lectus. Donec placerat odio vel elit. Nullam ante orci, pellentesque eget, tempus quis, ultrices in, est. Curabitur sit amet nulla. Nam in massa. Sed vel tellus. Curabitur sem urna, consequat vel, suscipit in, mattis placerat, nulla. Sed ac leo. Pellentesque imperdiet. Donec placerat odio vel elit. Nullam ante orci, pellentesque eget, tempus quis, ultrices in, est. Curabitur sit amet nulla. Nam in massa','images/5ca10c6ddfc7089c45fc139df8993c6b.jpg','images/38a4b48684245beceaca537f08cfbe20.jpg','2010-05-05 05:03:00'),(4,1,'manaraka','ballnabnanklna dqfsdfsdfsqdfsdfsdfsdf\r\nsqdfsdfsdfsdfd\r\nfsdfsdfsdf\r\ndsfsdfsdfsdf\r\nsdsfsdfsdfsdf\r\nsdfsdfsdfsdf\r\ndannalnlna','images/483b8693df78b6c923a1633c6c344c2c.jpg',NULL,'2007-01-01 00:00:00'),(5,1,'nyvaouvao','mididma gasecear dorloz\r\nsita maenae tematat tama','images/51f8425c4c7dba6a3de7c492b6b57c02.jpg',NULL,'2015-01-01 00:00:00'),(6,1,'remenaboula','hia ny ramenaboula tao atri moihe','C:\\xampp\\tmp\\php274.tmp','C:\\xampp\\tmp\\php275.tmp','2013-01-01 00:00:00'),(7,1,'lava be ny conteny','omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ips sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur,ctetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis A quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam . qui dolorem ipsum quia dolor sit amet, conse. fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, velit, sed quia non numquam eius modi tempora','C:\\xampp\\tmp\\php29D.tmp','C:\\xampp\\tmp\\php29E.tmp','2011-05-09 00:00:00'),(8,1,'POLITINGINA','omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ips sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur,ctetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis A quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam . qui dolorem ipsum quia dolor sit amet, conse. fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, velit, sed quia non numquam eius modi tempora','images/cbe7fd77b54d8dd1f251400b2e17bf4d.jpg','images/f19bb8dee1bf90d9a09044690c223431.jpg','2013-01-01 00:00:00'),(9,1,'POLITINGINA2','omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ips sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur,ctetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis A quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam . qui dolorem ipsum quia dolor sit amet, conse. fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, velit, sed quia non numquam eius modi tempora','images/de175907f6dffff2576ffba5eb524d5c.jpg','images/fce57f047326a6795b3c4e09bc1a40c1.jpg','2011-04-27 00:00:00'),(10,1,'POLITINGINA3','omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ips sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur,ctetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis A quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam . qui dolorem ipsum quia dolor sit amet, conse. fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, velit, sed quia non numquam eius modi tempora','images/4f8d9eccd468e1bd1484903680160a8e.jpg',NULL,'2012-05-14 16:13:00'),(11,1,'Dernier ligne droite pour 2012','kjdhqjh qkhjqj fqjkjd fqkjf qjkdq\r\ndfqhdkjfdfqdf\r\nfdfjdqsfjdfjksjfkjdsfdjfkjqsf\r\nqfqkfklqsdjfjqljlfq\r\nfqkdfjldfkdjfkjdfjkdjfksdjf\r\ndffklsdjfdfldjlkfldf\r\ndfkzjkfhekhfehhfhkqz\r\njoahozqghojijrogazeg\r\ngazegkpjzlagjkajkgkegklazega\r\ngkzheughiehgiozajgiazkpgea','images/161d28164ecf75149057bb8cd79c4e49.jpg',NULL,'2013-05-05 00:00:00');

/*Table structure for table `documents` */

DROP TABLE IF EXISTS `documents`;

CREATE TABLE `documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `date_upload` date NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_A2B07288A76ED395` (`user_id`),
  CONSTRAINT `FK_A2B07288A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `documents` */

insert  into `documents`(`id`,`path`,`description`,`date_upload`,`user_id`) values (1,'da4341e4564885404cae49d77b627a01.pdf','Premier doucmentaaaaa\r\nqfkdhsjfhjf dfqfd','2012-07-09',1),(2,'2fa14886990fa60227d6f62e41e74ebf.pdf','Document manadihaddy','2010-04-05',1),(3,'2d36208fff66f9173b369006dbe01bd7.doc','doe managhiriah nahhhjf belkhh ahahihihfdh','2014-03-07',1),(4,'0452aa23766002a8c077aeff457cc1ac.pdf','andra na andrahjy testa','2012-06-07',1);

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_message` datetime NOT NULL,
  `from_email` varchar(255) NOT NULL,
  `to_email` varchar(255) NOT NULL,
  `contenu` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `messages` */

insert  into `messages`(`id`,`date_message`,`from_email`,`to_email`,`contenu`) values (1,'2011-04-05 02:04:00','rabouda@gmail.com','ratou@gmail.com','sarisari zaritenana'),(2,'2011-05-06 00:00:00','rabdddouda@gmail.com','ratoddu@gmail.com','sms gratos gatot'),(3,'2012-01-01 00:00:00','rabddzzdouda@gmail.com','ratzzzou@gmail.com','qdfqsfd \r\nqfknhdsfhsdhf\r\nkldjfkjsdkfjs\r\ndljfldjslfdlkfkdfqddfqsdfqsdf'),(4,'2007-01-01 00:00:00','rabddzzdouda@gmail.com','ratou@gmail.com','qdq fqsdfqsdfdfdfdf\r\ndfdfdffqqdfdf\r\n\r\ndfdfdffqqdfdfdfdfdffqqdfdf\r\ndfdfdffqqdfdfdfdfdffqqdfdf\r\nfqqdfdfsqdf');

/*Table structure for table `page_meta` */

DROP TABLE IF EXISTS `page_meta`;

CREATE TABLE `page_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cle` varchar(255) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `page_meta` */

insert  into `page_meta`(`id`,`cle`,`value`) values (1,'accueil-texte','mnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ips sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur,ctetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis A quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam . qui dolorem ipsum quia dolor sit amet, conse. fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, velit, sed quia non num'),(2,'about','qui somme nous mnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ips sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur,ctetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis A quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam . qui dolorem ipsum quia dolor sit amet, conse. fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, velit, sed quia non num');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`username_canonical`,`email`,`email_canonical`,`enabled`,`salt`,`password`,`last_login`,`locked`,`expired`,`expires_at`,`confirmation_token`,`password_requested_at`,`roles`,`credentials_expired`,`credentials_expire_at`) values (1,'psamada2012','psamada2012','psamada2012@gmail.com','psamada2012@gmail.com',1,'kadhbyyh3284kcskw0808cswg0k8g0c','6KT3FJjsUzMxxbkX0IDp5WeRJjUPjF+50tIsspVyVw4MoaIX+uktWgUvPBONb/PGwjB7kGHxWdMimxBFJLQv6g==','2012-11-29 13:40:34',0,0,NULL,'1ylsbakknluswww8wokcc8wck4koo4wcg4wkocg44sw4804884',NULL,'a:0:{}',0,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
