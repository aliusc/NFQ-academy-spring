/*
Navicat MySQL Data Transfer

Source Server         : spring
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db_nfq_spring

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-02-13 14:55:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbl_author`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_author`;
CREATE TABLE `tbl_author` (
  `author_id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `author_name` varchar(50) NOT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_author
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_book`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_book`;
CREATE TABLE `tbl_book` (
  `book_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `book_name` varchar(255) NOT NULL COMMENT 'knygos pavadinimas',
  `book_author` varchar(255) NOT NULL,
  `book_genre` varchar(255) NOT NULL,
  `book_published` date NOT NULL COMMENT 'Leidimo data',
  PRIMARY KEY (`book_id`),
  KEY `book_name` (`book_name`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_book
-- ----------------------------
INSERT INTO `tbl_book` VALUES ('5', 'Killing Reagan: The Violent Assault That Changed a Presidency', 'Bill O\'Reilly, Martin Dugard', 'Biographies &amp; Memoirs', '2015-01-01');
INSERT INTO `tbl_book` VALUES ('6', 'Victoria: The Queen: An Intimate Biography of the Woman Who Ruled an Empire', 'Deckle Edge', 'Biographies &amp; Memoirs', '2016-01-01');
INSERT INTO `tbl_book` VALUES ('7', 'The True Flag: Theodore Roosevelt, Mark Twain, and the Birth of American Empire', 'Stephen Kinzer', 'Politics &amp; Social Sciences', '2017-01-01');
INSERT INTO `tbl_book` VALUES ('8', 'Hero of the Empire: The Boer War, a Daring Escape, and the Making of Winston Churchill', 'Candice Millard', 'Biographies &amp; Memoirs', '2016-01-01');
INSERT INTO `tbl_book` VALUES ('9', 'The Gene: An Intimate History', 'Siddhartha Mukherjee', 'Medicine &amp; Health Sciences', '2016-01-01');
INSERT INTO `tbl_book` VALUES ('10', 'White Trash: The 400-Year Untold History of Class in America', 'Nancy Isenberg', 'History', '2016-01-01');
INSERT INTO `tbl_book` VALUES ('11', 'A World in Disarray: American Foreign Policy and the Crisis of the Old Order', 'Richard Haass', 'Politics &amp; Social Sciences', '2017-01-01');
INSERT INTO `tbl_book` VALUES ('12', 'The Lost City of the Monkey God: A True Story', 'Douglas Preston', 'History', '2017-01-01');
INSERT INTO `tbl_book` VALUES ('13', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 'History', '2015-01-01');
INSERT INTO `tbl_book` VALUES ('14', 'Hidden Figures: The American Dream and the Untold Story of the Black Women Mathematicians Who Helped Win the Space Race', 'Margot Lee Shetterly', 'Science &amp; Math', '2016-01-01');
INSERT INTO `tbl_book` VALUES ('15', 'Between the World and Me', 'Ta-Nehisi Coates', 'Biographies &amp; Memoirs', '2015-01-01');
INSERT INTO `tbl_book` VALUES ('16', 'Big Agenda: President Trump’s Plan to Save America', 'David Horowitz', 'Politics &amp; Social Sciences', '2017-01-01');
INSERT INTO `tbl_book` VALUES ('17', 'Happy Valentine\'s Day, Mouse! (If You Give...)', 'Laura Numeroff, Felicia Bond', 'Children\'s Books', '2009-01-01');
INSERT INTO `tbl_book` VALUES ('18', 'First 100 Words', 'Roger Priddy', 'Children\'s Books', '2011-01-01');
INSERT INTO `tbl_book` VALUES ('19', 'The Whole30: The 30-Day Guide to Total Health and Food Freedom', 'Melissa Hartwig, Dallas Hartwig', 'Health, Fitness &amp; Dieting', '2015-01-01');
INSERT INTO `tbl_book` VALUES ('20', 'The Four Agreements: A Practical Guide to Personal Freedom (A Toltec Wisdom Book)', 'Don Miguel Ruiz, Janet Mills', 'Politics &amp; Social Sciences', '1997-01-01');
INSERT INTO `tbl_book` VALUES ('21', 'A Man Called Ove: A Novel', 'Fredrik Backman', 'Literature &amp; Fiction', '2015-01-01');
INSERT INTO `tbl_book` VALUES ('22', 'Lincoln in the Bardo: A Novel', 'George Saunders', 'Literature &amp; Fiction', '2017-01-01');
INSERT INTO `tbl_book` VALUES ('23', 'The 5 Love Languages: The Secret to Love that Lasts', 'Gary Chapman', 'Self-Help', '2015-01-01');
INSERT INTO `tbl_book` VALUES ('24', 'Milk and Honey', 'Rupi Kaur', 'Romance', '2015-01-01');
INSERT INTO `tbl_book` VALUES ('25', 'The Shack: Where Tragedy Confronts Eternity', 'William P. Young', 'Reference', '2007-01-01');
INSERT INTO `tbl_book` VALUES ('26', 'The Handmaid\'s Tale', 'Margaret Atwood', 'Science Fiction &amp; Fantasy', '1998-01-01');
INSERT INTO `tbl_book` VALUES ('27', 'Hillbilly Elegy: A Memoir of a Family and Culture in Crisis', 'J. D. Vance', 'Politics &amp; Social Sciences', '2016-01-01');
INSERT INTO `tbl_book` VALUES ('28', 'My Fuzzy Valentine (Sesame Street)', 'Naomi Kleinberg', 'Children\'s Books', '2005-01-01');
INSERT INTO `tbl_book` VALUES ('29', 'Norse Mythology', 'Neil Gaiman', 'Literature &amp; Fiction', '2017-01-01');
INSERT INTO `tbl_book` VALUES ('30', 'Llama Llama I Love You', 'Anna Dewdney', 'Children\'s Books', '2014-01-01');
INSERT INTO `tbl_book` VALUES ('31', '1984 (Signet Classics)', 'George Orwell', 'Humor &amp; Entertainment', '1950-01-01');
INSERT INTO `tbl_book` VALUES ('32', 'The Lose Your Belly Diet: Change Your Gut, Change Your Life', 'Travis Stork', 'Health, Fitness &amp; Dieting', '2016-01-01');
INSERT INTO `tbl_book` VALUES ('33', 'Pete the Cat: Valentine\'s Day Is Cool', 'James Dean', 'Children\'s Books', '2013-01-01');
INSERT INTO `tbl_book` VALUES ('34', 'The Legend of Zelda: Breath of the Wild: The Complete Official Guide Collector\'s Edition', 'Piggyback', 'Humor &amp; Entertainment', '2017-01-01');
INSERT INTO `tbl_book` VALUES ('35', 'Love from The Very Hungry Caterpillar', 'Eric Carle', 'Children\'s Books', '2015-01-01');
INSERT INTO `tbl_book` VALUES ('36', 'How to Win Friends &amp; Influence People', 'Dale Carnegie', 'Self-Help', '1998-01-01');
INSERT INTO `tbl_book` VALUES ('37', 'Where Is Baby\'s Valentine?: A Lift-the-Flap Book', 'Karen Katz', 'Children\'s Books', '2006-01-01');
INSERT INTO `tbl_book` VALUES ('38', 'The Going-To-Bed Book', 'Sandra Boynton', 'Children\'s Books', '1982-01-01');
INSERT INTO `tbl_book` VALUES ('39', 'Hit Makers: The Science of Popularity in an Age of Distraction', 'Derek Thompson', 'Business &amp; Money', '2017-01-01');
INSERT INTO `tbl_book` VALUES ('40', 'The Little Book of Hygge: Danish Secrets to Happy Living', 'Meik Wiking', 'Health, Fitness &amp; Dieting', '2017-01-01');
INSERT INTO `tbl_book` VALUES ('41', 'The Alpha Female\'s Guide to Men and Marriage: How Love Works', 'Suzanne Venker', 'Parenting &amp; Relationships', '2017-01-01');
INSERT INTO `tbl_book` VALUES ('42', 'It Can\'t Happen Here (Signet Classics)', 'Sinclair Lewis', 'Literature &amp; Fiction', '2014-01-01');
INSERT INTO `tbl_book` VALUES ('43', 'The Subtle Art of Not Giving a F*ck: A Counterintuitive Approach to Living a Good Life', 'Mark Manson', 'Self-Help', '2016-01-01');
INSERT INTO `tbl_book` VALUES ('44', 'Fancy Nancy: Heart to Heart', 'Jane O\'Connor', 'Children\'s Books', '2009-01-01');
INSERT INTO `tbl_book` VALUES ('45', 'You Are a Badass: How to Stop Doubting Your Greatness and Start Living an Awesome Life', 'Jen Sincero', 'Self-Help', '2013-01-01');
INSERT INTO `tbl_book` VALUES ('47', 'Alchemy of Herbs: Transform Everyday Ingredients into Foods and Remedies That Heal', 'Rosalee de la Forêt', 'Medical Books', '2017-01-01');
INSERT INTO `tbl_book` VALUES ('48', 'The Instant Pot® Electric Pressure Cooker Cookbook: Easy Recipes for Fast &amp; Healthy Meals', 'Laurel Randolph', 'Cookbooks, Food &amp; Wine', '2016-01-01');
INSERT INTO `tbl_book` VALUES ('49', 'Basketball (and Other Things): A Collection of Questions Asked, Answered, Illustrated', 'Shea Serrano', 'Sports &amp; Outdoors', '2017-01-01');
INSERT INTO `tbl_book` VALUES ('50', 'Tools of Titans: The Tactics, Routines, and Habits of Billionaires, Icons, and World-Class Performers', 'Timothy Ferriss', 'Business &amp; Money', '2016-01-01');
INSERT INTO `tbl_book` VALUES ('51', 'Junie B. Jones and the Mushy Gushy Valentime (Junie B. Jones #14)', 'Barbara Park', 'Children\'s Books', '1999-01-01');
INSERT INTO `tbl_book` VALUES ('52', 'Roses Are Pink, Your Feet Really Stink', 'Diane deGroat', 'Children\'s Books', '1997-01-01');
INSERT INTO `tbl_book` VALUES ('53', 'Dangerous', 'Milo Yiannopoulos', 'Politics &amp; Social Sciences', '2017-01-01');
INSERT INTO `tbl_book` VALUES ('54', 'Giraffes Can\'t Dance', 'Giles Andreae', 'Children\'s Books', '2012-01-01');
INSERT INTO `tbl_book` VALUES ('55', 'Happy Valentine\'s Day, Curious George', 'N. Di Angelo', 'Children\'s Books', '2011-01-01');
INSERT INTO `tbl_book` VALUES ('56', 'The Wonderful Things You Will Be', 'Emily Winfield Martin', 'Children\'s Books', '2015-01-01');
INSERT INTO `tbl_book` VALUES ('57', 'The Life-Changing Magic of Tidying Up: The Japanese Art of Decluttering and Organizing', 'Marie Kondo', 'Religion &amp; Spirituality', '2014-01-01');
INSERT INTO `tbl_book` VALUES ('58', 'Uninvited: Living Loved When You Feel Less Than, Left Out, and Lonely', 'Lysa TerKeurst', 'Religion &amp; Spirituality', '2016-01-01');
INSERT INTO `tbl_book` VALUES ('59', 'King\'s Cage (Red Queen)', 'Victoria Aveyard', 'Fantasy', '2017-01-01');
INSERT INTO `tbl_book` VALUES ('60', 'All the Missing Girls: A Novel', 'Megan Miranda', 'Mystery, Thriller &amp; Suspense', '2017-01-01');

-- ----------------------------
-- Table structure for `tbl_book_author_link`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_book_author_link`;
CREATE TABLE `tbl_book_author_link` (
  `authorlink_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `authorlink_book_id` int(10) unsigned NOT NULL,
  `authorlink_author_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`authorlink_id`),
  UNIQUE KEY `authorlink_book_id` (`authorlink_book_id`,`authorlink_author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_book_author_link
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_book_genre_link`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_book_genre_link`;
CREATE TABLE `tbl_book_genre_link` (
  `genrelink_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `genrelink_book_id` int(10) unsigned NOT NULL,
  `genrelink_genre_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`genrelink_id`),
  UNIQUE KEY `genrelink_book_id` (`genrelink_book_id`,`genrelink_genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_book_genre_link
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_genre`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_genre`;
CREATE TABLE `tbl_genre` (
  `genre_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(255) NOT NULL COMMENT 'žanro pavadinimas',
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_genre
-- ----------------------------
INSERT INTO `tbl_genre` VALUES ('1', 'Fantastika');
