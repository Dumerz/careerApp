-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2014 at 04:21 AM
-- Server version: 5.6.11
-- PHP Version: 5.5.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `career_app`
--
CREATE DATABASE IF NOT EXISTS `career_app` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `career_app`;

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE IF NOT EXISTS `results` (
  `user_no` int(255) NOT NULL,
  `result_science` int(255) NOT NULL,
  `result_math` int(255) NOT NULL,
  `result_english` int(255) NOT NULL,
  `result_clerical` int(255) NOT NULL,
  `result_computer` int(255) NOT NULL,
  `result_business` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='table contains the results of the parts of the exam';

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`user_no`, `result_science`, `result_math`, `result_english`, `result_clerical`, `result_computer`, `result_business`) VALUES
(1, 14, 0, 0, 0, 0, 0),
(2, 23, 0, 6, 0, 2, 1),
(3, 3, 1, 4, 5, 5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `test_no` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  `answer1` varchar(255) NOT NULL,
  `answer2` varchar(255) NOT NULL,
  `answer3` varchar(255) NOT NULL,
  `answer4` varchar(255) NOT NULL,
  `correct` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  PRIMARY KEY (`test_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Collection of questions and answers' AUTO_INCREMENT=91 ;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`test_no`, `question`, `answer1`, `answer2`, `answer3`, `answer4`, `correct`, `category`) VALUES
(1, 'Brass gets discoloured in air because of the presence of which of the following gases in air?', 'Oxygen', 'Hydrogen sulphide', 'Carbon dioxide', 'Nitrogen', 'Hydrogen sulphide', 'scientific ability'),
(2, 'Which of the following is a non metal that remains liquid at room temperature?', 'Phosphorous', 'Chlorine', 'Bromine', 'Helium', 'Bromine', 'scientific ability'),
(3, 'Which of the following is used in pencils?', 'Graphite', 'Silicon', 'Charcoal', 'Phosphorous', 'Graphite', 'scientific ability'),
(4, 'The gas usually filled in the electric bulb is', 'Nitrogen', 'Hydrogen', 'Carbon dioxide', 'Oxygen', 'Nitrogen', 'scientific ability'),
(5, 'The hardest substance available on earth is', 'Diamond', 'Platinum', 'Iron', 'Gold', 'Diamond', 'scientific ability'),
(6, 'Which of the following is a synonym of the  word traverse', 'speaking', 'inversing', 'traveling', 'intefering', 'traveling', 'english ability'),
(7, 'He moves very swiftly, Choose the word that have the same meaning with &#34;swiftly&#34;', 'fast', 'slow', 'medium', 'stop', 'fast', 'english ability'),
(8, 'which of the following words best describes with the meaning of the word &#34;frail&#34;.', 'tough', 'delicate', 'truncate', 'puncture', 'delicate', 'english ability'),
(9, 'Which of the following is a synonym for the word &#34;proliferate&#34;', 'germinate', 'decomposition', 'fruitful', 'young', 'fruitful', 'english ability'),
(10, 'It is a part of speech that describes a verb, adjective, or another example of its kind ?', 'adjective', 'verb', 'adverb', 'pronoun', 'adverb', 'english ability'),
(11, 'In marketing research, a firm might consider using \r\nsecondary data over primary data because', 'secondary data usually cost less', 'secondary data are usually more accurate', 'primary data are usually non specific \r\n', 'primary data are likely to be outdated', 'secondary data usually cost less', 'business ability'),
(12, 'In organizational decision making, managers are \r\nable to exercise the greatest degree of discretion in \r\nthe', 'enforcement of internal policies', 'settlement of legal disputes', 'restructuring of outstanding loans', 'compliance with federal regulations', 'enforcement of internal policies', 'business ability'),
(13, 'The term &#34;net working capital&#34; refers to', 'inventories, receivables and current notes and \r\ninvestments', 'assets divided by liabilities', 'current assets less short-term liabilities', 'net assets left over after subtracting cost of \r\ngoods sold', 'current assets less short-term liabilities', 'business ability'),
(14, 'How many pillows must Dreamland produce and \r\nsell each month to earn a monthly gross profit of \r\n1,000 dollars?', '300', '350', '600', '700', '700', 'business ability'),
(15, 'Another firm has offered to produce &#34;Old Softy&#34; \r\npillows and sell them to Dreamland for 12 dollars each. \r\nDreamland cannot avoid the factory lease \r\npayments, but can avoid all labor costs if it does not \r\nproduce these pillows. Under these cond', '417', '500', '625', '875', '625', 'business ability'),
(16, 'What is the meaning of the acronym CPU?', 'Central Product Unit', 'Central Processing Unit', 'Control Processing Unit', 'Central Peripheral Unit', 'Central Processing Unit', 'computer ability'),
(17, 'What type of device is Dot Matrix type?', 'mouse', 'webcam', 'printer', 'scanner', 'printer', 'computer ability'),
(18, 'Clock speed is measured in ?', 'Hertz', 'Ampere', 'Volts', 'Resistance', 'Hertz', 'computer ability'),
(19, 'Which of the following is not a layer of the OSI in networking', 'Application', 'Internet', 'Physical', 'Data Link', 'Internet', 'computer ability'),
(20, 'A programming language created by Dennis Ritchie', 'C', 'Basic', 'Java', 'Perl', 'C', 'computer ability'),
(21, 'Four of the five are alike in\r\na certain way, while one is different. Find out the one which is different', 'black', 'red', 'green', 'paint', 'paint', 'clerical ability'),
(22, '&#34;Foot&#34; is related to &#34;Man&#34; in the same way as &#34;Hoof&#34; is related to', 'Leg', 'Horse', 'Dog', 'Bird', 'Horse', 'clerical ability'),
(23, '&#34;Day&#34; is related to &#34;Night&#34; in the same way as &#34;Kind&#34; is related to?', 'Cruel', 'Light', 'Dark', 'Generous', 'Cruel', 'clerical ability'),
(24, '220 &#43; 15 &#43; 19 x 2 &#61; ?', '270', '271', '272', '273', '273', 'clerical ability'),
(25, 'CENTENARY is a? ', 'very old man', 'hundred runs', 'a hundred years', 'hundredth anniversary', 'hundredth anniversary', 'clerical ability'),
(26, '4<sup>3</sup> &#43; &#40;5 x 3&#41;<sup>2</sup> &#61; ?', '42', '128', '289', '337', '289', 'mathematical ability'),
(27, 'If 0.00005893 is expressed in the form 5.893 x 10<sup>n</sup>,<br />what is the value of n ?', '&#45;5', '&#45;4', '4', '5', '&#45;5', 'mathematical ability'),
(28, 'The owner of a store displays a large jar of nickels and\r\ndimes and offers the value of the coins to the person\r\nwho guesses how many dimes there are. If there are\r\n1,130 coins, and they are worth 100 peso, how many dimes\r\nare there?', '130', '260', '870', '970', '870', 'mathematical ability'),
(29, 'At a fruit market where no sales tax is charged, Abe\r\npaid 1.90 peso for 1 pear and 3 apples. Joan paid 1.60 peso for\r\n1 pear, 1 apple, and 1 orange. and Latonya paid 1.70 peso\r\nfor 2 apples and 1 orange. If each person paid the same\r\namount per pear, the', '0.52 peso', '0.50 peso', '0.45 peso', '0.40 peso', '0.50 peso', 'mathematical ability'),
(30, 'What is the 50th term of the arithmetic sequence 4, 10,\r\n16, 22, ... ?', '202', '206', '294', '298', '298', 'mathematical ability'),
(31, 'The Organization of the Petroleum Exporting Countries (OPEC) reduces production by \r\n10 percent, and the growth rate of the world economy begins to escalate. How will the \r\nsimultaneous occurrence of these events affect the equilibrium price and quantity ', 'Price will increase, but quantity will remain unchanged', 'Price will increase, but quantity is \r\nindeterminate', 'Quantity will increase, but price is \r\nindeterminate', 'Both price and quantity will increase', 'Price will increase, but quantity is \r\nindeterminate', 'business ability'),
(32, 'Which of the following would most likely occur as a result of the United States government imposing tariffs on foreign steel imports?', 'The price of steel produced in the United \r\nStates would decrease', 'The price of imported steel in the United \r\nStates would decrease', 'Employment in the United States steel \r\nindustry would increase', 'Government tax revenue would fall', 'Employment in the United States steel \r\nindustry would increase', 'business ability'),
(33, 'In an economy, the unemployment rate is 10 percent and the inflation rate is 1 percent. An appropriate fiscal policy in this phase of the business cycle would be to', 'increase government spending', 'increase income taxes', 'decrease transfer payments', 'decrease the money supply', 'increase government spending', 'business ability'),
(34, 'Which of the following is an appropriate Federal Reserve action to stimulate the United States economy?', 'Selling government bonds on the open \r\nmarket', 'Increasing the discount rate', 'Reducing the reserve requirement', 'Cutting taxes', 'Reducing the reserve requirement', 'business ability'),
(35, 'If the spread between the spot and forward exchange rates of two currencies equals the interest rate difference between the two countries, this phenomenon is referred to as', 'purchasing-power equality', 'commodity arbitrage', 'currency hedging', 'interest-rate parity', 'interest-rate parity', 'business ability'),
(36, 'A firm that would like to know whether it has enough cash to meet its bills would be most likely to use which category of financial ratio?', 'Liquidity', 'Leverage', 'Efficiency', 'Profitability', 'Liquidity', 'business ability'),
(37, 'In a period of rising prices, which inventory valuation method would generally yield both the lowest ending inventory value and the lowest net income figure?', 'First in, first out (FIFO)', 'Last in, first out (LIFO)', 'Weighted average', 'Standard cost', 'Last in, first out (LIFO)', 'business ability'),
(38, 'In the statement of cash flows, the section for cash flows from operating activities will include which of the following?', 'Dividends paid', 'Issuance of common stock', 'A decrease in accounts payable', 'Purchase of a building financed entirely by a mortgage', 'A decrease in accounts payable', 'business ability'),
(39, 'All of the following are true regarding a sellers right to reduce legal liability in the sale of non consumer goods EXCEPT', 'The seller can disclaim consequential \r\ndamages if it is done clearly and \r\nconspicuously', 'The seller can limit the remedy available to the buyer if he or she does so clearly and fairly', 'The seller can place reasonable conditions on \r\nthe warranty coverage and a shorter time \r\nlimit of warranty coverage', 'The seller can disclaim all implied warranties by simply stating that there are no implied warranties.', 'The seller can disclaim all implied warranties by simply stating that there are no implied warranties', 'business ability'),
(40, 'Based on his scientific management theory,Frederick Taylor developed what pay principle? ', 'Hourly pay', 'Incentive pay', 'Profit sharing', 'Monthly salary with bonus', 'Incentive pay', 'business ability'),
(41, 'Carbon, diamond and graphite are together called', 'allotropes', 'isomers', 'isomorphs', 'isotopes', 'allotropes', 'scientific ability'),
(42, 'Monazite is an ore of', 'titanium', 'zirconium', 'iron', 'thorium', 'thorium', 'scientific ability'),
(43, 'Non stick cooking utensils are coated with', 'Teflon', 'PVC', 'black paint', 'polystyrene', 'Teflon', 'scientific ability'),
(44, 'The element common to all acids is', 'hydrogen', 'carbon', 'sulphur', 'oxygen', 'hydrogen', 'scientific ability'),
(45, 'The chemical (ethyl mercaptan) added to the otherwise odourless LPG cooking gas for imparting a detectable smell to the gas is a compound of', 'bromine', 'fluorine', 'chlorine', 'sulphur', 'sulphur', 'scientific ability'),
(46, 'Heavy water is', 'deuterium oxide', 'PH7', 'rain water', 'tritium oxide', 'deuterium oxide', 'scientific ability'),
(47, 'The group of metals Fe, Co, Ni may best called as', 'transition metals', 'main group metals', 'alkali metals', 'rare metals', 'transition metals', 'scientific ability'),
(48, 'Among the various allotropes of carbon,', 'coke is the hardest, graphite is the softest', 'diamond is the hardest, coke is the softest', 'diamond is the hardest, graphite is the softest', 'diamond is the hardest, lamp black is the softest', 'diamond is the hardest, graphite is the softest', 'scientific ability'),
(49, 'Galvanised iron sheets have a coating of', 'lead', 'chromium', 'zinc', 'tin', 'zinc', 'scientific ability'),
(50, 'When an iron nail gets rusted, iron oxide is formed', 'without any change in the weight of the nail', 'with decrease in the weight of the nail', 'with increase in the weight of the nail', 'without any change in colour or weight of the nail', 'with increase in the weight of the nail', 'scientific ability'),
(51, 'What is the meaning of the acronym POST', 'Power On Self Test', 'Power Off Self Test', 'Power On Self Technique', 'Power Off Self Technique', 'Power On Self Test', 'computer ability'),
(52, 'The following are the Cisco Devices use ROM to store except', 'The bootstrap instructions', 'Basic diagnostic software', 'Routing Destination', 'Scaled-down version of IOS', 'Routing Destination', 'computer ability'),
(53, 'Holds diagnostic software used when router is powered up.  Stores the router’s bootstrap program', 'ROM', 'RAM', 'Router', 'Flash Memory', 'ROM', 'computer ability'),
(54, 'It includes the software that does not normally need to be modified or upgraded, such as the bootup instructions.', 'Firmware', 'Bus', 'Metrics', 'RAM', 'Firmware', 'computer ability'),
(55, 'Contains the operating system', 'Sound Blaster', 'RAM', 'ROM', 'Flash memory', 'Flash memory', 'computer ability'),
(56, 'What is the meaning of the acronym NVRAM ?', 'Nominal volatile Random Access Memory', 'Non volt Random Access Memory', 'Non volatile Random Access Memory', 'Negate volatile Random Access Memory', 'Non volatile Random Access Memory', 'computer ability'),
(57, 'The Choices are the verify the router boot-up process except', 'Platform model number', 'CPU', 'Hardware', 'Amount of RAM', 'Hardware', 'computer ability'),
(58, 'What is the meaning of the acronym CLI ?', 'Command Line Interface', 'Commander Line Interface', 'Comrade Line Interface', 'Command Line Interfer', 'Command Line Interface', 'computer ability'),
(59, 'The following are address table that provides the following information except', 'Device name', 'Interfaces used', 'IP addresses', 'Router Destination', 'Router Destination', 'computer ability'),
(60, 'In case flash memory becomes corrupted, a system image can be loaded from a TFTP server.', 'Network server', 'Network Failure', 'Network Destination', 'Network process', 'Network server', 'computer ability'),
(61, 'Which of the following is the synonym of the word traveling ?', 'traverse', 'wind', 'ability', 'talent', 'traverse', 'english ability'),
(62, 'Which of the following is an example of on a preposition ? ', 'he', 'she', 'to', 'they', 'to', 'english ability'),
(63, 'Which of  the following is the synonym of the word fruitful', 'professor', 'proliferate', 'prohibited', 'profit', 'proliferate', 'english ability'),
(64, 'Which of the following is an example of a Noun ?', 'Is', 'They', 'Aldrin', 'We', 'Aldrin', 'english ability'),
(65, 'Which of the following is an example of a Noun ?', 'San Pablo City', 'Group', 'Everybody', 'Are', 'San Pablo City', 'english ability'),
(66, 'Which of the following is a best example of a Pronoun ?', 'Aldrin', 'She', 'Mall of Asia', 'Dog', 'She', 'english ability'),
(67, 'Which of the following is an example of a verb ?', 'Elephant', 'Manila', 'We', 'Walking', 'Walking', 'english ability'),
(68, 'Which of the following is an example of a adverb ?', 'Fastly', 'Coco festival', 'Are', 'Running', 'Fastly', 'english ability'),
(69, 'Which of the following is an example of a adjective ?', 'Beautiful', 'Everybody', 'Walking', 'Miami', 'Beautiful', 'english ability'),
(70, 'Which of the following is an example of a  Noun ?', 'Paul Orlan', 'She', 'Walking', 'Understand', 'Paul Orlan', 'english ability'),
(71, 'Tickets to a play cost 5 dollars for adults and 2 dollars for children. If 1,750 tickets were sold for a total of 7,100 dollars, how many children’s tickets were sold?', '550', '650', '1,100', '1,200', '550', 'mathematical ability'),
(72, 'What is the 50th term of the arithmetic sequence 4, 10,\r\n16, 22, . . .?', '202', '206', '298', '304', '298', 'mathematical ability'),
(73, 'A sighting from sea level to the top of a lighthouse was 60 degrees. The lighthouse is known to rise 180 feet above sea\r\nlevel. What is the distance to the nearest foot between the observer and the base of the lighthouse?', '180', '208', '254', '104', '104', 'mathematical ability'),
(74, 'At 1 p.m. a car leaves St. Louis for Chicago, traveling at a constant speed of 65 miles per hour. At 2 p.m. a truck leaves Chicago for St. Louis, traveling at a constant speed of 55 miles per hour. If it is a 305 mile drive between St. Louis and Chicago, ', '4 pm', '1 pm', '6 pm', '5 pm', '4 pm', 'mathematical ability'),
(75, 'At 10 paise each, how many paise will 6 lemons cost ?', '6', '10', '60', '61', '60', 'mathematical ability'),
(76, 'Dissmore has reduced prices by 17 percent on everything to thank their customers for their patronage. If Ben & Jerry''s Phish Food TM ice cream cost 2.99 dollars before the price reduction, how much does it cost now? Round your answer to the nearest penn', '2.48 dollars', '2.36 dollars', '2.42 dollars', '2.54 dollars', '2.48 dollars', 'mathematical ability'),
(77, 'One positive number is 19 times another positive number. The difference between the two numbers is 72. Find the two numbers.', '4,80', '57,3', '4,76', 'None of the Above', '4,76', 'mathematical ability'),
(78, 'If the cost price of 20 articles is equal to the selling price of 25 articles, what is the percent profit or loss made by the merchant?', '25 percent loss', '25 percent profit', '20 percent loss', '20 percent profit', '20 percent loss', 'mathematical ability'),
(79, 'Sam buys 10 apples for 1 dollars. At what price should he sell a dozen apples if he wishes to make a profit of 25 percent?', '0.125 dollars', '1.8 dollars', '0.2 dollars', '1.5 dollars', '1.5 dollars', 'mathematical ability'),
(80, 'A merchant who marked his goods up by 50 percent subsequently offered a discount of 20 percent. What is the percentage profit that the merchant make after offering the discount?', '30 percent', '125 percent', '25 percent', '20 percent', '20 percent', 'mathematical ability'),
(81, 'Richard L. Allen would be filed between ?', 'Robert Allen and Stephen Allen', 'Paul Allan and Thomas Allan', 'Rex Allen and Richard M. Allen', 'Peter Allen and Rich Allen', 'Rex Allen and Richard M. Allen', 'clerical ability'),
(82, 'M. H. Brown would be filed between', 'N. A. Brown and T. R. Brown', 'Donald G. Brown and Paul Brown', 'M. J. Brown and William Brown', 'David G. Brown and M. G. Brown', 'Donald G. Brown and Paul Brown', 'clerical ability'),
(83, 'Jerry Eichler would be filed between', 'B. M. Eicher and Thomas Eicher', 'K. R. Eichler and R. D. Eichler', 'Eugene Eicher and Kenneth Eichler', 'John Eichler and Lee Eichler', 'Eugene Eicher and Kenneth Eichler', 'clerical ability'),
(84, 'Count the number of pairs in these set of choices\r\n\r\n32456   -   30456\r\n11189   -   11198\r\n26   -   26\r\n4525   -   4255', '0', '1', '2', '3', '1', 'clerical ability'),
(85, 'Count the number of identical pairs in the choices\r\n\r\n30041   -   30014\r\n2680   -   2860\r\n634577   -   634577\r\n7889   -   7889', '0', '1', '2', '3', '2', 'clerical ability'),
(86, 'Count the number of identical pairs in the choices\r\n\r\n126427   -   124637\r\n4512845   -   4512845\r\n3989   -   3988\r\n74   -   74', '0', '1', '2', '3', '2', 'clerical ability'),
(87, 'Count the number of pairs in these set of names\r\n\r\nGiancinto Orasatti - Biancinto Orsatti\r\n\r\nR. Orschanski - R. P. Orchanski\r\n\r\nP. R. Shaheen - P. R. Shahien\r\n\r\nAlberta R. Alpern - Alberta R. Alperin', '0', '1', '2', '3', '0', 'clerical ability'),
(88, 'Count the number of pairs in these set of names\r\n\r\nEdith Orwig - Ethel Orwig\r\n\r\nJ. J. O’Ryan - J. J. O’Ryan\r\n\r\nJ. K. Brodegaard - J. K. Brodeguard\r\n\r\nBerdie Osborn - Berdie Osborn', '0', '1', '2', '3', '2', 'clerical ability'),
(89, 'Count the number of pairs in these set of names\r\n\r\nM. B. Ostoich - M. B. Ostoich\r\n\r\nAndrew Morauek - Andrew Morauec\r\n\r\nNatalie Linden - Natalie Linden\r\n\r\nO. B. Oechsli - A. B. Oechsel', '0', '1', '2', '3', '2', 'clerical ability'),
(90, 'Choose the best pair for to the choices below\r\n\r\nS.R. BHAT\r\n36, Bora Street\r\nBombay–400096', 'S.R. BHAT\r\n63, Bora Street\r\nBombay-400096', 'S.R BHATT\r\n36, Bora Street\r\nBombay-400096', 'S.R. BHAT\r\n36, Bora Street\r\nBombay–400096', 'S.R. BHAT\r\n36, Bora Street\r\nBombay–400069', 'S.R. BHAT\r\n36, Bora Street\r\nBombay–400096', 'clerical ability');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE IF NOT EXISTS `user_info` (
  `user_no` int(30) unsigned NOT NULL AUTO_INCREMENT,
  `sur_name` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  UNIQUE KEY `user_no` (`user_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='This table will hold all the personal information of the user that signed in' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_no`, `sur_name`, `first_name`) VALUES
(1, 'Dumdum', 'Paul Orlan'),
(2, 'Dumdum', 'MyAzile'),
(3, 'Dumdum', 'Test');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
