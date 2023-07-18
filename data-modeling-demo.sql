CREATE TABLE `Users` (
	`user_id` serial NOT NULL AUTO_INCREMENT,
	`username` varchar(30) NOT NULL UNIQUE,
	`first_name` varchar(100) NOT NULL,
	`email` varchar(100) NOT NULL UNIQUE,
	`password` varchar(32) NOT NULL,
	PRIMARY KEY (`user_id`)
);

CREATE TABLE `UserDetail` (
	`user_detail_id` serial NOT NULL AUTO_INCREMENT,
	`user_id` INT NOT NULL,
	`phone_number` INT,
	PRIMARY KEY (`user_detail_id`)
);

CREATE TABLE `Posts` (
	`post_id` serial NOT NULL AUTO_INCREMENT,
	`user_id` INT NOT NULL,
	`body` varchar(255),
	`picture_url` TEXT,
	PRIMARY KEY (`post_id`)
);

CREATE TABLE `Comments` (
	`comment_id` serial NOT NULL AUTO_INCREMENT,
	`user_id` INT NOT NULL,
	`post_id` INT NOT NULL,
	`body` varchar(255) NOT NULL,
	PRIMARY KEY (`comment_id`)
);

ALTER TABLE `UserDetail` ADD CONSTRAINT `UserDetail_fk0` FOREIGN KEY (`user_id`) REFERENCES `Users`(`user_id`);

ALTER TABLE `Posts` ADD CONSTRAINT `Posts_fk0` FOREIGN KEY (`user_id`) REFERENCES `Users`(`user_id`);

ALTER TABLE `Comments` ADD CONSTRAINT `Comments_fk0` FOREIGN KEY (`user_id`) REFERENCES `Users`(`user_id`);

ALTER TABLE `Comments` ADD CONSTRAINT `Comments_fk1` FOREIGN KEY (`post_id`) REFERENCES `Posts`(`post_id`);





