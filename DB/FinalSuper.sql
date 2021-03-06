-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema classroomdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `classroomdb` ;

-- -----------------------------------------------------
-- Schema classroomdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `classroomdb` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema superdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `superdb` ;

-- -----------------------------------------------------
-- Schema superdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `superdb` DEFAULT CHARACTER SET utf8 ;
USE `classroomdb` ;

-- -----------------------------------------------------
-- Table `seat`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `seat` ;

CREATE TABLE IF NOT EXISTS `seat` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `desk_id` INT NULL,
  `root_id` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `student`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `student` ;

CREATE TABLE IF NOT EXISTS `student` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `fist_name` VARCHAR(15) NOT NULL,
  `last_name` VARCHAR(15) NOT NULL,
  `seat_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_student_seat_idx` (`seat_id` ASC),
  CONSTRAINT `fk_student_seat`
    FOREIGN KEY (`seat_id`)
    REFERENCES `seat` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `superdb` ;

-- -----------------------------------------------------
-- Table `state`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `state` ;

CREATE TABLE IF NOT EXISTS `state` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `greatest_leader` VARCHAR(50) NULL,
  `founder` VARCHAR(45) NULL DEFAULT NULL,
  `population` INT(11) NULL,
  `language` VARCHAR(50) NULL,
  `religion` VARCHAR(50) NULL DEFAULT NULL,
  `legacy` VARCHAR(1000) NULL DEFAULT NULL,
  `date_founded` INT(11) NULL DEFAULT NULL,
  `date_ended` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8;

SET SQL_MODE = '';
DROP USER IF EXISTS classroomuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'classroomuser'@'localhost' IDENTIFIED BY 'classroomusser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'classroomuser'@'localhost';
GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'classroomuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `state`
-- -----------------------------------------------------
START TRANSACTION;
USE `superdb`;
INSERT INTO `state` (`id`, `name`, `greatest_leader`, `founder`, `population`, `language`, `religion`, `legacy`, `date_founded`, `date_ended`) VALUES (1, 'Achaemenid Empire', 'Darius I', 'Cyrus I', 30000000, 'Persian', 'Zoroastianism', 'The Achaemenid Empire left a lasting impression on the heritage and cultural identity of Asia, Europe, and the Middle East, and influenced the development and structure of future empires. In fact, the Greeks, and later on the Romans, adopted the best features of the Persian method of governing an empire.  George F. Hegel in his work  ‘The Philosophy of History’ introduces the Persian Empire as the \"first empire that passed away\" and its people as the \"first historical people\" in history. ', -550, -330);
INSERT INTO `state` (`id`, `name`, `greatest_leader`, `founder`, `population`, `language`, `religion`, `legacy`, `date_founded`, `date_ended`) VALUES (2, 'Roman Empire', 'Trajan', 'Augustus Caesar', 56000000, 'Latin', 'Traditional Roman Pantheon', 'Several states claimed to be the Roman Empire\'s successors after the fall of the Western Roman Empire. The Holy Roman Empire, an attempt to resurrect the Empire in the West, was established in 800 when Pope Leo III crowned Frankish King Charlemagne as Roman Emperor on Christmas Day, though the empire and the imperial office did not become formalized for some decades. After the fall of Constantinople, the Russian Tsardom , as inheritor of the Byzantine Empire\'s Orthodox Christian tradition, counted itself the Third Rome.', -27, 1453);
INSERT INTO `state` (`id`, `name`, `greatest_leader`, `founder`, `population`, `language`, `religion`, `legacy`, `date_founded`, `date_ended`) VALUES (3, 'British Empire', 'Victoria I', 'Victoria I', 458000000, 'English', 'Anglican Christian', 'The British Empire in 1901 was the largest empire the world had ever seen. It had an impact not just on Britain but vast areas of the world - an impact that remains with us today. As a result of the Empire, Britain became a net importer of food and raw materials, and therefore dependant on trade whilst every country that was part of the Empire was affected by it. Boundaries, settlement, economic development, cultural change, legal systems were all affected by the British Empire.', 1497, 1997);
INSERT INTO `state` (`id`, `name`, `greatest_leader`, `founder`, `population`, `language`, `religion`, `legacy`, `date_founded`, `date_ended`) VALUES (4, 'Mongolian Empire', 'Kublai Khan', 'Genghis Khan', 100000000, 'Mongolain', 'Pagan', 'The Mongol Empire — at its height the largest contiguous empire in history — had a lasting impact, unifying large regions. Some of these (such as eastern and western Russia and the western parts of China) remain unified today.', 1206, 1368);
INSERT INTO `state` (`id`, `name`, `greatest_leader`, `founder`, `population`, `language`, `religion`, `legacy`, `date_founded`, `date_ended`) VALUES (5, 'Qing Dynasty', 'Hongli', 'Hong Taiji', 400000000, 'Chinese', 'Confucianism', 'The achievements of the Chinese Qing Dynasty were substantial, but perhaps its most important legacy was building the basis for modern China itself.', 1644, 1912);
INSERT INTO `state` (`id`, `name`, `greatest_leader`, `founder`, `population`, `language`, `religion`, `legacy`, `date_founded`, `date_ended`) VALUES (6, 'Russian Empire', 'Peter I', 'Peter I', 125000000, 'Russian ', 'Orthodox Christian', 'The revolutionary upheaval of 1917-1919 destroyed the multinational Russian Empire and put a halt on an extension of its boundaries. Most parts of the Russian Empire turned into Soviet Republics, which later formed a union state, becoming the country of the Union of Soviet Socialist Republics', 1721, 1917);
INSERT INTO `state` (`id`, `name`, `greatest_leader`, `founder`, `population`, `language`, `religion`, `legacy`, `date_founded`, `date_ended`) VALUES (7, 'Mughal Empire', 'Akbar I', 'Babur', 158000000, 'Persian', 'Islam', 'While there were some other contributions from the Mughal Empire, the main areas of contributions were in architecture and in the emphasis on education.', 1526, 1857);
INSERT INTO `state` (`id`, `name`, `greatest_leader`, `founder`, `population`, `language`, `religion`, `legacy`, `date_founded`, `date_ended`) VALUES (8, 'Ottoman Empire', 'Suleiman I', 'Osman I', 35000000, 'Turkish', 'Islam', 'The most vivid legacies of the Ottoman history, without doubt, can be seen in the cultural sphere, especially in architecture. In particular, the grandeur Ottoman buildings in the capital of the Ottoman Empire, in İstanbul, still provide an identity and a source of inspiration for the country.', 1299, 1922);
INSERT INTO `state` (`id`, `name`, `greatest_leader`, `founder`, `population`, `language`, `religion`, `legacy`, `date_founded`, `date_ended`) VALUES (9, 'Macedonian Empire', 'Alexander ', 'Alexander III', 15000000, 'Greek', 'Greek Pantheon', 'After the assassination of Perdiccas in 321 BCE, Macedonian unity collapsed, and 40 years of war between “The Successors” ensued before the Hellenistic world settled into four stable power blocks: the Ptolemaic Kingdom of Egypt, the Seleucid Empire, the Kingdom of Pergamon in Asia Minor, and Macedon.', -335, -323);
INSERT INTO `state` (`id`, `name`, `greatest_leader`, `founder`, `population`, `language`, `religion`, `legacy`, `date_founded`, `date_ended`) VALUES (10, 'Spanish Empire', 'Charles V', 'Ferdinand/Isabella', 40000000, 'Spanish', 'Catholicism ', 'It’s easy to forget that Spain had one of the largest empires in world history. It shaped North America, Central and South America, North Africa, East Asia, the Caribbean, and once dominated Europe. ', 1492, 1975);

COMMIT;

