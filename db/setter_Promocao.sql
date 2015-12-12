-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 12, 2015 at 01:36 AM
-- Server version: 10.1.9-MariaDB-log
-- PHP Version: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `econova`
--

-- --------------------------------------------------------

--
-- Table structure for table `Promocao`
--

CREATE TABLE `Promocao` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `caminho_imagem` varchar(100) NOT NULL,
  `pts_min` int(11) NOT NULL,
  `codigo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Promocao`
--

INSERT INTO `Promocao` (`id`, `nome`, `caminho_imagem`, `pts_min`, `codigo`) VALUES
(1, 'Elizabeth B. Morrison', 'posuere', 1, 'PYP22ONN5IV'),
(2, 'Macy E. Wilson', 'Suspendisse', 2, 'UZH34GAE3IY'),
(3, 'Serina P. Shields', 'dignissim.', 8, 'JUO09BJL6QQ'),
(4, 'Amery P. Wong', 'Aliquam', 4, 'RME61HMY3VJ'),
(5, 'Garrett F. Gonzales', 'Sed', 4, 'UCY58PDD3SK'),
(6, 'Avram P. Mcintyre', 'libero.', 8, 'QYA26YWK0XT'),
(7, 'Xaviera D. Lynn', 'amet', 2, 'QPB45AEA0BM'),
(8, 'Deborah O. Fowler', 'mus.', 7, 'XAS71EOY6EM'),
(9, 'Sopoline D. Richard', 'est,', 5, 'BLL37ZCL6AE'),
(10, 'Abbot S. Richard', 'adipiscing,', 7, 'TVP81PPG8WY'),
(11, 'Octavia B. Gardner', 'Phasellus', 10, 'DNL02FUZ4UB'),
(12, 'Igor K. Contreras', 'eleifend,', 2, 'EIJ51UXW1SA'),
(13, 'Rafael M. Hayden', 'mauris', 9, 'XDT58CJS8GO'),
(14, 'Adrienne Y. Buckley', 'mollis', 9, 'CQK76EHQ7CS'),
(15, 'Allistair C. Harris', 'tincidunt', 4, 'EDJ12QLQ0EZ'),
(16, 'Adrian Q. Morrison', 'sapien.', 6, 'YUB06YYD5TH'),
(17, 'Ross A. Rojas', 'lorem', 3, 'XQR42HJE4BE'),
(18, 'Stewart U. Navarro', 'adipiscing', 9, 'DAF91ZRF6GP'),
(19, 'Sloane L. Mcintyre', 'Aliquam', 9, 'ZMQ09YIY7HM'),
(20, 'Bruce W. Byrd', 'tortor.', 10, 'HHU94GNN0IV'),
(21, 'Sarah G. Ramsey', 'elementum,', 7, 'WNG92PIT6GA'),
(22, 'Lila F. Barnes', 'Morbi', 2, 'TDA85UZW2JR'),
(23, 'David U. Pittman', 'dui', 8, 'ZZW02KWF0GN'),
(24, 'Camille H. Mccormick', 'sem,', 1, 'FAY22QPD8KN'),
(25, 'Quinn V. Knowles', 'nunc', 5, 'MFC76ORJ8AY'),
(26, 'Nola T. Lancaster', 'est,', 2, 'FLB50UXW2DC'),
(27, 'Chester Q. Sharp', 'lacinia', 5, 'SLB01NNN6UZ'),
(28, 'Ivor F. Tran', 'tempor', 5, 'QGV28NNH5EZ'),
(29, 'Josiah V. Conrad', 'Duis', 10, 'AMY07YYG2YX'),
(30, 'Gage X. Chase', 'lectus.', 4, 'KAU97BDS5MS'),
(31, 'Myra E. Collins', 'pulvinar', 4, 'NMF96KQY4DK'),
(32, 'Vivian P. Daugherty', 'tellus', 8, 'OGD74JVL3BG'),
(33, 'Mohammad K. Hooper', 'erat.', 3, 'UKE77PWV8ZE'),
(34, 'Cain K. Conway', 'ipsum', 4, 'ZCV54KNB7TG'),
(35, 'Jonah M. Key', 'Nullam', 3, 'KMN52GNY2MS'),
(36, 'Keaton O. Kirkland', 'blandit', 9, 'JBC03MOS4MD'),
(37, 'Avram R. Jensen', 'ut,', 9, 'SSF26SSE2EL'),
(38, 'Tara N. Bradshaw', 'a', 3, 'XKC31TQA4VK'),
(39, 'Zoe K. Cotton', 'ac', 1, 'YTP52PAV2AR'),
(40, 'Kylynn D. Jacobson', 'mattis.', 1, 'XNC43QME0TX'),
(41, 'Timothy B. Chapman', 'tellus.', 6, 'MZQ23RKG8WJ'),
(42, 'Clinton M. Oconnor', 'libero.', 2, 'RPX93XMQ4GS'),
(43, 'Venus D. Owens', 'interdum', 8, 'YXS16FDQ4QK'),
(44, 'Hayley A. Ayala', 'eros.', 6, 'TPY84IEX9PT'),
(45, 'Damian P. Manning', 'ante', 5, 'PSD87ZSB5HM'),
(46, 'Jakeem N. Parsons', 'odio.', 6, 'IOB05DJK0IH'),
(47, 'Bruno G. Daugherty', 'ultricies', 9, 'XMK62SDH7YO'),
(48, 'Hashim S. Pate', 'sed', 7, 'NWX30TDZ4CK'),
(49, 'Rina H. Jacobs', 'libero.', 5, 'XKL96UNG5HW'),
(50, 'Karyn T. Hays', 'Sed', 4, 'CFJ69YZH4DV'),
(51, 'Kennan A. Jacobson', 'congue', 3, 'CHV70QTY2JV'),
(52, 'Cleo D. King', 'neque', 6, 'QDU91WPT3KF'),
(53, 'Griffin W. Owens', 'eu,', 3, 'UDZ51ZFY2WQ'),
(54, 'Samson O. Martinez', 'congue', 2, 'OTW75UED4JO'),
(55, 'Kibo L. Cooper', 'urna', 6, 'VJM78XJA0YK'),
(56, 'Camilla C. Marks', 'neque', 5, 'ZWK84VDU8BI'),
(57, 'Ginger S. Hodge', 'sodales', 2, 'AFC23UAU9GK'),
(58, 'Angela E. Christian', 'ut', 6, 'CJC74AQM4IV'),
(59, 'Audrey H. Church', 'Curabitur', 9, 'DOC32WRD3FB'),
(60, 'Imani B. Bernard', 'eu', 8, 'GHU38XNU0RB'),
(61, 'Orlando Y. Norman', 'Suspendisse', 3, 'ESP21PSK0JJ'),
(62, 'Drew P. Byrd', 'mi', 4, 'KOU80UQB0JC'),
(63, 'Kalia J. Mayo', 'vel', 5, 'FGR21JOC7VD'),
(64, 'Vladimir N. Whitehead', 'elit.', 6, 'GYX57LDM1CW'),
(65, 'Demetria W. Bell', 'nec', 5, 'ARI25MEI2EX'),
(66, 'Nadine A. Cline', 'eleifend', 7, 'IDE64ARK9DE'),
(67, 'Giacomo C. Reyes', 'Cum', 9, 'NBA63KFA6YD'),
(68, 'Maite Q. Carson', 'aliquet', 9, 'USY92OWS2TN'),
(69, 'Ralph T. Norton', 'viverra.', 7, 'NJI86CNX8XR'),
(70, 'Hall P. Gibbs', 'Phasellus', 6, 'IJH93UQU3LE'),
(71, 'Eve C. Mcmahon', 'nec', 7, 'GAA73MOL0KP'),
(72, 'Joseph B. Jones', 'lacinia', 8, 'PPI61DQW0IK'),
(73, 'Marcia F. Hansen', 'morbi', 4, 'LPF16CIZ1HW'),
(74, 'Reagan R. Miller', 'tristique', 10, 'MWU77ZSR1DL'),
(75, 'Astra U. Molina', 'metus.', 4, 'VWK15MIS3PC'),
(76, 'Xyla X. Jarvis', 'montes,', 8, 'HKQ58XKY1ZL'),
(77, 'Gloria H. Durham', 'Nunc', 2, 'LFY18MIT8DL'),
(78, 'Macy P. Meyers', 'Proin', 7, 'RMM28XCZ6ID'),
(79, 'Zahir N. Cote', 'mi', 9, 'XDA36FSA5OW'),
(80, 'Harrison K. Justice', 'nec', 8, 'QEU60UXG1UO'),
(81, 'Liberty U. Norris', 'adipiscing', 4, 'YTB88SWF8DW'),
(82, 'Elaine F. Mcfadden', 'tellus', 5, 'VFV10LIJ2KY'),
(83, 'Fleur Q. Rodgers', 'lacus.', 6, 'QBR35NJJ2CB'),
(84, 'Elizabeth B. Doyle', 'Sed', 9, 'OMA95ZTA6VB'),
(85, 'Price J. Snow', 'lectus', 1, 'LAT39DNZ5TU'),
(86, 'Candace U. Montgomery', 'aliquet', 6, 'BXG18WSR1DI'),
(87, 'Nayda E. Snider', 'Duis', 5, 'GBD97RIC6OS'),
(88, 'Remedios V. Coleman', 'sodales', 5, 'IFZ24KNT6ZL'),
(89, 'Alvin E. Conley', 'Nunc', 1, 'JSE33QNC6PX'),
(90, 'Beck N. Barrera', 'elit', 2, 'MWJ66CBE6AM'),
(91, 'Tobias W. Wolfe', 'urna.', 8, 'WUI84TEG8YQ'),
(92, 'Quyn G. Rowe', 'tincidunt,', 2, 'CRC36PGA8DI'),
(93, 'Suki J. Duran', 'nec', 10, 'UHT43QKB4YL'),
(94, 'Ivan C. Mayo', 'placerat,', 3, 'FKP44ESV8YG'),
(95, 'Winter D. Kane', 'elit', 2, 'VVK39GWS9HB'),
(96, 'John H. Holloway', 'Phasellus', 1, 'JMG95UAW3WZ'),
(97, 'Frances F. Phillips', 'nec', 1, 'LXX41KRR2GS'),
(98, 'Maxine Q. Hester', 'Cras', 4, 'GXI76RCO4KG'),
(99, 'Igor I. Carney', 'magna', 2, 'OKI59QBF6NO'),
(100, 'Desiree W. Howe', 'magna', 2, 'NOO62FNV7BJ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Promocao`
--
ALTER TABLE `Promocao`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
