-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 14, 2022 at 01:15 PM
-- Server version: 8.0.27-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myDB`
--
CREATE DATABASE IF NOT EXISTS `myDB` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `myDB`;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `city`, `country`) VALUES
(1, 'Alfreds Futterkiste', 'Futterkiste', 'Germany'),
(2, 'Ana Trujillo Emparedados y helados', 'Trujillo', 'Spain'),
(3, 'Antonio Moreno Taqueria', 'Cazorla', 'Spain'),
(4, 'Around the Horn', 'Boston', 'United States'),
(5, 'Berglunds snabbkop', 'Halle', 'Germany'),
(6, 'Blauer See Delikatessen', 'Lisbon', 'Portugal'),
(7, 'Blondel pere et fils', 'Tours', 'France'),
(8, 'Bolido Comidas preparadas', 'Almagro', 'Spain'),
(9, 'Bon app', 'Pescara', 'Italy'),
(10, 'Bottom-Dollar Marketse', 'Savannah', 'United States'),
(11, 'Mydo', 'Nantes', 'France'),
(12, 'Izio', 'Vila Ribeiro', 'Portugal'),
(13, 'Katz', 'Alminhas', 'Portugal'),
(14, 'Pixope', 'Boston', 'United States'),
(15, 'Skajo', 'Halle', 'Germany'),
(16, 'Flashdog', 'Casal', 'Portugal'),
(17, 'Linkbuzz', 'Santarém', 'Portugal'),
(18, 'Meembee', 'Tours', 'France'),
(19, 'Zoozzy', 'Pescara', 'Italy'),
(20, 'Avavee', 'Savannah', 'United States'),
(21, 'Voolith', 'Messina', 'Italy'),
(22, 'Quinu', 'Denver', 'United States'),
(23, 'Divape', 'Sacramento', 'United States'),
(24, 'Talane', 'Estrada', 'Portugal'),
(25, 'Linklinks', 'Amiens', 'France'),
(26, 'Zoomzone', 'Ceuta', 'Spain'),
(27, 'Photofeed', 'Vagney', 'France'),
(28, 'Fanoodle', 'Arganil', 'Portugal'),
(29, 'Wikivu', 'Peras Ruivas', 'Portugal'),
(30, 'Meeveo', 'Pereira', 'Portugal'),
(31, 'Youspan', 'Sochaux', 'France'),
(32, 'Brainlounge', 'Alpiarça', 'Portugal'),
(33, 'Divanoodle', 'Balazar', 'Portugal'),
(34, 'Skiba', 'Dallas', 'United States'),
(35, 'Kare', 'São Miguel do Rio Torto', 'Portugal'),
(36, 'Tagfeed', 'Escola', 'Portugal'),
(37, 'Fivebridge', 'Épinal', 'France'),
(38, 'Feedfire', 'Calvão', 'Portugal'),
(39, 'Devcast', 'Montes', 'Portugal'),
(40, 'Eidel', 'Hagerstown', 'United States'),
(41, 'Buzzshare', 'Lille', 'France'),
(42, 'Kwinu', 'Portela', 'Portugal'),
(43, 'Edgeify', 'Detroit', 'United States'),
(44, 'Realmix', 'Washington', 'United States'),
(45, 'Dabtype', 'Niort', 'France'),
(46, 'Zoomdog', 'Serra D\'El Rei', 'Portugal'),
(47, 'Topicshots', 'São Domingos', 'Portugal'),
(48, 'Jamia', 'Lyon', 'France'),
(49, 'Devbug', 'Périgueux', 'France'),
(50, 'Oyoyo', 'Rochester', 'United States'),
(51, 'Fivespan', 'Cagliari', 'Italy'),
(52, 'Meevee', 'Castro Daire', 'Portugal'),
(53, 'Cogidoo', 'Pinhal Novo', 'Portugal'),
(54, 'Eare', 'Alvito de São Pedro', 'Portugal'),
(55, 'Meembee', 'Cartagena', 'Spain'),
(56, 'Twitterworks', 'Seixal', 'Portugal'),
(57, 'Camido', 'Auch', 'France'),
(58, 'Eare', 'Niort', 'France'),
(59, 'Zoombeat', 'Fort Lauderdale', 'United States'),
(60, 'Dynava', 'Charlotte', 'United States'),
(61, 'Wordware', 'Wilmington', 'United States'),
(62, 'Jayo', 'Ardazubre', 'Portugal'),
(63, 'Feedbug', 'Dayton', 'United States'),
(64, 'Tagopia', 'Beaumont', 'United States'),
(65, 'Twitterlist', 'Stuttgart Stuttgart-Mitte', 'Germany'),
(66, 'Wordify', 'Saint-Amand-les-Eaux', 'France'),
(67, 'Wikizz', 'Saint Paul', 'United States'),
(68, 'Yakidoo', 'Vila Nova da Baronia', 'Portugal'),
(69, 'Meevee', 'Rio de Moinhos', 'Portugal'),
(70, 'Muxo', 'Vila Flor', 'Portugal'),
(71, 'Podcat', 'Prior Velho', 'Portugal'),
(72, 'Vinte', 'Waco', 'United States'),
(73, 'Voomm', 'Santa Fe', 'United States'),
(74, 'Twinte', 'Berlin', 'Germany'),
(75, 'Agivu', 'Lawrenceville', 'United States'),
(76, 'Browsecat', 'Memphis', 'United States'),
(77, 'Bubbletube', 'Soito', 'Portugal'),
(78, 'Shufflester', 'Saint-Quentin-en-Yvelines', 'France'),
(79, 'Gigazoom', 'Garden Grove', 'United States'),
(80, 'Fadeo', 'Mobile', 'United States'),
(81, 'Skyble', 'Cergy-Pontoise', 'France'),
(82, 'Cogidoo', 'Besançon', 'France'),
(83, 'Rhyzio', 'Les Clayes-sous-Bois', 'France'),
(84, 'Brightbean', 'Zambujal', 'Portugal'),
(85, 'Devcast', 'Saintes', 'France'),
(86, 'Trilith', 'Lagoa', 'Portugal'),
(87, 'Fatz', 'Landim', 'Portugal'),
(88, 'Photospace', 'Póvoa de Penela', 'Portugal'),
(89, 'Dabtype', 'Vila Fria', 'Portugal'),
(90, 'Meedoo', 'Praia da Tocha', 'Portugal'),
(91, 'Kaymbo', 'Calheta de Nesquim', 'Portugal'),
(92, 'Pixoboo', 'Pedome', 'Portugal'),
(93, 'Skajo', 'El Paso', 'United States'),
(94, 'Katz', 'Oklahoma City', 'United States'),
(95, 'Skimia', 'Paris 13', 'France'),
(96, 'Plambee', 'Santa Iria de Azóia', 'Portugal'),
(97, 'Zooxo', 'Vila', 'Portugal'),
(98, 'Fivebridge', 'Houston', 'United States'),
(99, 'Voonder', 'Pouzauges', 'France'),
(100, 'Edgeblab', 'San Diego', 'United States'),
(101, 'Mycat', 'Santa Cruz', 'United States'),
(102, 'Muxo', 'Créteil', 'France'),
(103, 'Aimbo', 'Boavista', 'Portugal'),
(104, 'Trunyx', 'Houston', 'United States'),
(105, 'Feedspan', 'Saint-Jean-de-Monts', 'France'),
(106, 'Brainverse', 'Paris 13', 'France'),
(107, 'Bubblebox', 'Paris 09', 'France'),
(108, 'Twimbo', 'Achada', 'Portugal'),
(109, 'Yakijo', 'Boavista', 'Portugal'),
(110, 'Einti', 'Redinha', 'Portugal');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`) VALUES
(1, 'Bread - Roll, Calabrese'),
(2, 'Bag Stand'),
(3, 'Glaze - Apricot'),
(4, 'Appetizer - Asian Shrimp Roll'),
(5, 'Wine - Vouvray Cuvee Domaine'),
(6, 'Soup - Campbells, Chix Gumbo'),
(7, 'Fond - Neutral'),
(8, 'Neckerchief Blck'),
(9, 'Stock - Veal, Brown'),
(10, 'Chips Potato Salt Vinegar 43g'),
(11, 'Beef Cheek Fresh'),
(12, 'Chilli Paste, Sambal Oelek'),
(13, 'Gherkin - Sour'),
(14, 'Rambutan'),
(15, 'Tea - English Breakfast'),
(16, 'Orange Roughy 4/6 Oz'),
(17, 'Ice Cream Bar - Hageen Daz To'),
(18, 'Zucchini - Green'),
(19, 'Wine - Red, Pelee Island Merlot'),
(20, 'Pail - 15l White, With Handle'),
(21, 'Bread - Dark Rye, Loaf'),
(22, 'Lamb Tenderloin Nz Fr'),
(23, 'Carbonated Water - Blackberry'),
(24, 'Soup - Knorr, French Onion'),
(25, 'Tarragon - Primerba, Paste'),
(26, 'Spice - Montreal Steak Spice'),
(27, 'Chips Potato Salt Vinegar 43g'),
(28, 'Bread - Bistro White'),
(29, 'Cup - 8oz Coffee Perforated'),
(30, 'Pepper - Red, Finger Hot'),
(31, 'Ocean Spray - Ruby Red'),
(32, 'Lettuce - Sea / Sea Asparagus'),
(33, 'Drambuie'),
(34, 'Pasta - Shells, Medium, Dry'),
(35, 'Hickory Smoke, Liquid'),
(36, 'Butter Balls Salted'),
(37, 'Tea - Green'),
(38, 'Beets - Candy Cane, Organic'),
(39, 'Beer - Corona'),
(40, 'Cookie - Oatmeal'),
(41, 'Lentils - Green, Dry'),
(42, 'Appetizer - Lobster Phyllo Roll'),
(43, 'Carrots - Jumbo'),
(44, 'Butter - Unsalted'),
(45, 'Chicken Thigh - Bone Out'),
(46, 'Vinegar - Sherry'),
(47, 'Tea - Mint'),
(48, 'Apples - Spartan'),
(49, 'Chips - Potato Jalapeno'),
(50, 'Wine - Peller Estates Late'),
(51, 'Ice Cream Bar - Hageen Daz To'),
(52, 'Chocolate Liqueur - Godet White'),
(53, 'Cheese - Comtomme'),
(54, 'Rice - Aborio'),
(55, 'Bread - English Muffin'),
(56, 'Trout - Rainbow, Fresh'),
(57, 'Stock - Veal, White'),
(58, 'Pastry - Chocolate Chip Muffin'),
(59, 'Pork - Backfat'),
(60, 'Propel Sport Drink'),
(61, 'Milk Powder'),
(62, 'Coffee - 10oz Cup 92961'),
(63, 'Chicken - Breast, 5 - 7 Oz'),
(64, 'Wine - Mas Chicet Rose, Vintage'),
(65, 'Cheese - Cheddar, Old White'),
(66, 'Cognac - Courvaisier'),
(67, 'White Baguette'),
(68, 'Tortillas - Flour, 8'),
(69, 'Wine - Lamancha Do Crianza'),
(70, 'Ocean Spray - Kiwi Strawberry'),
(71, 'Salt And Pepper Mix - Black'),
(72, 'Lambcasing'),
(73, 'Stock - Fish'),
(74, 'Veal - Chops, Split, Frenched'),
(75, 'Spinach - Spinach Leaf'),
(76, 'Chocolate Bar - Smarties'),
(77, 'Island Oasis - Banana Daiquiri'),
(78, 'Ecolab - Ster Bac'),
(79, 'Cornstarch'),
(80, 'Mustard - Dry, Powder'),
(81, 'Rice - Wild'),
(82, 'Cheese - Goat With Herbs'),
(83, 'Wine - Soave Folonari'),
(84, 'Water Chestnut - Canned'),
(85, 'Wine - Pinot Noir Pond Haddock'),
(86, 'Beef Ground Medium'),
(87, 'Scallops 60/80 Iqf'),
(88, 'Sugar - Splenda Sweetener'),
(89, 'Gatorade - Fruit Punch'),
(90, 'Lettuce - Red Leaf'),
(91, 'Roe - White Fish'),
(92, 'Cake Circle, Paprus'),
(93, 'Syrup - Pancake'),
(94, 'Energy Drink Red Bull'),
(95, 'Gloves - Goldtouch Disposable'),
(96, 'Milk - Condensed'),
(97, 'Puree - Strawberry'),
(98, 'Cheese - Cheddar, Old White'),
(99, 'Chinese Foods - Thick Noodles'),
(100, 'Ice Cream - Fudge Bars');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE `suppliers` (
  `id` int DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`) VALUES
(1, 'Shields, Haag and Roberts'),
(2, 'Hoppe-Dietrich'),
(3, 'Cremin and Sons'),
(4, 'McGlynn, Conn and Paucek'),
(5, 'Schmidt-Glover'),
(6, 'Hintz-Lakin'),
(7, 'Torphy-Moen'),
(8, 'O\'Reilly, West and Hirthe'),
(9, 'Roob Group'),
(10, 'Marquardt, Ward and Schoen'),
(11, 'Glover-Ritchie'),
(12, 'Stoltenberg-Crooks'),
(13, 'Conn, Huel and Towne'),
(14, 'Tillman-Conroy'),
(15, 'Gleichner, Skiles and Stokes'),
(16, 'Langworth, Wunsch and Ankunding'),
(17, 'Collins Group'),
(18, 'O\'Kon, Lakin and Armstrong'),
(19, 'Waelchi Inc'),
(20, 'Romaguera-Bogan'),
(21, 'Mohr, Connelly and Rodriguez'),
(22, 'Thompson-Lowe'),
(23, 'Marquardt, O\'Kon and Barrows'),
(24, 'O\'Conner, Dietrich and Bartell'),
(25, 'Predovic and Sons'),
(26, 'Nicolas-Towne'),
(27, 'Botsford, Terry and Greenfelder'),
(28, 'Bergnaum Group'),
(29, 'Wisoky, Carroll and Hintz'),
(30, 'Wilkinson, Kris and Gulgowski'),
(31, 'Kirlin-Kuhic'),
(32, 'Ratke Inc'),
(33, 'Huel-Howe'),
(34, 'Ebert, Emmerich and Braun'),
(35, 'Langworth-Hilpert'),
(36, 'Swaniawski Group'),
(37, 'Gulgowski, Sauer and Medhurst'),
(38, 'Schuppe LLC'),
(39, 'D\'Amore-Pouros'),
(40, 'Mayert, Mueller and Bode'),
(41, 'Prosacco, O\'Conner and Schaefer'),
(42, 'Stroman LLC'),
(43, 'Luettgen, Parker and Boyle'),
(44, 'O\'Reilly-Bauch'),
(45, 'Gleichner-Strosin'),
(46, 'Boyer-Emard'),
(47, 'Bergstrom, Zieme and Rutherford'),
(48, 'Pagac, Hirthe and Medhurst'),
(49, 'Hodkiewicz-Ryan'),
(50, 'Mann-Tromp'),
(51, 'Keeling, Cormier and Rolfson'),
(52, 'Krajcik, Bruen and Shanahan'),
(53, 'Gleichner LLC'),
(54, 'Larkin LLC'),
(55, 'O\'Kon Inc'),
(56, 'Brown LLC'),
(57, 'Johnston-Mertz'),
(58, 'Erdman Group'),
(59, 'Grant and Sons'),
(60, 'Jast-Boyer'),
(61, 'Monahan, O\'Keefe and Littel'),
(62, 'Schuster, Nienow and Orn'),
(63, 'Streich and Sons'),
(64, 'Cassin, Murray and Farrell'),
(65, 'Daugherty, Kemmer and Reynolds'),
(66, 'Zboncak and Sons'),
(67, 'MacGyver-Hansen'),
(68, 'Balistreri, Fay and Williamson'),
(69, 'Glover, Von and Fisher'),
(70, 'Bartoletti-Hodkiewicz'),
(71, 'Reichert, Trantow and Raynor'),
(72, 'Heller-Berge'),
(73, 'Cronin, Kerluke and Yundt'),
(74, 'Homenick, Vandervort and Baumbach'),
(75, 'Glover, Witting and Metz'),
(76, 'Ondricka-Gibson'),
(77, 'Shanahan-Swift'),
(78, 'Treutel, Stehr and Klein'),
(79, 'Orn Group'),
(80, 'Smith and Sons'),
(81, 'Toy-Lind'),
(82, 'Windler, Kilback and Bosco'),
(83, 'Koepp-Yundt'),
(84, 'Gulgowski, Purdy and Lubowitz'),
(85, 'Schmidt LLC'),
(86, 'Farrell-Weimann'),
(87, 'McGlynn Inc'),
(88, 'Streich-Hansen'),
(89, 'Schroeder, Muller and Jacobs'),
(90, 'Lakin-Hirthe'),
(91, 'Gleichner and Sons'),
(92, 'Robel-Reynolds'),
(93, 'Leuschke, Koss and Terry'),
(94, 'Zulauf-Quigley'),
(95, 'Becker, Cummerata and Abbott'),
(96, 'Spinka, O\'Conner and Veum'),
(97, 'Kovacek, Tremblay and Kohler'),
(98, 'Haag LLC'),
(99, 'Powlowski, Pacocha and Gislason'),
(100, 'O\'Conner-Prohaska');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
