# ************************************************************
# Sequel Pro SQL dump
# Version 5446
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: sql12.freemysqlhosting.net (MySQL 5.5.58-0ubuntu0.14.04.1)
# Database: sql12309919
# Generation Time: 2019-10-27 13:30:02 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table astros
# ------------------------------------------------------------

DROP TABLE IF EXISTS `astros`;

CREATE TABLE `astros` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `constellation_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `constellation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `constellation_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `astros` WRITE;
/*!40000 ALTER TABLE `astros` DISABLE KEYS */;

INSERT INTO `astros` (`id`, `constellation_name`, `constellation_date`, `constellation_detail`, `created_at`, `updated_at`)
VALUES
	(1,'牡羊座','2019-10-27 00:00:00','{\"all_fortune\":\"\\u6613\\u548c\\u4ed6\\u4eba\\u6469\\u64e6\\uff0c\\u8207\\u4eba\\u63a5\\u89f8\\u6642\\u76e1\\u91cf\\u5c0f\\u5fc3\\u8a00\\u8fad\\uff0c\\u4ee5\\u514d\\u8aaa\\u591a\\u932f\\u591a\\uff0c\\u5f71\\u97ff\\u5fc3\\u60c5\\uff1b\\u51fa\\u9580\\u76f8\\u89aa\\u524d\\u53ef\\u4e0d\\u8981\\u5fd8\\u4e86\\u597d\\u597d\\u6253\\u626e\\u4e00\\u756a\\uff0c\\u9047\\u5230\\u5fc3\\u5100\\u5c0d\\u8c61\\u7684\\u6a5f\\u6703\\u5f88\\u5927\\u54e6\\uff1b\\u82e5\\u9047\\u4eba\\u5411\\u4f60\\u501f\\u8cb8\\uff0c\\u8a18\\u5f97\\u7559\\u4e0b\\u6191\\u8b49\\uff0c\\u70ba\\u65e5\\u5f8c\\u514d\\u9664\\u4e0d\\u5fc5\\u8981\\u7684\\u9ebb\\u7169\\u3002\",\"all_fortune_star\":\"3\",\"love_fortune\":\"\\u6200\\u611b\\u904b\\u4e00\\u822c\\uff0c\\u5df2\\u5a5a\\u8005\\u5bb9\\u6613\\u56e0\\u70ba\\u5169\\u4eba\\u5728\\u82b1\\u9322\\u4e0a\\u7684\\u614b\\u5ea6\\u4e0d\\u540c\\uff0c\\u800c\\u8d77\\u722d\\u57f7\\uff0c\\u61c9\\u505a\\u597d\\u5354\\u8abf\\uff01\",\"love_fortune_star\":\"4\",\"career_fortune\":\"\\u7279\\u5225\\u5bb9\\u6613\\u53d7\\u5230\\u4ed6\\u4eba\\u7684\\u5f71\\u97ff\\uff0c\\u4e8b\\u5148\\u8a08\\u5283\\u597d\\u7684\\u4e8b\\u60c5\\u5728\\u5be6\\u884c\\u524d\\u53c8\\u958b\\u59cb\\u7336\\u8c6b\\uff0c\\u4e0d\\u65b7\\u8b8a\\u5316\\u3002\",\"career_star\":\"3\",\"money_fortune\":\"\\u8ca1\\u904b\\u4e0d\\u4f73\\uff0c\\u6613\\u56e0\\u53cd\\u8986\\u7336\\u7591\\u4e0d\\u5b9a\\u800c\\u932f\\u5931\\u8cfa\\u9322\\u6a5f\\u6703\\u3002\",\"money_star\":\"2\"}','2019-10-27 13:28:05','2019-10-27 13:28:05'),
	(2,'金牛座','2019-10-27 00:00:00','{\"all_fortune\":\"\\u96d9\\u4eba\\u611f\\u60c5\\u4e0d\\u65b7\\u6607\\u83ef\\uff0c\\u4e0d\\u59a8\\u7cbe\\u5fc3\\u6e96\\u5099\\u4e00\\u4e0b\\uff0c\\u71df\\u9020\\u4e00\\u500b\\u7f8e\\u9e97\\u7684\\u9a5a\\u559c\\u7d66\\u5c0d\\u65b9\\uff1b\\u9322\\u8ca1\\u4e0a\\u4eca\\u5929\\u4e0d\\u5b9c\\u8f15\\u8209\\u5984\\u52d5\\uff0c\\u60f3\\u60f3\\u9019\\u6bb5\\u6642\\u9593\\u7684\\u5f97\\u5931\\uff0c\\u70ba\\u81ea\\u5df1\\u5236\\u5b9a\\u4e00\\u500b\\u65b0\\u76ee\\u6a19\\uff1b\\u7d14\\u97f3\\u6a02\\u6703\\u8b93\\u6574\\u500b\\u4eba\\u90fd\\u5b89\\u975c\\u4e0b\\u4f86\\uff0c\\u975c\\u975c\\u7684\\u60f3\\u6709\\u6642\\u4e5f\\u662f\\u4e00\\u7a2e\\u5e78\\u798f\\u3002\",\"all_fortune_star\":\"4\",\"love_fortune\":\"\\u6843\\u82b1\\u6735\\u6735\\u958b\\u7684\\u4e00\\u5929\\uff0c\\u8207\\u7570\\u6027\\u670b\\u53cb\\u63a5\\u89f8\\u7684\\u6a5f\\u6703\\u591a\\u591a\\uff0c\\u958b\\u958b\\u5fc3\\u5fc3\\u7684\\u73a9\\u4e00\\u5929\\u5427\\uff01\",\"love_fortune_star\":\"5\",\"career_fortune\":\"\\u7e3d\\u6709\\u5fd9\\u4e0d\\u5b8c\\u7684\\u4e8b\\uff0c\\u5225\\u53ea\\u9867\\u8457\\u5f80\\u524d\\u885d\\uff0c\\u4e5f\\u7d66\\u81ea\\u5df1\\u5b89\\u6392\\u4e00\\u4e9b\\u5a1b\\u6a02\\u6d3b\\u52d5\\uff0c\\u653e\\u9b06\\u8eab\\u5fc3\\u3002\",\"career_star\":\"3\",\"money_fortune\":\"\\u5728\\u7406\\u8ca1\\u4e0a\\u6b20\\u7f3a\\u7406\\u667a\\uff0c\\u80e1\\u4e82\\u6574\\u9813\\uff0c\\u96dc\\u4e82\\u7121\\u7ae0\\uff0c\\u6613\\u7834\\u8ca1\\u3002\",\"money_star\":\"2\"}','2019-10-27 13:28:09','2019-10-27 13:28:09'),
	(3,'雙子座','2019-10-27 00:00:00','{\"all_fortune\":\"\\u6200\\u611b\\u4e2d\\u7684\\u60c5\\u4fb6\\u4e00\\u8d77\\u51fa\\u5916\\u904a\\u5c71\\u73a9\\u6c34\\u7684\\u540c\\u6642\\u4e0d\\u5fd8\\u60c5\\u8a71\\u7dbf\\u7dbf\\uff0c\\u8b93\\u4eba\\u6709\\u300c\\u53ea\\u7fa8\\u9d1b\\u9d26\\u4e0d\\u7fa8\\u4ed9\\u300d\\u7684\\u540c\\u611f\\u3002\\u70ba\\u535a\\u60c5\\u4eba\\u4e00\\u7b11\\uff0c\\u53ea\\u8981\\u662f\\u559c\\u6b61\\u7684\\u7269\\u54c1\\u90fd\\u6703\\u6beb\\u4e0d\\u7336\\u8c6b\\u7684\\u8cb7\\u4e0b\\u4f86\\uff0c\\u8377\\u5305\\u4e0d\\u65b7\\u7e2e\\u6c34\\u3002\",\"all_fortune_star\":\"3\",\"love_fortune\":\"\\u5fd9\\u88e1\\u5077\\u9592\\u8207\\u53e6\\u4e00\\u534a\\u804a\\u804a\\u5929\\u3001\\u958b\\u958b\\u73a9\\u7b11\\uff0c\\u65e2\\u958b\\u5fc3\\u53c8\\u589e\\u9032\\u611f\\u60c5\\uff1b\\u55ae\\u8eab\\u8005\\u6843\\u82b1\\u591a\\uff0c\\u61c9\\u614e\\u9078\\u5c0d\\u8c61\\u3002\",\"love_fortune_star\":\"4\",\"career_fortune\":\"\\u60c5\\u7dd2\\u7565\\u5fae\\u66b4\\u8e81\\uff0c\\u5bb9\\u6613\\u8207\\u4eba\\u7522\\u751f\\u5c0f\\u78e8\\u64e6\\uff0c\\u6e9d\\u901a\\u8a0e\\u8ad6\\u6642\\u76e1\\u91cf\\u4fdd\\u6301\\u51b7\\u975c\\u624d\\u597d\\uff01\",\"career_star\":\"3\",\"money_fortune\":\"\\u6709\\u4e0d\\u932f\\u6536\\u5165\\uff0c\\u9069\\u5408\\u85cf\\u79c1\\u623f\\u9322\\uff01\",\"money_star\":\"3\"}','2019-10-27 13:28:11','2019-10-27 13:28:11'),
	(4,'巨蟹座','2019-10-27 00:00:00','{\"all_fortune\":\"\\u8207\\u670b\\u53cb\\u4f86\\u5f80\\u751a\\u5bc6\\uff0c\\u8f15\\u9b06\\u7684\\u9592\\u804a\\u8b93\\u4eba\\u5fc3\\u60c5\\u6109\\u6085\\uff0c\\u4e5f\\u56e0\\u6b64\\u7d50\\u8b58\\u4e0d\\u5c11\\u7570\\u6027\\u670b\\u53cb\\u3002\\u5de5\\u4f5c\\u9032\\u5c55\\u9806\\u5229\\uff0c\\u96d6\\u7136\\u4e2d\\u9014\\u6703\\u9047\\u5230\\u4e00\\u4e9b\\u96e3\\u984c\\uff0c\\u4f46\\u5728\\u8cb4\\u4eba\\u7684\\u5354\\u52a9\\u4e0b\\u5713\\u6eff\\u89e3\\u6c7a\\u3002\\u6613\\u628a\\u9322\\u8ca1\\u82b1\\u5728\\u670b\\u53cb\\u8eab\\u4e0a\\uff0c\\u4f46\\u80fd\\u6536\\u7a6b\\u5230\\u53cb\\u8abc\\u8207\\u5feb\\u6a02\\u3002\",\"all_fortune_star\":\"3\",\"love_fortune\":\"\\u611b\\u60c5\\u7684\\u6c23\\u6c1b\\u9817\\u70ba\\u6d6a\\u6f2b\\uff0c\\u8207\\u6200\\u4eba\\u7d04\\u6703\\u6642\\u5148\\u628a\\u5de5\\u4f5c\\u653e\\u4e00\\u908a\\uff0c\\u4ee5\\u514d\\u5f71\\u97ff\\u4e86\\u6109\\u5feb\\u7684\\u5fc3\\u60c5\\u3002\",\"love_fortune_star\":\"3\",\"career_fortune\":\"\\u597d\\u904b\\u5e38\\u5149\\u9867\\uff0c\\u6709\\u4e0d\\u5c11\\u610f\\u5916\\u7684\\u9a5a\\u559c\\uff0c\\u5148\\u524d\\u4ed8\\u51fa\\u7684\\u52aa\\u529b\\u4e5f\\u5bb9\\u6613\\u770b\\u5230\\u6210\\u6548\\uff01\",\"career_star\":\"4\",\"money_fortune\":\"\\u6d88\\u8cbb\\u4e0a\\u7e3d\\u5f97\\u4e0d\\u5230\\u6709\\u6548\\u7684\\u63a7\\u5236\\uff0c\\u5f80\\u5f80\\u5728\\u6700\\u5f8c\\u4e00\\u523b\\u7336\\u8c6b\\uff0c\\u6253\\u6d88\\u7bc0\\u7d04\\u7684\\u5ff5\\u982d\\u3002\",\"money_star\":\"2\"}','2019-10-27 13:28:13','2019-10-27 13:28:13'),
	(5,'獅子座','2019-10-27 00:00:00','{\"all_fortune\":\"\\u8cc7\\u91d1\\u77ed\\u7f3a\\u6642\\u627f\\u53d7\\u5916\\u5728\\u58d3\\u529b\\u800c\\u4e0d\\u52d5\\u7528\\u5132\\u84c4\\u6216\\u6295\\u8cc7\\uff0c\\u5229\\u7528\\u58d3\\u529b\\u4f86\\u6fc0\\u767c\\u4f60\\u7684\\u8ca1\\u52d9\\u5929\\u8ce6\\uff0c\\u80fd\\u8b93\\u4f60\\u60f3\\u51fa\\u65b0\\u8fa6\\u6cd5\\u6399\\u5230\\u66f4\\u591a\\u7684\\u9322\\u4f86\\u652f\\u4ed8\\u5e33\\u55ae\\uff1b\\u5728\\u5916\\u4eba\\u770b\\u4f86\\u7d50\\u5408\\u4e0d\\u642d\\u914d\\u7684\\u4f60\\u5011\\u9762\\u81e8\\u9592\\u8a00\\u788e\\u8a9e\\u6642\\uff0c\\u66f4\\u61c9\\u6d3b\\u51fa\\u81ea\\u5df1\\u7684\\u7cbe\\u5f69\\uff1b\\u5c11\\u5403\\u71b1\\u6027\\u98df\\u7269\\uff0c\\u4ee5\\u514d\\u4e0a\\u706b\\u3002\",\"all_fortune_star\":\"4\",\"love_fortune\":\"\\u8981\\u61c2\\u5f97\\u63a7\\u5236\\u81ea\\u5df1\\u7684\\u611f\\u60c5\\uff0c\\u505a\\u5230\\u6536\\u653e\\u81ea\\u5982\\uff0c\\u8981\\u4e0d\\u7136\\u5f88\\u5bb9\\u6613\\u88ab\\u611f\\u60c5\\u652f\\u914d\\uff0c\\u8b93\\u4f60\\u7169\\u60f1\\u3002\",\"love_fortune_star\":\"3\",\"career_fortune\":\"\\u6709\\u6a5f\\u6703\\u53c3\\u52a0\\u5404\\u7a2e\\u91cd\\u5927\\u7684\\u6d3b\\u52d5\\uff0c\\u63a5\\u89f8\\u5230\\u8a31\\u591a\\u65b0\\u9bae\\u7684\\u4eba\\u548c\\u4e8b\\uff0c\\u8b93\\u4f60\\u6536\\u7a6b\\u9817\\u591a\\u3002\",\"career_star\":\"4\",\"money_fortune\":\"\\u8ca1\\u904b\\u4f73\\uff0c\\u6709\\u65b0\\u7684\\u6295\\u8cc7\\u7576\\u7136\\u4e0d\\u80fd\\u653e\\u904e\\uff0c\\u5728\\u65b0\\u9818\\u57df\\u4e2d\\u6703\\u8b93\\u4f60\\u6709\\u65b0\\u7684\\u767c\\u73fe\\u3002\",\"money_star\":\"4\"}','2019-10-27 13:28:15','2019-10-27 13:28:15'),
	(6,'處女座','2019-10-27 00:00:00','{\"all_fortune\":\"\\u4eca\\u5929\\u591a\\u8207\\u4eba\\u4e92\\u52d5\\uff0c\\u53c3\\u52a0\\u793e\\u5718\\u6d3b\\u52d5\\uff0c\\u6703\\u6709\\u597d\\u904b\\u964d\\u81e8\\u3002\\u4e0d\\u50c5\\u589e\\u9577\\u898b\\u8b58\\uff0c\\u9084\\u80fd\\u7d50\\u8b58\\u4e0d\\u5c11\\u65b0\\u670b\\u53cb\\uff0c\\u7372\\u5f97\\u4e0d\\u932f\\u7684\\u6295\\u8cc7\\u6a5f\\u6703\\u3002\\u55ae\\u8eab\\u8005\\u5728\\u670b\\u53cb\\u7684\\u64ae\\u5408\\u4e0b\\uff0c\\u8207\\u5f62\\u8c61\\u826f\\u597d\\u3001\\u53e3\\u624d\\u51fa\\u773e\\u7684\\u7570\\u6027\\u7d50\\u7de3\\uff0c\\u611f\\u60c5\\u53ef\\u671b\\u9032\\u4e00\\u6b65\\u767c\\u5c55\\u3002\",\"all_fortune_star\":\"5\",\"love_fortune\":\"\\u55ae\\u8eab\\u8005\\u591a\\u53c3\\u52a0\\u793e\\u5718\\u6d3b\\u52d5\\uff0c\\u5bb9\\u6613\\u611f\\u53d7\\u5230\\u7570\\u6027\\u6295\\u4f86\\u7684\\u5f37\\u70c8\\u96fb\\u6ce2\\uff1b\\u5df2\\u5a5a\\u8005\\u611f\\u60c5\\u751c\\u871c\\u3002\",\"love_fortune_star\":\"4\",\"career_fortune\":\"\\u884c\\u52d5\\u529b\\u5341\\u8db3\\uff0c\\u6709\\u5229\\u65bc\\u65b0\\u8a08\\u5283\\u7684\\u8fc5\\u901f\\u63a8\\u884c\\uff0c\\u5982\\u679c\\u4f60\\u9084\\u80fd\\u653e\\u958b\\u5fc3\\u80f8\\u63a5\\u53d7\\u4e0d\\u540c\\u610f\\u898b\\uff0c\\u6210\\u529f\\u7684\\u6a5f\\u7387\\u5c07\\u6703\\u66f4\\u5927\\u3002\",\"career_star\":\"4\",\"money_fortune\":\"\\u8ca1\\u904b\\u65fa\\u65fa\\u65e5\\uff0c\\u5f97\\u8ca1\\u7684\\u65b9\\u5f0f\\u5305\\u62ec\\u4e2d\\u734e\\u3001\\u5206\\u7d05\\u3001\\u6536\\u5230\\u79ae\\u7269\\u79ae\\u91d1\\u7b49\\u7b49\\u3002\\u6b63\\u8ca1\\u90e8\\u5206\\u7684\\u6536\\u7a6b\\u591a\\u5be1\\u5247\\u8207\\u5148\\u524d\\u7684\\u52aa\\u529b\\u6709\\u95dc\\u4fc2\\u3002\",\"money_star\":\"5\"}','2019-10-27 13:28:17','2019-10-27 13:28:17'),
	(7,'天秤座','2019-10-27 00:00:00','{\"all_fortune\":\"\\u4eca\\u5929\\u6709\\u6a5f\\u6703\\u53c3\\u52a0\\u5546\\u696d\\u805a\\u6703\\uff0c\\u56e0\\u8cb4\\u4eba\\u5f15\\u85a6\\u800c\\u7d50\\u8b58\\u6709\\u6b0a\\u6709\\u52e2\\u7684\\u4e0a\\u5c64\\u4eba\\u7269\\uff0c\\u4e5f\\u56e0\\u6b64\\u800c\\u7372\\u5f97\\u4e0d\\u932f\\u7684\\u5408\\u4f5c\\u6a5f\\u6703\\uff0c\\u6210\\u529f\\u7684\\u6a5f\\u7387\\u9ad8\\u3002\\u5728\\u805a\\u6703\\u4e2d\\u4e5f\\u8a8d\\u8b58\\u4e86\\u4e00\\u4e9b\\u65b0\\u670b\\u53cb\\uff0c\\u55ae\\u8eab\\u8005\\u6709\\u6a5f\\u6703\\u6311\\u9078\\u5230\\u4e0d\\u932f\\u7684\\u4ea4\\u5f80\\u5c0d\\u8c61\\u3002\",\"all_fortune_star\":\"3\",\"love_fortune\":\"\\u6843\\u82b1\\u7d1b\\u98db\\uff0c\\u611b\\u60c5\\u904b\\u5f37\\u3002\\u53ef\\u662f\\u4f60\\u5728\\u9078\\u64c7\\u4e0a\\u610f\\u5ff5\\u98c4\\u5ffd\\u8f49\\u8b8a\\uff0c\\u5bb9\\u6613\\u932f\\u904e\\u597d\\u6843\\u82b1\\u5594\\uff01\",\"love_fortune_star\":\"3\",\"career_fortune\":\"\\u6bd4\\u8f03\\u7c97\\u5fc3\\uff0c\\u53c8\\u60f3\\u8caa\\u5feb\\uff0c\\u5bb9\\u6613\\u6709\\u5c0f\\u5931\\u8aa4\\u3002\\u5176\\u5be6\\u4e8b\\u60c5\\u5f88\\u7c21\\u55ae\\uff0c\\u7a0d\\u5fae\\u7d30\\u5fc3\\u5c31\\u80fd\\u505a\\u5f97\\u5f88\\u597d\\u3002\",\"career_star\":\"3\",\"money_fortune\":\"\\u56e0\\u6df1\\u539a\\u7684\\u624b\\u8db3\\u4e4b\\u60c5\\u800c\\u5f97\\u5144\\u5f1f\\u59d0\\u59b9\\u7684\\u5e6b\\u52a9\\uff0c\\u7372\\u5f97\\u984d\\u5916\\u6536\\u5165\\u3002\",\"money_star\":\"4\"}','2019-10-27 13:28:19','2019-10-27 13:28:19'),
	(8,'天蠍座','2019-10-27 00:00:00','{\"all_fortune\":\"\\u8207\\u4eba\\u4ea4\\u6d41\\u7684\\u6642\\u5019\\u4e0d\\u8981\\u628a\\u81ea\\u5df1\\u7684\\u610f\\u8b58\\u5f37\\u52a0\\u7d66\\u4ed6\\u4eba\\uff0c\\u4e5f\\u5c31\\u80fd\\u7701\\u53bb\\u7121\\u8b02\\u7684\\u7d1b\\u722d\\u3002\\u5373\\u4f7f\\u73a9\\u4e9b\\u5c0f\\u724c\\u4e4b\\u985e\\u7684\\u904a\\u6232\\uff0c\\u4e5f\\u4e0d\\u53ef\\u6709\\u5927\\u6488\\u9322\\u8ca1\\u7684\\u5ff5\\u982d\\uff0c\\u7576\\u6210\\u7d14\\u5a1b\\u6a02\\uff0c\\u53cd\\u800c\\u8b93\\u4f60\\u8f15\\u9b06\\u8a31\\u591a\\u3002\\u9069\\u5408\\u807d\\u807d\\u8f15\\u67d4\\u6b61\\u5feb\\u7684\\u97f3\\u6a02\\uff0c\\u4f60\\u7684\\u5fc3\\u60c5\\u6703\\u76f8\\u7576\\u6109\\u6085\\u3002\",\"all_fortune_star\":\"3\",\"love_fortune\":\"\\u5fd9\\u65bc\\u61c9\\u4ed8\\u5de5\\u4f5c\\uff0c\\u8207\\u53e6\\u4e00\\u534a\\u7684\\u6e9d\\u901a\\u77ed\\u7f3a\\uff0c\\u611f\\u60c5\\u5bb9\\u6613\\u51fa\\u73fe\\u5371\\u6a5f\\uff1b\\u55ae\\u8eab\\u8005\\u5728\\u5de5\\u4f5c\\u4e2d\\u80fd\\u5f97\\u7570\\u6027\\u52a9\\u529b\\u3002\",\"love_fortune_star\":\"2\",\"career_fortune\":\"\\u71b1\\u5fc3\\u52a9\\u4eba\\u537b\\u5f97\\u4e0d\\u5230\\u611f\\u6fc0\\uff0c\\u53cd\\u800c\\u88ab\\u8aa4\\u6703\\uff0c\\u771f\\u662f\\u5403\\u529b\\u4e0d\\u8a0e\\u597d\\uff0c\\u9019\\u6703\\u8b93\\u4f60\\u611f\\u5230\\u5167\\u5fc3\\u9b31\\u60b6\\uff01\",\"career_star\":\"2\",\"money_fortune\":\"\\u5728\\u6295\\u8cc7\\u4e0a\\u8981\\u81bd\\u5927\\u5fc3\\u7d30\\uff0c\\u65b9\\u80fd\\u898b\\u6210\\u6548\\u3002\",\"money_star\":\"3\"}','2019-10-27 13:28:21','2019-10-27 13:28:21'),
	(9,'射手座','2019-10-27 00:00:00','{\"all_fortune\":\"\\u904b\\u52e2\\u4f73\\uff0c\\u9080\\u8acb\\u806f\\u7d61\\u4e0d\\u592a\\u5bc6\\u5207\\u7684\\u670b\\u53cb\\u4f86\\u5bb6\\u4e2d\\u505a\\u5ba2\\uff0c\\u53ef\\u4ee5\\u77ad\\u89e3\\u4e00\\u4e9b\\u5c0d\\u65b9\\u8fd1\\u671f\\u7684\\u751f\\u6d3b\\uff0c\\u589e\\u9032\\u96d9\\u65b9\\u7684\\u4ea4\\u6d41\\uff0c\\u63d0\\u5347\\u53cb\\u8abc\\u3002\\u4e5f\\u53ef\\u4ee5\\u8207\\u53cb\\u4eba\\u4e00\\u8d77\\u53bb\\u4ff1\\u6a02\\u90e8\\u6253\\u6253\\u4fdd\\u9f61\\u7403\\uff0c\\u505a\\u505a\\u5065\\u8eab\\u904b\\u52d5\\uff0c\\u7576\\u6210\\u662f\\u5a1b\\u6a02\\u7bc0\\u76ee\\u3002\",\"all_fortune_star\":\"4\",\"love_fortune\":\"\\u611b\\u60c5\\u751c\\u871c\\uff0c\\u5f7c\\u6b64\\u90fd\\u80fd\\u70ba\\u5c0d\\u65b9\\u4ed8\\u51fa\\uff1b\\u55ae\\u8eab\\u8005\\u5225\\u592a\\u6ce8\\u91cd\\u9eb5\\u5305\\uff0c\\u611b\\u60c5\\u9700\\u8981\\u4e00\\u9ede\\u611f\\u6027\\u3002\",\"love_fortune_star\":\"4\",\"career_fortune\":\"\\u885d\\u52c1\\u5341\\u8db3\\uff0c\\u5f88\\u5feb\\u5c31\\u80fd\\u8d85\\u8d8a\\u540c\\u4f34\\uff0c\\u5be6\\u529b\\u771f\\u662f\\u4e0d\\u53ef\\u5c0f\\u89b7\\u3002\\u5fd7\\u5728\\u5fc5\\u5f97\\uff0c\\u6613\\u7121\\u5f80\\u4e0d\\u5229\\u3002\",\"career_star\":\"4\",\"money_fortune\":\"\\u751f\\u6d3b\\u4e0a\\u6709\\u5962\\u4f88\\u6d6a\\u8cbb\\u3001\\u4e0d\\u77e5\\u7bc0\\u5236\\u7684\\u50be\\u5411\\u3002\",\"money_star\":\"3\"}','2019-10-27 13:28:23','2019-10-27 13:28:23'),
	(10,'摩羯座','2019-10-27 00:00:00','{\"all_fortune\":\"\\u9047\\u5230\\u8b93\\u4f60\\u5fc3\\u52d5\\u7684\\u5c0d\\u8c61\\uff0c\\u56e0\\u70ba\\u7f3a\\u4e4f\\u4fe1\\u5fc3\\u800c\\u9072\\u9072\\u6c92\\u6709\\u958b\\u53e3\\u6613\\u932f\\u5931\\u826f\\u7de3\\uff0c\\u52c7\\u6562\\u4e00\\u9ede\\uff0c\\u5176\\u5be6\\u5e78\\u798f\\u5df2\\u7d93\\u553e\\u624b\\u53ef\\u5f97\\u3002\\u798f\\u798d\\u76f8\\u4f9d\\uff0c\\u4e0d\\u8981\\u592a\\u60b2\\u89c0\\uff0c\\u8ca1\\u904b\\u4e0d\\u6fdf\\u8b93\\u4f60\\u61c2\\u5f97\\u4e86\\u958b\\u6e90\\u7bc0\\u6d41\\u7684\\u91cd\\u8981\\uff0c\\u9019\\u7a2e\\u6536\\u7a6b\\u4e5f\\u662f\\u4e00\\u7b46\\u4e0d\\u5c0f\\u7684\\u8ca1\\u5bcc\\u3002\",\"all_fortune_star\":\"3\",\"love_fortune\":\"\\u61c2\\u5f97\\u8207\\u4f34\\u4fb6\\u9032\\u884c\\u6df1\\u5c64\\u7684\\u5fc3\\u9748\\u6e9d\\u901a\\uff0c\\u611f\\u60c5\\u5f97\\u4ee5\\u6607\\u83ef\\uff1b\\u55ae\\u8eab\\u8005\\u5b64\\u7368\\u611f\\u8972\\u4e0a\\u5fc3\\u982d\\uff0c\\u60f3\\u627e\\u500b\\u4eba\\u966a\\u4f34\\u3002\",\"love_fortune_star\":\"3\",\"career_fortune\":\"\\u807d\\u5230\\u5225\\u4eba\\u5728\\u4f60\\u8033\\u908a\\u9592\\u8a00\\u9592\\u8a9e\\uff0c\\u4f46\\u4f60\\u80fd\\u4e00\\u7b11\\u800c\\u904e\\uff0c\\u4e0d\\u53bb\\u8a08\\u8f03\\uff0c\\u597d\\u7684\\u5fc3\\u614b\\u8b93\\u4f60\\u8212\\u670d\\u7684\\u5ea6\\u904e\\u4e00\\u5929\\uff01\",\"career_star\":\"3\",\"money_fortune\":\"\\u5b9c\\u9632\\u7cbe\\u795e\\u4e0d\\u4f73\\u800c\\u9020\\u6210\\u8ca1\\u7269\\u640d\\u5931\\u3002\",\"money_star\":\"2\"}','2019-10-27 13:28:25','2019-10-27 13:28:25'),
	(11,'水瓶座','2019-10-27 00:00:00','{\"all_fortune\":\"\\u5076\\u6709\\u4e8b\\u614b\\u7121\\u6cd5\\u638c\\u63a7\\u7684\\u7121\\u529b\\u611f\\uff0c\\u5bb6\\u4eba\\u3001\\u611b\\u4eba\\u71b1\\u5207\\u7684\\u95dc\\u61f7\\u6703\\u589e\\u5f37\\u4f60\\u7684\\u4fe1\\u5fc3\\uff1b\\u4e0d\\u8981\\u5728\\u610f\\u5728\\u7570\\u6027\\u9762\\u524d\\u8868\\u73fe\\u5f97\\u4e0d\\u597d\\uff0c\\u81ea\\u7136\\u7684\\u4f60\\u624d\\u66f4\\u6709\\u89aa\\u548c\\u529b\\uff1b\\u5c0f\\u5fc3\\u5206\\u8fa8\\u4f86\\u81ea\\u670b\\u53cb\\u7684\\u4fe1\\u606f\\uff0c\\u4ee5\\u514d\\u88ab\\u6d41\\u8a00\\u871a\\u8a9e\\u6240\\u8aa4\\u5c0e\\u800c\\u4f7f\\u9322\\u8ca1\\u7121\\u8f9c\\u53d7\\u640d\\u3002\",\"all_fortune_star\":\"3\",\"love_fortune\":\"\\u4f60\\u592a\\u6ce8\\u91cd\\u539f\\u5247\\uff0c\\u51e1\\u4e8b\\u592a\\u8b1b\\u7a76\\u689d\\u7406\\uff0c\\u7f3a\\u4e4f\\u4e86\\u9ede\\u6d6a\\u6f2b\\uff0c\\u5bb9\\u6613\\u5f15\\u8d77\\u5c0d\\u65b9\\u7684\\u4e0d\\u6eff\\u5537\\uff01\",\"love_fortune_star\":\"3\",\"career_fortune\":\"\\u559c\\u6b61\\u8ffd\\u6c42\\u65b0\\u9bae\\u523a\\u6fc0\\uff0c\\u5c0d\\u65b0\\u4e8b\\u7269\\u9817\\u611f\\u8208\\u8da3\\u3002\",\"career_star\":\"3\",\"money_fortune\":\"\\u8ca1\\u904b\\u5f31\\uff0c\\u7406\\u8ca1\\u4e0a\\u9084\\u9700\\u7406\\u667a\\u4e00\\u9ede\\u3002\",\"money_star\":\"2\"}','2019-10-27 13:28:26','2019-10-27 13:28:26'),
	(12,'雙魚座','2019-10-27 00:00:00','{\"all_fortune\":\"\\u4eca\\u65e5\\u4f60\\u5f88\\u6709\\u81ea\\u4fe1\\uff0c\\u6563\\u767c\\u51fa\\u4e00\\u7a2e\\u7368\\u7279\\u7684\\u9b45\\u529b\\uff0c\\u5c0d\\u7570\\u6027\\u7279\\u5225\\u6709\\u5438\\u5f15\\u529b\\uff0c\\u55ae\\u8eab\\u8005\\u53c3\\u52a0\\u805a\\u6703\\u53ef\\u671b\\u7372\\u5f97\\u611b\\u60c5\\uff1b\\u4f11\\u9592\\u5a1b\\u6a02\\u65b9\\u9762\\u7684\\u82b1\\u8cbb\\u5c07\\u4f54\\u64da\\u4f60\\u5927\\u90e8\\u5206\\u7684\\u958b\\u652f\\uff1b\\u5f9e\\u4e8b\\u670d\\u52d9\\u884c\\u696d\\u7684\\u4eba\\u8981\\u6ce8\\u610f\\u5c0d\\u5f85\\u9867\\u5ba2\\u7684\\u614b\\u5ea6\\uff0c\\u4e0d\\u8981\\u628a\\u79c1\\u4eba\\u7684\\u60c5\\u7dd2\\u5e36\\u5230\\u5de5\\u4f5c\\u4e2d\\u3002\",\"all_fortune_star\":\"4\",\"love_fortune\":\"\\u7570\\u6027\\u7de3\\u65fa\\u65fa\\u65e5\\uff0c\\u5927\\u591a\\u662f\\u5225\\u4eba\\u4e3b\\u52d5\\u4f86\\u63a5\\u8fd1\\u4f60\\u3002\",\"love_fortune_star\":\"5\",\"career_fortune\":\"\\u9047\\u5230\\u56f0\\u96e3\\uff0c\\u4e0d\\u53ef\\u7919\\u65bc\\u984f\\u9762\\u800c\\u4e0d\\u9858\\u5c0b\\u6c42\\u5e6b\\u52a9\\uff0c\\u6700\\u5f8c\\u5ef6\\u7de9\\u4e86\\u89e3\\u6c7a\\u6642\\u6a5f\\u66f4\\u7cdf\\u7cd5\\u5537\\uff01\",\"career_star\":\"3\",\"money_fortune\":\"\\u4e0d\\u5229\\u5c0f\\u984d\\u73fe\\u91d1\\u4ea4\\u6613\\u3001\\u5feb\\u901f\\u8cb7\\u8ce3\\u696d\\u3002\",\"money_star\":\"3\"}','2019-10-27 13:28:28','2019-10-27 13:28:28');

/*!40000 ALTER TABLE `astros` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_resets_table',1),
	(3,'2019_10_27_051812_create_astros_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'唐培捷','jie810731@gmail.com','$2y$10$JiK4r8SspRvrI90HaqMlNODE7naawDOeREcu1w2b0ganmmSIUaL0y','S4QIGvjtyNHgSfFUrNs2G8qGVJj4H7qs4DG8GjQxT5KeXH6fJW9c7OpziowH','2019-10-27 13:03:42','2019-10-27 13:03:42');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
