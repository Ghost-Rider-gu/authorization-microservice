-- Table role
CREATE TABLE IF NOT EXISTS `role` (
                                    `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                    `description` varchar(255) DEFAULT NULL,
                                    `name` varchar(255) DEFAULT NULL,
                                    PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Table service
CREATE TABLE IF NOT EXISTS `service` (
                                       `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                       `description` varchar(255) DEFAULT NULL,
                                       `name` varchar(255) DEFAULT NULL,
                                       `state` bit(1) DEFAULT NULL,
                                       PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Table user
CREATE TABLE IF NOT EXISTS `user` (
                                    `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                    `created_at` datetime DEFAULT NULL,
                                    `deleted_at` datetime DEFAULT NULL,
                                    `login` varchar(255) DEFAULT NULL,
                                    `password` varchar(255) DEFAULT NULL,
                                    `updated_at` datetime DEFAULT NULL,
                                    PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Table user_role
CREATE TABLE IF NOT EXISTS `user_role` (
                                         `user_id` bigint(20) NOT NULL,
                                         `role_id` bigint(20) NOT NULL,
                                         PRIMARY KEY (`user_id`,`role_id`),
                                         KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Table user_service
CREATE TABLE IF NOT EXISTS `user_service` (
                                            `user_id` bigint(20) NOT NULL,
                                            `service_id` bigint(20) NOT NULL,
                                            PRIMARY KEY (`user_id`,`service_id`),
                                            KEY `FKh3j8qx28ovbd1pxoyetawnns6` (`service_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
