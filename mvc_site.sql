CREATE DATABASE mvc_site CHARACTER SET = 'utf8' COLLATE = 'utf8_general_ci';
CREATE USER 'mvc'@localhost IDENTIFIED BY 'userMvc01';
GRANT ALL PRIVILEGES ON mvc_site.* TO 'mvc'@localhost IDENTIFIED BY 'userMvc01';
FLUSH PRIVILEGES;
-- SHOW GRANTS FOR 'mvc'@localhost;

CREATE TABLE `mvc_site`.`news` ( `id` INT(11) NOT NULL AUTO_INCREMENT , `title` VARCHAR(255) NOT NULL , `date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , `short_content` TEXT NOT NULL , `content` TEXT NOT NULL , `author_name` VARCHAR(255) NOT NULL , `preview` VARCHAR(255) NOT NULL , `type` VARCHAR(50) NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;

INSERT INTO `news` (`id`, `title`, `date`, `short_content`, `content`, `author_name`, `preview`, `type`) VALUES (NULL, 'Doctor want to be paid to talk to patients online', current_timestamp(), 'Take a look at the similarittiee...', 'This post is about doctors, seems they don\\\'t realize that\\\'s happens...', 'JohnSmith', 'none', 'type');
INSERT INTO `news` (`id`, `title`, `date`, `short_content`, `content`, `author_name`, `preview`, `type`) VALUES (NULL, 'Supreme court decides fate of health law, again.', current_timestamp(), 'The supreme court heard arguments in kingv. Burwell, the blockbuster health.', 'This is main content of this post.', 'Burger King', 'none', 'Burger health');
