-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 12, 2015 at 08:16 AM
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
-- Table structure for table `Coleta`
--

CREATE TABLE `Coleta` (
  `id` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idCooperativa` int(11) NOT NULL,
  `dataAbertura` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dataFechamento` timestamp NULL DEFAULT NULL,
  `aval_user` int(11) NOT NULL,
  `aval_coop` int(11) NOT NULL,
  `endereco` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Coleta`
--

INSERT INTO `Coleta` (`id`, `idUsuario`, `idCooperativa`, `dataAbertura`, `dataFechamento`, `aval_user`, `aval_coop`, `endereco`) VALUES
(6, 2, 10, 0x303030302d30302d30302030303a30303a3030, NULL, 0, 0, 'rua xyz'),
(7, 2, 10, 0x303030302d30302d30302030303a30303a3030, NULL, 0, 0, 'rua xyz');

-- --------------------------------------------------------

--
-- Table structure for table `Cooperativa`
--

CREATE TABLE `Cooperativa` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `avaliacao` int(11) NOT NULL DEFAULT '0',
  `endereco` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Cooperativa`
--

INSERT INTO `Cooperativa` (`id`, `nome`, `email`, `avaliacao`, `endereco`, `senha`) VALUES
(1, 'Jessica O. Chang', 'pede@rhoncusNullamvelit.com', 0, '7495 Gravida. Rd.', ''),
(2, 'Idola N. Cooley', 'sapien.Nunc.pulvinar@nuncestmollis.com', 0, 'Ap #712-7627 Enim. St.', ''),
(3, 'Alyssa C. Vargas', 'Nullam.nisl.Maecenas@Integereu.ca', 0, 'Ap #592-8779 In St.', ''),
(4, 'Christian Z. Barry', 'faucibus.ut@Suspendissealiquet.ca', 0, 'Ap #430-6858 Posuere Av.', ''),
(5, 'Lillith W. Stephens', 'et@imperdietullamcorperDuis.com', 0, 'P.O. Box 264, 8128 Orci Street', ''),
(6, 'Lunea R. Whitaker', 'dis.parturient.montes@scelerisque.ca', 0, 'Ap #408-1953 At, St.', ''),
(7, 'Kasper P. James', 'sodales.purus.in@sitametante.ca', 0, 'P.O. Box 201, 9045 Vivamus Street', ''),
(8, 'Hedda U. Cain', 'ac.mattis@inconsequat.edu', 0, '2028 Maecenas St.', ''),
(9, 'Meredith V. Thornton', 'Quisque.purus@sapiencursus.ca', 0, '8621 Euismod Av.', ''),
(10, 'Cain J. Morris', 'ac@temporerat.ca', 0, 'P.O. Box 782, 6248 Ac Ave', ''),
(11, 'Grady W. Blanchard', 'bibendum@conguea.org', 0, '9726 A Ave', ''),
(12, 'Chaim H. Bennett', 'sem@scelerisqueloremipsum.co.uk', 0, 'P.O. Box 712, 5850 Eget Ave', ''),
(13, 'Melyssa S. Lloyd', 'erat.volutpat.Nulla@lacusNulla.org', 0, '8775 Ut Rd.', ''),
(14, 'Demetria M. Silva', 'eu.ligula.Aenean@felis.net', 0, '4825 Dolor. Street', ''),
(15, 'Maia W. Donovan', 'sed@egestasblandit.org', 0, '2147 A, Road', ''),
(16, 'Brody C. Wong', 'vel@Vestibulum.net', 0, '6478 Nibh Avenue', ''),
(17, 'Brielle G. Snider', 'Nunc.mauris.sapien@Pellentesque.org', 0, '1186 Eu Rd.', ''),
(18, 'Katell J. Sparks', 'massa@nectempus.net', 0, '8293 Neque Avenue', ''),
(19, 'Brian F. Maynard', 'vel.pede.blandit@Nam.ca', 0, 'Ap #290-4876 Et, St.', ''),
(20, 'Alvin S. Aguirre', 'Quisque.libero@in.ca', 0, 'P.O. Box 972, 2123 Vivamus Rd.', ''),
(21, 'Oren F. Ford', 'arcu.Vestibulum.ante@blanditNamnulla.net', 0, '3915 Id, Rd.', ''),
(22, 'Stacey K. Meyers', 'aliquam.iaculis@arcu.ca', 0, '531-7637 Vel Rd.', ''),
(23, 'Glenna X. Rodgers', 'sit@nonmagna.org', 0, '670-6571 Morbi Road', ''),
(24, 'Walter L. Johnston', 'auctor@Quisquepurus.edu', 0, '6695 Enim. Street', ''),
(25, 'Hedda B. Estes', 'sit.amet.dapibus@dapibusligulaAliquam.edu', 0, 'P.O. Box 797, 1183 Libero Rd.', ''),
(26, 'Lana C. Adams', 'nunc.In@sollicitudincommodo.com', 0, '528-5918 Et, St.', ''),
(27, 'Eliana R. Barker', 'metus.urna@augue.com', 0, 'P.O. Box 180, 3814 A, Rd.', ''),
(28, 'Salvador J. Jackson', 'amet@purus.co.uk', 0, 'Ap #764-6526 Non Rd.', ''),
(29, 'Thane I. Stuart', 'vitae.aliquet.nec@fringilla.co.uk', 0, 'P.O. Box 877, 5229 Consectetuer Street', ''),
(30, 'Omar B. Camacho', 'risus.Nunc@erat.edu', 0, 'P.O. Box 767, 1399 Neque Av.', ''),
(31, 'Steel H. Deleon', 'luctus@risusNulla.edu', 0, '1866 Non Rd.', ''),
(32, 'Anastasia D. Welch', 'mauris.sapien.cursus@fringillaeuismod.ca', 0, 'P.O. Box 829, 4529 Nunc Av.', ''),
(33, 'Aretha C. Burt', 'sagittis@pharetraQuisque.co.uk', 0, 'Ap #349-3939 Fames Street', ''),
(34, 'Vance Y. Oneil', 'magna.Nam@ametdapibusid.org', 0, 'Ap #257-9441 Enim St.', ''),
(35, 'Zena K. Luna', 'Nulla@pedenonummy.net', 0, 'Ap #880-3550 Et, St.', ''),
(36, 'Rhonda D. Blackwell', 'rutrum.magna.Cras@euismodenim.co.uk', 0, '1966 Enim Rd.', ''),
(37, 'Tanisha G. Donovan', 'arcu.Nunc.mauris@urnanecluctus.edu', 0, '7759 Commodo Av.', ''),
(38, 'Hedley I. Perry', 'gravida.molestie@lacus.ca', 0, 'P.O. Box 588, 1536 Curabitur Rd.', ''),
(39, 'Mira Q. Shannon', 'et.arcu@egestasligulaNullam.net', 0, '6940 Euismod Av.', ''),
(40, 'Ishmael G. Galloway', 'Integer@sagittisaugueeu.org', 0, '1993 Dis Avenue', ''),
(41, 'Charissa B. Martin', 'adipiscing@lacus.edu', 0, 'Ap #426-3005 Lorem Rd.', ''),
(42, 'Iris T. Frank', 'Phasellus.vitae.mauris@magnaLoremipsum.ca', 0, 'Ap #806-8894 Sodales Rd.', ''),
(43, 'Boris N. Barrett', 'Mauris.non.dui@ullamcorpermagnaSed.co.uk', 0, '763-7911 Curae Av.', ''),
(44, 'Ivory L. Riggs', 'nec.mauris@magnaPraesent.com', 0, '574-6030 Fringilla Street', ''),
(45, 'Dacey M. Sullivan', 'Proin.eget@egestas.org', 0, '372-1817 Ac Rd.', ''),
(46, 'Myles U. Dennis', 'amet@blandit.org', 0, '612-999 Quisque Rd.', ''),
(47, 'Kendall L. Smith', 'Cras@sedsapien.edu', 0, '369-3291 Auctor Street', ''),
(48, 'Astra H. Mcdonald', 'pretium@natoquepenatibuset.edu', 0, 'Ap #352-8366 Cursus Road', ''),
(49, 'Honorato A. Wood', 'Aenean@utsemNulla.edu', 0, 'P.O. Box 580, 2655 Duis Rd.', ''),
(50, 'Wayne C. Hart', 'nec@idrisusquis.org', 0, '747-5215 Curae Ave', ''),
(51, 'Gil R. Bowen', 'Integer.sem@ridiculusmusAenean.com', 0, 'P.O. Box 237, 1811 Ut Rd.', ''),
(52, 'Emily N. Knox', 'libero.Morbi@ametante.co.uk', 0, 'P.O. Box 427, 8818 Eget Street', ''),
(53, 'Zephania F. Michael', 'dictum@feugiatnon.co.uk', 0, '5085 Conubia St.', ''),
(54, 'Frances A. Fields', 'quam.Curabitur.vel@imperdieterat.org', 0, 'Ap #691-8321 Augue. Ave', ''),
(55, 'Ava V. Martinez', 'consequat@venenatis.org', 0, 'P.O. Box 107, 1308 Ut St.', ''),
(56, 'Noel Y. Holt', 'nisi.Cum@odioauctor.com', 0, 'Ap #119-2293 Dapibus Street', ''),
(57, 'Deacon Y. Harvey', 'erat.semper.rutrum@egestasAliquam.org', 0, 'Ap #649-9623 Dui, Road', ''),
(58, 'Hedwig A. Sloan', 'luctus.et.ultrices@sedleoCras.org', 0, '164-5384 Ut Rd.', ''),
(59, 'Levi J. Cannon', 'arcu.Aliquam.ultrices@magnaPhasellusdolor.org', 0, '489 Tempor Av.', ''),
(60, 'September J. Barnett', 'Fusce.diam.nunc@auguescelerisquemollis.edu', 0, '388-2145 Neque Road', ''),
(61, 'Robin J. Hernandez', 'ipsum.Suspendisse@pedeSuspendissedui.net', 0, '6765 Montes, Av.', ''),
(62, 'Addison F. Grant', 'arcu@enim.co.uk', 0, 'Ap #318-5664 At, Ave', ''),
(63, 'Neville A. Schroeder', 'sit@inconsectetuer.edu', 0, '6293 Libero St.', ''),
(64, 'Giacomo E. Gilbert', 'molestie.Sed.id@taciti.com', 0, '5880 Enim, Street', ''),
(65, 'Britanney C. Valenzuela', 'eleifend@egestashendrerit.co.uk', 0, 'Ap #778-852 Hymenaeos. Av.', ''),
(66, 'Lacota D. Davis', 'Integer.vulputate.risus@tincidunt.edu', 0, 'P.O. Box 356, 6937 Pede. Street', ''),
(67, 'Donna E. Clark', 'Curabitur@nullaIntincidunt.co.uk', 0, '8833 Placerat. St.', ''),
(68, 'Asher N. Dudley', 'orci@parturient.net', 0, 'Ap #493-6812 Odio Av.', ''),
(69, 'Casey M. Marquez', 'sociis@magnisdis.net', 0, 'Ap #420-7004 Enim St.', ''),
(70, 'Kareem E. Herman', 'eget.nisi.dictum@nislQuisquefringilla.com', 0, 'Ap #751-6984 Nec, Avenue', ''),
(71, 'Eric F. Burns', 'suscipit.nonummy@arcu.ca', 0, 'Ap #374-162 Proin Rd.', ''),
(72, 'Dorothy V. Dodson', 'sollicitudin.commodo.ipsum@Nullaegetmetus.org', 0, '2291 Aliquam Rd.', ''),
(73, 'Naida O. Parrish', 'congue@quisaccumsan.co.uk', 0, '180-557 Cursus, Av.', ''),
(74, 'Kermit O. Flowers', 'penatibus.et@MorbivehiculaPellentesque.ca', 0, '9964 Quam Ave', ''),
(75, 'Kareem E. Browning', 'consequat.auctor@odio.net', 0, '4064 Penatibus Av.', ''),
(76, 'Hayfa G. Perry', 'molestie.tortor.nibh@eteuismodet.co.uk', 0, 'Ap #538-9808 Consectetuer, St.', ''),
(77, 'Mara S. Saunders', 'at.egestas@Donecelementumlorem.net', 0, 'P.O. Box 514, 2621 In St.', ''),
(78, 'Sloane D. Wilder', 'enim.diam@quispedePraesent.edu', 0, 'Ap #552-3106 A, Avenue', ''),
(79, 'Rafael R. Valenzuela', 'montes@In.edu', 0, '417-8961 Magna, St.', ''),
(80, 'Elmo E. Hamilton', 'eget.metus@orciUtsagittis.co.uk', 0, '6135 Nibh. Rd.', ''),
(81, 'Beck W. Buck', 'neque.venenatis@Fuscemi.edu', 0, 'P.O. Box 557, 8849 Ante Road', ''),
(82, 'Aaron N. Richard', 'tellus.sem.mollis@Morbisit.org', 0, '5817 Fusce St.', ''),
(83, 'Phelan D. Delgado', 'est@massaSuspendisseeleifend.org', 0, 'P.O. Box 861, 7102 In Rd.', ''),
(84, 'Jena C. Riggs', 'pharetra.sed@interdumliberodui.edu', 0, '744-1934 Vel, Road', ''),
(85, 'Jillian P. Aguilar', 'faucibus.Morbi@laoreet.ca', 0, '674-2212 Ut Street', ''),
(86, 'Andrew D. Gallagher', 'malesuada.Integer.id@interdum.com', 0, '153-6253 Odio. Rd.', ''),
(87, 'Mia E. Brady', 'turpis.In.condimentum@Morbiaccumsan.net', 0, 'Ap #909-6279 Nunc Road', ''),
(88, 'Mechelle Z. Hood', 'facilisis@egestasa.ca', 0, '1502 Ultrices, Rd.', ''),
(89, 'Ruby R. Grimes', 'nisl.Quisque.fringilla@utnisia.edu', 0, '985-2071 Penatibus St.', ''),
(90, 'Katelyn J. Sellers', 'habitant.morbi@ullamcorperDuisat.com', 0, '167-3668 Enim, St.', ''),
(91, 'Thane W. Castaneda', 'quis@ullamcorperDuis.edu', 0, 'Ap #461-2460 Iaculis Rd.', ''),
(92, 'Drake H. Potter', 'lectus.rutrum.urna@Morbivehicula.ca', 0, '912-3348 Fermentum Avenue', ''),
(93, 'Tanisha O. Ball', 'tellus.eu.augue@perconubia.net', 0, 'P.O. Box 612, 8519 Ac Rd.', ''),
(94, 'Adrienne U. Heath', 'Cras@congue.org', 0, 'P.O. Box 440, 7498 Ornare Ave', ''),
(95, 'Darryl E. Nichols', 'erat.eget.ipsum@id.co.uk', 0, '199-5459 Penatibus Rd.', ''),
(96, 'Tanek K. Wynn', 'arcu@sodaleselit.org', 0, 'Ap #704-3432 At Road', ''),
(97, 'Kendall V. Kane', 'parturient.montes.nascetur@mauris.ca', 0, '1524 Faucibus Av.', ''),
(98, 'Tad S. Barrera', 'luctus.et@fringillapurus.edu', 0, 'Ap #613-2769 Lorem Av.', ''),
(99, 'Dara U. Hayes', 'turpis.egestas.Aliquam@volutpatNulladignissim.co.u', 0, 'Ap #871-3208 Iaculis, Avenue', ''),
(100, 'Kitra I. Odonnell', 'enim.mi@Suspendisse.net', 0, '2961 Mauris Rd.', '');

-- --------------------------------------------------------

--
-- Table structure for table `Fotos`
--

CREATE TABLE `Fotos` (
  `id` int(11) NOT NULL,
  `caminho` varchar(100) NOT NULL,
  `idColeta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Fotos`
--

INSERT INTO `Fotos` (`id`, `caminho`, `idColeta`) VALUES
(1, 'nec, diam. Duis', 58),
(2, 'ullamcorper. Duis cursus,', 20),
(3, 'malesuada fames ac', 44),
(4, 'sit amet, consectetuer', 37),
(5, 'dolor quam, elementum', 79),
(6, 'Proin ultrices. Duis', 26),
(7, 'arcu. Vivamus sit', 8),
(8, 'nonummy ultricies ornare,', 83),
(9, 'sem eget massa.', 83),
(10, 'vel sapien imperdiet', 93),
(11, 'Sed eu eros.', 57),
(12, 'volutpat. Nulla dignissim.', 21),
(13, 'sapien. Cras dolor', 54),
(14, 'orci, consectetuer euismod', 36),
(15, 'erat vitae risus.', 2),
(16, 'accumsan neque et', 97),
(17, 'dolor. Fusce feugiat.', 64),
(18, 'quis accumsan convallis,', 90),
(19, 'sem eget massa.', 15),
(20, 'Maecenas malesuada fringilla', 55),
(21, 'libero est, congue', 11),
(22, 'sollicitudin commodo ipsum.', 14),
(23, 'non, vestibulum nec,', 68),
(24, 'est mauris, rhoncus', 94),
(25, 'sodales elit erat', 70),
(26, 'vel, vulputate eu,', 73),
(27, 'diam. Duis mi', 76),
(28, 'consequat auctor, nunc', 50),
(29, 'mus. Proin vel', 12),
(30, 'leo elementum sem,', 83),
(31, 'sit amet, consectetuer', 19),
(32, 'erat neque non', 53),
(33, 'Duis at lacus.', 63),
(34, 'ligula. Aenean gravida', 95),
(35, 'Pellentesque tincidunt tempus', 48),
(36, 'vestibulum massa rutrum', 49),
(37, 'odio tristique pharetra.', 38),
(38, 'urna convallis erat,', 74),
(39, 'rutrum. Fusce dolor', 76),
(40, 'nulla vulputate dui,', 23),
(41, 'condimentum. Donec at', 74),
(42, 'molestie tellus. Aenean', 56),
(43, 'neque non quam.', 11),
(44, 'metus sit amet', 62),
(45, 'nec urna et', 51),
(46, 'iaculis nec, eleifend', 38),
(47, 'rutrum magna. Cras', 53),
(48, 'Nunc pulvinar arcu', 65),
(49, 'pharetra sed, hendrerit', 66),
(50, 'orci luctus et', 79),
(51, 'aliquet nec, imperdiet', 12),
(52, 'Duis sit amet', 7),
(53, 'velit. Sed malesuada', 66),
(54, 'euismod enim. Etiam', 40),
(55, 'diam dictum sapien.', 37),
(56, 'magnis dis parturient', 41),
(57, 'sagittis augue, eu', 1),
(58, 'eros nec tellus.', 2),
(59, 'Sed malesuada augue', 6),
(60, 'lectus, a sollicitudin', 44),
(61, 'hendrerit consectetuer, cursus', 7),
(62, 'vel turpis. Aliquam', 94),
(63, 'sapien. Aenean massa.', 62),
(64, 'cursus, diam at', 36),
(65, 'arcu. Sed eu', 63),
(66, 'consequat, lectus sit', 26),
(67, 'sed, sapien. Nunc', 78),
(68, 'Integer eu lacus.', 2),
(69, 'a, facilisis non,', 36),
(70, 'hendrerit. Donec porttitor', 61),
(71, 'velit eu sem.', 94),
(72, 'senectus et netus', 46),
(73, 'sit amet, dapibus', 61),
(74, 'neque. Nullam ut', 54),
(75, 'vitae dolor. Donec', 44),
(76, 'Nam consequat dolor', 50),
(77, 'consequat dolor vitae', 79),
(78, 'rutrum eu, ultrices', 22),
(79, 'blandit viverra. Donec', 77),
(80, 'a, auctor non,', 44),
(81, 'dolor. Donec fringilla.', 98),
(82, 'eu lacus. Quisque', 7),
(83, 'quis diam. Pellentesque', 58),
(84, 'Proin vel nisl.', 75),
(85, 'vestibulum massa rutrum', 16),
(86, 'egestas. Aliquam nec', 68),
(87, 'ipsum cursus vestibulum.', 69),
(88, 'euismod urna. Nullam', 91),
(89, 'ornare, elit elit', 4),
(90, 'ultricies sem magna', 98),
(91, 'ad litora torquent', 23),
(92, 'ante lectus convallis', 65),
(93, 'malesuada vel, convallis', 58),
(94, 'mollis lectus pede', 11),
(95, 'Nunc ut erat.', 50),
(96, 'purus ac tellus.', 8),
(97, 'enim consequat purus.', 92),
(98, 'dapibus quam quis', 87),
(99, 'In faucibus. Morbi', 87),
(100, 'eu, placerat eget,', 58);

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

-- --------------------------------------------------------

--
-- Table structure for table `Usuario`
--

CREATE TABLE `Usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pontos` int(11) DEFAULT '0',
  `avaliacao` int(11) DEFAULT '0',
  `avatar` varchar(100) DEFAULT NULL,
  `senha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Usuario`
--

INSERT INTO `Usuario` (`id`, `nome`, `email`, `pontos`, `avaliacao`, `avatar`, `senha`) VALUES
(1, 'adsf', 'teste@teste', 123, 2, 'root', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3'),
(2, 'adsf', 'teste@teste', 12, 2, 'root', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Coleta`
--
ALTER TABLE `Coleta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idCooperativa` (`idCooperativa`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indexes for table `Cooperativa`
--
ALTER TABLE `Cooperativa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Fotos`
--
ALTER TABLE `Fotos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idColeta` (`idColeta`);

--
-- Indexes for table `Promocao`
--
ALTER TABLE `Promocao`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- Indexes for table `Usuario`
--
ALTER TABLE `Usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Coleta`
--
ALTER TABLE `Coleta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `Cooperativa`
--
ALTER TABLE `Cooperativa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `Fotos`
--
ALTER TABLE `Fotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `Promocao`
--
ALTER TABLE `Promocao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `Usuario`
--
ALTER TABLE `Usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Coleta`
--
ALTER TABLE `Coleta`
  ADD CONSTRAINT `Coleta_ibfk_1` FOREIGN KEY (`idCooperativa`) REFERENCES `Cooperativa` (`id`),
  ADD CONSTRAINT `Coleta_ibfk_2` FOREIGN KEY (`idUsuario`) REFERENCES `Usuario` (`id`);

--
-- Constraints for table `Fotos`
--
ALTER TABLE `Fotos`
  ADD CONSTRAINT `idColeta` FOREIGN KEY (`idColeta`) REFERENCES `Coleta` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
