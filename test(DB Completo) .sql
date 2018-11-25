-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 25-Nov-2018 às 19:32
-- Versão do servidor: 10.1.35-MariaDB
-- versão do PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresa`
--

CREATE TABLE `empresa` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `cnpj` varchar(30) NOT NULL,
  `cidade` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `empresa`
--

INSERT INTO `empresa` (`id`, `nome`, `email`, `cnpj`, `cidade`) VALUES
(1, 'Vivamus Euismod Industries', 'ac.sem@risusMorbimetus.com', '529074-4290', 'Palau'),
(2, 'Tellus Institute', 'sit.amet.dapibus@mipedenonummy.ca', '897692-4699', 'Wallis and Futuna'),
(3, 'Ultricies Ligula Nullam LLC', 'bibendum@variuseteuismod.com', '652812-5377', 'Greenland'),
(4, 'Molestie Consulting', 'nisi.Cum.sociis@MaurisnullaInteger.edu', '307383-9593', 'Norfolk Island'),
(5, 'Placerat Velit Ltd', 'amet.consectetuer@sollicitudinadipiscing.org', '114837-7979', 'Comoros'),
(6, 'Mi Ac PC', 'Proin.eget.odio@nec.com', '886850-2843', 'Kuwait');

-- --------------------------------------------------------

--
-- Estrutura da tabela `filial`
--

CREATE TABLE `filial` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `cnpj` varchar(200) NOT NULL,
  `cidade` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `filial`
--

INSERT INTO `filial` (`id`, `id_empresa`, `nome`, `email`, `cnpj`, `cidade`) VALUES
(1, 3, 'Sed Diam PC', 'mi.lorem.vehicula@porttitor.org', '303287-4814', 'Faucibus Leo In PC'),
(2, 2, 'Amet Ltd', 'tortor.Integer.aliquam@at.net', '982508-4701', 'Eu Foundation'),
(3, 1, 'Eget Venenatis Ltd', 'at@luctusfelispurus.ca', '073553-5312', 'Elit Incorporated'),
(4, 5, 'Sed Nulla Corp.', 'Morbi.quis@sapienNuncpulvinar.com', '269631-8092', 'Ac PC'),
(5, 4, 'Pede LLP', 'orci.consectetuer.euismod@ipsum.co.uk', '443501-7928', 'Interdum Sed Associates'),
(6, 5, 'Ultrices Mauris Ipsum LLP', 'cursus.luctus.ipsum@laoreet.net', '918484-7490', 'Nullam Ut LLP'),
(7, 6, 'Interdum Incorporated', 'auctor.nunc.nulla@turpis.com', '209878-2424', 'Et Rutrum Incorporated'),
(8, 1, 'A Enim Suspendisse Industries', 'sit@malesuada.com', '384129-1929', 'Pede Consulting'),
(9, 3, 'Ornare Lectus PC', 'ligula.consectetuer.rhoncus@egestasFusce.edu', '818376-1371', 'Aliquam Gravida Mauris PC'),
(10, 5, 'Vestibulum Consulting', 'et.rutrum@vulputate.org', '968528-0993', 'Nulla Cras Eu Foundation'),
(11, 4, 'Massa Mauris Vestibulum Foundation', 'neque@rhoncus.edu', '544671-4742', 'Dui Cras Pellentesque Limited'),
(12, 1, 'Sit Associates', 'dui@litoratorquentper.net', '856988-1371', 'Arcu Nunc Consulting'),
(13, 1, 'Inceptos Foundation', 'Suspendisse@Duiscursus.ca', '219499-8601', 'Elit Erat Vitae Consulting'),
(14, 6, 'Non Bibendum Sed Industries', 'penatibus@nisidictum.edu', '377053-3630', 'Mollis Nec Cursus Corporation'),
(15, 3, 'Quis Turpis Institute', 'nulla.magna.malesuada@massaInteger.ca', '089552-9642', 'Adipiscing Limited'),
(16, 5, 'Placerat Cras Dictum Institute', 'lacinia.Sed.congue@necligula.com', '166410-1621', 'Ullamcorper Magna Consulting'),
(17, 2, 'Sapien Nunc Pulvinar Foundation', 'nibh.sit@erosnec.org', '529634-0606', 'Amet LLC');

-- --------------------------------------------------------

--
-- Estrutura da tabela `transporte`
--

CREATE TABLE `transporte` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `id_filial` int(11) NOT NULL,
  `status_ocorrencia` varchar(100) NOT NULL,
  `data_ocorrencia` datetime NOT NULL,
  `fil_ser_ct_e` varchar(30) NOT NULL,
  `data` date NOT NULL,
  `nf` varchar(10) NOT NULL,
  `origem` varchar(150) NOT NULL,
  `destino` varchar(150) NOT NULL,
  `destinatario` varchar(200) NOT NULL,
  `data_agendamento` datetime NOT NULL,
  `data_agendada_prog` datetime NOT NULL,
  `transit_time` datetime NOT NULL,
  `distancia` int(11) NOT NULL,
  `motorista` varchar(200) NOT NULL,
  `cavalo` varchar(30) NOT NULL,
  `carreta` varchar(30) NOT NULL,
  `frota` varchar(30) NOT NULL,
  `dt` varchar(30) NOT NULL,
  `ocorrencias` varchar(100) NOT NULL,
  `posicoes` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `km` float NOT NULL,
  `horas_uteis` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `transporte`
--

INSERT INTO `transporte` (`id`, `id_empresa`, `id_filial`, `status_ocorrencia`, `data_ocorrencia`, `fil_ser_ct_e`, `data`, `nf`, `origem`, `destino`, `destinatario`, `data_agendamento`, `data_agendada_prog`, `transit_time`, `distancia`, `motorista`, `cavalo`, `carreta`, `frota`, `dt`, `ocorrencias`, `posicoes`, `status`, `km`, `horas_uteis`) VALUES
(1, 1, 17, 'agendada', '0000-00-00 00:00:00', '6840129', '2019-05-06', 'nf', 'Buizingen', 'Hamme-Mille', 'Turpis Nec Consulting', '2019-08-26 03:40:03', '2019-04-15 00:05:47', '2018-12-12 02:24:47', 113, 'Hoyt ', '780446', '118555', 'Pharetra Ut Corporation', '16990314-3411', 'ocorrencias', 'posicoes', 'ATRASADO', 57, 188),
(2, 5, 11, 'gerada', '0000-00-00 00:00:00', '7477652', '2018-07-14', 'nf', 'Delianuova', 'Paraíso', 'Molestie Dapibus Inc.', '2018-01-17 06:48:32', '2018-07-19 06:35:30', '2018-03-20 14:17:43', 410, 'Declan ', '253181', '655704', 'Egestas Aliquam Industries', '16780627-4564', 'ocorrencias', 'posicoes', 'ENCERRADA', 156, 422),
(3, 5, 14, 'realizada', '0000-00-00 00:00:00', '9269259', '2017-11-23', 'nf', 'Aschaffenburg', 'WanfercŽe-Baulet', 'Dictum Eleifend Nunc Industries', '2018-03-16 11:16:54', '2018-03-20 19:46:03', '2019-01-29 11:34:40', 776, 'Graiden ', '457728', '724927', 'Eu Incorporated', '16450330-6633', 'ocorrencias', 'posicoes', 'NO PRAZO', 255, 137),
(4, 3, 3, 'agendada', '0000-00-00 00:00:00', '9062324', '2017-11-27', 'nf', 'Fabro', 'Canberra', 'Venenatis Vel Faucibus Industries', '2019-03-01 16:18:00', '2019-06-11 08:44:30', '2018-02-21 19:09:54', 1591, 'Anjolie ', '316964', '438669', 'Enim Non Nisi Corporation', '16240713-8615', 'ocorrencias', 'posicoes', 'ENCERRADA', 541, 355),
(5, 2, 2, 'agendada', '0000-00-00 00:00:00', '6182434', '2017-12-03', 'nf', 'Westmount', 'Monacilioni', 'Risus Institute', '2017-12-07 13:12:05', '2019-05-01 09:04:24', '2019-09-27 21:59:25', 1716, 'William ', '470331', '284580', 'Lacinia Industries', '16490708-1170', 'ocorrencias', 'posicoes', 'NO PRAZO', 751, 13),
(6, 5, 7, 'destino', '0000-00-00 00:00:00', '1267603', '2019-09-02', 'nf', 'Invercargill', 'Portland', 'Lorem Vitae Odio Incorporated', '2018-07-03 11:00:00', '2019-10-19 21:43:10', '2018-07-29 03:03:56', 541, 'Hoyt ', '356885', '845800', 'Neque Sed Eget Corporation', '16131019-3535', 'ocorrencias', 'posicoes', 'ENCERRADA', 756, 404),
(7, 1, 5, 'destino', '0000-00-00 00:00:00', '4370694', '2019-03-13', 'nf', 'Lethbridge', 'Fort Laird', 'Cum Sociis LLP', '2019-04-05 06:51:20', '2018-01-05 10:56:06', '2018-08-22 02:55:48', 1308, 'Andrew ', '638579', '294122', 'Nec Tempus Scelerisque Foundat', '16181008-0604', 'ocorrencias', 'posicoes', 'ATRASADO', 539, 374),
(8, 1, 14, 'realizada', '0000-00-00 00:00:00', '5203361', '2018-06-12', 'nf', 'Mount Pearl', 'Rimbey', 'Amet Inc.', '2018-05-09 18:37:37', '2019-06-26 22:54:34', '2018-11-01 19:04:56', 516, 'Murphy ', '617543', '801460', 'Placerat Velit LLC', '16210901-5525', 'ocorrencias', 'posicoes', 'ENCERRADA', 898, 218),
(9, 2, 11, 'agendada', '0000-00-00 00:00:00', '1512400', '2019-09-04', 'nf', 'Tampa', 'Lolol', 'Amet Industries', '2018-03-01 21:58:03', '2019-06-24 11:50:54', '2018-04-13 10:03:30', 1696, 'Beatrice ', '844832', '466724', 'Curabitur Consequat Lectus Com', '16410229-7175', 'ocorrencias', 'posicoes', 'ATRASADO', 747, 382),
(10, 3, 5, 'realizada', '0000-00-00 00:00:00', '1184633', '2018-06-16', 'nf', 'Southend', 'Cabano', 'Nunc Ltd', '2018-01-30 08:50:51', '2019-06-10 10:05:28', '2019-09-30 11:05:18', 907, 'Alexis ', '533397', '385165', 'Malesuada Id Erat LLP', '16481227-9190', 'ocorrencias', 'posicoes', 'ATRASADO', 4, 116),
(11, 5, 15, 'agendada', '0000-00-00 00:00:00', '8615338', '2019-01-25', 'nf', 'Kessenich', 'Rae-Edzo', 'Enim Gravida Sit Institute', '2018-09-17 20:20:32', '2018-03-27 20:00:03', '2018-07-24 15:53:15', 199, 'Alexis ', '105518', '842755', 'Arcu Imperdiet Foundation', '16531113-5106', 'ocorrencias', 'posicoes', 'ENCERRADA', 203, 154),
(12, 6, 8, 'destino', '0000-00-00 00:00:00', '4051355', '2019-02-25', 'nf', 'Wayaux', 'Kansas City', 'Risus Inc.', '2018-10-06 14:41:39', '2018-06-15 12:32:02', '2018-10-24 15:43:34', 1526, 'Anjolie ', '247980', '287214', 'Lobortis Risus In Consulting', '16681107-9844', 'ocorrencias', 'posicoes', 'NO PRAZO', 637, 151),
(13, 3, 4, 'destino', '0000-00-00 00:00:00', '1220881', '2018-07-13', 'nf', 'Finkenstein am Faaker See', 'Telfs', 'Nisi Sem Incorporated', '2018-01-23 16:27:10', '2019-05-26 16:20:41', '2019-11-05 02:07:13', 187, 'Fitzgerald ', '426384', '890783', 'Aenean Eget Corp.', '16400804-5579', 'ocorrencias', 'posicoes', 'ENCERRADA', 377, 321),
(14, 3, 10, 'gerada', '0000-00-00 00:00:00', '2716737', '2018-02-13', 'nf', 'Beerst', 'Moignelee', 'Tellus Id Nunc PC', '2019-09-12 23:08:57', '2018-09-20 23:38:46', '2019-06-27 03:27:12', 1744, 'Preston ', '778124', '739902', 'In Magna Foundation', '16421029-8628', 'ocorrencias', 'posicoes', 'ENCERRADA', 621, 399),
(15, 2, 14, 'realizada', '0000-00-00 00:00:00', '2041655', '2019-07-04', 'nf', 'Beervelde', 'Martelange', 'Aliquam LLP', '2018-11-16 23:41:15', '2018-10-14 11:53:43', '2017-12-27 15:42:35', 1567, 'Murphy ', '662957', '809226', 'Aliquet Vel Vulputate Limited', '16720318-3806', 'ocorrencias', 'posicoes', 'ATRASADO', 140, 393),
(16, 6, 15, 'realizada', '0000-00-00 00:00:00', '2363201', '2018-02-18', 'nf', 'Latera', 'Zandvoorde', 'Ac Libero Foundation', '2019-02-04 03:31:27', '2018-04-12 12:13:26', '2019-11-19 02:05:02', 710, 'Sawyer ', '446171', '473816', 'Sit LLP', '16080324-3328', 'ocorrencias', 'posicoes', 'ENCERRADA', 294, 59),
(17, 3, 15, 'destino', '0000-00-00 00:00:00', '4808209', '2018-06-17', 'nf', 'Lasnigo', 'Hertford', 'Blandit At Nisi Consulting', '2018-09-16 18:49:54', '2018-02-17 22:52:11', '2018-02-06 10:13:11', 1722, 'Murphy ', '799238', '379447', 'Luctus Aliquet Ltd', '16900124-3196', 'ocorrencias', 'posicoes', 'ENCERRADA', 931, 176),
(18, 6, 8, 'destino', '0000-00-00 00:00:00', '8015244', '2017-11-01', 'nf', 'Erciş', 'Çarşamba', 'Dis Parturient Inc.', '2018-01-30 17:35:48', '2019-07-01 08:43:26', '2019-04-02 04:19:01', 1699, 'Graham ', '730954', '778498', 'Sit Amet Foundation', '16440823-6901', 'ocorrencias', 'posicoes', 'ENCERRADA', 55, 338),
(19, 6, 14, 'gerada', '0000-00-00 00:00:00', '5019600', '2019-05-16', 'nf', 'Parral', 'Ansfelden', 'Est Vitae Sodales Institute', '2019-11-02 00:44:36', '2018-08-30 23:08:52', '2018-11-01 14:13:35', 775, 'Murphy ', '891810', '248287', 'Lobortis Mauris Corp.', '16370719-0942', 'ocorrencias', 'posicoes', 'NO PRAZO', 11, 432),
(20, 5, 1, 'agendada', '0000-00-00 00:00:00', '9239437', '2017-10-15', 'nf', 'Hay-on-Wye', 'Bostaniçi', 'Integer Urna LLC', '2018-10-20 08:07:49', '2018-10-10 17:22:48', '2018-02-24 03:38:22', 1504, 'Sawyer ', '270703', '458902', 'Justo Industries', '16780611-5395', 'ocorrencias', 'posicoes', 'ENCERRADA', 955, 57),
(21, 3, 17, 'destino', '0000-00-00 00:00:00', '2972302', '2018-11-04', 'nf', 'Orhangazi', 'Schwedt', 'Nullam LLP', '2019-07-11 16:45:14', '2018-06-11 04:07:46', '2019-05-09 06:07:18', 1371, 'Gil', '811782', '331931', 'Mauris LLP', '16730521-3857', 'ocorrencias', 'posicoes', 'ATRASADO', 323, 481),
(22, 5, 16, 'destino', '0000-00-00 00:00:00', '5225179', '2019-10-15', 'nf', 'Traiguén', 'Canora', 'Commodo Ipsum Associates', '2018-01-21 16:20:32', '2019-07-05 05:15:50', '2018-11-22 11:24:18', 1071, 'Joel ', '178697', '545171', 'Sem Corporation', '16501215-9280', 'ocorrencias', 'posicoes', 'ATRASADO', 962, 449),
(23, 3, 7, 'realizada', '0000-00-00 00:00:00', '2523017', '2017-10-12', 'nf', 'Baie-Saint-Paul', 'San Jose', 'Eget Inc.', '2018-03-17 09:21:50', '2019-08-23 14:07:45', '2018-07-06 18:27:26', 739, 'Graham ', '433800', '734033', 'Nunc Consulting', '16050221-4984', 'ocorrencias', 'posicoes', 'NO PRAZO', 76, 368),
(24, 6, 8, 'realizada', '0000-00-00 00:00:00', '1598621', '2018-07-05', 'nf', 'Rueglio', 'Mirzapur-cum-Vindhyachal', 'Fusce Dolor PC', '2018-07-19 03:21:41', '2019-03-16 09:08:06', '2019-06-29 04:23:05', 1094, 'Preston ', '353625', '141674', 'Sit Amet Industries', '16940918-6492', 'ocorrencias', 'posicoes', 'ATRASADO', 462, 218),
(25, 3, 12, 'realizada', '0000-00-00 00:00:00', '4719137', '2019-08-03', 'nf', 'Parkland County', 'Ollagüe', 'Phasellus In Felis Inc.', '2019-11-12 10:44:13', '2018-02-11 05:42:45', '2018-03-11 01:24:17', 920, 'Declan ', '564481', '990416', 'A Feugiat LLP', '16811009-6677', 'ocorrencias', 'posicoes', 'ATRASADO', 17, 265),
(26, 3, 17, 'realizada', '0000-00-00 00:00:00', '7833215', '2017-11-08', 'nf', 'Varanasi', 'María Pinto', 'Nulla Aliquet Proin Consulting', '2019-02-01 11:46:09', '2019-02-07 10:57:31', '2019-04-01 15:01:14', 48, 'Howard ', '420801', '783137', 'Velit In Aliquet Industries', '16140306-2712', 'ocorrencias', 'posicoes', 'ATRASADO', 177, 419),
(27, 4, 14, 'gerada', '0000-00-00 00:00:00', '3165254', '2017-12-31', 'nf', 'Gwalior', 'Alma', 'Dapibus Id Corp.', '2019-03-22 04:10:05', '2019-05-29 13:39:58', '2019-08-23 00:30:29', 1365, 'Illiana ', '985099', '482259', 'Tincidunt Institute', '16231101-0348', 'ocorrencias', 'posicoes', 'ENCERRADA', 449, 74),
(28, 3, 13, 'gerada', '0000-00-00 00:00:00', '5158571', '2018-07-16', 'nf', 'Baarle-Hertog', 'Pangnirtung', 'Velit Sed Malesuada LLP', '2018-10-29 14:12:05', '2018-09-06 23:17:54', '2018-09-03 18:47:50', 932, 'Preston ', '774370', '552901', 'Egestas Fusce Associates', '16460228-1364', 'ocorrencias', 'posicoes', 'ENCERRADA', 902, 205),
(29, 1, 16, 'agendada', '0000-00-00 00:00:00', '7743367', '2018-12-09', 'nf', 'Gojra', 'Torno', 'Donec Felis LLC', '2018-12-31 07:29:14', '2018-09-30 23:57:32', '2019-02-25 15:20:39', 1515, 'Rae ', '451053', '824630', 'Fringilla Limited', '16230718-5823', 'ocorrencias', 'posicoes', 'ATRASADO', 597, 201),
(30, 6, 2, 'realizada', '0000-00-00 00:00:00', '1367228', '2017-10-24', 'nf', 'Angers', 'Saint-Louis', 'Pellentesque LLC', '2018-11-04 11:24:07', '2018-02-11 05:16:56', '2019-04-24 14:56:10', 902, 'Anjolie ', '975572', '756765', 'Mi Enim LLP', '16580724-8751', 'ocorrencias', 'posicoes', 'ENCERRADA', 513, 285),
(31, 2, 10, 'gerada', '0000-00-00 00:00:00', '7708030', '2018-09-25', 'nf', 'Klabbeek', 'Ulhasnagar', 'Non Lacinia Corporation', '2017-12-31 05:47:55', '2019-07-23 11:37:42', '2018-11-23 00:57:56', 816, 'Gil', '581342', '134102', 'Consectetuer Mauris Associates', '16721230-1795', 'ocorrencias', 'posicoes', 'NO PRAZO', 569, 211),
(32, 5, 3, 'gerada', '0000-00-00 00:00:00', '7532371', '2019-01-25', 'nf', 'New Radnor', 'Fort Smith', 'Est Limited', '2018-08-07 13:50:48', '2019-07-30 03:06:39', '2018-10-21 10:12:31', 925, 'Hedley ', '612135', '703579', 'Aliquam Gravida Company', '16640503-7737', 'ocorrencias', 'posicoes', 'ENCERRADA', 8, 208),
(33, 4, 14, 'destino', '0000-00-00 00:00:00', '7225243', '2019-06-25', 'nf', 'Norman', 'Campbelltown', 'Metus Vivamus Euismod LLC', '2018-07-20 02:34:49', '2018-08-03 00:07:24', '2017-11-30 08:14:06', 1793, 'Slade ', '343613', '951017', 'Dolor Vitae Inc.', '16690207-4662', 'ocorrencias', 'posicoes', 'ENCERRADA', 463, 419),
(34, 1, 16, 'gerada', '0000-00-00 00:00:00', '1041539', '2018-04-27', 'nf', 'Callander', 'Milwaukee', 'Leo Institute', '2018-07-13 13:40:00', '2017-12-10 07:32:17', '2018-06-11 19:32:51', 1610, 'Alexis ', '781242', '373476', 'A Tortor Nunc Corporation', '16021122-8564', 'ocorrencias', 'posicoes', 'ATRASADO', 597, 120),
(35, 4, 1, 'agendada', '0000-00-00 00:00:00', '1665466', '2019-06-09', 'nf', 'İnegöl', 'Dro', 'Nulla Ante Limited', '2019-07-10 03:03:43', '2019-06-01 08:55:40', '2019-07-09 14:53:35', 43, 'Murphy ', '763276', '782547', 'Arcu Incorporated', '16190909-1330', 'ocorrencias', 'posicoes', 'ENCERRADA', 340, 235),
(36, 1, 17, 'gerada', '0000-00-00 00:00:00', '6188181', '2019-09-29', 'nf', 'Panguipulli', 'Salt Lake City', 'Tellus Institute', '2019-01-19 20:17:31', '2018-08-21 17:21:06', '2018-09-18 02:02:19', 1658, 'Declan ', '710300', '253872', 'Luctus Curabitur Limited', '16150627-7894', 'ocorrencias', 'posicoes', 'ATRASADO', 647, 369),
(37, 3, 2, 'agendada', '0000-00-00 00:00:00', '8838718', '2018-11-30', 'nf', 'Solihull', 'Estevan', 'Mi Ltd', '2019-09-08 04:34:32', '2018-11-05 01:24:10', '2018-11-30 20:21:02', 566, 'Declan ', '109580', '863486', 'Gravida Consulting', '16240411-8693', 'ocorrencias', 'posicoes', 'ATRASADO', 408, 482),
(38, 6, 10, 'destino', '0000-00-00 00:00:00', '3168576', '2018-02-15', 'nf', 'Cannes', 'Coinco', 'Lobortis Corporation', '2018-01-23 21:04:25', '2018-05-08 07:33:10', '2019-04-19 02:55:56', 1161, 'Beatrice ', '623650', '232594', 'Sapien Corporation', '16721221-6985', 'ocorrencias', 'posicoes', 'ENCERRADA', 290, 390),
(39, 5, 3, 'realizada', '0000-00-00 00:00:00', '4929930', '2017-10-24', 'nf', 'Muzaffarnagar', 'Nanaimo', 'Maecenas Industries', '2019-04-26 08:52:38', '2019-01-01 08:16:14', '2019-03-04 21:32:48', 1418, 'Stone ', '308424', '393866', 'Elementum Lorem Ut Incorporate', '16630628-2978', 'ocorrencias', 'posicoes', 'NO PRAZO', 767, 244),
(40, 6, 1, 'agendada', '0000-00-00 00:00:00', '9555917', '2018-01-22', 'nf', 'Ñiquén', 'Oostkerk', 'Gravida Incorporated', '2019-11-15 09:31:15', '2019-10-19 15:56:25', '2018-01-06 07:28:46', 36, 'Beatrice ', '860087', '614730', 'Rutrum Associates', '16190928-1071', 'ocorrencias', 'posicoes', 'ATRASADO', 759, 224),
(41, 6, 11, 'agendada', '0000-00-00 00:00:00', '8445605', '2019-08-05', 'nf', 'Pencahue', 'Estación Central', 'Amet Metus Associates', '2019-05-19 03:40:32', '2019-11-23 00:01:42', '2018-09-24 15:49:11', 356, 'Anjolie ', '976120', '754093', 'Eleifend Corp.', '16721020-4058', 'ocorrencias', 'posicoes', 'NO PRAZO', 750, 476),
(42, 2, 9, 'agendada', '0000-00-00 00:00:00', '5015716', '2019-03-09', 'nf', 'Chichester', 'Malgesso', 'Lobortis Incorporated', '2018-01-23 04:55:32', '2018-02-10 06:47:27', '2019-10-10 11:12:50', 1396, 'Declan ', '627457', '739790', 'Volutpat Institute', '16540328-6163', 'ocorrencias', 'posicoes', 'ATRASADO', 986, 116),
(43, 1, 8, 'destino', '0000-00-00 00:00:00', '6944588', '2017-10-11', 'nf', 'Erie', 'Inverurie', 'Quisque Nonummy LLP', '2019-09-26 12:33:16', '2019-01-01 10:49:39', '2019-04-20 06:47:01', 519, 'Graiden ', '342031', '362720', 'Nibh Vulputate Inc.', '16401019-6295', 'ocorrencias', 'posicoes', 'ENCERRADA', 8, 168),
(44, 2, 10, 'realizada', '0000-00-00 00:00:00', '8102880', '2018-09-01', 'nf', 'Greenwich', 'Grandrieu', 'Dolor Corp.', '2019-10-17 09:13:13', '2019-08-10 23:33:46', '2019-07-28 00:43:01', 663, 'Graham ', '725883', '910355', 'Nec Eleifend Industries', '16411001-6500', 'ocorrencias', 'posicoes', 'ATRASADO', 421, 39),
(45, 6, 11, 'realizada', '0000-00-00 00:00:00', '3211480', '2019-07-27', 'nf', 'Fumal', 'Luton', 'Nisl Arcu Iaculis PC', '2018-05-24 12:27:14', '2019-05-10 16:16:40', '2017-11-30 04:53:24', 1552, 'Graiden ', '982350', '528995', 'Vivamus Nisi Mauris Associates', '16800101-3435', 'ocorrencias', 'posicoes', 'ENCERRADA', 580, 170),
(46, 6, 13, 'gerada', '0000-00-00 00:00:00', '4259874', '2017-11-26', 'nf', 'Mores', 'Saint-Urbain', 'Massa Non Ante Inc.', '2018-06-15 12:39:21', '2019-11-17 12:29:55', '2018-01-20 11:18:44', 146, 'Slade ', '647962', '807276', 'Augue Scelerisque Institute', '16351012-9053', 'ocorrencias', 'posicoes', 'ENCERRADA', 313, 259),
(47, 6, 5, 'gerada', '0000-00-00 00:00:00', '7993906', '2018-10-06', 'nf', 'Kasur', 'Couture-Saint-Germain', 'Nunc Ut Corporation', '2018-08-18 21:28:14', '2018-04-26 19:27:36', '2019-08-15 17:18:40', 50, 'Sawyer ', '384358', '406901', 'Elit Aliquam Corporation', '16481226-6841', 'ocorrencias', 'posicoes', 'NO PRAZO', 372, 67),
(48, 2, 10, 'destino', '0000-00-00 00:00:00', '3220266', '2019-06-06', 'nf', 'Maranguape', 'Sauvenire', 'Dui Nec Tempus Industries', '2018-04-27 18:22:54', '2018-10-08 20:53:21', '2018-01-21 22:47:01', 784, 'Murphy ', '984324', '520073', 'Nulla Aliquet Proin LLP', '16620710-7985', 'ocorrencias', 'posicoes', 'ENCERRADA', 292, 388),
(49, 5, 11, 'realizada', '0000-00-00 00:00:00', '5540297', '2019-03-11', 'nf', 'Noduwez', 'Gontrode', 'Sociosqu Foundation', '2018-10-27 00:31:35', '2017-11-28 05:18:30', '2018-04-06 13:39:48', 1458, 'Fitzgerald ', '752379', '582178', 'Nec Luctus Incorporated', '16530317-4535', 'ocorrencias', 'posicoes', 'ATRASADO', 684, 274),
(50, 2, 4, 'destino', '0000-00-00 00:00:00', '5090834', '2018-03-14', 'nf', 'Silchar', 'Pisa', 'Sit Corporation', '2018-02-27 08:09:23', '2019-02-20 09:10:25', '2018-08-16 07:02:13', 1602, 'Rae ', '699887', '645563', 'Vestibulum Neque Sed LLC', '16430322-9431', 'ocorrencias', 'posicoes', 'ATRASADO', 389, 330),
(51, 4, 13, 'destino', '0000-00-00 00:00:00', '9687190', '2017-10-17', 'nf', 'Hope', 'Banbury', 'Eget Odio Aliquam LLP', '2018-10-02 03:00:46', '2019-01-20 03:12:35', '2018-03-05 04:38:08', 1085, 'Sawyer ', '480558', '793297', 'Sit Amet Industries', '16410208-8921', 'ocorrencias', 'posicoes', 'ENCERRADA', 750, 327),
(52, 5, 6, 'agendada', '0000-00-00 00:00:00', '2677655', '2018-06-02', 'nf', 'Sclayn', 'Zierikzee', 'Eu Placerat Eget LLP', '2019-09-29 07:05:37', '2019-10-28 12:40:58', '2019-04-27 01:11:08', 1257, 'Slade ', '748458', '901466', 'Posuere Ltd', '16550628-6896', 'ocorrencias', 'posicoes', 'ENCERRADA', 57, 360),
(53, 2, 5, 'destino', '0000-00-00 00:00:00', '7859883', '2018-03-23', 'nf', 'Bouwel', 'Andalo', 'Nullam Ut Limited', '2018-03-02 16:08:11', '2019-05-14 01:08:29', '2018-07-31 08:38:09', 1816, 'Rae ', '896435', '465731', 'Arcu Corp.', '16400617-2615', 'ocorrencias', 'posicoes', 'NO PRAZO', 669, 467),
(54, 2, 11, 'gerada', '0000-00-00 00:00:00', '4646226', '2019-10-16', 'nf', 'Acquafredda', 'Bedollo', 'Ultrices Sit Amet LLP', '2018-01-22 05:27:03', '2018-06-10 21:17:27', '2018-04-03 10:39:14', 712, 'Slade ', '128873', '807900', 'At Lacus Quisque Company', '16800827-0996', 'ocorrencias', 'posicoes', 'ENCERRADA', 968, 362),
(55, 5, 7, 'realizada', '0000-00-00 00:00:00', '9252005', '2018-06-12', 'nf', 'Fogliano Redipuglia', 'Opole', 'Egestas Duis Limited', '2018-05-15 00:17:30', '2019-06-07 00:56:53', '2018-08-16 16:13:45', 1568, 'Rachel ', '266189', '565337', 'At Risus Nunc Foundation', '16511207-3175', 'ocorrencias', 'posicoes', 'NO PRAZO', 65, 176),
(56, 1, 17, 'gerada', '0000-00-00 00:00:00', '9597860', '2019-03-31', 'nf', 'Castelseprio', 'San Pedro de la Paz', 'Duis Mi Enim Ltd', '2019-07-16 05:38:57', '2019-07-19 09:47:17', '2018-02-23 14:44:23', 1378, 'Stone ', '956737', '541525', 'Leo Corp.', '16221218-1891', 'ocorrencias', 'posicoes', 'NO PRAZO', 653, 309),
(57, 2, 12, 'gerada', '0000-00-00 00:00:00', '4812542', '2018-05-02', 'nf', 'Westerlo', 'Bielefeld', 'Eu Incorporated', '2019-08-13 06:12:18', '2019-07-14 04:58:31', '2018-09-20 19:29:31', 1793, 'Rae ', '541174', '488753', 'Ipsum Institute', '16930509-0681', 'ocorrencias', 'posicoes', 'ENCERRADA', 647, 496),
(58, 2, 14, 'agendada', '0000-00-00 00:00:00', '5077566', '2018-09-25', 'nf', 'Adelaide', 'Kirkintilloch', 'Et Magnis Limited', '2019-05-13 09:27:40', '2019-07-04 20:08:10', '2018-04-04 21:01:01', 1108, 'Anjolie ', '923222', '856624', 'In Incorporated', '16560411-9965', 'ocorrencias', 'posicoes', 'ENCERRADA', 4, 191),
(59, 3, 9, 'destino', '0000-00-00 00:00:00', '8564948', '2018-08-04', 'nf', 'Frederick', 'Goes', 'Risus LLC', '2018-01-11 13:44:29', '2018-11-08 16:53:23', '2018-10-23 11:05:17', 298, 'Rachel ', '281600', '287405', 'Aliquam Erat Volutpat LLC', '16630904-0290', 'ocorrencias', 'posicoes', 'ATRASADO', 198, 445),
(60, 5, 7, 'destino', '0000-00-00 00:00:00', '9952995', '2018-02-08', 'nf', 'Richmond', 'Sydney', 'Aliquam Fringilla Cursus Industries', '2018-12-10 12:32:39', '2018-12-22 10:40:54', '2019-06-16 07:12:36', 1930, 'Gil', '568925', '472799', 'Duis Sit Amet Industries', '16490906-7508', 'ocorrencias', 'posicoes', 'ATRASADO', 546, 56),
(61, 4, 1, 'destino', '0000-00-00 00:00:00', '4309497', '2019-09-13', 'nf', 'Stokkem', 'Alcorcón', 'Sed Eget Lacus Ltd', '2019-05-02 11:03:19', '2019-01-07 21:39:50', '2019-02-09 00:52:48', 516, 'Graham ', '302971', '263732', 'Vitae PC', '16550505-9930', 'ocorrencias', 'posicoes', 'ATRASADO', 968, 368),
(62, 6, 2, 'agendada', '0000-00-00 00:00:00', '5386477', '2018-03-10', 'nf', 'Las Vegas', 'Balfour', 'Fermentum Industries', '2019-02-25 15:22:02', '2018-01-09 09:33:47', '2019-11-12 03:59:55', 1912, 'Graiden ', '340688', '583447', 'Dolor Corporation', '16590823-2910', 'ocorrencias', 'posicoes', 'NO PRAZO', 570, 499),
(63, 2, 3, 'realizada', '0000-00-00 00:00:00', '9117810', '2018-03-17', 'nf', 'Sint-Gillis-bij-Dendermonde', 'Valéncia', 'Proin Mi Limited', '2017-12-01 18:40:50', '2019-11-13 13:19:20', '2018-03-11 20:26:32', 276, 'Declan ', '428355', '315204', 'Nunc Industries', '16611209-4898', 'ocorrencias', 'posicoes', 'ATRASADO', 838, 307),
(64, 4, 11, 'realizada', '0000-00-00 00:00:00', '3425930', '2018-09-30', 'nf', 'Neunkirchen', 'Edmonton', 'Mi Limited', '2018-11-22 00:52:38', '2018-02-05 21:27:49', '2018-02-09 02:21:33', 902, 'Preston ', '604834', '822027', 'In Dolor Incorporated', '16050509-9721', 'ocorrencias', 'posicoes', 'NO PRAZO', 303, 200),
(65, 2, 16, 'realizada', '0000-00-00 00:00:00', '3550729', '2018-07-04', 'nf', 'Valtournenche', 'Darion', 'Libero LLP', '2019-11-19 02:15:14', '2019-10-22 03:34:53', '2019-04-08 06:57:46', 1132, 'Anjolie ', '240680', '521929', 'Amet Consulting', '16311216-4151', 'ocorrencias', 'posicoes', 'ATRASADO', 53, 122),
(66, 1, 17, 'realizada', '0000-00-00 00:00:00', '3431843', '2019-07-13', 'nf', 'Castelvecchio di Rocca Barbena', 'Loreto', 'Cursus Associates', '2019-01-12 17:10:14', '2019-05-13 01:49:55', '2018-02-13 14:49:29', 1876, 'Graiden ', '463850', '882996', 'Consequat Dolor Ltd', '16990218-6064', 'ocorrencias', 'posicoes', 'ATRASADO', 829, 486),
(67, 4, 8, 'gerada', '0000-00-00 00:00:00', '4304890', '2017-12-24', 'nf', 'Tulln an der Donau', 'Malvern', 'Non Company', '2019-04-24 20:34:55', '2018-11-03 00:04:02', '2018-03-22 01:18:36', 1733, 'Rachel ', '446345', '566685', 'Euismod Urna Associates', '16490827-3578', 'ocorrencias', 'posicoes', 'ATRASADO', 606, 373),
(68, 3, 15, 'gerada', '0000-00-00 00:00:00', '3731812', '2018-02-10', 'nf', 'Jalna', 'İzmit', 'Aliquam Rutrum PC', '2019-08-30 19:49:46', '2018-09-04 17:51:17', '2019-07-25 13:22:54', 1115, 'Joel ', '858460', '173122', 'Cursus Ltd', '16470314-8934', 'ocorrencias', 'posicoes', 'NO PRAZO', 740, 317),
(69, 3, 14, 'destino', '0000-00-00 00:00:00', '2472993', '2019-09-13', 'nf', 'Lowell', 'Forgaria nel Friuli', 'Natoque Penatibus Et Ltd', '2019-04-27 16:11:21', '2018-12-09 12:48:50', '2019-11-03 17:13:13', 955, 'Sawyer ', '585976', '892340', 'Dui Nec Urna Company', '16880808-3821', 'ocorrencias', 'posicoes', 'NO PRAZO', 663, 11),
(70, 2, 3, 'realizada', '0000-00-00 00:00:00', '9218735', '2018-07-06', 'nf', 'Itanagar', 'Castello Tesino', 'Non Sapien Molestie Ltd', '2018-02-02 01:46:38', '2018-12-03 18:20:02', '2019-04-10 18:03:48', 419, 'Slade ', '818538', '563101', 'Cubilia Curae; Donec Associate', '16321203-1235', 'ocorrencias', 'posicoes', 'ATRASADO', 829, 244),
(71, 3, 17, 'destino', '0000-00-00 00:00:00', '1456152', '2018-09-25', 'nf', 'Tucson', 'Durg', 'Nec Leo Limited', '2019-10-04 06:06:35', '2019-03-20 21:10:59', '2018-11-30 19:27:43', 1061, 'Rachel ', '220091', '644322', 'Imperdiet Ullamcorper Duis Fou', '16370221-5199', 'ocorrencias', 'posicoes', 'ATRASADO', 747, 359),
(72, 3, 4, 'agendada', '0000-00-00 00:00:00', '5126917', '2018-11-08', 'nf', 'Sagrada Familia', 'Indianapolis', 'Curabitur Limited', '2018-03-21 22:22:53', '2019-11-04 00:33:43', '2018-10-10 17:26:56', 764, 'Hedley ', '510015', '180278', 'Tortor At Risus Industries', '16511213-2492', 'ocorrencias', 'posicoes', 'ENCERRADA', 265, 195),
(73, 6, 6, 'gerada', '0000-00-00 00:00:00', '5095099', '2018-08-30', 'nf', 'Miramichi', 'Alcorcón', 'Aliquet Sem Ut Corporation', '2019-10-08 23:40:35', '2019-05-14 19:24:23', '2017-12-30 06:10:27', 1211, 'Stone ', '817534', '329843', 'Aliquam Associates', '16500522-6153', 'ocorrencias', 'posicoes', 'ENCERRADA', 327, 315),
(74, 6, 14, 'gerada', '0000-00-00 00:00:00', '4686527', '2019-02-11', 'nf', 'Düsseldorf', 'Groenlo', 'Nisi Incorporated', '2018-11-12 00:51:06', '2019-09-15 19:08:37', '2019-08-19 04:25:40', 91, 'Alexis ', '807902', '245657', 'Convallis Foundation', '16731212-8031', 'ocorrencias', 'posicoes', 'NO PRAZO', 121, 364),
(75, 2, 2, 'destino', '0000-00-00 00:00:00', '8281707', '2019-09-15', 'nf', 'Sagar', 'Scheggino', 'Arcu Ac Foundation', '2018-05-04 13:56:24', '2018-12-16 20:38:35', '2018-09-19 04:31:09', 447, 'Fitzgerald ', '840096', '866770', 'Ante Corp.', '16260216-4044', 'ocorrencias', 'posicoes', 'ENCERRADA', 862, 335),
(76, 6, 16, 'realizada', '0000-00-00 00:00:00', '9571544', '2019-04-30', 'nf', 'Cupar', 'Franeker', 'Libero Mauris Aliquam Corporation', '2018-05-15 04:15:42', '2019-01-22 01:09:19', '2019-06-27 19:18:55', 1115, 'Cooper ', '630857', '237272', 'Et Libero Industries', '16361026-6177', 'ocorrencias', 'posicoes', 'NO PRAZO', 995, 95),
(77, 5, 7, 'destino', '0000-00-00 00:00:00', '5954086', '2017-11-07', 'nf', 'Stade', 'Ramara', 'Lobortis Inc.', '2019-09-02 14:38:32', '2019-08-21 01:46:10', '2019-10-27 11:47:42', 730, 'Stone ', '968277', '765171', 'Posuere Cubilia Company', '16880422-8735', 'ocorrencias', 'posicoes', 'ATRASADO', 899, 149),
(78, 4, 9, 'destino', '0000-00-00 00:00:00', '5919407', '2018-02-10', 'nf', 'Makurdi', 'Calle Larga', 'Adipiscing Non Luctus LLP', '2017-12-22 14:19:06', '2018-04-21 16:16:41', '2018-10-16 04:15:49', 148, 'Cooper ', '274266', '269167', 'Parturient Limited', '16770118-1369', 'ocorrencias', 'posicoes', 'ENCERRADA', 93, 275),
(79, 5, 17, 'realizada', '0000-00-00 00:00:00', '9925182', '2018-11-16', 'nf', 'Marzi', 'Waidhofen an der Ybbs', 'Eros Nec Tellus Incorporated', '2019-06-12 20:46:55', '2019-08-16 12:29:25', '2018-01-09 12:27:50', 458, 'Cooper ', '891463', '374067', 'Sem Semper Erat Ltd', '16980703-4625', 'ocorrencias', 'posicoes', 'ATRASADO', 438, 420),
(80, 4, 15, 'agendada', '0000-00-00 00:00:00', '3697819', '2018-09-25', 'nf', 'Elsene', 'Porirua', 'Risus Donec Egestas Industries', '2018-09-12 00:21:58', '2019-01-07 15:37:15', '2019-08-21 21:46:24', 406, 'Illiana ', '396884', '827408', 'Vulputate Nisi Industries', '16980115-6721', 'ocorrencias', 'posicoes', 'NO PRAZO', 285, 20),
(81, 6, 17, 'realizada', '0000-00-00 00:00:00', '6681412', '2018-07-29', 'nf', 'Rewa', 'LiŽge', 'Et Arcu Imperdiet Corporation', '2018-12-27 13:31:00', '2019-01-12 23:49:22', '2018-12-12 17:09:39', 1007, 'Dustin ', '561956', '236987', 'Nec Tempus Company', '16171226-9396', 'ocorrencias', 'posicoes', 'NO PRAZO', 653, 423),
(82, 4, 3, 'agendada', '0000-00-00 00:00:00', '1745014', '2018-04-05', 'nf', 'Neustadt am Rübenberge', 'Heilbronn', 'Eros Industries', '2019-11-09 21:18:49', '2018-12-25 13:37:50', '2019-05-02 20:27:49', 207, 'Rachel ', '573195', '279774', 'Pellentesque Habitant Morbi In', '16640201-3517', 'ocorrencias', 'posicoes', 'ENCERRADA', 490, 492),
(83, 3, 3, 'agendada', '0000-00-00 00:00:00', '4903377', '2018-02-14', 'nf', 'Montecarotto', 'Liernu', 'Ante Iaculis Nec Inc.', '2019-09-12 20:36:32', '2019-06-14 00:18:22', '2019-05-20 15:16:47', 860, 'Rachel ', '476418', '567434', 'At Nisi Foundation', '16180417-0452', 'ocorrencias', 'posicoes', 'ATRASADO', 659, 306),
(84, 3, 7, 'realizada', '0000-00-00 00:00:00', '4526798', '2019-05-24', 'nf', 'Buckingham', 'Salon-de-Provence', 'Sollicitudin Ltd', '2019-04-25 08:42:23', '2018-07-14 21:44:21', '2018-02-22 02:33:12', 1179, 'Cooper ', '377050', '112458', 'Quam Quis Inc.', '16790713-8072', 'ocorrencias', 'posicoes', 'ATRASADO', 870, 365),
(85, 6, 4, 'realizada', '0000-00-00 00:00:00', '8540156', '2017-12-06', 'nf', 'Batiscan', 'Chaumont-Gistoux', 'Ipsum Primis Industries', '2018-11-27 17:11:35', '2019-04-10 03:12:35', '2018-05-21 05:11:00', 1351, 'Declan ', '292571', '910439', 'Auctor Mauris Vel Industries', '16130603-5930', 'ocorrencias', 'posicoes', 'NO PRAZO', 666, 75),
(86, 1, 16, 'realizada', '0000-00-00 00:00:00', '9523294', '2019-06-18', 'nf', 'Joondalup', 'Alphen aan den Rijn', 'Semper Nam Tempor Limited', '2019-07-10 10:08:02', '2019-02-12 13:02:25', '2019-02-16 00:56:07', 119, 'Rae ', '444874', '873021', 'Quis PC', '16650830-8597', 'ocorrencias', 'posicoes', 'ENCERRADA', 377, 445),
(87, 4, 12, 'agendada', '0000-00-00 00:00:00', '2405378', '2018-08-22', 'nf', 'Inverbervie', 'Denny', 'Aptent Inc.', '2019-08-20 13:15:09', '2019-03-31 15:02:27', '2018-10-04 06:10:03', 1771, 'Joel ', '902838', '612770', 'Natoque Penatibus PC', '16881023-6078', 'ocorrencias', 'posicoes', 'ATRASADO', 487, 348),
(88, 3, 5, 'realizada', '0000-00-00 00:00:00', '3700304', '2019-06-05', 'nf', 'Slijpe', 'Leut', 'Lorem Sit Corporation', '2019-06-10 04:06:59', '2019-10-07 02:16:19', '2018-12-18 05:28:16', 424, 'Rae ', '752064', '197922', 'Gravida Praesent PC', '16390507-8998', 'ocorrencias', 'posicoes', 'ATRASADO', 937, 454),
(89, 4, 16, 'agendada', '0000-00-00 00:00:00', '2672248', '2018-05-15', 'nf', 'Wetaskiwin', 'Lions Bay', 'Enim Diam Corporation', '2019-11-25 00:46:56', '2018-11-04 17:45:11', '2019-10-02 03:35:07', 1133, 'Rachel ', '525228', '152429', 'Hendrerit Neque In Corp.', '16240506-5109', 'ocorrencias', 'posicoes', 'ATRASADO', 96, 417),
(90, 2, 5, 'agendada', '0000-00-00 00:00:00', '9727452', '2018-11-30', 'nf', 'Limburg a.d. Lahn', 'Marburg', 'Eu Accumsan Sed Company', '2018-07-29 01:28:21', '2019-03-28 14:49:10', '2018-05-25 15:19:51', 512, 'Andrew ', '506048', '331056', 'Nulla Eget Metus Corporation', '16540823-8466', 'ocorrencias', 'posicoes', 'ENCERRADA', 179, 19),
(91, 1, 13, 'destino', '0000-00-00 00:00:00', '6297010', '2019-06-06', 'nf', 'Dover', 'Surrey', 'In Associates', '2018-01-01 18:18:28', '2018-01-24 20:52:16', '2018-12-12 14:38:50', 692, 'Cooper ', '955420', '967299', 'Diam Eu Dolor LLP', '16550620-7991', 'ocorrencias', 'posicoes', 'ATRASADO', 72, 348),
(92, 3, 13, 'agendada', '0000-00-00 00:00:00', '7718641', '2019-03-19', 'nf', 'Perquenco', 'Alken', 'Id Institute', '2019-10-07 11:59:35', '2018-05-10 04:35:19', '2018-08-21 00:44:05', 707, 'Beatrice ', '229037', '838533', 'Arcu Vel Corp.', '16360119-4487', 'ocorrencias', 'posicoes', 'ENCERRADA', 123, 343),
(93, 1, 8, 'realizada', '0000-00-00 00:00:00', '2055989', '2019-11-23', 'nf', 'Hindupur', 'Bautzen', 'Odio Tristique Pharetra Industries', '2018-09-05 20:17:39', '2019-10-16 13:33:37', '2018-01-05 18:41:56', 52, 'Illiana ', '959778', '445457', 'Congue Turpis Associates', '16061025-5317', 'ocorrencias', 'posicoes', 'NO PRAZO', 601, 226),
(94, 4, 13, 'realizada', '0000-00-00 00:00:00', '4001717', '2018-03-07', 'nf', 'Rocky Mountain House', 'South Perth', 'Vestibulum Ante Ipsum Company', '2018-05-27 03:35:00', '2019-11-12 16:05:38', '2018-04-15 17:07:39', 1789, 'Graham ', '854592', '710951', 'Adipiscing Mauris Molestie Lim', '16120926-9651', 'ocorrencias', 'posicoes', 'NO PRAZO', 935, 455),
(95, 2, 15, 'agendada', '0000-00-00 00:00:00', '4841111', '2017-10-28', 'nf', 'Lions Bay', 'Recife', 'Neque Nullam Nisl Associates', '2019-04-07 12:26:10', '2019-11-17 19:25:31', '2019-10-24 16:05:53', 1384, 'William ', '402444', '828886', 'Maecenas Mi LLC', '16180627-0250', 'ocorrencias', 'posicoes', 'ENCERRADA', 664, 364),
(96, 6, 10, 'realizada', '0000-00-00 00:00:00', '5184940', '2018-04-08', 'nf', 'San Rafael', 'Richmond', 'Mauris Magna Company', '2018-03-25 15:54:11', '2018-12-12 07:41:31', '2019-04-01 06:47:28', 1154, 'Illiana ', '542961', '722289', 'Ut Tincidunt Vehicula LLC', '16050618-6683', 'ocorrencias', 'posicoes', 'NO PRAZO', 732, 415),
(97, 6, 6, 'destino', '0000-00-00 00:00:00', '6306223', '2018-07-17', 'nf', 'Caucaia', 'Stornaway', 'Commodo Limited', '2019-04-18 02:52:48', '2018-07-07 04:03:13', '2019-11-13 08:33:13', 642, 'Howard ', '208611', '858555', 'Mi Enim Associates', '16160828-9649', 'ocorrencias', 'posicoes', 'NO PRAZO', 595, 331),
(98, 1, 13, 'destino', '0000-00-00 00:00:00', '1027682', '2019-07-09', 'nf', 'Alingsås', 'Shahjahanpur', 'Porttitor Scelerisque Institute', '2018-06-09 19:28:02', '2019-02-06 15:04:23', '2018-02-10 16:36:29', 1953, 'Stone ', '564430', '594551', 'Condimentum Donec Inc.', '16740910-0539', 'ocorrencias', 'posicoes', 'NO PRAZO', 981, 500),
(99, 2, 3, 'agendada', '0000-00-00 00:00:00', '3450206', '2019-06-05', 'nf', 'Torno', 'Dieppe', 'Eu Institute', '2019-06-22 05:48:27', '2018-12-05 10:10:28', '2018-02-25 23:21:06', 101, 'Graham ', '134716', '372359', 'Vivamus Nibh Corp.', '16951115-4537', 'ocorrencias', 'posicoes', 'ATRASADO', 370, 22),
(100, 4, 17, 'gerada', '0000-00-00 00:00:00', '1964930', '2018-03-22', 'nf', 'Meeswijk', 'Ribeirão Preto', 'Elit Incorporated', '2018-06-22 08:35:42', '2018-11-12 08:51:11', '2019-03-30 19:29:12', 653, 'Beatrice ', '690885', '939246', 'Tristique Pellentesque Tellus ', '16660818-8261', 'ocorrencias', 'posicoes', 'NO PRAZO', 236, 97);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `senha` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `id_empresa`, `nome`, `senha`) VALUES
(1, 6, 'Nash', '61'),
(2, 1, 'Paula', '36'),
(3, 5, 'Mohammad', '70'),
(4, 2, 'Unity', '19'),
(5, 4, 'Bee', '37'),
(6, 3, 'Georgia', '90');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filial`
--
ALTER TABLE `filial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transporte`
--
ALTER TABLE `transporte`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `filial`
--
ALTER TABLE `filial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `transporte`
--
ALTER TABLE `transporte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
