-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 15, 2015 at 08:38 PM
-- Server version: 5.5.42-cll
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ods2015_dolibarr`
--

-- --------------------------------------------------------

--
-- Table structure for table `llx_accountingaccount`
--

CREATE TABLE IF NOT EXISTS `llx_accountingaccount` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_pcg_version` varchar(12) NOT NULL,
  `pcg_type` varchar(20) NOT NULL,
  `pcg_subtype` varchar(20) NOT NULL,
  `account_number` varchar(20) NOT NULL,
  `account_parent` varchar(20) DEFAULT NULL,
  `label` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  KEY `idx_accountingaccount_fk_pcg_version` (`fk_pcg_version`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1508 ;

--
-- Dumping data for table `llx_accountingaccount`
--

INSERT INTO `llx_accountingaccount` (`rowid`, `fk_pcg_version`, `pcg_type`, `pcg_subtype`, `account_number`, `account_parent`, `label`, `active`) VALUES
(1, 'PCG99-ABREGE', 'CAPIT', 'CAPITAL', '101', '1401', 'Capital', 1),
(2, 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '105', '1401', 'Ecarts de réévaluation', 1),
(3, 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '1061', '1401', 'Réserve légale', 1),
(4, 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '1063', '1401', 'Réserves statutaires ou contractuelles', 1),
(5, 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '1064', '1401', 'Réserves réglementées', 1),
(6, 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '1068', '1401', 'Autres réserves', 1),
(7, 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '108', '1401', 'Compte de l''exploitant', 1),
(8, 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '12', '1401', 'Résultat de l''exercice', 1),
(9, 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '145', '1401', 'Amortissements dérogatoires', 1),
(10, 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '146', '1401', 'Provision spéciale de réévaluation', 1),
(11, 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '147', '1401', 'Plus-values réinvesties', 1),
(12, 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '148', '1401', 'Autres provisions réglementées', 1),
(13, 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '15', '1401', 'Provisions pour risques et charges', 1),
(14, 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '16', '1401', 'Emprunts et dettes assimilees', 1),
(15, 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '20', '1402', 'Immobilisations incorporelles', 1),
(16, 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '201', '15', 'Frais d''établissement', 1),
(17, 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '206', '15', 'Droit au bail', 1),
(18, 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '207', '15', 'Fonds commercial', 1),
(19, 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '208', '15', 'Autres immobilisations incorporelles', 1),
(20, 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '21', '1402', 'Immobilisations corporelles', 1),
(21, 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '23', '1402', 'Immobilisations en cours', 1),
(22, 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '27', '1402', 'Autres immobilisations financieres', 1),
(23, 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '280', '1402', 'Amortissements des immobilisations incorporelles', 1),
(24, 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '281', '1402', 'Amortissements des immobilisations corporelles', 1),
(25, 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '290', '1402', 'Provisions pour dépréciation des immobilisations incorporelles', 1),
(26, 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '291', '1402', 'Provisions pour dépréciation des immobilisations corporelles', 1),
(27, 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '297', '1402', 'Provisions pour dépréciation des autres immobilisations financières', 1),
(28, 'PCG99-ABREGE', 'STOCK', 'XXXXXX', '31', '1403', 'Matieres premières', 1),
(29, 'PCG99-ABREGE', 'STOCK', 'XXXXXX', '32', '1403', 'Autres approvisionnements', 1),
(30, 'PCG99-ABREGE', 'STOCK', 'XXXXXX', '33', '1403', 'En-cours de production de biens', 1),
(31, 'PCG99-ABREGE', 'STOCK', 'XXXXXX', '34', '1403', 'En-cours de production de services', 1),
(32, 'PCG99-ABREGE', 'STOCK', 'XXXXXX', '35', '1403', 'Stocks de produits', 1),
(33, 'PCG99-ABREGE', 'STOCK', 'XXXXXX', '37', '1403', 'Stocks de marchandises', 1),
(34, 'PCG99-ABREGE', 'STOCK', 'XXXXXX', '391', '1403', 'Provisions pour dépréciation des matières premières', 1),
(35, 'PCG99-ABREGE', 'STOCK', 'XXXXXX', '392', '1403', 'Provisions pour dépréciation des autres approvisionnements', 1),
(36, 'PCG99-ABREGE', 'STOCK', 'XXXXXX', '393', '1403', 'Provisions pour dépréciation des en-cours de production de biens', 1),
(37, 'PCG99-ABREGE', 'STOCK', 'XXXXXX', '394', '1403', 'Provisions pour dépréciation des en-cours de production de services', 1),
(38, 'PCG99-ABREGE', 'STOCK', 'XXXXXX', '395', '1403', 'Provisions pour dépréciation des stocks de produits', 1),
(39, 'PCG99-ABREGE', 'STOCK', 'XXXXXX', '397', '1403', 'Provisions pour dépréciation des stocks de marchandises', 1),
(40, 'PCG99-ABREGE', 'TIERS', 'SUPPLIER', '400', '1404', 'Fournisseurs et Comptes rattachés', 1),
(41, 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '409', '1404', 'Fournisseurs débiteurs', 1),
(42, 'PCG99-ABREGE', 'TIERS', 'CUSTOMER', '410', '1404', 'Clients et Comptes rattachés', 1),
(43, 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '419', '1404', 'Clients créditeurs', 1),
(44, 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '421', '1404', 'Personnel', 1),
(45, 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '428', '1404', 'Personnel', 1),
(46, 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '43', '1404', 'Sécurité sociale et autres organismes sociaux', 1),
(47, 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '444', '1404', 'Etat - impôts sur bénéfice', 1),
(48, 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '445', '1404', 'Etat - Taxes sur chiffre affaires', 1),
(49, 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '447', '1404', 'Autres impôts, taxes et versements assimilés', 1),
(50, 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '45', '1404', 'Groupe et associes', 1),
(51, 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '455', '50', 'Associés', 1),
(52, 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '46', '1404', 'Débiteurs divers et créditeurs divers', 1),
(53, 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '47', '1404', 'Comptes transitoires ou d''attente', 1),
(54, 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '481', '1404', 'Charges à répartir sur plusieurs exercices', 1),
(55, 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '486', '1404', 'Charges constatées d''avance', 1),
(56, 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '487', '1404', 'Produits constatés d''avance', 1),
(57, 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '491', '1404', 'Provisions pour dépréciation des comptes de clients', 1),
(58, 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '496', '1404', 'Provisions pour dépréciation des comptes de débiteurs divers', 1),
(59, 'PCG99-ABREGE', 'FINAN', 'XXXXXX', '50', '1405', 'Valeurs mobilières de placement', 1),
(60, 'PCG99-ABREGE', 'FINAN', 'BANK', '51', '1405', 'Banques, établissements financiers et assimilés', 1),
(61, 'PCG99-ABREGE', 'FINAN', 'CASH', '53', '1405', 'Caisse', 1),
(62, 'PCG99-ABREGE', 'FINAN', 'XXXXXX', '54', '1405', 'Régies d''avance et accréditifs', 1),
(63, 'PCG99-ABREGE', 'FINAN', 'XXXXXX', '58', '1405', 'Virements internes', 1),
(64, 'PCG99-ABREGE', 'FINAN', 'XXXXXX', '590', '1405', 'Provisions pour dépréciation des valeurs mobilières de placement', 1),
(65, 'PCG99-ABREGE', 'CHARGE', 'PRODUCT', '60', '1406', 'Achats', 1),
(66, 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '603', '65', 'Variations des stocks', 1),
(67, 'PCG99-ABREGE', 'CHARGE', 'SERVICE', '61', '1406', 'Services extérieurs', 1),
(68, 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '62', '1406', 'Autres services extérieurs', 1),
(69, 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '63', '1406', 'Impôts, taxes et versements assimiles', 1),
(70, 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '641', '1406', 'Rémunérations du personnel', 1),
(71, 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '644', '1406', 'Rémunération du travail de l''exploitant', 1),
(72, 'PCG99-ABREGE', 'CHARGE', 'SOCIAL', '645', '1406', 'Charges de sécurité sociale et de prévoyance', 1),
(73, 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '646', '1406', 'Cotisations sociales personnelles de l''exploitant', 1),
(74, 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '65', '1406', 'Autres charges de gestion courante', 1),
(75, 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '66', '1406', 'Charges financières', 1),
(76, 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '67', '1406', 'Charges exceptionnelles', 1),
(77, 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '681', '1406', 'Dotations aux amortissements et aux provisions', 1),
(78, 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '686', '1406', 'Dotations aux amortissements et aux provisions', 1),
(79, 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '687', '1406', 'Dotations aux amortissements et aux provisions', 1),
(80, 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '691', '1406', 'Participation des salariés aux résultats', 1),
(81, 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '695', '1406', 'Impôts sur les bénéfices', 1),
(82, 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '697', '1406', 'Imposition forfaitaire annuelle des sociétés', 1),
(83, 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '699', '1406', 'Produits', 1),
(84, 'PCG99-ABREGE', 'PROD', 'PRODUCT', '701', '1407', 'Ventes de produits finis', 1),
(85, 'PCG99-ABREGE', 'PROD', 'SERVICE', '706', '1407', 'Prestations de services', 1),
(86, 'PCG99-ABREGE', 'PROD', 'PRODUCT', '707', '1407', 'Ventes de marchandises', 1),
(87, 'PCG99-ABREGE', 'PROD', 'PRODUCT', '708', '1407', 'Produits des activités annexes', 1),
(88, 'PCG99-ABREGE', 'PROD', 'XXXXXX', '709', '1407', 'Rabais, remises et ristournes accordés par l''entreprise', 1),
(89, 'PCG99-ABREGE', 'PROD', 'XXXXXX', '713', '1407', 'Variation des stocks', 1),
(90, 'PCG99-ABREGE', 'PROD', 'XXXXXX', '72', '1407', 'Production immobilisée', 1),
(91, 'PCG99-ABREGE', 'PROD', 'XXXXXX', '73', '1407', 'Produits nets partiels sur opérations à long terme', 1),
(92, 'PCG99-ABREGE', 'PROD', 'XXXXXX', '74', '1407', 'Subventions d''exploitation', 1),
(93, 'PCG99-ABREGE', 'PROD', 'XXXXXX', '75', '1407', 'Autres produits de gestion courante', 1),
(94, 'PCG99-ABREGE', 'PROD', 'XXXXXX', '753', '93', 'Jetons de présence et rémunérations d''administrateurs, gérants,...', 1),
(95, 'PCG99-ABREGE', 'PROD', 'XXXXXX', '754', '93', 'Ristournes perçues des coopératives', 1),
(96, 'PCG99-ABREGE', 'PROD', 'XXXXXX', '755', '93', 'Quotes-parts de résultat sur opérations faites en commun', 1),
(97, 'PCG99-ABREGE', 'PROD', 'XXXXXX', '76', '1407', 'Produits financiers', 1),
(98, 'PCG99-ABREGE', 'PROD', 'XXXXXX', '77', '1407', 'Produits exceptionnels', 1),
(99, 'PCG99-ABREGE', 'PROD', 'XXXXXX', '781', '1407', 'Reprises sur amortissements et provisions', 1),
(100, 'PCG99-ABREGE', 'PROD', 'XXXXXX', '786', '1407', 'Reprises sur provisions pour risques', 1),
(101, 'PCG99-ABREGE', 'PROD', 'XXXXXX', '787', '1407', 'Reprises sur provisions', 1),
(102, 'PCG99-ABREGE', 'PROD', 'XXXXXX', '79', '1407', 'Transferts de charges', 1),
(103, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '10', '1501', 'Capital  et réserves', 1),
(104, 'PCG99-BASE', 'CAPIT', 'CAPITAL', '101', '103', 'Capital', 1),
(105, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '104', '103', 'Primes liées au capital social', 1),
(106, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '105', '103', 'Ecarts de réévaluation', 1),
(107, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '106', '103', 'Réserves', 1),
(108, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '107', '103', 'Ecart d''equivalence', 1),
(109, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '108', '103', 'Compte de l''exploitant', 1),
(110, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '109', '103', 'Actionnaires : capital souscrit - non appelé', 1),
(111, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '11', '1501', 'Report à nouveau (solde créditeur ou débiteur)', 1),
(112, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '110', '111', 'Report à nouveau (solde créditeur)', 1),
(113, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '119', '111', 'Report à nouveau (solde débiteur)', 1),
(114, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '12', '1501', 'Résultat de l''exercice (bénéfice ou perte)', 1),
(115, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '120', '114', 'Résultat de l''exercice (bénéfice)', 1),
(116, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '129', '114', 'Résultat de l''exercice (perte)', 1),
(117, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '13', '1501', 'Subventions d''investissement', 1),
(118, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '131', '117', 'Subventions d''équipement', 1),
(119, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '138', '117', 'Autres subventions d''investissement', 1),
(120, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '139', '117', 'Subventions d''investissement inscrites au compte de résultat', 1),
(121, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '14', '1501', 'Provisions réglementées', 1),
(122, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '142', '121', 'Provisions réglementées relatives aux immobilisations', 1),
(123, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '143', '121', 'Provisions réglementées relatives aux stocks', 1),
(124, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '144', '121', 'Provisions réglementées relatives aux autres éléments de l''actif', 1),
(125, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '145', '121', 'Amortissements dérogatoires', 1),
(126, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '146', '121', 'Provision spéciale de réévaluation', 1),
(127, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '147', '121', 'Plus-values réinvesties', 1),
(128, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '148', '121', 'Autres provisions réglementées', 1),
(129, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '15', '1501', 'Provisions pour risques et charges', 1),
(130, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '151', '129', 'Provisions pour risques', 1),
(131, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '153', '129', 'Provisions pour pensions et obligations similaires', 1),
(132, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '154', '129', 'Provisions pour restructurations', 1),
(133, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '155', '129', 'Provisions pour impôts', 1),
(134, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '156', '129', 'Provisions pour renouvellement des immobilisations (entreprises concessionnaires)', 1),
(135, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '157', '129', 'Provisions pour charges à répartir sur plusieurs exercices', 1),
(136, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '158', '129', 'Autres provisions pour charges', 1),
(137, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '16', '1501', 'Emprunts et dettes assimilees', 1),
(138, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '161', '137', 'Emprunts obligataires convertibles', 1),
(139, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '163', '137', 'Autres emprunts obligataires', 1),
(140, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '164', '137', 'Emprunts auprès des établissements de crédit', 1),
(141, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '165', '137', 'Dépôts et cautionnements reçus', 1),
(142, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '166', '137', 'Participation des salariés aux résultats', 1),
(143, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '167', '137', 'Emprunts et dettes assortis de conditions particulières', 1),
(144, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '168', '137', 'Autres emprunts et dettes assimilées', 1),
(145, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '169', '137', 'Primes de remboursement des obligations', 1),
(146, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '17', '1501', 'Dettes rattachées à des participations', 1),
(147, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '171', '146', 'Dettes rattachées à des participations (groupe)', 1),
(148, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '174', '146', 'Dettes rattachées à des participations (hors groupe)', 1),
(149, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '178', '146', 'Dettes rattachées à des sociétés en participation', 1),
(150, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '18', '1501', 'Comptes de liaison des établissements et sociétés en participation', 1),
(151, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '181', '150', 'Comptes de liaison des établissements', 1),
(152, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '186', '150', 'Biens et prestations de services échangés entre établissements (charges)', 1),
(153, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '187', '150', 'Biens et prestations de services échangés entre établissements (produits)', 1),
(154, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '188', '150', 'Comptes de liaison des sociétés en participation', 1),
(155, 'PCG99-BASE', 'IMMO', 'XXXXXX', '20', '1502', 'Immobilisations incorporelles', 1),
(156, 'PCG99-BASE', 'IMMO', 'XXXXXX', '201', '155', 'Frais d''établissement', 1),
(157, 'PCG99-BASE', 'IMMO', 'XXXXXX', '203', '155', 'Frais de recherche et de développement', 1),
(158, 'PCG99-BASE', 'IMMO', 'XXXXXX', '205', '155', 'Concessions et droits similaires, brevets, licences, marques, procédés, logiciels, droits et valeurs similaires', 1),
(159, 'PCG99-BASE', 'IMMO', 'XXXXXX', '206', '155', 'Droit au bail', 1),
(160, 'PCG99-BASE', 'IMMO', 'XXXXXX', '207', '155', 'Fonds commercial', 1),
(161, 'PCG99-BASE', 'IMMO', 'XXXXXX', '208', '155', 'Autres immobilisations incorporelles', 1),
(162, 'PCG99-BASE', 'IMMO', 'XXXXXX', '21', '1502', 'Immobilisations corporelles', 1),
(163, 'PCG99-BASE', 'IMMO', 'XXXXXX', '211', '162', 'Terrains', 1),
(164, 'PCG99-BASE', 'IMMO', 'XXXXXX', '212', '162', 'Agencements et aménagements de terrains', 1),
(165, 'PCG99-BASE', 'IMMO', 'XXXXXX', '213', '162', 'Constructions', 1),
(166, 'PCG99-BASE', 'IMMO', 'XXXXXX', '214', '162', 'Constructions sur sol d''autrui', 1),
(167, 'PCG99-BASE', 'IMMO', 'XXXXXX', '215', '162', 'Installations techniques, matériels et outillage industriels', 1),
(168, 'PCG99-BASE', 'IMMO', 'XXXXXX', '218', '162', 'Autres immobilisations corporelles', 1),
(169, 'PCG99-BASE', 'IMMO', 'XXXXXX', '22', '1502', 'Immobilisations mises en concession', 1),
(170, 'PCG99-BASE', 'IMMO', 'XXXXXX', '23', '1502', 'Immobilisations en cours', 1),
(171, 'PCG99-BASE', 'IMMO', 'XXXXXX', '231', '170', 'Immobilisations corporelles en cours', 1),
(172, 'PCG99-BASE', 'IMMO', 'XXXXXX', '232', '170', 'Immobilisations incorporelles en cours', 1),
(173, 'PCG99-BASE', 'IMMO', 'XXXXXX', '237', '170', 'Avances et acomptes versés sur immobilisations incorporelles', 1),
(174, 'PCG99-BASE', 'IMMO', 'XXXXXX', '238', '170', 'Avances et acomptes versés sur commandes d''immobilisations corporelles', 1),
(175, 'PCG99-BASE', 'IMMO', 'XXXXXX', '25', '1502', 'Parts dans des entreprises liées et créances sur des entreprises liées', 1),
(176, 'PCG99-BASE', 'IMMO', 'XXXXXX', '26', '1502', 'Participations et créances rattachées à des participations', 1),
(177, 'PCG99-BASE', 'IMMO', 'XXXXXX', '261', '176', 'Titres de participation', 1),
(178, 'PCG99-BASE', 'IMMO', 'XXXXXX', '266', '176', 'Autres formes de participation', 1),
(179, 'PCG99-BASE', 'IMMO', 'XXXXXX', '267', '176', 'Créances rattachées à des participations', 1),
(180, 'PCG99-BASE', 'IMMO', 'XXXXXX', '268', '176', 'Créances rattachées à des sociétés en participation', 1),
(181, 'PCG99-BASE', 'IMMO', 'XXXXXX', '269', '176', 'Versements restant à effectuer sur titres de participation non libérés', 1),
(182, 'PCG99-BASE', 'IMMO', 'XXXXXX', '27', '1502', 'Autres immobilisations financieres', 1),
(183, 'PCG99-BASE', 'IMMO', 'XXXXXX', '271', '183', 'Titres immobilisés autres que les titres immobilisés de l''activité de portefeuille (droit de propriété)', 1),
(184, 'PCG99-BASE', 'IMMO', 'XXXXXX', '272', '183', 'Titres immobilisés (droit de créance)', 1),
(185, 'PCG99-BASE', 'IMMO', 'XXXXXX', '273', '183', 'Titres immobilisés de l''activité de portefeuille', 1),
(186, 'PCG99-BASE', 'IMMO', 'XXXXXX', '274', '183', 'Prêts', 1),
(187, 'PCG99-BASE', 'IMMO', 'XXXXXX', '275', '183', 'Dépôts et cautionnements versés', 1),
(188, 'PCG99-BASE', 'IMMO', 'XXXXXX', '276', '183', 'Autres créances immobilisées', 1),
(189, 'PCG99-BASE', 'IMMO', 'XXXXXX', '277', '183', '(Actions propres ou parts propres)', 1),
(190, 'PCG99-BASE', 'IMMO', 'XXXXXX', '279', '183', 'Versements restant à effectuer sur titres immobilisés non libérés', 1),
(191, 'PCG99-BASE', 'IMMO', 'XXXXXX', '28', '1502', 'Amortissements des immobilisations', 1),
(192, 'PCG99-BASE', 'IMMO', 'XXXXXX', '280', '191', 'Amortissements des immobilisations incorporelles', 1),
(193, 'PCG99-BASE', 'IMMO', 'XXXXXX', '281', '191', 'Amortissements des immobilisations corporelles', 1),
(194, 'PCG99-BASE', 'IMMO', 'XXXXXX', '282', '191', 'Amortissements des immobilisations mises en concession', 1),
(195, 'PCG99-BASE', 'IMMO', 'XXXXXX', '29', '1502', 'Dépréciations des immobilisations', 1),
(196, 'PCG99-BASE', 'IMMO', 'XXXXXX', '290', '195', 'Dépréciations des immobilisations incorporelles', 1),
(197, 'PCG99-BASE', 'IMMO', 'XXXXXX', '291', '195', 'Dépréciations des immobilisations corporelles', 1),
(198, 'PCG99-BASE', 'IMMO', 'XXXXXX', '292', '195', 'Dépréciations des immobilisations mises en concession', 1),
(199, 'PCG99-BASE', 'IMMO', 'XXXXXX', '293', '195', 'Dépréciations des immobilisations en cours', 1),
(200, 'PCG99-BASE', 'IMMO', 'XXXXXX', '296', '195', 'Provisions pour dépréciation des participations et créances rattachées à des participations', 1),
(201, 'PCG99-BASE', 'IMMO', 'XXXXXX', '297', '195', 'Provisions pour dépréciation des autres immobilisations financières', 1),
(202, 'PCG99-BASE', 'STOCK', 'XXXXXX', '31', '1503', 'Matières premières (et fournitures)', 1),
(203, 'PCG99-BASE', 'STOCK', 'XXXXXX', '311', '202', 'Matières (ou groupe) A', 1),
(204, 'PCG99-BASE', 'STOCK', 'XXXXXX', '312', '202', 'Matières (ou groupe) B', 1),
(205, 'PCG99-BASE', 'STOCK', 'XXXXXX', '317', '202', 'Fournitures A, B, C,', 1),
(206, 'PCG99-BASE', 'STOCK', 'XXXXXX', '32', '1503', 'Autres approvisionnements', 1),
(207, 'PCG99-BASE', 'STOCK', 'XXXXXX', '321', '206', 'Matières consommables', 1),
(208, 'PCG99-BASE', 'STOCK', 'XXXXXX', '322', '206', 'Fournitures consommables', 1),
(209, 'PCG99-BASE', 'STOCK', 'XXXXXX', '326', '206', 'Emballages', 1),
(210, 'PCG99-BASE', 'STOCK', 'XXXXXX', '33', '1503', 'En-cours de production de biens', 1),
(211, 'PCG99-BASE', 'STOCK', 'XXXXXX', '331', '210', 'Produits en cours', 1),
(212, 'PCG99-BASE', 'STOCK', 'XXXXXX', '335', '210', 'Travaux en cours', 1),
(213, 'PCG99-BASE', 'STOCK', 'XXXXXX', '34', '1503', 'En-cours de production de services', 1),
(214, 'PCG99-BASE', 'STOCK', 'XXXXXX', '341', '213', 'Etudes en cours', 1),
(215, 'PCG99-BASE', 'STOCK', 'XXXXXX', '345', '213', 'Prestations de services en cours', 1),
(216, 'PCG99-BASE', 'STOCK', 'XXXXXX', '35', '1503', 'Stocks de produits', 1),
(217, 'PCG99-BASE', 'STOCK', 'XXXXXX', '351', '216', 'Produits intermédiaires', 1),
(218, 'PCG99-BASE', 'STOCK', 'XXXXXX', '355', '216', 'Produits finis', 1),
(219, 'PCG99-BASE', 'STOCK', 'XXXXXX', '358', '216', 'Produits résiduels (ou matières de récupération)', 1),
(220, 'PCG99-BASE', 'STOCK', 'XXXXXX', '37', '1503', 'Stocks de marchandises', 1),
(221, 'PCG99-BASE', 'STOCK', 'XXXXXX', '371', '220', 'Marchandises (ou groupe) A', 1),
(222, 'PCG99-BASE', 'STOCK', 'XXXXXX', '372', '220', 'Marchandises (ou groupe) B', 1),
(223, 'PCG99-BASE', 'STOCK', 'XXXXXX', '39', '1503', 'Provisions pour dépréciation des stocks et en-cours', 1),
(224, 'PCG99-BASE', 'STOCK', 'XXXXXX', '391', '223', 'Provisions pour dépréciation des matières premières', 1),
(225, 'PCG99-BASE', 'STOCK', 'XXXXXX', '392', '223', 'Provisions pour dépréciation des autres approvisionnements', 1),
(226, 'PCG99-BASE', 'STOCK', 'XXXXXX', '393', '223', 'Provisions pour dépréciation des en-cours de production de biens', 1),
(227, 'PCG99-BASE', 'STOCK', 'XXXXXX', '394', '223', 'Provisions pour dépréciation des en-cours de production de services', 1),
(228, 'PCG99-BASE', 'STOCK', 'XXXXXX', '395', '223', 'Provisions pour dépréciation des stocks de produits', 1),
(229, 'PCG99-BASE', 'STOCK', 'XXXXXX', '397', '223', 'Provisions pour dépréciation des stocks de marchandises', 1),
(230, 'PCG99-BASE', 'TIERS', 'XXXXXX', '40', '1504', 'Fournisseurs et Comptes rattachés', 1),
(231, 'PCG99-BASE', 'TIERS', 'XXXXXX', '400', '230', 'Fournisseurs et Comptes rattachés', 1),
(232, 'PCG99-BASE', 'TIERS', 'SUPPLIER', '401', '230', 'Fournisseurs', 1),
(233, 'PCG99-BASE', 'TIERS', 'XXXXXX', '403', '230', 'Fournisseurs - Effets à payer', 1),
(234, 'PCG99-BASE', 'TIERS', 'XXXXXX', '404', '230', 'Fournisseurs d''immobilisations', 1),
(235, 'PCG99-BASE', 'TIERS', 'XXXXXX', '405', '230', 'Fournisseurs d''immobilisations - Effets à payer', 1),
(236, 'PCG99-BASE', 'TIERS', 'XXXXXX', '408', '230', 'Fournisseurs - Factures non parvenues', 1),
(237, 'PCG99-BASE', 'TIERS', 'XXXXXX', '409', '230', 'Fournisseurs débiteurs', 1),
(238, 'PCG99-BASE', 'TIERS', 'XXXXXX', '41', '1504', 'Clients et comptes rattachés', 1),
(239, 'PCG99-BASE', 'TIERS', 'XXXXXX', '410', '238', 'Clients et Comptes rattachés', 1),
(240, 'PCG99-BASE', 'TIERS', 'CUSTOMER', '411', '238', 'Clients', 1),
(241, 'PCG99-BASE', 'TIERS', 'XXXXXX', '413', '238', 'Clients - Effets à recevoir', 1),
(242, 'PCG99-BASE', 'TIERS', 'XXXXXX', '416', '238', 'Clients douteux ou litigieux', 1),
(243, 'PCG99-BASE', 'TIERS', 'XXXXXX', '418', '238', 'Clients - Produits non encore facturés', 1),
(244, 'PCG99-BASE', 'TIERS', 'XXXXXX', '419', '238', 'Clients créditeurs', 1),
(245, 'PCG99-BASE', 'TIERS', 'XXXXXX', '42', '1504', 'Personnel et comptes rattachés', 1),
(246, 'PCG99-BASE', 'TIERS', 'XXXXXX', '421', '245', 'Personnel - Rémunérations dues', 1),
(247, 'PCG99-BASE', 'TIERS', 'XXXXXX', '422', '245', 'Comités d''entreprises, d''établissement, ...', 1),
(248, 'PCG99-BASE', 'TIERS', 'XXXXXX', '424', '245', 'Participation des salariés aux résultats', 1),
(249, 'PCG99-BASE', 'TIERS', 'XXXXXX', '425', '245', 'Personnel - Avances et acomptes', 1),
(250, 'PCG99-BASE', 'TIERS', 'XXXXXX', '426', '245', 'Personnel - Dépôts', 1),
(251, 'PCG99-BASE', 'TIERS', 'XXXXXX', '427', '245', 'Personnel - Oppositions', 1),
(252, 'PCG99-BASE', 'TIERS', 'XXXXXX', '428', '245', 'Personnel - Charges à payer et produits à recevoir', 1),
(253, 'PCG99-BASE', 'TIERS', 'XXXXXX', '43', '1504', 'Sécurité sociale et autres organismes sociaux', 1),
(254, 'PCG99-BASE', 'TIERS', 'XXXXXX', '431', '253', 'Sécurité sociale', 1),
(255, 'PCG99-BASE', 'TIERS', 'XXXXXX', '437', '253', 'Autres organismes sociaux', 1),
(256, 'PCG99-BASE', 'TIERS', 'XXXXXX', '438', '253', 'Organismes sociaux - Charges à payer et produits à recevoir', 1),
(257, 'PCG99-BASE', 'TIERS', 'XXXXXX', '44', '1504', 'État et autres collectivités publiques', 1),
(258, 'PCG99-BASE', 'TIERS', 'XXXXXX', '441', '257', 'État - Subventions à recevoir', 1),
(259, 'PCG99-BASE', 'TIERS', 'XXXXXX', '442', '257', 'Etat - Impôts et taxes recouvrables sur des tiers', 1),
(260, 'PCG99-BASE', 'TIERS', 'XXXXXX', '443', '257', 'Opérations particulières avec l''Etat, les collectivités publiques, les organismes internationaux', 1),
(261, 'PCG99-BASE', 'TIERS', 'XXXXXX', '444', '257', 'Etat - Impôts sur les bénéfices', 1),
(262, 'PCG99-BASE', 'TIERS', 'XXXXXX', '445', '257', 'Etat - Taxes sur le chiffre d''affaires', 1),
(263, 'PCG99-BASE', 'TIERS', 'XXXXXX', '446', '257', 'Obligations cautionnées', 1),
(264, 'PCG99-BASE', 'TIERS', 'XXXXXX', '447', '257', 'Autres impôts, taxes et versements assimilés', 1),
(265, 'PCG99-BASE', 'TIERS', 'XXXXXX', '448', '257', 'Etat - Charges à payer et produits à recevoir', 1),
(266, 'PCG99-BASE', 'TIERS', 'XXXXXX', '449', '257', 'Quotas d''émission à restituer à l''Etat', 1),
(267, 'PCG99-BASE', 'TIERS', 'XXXXXX', '45', '1504', 'Groupe et associes', 1),
(268, 'PCG99-BASE', 'TIERS', 'XXXXXX', '451', '267', 'Groupe', 1),
(269, 'PCG99-BASE', 'TIERS', 'XXXXXX', '455', '267', 'Associés - Comptes courants', 1),
(270, 'PCG99-BASE', 'TIERS', 'XXXXXX', '456', '267', 'Associés - Opérations sur le capital', 1),
(271, 'PCG99-BASE', 'TIERS', 'XXXXXX', '457', '267', 'Associés - Dividendes à payer', 1),
(272, 'PCG99-BASE', 'TIERS', 'XXXXXX', '458', '267', 'Associés - Opérations faites en commun et en G.I.E.', 1),
(273, 'PCG99-BASE', 'TIERS', 'XXXXXX', '46', '1504', 'Débiteurs divers et créditeurs divers', 1),
(274, 'PCG99-BASE', 'TIERS', 'XXXXXX', '462', '273', 'Créances sur cessions d''immobilisations', 1),
(275, 'PCG99-BASE', 'TIERS', 'XXXXXX', '464', '273', 'Dettes sur acquisitions de valeurs mobilières de placement', 1),
(276, 'PCG99-BASE', 'TIERS', 'XXXXXX', '465', '273', 'Créances sur cessions de valeurs mobilières de placement', 1),
(277, 'PCG99-BASE', 'TIERS', 'XXXXXX', '467', '273', 'Autres comptes débiteurs ou créditeurs', 1),
(278, 'PCG99-BASE', 'TIERS', 'XXXXXX', '468', '273', 'Divers - Charges à payer et produits à recevoir', 1),
(279, 'PCG99-BASE', 'TIERS', 'XXXXXX', '47', '1504', 'Comptes transitoires ou d''attente', 1),
(280, 'PCG99-BASE', 'TIERS', 'XXXXXX', '471', '279', 'Comptes d''attente', 1),
(281, 'PCG99-BASE', 'TIERS', 'XXXXXX', '476', '279', 'Différence de conversion - Actif', 1),
(282, 'PCG99-BASE', 'TIERS', 'XXXXXX', '477', '279', 'Différences de conversion - Passif', 1),
(283, 'PCG99-BASE', 'TIERS', 'XXXXXX', '478', '279', 'Autres comptes transitoires', 1),
(284, 'PCG99-BASE', 'TIERS', 'XXXXXX', '48', '1504', 'Comptes de régularisation', 1),
(285, 'PCG99-BASE', 'TIERS', 'XXXXXX', '481', '284', 'Charges à répartir sur plusieurs exercices', 1),
(286, 'PCG99-BASE', 'TIERS', 'XXXXXX', '486', '284', 'Charges constatées d''avance', 1),
(287, 'PCG99-BASE', 'TIERS', 'XXXXXX', '487', '284', 'Produits constatés d''avance', 1),
(288, 'PCG99-BASE', 'TIERS', 'XXXXXX', '488', '284', 'Comptes de répartition périodique des charges et des produits', 1),
(289, 'PCG99-BASE', 'TIERS', 'XXXXXX', '489', '284', 'Quotas d''émission alloués par l''Etat', 1),
(290, 'PCG99-BASE', 'TIERS', 'XXXXXX', '49', '1504', 'Provisions pour dépréciation des comptes de tiers', 1),
(291, 'PCG99-BASE', 'TIERS', 'XXXXXX', '491', '290', 'Provisions pour dépréciation des comptes de clients', 1),
(292, 'PCG99-BASE', 'TIERS', 'XXXXXX', '495', '290', 'Provisions pour dépréciation des comptes du groupe et des associés', 1),
(293, 'PCG99-BASE', 'TIERS', 'XXXXXX', '496', '290', 'Provisions pour dépréciation des comptes de débiteurs divers', 1),
(294, 'PCG99-BASE', 'FINAN', 'XXXXXX', '50', '1505', 'Valeurs mobilières de placement', 1),
(295, 'PCG99-BASE', 'FINAN', 'XXXXXX', '501', '294', 'Parts dans des entreprises liées', 1),
(296, 'PCG99-BASE', 'FINAN', 'XXXXXX', '502', '294', 'Actions propres', 1),
(297, 'PCG99-BASE', 'FINAN', 'XXXXXX', '503', '294', 'Actions', 1),
(298, 'PCG99-BASE', 'FINAN', 'XXXXXX', '504', '294', 'Autres titres conférant un droit de propriété', 1),
(299, 'PCG99-BASE', 'FINAN', 'XXXXXX', '505', '294', 'Obligations et bons émis par la société et rachetés par elle', 1),
(300, 'PCG99-BASE', 'FINAN', 'XXXXXX', '506', '294', 'Obligations', 1),
(301, 'PCG99-BASE', 'FINAN', 'XXXXXX', '507', '294', 'Bons du Trésor et bons de caisse à court terme', 1),
(302, 'PCG99-BASE', 'FINAN', 'XXXXXX', '508', '294', 'Autres valeurs mobilières de placement et autres créances assimilées', 1),
(303, 'PCG99-BASE', 'FINAN', 'XXXXXX', '509', '294', 'Versements restant à effectuer sur valeurs mobilières de placement non libérées', 1),
(304, 'PCG99-BASE', 'FINAN', 'XXXXXX', '51', '1505', 'Banques, établissements financiers et assimilés', 1),
(305, 'PCG99-BASE', 'FINAN', 'XXXXXX', '511', '304', 'Valeurs à l''encaissement', 1),
(306, 'PCG99-BASE', 'FINAN', 'BANK', '512', '304', 'Banques', 1),
(307, 'PCG99-BASE', 'FINAN', 'XXXXXX', '514', '304', 'Chèques postaux', 1),
(308, 'PCG99-BASE', 'FINAN', 'XXXXXX', '515', '304', '"Caisses" du Trésor et des établissements publics', 1),
(309, 'PCG99-BASE', 'FINAN', 'XXXXXX', '516', '304', 'Sociétés de bourse', 1),
(310, 'PCG99-BASE', 'FINAN', 'XXXXXX', '517', '304', 'Autres organismes financiers', 1),
(311, 'PCG99-BASE', 'FINAN', 'XXXXXX', '518', '304', 'Intérêts courus', 1),
(312, 'PCG99-BASE', 'FINAN', 'XXXXXX', '519', '304', 'Concours bancaires courants', 1),
(313, 'PCG99-BASE', 'FINAN', 'XXXXXX', '52', '1505', 'Instruments de trésorerie', 1),
(314, 'PCG99-BASE', 'FINAN', 'CASH', '53', '1505', 'Caisse', 1),
(315, 'PCG99-BASE', 'FINAN', 'XXXXXX', '531', '314', 'Caisse siège social', 1),
(316, 'PCG99-BASE', 'FINAN', 'XXXXXX', '532', '314', 'Caisse succursale (ou usine) A', 1),
(317, 'PCG99-BASE', 'FINAN', 'XXXXXX', '533', '314', 'Caisse succursale (ou usine) B', 1),
(318, 'PCG99-BASE', 'FINAN', 'XXXXXX', '54', '1505', 'Régies d''avance et accréditifs', 1),
(319, 'PCG99-BASE', 'FINAN', 'XXXXXX', '58', '1505', 'Virements internes', 1),
(320, 'PCG99-BASE', 'FINAN', 'XXXXXX', '59', '1505', 'Provisions pour dépréciation des comptes financiers', 1),
(321, 'PCG99-BASE', 'FINAN', 'XXXXXX', '590', '320', 'Provisions pour dépréciation des valeurs mobilières de placement', 1),
(322, 'PCG99-BASE', 'CHARGE', 'PRODUCT', '60', '1506', 'Achats', 1),
(323, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '601', '322', 'Achats stockés - Matières premières (et fournitures)', 1),
(324, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '602', '322', 'Achats stockés - Autres approvisionnements', 1),
(325, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '603', '322', 'Variations des stocks (approvisionnements et marchandises)', 1),
(326, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '604', '322', 'Achats stockés - Matières premières (et fournitures)', 1),
(327, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '605', '322', 'Achats de matériel, équipements et travaux', 1),
(328, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '606', '322', 'Achats non stockés de matière et fournitures', 1),
(329, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '607', '322', 'Achats de marchandises', 1),
(330, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '608', '322', '(Compte réservé, le cas échéant, à la récapitulation des frais accessoires incorporés aux achats)', 1),
(331, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '609', '322', 'Rabais, remises et ristournes obtenus sur achats', 1),
(332, 'PCG99-BASE', 'CHARGE', 'SERVICE', '61', '1506', 'Services extérieurs', 1),
(333, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '611', '332', 'Sous-traitance générale', 1),
(334, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '612', '332', 'Redevances de crédit-bail', 1),
(335, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '613', '332', 'Locations', 1),
(336, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '614', '332', 'Charges locatives et de copropriété', 1),
(337, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '615', '332', 'Entretien et réparations', 1),
(338, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '616', '332', 'Primes d''assurances', 1),
(339, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '617', '332', 'Etudes et recherches', 1),
(340, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '618', '332', 'Divers', 1),
(341, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '619', '332', 'Rabais, remises et ristournes obtenus sur services extérieurs', 1),
(342, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '62', '1506', 'Autres services extérieurs', 1),
(343, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '621', '342', 'Personnel extérieur à l''entreprise', 1),
(344, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '622', '342', 'Rémunérations d''intermédiaires et honoraires', 1),
(345, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '623', '342', 'Publicité, publications, relations publiques', 1),
(346, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '624', '342', 'Transports de biens et transports collectifs du personnel', 1),
(347, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '625', '342', 'Déplacements, missions et réceptions', 1),
(348, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '626', '342', 'Frais postaux et de télécommunications', 1),
(349, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '627', '342', 'Services bancaires et assimilés', 1),
(350, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '628', '342', 'Divers', 1),
(351, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '629', '342', 'Rabais, remises et ristournes obtenus sur autres services extérieurs', 1),
(352, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '63', '1506', 'Impôts, taxes et versements assimilés', 1),
(353, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '631', '352', 'Impôts, taxes et versements assimilés sur rémunérations (administrations des impôts)', 1),
(354, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '633', '352', 'Impôts, taxes et versements assimilés sur rémunérations (autres organismes)', 1),
(355, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '635', '352', 'Autres impôts, taxes et versements assimilés (administrations des impôts)', 1),
(356, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '637', '352', 'Autres impôts, taxes et versements assimilés (autres organismes)', 1),
(357, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '64', '1506', 'Charges de personnel', 1),
(358, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '641', '357', 'Rémunérations du personnel', 1),
(359, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '644', '357', 'Rémunération du travail de l''exploitant', 1),
(360, 'PCG99-BASE', 'CHARGE', 'SOCIAL', '645', '357', 'Charges de sécurité sociale et de prévoyance', 1),
(361, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '646', '357', 'Cotisations sociales personnelles de l''exploitant', 1),
(362, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '647', '357', 'Autres charges sociales', 1),
(363, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '648', '357', 'Autres charges de personnel', 1),
(364, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '65', '1506', 'Autres charges de gestion courante', 1),
(365, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '651', '364', 'Redevances pour concessions, brevets, licences, marques, procédés, logiciels, droits et valeurs similaires', 1),
(366, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '653', '364', 'Jetons de présence', 1),
(367, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '654', '364', 'Pertes sur créances irrécouvrables', 1),
(368, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '655', '364', 'Quote-part de résultat sur opérations faites en commun', 1),
(369, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '658', '364', 'Charges diverses de gestion courante', 1),
(370, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '66', '1506', 'Charges financières', 1),
(371, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '661', '370', 'Charges d''intérêts', 1),
(372, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '664', '370', 'Pertes sur créances liées à des participations', 1),
(373, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '665', '370', 'Escomptes accordés', 1),
(374, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '666', '370', 'Pertes de change', 1),
(375, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '667', '370', 'Charges nettes sur cessions de valeurs mobilières de placement', 1),
(376, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '668', '370', 'Autres charges financières', 1),
(377, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '67', '1506', 'Charges exceptionnelles', 1),
(378, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '671', '377', 'Charges exceptionnelles sur opérations de gestion', 1),
(379, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '672', '377', '(Compte à la disposition des entités pour enregistrer, en cours d''exercice, les charges sur exercices antérieurs)', 1),
(380, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '675', '377', 'Valeurs comptables des éléments d''actif cédés', 1),
(381, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '678', '377', 'Autres charges exceptionnelles', 1),
(382, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '68', '1506', 'Dotations aux amortissements et aux provisions', 1),
(383, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '681', '382', 'Dotations aux amortissements et aux provisions - Charges d''exploitation', 1),
(384, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '686', '382', 'Dotations aux amortissements et aux provisions - Charges financières', 1),
(385, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '687', '382', 'Dotations aux amortissements et aux provisions - Charges exceptionnelles', 1),
(386, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '69', '1506', 'Participation des salariés - impôts sur les bénéfices et assimiles', 1),
(387, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '691', '386', 'Participation des salariés aux résultats', 1),
(388, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '695', '386', 'Impôts sur les bénéfices', 1),
(389, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '696', '386', 'Suppléments d''impôt sur les sociétés liés aux distributions', 1),
(390, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '697', '386', 'Imposition forfaitaire annuelle des sociétés', 1),
(391, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '698', '386', 'Intégration fiscale', 1),
(392, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '699', '386', 'Produits - Reports en arrière des déficits', 1),
(393, 'PCG99-BASE', 'PROD', 'XXXXXX', '70', '1507', 'Ventes de produits fabriqués, prestations de services, marchandises', 1),
(394, 'PCG99-BASE', 'PROD', 'PRODUCT', '701', '393', 'Ventes de produits finis', 1),
(395, 'PCG99-BASE', 'PROD', 'XXXXXX', '702', '393', 'Ventes de produits intermédiaires', 1),
(396, 'PCG99-BASE', 'PROD', 'XXXXXX', '703', '393', 'Ventes de produits résiduels', 1),
(397, 'PCG99-BASE', 'PROD', 'XXXXXX', '704', '393', 'Travaux', 1),
(398, 'PCG99-BASE', 'PROD', 'XXXXXX', '705', '393', 'Etudes', 1),
(399, 'PCG99-BASE', 'PROD', 'SERVICE', '706', '393', 'Prestations de services', 1),
(400, 'PCG99-BASE', 'PROD', 'PRODUCT', '707', '393', 'Ventes de marchandises', 1),
(401, 'PCG99-BASE', 'PROD', 'PRODUCT', '708', '393', 'Produits des activités annexes', 1),
(402, 'PCG99-BASE', 'PROD', 'XXXXXX', '709', '393', 'Rabais, remises et ristournes accordés par l''entreprise', 1),
(403, 'PCG99-BASE', 'PROD', 'XXXXXX', '71', '1507', 'Production stockée (ou déstockage)', 1),
(404, 'PCG99-BASE', 'PROD', 'XXXXXX', '713', '403', 'Variation des stocks (en-cours de production, produits)', 1),
(405, 'PCG99-BASE', 'PROD', 'XXXXXX', '72', '1507', 'Production immobilisée', 1),
(406, 'PCG99-BASE', 'PROD', 'XXXXXX', '721', '405', 'Immobilisations incorporelles', 1),
(407, 'PCG99-BASE', 'PROD', 'XXXXXX', '722', '405', 'Immobilisations corporelles', 1),
(408, 'PCG99-BASE', 'PROD', 'XXXXXX', '74', '1507', 'Subventions d''exploitation', 1),
(409, 'PCG99-BASE', 'PROD', 'XXXXXX', '75', '1507', 'Autres produits de gestion courante', 1),
(410, 'PCG99-BASE', 'PROD', 'XXXXXX', '751', '409', 'Redevances pour concessions, brevets, licences, marques, procédés, logiciels, droits et valeurs similaires', 1),
(411, 'PCG99-BASE', 'PROD', 'XXXXXX', '752', '409', 'Revenus des immeubles non affectés à des activités professionnelles', 1),
(412, 'PCG99-BASE', 'PROD', 'XXXXXX', '753', '409', 'Jetons de présence et rémunérations d''administrateurs, gérants,...', 1),
(413, 'PCG99-BASE', 'PROD', 'XXXXXX', '754', '409', 'Ristournes perçues des coopératives (provenant des excédents)', 1),
(414, 'PCG99-BASE', 'PROD', 'XXXXXX', '755', '409', 'Quotes-parts de résultat sur opérations faites en commun', 1),
(415, 'PCG99-BASE', 'PROD', 'XXXXXX', '758', '409', 'Produits divers de gestion courante', 1),
(416, 'PCG99-BASE', 'PROD', 'XXXXXX', '76', '1507', 'Produits financiers', 1),
(417, 'PCG99-BASE', 'PROD', 'XXXXXX', '761', '416', 'Produits de participations', 1),
(418, 'PCG99-BASE', 'PROD', 'XXXXXX', '762', '416', 'Produits des autres immobilisations financières', 1),
(419, 'PCG99-BASE', 'PROD', 'XXXXXX', '763', '416', 'Revenus des autres créances', 1),
(420, 'PCG99-BASE', 'PROD', 'XXXXXX', '764', '416', 'Revenus des valeurs mobilières de placement', 1),
(421, 'PCG99-BASE', 'PROD', 'XXXXXX', '765', '416', 'Escomptes obtenus', 1),
(422, 'PCG99-BASE', 'PROD', 'XXXXXX', '766', '416', 'Gains de change', 1),
(423, 'PCG99-BASE', 'PROD', 'XXXXXX', '767', '416', 'Produits nets sur cessions de valeurs mobilières de placement', 1),
(424, 'PCG99-BASE', 'PROD', 'XXXXXX', '768', '416', 'Autres produits financiers', 1),
(425, 'PCG99-BASE', 'PROD', 'XXXXXX', '77', '1507', 'Produits exceptionnels', 1),
(426, 'PCG99-BASE', 'PROD', 'XXXXXX', '771', '425', 'Produits exceptionnels sur opérations de gestion', 1),
(427, 'PCG99-BASE', 'PROD', 'XXXXXX', '772', '425', '(Compte à la disposition des entités pour enregistrer, en cours d''exercice, les produits sur exercices antérieurs)', 1),
(428, 'PCG99-BASE', 'PROD', 'XXXXXX', '775', '425', 'Produits des cessions d''éléments d''actif', 1),
(429, 'PCG99-BASE', 'PROD', 'XXXXXX', '777', '425', 'Quote-part des subventions d''investissement virée au résultat de l''exercice', 1),
(430, 'PCG99-BASE', 'PROD', 'XXXXXX', '778', '425', 'Autres produits exceptionnels', 1),
(431, 'PCG99-BASE', 'PROD', 'XXXXXX', '78', '1507', 'Reprises sur amortissements et provisions', 1),
(432, 'PCG99-BASE', 'PROD', 'XXXXXX', '781', '431', 'Reprises sur amortissements et provisions (à inscrire dans les produits d''exploitation)', 1),
(433, 'PCG99-BASE', 'PROD', 'XXXXXX', '786', '431', 'Reprises sur provisions pour risques (à inscrire dans les produits financiers)', 1),
(434, 'PCG99-BASE', 'PROD', 'XXXXXX', '787', '431', 'Reprises sur provisions (à inscrire dans les produits exceptionnels)', 1),
(435, 'PCG99-BASE', 'PROD', 'XXXXXX', '79', '1507', 'Transferts de charges', 1),
(436, 'PCG99-BASE', 'PROD', 'XXXXXX', '791', '435', 'Transferts de charges d''exploitation ', 1),
(437, 'PCG99-BASE', 'PROD', 'XXXXXX', '796', '435', 'Transferts de charges financières', 1),
(438, 'PCG99-BASE', 'PROD', 'XXXXXX', '797', '435', 'Transferts de charges exceptionnelles', 1),
(439, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '10', '1351', 'Capital', 1),
(440, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '100', '439', 'Capital souscrit ou capital personnel', 1),
(441, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1000', '440', 'Capital non amorti', 1),
(442, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1001', '440', 'Capital amorti', 1),
(443, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '101', '439', 'Capital non appelé', 1),
(444, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '109', '439', 'Compte de l''exploitant', 1),
(445, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1090', '444', 'Opérations courantes', 1),
(446, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1091', '444', 'Impôts personnels', 1),
(447, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1092', '444', 'Rémunérations et autres avantages', 1),
(448, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '11', '1351', 'Primes d''émission', 1),
(449, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '12', '1351', 'Plus-values de réévaluation', 1),
(450, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '120', '449', 'Plus-values de réévaluation sur immobilisations incorporelles', 1),
(451, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1200', '450', 'Plus-values de réévaluation', 1),
(452, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1201', '450', 'Reprises de réductions de valeur', 1),
(453, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '121', '449', 'Plus-values de réévaluation sur immobilisations corporelles', 1),
(454, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1210', '453', 'Plus-values de réévaluation', 1),
(455, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1211', '453', 'Reprises de réductions de valeur', 1),
(456, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '122', '449', 'Plus-values de réévaluation sur immobilisations financières', 1),
(457, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1220', '456', 'Plus-values de réévaluation', 1),
(458, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1221', '456', 'Reprises de réductions de valeur', 1),
(459, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '123', '449', 'Plus-values de réévaluation sur stocks', 1),
(460, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '124', '449', 'Reprises de réductions de valeur sur placements de trésorerie', 1),
(461, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '13', '1351', 'Réserve', 1),
(462, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '130', '461', 'Réserve légale', 1),
(463, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '131', '461', 'Réserves indisponibles', 1),
(464, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1310', '463', 'Réserve pour actions propres', 1),
(465, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1311', '463', 'Autres réserves indisponibles', 1),
(466, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '132', '461', 'Réserves immunisées', 1),
(467, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '133', '461', 'Réserves disponibles', 1),
(468, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1330', '467', 'Réserve pour régularisation de dividendes', 1),
(469, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1331', '467', 'Réserve pour renouvellement des immobilisations', 1),
(470, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1332', '467', 'Réserve pour installations en faveur du personnel 1333 Réserves libres', 1),
(471, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '14', '1351', 'Bénéfice reporté (ou perte reportée)', 1),
(472, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '15', '1351', 'Subsides en capital', 1),
(473, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '150', '472', 'Montants obtenus', 1),
(474, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '151', '472', 'Montants transférés aux résultats', 1),
(475, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '16', '1351', 'Provisions pour risques et charges', 1),
(476, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '160', '475', 'Provisions pour pensions et obligations similaires', 1),
(477, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '161', '475', 'Provisions pour charges fiscales', 1),
(478, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '162', '475', 'Provisions pour grosses réparations et gros entretiens', 1),
(479, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '163', '475', 'à 169 Provisions pour autres risques et charges', 1),
(480, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '164', '475', 'Provisions pour sûretés personnelles ou réelles constituées à l''appui de dettes et d''engagements de tiers', 1),
(481, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '165', '475', 'Provisions pour engagements relatifs à l''acquisition ou à la cession d''immobilisations', 1),
(482, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '166', '475', 'Provisions pour exécution de commandes passées ou reçues', 1),
(483, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '167', '475', 'Provisions pour positions et marchés à terme en devises ou positions et marchés à terme en marchandises', 1),
(484, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '168', '475', 'Provisions pour garanties techniques attachées aux ventes et prestations déjà effectuées par l''entreprise', 1),
(485, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '169', '475', 'Provisions pour autres risques et charges', 1),
(486, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1690', '485', 'Pour litiges en cours', 1),
(487, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1691', '485', 'Pour amendes, doubles droits et pénalités', 1),
(488, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1692', '485', 'Pour propre assureur', 1),
(489, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1693', '485', 'Pour risques inhérents aux opérations de crédits à moyen ou long terme', 1),
(490, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1695', '485', 'Provision pour charge de liquidation', 1),
(491, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1696', '485', 'Provision pour départ de personnel', 1),
(492, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1699', '485', 'Pour risques divers', 1),
(493, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17', '1351', 'Dettes à plus d''un an', 1),
(494, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '170', '493', 'Emprunts subordonnés', 1),
(495, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1700', '494', 'Convertibles', 1),
(496, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1701', '494', 'Non convertibles', 1),
(497, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '171', '493', 'Emprunts obligataires non subordonnés', 1),
(498, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1710', '498', 'Convertibles', 1),
(499, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1711', '498', 'Non convertibles', 1),
(500, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '172', '493', 'Dettes de location-financement et assimilés', 1),
(501, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1720', '500', 'Dettes de location-financement de biens immobiliers', 1),
(502, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1721', '500', 'Dettes de location-financement de biens mobiliers', 1),
(503, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1722', '500', 'Dettes sur droits réels sur immeubles', 1),
(504, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '173', '493', 'Etablissements de crédit', 1),
(505, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1730', '504', 'Dettes en compte', 1),
(506, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17300', '505', 'Banque A', 1),
(507, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17301', '505', 'Banque B', 1),
(508, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17302', '505', 'Banque C', 1),
(509, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17303', '505', 'Banque D', 1),
(510, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1731', '504', 'Promesses', 1),
(511, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17310', '510', 'Banque A', 1),
(512, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17311', '510', 'Banque B', 1),
(513, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17312', '510', 'Banque C', 1),
(514, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17313', '510', 'Banque D', 1);
INSERT INTO `llx_accountingaccount` (`rowid`, `fk_pcg_version`, `pcg_type`, `pcg_subtype`, `account_number`, `account_parent`, `label`, `active`) VALUES
(515, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1732', '504', 'Crédits d''acceptation', 1),
(516, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17320', '515', 'Banque A', 1),
(517, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17321', '515', 'Banque B', 1),
(518, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17322', '515', 'Banque C', 1),
(519, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17323', '515', 'Banque D', 1),
(520, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '174', '493', 'Autres emprunts', 1),
(521, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '175', '493', 'Dettes commerciales', 1),
(522, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1750', '521', 'Fournisseurs : dettes en compte', 1),
(523, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17500', '522', 'Entreprises apparentées', 1),
(524, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '175000', '523', 'Entreprises liées', 1),
(525, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '175001', '523', 'Entreprises avec lesquelles il existe un lien de participation', 1),
(526, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17501', '522', 'Fournisseurs ordinaires', 1),
(527, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '175010', '526', 'Fournisseurs belges', 1),
(528, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '175011', '526', 'Fournisseurs C.E.E.', 1),
(529, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '175012', '526', 'Fournisseurs importation', 1),
(530, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1751', '521', 'Effets à payer', 1),
(531, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17510', '530', 'Entreprises apparentées', 1),
(532, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '175100', '531', 'Entreprises liées', 1),
(533, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '175101', '531', 'Entreprises avec lesquelles il existe un lien de participation', 1),
(534, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17511', '530', 'Fournisseurs ordinaires', 1),
(535, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '175110', '534', 'Fournisseurs belges', 1),
(536, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '175111', '534', 'Fournisseurs C.E.E.', 1),
(537, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '175112', '534', 'Fournisseurs importation', 1),
(538, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '176', '493', 'Acomptes reçus sur commandes', 1),
(539, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '178', '493', 'Cautionnements reçus en numéraires', 1),
(540, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '179', '493', 'Dettes diverses', 1),
(541, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1790', '540', 'Entreprises liées', 1),
(542, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1791', '540', 'Autres entreprises avec lesquelles il existe un lien de participation', 1),
(543, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1792', '540', 'Administrateurs, gérants et associés', 1),
(544, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1794', '540', 'Rentes viagères capitalisées', 1),
(545, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1798', '540', 'Dettes envers les coparticipants des associations momentanées et en participation', 1),
(546, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1799', '540', 'Autres dettes diverses', 1),
(547, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '18', '1351', 'Comptes de liaison des établissements et succursales', 1),
(548, 'PCMN-BASE', 'IMMO', 'XXXXXX', '20', '1352', 'Frais d''établissement', 1),
(549, 'PCMN-BASE', 'IMMO', 'XXXXXX', '200', '548', 'Frais de constitution et d''augmentation de capital', 1),
(550, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2000', '549', 'Frais de constitution et d''augmentation de capital', 1),
(551, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2009', '549', 'Amortissements sur frais de constitution et d''augmentation de capital', 1),
(552, 'PCMN-BASE', 'IMMO', 'XXXXXX', '201', '548', 'Frais d''émission d''emprunts et primes de remboursement', 1),
(553, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2010', '552', 'Agios sur emprunts et frais d''émission d''emprunts', 1),
(554, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2019', '552', 'Amortissements sur agios sur emprunts et frais d''émission d''emprunts', 1),
(555, 'PCMN-BASE', 'IMMO', 'XXXXXX', '202', '548', 'Autres frais d''établissement', 1),
(556, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2020', '555', 'Autres frais d''établissement', 1),
(557, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2029', '555', 'Amortissements sur autres frais d''établissement', 1),
(558, 'PCMN-BASE', 'IMMO', 'XXXXXX', '203', '548', 'Intérêts intercalaires', 1),
(559, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2030', '558', 'Intérêts intercalaires', 1),
(560, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2039', '558', 'Amortissements sur intérêts intercalaires', 1),
(561, 'PCMN-BASE', 'IMMO', 'XXXXXX', '204', '548', 'Frais de restructuration', 1),
(562, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2040', '561', 'Coût des frais de restructuration', 1),
(563, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2049', '561', 'Amortissements sur frais de restructuration', 1),
(564, 'PCMN-BASE', 'IMMO', 'XXXXXX', '21', '1352', 'Immobilisations incorporelles', 1),
(565, 'PCMN-BASE', 'IMMO', 'XXXXXX', '210', '564', 'Frais de recherche et de développement', 1),
(566, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2100', '565', 'Frais de recherche et de mise au point', 1),
(567, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2108', '565', 'Plus-values actées sur frais de recherche et de mise au point', 1),
(568, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2109', '565', 'Amortissements sur frais de recherche et de mise au point', 1),
(569, 'PCMN-BASE', 'IMMO', 'XXXXXX', '211', '564', 'Concessions, brevets, licences, savoir-faire, marque et droits similaires', 1),
(570, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2110', '569', 'Concessions, brevets, licences, marques, etc', 1),
(571, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2118', '569', 'Plus-values actées sur concessions, etc', 1),
(572, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2119', '569', 'Amortissements sur concessions, etc', 1),
(573, 'PCMN-BASE', 'IMMO', 'XXXXXX', '212', '564', 'Goodwill', 1),
(574, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2120', '573', 'Coût d''acquisition', 1),
(575, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2128', '573', 'Plus-values actées', 1),
(576, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2129', '573', 'Amortissements sur goodwill', 1),
(577, 'PCMN-BASE', 'IMMO', 'XXXXXX', '213', '564', 'Acomptes versés', 1),
(578, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22', '1352', 'Terrains et constructions', 1),
(579, 'PCMN-BASE', 'IMMO', 'XXXXXX', '220', '578', 'Terrains', 1),
(580, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2200', '579', 'Terrains', 1),
(581, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2201', '579', 'Frais d''acquisition sur terrains', 1),
(582, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2208', '579', 'Plus-values actées sur terrains', 1),
(583, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2209', '579', 'Amortissements et réductions de valeur', 1),
(584, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22090', '583', 'Amortissements sur frais d''acquisition', 1),
(585, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22091', '583', 'Réductions de valeur sur terrains', 1),
(586, 'PCMN-BASE', 'IMMO', 'XXXXXX', '221', '578', 'Constructions', 1),
(587, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2210', '586', 'Bâtiments industriels', 1),
(588, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2211', '586', 'Bâtiments administratifs et commerciaux', 1),
(589, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2212', '586', 'Autres bâtiments d''exploitation', 1),
(590, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2213', '586', 'Voies de transport et ouvrages d''art', 1),
(591, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2215', '586', 'Constructions sur sol d''autrui', 1),
(592, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2216', '586', 'Frais d''acquisition sur constructions', 1),
(593, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2218', '586', 'Plus-values actées', 1),
(594, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22180', '593', 'Sur bâtiments industriels', 1),
(595, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22181', '593', 'Sur bâtiments administratifs et commerciaux', 1),
(596, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22182', '593', 'Sur autres bâtiments d''exploitation', 1),
(597, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22184', '593', 'Sur voies de transport et ouvrages d''art', 1),
(598, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2219', '586', 'Amortissements sur constructions', 1),
(599, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22190', '598', 'Sur bâtiments industriels', 1),
(600, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22191', '598', 'Sur bâtiments administratifs et commerciaux', 1),
(601, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22192', '598', 'Sur autres bâtiments d''exploitation', 1),
(602, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22194', '598', 'Sur voies de transport et ouvrages d''art', 1),
(603, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22195', '598', 'Sur constructions sur sol d''autrui', 1),
(604, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22196', '598', 'Sur frais d''acquisition sur constructions', 1),
(605, 'PCMN-BASE', 'IMMO', 'XXXXXX', '222', '578', 'Terrains bâtis', 1),
(606, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2220', '605', 'Valeur d''acquisition', 1),
(607, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22200', '606', 'Bâtiments industriels', 1),
(608, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22201', '606', 'Bâtiments administratifs et commerciaux', 1),
(609, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22202', '606', 'Autres bâtiments d''exploitation', 1),
(610, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22203', '606', 'Voies de transport et ouvrages d''art', 1),
(611, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22204', '606', 'Frais d''acquisition des terrains à bâtir', 1),
(612, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2228', '605', 'Plus-values actées', 1),
(613, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22280', '612', 'Sur bâtiments industriels', 1),
(614, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22281', '612', 'Sur bâtiments administratifs et commerciaux', 1),
(615, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22282', '612', 'Sur autres bâtiments d''exploitation', 1),
(616, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22283', '612', 'Sur voies de transport et ouvrages d''art', 1),
(617, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2229', '605', 'Amortissements sur terrains bâtis', 1),
(618, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22290', '617', 'Sur bâtiments industriels', 1),
(619, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22291', '617', 'Sur bâtiments administratifs et commerciaux', 1),
(620, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22292', '617', 'Sur autres bâtiments d''exploitation', 1),
(621, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22293', '617', 'Sur voies de transport et ouvrages d''art', 1),
(622, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22294', '617', 'Sur frais d''acquisition des terrains bâtis', 1),
(623, 'PCMN-BASE', 'IMMO', 'XXXXXX', '223', '578', 'Autres droits réels sur des immeubles', 1),
(624, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2230', '623', 'Valeur d''acquisition', 1),
(625, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2238', '623', 'Plus-values actées', 1),
(626, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2239', '623', 'Amortissements', 1),
(627, 'PCMN-BASE', 'IMMO', 'XXXXXX', '23', '1352', 'Installations, machines et outillages', 1),
(628, 'PCMN-BASE', 'IMMO', 'XXXXXX', '230', '627', 'Installations', 1),
(629, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2300', '628', 'Installations bâtiments industriels', 1),
(630, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2301', '628', 'Installations bâtiments administratifs et commerciaux', 1),
(631, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2302', '628', 'Installations bâtiments d''exploitation', 1),
(632, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2303', '628', 'Installations voies de transport et ouvrages d''art', 1),
(633, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2300', '628', 'Installation d''eau', 1),
(634, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2301', '628', 'Installation d''électricité', 1),
(635, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2302', '628', 'Installation de vapeur', 1),
(636, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2303', '628', 'Installation de gaz', 1),
(637, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2304', '628', 'Installation de chauffage', 1),
(638, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2305', '628', 'Installation de conditionnement d''air', 1),
(639, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2306', '628', 'Installation de chargement', 1),
(640, 'PCMN-BASE', 'IMMO', 'XXXXXX', '231', '627', 'Machines', 1),
(641, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2310', '640', 'Division A', 1),
(642, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2311', '640', 'Division B', 1),
(643, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2312', '640', 'Division C', 1),
(644, 'PCMN-BASE', 'IMMO', 'XXXXXX', '237', '627', 'Outillage', 1),
(645, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2370', '644', 'Division A', 1),
(646, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2371', '644', 'Division B', 1),
(647, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2372', '644', 'Division C', 1),
(648, 'PCMN-BASE', 'IMMO', 'XXXXXX', '238', '627', 'Plus-values actées', 1),
(649, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2380', '648', 'Sur installations', 1),
(650, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2381', '648', 'Sur machines', 1),
(651, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2382', '648', 'Sur outillage', 1),
(652, 'PCMN-BASE', 'IMMO', 'XXXXXX', '239', '627', 'Amortissements', 1),
(653, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2390', '652', 'Sur installations', 1),
(654, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2391', '652', 'Sur machines', 1),
(655, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2392', '652', 'Sur outillage', 1),
(656, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24', '1352', 'Mobilier et matériel roulant', 1),
(657, 'PCMN-BASE', 'IMMO', 'XXXXXX', '240', '656', 'Mobilier', 1),
(658, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2400', '656', 'Mobilier', 1),
(659, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24000', '658', 'Mobilier des bâtiments industriels', 1),
(660, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24001', '658', 'Mobilier des bâtiments administratifs et commerciaux', 1),
(661, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24002', '658', 'Mobilier des autres bâtiments d''exploitation', 1),
(662, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24003', '658', 'Mobilier oeuvres sociales', 1),
(663, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2401', '657', 'Matériel de bureau et de service social', 1),
(664, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24010', '663', 'Des bâtiments industriels', 1),
(665, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24011', '663', 'Des bâtiments administratifs et commerciaux', 1),
(666, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24012', '663', 'Des autres bâtiments d''exploitation', 1),
(667, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24013', '663', 'Des oeuvres sociales', 1),
(668, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2408', '657', 'Plus-values actées', 1),
(669, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24080', '668', 'Plus-values actées sur mobilier', 1),
(670, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24081', '668', 'Plus-values actées sur matériel de bureau et service social', 1),
(671, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2409', '657', 'Amortissements', 1),
(672, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24090', '671', 'Amortissements sur mobilier', 1),
(673, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24091', '671', 'Amortissements sur matériel de bureau et service social', 1),
(674, 'PCMN-BASE', 'IMMO', 'XXXXXX', '241', '656', 'Matériel roulant', 1),
(675, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2410', '674', 'Matériel automobile', 1),
(676, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24100', '675', 'Voitures', 1),
(677, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24105', '675', 'Camions', 1),
(678, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2411', '674', 'Matériel ferroviaire', 1),
(679, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2412', '674', 'Matériel fluvial', 1),
(680, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2413', '674', 'Matériel naval', 1),
(681, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2414', '674', 'Matériel aérien', 1),
(682, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2418', '674', 'Plus-values sur matériel roulant', 1),
(683, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24180', '682', 'Plus-values sur matériel automobile', 1),
(684, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24181', '682', 'Idem sur matériel ferroviaire', 1),
(685, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24182', '682', 'Idem sur matériel fluvial', 1),
(686, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24183', '682', 'Idem sur matériel naval', 1),
(687, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24184', '682', 'Idem sur matériel aérien', 1),
(688, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2419', '674', 'Amortissements sur matériel roulant', 1),
(689, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24190', '688', 'Amortissements sur matériel automobile', 1),
(690, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24191', '688', 'Idem sur matériel ferroviaire', 1),
(691, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24192', '688', 'Idem sur matériel fluvial', 1),
(692, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24193', '688', 'Idem sur matériel naval', 1),
(693, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24194', '688', 'Idem sur matériel aérien', 1),
(694, 'PCMN-BASE', 'IMMO', 'XXXXXX', '25', '1352', 'Immobilisation détenues en location-financement et droits similaires', 1),
(695, 'PCMN-BASE', 'IMMO', 'XXXXXX', '250', '694', 'Terrains et constructions', 1),
(696, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2500', '695', 'Terrains', 1),
(697, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2501', '695', 'Constructions', 1),
(698, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2508', '695', 'Plus-values sur emphytéose,  leasing et droits similaires : terrains et constructions', 1),
(699, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2509', '695', 'Amortissements et réductions de valeur sur terrains et constructions en leasing', 1),
(700, 'PCMN-BASE', 'IMMO', 'XXXXXX', '251', '694', 'Installations,  machines et outillage', 1),
(701, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2510', '700', 'Installations', 1),
(702, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2511', '700', 'Machines', 1),
(703, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2512', '700', 'Outillage', 1),
(704, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2518', '700', 'Plus-values actées sur installations machines et outillage pris en leasing', 1),
(705, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2519', '700', 'Amortissements sur installations machines et outillage pris en leasing', 1),
(706, 'PCMN-BASE', 'IMMO', 'XXXXXX', '252', '694', 'Mobilier et matériel roulant', 1),
(707, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2520', '706', 'Mobilier', 1),
(708, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2521', '706', 'Matériel roulant', 1),
(709, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2528', '706', 'Plus-values actées sur mobilier et matériel roulant en leasing', 1),
(710, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2529', '706', 'Amortissements sur mobilier et matériel roulant en leasing', 1),
(711, 'PCMN-BASE', 'IMMO', 'XXXXXX', '26', '1352', 'Autres immobilisations corporelles', 1),
(712, 'PCMN-BASE', 'IMMO', 'XXXXXX', '260', '711', 'Frais d''aménagements de locaux pris en location', 1),
(713, 'PCMN-BASE', 'IMMO', 'XXXXXX', '261', '711', 'Maison d''habitation', 1),
(714, 'PCMN-BASE', 'IMMO', 'XXXXXX', '262', '711', 'Réserve immobilière', 1),
(715, 'PCMN-BASE', 'IMMO', 'XXXXXX', '263', '711', 'Matériel d''emballage', 1),
(716, 'PCMN-BASE', 'IMMO', 'XXXXXX', '264', '711', 'Emballages récupérables', 1),
(717, 'PCMN-BASE', 'IMMO', 'XXXXXX', '268', '711', 'Plus-values actées sur autres immobilisations corporelles', 1),
(718, 'PCMN-BASE', 'IMMO', 'XXXXXX', '269', '711', 'Amortissements sur autres immobilisations corporelles', 1),
(719, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2690', '718', 'Amortissements sur frais d''aménagement des locaux pris en location', 1),
(720, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2691', '718', 'Amortissements sur maison d''habitation', 1),
(721, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2692', '718', 'Amortissements sur réserve immobilière', 1),
(722, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2693', '718', 'Amortissements sur matériel d''emballage', 1),
(723, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2694', '718', 'Amortissements sur emballages récupérables', 1),
(724, 'PCMN-BASE', 'IMMO', 'XXXXXX', '27', '1352', 'Immobilisations corporelles en cours et acomptes versés', 1),
(725, 'PCMN-BASE', 'IMMO', 'XXXXXX', '270', '724', 'Immobilisations en cours', 1),
(726, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2700', '725', 'Constructions', 1),
(727, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2701', '725', 'Installations machines et outillage', 1),
(728, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2702', '725', 'Mobilier et matériel roulant', 1),
(729, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2703', '725', 'Autres immobilisations corporelles', 1),
(730, 'PCMN-BASE', 'IMMO', 'XXXXXX', '271', '724', 'Avances et acomptes versés sur immobilisations en cours', 1),
(731, 'PCMN-BASE', 'IMMO', 'XXXXXX', '28', '1352', 'Immobilisations financières', 1),
(732, 'PCMN-BASE', 'IMMO', 'XXXXXX', '280', '731', 'Participations dans des entreprises liées', 1),
(733, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2800', '732', 'Valeur d''acquisition (peut être subdivisé par participation)', 1),
(734, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2801', '732', 'Montants non appelés (idem)', 1),
(735, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2808', '732', 'Plus-values actées (idem)', 1),
(736, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2809', '732', 'Réductions de valeurs actées (idem)', 1),
(737, 'PCMN-BASE', 'IMMO', 'XXXXXX', '281', '731', 'Créances sur des entreprises liées', 1),
(738, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2810', '737', 'Créances en compte', 1),
(739, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2811', '737', 'Effets à recevoir', 1),
(740, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2812', '737', 'Titres à revenu fixes', 1),
(741, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2817', '737', 'Créances douteuses', 1),
(742, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2819', '737', 'Réductions de valeurs actées', 1),
(743, 'PCMN-BASE', 'IMMO', 'XXXXXX', '282', '731', 'Participations dans des entreprises avec lesquelles il existe un lien de participation', 1),
(744, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2820', '743', 'Valeur d''acquisition (peut être subdivisé par participation)', 1),
(745, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2821', '743', 'Montants non appelés (idem)', 1),
(746, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2828', '743', 'Plus-values actées (idem)', 1),
(747, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2829', '743', 'Réductions de valeurs actées (idem)', 1),
(748, 'PCMN-BASE', 'IMMO', 'XXXXXX', '283', '731', 'Créances sur des entreprises avec lesquelles il existe un lien de participation', 1),
(749, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2830', '748', 'Créances en compte', 1),
(750, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2831', '748', 'Effets à recevoir', 1),
(751, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2832', '748', 'Titres à revenu fixe', 1),
(752, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2837', '748', 'Créances douteuses', 1),
(753, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2839', '748', 'Réductions de valeurs actées', 1),
(754, 'PCMN-BASE', 'IMMO', 'XXXXXX', '284', '731', 'Autres actions et parts', 1),
(755, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2840', '754', 'Valeur d''acquisition', 1),
(756, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2841', '754', 'Montants non appelés', 1),
(757, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2848', '754', 'Plus-values actées', 1),
(758, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2849', '754', 'Réductions de valeur actées', 1),
(759, 'PCMN-BASE', 'IMMO', 'XXXXXX', '285', '731', 'Autres créances', 1),
(760, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2850', '759', 'Créances en compte', 1),
(761, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2851', '759', 'Effets à recevoir', 1),
(762, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2852', '759', 'Titres à revenu fixe', 1),
(763, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2857', '759', 'Créances douteuses', 1),
(764, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2859', '759', 'Réductions de valeur actées', 1),
(765, 'PCMN-BASE', 'IMMO', 'XXXXXX', '288', '731', 'Cautionnements versés en numéraires', 1),
(766, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2880', '765', 'Téléphone, téléfax, télex', 1),
(767, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2881', '765', 'Gaz', 1),
(768, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2882', '765', 'Eau', 1),
(769, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2883', '765', 'Electricité', 1),
(770, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2887', '765', 'Autres cautionnements versés en numéraires', 1),
(771, 'PCMN-BASE', 'IMMO', 'XXXXXX', '29', '1352', 'Créances à plus d''un an', 1),
(772, 'PCMN-BASE', 'IMMO', 'XXXXXX', '290', '771', 'Créances commerciales', 1),
(773, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2900', '772', 'Clients', 1),
(774, 'PCMN-BASE', 'IMMO', 'XXXXXX', '29000', '773', 'Créances en compte sur entreprises liées', 1),
(775, 'PCMN-BASE', 'IMMO', 'XXXXXX', '29001', '773', 'Sur entreprises avec lesquelles il existe un lien de participation', 1),
(776, 'PCMN-BASE', 'IMMO', 'XXXXXX', '29002', '773', 'Sur clients Belgique', 1),
(777, 'PCMN-BASE', 'IMMO', 'XXXXXX', '29003', '773', 'Sur clients C.E.E.', 1),
(778, 'PCMN-BASE', 'IMMO', 'XXXXXX', '29004', '773', 'Sur clients exportation hors C.E.E.', 1),
(779, 'PCMN-BASE', 'IMMO', 'XXXXXX', '29005', '773', 'Créances sur les coparticipants (associations momentanées)', 1),
(780, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2901', '772', 'Effets à recevoir', 1),
(781, 'PCMN-BASE', 'IMMO', 'XXXXXX', '29010', '780', 'Sur entreprises liées', 1),
(782, 'PCMN-BASE', 'IMMO', 'XXXXXX', '29011', '780', 'Sur entreprises avec lesquelles il existe un lien de participation', 1),
(783, 'PCMN-BASE', 'IMMO', 'XXXXXX', '29012', '780', 'Sur clients Belgique', 1),
(784, 'PCMN-BASE', 'IMMO', 'XXXXXX', '29013', '780', 'Sur clients C.E.E.', 1),
(785, 'PCMN-BASE', 'IMMO', 'XXXXXX', '29014', '780', 'Sur clients exportation hors C.E.E.', 1),
(786, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2905', '772', 'Retenues sur garanties', 1),
(787, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2906', '772', 'Acomptes versés', 1),
(788, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2907', '772', 'Créances douteuses (à ventiler comme clients 2900)', 1),
(789, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2909', '772', 'Réductions de valeur actées (à ventiler comme clients 2900)', 1),
(790, 'PCMN-BASE', 'IMMO', 'XXXXXX', '291', '771', 'Autres créances', 1),
(791, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2910', '790', 'Créances en compte', 1),
(792, 'PCMN-BASE', 'IMMO', 'XXXXXX', '29100', '791', 'Sur entreprises liées', 1),
(793, 'PCMN-BASE', 'IMMO', 'XXXXXX', '29101', '791', 'Sur entreprises avec lesquelles il existe un lien de participation', 1),
(794, 'PCMN-BASE', 'IMMO', 'XXXXXX', '29102', '791', 'Sur autres débiteurs', 1),
(795, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2911', '790', 'Effets à recevoir', 1),
(796, 'PCMN-BASE', 'IMMO', 'XXXXXX', '29110', '795', 'Sur entreprises liées', 1),
(797, 'PCMN-BASE', 'IMMO', 'XXXXXX', '29111', '795', 'Sur entreprises avec lesquelles il existe un lien de participation', 1),
(798, 'PCMN-BASE', 'IMMO', 'XXXXXX', '29112', '795', 'Sur autres débiteurs', 1),
(799, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2912', '790', 'Créances résultant de la cession d''immobilisations données en leasing', 1),
(800, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2917', '790', 'Créances douteuses', 1),
(801, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2919', '790', 'Réductions de valeur actées', 1),
(802, 'PCMN-BASE', 'STOCK', 'XXXXXX', '30', '1353', 'Approvisionnements - matières premières', 1),
(803, 'PCMN-BASE', 'STOCK', 'XXXXXX', '300', '802', 'Valeur d''acquisition', 1),
(804, 'PCMN-BASE', 'STOCK', 'XXXXXX', '309', '802', 'Réductions de valeur actées', 1),
(805, 'PCMN-BASE', 'STOCK', 'XXXXXX', '31', '1353', 'Approvsionnements et fournitures', 1),
(806, 'PCMN-BASE', 'STOCK', 'XXXXXX', '310', '805', 'Valeur d''acquisition', 1),
(807, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3100', '806', 'Matières d''approvisionnement', 1),
(808, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3101', '806', 'Energie, charbon, coke, mazout, essence, propane', 1),
(809, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3102', '806', 'Produits d''entretien', 1),
(810, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3103', '806', 'Fournitures diverses et petit outillage', 1),
(811, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3104', '806', 'Imprimés et fournitures de bureau', 1),
(812, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3105', '806', 'Fournitures de services sociaux', 1),
(813, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3106', '806', 'Emballages commerciaux', 1),
(814, 'PCMN-BASE', 'STOCK', 'XXXXXX', '31060', '813', 'Emballages perdus', 1),
(815, 'PCMN-BASE', 'STOCK', 'XXXXXX', '31061', '813', 'Emballages récupérables', 1),
(816, 'PCMN-BASE', 'STOCK', 'XXXXXX', '319', '805', 'Réductions de valeur actées', 1),
(817, 'PCMN-BASE', 'STOCK', 'XXXXXX', '32', '1353', 'En cours de fabrication', 1),
(818, 'PCMN-BASE', 'STOCK', 'XXXXXX', '320', '817', 'Valeur d''acquisition', 1),
(819, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3200', '818', 'Produits semi-ouvrés', 1),
(820, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3201', '818', 'Produits en cours de fabrication', 1),
(821, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3202', '818', 'Travaux en cours', 1),
(822, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3205', '818', 'Déchets', 1),
(823, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3206', '818', 'Rebuts', 1),
(824, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3209', '818', 'Travaux en association momentanée', 1),
(825, 'PCMN-BASE', 'STOCK', 'XXXXXX', '329', '817', 'Réductions de valeur actées', 1),
(826, 'PCMN-BASE', 'STOCK', 'XXXXXX', '33', '1353', 'Produits finis', 1),
(827, 'PCMN-BASE', 'STOCK', 'XXXXXX', '330', '826', 'Valeur d''acquisition', 1),
(828, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3300', '827', 'Produits finis', 1),
(829, 'PCMN-BASE', 'STOCK', 'XXXXXX', '339', '826', 'Réductions de valeur actées', 1),
(830, 'PCMN-BASE', 'STOCK', 'XXXXXX', '34', '1353', 'Marchandises', 1),
(831, 'PCMN-BASE', 'STOCK', 'XXXXXX', '340', '830', 'Valeur d''acquisition', 1),
(832, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3400', '831', 'Groupe A', 1),
(833, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3401', '831', 'Groupe B', 1),
(834, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3402', '831', 'Groupe C', 1),
(835, 'PCMN-BASE', 'STOCK', 'XXXXXX', '349', '830', 'Réductions de valeur actées', 1),
(836, 'PCMN-BASE', 'STOCK', 'XXXXXX', '35', '1353', 'Immeubles destinés à la vente', 1),
(837, 'PCMN-BASE', 'STOCK', 'XXXXXX', '350', '836', 'Valeur d''acquisition', 1),
(838, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3500', '837', 'Immeuble A', 1),
(839, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3501', '837', 'Immeuble B', 1),
(840, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3502', '837', 'Immeuble C', 1),
(841, 'PCMN-BASE', 'STOCK', 'XXXXXX', '351', '836', 'Immeubles construits en vue de leur revente', 1),
(842, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3510', '841', 'Immeuble A', 1),
(843, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3511', '841', 'Immeuble B', 1),
(844, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3512', '841', 'Immeuble C', 1),
(845, 'PCMN-BASE', 'STOCK', 'XXXXXX', '359', '836', 'Réductions de valeurs actées', 1),
(846, 'PCMN-BASE', 'STOCK', 'XXXXXX', '36', '1353', 'Acomptes versés sur achats pour stocks', 1),
(847, 'PCMN-BASE', 'STOCK', 'XXXXXX', '360', '846', 'Acomptes versés (à ventiler éventuellement par catégorie)', 1),
(848, 'PCMN-BASE', 'STOCK', 'XXXXXX', '369', '846', 'Réductions de valeur actées', 1),
(849, 'PCMN-BASE', 'STOCK', 'XXXXXX', '37', '1353', 'Commandes en cours d''exécution', 1),
(850, 'PCMN-BASE', 'STOCK', 'XXXXXX', '370', '849', 'Valeur d''acquisition', 1),
(851, 'PCMN-BASE', 'STOCK', 'XXXXXX', '371', '849', 'Bénéfice pris en compte', 1),
(852, 'PCMN-BASE', 'STOCK', 'XXXXXX', '379', '849', 'Réductions de valeur actées', 1),
(853, 'PCMN-BASE', 'TIERS', 'XXXXXX', '40', '1354', 'Créances commerciales', 1),
(854, 'PCMN-BASE', 'TIERS', 'XXXXXX', '400', '853', 'Clients', 1),
(855, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4007', '854', 'Rabais, remises et  ristournes à accorder et autres notes de crédit à établir', 1),
(856, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4008', '854', 'Créances résultant de livraisons de biens (associations momentanées)', 1),
(857, 'PCMN-BASE', 'TIERS', 'XXXXXX', '401', '853', 'Effets à recevoir', 1),
(858, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4010', '857', 'Effets à recevoir', 1),
(859, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4013', '857', 'Effets à l''encaissement', 1),
(860, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4015', '857', 'Effets à l''escompte', 1),
(861, 'PCMN-BASE', 'TIERS', 'XXXXXX', '402', '853', 'Clients, créances courantes, entreprises apparentées, administrateurs et gérants', 1),
(862, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4020', '861', 'Entreprises liées', 1),
(863, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4021', '861', 'Autres entreprises avec lesquelles il existe un lien de participation', 1),
(864, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4022', '861', 'Administrateurs et gérants d''entreprise', 1),
(865, 'PCMN-BASE', 'TIERS', 'XXXXXX', '403', '853', 'Effets à recevoir sur entreprises apparentées et administrateurs et gérants', 1),
(866, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4030', '865', 'Entreprises liées', 1),
(867, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4031', '865', 'Autres entreprises avec lesquelles il existe un lien de participation', 1),
(868, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4032', '865', 'Administrateurs et gérants de l''entreprise', 1),
(869, 'PCMN-BASE', 'TIERS', 'XXXXXX', '404', '853', 'Produits à recevoir (factures à établir)', 1),
(870, 'PCMN-BASE', 'TIERS', 'XXXXXX', '405', '853', 'Clients : retenues sur garanties', 1),
(871, 'PCMN-BASE', 'TIERS', 'XXXXXX', '406', '853', 'Acomptes versés', 1),
(872, 'PCMN-BASE', 'TIERS', 'XXXXXX', '407', '853', 'Créances douteuses', 1),
(873, 'PCMN-BASE', 'TIERS', 'XXXXXX', '408', '853', 'Compensation clients', 1),
(874, 'PCMN-BASE', 'TIERS', 'XXXXXX', '409', '853', 'Réductions de valeur actées', 1),
(875, 'PCMN-BASE', 'TIERS', 'XXXXXX', '41', '1354', 'Autres créances', 1),
(876, 'PCMN-BASE', 'TIERS', 'XXXXXX', '410', '875', 'Capital appelé, non versé', 1),
(877, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4100', '876', 'Appels de fonds', 1),
(878, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4101', '876', 'Actionnaires défaillants', 1),
(879, 'PCMN-BASE', 'TIERS', 'XXXXXX', '411', '875', 'T.V.A. à récupérer', 1),
(880, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4110', '879', 'T.V.A. due', 1),
(881, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4111', '879', 'T.V.A. déductible', 1),
(882, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4112', '879', 'Compte courant administration T.V.A.', 1),
(883, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4118', '879', 'Taxe d''égalisation due', 1),
(884, 'PCMN-BASE', 'TIERS', 'XXXXXX', '412', '875', 'Impôts et versements fiscaux à récupérer', 1),
(885, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4120', '884', 'Impôts belges sur le résultat', 1),
(886, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4125', '884', 'Autres impôts belges', 1),
(887, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4128', '884', 'Impôts étrangers', 1),
(888, 'PCMN-BASE', 'TIERS', 'XXXXXX', '414', '875', 'Produits à recevoir', 1),
(889, 'PCMN-BASE', 'TIERS', 'XXXXXX', '416', '875', 'Créances diverses', 1),
(890, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4160', '889', 'Associés (compte d''apport en société)', 1),
(891, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4161', '889', 'Avances et prêts au personnel', 1),
(892, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4162', '889', 'Compte courant des associés en S.P.R.L.', 1),
(893, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4163', '889', 'Compte courant des administrateurs et gérants', 1),
(894, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4164', '889', 'Créances sur sociétés apparentées', 1),
(895, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4166', '889', 'Emballages et matériel à rendre', 1),
(896, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4167', '889', 'Etat et établissements publics', 1),
(897, 'PCMN-BASE', 'TIERS', 'XXXXXX', '41670', '896', 'Subsides à recevoir', 1),
(898, 'PCMN-BASE', 'TIERS', 'XXXXXX', '41671', '896', 'Autres créances', 1),
(899, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4168', '889', 'Rabais, ristournes et remises à obtenir et autres avoirs non encore reçus', 1),
(900, 'PCMN-BASE', 'TIERS', 'XXXXXX', '417', '875', 'Créances douteuses', 1),
(901, 'PCMN-BASE', 'TIERS', 'XXXXXX', '418', '875', 'Cautionnements versés en numéraires', 1),
(902, 'PCMN-BASE', 'TIERS', 'XXXXXX', '419', '875', 'Réductions de valeur actées', 1),
(903, 'PCMN-BASE', 'TIERS', 'XXXXXX', '42', '1354', 'Dettes à plus d''un an échéant dans l''année', 1),
(904, 'PCMN-BASE', 'TIERS', 'XXXXXX', '420', '903', 'Emprunts subordonnés', 1),
(905, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4200', '904', 'Convertibles', 1),
(906, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4201', '904', 'Non convertibles', 1),
(907, 'PCMN-BASE', 'TIERS', 'XXXXXX', '421', '903', 'Emprunts obligataires non subordonnés', 1),
(908, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4210', '907', 'Convertibles', 1),
(909, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4211', '907', 'Non convertibles', 1),
(910, 'PCMN-BASE', 'TIERS', 'XXXXXX', '422', '903', 'Dettes de location-financement et assimilées', 1),
(911, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4220', '910', 'Financement de biens immobiliers', 1),
(912, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4221', '910', 'Financement de biens mobiliers', 1),
(913, 'PCMN-BASE', 'TIERS', 'XXXXXX', '423', '903', 'Etablissements de crédit', 1),
(914, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4230', '913', 'Dettes en compte', 1),
(915, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4231', '913', 'Promesses', 1),
(916, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4232', '913', 'Crédits d''acceptation', 1),
(917, 'PCMN-BASE', 'TIERS', 'XXXXXX', '424', '903', 'Autres emprunts', 1),
(918, 'PCMN-BASE', 'TIERS', 'XXXXXX', '425', '903', 'Dettes commerciales', 1),
(919, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4250', '918', 'Fournisseurs', 1),
(920, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4251', '918', 'Effets à payer', 1),
(921, 'PCMN-BASE', 'TIERS', 'XXXXXX', '426', '903', 'Cautionnements reçus en numéraires', 1),
(922, 'PCMN-BASE', 'TIERS', 'XXXXXX', '429', '903', 'Dettes diverses', 1),
(923, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4290', '922', 'Entreprises liées', 1),
(924, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4291', '922', 'Entreprises avec lesquelles il existe un lien de participation', 1),
(925, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4292', '922', 'Administrateurs, gérants, associés', 1),
(926, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4299', '922', 'Autres dettes', 1),
(927, 'PCMN-BASE', 'TIERS', 'XXXXXX', '43', '1354', 'Dettes financières', 1),
(928, 'PCMN-BASE', 'TIERS', 'XXXXXX', '430', '927', 'Etablissements de crédit. Emprunts en compte à terme fixe', 1),
(929, 'PCMN-BASE', 'TIERS', 'XXXXXX', '431', '927', 'Etablissements de crédit. Promesses', 1),
(930, 'PCMN-BASE', 'TIERS', 'XXXXXX', '432', '927', 'Etablissements de crédit. Crédits d''acceptation', 1),
(931, 'PCMN-BASE', 'TIERS', 'XXXXXX', '433', '927', 'Etablissements de crédit. Dettes en compte courant', 1),
(932, 'PCMN-BASE', 'TIERS', 'XXXXXX', '439', '927', 'Autres emprunts', 1),
(933, 'PCMN-BASE', 'TIERS', 'XXXXXX', '44', '1354', 'Dettes commerciales', 1),
(934, 'PCMN-BASE', 'TIERS', 'XXXXXX', '440', '933', 'Fournisseurs', 1),
(935, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4400', '934', 'Entreprises apparentées', 1),
(936, 'PCMN-BASE', 'TIERS', 'XXXXXX', '44000', '935', 'Entreprises liées', 1),
(937, 'PCMN-BASE', 'TIERS', 'XXXXXX', '44001', '935', 'Entreprises avec lesquelles il existe un lien de participation', 1),
(938, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4401', '934', 'Fournisseurs ordinaires', 1),
(939, 'PCMN-BASE', 'TIERS', 'XXXXXX', '44010', '938', 'Fournisseurs belges', 1),
(940, 'PCMN-BASE', 'TIERS', 'XXXXXX', '44011', '938', 'Fournisseurs CEE', 1),
(941, 'PCMN-BASE', 'TIERS', 'XXXXXX', '44012', '938', 'Fournisseurs importation', 1),
(942, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4402', '934', 'Dettes envers les coparticipants (associations momentanées)', 1),
(943, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4403', '934', 'Fournisseurs - retenues de garanties', 1),
(944, 'PCMN-BASE', 'TIERS', 'XXXXXX', '441', '933', 'Effets à payer', 1),
(945, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4410', '944', 'Entreprises apparentées', 1),
(946, 'PCMN-BASE', 'TIERS', 'XXXXXX', '44100', '945', 'Entreprises liées', 1),
(947, 'PCMN-BASE', 'TIERS', 'XXXXXX', '44101', '945', 'Entreprises avec lesquelles il existe un lien de participation', 1),
(948, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4411', '944', 'Fournisseurs ordinaires', 1),
(949, 'PCMN-BASE', 'TIERS', 'XXXXXX', '44110', '948', 'Fournisseurs belges', 1),
(950, 'PCMN-BASE', 'TIERS', 'XXXXXX', '44111', '948', 'Fournisseurs CEE', 1),
(951, 'PCMN-BASE', 'TIERS', 'XXXXXX', '44112', '948', 'Fournisseurs importation', 1),
(952, 'PCMN-BASE', 'TIERS', 'XXXXXX', '444', '933', 'Factures à recevoir', 1),
(953, 'PCMN-BASE', 'TIERS', 'XXXXXX', '446', '933', 'Acomptes reçus', 1),
(954, 'PCMN-BASE', 'TIERS', 'XXXXXX', '448', '933', 'Compensations fournisseurs', 1),
(955, 'PCMN-BASE', 'TIERS', 'XXXXXX', '45', '1354', 'Dettes fiscales, salariales et sociales', 1),
(956, 'PCMN-BASE', 'TIERS', 'XXXXXX', '450', '955', 'Dettes fiscales estimées', 1),
(957, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4501', '956', 'Impôts sur le résultat', 1),
(958, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4505', '956', 'Autres impôts en Belgique', 1),
(959, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4508', '956', 'Impôts à l''étranger', 1),
(960, 'PCMN-BASE', 'TIERS', 'XXXXXX', '451', '955', 'T.V.A. à payer', 1),
(961, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4510', '960', 'T.V.A. due', 1),
(962, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4511', '960', 'T.V.A. déductible', 1),
(963, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4512', '960', 'Compte courant administration T.V.A.', 1),
(964, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4518', '960', 'Taxe d''égalisation due', 1),
(965, 'PCMN-BASE', 'TIERS', 'XXXXXX', '452', '955', 'Impôts et taxes à payer', 1),
(966, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4520', '965', 'Autres impôts sur le résultat', 1),
(967, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4525', '965', 'Autres impôts et taxes en Belgique', 1),
(968, 'PCMN-BASE', 'TIERS', 'XXXXXX', '45250', '967', 'Précompte immobilier', 1),
(969, 'PCMN-BASE', 'TIERS', 'XXXXXX', '45251', '967', 'Impôts communaux à payer', 1),
(970, 'PCMN-BASE', 'TIERS', 'XXXXXX', '45252', '967', 'Impôts provinciaux à payer', 1),
(971, 'PCMN-BASE', 'TIERS', 'XXXXXX', '45253', '967', 'Autres impôts et taxes à payer', 1),
(972, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4528', '965', 'Impôts et taxes à l''étranger', 1),
(973, 'PCMN-BASE', 'TIERS', 'XXXXXX', '453', '955', 'Précomptes retenus', 1),
(974, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4530', '973', 'Précompte professionnel retenu sur rémunérations', 1),
(975, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4531', '973', 'Précompte professionnel retenu sur tantièmes', 1),
(976, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4532', '973', 'Précompte mobilier retenu sur dividendes attribués', 1),
(977, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4533', '973', 'Précompte mobilier retenu sur intérêts payés', 1),
(978, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4538', '973', 'Autres précomptes retenus', 1),
(979, 'PCMN-BASE', 'TIERS', 'XXXXXX', '454', '955', 'Office National de la Sécurité Sociale', 1),
(980, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4540', '979', 'Arriérés', 1),
(981, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4541', '979', '1er trimestre', 1),
(982, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4542', '979', '2ème trimestre', 1),
(983, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4543', '979', '3ème trimestre', 1),
(984, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4544', '979', '4ème trimestre', 1),
(985, 'PCMN-BASE', 'TIERS', 'XXXXXX', '455', '955', 'Rémunérations', 1),
(986, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4550', '985', 'Administrateurs,  gérants et commissaires (non réviseurs)', 1),
(987, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4551', '985', 'Direction', 1),
(988, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4552', '985', 'Employés', 1),
(989, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4553', '985', 'Ouvriers', 1),
(990, 'PCMN-BASE', 'TIERS', 'XXXXXX', '456', '955', 'Pécules de vacances', 1),
(991, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4560', '990', 'Direction', 1),
(992, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4561', '990', 'Employés', 1),
(993, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4562', '990', 'Ouvriers', 1),
(994, 'PCMN-BASE', 'TIERS', 'XXXXXX', '459', '955', 'Autres dettes sociales', 1),
(995, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4590', '994', 'Provision pour gratifications de fin d''année', 1),
(996, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4591', '994', 'Départs de personnel', 1),
(997, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4592', '994', 'Oppositions sur rémunérations', 1),
(998, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4593', '994', 'Assurances relatives au personnel', 1),
(999, 'PCMN-BASE', 'TIERS', 'XXXXXX', '45930', '998', 'Assurance loi', 1),
(1000, 'PCMN-BASE', 'TIERS', 'XXXXXX', '45931', '998', 'Assurance salaire garanti', 1),
(1001, 'PCMN-BASE', 'TIERS', 'XXXXXX', '45932', '998', 'Assurance groupe', 1),
(1002, 'PCMN-BASE', 'TIERS', 'XXXXXX', '45933', '998', 'Assurances individuelles', 1),
(1003, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4594', '994', 'Caisse d''assurances sociales pour travailleurs indépendants', 1),
(1004, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4597', '994', 'Dettes et provisions sociales diverses', 1),
(1005, 'PCMN-BASE', 'TIERS', 'XXXXXX', '46', '1354', 'Acomptes reçus sur commande', 1),
(1006, 'PCMN-BASE', 'TIERS', 'XXXXXX', '47', '1354', 'Dettes découlant de l''affectation des résultats', 1),
(1007, 'PCMN-BASE', 'TIERS', 'XXXXXX', '470', '1006', 'Dividendes et tantièmes d''exercices antérieurs', 1),
(1008, 'PCMN-BASE', 'TIERS', 'XXXXXX', '471', '1006', 'Dividendes de l''exercice', 1),
(1009, 'PCMN-BASE', 'TIERS', 'XXXXXX', '472', '1006', 'Tantièmes de l''exercice', 1),
(1010, 'PCMN-BASE', 'TIERS', 'XXXXXX', '473', '1006', 'Autres allocataires', 1),
(1011, 'PCMN-BASE', 'TIERS', 'XXXXXX', '48', '4', 'Dettes diverses', 1),
(1012, 'PCMN-BASE', 'TIERS', 'XXXXXX', '480', '1011', 'Obligations et coupons échus', 1),
(1013, 'PCMN-BASE', 'TIERS', 'XXXXXX', '481', '1011', 'Actionnaires - capital à rembourser', 1),
(1014, 'PCMN-BASE', 'TIERS', 'XXXXXX', '482', '1011', 'Participation du personnel à payer', 1),
(1015, 'PCMN-BASE', 'TIERS', 'XXXXXX', '483', '1011', 'Acomptes reçus d''autres tiers à moins d''un an', 1),
(1016, 'PCMN-BASE', 'TIERS', 'XXXXXX', '486', '1011', 'Emballages et matériel consignés', 1),
(1017, 'PCMN-BASE', 'TIERS', 'XXXXXX', '488', '1011', 'Cautionnements reçus en numéraires', 1),
(1018, 'PCMN-BASE', 'TIERS', 'XXXXXX', '489', '1011', 'Autres dettes diverses', 1),
(1019, 'PCMN-BASE', 'TIERS', 'XXXXXX', '49', '1354', 'Comptes de régularisation et compte d''attente', 1),
(1020, 'PCMN-BASE', 'TIERS', 'XXXXXX', '490', '1019', 'Charges à reporter (à subdiviser par catégorie de charges)', 1),
(1021, 'PCMN-BASE', 'TIERS', 'XXXXXX', '491', '1019', 'Produits acquis', 1),
(1022, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4910', '1021', 'Produits d''exploitation', 1),
(1023, 'PCMN-BASE', 'TIERS', 'XXXXXX', '49100', '1022', 'Ristournes et rabais à obtenir', 1),
(1024, 'PCMN-BASE', 'TIERS', 'XXXXXX', '49101', '1022', 'Commissions à obtenir', 1),
(1025, 'PCMN-BASE', 'TIERS', 'XXXXXX', '49102', '1022', 'Autres produits d''exploitation (redevances par exemple)', 1),
(1026, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4911', '1021', 'Produits financiers', 1),
(1027, 'PCMN-BASE', 'TIERS', 'XXXXXX', '49110', '1026', 'Intérêts courus et non échus sur prêts et débits', 1),
(1028, 'PCMN-BASE', 'TIERS', 'XXXXXX', '49111', '1026', 'Autres produits financiers', 1),
(1029, 'PCMN-BASE', 'TIERS', 'XXXXXX', '492', '1019', 'Charges à imputer (à subdiviser par catégorie de charges)', 1),
(1030, 'PCMN-BASE', 'TIERS', 'XXXXXX', '493', '1019', 'Produits à reporter', 1),
(1031, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4930', '1030', 'Produits d''exploitation à reporter', 1),
(1032, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4931', '1030', 'Produits financiers à reporter', 1),
(1033, 'PCMN-BASE', 'TIERS', 'XXXXXX', '499', '1019', 'Comptes d''attente', 1),
(1034, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4990', '1033', 'Compte d''attente', 1),
(1035, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4991', '1033', 'Compte de répartition périodique des charges', 1),
(1036, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4999', '1033', 'Transferts d''exercice', 1),
(1037, 'PCMN-BASE', 'FINAN', 'XXXXXX', '50', '1355', 'Actions propres', 1),
(1038, 'PCMN-BASE', 'FINAN', 'XXXXXX', '51', '1355', 'Actions et parts', 1),
(1039, 'PCMN-BASE', 'FINAN', 'XXXXXX', '510', '1038', 'Valeur d''acquisition', 1),
(1040, 'PCMN-BASE', 'FINAN', 'XXXXXX', '511', '1038', 'Montants non appelés', 1),
(1041, 'PCMN-BASE', 'FINAN', 'XXXXXX', '519', '1038', 'Réductions de valeur actées', 1),
(1042, 'PCMN-BASE', 'FINAN', 'XXXXXX', '52', '1355', 'Titres à revenus fixes', 1),
(1043, 'PCMN-BASE', 'FINAN', 'XXXXXX', '520', '1042', 'Valeur d''acquisition', 1),
(1044, 'PCMN-BASE', 'FINAN', 'XXXXXX', '529', '1042', 'Réductions de valeur actées', 1),
(1045, 'PCMN-BASE', 'FINAN', 'XXXXXX', '53', '1355', 'Dépots à terme', 1),
(1046, 'PCMN-BASE', 'FINAN', 'XXXXXX', '530', '1045', 'De plus d''un an', 1),
(1047, 'PCMN-BASE', 'FINAN', 'XXXXXX', '531', '1045', 'De plus d''un mois et à un an au plus', 1),
(1048, 'PCMN-BASE', 'FINAN', 'XXXXXX', '532', '1045', 'd''un mois au plus', 1),
(1049, 'PCMN-BASE', 'FINAN', 'XXXXXX', '539', '1045', 'Réductions de valeur actées', 1),
(1050, 'PCMN-BASE', 'FINAN', 'XXXXXX', '54', '1355', 'Valeurs échues à l''encaissement', 1),
(1051, 'PCMN-BASE', 'FINAN', 'XXXXXX', '540', '1050', 'Chèques à encaisser', 1),
(1052, 'PCMN-BASE', 'FINAN', 'XXXXXX', '541', '1050', 'Coupons à encaisser', 1),
(1053, 'PCMN-BASE', 'FINAN', 'XXXXXX', '55', '1355', 'Etablissements de crédit - Comptes ouverts auprès des divers établissements.', 1),
(1054, 'PCMN-BASE', 'FINAN', 'XXXXXX', '550', '1053', 'Comptes courants', 1),
(1055, 'PCMN-BASE', 'FINAN', 'XXXXXX', '551', '1053', 'Chèques émis', 1),
(1056, 'PCMN-BASE', 'FINAN', 'XXXXXX', '559', '1053', 'Réductions de valeur actées', 1),
(1057, 'PCMN-BASE', 'FINAN', 'XXXXXX', '56', '1355', 'Office des chèques postaux', 1),
(1058, 'PCMN-BASE', 'FINAN', 'XXXXXX', '560', '1057', 'Compte courant', 1),
(1059, 'PCMN-BASE', 'FINAN', 'XXXXXX', '561', '1057', 'Chèques émis', 1),
(1060, 'PCMN-BASE', 'FINAN', 'XXXXXX', '57', '1355', 'Caisses', 1),
(1061, 'PCMN-BASE', 'FINAN', 'XXXXXX', '570', '1060', 'à 577 Caisses - espèces ( 0 - centrale ; 7 - succursales et agences)', 1),
(1062, 'PCMN-BASE', 'FINAN', 'XXXXXX', '578', '1060', 'Caisses - timbres ( 0 - fiscaux ; 1 - postaux)', 1),
(1063, 'PCMN-BASE', 'FINAN', 'XXXXXX', '58', '1355', 'Virements internes', 1),
(1064, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '60', '1356', 'Approvisionnements et marchandises', 1),
(1065, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '600', '1064', 'Achats de matières premières', 1),
(1066, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '601', '1064', 'Achats de fournitures', 1),
(1067, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '602', '1064', 'Achats de services, travaux et études', 1),
(1068, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '603', '1064', 'Sous-traitances générales', 1),
(1069, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '604', '1064', 'Achats de marchandises', 1),
(1070, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '605', '1064', 'Achats d''immeubles destinés à la revente', 1),
(1071, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '608', '1064', 'Remises , ristournes et rabais obtenus sur achats', 1),
(1072, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '609', '1064', 'Variations de stocks', 1),
(1073, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6090', '1072', 'De matières premières', 1),
(1074, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6091', '1072', 'De fournitures', 1),
(1075, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6094', '1072', 'De marchandises', 1),
(1076, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6095', '1072', 'd''immeubles destinés à la vente', 1),
(1077, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61', '1356', 'Services et biens divers', 1),
(1078, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '610', '1077', 'Loyers et charges locatives', 1),
(1079, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6100', '1078', 'Loyers divers', 1);
INSERT INTO `llx_accountingaccount` (`rowid`, `fk_pcg_version`, `pcg_type`, `pcg_subtype`, `account_number`, `account_parent`, `label`, `active`) VALUES
(1080, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6101', '1078', 'Charges locatives (assurances, frais de confort,etc)', 1),
(1081, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '611', '1077', 'Entretien et réparation (fournitures et prestations)', 1),
(1082, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '612', '1077', 'Fournitures faites à l''entreprise', 1),
(1083, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6120', '1082', 'Eau, gaz, électricité, vapeur', 1),
(1084, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61200', '1083', 'Eau', 1),
(1085, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61201', '1083', 'Gaz', 1),
(1086, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61202', '1083', 'Electricité', 1),
(1087, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61203', '1083', 'Vapeur', 1),
(1088, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6121', '1082', 'Téléphone, télégrammes, télex, téléfax, frais postaux', 1),
(1089, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61210', '1088', 'Téléphone', 1),
(1090, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61211', '1088', 'Télégrammes', 1),
(1091, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61212', '1088', 'Télex et téléfax', 1),
(1092, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61213', '1088', 'Frais postaux', 1),
(1093, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6122', '1082', 'Livres, bibliothèque', 1),
(1094, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6123', '1082', 'Imprimés et fournitures de bureau (si non comptabilisé au 601)', 1),
(1095, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '613', '1077', 'Rétributions de tiers', 1),
(1096, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6130', '1095', 'Redevances et royalties', 1),
(1097, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61300', '1096', 'Redevances pour brevets, licences, marques et accessoires', 1),
(1098, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61301', '1096', 'Autres redevances (procédés de fabrication)', 1),
(1099, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6131', '1095', 'Assurances non relatives au personnel', 1),
(1100, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61310', '1099', 'Assurance incendie', 1),
(1101, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61311', '1099', 'Assurance vol', 1),
(1102, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61312', '1099', 'Assurance autos', 1),
(1103, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61313', '1099', 'Assurance crédit', 1),
(1104, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61314', '1099', 'Assurances frais généraux', 1),
(1105, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6132', '1095', 'Divers', 1),
(1106, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61320', '1105', 'Commissions aux tiers', 1),
(1107, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61321', '1105', 'Honoraires d''avocats, d''experts, etc', 1),
(1108, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61322', '1105', 'Cotisations aux groupements professionnels', 1),
(1109, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61323', '1105', 'Dons, libéralités, etc', 1),
(1110, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61324', '1105', 'Frais de contentieux', 1),
(1111, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61325', '1105', 'Publications légales', 1),
(1112, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6133', '1095', 'Transports et déplacements', 1),
(1113, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61330', '1112', 'Transports de personnel', 1),
(1114, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61331', '1112', 'Voyages, déplacements et représentations', 1),
(1115, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6134', '1095', 'Personnel intérimaire', 1),
(1116, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '614', '1077', 'Annonces, publicité, propagande et documentation', 1),
(1117, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6140', '1116', 'Annonces et insertions', 1),
(1118, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6141', '1116', 'Catalogues et imprimés', 1),
(1119, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6142', '1116', 'Echantillons', 1),
(1120, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6143', '1116', 'Foires et expositions', 1),
(1121, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6144', '1116', 'Primes', 1),
(1122, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6145', '1116', 'Cadeaux à la clientèle', 1),
(1123, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6146', '1116', 'Missions et réceptions', 1),
(1124, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6147', '1116', 'Documentation', 1),
(1125, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '615', '1077', 'Sous-traitants', 1),
(1126, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6150', '1125', 'Sous-traitants pour activités propres', 1),
(1127, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6151', '1125', 'Sous-traitants d''associations momentanées (coparticipants)', 1),
(1128, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6152', '1125', 'Quote-part bénéficiaire des coparticipants', 1),
(1129, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '617', '1077', 'Personnel intérimaire et personnes mises à la disposition de l''entreprise', 1),
(1130, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '618', '1077', 'Rémunérations, primes pour assurances extralégales, pensions de retraite et de survie des administrateurs, gérants et associés actifs qui ne sont pas attribuées en vertu d''un contrat de travail', 1),
(1131, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '62', '1356', 'Rémunérations, charges sociales et pensions', 1),
(1132, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '620', '1131', 'Rémunérations et avantages sociaux directs', 1),
(1133, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6200', '1132', 'Administrateurs ou gérants', 1),
(1134, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6201', '1132', 'Personnel de direction', 1),
(1135, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6202', '1132', 'Employés', 1),
(1136, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6203', '1132', 'Ouvriers', 1),
(1137, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6204', '1132', 'Autres membres du personnel', 1),
(1138, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '621', '1131', 'Cotisations patronales d''assurances sociales', 1),
(1139, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6210', '1138', 'Sur salaires', 1),
(1140, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6211', '1138', 'Sur appointements et commissions', 1),
(1141, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '622', '1131', 'Primes patronales pour assurances extralégales', 1),
(1142, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '623', '1131', 'Autres frais de personnel', 1),
(1143, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6230', '1142', 'Assurances du personnel', 1),
(1144, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '62300', '1143', 'Assurances loi, responsabilité civile, chemin du travail', 1),
(1145, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '62301', '1143', 'Assurance salaire garanti', 1),
(1146, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '62302', '1143', 'Assurances individuelles', 1),
(1147, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6231', '1142', 'Charges sociales diverses', 1),
(1148, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '62310', '1147', 'Jours fériés payés', 1),
(1149, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '62311', '1147', 'Salaire hebdomadaire garanti', 1),
(1150, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '62312', '1147', 'Allocations familiales complémentaires', 1),
(1151, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6232', '1142', 'Charges sociales des administrateurs, gérants et commissaires', 1),
(1152, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '62320', '1151', 'Allocations familiales complémentaires pour non salariés', 1),
(1153, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '62321', '1151', 'Lois sociales pour indépendants', 1),
(1154, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '62322', '1151', 'Divers', 1),
(1155, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '624', '1131', 'Pensions de retraite et de survie', 1),
(1156, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6240', '1155', 'Administrateurs et gérants', 1),
(1157, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6241', '1155', 'Personnel', 1),
(1158, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '625', '1131', 'Provision pour pécule de vacances', 1),
(1159, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6250', '1158', 'Dotations', 1),
(1160, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6251', '1158', 'Utilisations et reprises', 1),
(1161, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '63', '1356', 'Amortissements, réductions de valeur et provisions pour risques et charges', 1),
(1162, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '630', '1161', 'Dotations aux amortissements et aux réductions de valeur sur immobilisations', 1),
(1163, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6300', '1162', 'Dotations aux amortissements sur frais d''établissement', 1),
(1164, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6301', '1162', 'Dotations aux amortissements sur immobilisations incorporelles', 1),
(1165, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6302', '1162', 'Dotations aux amortissements sur immobilisations corporelles', 1),
(1166, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6308', '1162', 'Dotations aux réductions de valeur sur immobilisations incorporelles', 1),
(1167, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6309', '1162', 'Dotations aux réductions de valeur sur immobilisations corporelles', 1),
(1168, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '631', '1161', 'Réductions de valeur sur stocks', 1),
(1169, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6310', '1168', 'Dotations', 1),
(1170, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6311', '1168', 'Reprises', 1),
(1171, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '632', '1161', 'Réductions de valeur sur commandes en cours d''exécution', 1),
(1172, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6320', '1171', 'Dotations', 1),
(1173, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6321', '1171', 'Reprises', 1),
(1174, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '633', '1161', 'Réductions de valeur sur créances commerciales à plus d''un an', 1),
(1175, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6330', '1174', 'Dotations', 1),
(1176, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6331', '1174', 'Reprises', 1),
(1177, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '634', '1161', 'Réductions de valeur sur créances commerciales à un an au plus', 1),
(1178, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6340', '1177', 'Dotations', 1),
(1179, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6341', '1177', 'Reprises', 1),
(1180, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '635', '1161', 'Provisions pour pensions et obligations similaires', 1),
(1181, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6350', '1180', 'Dotations', 1),
(1182, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6351', '1180', 'Utilisations et reprises', 1),
(1183, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '636', '11613', 'Provisions pour grosses réparations et gros entretiens', 1),
(1184, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6360', '1183', 'Dotations', 1),
(1185, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6361', '1183', 'Utilisations et reprises', 1),
(1186, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '637', '1161', 'Provisions pour autres risques et charges', 1),
(1187, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6370', '1186', 'Dotations', 1),
(1188, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6371', '1186', 'Utilisations et reprises', 1),
(1189, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '64', '1356', 'Autres charges d''exploitation', 1),
(1190, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '640', '1189', 'Charges fiscales d''exploitation', 1),
(1191, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6400', '1190', 'Taxes et impôts directs', 1),
(1192, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '64000', '1191', 'Taxes sur autos et camions', 1),
(1193, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6401', '1190', 'Taxes et impôts indirects', 1),
(1194, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '64010', '1193', 'Timbres fiscaux pris en charge par la firme', 1),
(1195, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '64011', '1193', 'Droits d''enregistrement', 1),
(1196, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '64012', '1193', 'T.V.A. non déductible', 1),
(1197, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6402', '1190', 'Impôts provinciaux et communaux', 1),
(1198, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '64020', '1197', 'Taxe sur la force motrice', 1),
(1199, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '64021', '1197', 'Taxe sur le personnel occupé', 1),
(1200, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6403', '1190', 'Taxes diverses', 1),
(1201, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '641', '1189', 'Moins-values sur réalisations courantes d''immobilisations corporelles', 1),
(1202, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '642', '1189', 'Moins-values sur réalisations de créances commerciales', 1),
(1203, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '643', '1189', 'à 648 Charges d''exploitations diverses', 1),
(1204, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '649', '1189', 'Charges d''exploitation portées à l''actif au titre de restructuration', 1),
(1205, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '65', '1356', 'Charges financières', 1),
(1206, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '650', '1205', 'Charges des dettes', 1),
(1207, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6500', '1206', 'Intérêts, commissions et frais afférents aux dettes', 1),
(1208, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6501', '1206', 'Amortissements des agios et frais d''émission d''emprunts', 1),
(1209, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6502', '1206', 'Autres charges de dettes', 1),
(1210, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6503', '1206', 'Intérêts intercalaires portés à l''actif', 1),
(1211, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '651', '1205', 'Réductions de valeur sur actifs circulants', 1),
(1212, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6510', '1211', 'Dotations', 1),
(1213, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6511', '1211', 'Reprises', 1),
(1214, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '652', '1205', 'Moins-values sur réalisation d''actifs circulants', 1),
(1215, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '653', '1205', 'Charges d''escompte de créances', 1),
(1216, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '654', '1205', 'Différences de change', 1),
(1217, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '655', '1205', 'Ecarts de conversion des devises', 1),
(1218, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '656', '1205', 'Frais de banques, de chèques postaux', 1),
(1219, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '657', '1205', 'Commissions sur ouvertures de crédit, cautions et avals', 1),
(1220, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '658', '1205', 'Frais de vente des titres', 1),
(1221, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '66', '1356', 'Charges exceptionnelles', 1),
(1222, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '660', '1221', 'Amortissements et réductions de valeur exceptionnels', 1),
(1223, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6600', '1222', 'Sur frais d''établissement', 1),
(1224, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6601', '1222', 'Sur immobilisations incorporelles', 1),
(1225, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6602', '1222', 'Sur immobilisations corporelles', 1),
(1226, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '661', '1221', 'Réductions de valeur sur immobilisations financières', 1),
(1227, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '662', '1221', 'Provisions pour risques et charges exceptionnels', 1),
(1228, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '663', '1221', 'Moins-values sur réalisation d''actifs immobilisés', 1),
(1229, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6630', '1228', 'Sur immobilisations incorporelles', 1),
(1230, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6631', '1228', 'Sur immobilisations corporelles', 1),
(1231, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6632', '1228', 'Sur immobilisations détenues en location-financement et droits similaires', 1),
(1232, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6633', '1228', 'Sur immobilisations financières', 1),
(1233, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6634', '1228', 'Sur immeubles acquis ou construits en vue de la revente', 1),
(1234, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '664', '1221', 'à 668 Autres charges exceptionnelles', 1),
(1235, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '664', '1221', 'Pénalités et amendes diverses', 1),
(1236, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '665', '1221', 'Différence de charge', 1),
(1237, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '669', '1221', 'Charges exceptionnelles transférées à l''actif en frais de restructuration', 1),
(1238, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '67', '1356', 'Impôts sur le résultat', 1),
(1239, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '670', '1238', 'Impôts belges sur le résultat de l''exercice', 1),
(1240, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6700', '1239', 'Impôts et précomptes dus ou versés', 1),
(1241, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6701', '1239', 'Excédent de versements d''impôts et précomptes porté à l''actif', 1),
(1242, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6702', '1239', 'Charges fiscales estimées', 1),
(1243, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '671', '1238', 'Impôts belges sur le résultat d''exercices antérieurs', 1),
(1244, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6710', '1243', 'Suppléments d''impôts dus ou versés', 1),
(1245, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6711', '1243', 'Suppléments d''impôts estimés', 1),
(1246, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6712', '1243', 'Provisions fiscales constituées', 1),
(1247, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '672', '1238', 'Impôts étrangers sur le résultat de l''exercice', 1),
(1248, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '673', '1238', 'Impôts étrangers sur le résultat d''exercices antérieurs', 1),
(1249, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '68', '1356', 'Transferts aux réserves immunisées', 1),
(1250, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '69', '1356', 'Affectation des résultats', 1),
(1251, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '690', '1250', 'Perte reportée de l''exercice précédent', 1),
(1252, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '691', '1250', 'Dotation à la réserve légale', 1),
(1253, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '692', '1250', 'Dotation aux autres réserves', 1),
(1254, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '693', '1250', 'Bénéfice à reporter', 1),
(1255, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '694', '1250', 'Rémunération du capital', 1),
(1256, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '695', '1250', 'Administrateurs ou gérants', 1),
(1257, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '696', '1250', 'Autres allocataires', 1),
(1258, 'PCMN-BASE', 'PROD', 'XXXXXX', '70', '1357', 'Chiffre d''affaires', 1),
(1260, 'PCMN-BASE', 'PROD', 'XXXXXX', '700', '1258', 'Ventes de marchandises', 1),
(1261, 'PCMN-BASE', 'PROD', 'XXXXXX', '7000', '1260', 'Ventes en Belgique', 1),
(1262, 'PCMN-BASE', 'PROD', 'XXXXXX', '7001', '1260', 'Ventes dans les pays membres de la C.E.E.', 1),
(1263, 'PCMN-BASE', 'PROD', 'XXXXXX', '7002', '1260', 'Ventes à l''exportation', 1),
(1264, 'PCMN-BASE', 'PROD', 'XXXXXX', '701', '1258', 'Ventes de produits finis', 1),
(1265, 'PCMN-BASE', 'PROD', 'XXXXXX', '7010', '1264', 'Ventes en Belgique', 1),
(1266, 'PCMN-BASE', 'PROD', 'XXXXXX', '7011', '1264', 'Ventes dans les pays membres de la C.E.E.', 1),
(1267, 'PCMN-BASE', 'PROD', 'XXXXXX', '7012', '1264', 'Ventes à l''exportation', 1),
(1268, 'PCMN-BASE', 'PROD', 'XXXXXX', '702', '1258', 'Ventes de déchets et rebuts', 1),
(1269, 'PCMN-BASE', 'PROD', 'XXXXXX', '7020', '1268', 'Ventes en Belgique', 1),
(1270, 'PCMN-BASE', 'PROD', 'XXXXXX', '7021', '1268', 'Ventes dans les pays membres de la C.E.E.', 1),
(1271, 'PCMN-BASE', 'PROD', 'XXXXXX', '7022', '1268', 'Ventes à l''exportation', 1),
(1272, 'PCMN-BASE', 'PROD', 'XXXXXX', '703', '1258', 'Ventes d''emballages récupérables', 1),
(1273, 'PCMN-BASE', 'PROD', 'XXXXXX', '704', '1258', 'Facturations des travaux en cours (associations momentanées)', 1),
(1274, 'PCMN-BASE', 'PROD', 'XXXXXX', '705', '1258', 'Prestations de services', 1),
(1275, 'PCMN-BASE', 'PROD', 'XXXXXX', '7050', '1274', 'Prestations de services en Belgique', 1),
(1276, 'PCMN-BASE', 'PROD', 'XXXXXX', '7051', '1274', 'Prestations de services dans les pays membres de la C.E.E.', 1),
(1277, 'PCMN-BASE', 'PROD', 'XXXXXX', '7052', '1274', 'Prestations de services en vue de l''exportation', 1),
(1278, 'PCMN-BASE', 'PROD', 'XXXXXX', '706', '1258', 'Pénalités et dédits obtenus par l''entreprise', 1),
(1279, 'PCMN-BASE', 'PROD', 'XXXXXX', '708', '1258', 'Remises, ristournes et rabais accordés', 1),
(1280, 'PCMN-BASE', 'PROD', 'XXXXXX', '7080', '1279', 'Sur ventes de marchandises', 1),
(1281, 'PCMN-BASE', 'PROD', 'XXXXXX', '7081', '1279', 'Sur ventes de produits finis', 1),
(1282, 'PCMN-BASE', 'PROD', 'XXXXXX', '7082', '1279', 'Sur ventes de déchets et rebuts', 1),
(1283, 'PCMN-BASE', 'PROD', 'XXXXXX', '7083', '1279', 'Sur prestations de services', 1),
(1284, 'PCMN-BASE', 'PROD', 'XXXXXX', '7084', '1279', 'Mali sur travaux facturés aux associations momentanées', 1),
(1285, 'PCMN-BASE', 'PROD', 'XXXXXX', '71', '1357', 'Variation des stocks et des commandes en cours d''exécution', 1),
(1286, 'PCMN-BASE', 'PROD', 'XXXXXX', '712', '1285', 'Des en cours de fabrication', 1),
(1287, 'PCMN-BASE', 'PROD', 'XXXXXX', '713', '1285', 'Des produits finis', 1),
(1288, 'PCMN-BASE', 'PROD', 'XXXXXX', '715', '1285', 'Des immeubles construits destinés à la vente', 1),
(1289, 'PCMN-BASE', 'PROD', 'XXXXXX', '717', '1285', 'Des commandes en cours d''exécution', 1),
(1290, 'PCMN-BASE', 'PROD', 'XXXXXX', '7170', '1289', 'Commandes en cours - Coût de revient', 1),
(1291, 'PCMN-BASE', 'PROD', 'XXXXXX', '71700', '1290', 'Coût des commandes en cours d''exécution', 1),
(1292, 'PCMN-BASE', 'PROD', 'XXXXXX', '71701', '1290', 'Coût des travaux en cours des associations momentanées', 1),
(1293, 'PCMN-BASE', 'PROD', 'XXXXXX', '7171', '1289', 'Bénéfices portés en compte sur commandes en cours', 1),
(1294, 'PCMN-BASE', 'PROD', 'XXXXXX', '71710', '1293', 'Sur commandes en cours d''exécution', 1),
(1295, 'PCMN-BASE', 'PROD', 'XXXXXX', '71711', '1293', 'Sur travaux en cours des associations momentanées', 1),
(1296, 'PCMN-BASE', 'PROD', 'XXXXXX', '72', '1357', 'Production immobilisée', 1),
(1297, 'PCMN-BASE', 'PROD', 'XXXXXX', '720', '1296', 'En frais d''établissement', 1),
(1298, 'PCMN-BASE', 'PROD', 'XXXXXX', '721', '1296', 'En immobilisations incorporelles', 1),
(1299, 'PCMN-BASE', 'PROD', 'XXXXXX', '722', '1296', 'En immobilisations corporelles', 1),
(1300, 'PCMN-BASE', 'PROD', 'XXXXXX', '723', '1296', 'En immobilisations en cours', 1),
(1301, 'PCMN-BASE', 'PROD', 'XXXXXX', '74', '1357', 'Autres produits d''exploitation', 1),
(1302, 'PCMN-BASE', 'PROD', 'XXXXXX', '740', '1301', 'Subsides d''exploitation et montants compensatoires', 1),
(1303, 'PCMN-BASE', 'PROD', 'XXXXXX', '741', '1301', 'Plus-values sur réalisations courantes d''immobilisations corporelles', 1),
(1304, 'PCMN-BASE', 'PROD', 'XXXXXX', '742', '1301', 'Plus-values sur réalisations de créances commerciales', 1),
(1305, 'PCMN-BASE', 'PROD', 'XXXXXX', '743', '1301', 'à 749 Produits d''exploitation divers', 1),
(1306, 'PCMN-BASE', 'PROD', 'XXXXXX', '743', '1301', 'Produits de services exploités dans l''intérêt du personnel', 1),
(1307, 'PCMN-BASE', 'PROD', 'XXXXXX', '744', '1301', 'Commissions et courtages', 1),
(1308, 'PCMN-BASE', 'PROD', 'XXXXXX', '745', '1301', 'Redevances pour brevets et licences', 1),
(1309, 'PCMN-BASE', 'PROD', 'XXXXXX', '746', '1301', 'Prestations de services (transports, études, etc)', 1),
(1310, 'PCMN-BASE', 'PROD', 'XXXXXX', '747', '1301', 'Revenus des immeubles affectés aux activités non professionnelles', 1),
(1311, 'PCMN-BASE', 'PROD', 'XXXXXX', '748', '1301', 'Locations diverses à caractère professionnel', 1),
(1312, 'PCMN-BASE', 'PROD', 'XXXXXX', '749', '1301', 'Produits divers', 1),
(1313, 'PCMN-BASE', 'PROD', 'XXXXXX', '7490', '1312', 'Bonis sur reprises d''emballages consignés', 1),
(1314, 'PCMN-BASE', 'PROD', 'XXXXXX', '7491', '1312', 'Bonis sur travaux en associations momentanées', 1),
(1315, 'PCMN-BASE', 'PROD', 'XXXXXX', '75', '1357', 'Produits financiers', 1),
(1316, 'PCMN-BASE', 'PROD', 'XXXXXX', '750', '1315', 'Produits des immobilisations financières', 1),
(1317, 'PCMN-BASE', 'PROD', 'XXXXXX', '7500', '1316', 'Revenus des actions', 1),
(1318, 'PCMN-BASE', 'PROD', 'XXXXXX', '7501', '1316', 'Revenus des obligations', 1),
(1319, 'PCMN-BASE', 'PROD', 'XXXXXX', '7502', '1316', 'Revenus des créances à plus d''un an', 1),
(1320, 'PCMN-BASE', 'PROD', 'XXXXXX', '751', '1315', 'Produits des actifs circulants', 1),
(1321, 'PCMN-BASE', 'PROD', 'XXXXXX', '752', '1315', 'Plus-values sur réalisations d''actifs circulants', 1),
(1322, 'PCMN-BASE', 'PROD', 'XXXXXX', '753', '1315', 'Subsides en capital et en intérêts', 1),
(1323, 'PCMN-BASE', 'PROD', 'XXXXXX', '754', '1315', 'Différences de change', 1),
(1324, 'PCMN-BASE', 'PROD', 'XXXXXX', '755', '1315', 'Ecarts de conversion des devises', 1),
(1325, 'PCMN-BASE', 'PROD', 'XXXXXX', '756', '1315', 'à 759 Produits financiers divers', 1),
(1326, 'PCMN-BASE', 'PROD', 'XXXXXX', '756', '1315', 'Produits des autres créances', 1),
(1327, 'PCMN-BASE', 'PROD', 'XXXXXX', '757', '1315', 'Escomptes obtenus', 1),
(1328, 'PCMN-BASE', 'PROD', 'XXXXXX', '76', '1357', 'Produits exceptionnels', 1),
(1329, 'PCMN-BASE', 'PROD', 'XXXXXX', '760', '1328', 'Reprises d''amortissements et de réductions de valeur', 1),
(1330, 'PCMN-BASE', 'PROD', 'XXXXXX', '7600', '1329', 'Sur immobilisations incorporelles', 1),
(1331, 'PCMN-BASE', 'PROD', 'XXXXXX', '7601', '1329', 'Sur immobilisations corporelles', 1),
(1332, 'PCMN-BASE', 'PROD', 'XXXXXX', '761', '1328', 'Reprises de réductions de valeur sur immobilisations financières', 1),
(1333, 'PCMN-BASE', 'PROD', 'XXXXXX', '762', '1328', 'Reprises de provisions pour risques et charges exceptionnelles', 1),
(1334, 'PCMN-BASE', 'PROD', 'XXXXXX', '763', '1328', 'Plus-values sur réalisation d''actifs immobilisés', 1),
(1335, 'PCMN-BASE', 'PROD', 'XXXXXX', '7630', '1334', 'Sur immobilisations incorporelles', 1),
(1336, 'PCMN-BASE', 'PROD', 'XXXXXX', '7631', '1334', 'Sur immobilisations corporelles', 1),
(1337, 'PCMN-BASE', 'PROD', 'XXXXXX', '7632', '1334', 'Sur immobilisations financières', 1),
(1338, 'PCMN-BASE', 'PROD', 'XXXXXX', '764', '1328', 'Autres produits exceptionnels', 1),
(1339, 'PCMN-BASE', 'PROD', 'XXXXXX', '77', '1357', 'Régularisations d''impôts et reprises de provisions fiscales', 1),
(1340, 'PCMN-BASE', 'PROD', 'XXXXXX', '771', '1339', 'Impôts belges sur le résultat', 1),
(1341, 'PCMN-BASE', 'PROD', 'XXXXXX', '7710', '1340', 'Régularisations d''impôts dus ou versés', 1),
(1342, 'PCMN-BASE', 'PROD', 'XXXXXX', '7711', '1340', 'Régularisations d''impôts estimés', 1),
(1343, 'PCMN-BASE', 'PROD', 'XXXXXX', '7712', '1340', 'Reprises de provisions fiscales', 1),
(1344, 'PCMN-BASE', 'PROD', 'XXXXXX', '773', '1339', 'Impôts étrangers sur le résultat', 1),
(1345, 'PCMN-BASE', 'PROD', 'XXXXXX', '79', '1357', 'Affectation aux résultats', 1),
(1346, 'PCMN-BASE', 'PROD', 'XXXXXX', '790', '1345', 'Bénéfice reporté de l''exercice précédent', 1),
(1347, 'PCMN-BASE', 'PROD', 'XXXXXX', '791', '1345', 'Prélèvement sur le capital et les primes d''émission', 1),
(1348, 'PCMN-BASE', 'PROD', 'XXXXXX', '792', '1345', 'Prélèvement sur les réserves', 1),
(1349, 'PCMN-BASE', 'PROD', 'XXXXXX', '793', '1345', 'Perte à reporter', 1),
(1350, 'PCMN-BASE', 'PROD', 'XXXXXX', '794', '1345', 'Intervention d''associés (ou du propriétaire) dans la perte', 1),
(1351, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1', '', 'Fonds propres, provisions pour risques et charges et dettes à plus d''un an', 1),
(1352, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2', '', 'Frais d''établissement. Actifs immobilisés et créances à plus d''un an', 1),
(1353, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3', '', 'Stock et commandes en cours d''exécution', 1),
(1354, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4', '', 'Créances et dettes à un an au plus', 1),
(1355, 'PCMN-BASE', 'FINAN', 'XXXXXX', '5', '', 'Placement de trésorerie et de valeurs disponibles', 1),
(1356, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6', '', 'Charges', 1),
(1357, 'PCMN-BASE', 'PROD', 'XXXXXX', '7', '', 'Produits', 1),
(1401, 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '1', '', 'Fonds propres, provisions pour risques et charges et dettes à plus d''un an', 1),
(1402, 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '2', '', 'Frais d''établissement. Actifs immobilisés et créances à plus d''un an', 1),
(1403, 'PCG99-ABREGE', 'STOCK', 'XXXXXX', '3', '', 'Stock et commandes en cours d''exécution', 1),
(1404, 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '4', '', 'Créances et dettes à un an au plus', 1),
(1405, 'PCG99-ABREGE', 'FINAN', 'XXXXXX', '5', '', 'Placement de trésorerie et de valeurs disponibles', 1),
(1406, 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '6', '', 'Charges', 1),
(1407, 'PCG99-ABREGE', 'PROD', 'XXXXXX', '7', '', 'Produits', 1),
(1501, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '1', '', 'Fonds propres, provisions pour risques et charges et dettes à plus d''un an', 1),
(1502, 'PCG99-BASE', 'IMMO', 'XXXXXX', '2', '', 'Frais d''établissement. Actifs immobilisés et créances à plus d''un an', 1),
(1503, 'PCG99-BASE', 'STOCK', 'XXXXXX', '3', '', 'Stock et commandes en cours d''exécution', 1),
(1504, 'PCG99-BASE', 'TIERS', 'XXXXXX', '4', '', 'Créances et dettes à un an au plus', 1),
(1505, 'PCG99-BASE', 'FINAN', 'XXXXXX', '5', '', 'Placement de trésorerie et de valeurs disponibles', 1),
(1506, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '6', '', 'Charges', 1),
(1507, 'PCG99-BASE', 'PROD', 'XXXXXX', '7', '', 'Produits', 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_accountingdebcred`
--

CREATE TABLE IF NOT EXISTS `llx_accountingdebcred` (
  `fk_transaction` int(11) NOT NULL,
  `account_number` varchar(20) NOT NULL,
  `amount` double NOT NULL,
  `direction` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `llx_accountingtransaction`
--

CREATE TABLE IF NOT EXISTS `llx_accountingtransaction` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(128) NOT NULL,
  `datec` date NOT NULL,
  `fk_author` varchar(20) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_source` int(11) NOT NULL,
  `sourcetype` varchar(16) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_accounting_system`
--

CREATE TABLE IF NOT EXISTS `llx_accounting_system` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `pcg_version` varchar(12) NOT NULL,
  `fk_pays` int(11) NOT NULL,
  `label` varchar(128) NOT NULL,
  `active` smallint(6) DEFAULT '0',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_accounting_system_pcg_version` (`pcg_version`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `llx_accounting_system`
--

INSERT INTO `llx_accounting_system` (`rowid`, `pcg_version`, `fk_pays`, `label`, `active`) VALUES
(1, 'PCG99-ABREGE', 1, 'The simple accountancy french plan', 1),
(2, 'PCG99-BASE', 1, 'The base accountancy french plan', 1),
(3, 'PCMN-BASE', 2, 'The base accountancy belgium plan', 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_actioncomm`
--

CREATE TABLE IF NOT EXISTS `llx_actioncomm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_ext` varchar(128) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datep` datetime DEFAULT NULL,
  `datep2` datetime DEFAULT NULL,
  `datea` datetime DEFAULT NULL,
  `datea2` datetime DEFAULT NULL,
  `fk_action` int(11) DEFAULT NULL,
  `code` varchar(32) DEFAULT NULL,
  `label` varchar(128) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_mod` int(11) DEFAULT NULL,
  `fk_project` int(11) DEFAULT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `fk_contact` int(11) DEFAULT NULL,
  `fk_parent` int(11) NOT NULL DEFAULT '0',
  `fk_user_action` int(11) DEFAULT NULL,
  `transparency` int(11) DEFAULT NULL,
  `fk_user_done` int(11) DEFAULT NULL,
  `priority` smallint(6) DEFAULT NULL,
  `fulldayevent` smallint(6) NOT NULL DEFAULT '0',
  `punctual` smallint(6) NOT NULL DEFAULT '1',
  `percent` smallint(6) NOT NULL DEFAULT '0',
  `location` varchar(128) DEFAULT NULL,
  `durationp` double DEFAULT NULL,
  `durationa` double DEFAULT NULL,
  `note` text,
  `fk_element` int(11) DEFAULT NULL,
  `elementtype` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_actioncomm_datea` (`datea`),
  KEY `idx_actioncomm_fk_soc` (`fk_soc`),
  KEY `idx_actioncomm_fk_contact` (`fk_contact`),
  KEY `idx_actioncomm_code` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `llx_actioncomm`
--

INSERT INTO `llx_actioncomm` (`id`, `ref_ext`, `entity`, `datep`, `datep2`, `datea`, `datea2`, `fk_action`, `code`, `label`, `datec`, `tms`, `fk_user_author`, `fk_user_mod`, `fk_project`, `fk_soc`, `fk_contact`, `fk_parent`, `fk_user_action`, `transparency`, `fk_user_done`, `priority`, `fulldayevent`, `punctual`, `percent`, `location`, `durationp`, `durationa`, `note`, `fk_element`, `elementtype`) VALUES
(12, NULL, 1, '2015-03-15 17:25:35', '2015-03-15 17:25:35', NULL, NULL, 40, 'AC_OTH_AUTO', 'Tercero creado', '2015-03-15 17:25:35', '2015-03-15 16:25:35', 3, NULL, NULL, 7, NULL, 0, 3, 0, 3, 0, 0, 1, -1, '', NULL, NULL, 'Tercero creado\nAutor: pedro', 7, 'societe'),
(13, NULL, 1, '2015-03-15 17:29:35', '2015-03-15 17:29:35', NULL, NULL, 40, 'AC_OTH_AUTO', 'Presupuesto (PROV6) validado', '2015-03-15 17:29:35', '2015-03-15 16:29:35', 3, NULL, NULL, 7, NULL, 0, 3, 0, 3, 0, 0, 1, -1, '', NULL, NULL, 'Presupuesto (PROV6) validado\nAutor: pedro', 6, 'propal'),
(14, NULL, 1, '2015-03-18 19:50:07', '2015-03-18 19:50:07', NULL, NULL, 40, 'AC_OTH_AUTO', 'Presupuesto (PROV8) validado', '2015-03-18 19:50:07', '2015-03-18 18:50:07', 1, NULL, NULL, 2, NULL, 0, 1, 0, 1, 0, 0, 1, -1, '', NULL, NULL, 'Presupuesto (PROV8) validado\nAutor: admin_opendooorweb', 8, 'propal'),
(15, NULL, 1, '2015-03-18 19:50:26', '2015-03-18 19:50:26', NULL, NULL, 40, 'AC_OTH_AUTO', 'Presupuesto PR1503-0001 validado', '2015-03-18 19:50:26', '2015-03-18 18:50:26', 1, NULL, NULL, 2, NULL, 0, 1, 0, 1, 0, 0, 1, -1, '', NULL, NULL, 'Presupuesto PR1503-0001 validado\nAutor: admin_opendooorweb', 8, 'propal'),
(17, NULL, 1, '2015-03-18 19:55:08', '2015-03-18 19:55:08', NULL, NULL, 40, 'AC_OTH_AUTO', 'Presupuesto (PROV9) validado', '2015-03-18 19:55:08', '2015-03-18 18:55:08', 1, NULL, NULL, 6, NULL, 0, 1, 0, 1, 0, 0, 1, -1, '', NULL, NULL, 'Presupuesto (PROV9) validado\nAutor: admin_opendooorweb', 9, 'propal'),
(19, NULL, 1, '2015-03-18 20:01:39', '2015-03-18 20:01:39', NULL, NULL, 40, 'AC_OTH_AUTO', 'Presupuesto (PROV12) validado', '2015-03-18 20:01:39', '2015-03-18 19:01:39', 1, NULL, NULL, 7, NULL, 0, 1, 0, 1, 0, 0, 1, -1, '', NULL, NULL, 'Presupuesto (PROV12) validado\nAutor: admin_opendooorweb', 12, 'propal'),
(20, NULL, 1, '2015-03-27 21:18:54', '2015-03-27 21:18:54', NULL, NULL, 40, 'AC_OTH_AUTO', 'Presupuesto (PROV13) validado', '2015-03-27 21:18:54', '2015-03-27 20:18:54', 3, NULL, NULL, 1, NULL, 0, 3, 0, 3, 0, 0, 1, -1, '', NULL, NULL, 'Presupuesto (PROV13) validado\nAutor: pedro', 13, 'propal'),
(21, NULL, 1, '2015-03-27 21:19:10', '2015-03-27 21:19:10', NULL, NULL, 40, 'AC_OTH_AUTO', 'Presupuesto PR1503-0004 validado', '2015-03-27 21:19:10', '2015-03-27 20:19:10', 3, NULL, NULL, 1, NULL, 0, 3, 0, 3, 0, 0, 1, -1, '', NULL, NULL, 'Presupuesto PR1503-0004 validado\nAutor: pedro', 13, 'propal'),
(22, NULL, 1, '2015-03-27 21:19:20', '2015-03-27 21:19:20', NULL, NULL, 40, 'AC_OTH_AUTO', 'Presupuesto PR1503-0004 validado', '2015-03-27 21:19:20', '2015-03-27 20:19:20', 3, NULL, NULL, 1, NULL, 0, 3, 0, 3, 0, 0, 1, -1, '', NULL, NULL, 'Presupuesto PR1503-0004 validado\nAutor: pedro', 13, 'propal'),
(23, NULL, 1, '2015-03-27 21:19:32', '2015-03-27 21:19:32', NULL, NULL, 40, 'AC_OTH_AUTO', 'Presupuesto PR1503-0004 validado', '2015-03-27 21:19:32', '2015-03-27 20:19:32', 3, NULL, NULL, 1, NULL, 0, 3, 0, 3, 0, 0, 1, -1, '', NULL, NULL, 'Presupuesto PR1503-0004 validado\nAutor: pedro', 13, 'propal'),
(24, NULL, 1, '2015-04-20 21:15:49', '2015-04-20 21:15:49', NULL, NULL, 40, 'AC_OTH_AUTO', 'Presupuesto (PROV15) validado', '2015-04-20 21:15:49', '2015-04-20 19:15:49', 3, NULL, NULL, 1, NULL, 0, 3, 0, 3, 0, 0, 1, -1, '', NULL, NULL, 'Presupuesto (PROV15) validado\nAutor: pedro', 15, 'propal'),
(25, NULL, 1, '2015-04-20 21:33:15', '2015-04-20 21:33:15', NULL, NULL, 40, 'AC_OTH_AUTO', 'Presupuesto PR1504-0005 validado', '2015-04-20 21:33:15', '2015-04-20 19:33:15', 3, NULL, NULL, 1, NULL, 0, 3, 0, 3, 0, 0, 1, -1, '', NULL, NULL, 'Presupuesto PR1504-0005 validado\nAutor: pedro', 15, 'propal'),
(26, NULL, 1, '2015-04-20 21:44:55', '2015-04-20 21:44:55', NULL, NULL, 40, 'AC_OTH_AUTO', 'Tercero creado', '2015-04-20 21:44:55', '2015-04-20 19:44:55', 3, NULL, NULL, 8, NULL, 0, 3, 0, 3, 0, 0, 1, -1, '', NULL, NULL, 'Tercero creado\nAutor: pedro', 8, 'societe'),
(29, NULL, 1, '2015-04-25 19:36:39', '2015-04-25 19:36:39', NULL, NULL, 40, 'AC_OTH_AUTO', 'Tercero creado', '2015-04-25 19:36:39', '2015-04-25 17:36:39', 1, NULL, NULL, 10, NULL, 0, 1, 0, 1, 0, 0, 1, -1, '', NULL, NULL, 'Tercero creado\nAutor: admin_opendooorweb', 10, 'societe'),
(31, NULL, 1, '2015-04-26 23:07:36', '2015-04-26 23:07:36', NULL, NULL, 40, 'AC_OTH_AUTO', 'Tercero creado', '2015-04-26 23:07:36', '2015-04-26 21:07:36', 1, NULL, NULL, 12, NULL, 0, 1, 0, 1, 0, 0, 1, -1, '', NULL, NULL, 'Tercero creado\nAutor: admin_opendooorweb', 12, 'societe'),
(37, NULL, 1, '2015-05-13 09:37:09', '2015-05-13 09:37:09', NULL, NULL, 40, 'AC_OTH_AUTO', 'Tercero creado', '2015-05-13 09:37:09', '2015-05-13 07:37:09', 3, NULL, NULL, 15, NULL, 0, 3, 0, 3, 0, 0, 1, -1, '', NULL, NULL, 'Tercero creado\nAutor: pedro', 15, 'societe'),
(38, NULL, 1, '2015-05-28 14:18:47', '2015-05-28 14:18:47', NULL, NULL, 40, 'AC_OTH_AUTO', 'Tercero creado', '2015-05-28 14:18:47', '2015-05-28 12:18:47', 3, NULL, NULL, 16, NULL, 0, 3, 0, 3, 0, 0, 1, -1, '', NULL, NULL, 'Tercero creado\nAutor: pedro', 16, 'societe');

-- --------------------------------------------------------

--
-- Table structure for table `llx_actioncomm_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_actioncomm_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_actioncomm_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_actioncomm_resources`
--

CREATE TABLE IF NOT EXISTS `llx_actioncomm_resources` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_actioncomm` int(11) NOT NULL,
  `element_type` varchar(50) NOT NULL,
  `fk_element` int(11) NOT NULL,
  `answer_status` varchar(50) DEFAULT NULL,
  `mandatory` smallint(6) DEFAULT NULL,
  `transparent` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `idx_actioncomm_resources_idx1` (`fk_actioncomm`,`element_type`,`fk_element`),
  KEY `idx_actioncomm_resources_fk_element` (`fk_element`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_adherent`
--

CREATE TABLE IF NOT EXISTS `llx_adherent` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(128) DEFAULT NULL,
  `civilite` varchar(6) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `login` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `fk_adherent_type` int(11) NOT NULL,
  `morphy` varchar(3) NOT NULL,
  `societe` varchar(50) DEFAULT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `address` text,
  `zip` varchar(30) DEFAULT NULL,
  `town` varchar(50) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `skype` varchar(255) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `phone_perso` varchar(30) DEFAULT NULL,
  `phone_mobile` varchar(30) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `statut` smallint(6) NOT NULL DEFAULT '0',
  `public` smallint(6) NOT NULL DEFAULT '0',
  `datefin` datetime DEFAULT NULL,
  `note` text,
  `datevalid` datetime DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_mod` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `canvas` varchar(32) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_adherent_login` (`login`,`entity`),
  UNIQUE KEY `uk_adherent_fk_soc` (`fk_soc`),
  KEY `idx_adherent_fk_adherent_type` (`fk_adherent_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_adherent_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_adherent_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_adherent_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_adherent_type`
--

CREATE TABLE IF NOT EXISTS `llx_adherent_type` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `statut` smallint(6) NOT NULL DEFAULT '0',
  `libelle` varchar(50) NOT NULL,
  `cotisation` varchar(3) NOT NULL DEFAULT 'yes',
  `vote` varchar(3) NOT NULL DEFAULT 'yes',
  `note` text,
  `mail_valid` text,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_adherent_type_libelle` (`libelle`,`entity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_adherent_type_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_adherent_type_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_adherent_type_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_bank`
--

CREATE TABLE IF NOT EXISTS `llx_bank` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datev` date DEFAULT NULL,
  `dateo` date DEFAULT NULL,
  `amount` double(24,8) NOT NULL DEFAULT '0.00000000',
  `label` varchar(255) DEFAULT NULL,
  `fk_account` int(11) DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_rappro` int(11) DEFAULT NULL,
  `fk_type` varchar(6) DEFAULT NULL,
  `num_releve` varchar(50) DEFAULT NULL,
  `num_chq` varchar(50) DEFAULT NULL,
  `rappro` tinyint(4) DEFAULT '0',
  `note` text,
  `fk_bordereau` int(11) DEFAULT '0',
  `banque` varchar(255) DEFAULT NULL,
  `emetteur` varchar(255) DEFAULT NULL,
  `author` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_bank_datev` (`datev`),
  KEY `idx_bank_dateo` (`dateo`),
  KEY `idx_bank_fk_account` (`fk_account`),
  KEY `idx_bank_rappro` (`rappro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_bank_account`
--

CREATE TABLE IF NOT EXISTS `llx_bank_account` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ref` varchar(12) NOT NULL,
  `label` varchar(30) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `bank` varchar(60) DEFAULT NULL,
  `code_banque` varchar(8) DEFAULT NULL,
  `code_guichet` varchar(6) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `cle_rib` varchar(5) DEFAULT NULL,
  `bic` varchar(11) DEFAULT NULL,
  `iban_prefix` varchar(34) DEFAULT NULL,
  `country_iban` varchar(2) DEFAULT NULL,
  `cle_iban` varchar(2) DEFAULT NULL,
  `domiciliation` varchar(255) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `fk_pays` int(11) NOT NULL,
  `proprio` varchar(60) DEFAULT NULL,
  `owner_address` varchar(255) DEFAULT NULL,
  `courant` smallint(6) NOT NULL DEFAULT '0',
  `clos` smallint(6) NOT NULL DEFAULT '0',
  `rappro` smallint(6) DEFAULT '1',
  `url` varchar(128) DEFAULT NULL,
  `account_number` varchar(24) DEFAULT NULL,
  `currency_code` varchar(3) NOT NULL,
  `min_allowed` int(11) DEFAULT '0',
  `min_desired` int(11) DEFAULT '0',
  `comment` text,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_bank_account_label` (`label`,`entity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_bank_categ`
--

CREATE TABLE IF NOT EXISTS `llx_bank_categ` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_bank_class`
--

CREATE TABLE IF NOT EXISTS `llx_bank_class` (
  `lineid` int(11) NOT NULL,
  `fk_categ` int(11) NOT NULL,
  UNIQUE KEY `uk_bank_class_lineid` (`lineid`,`fk_categ`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `llx_bank_url`
--

CREATE TABLE IF NOT EXISTS `llx_bank_url` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_bank` int(11) DEFAULT NULL,
  `url_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_bank_url` (`fk_bank`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_bookmark`
--

CREATE TABLE IF NOT EXISTS `llx_bookmark` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_soc` int(11) DEFAULT NULL,
  `fk_user` int(11) NOT NULL,
  `dateb` datetime DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(16) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `favicon` varchar(24) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `entity` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_bookmark_url` (`fk_user`,`url`),
  UNIQUE KEY `uk_bookmark_title` (`fk_user`,`title`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_bordereau_cheque`
--

CREATE TABLE IF NOT EXISTS `llx_bordereau_cheque` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(16) NOT NULL,
  `ref_ext` varchar(255) DEFAULT NULL,
  `datec` datetime NOT NULL,
  `date_bordereau` date DEFAULT NULL,
  `amount` double(24,8) NOT NULL,
  `nbcheque` smallint(6) NOT NULL,
  `fk_bank_account` int(11) DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `statut` smallint(6) NOT NULL DEFAULT '0',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `note` text,
  `entity` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_bordereau_cheque` (`number`,`entity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_boxes`
--

CREATE TABLE IF NOT EXISTS `llx_boxes` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `box_id` int(11) NOT NULL,
  `position` smallint(6) NOT NULL,
  `box_order` varchar(3) NOT NULL,
  `fk_user` int(11) NOT NULL DEFAULT '0',
  `maxline` int(11) DEFAULT NULL,
  `params` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_boxes` (`entity`,`box_id`,`position`,`fk_user`),
  KEY `idx_boxes_boxid` (`box_id`),
  KEY `idx_boxes_fk_user` (`fk_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=107 ;

--
-- Dumping data for table `llx_boxes`
--

INSERT INTO `llx_boxes` (`rowid`, `entity`, `box_id`, `position`, `box_order`, `fk_user`, `maxline`, `params`) VALUES
(1, 1, 1, 0, 'B02', 0, NULL, NULL),
(3, 1, 3, 0, 'A07', 0, NULL, NULL),
(4, 1, 4, 0, 'A13', 0, NULL, NULL),
(5, 1, 5, 0, 'B06', 0, NULL, NULL),
(6, 1, 6, 0, 'B12', 0, NULL, NULL),
(7, 1, 7, 0, 'A05', 0, NULL, NULL),
(16, 1, 16, 0, 'A11', 0, NULL, NULL),
(19, 1, 19, 0, 'B10', 0, NULL, NULL),
(21, 1, 21, 0, 'A09', 0, NULL, NULL),
(22, 1, 22, 0, 'B08', 0, NULL, NULL),
(105, 1, 7, 0, 'B01', 3, NULL, NULL),
(106, 1, 3, 0, 'B02', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_boxes_def`
--

CREATE TABLE IF NOT EXISTS `llx_boxes_def` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(200) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `note` varchar(130) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_boxes_def` (`file`,`entity`,`note`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `llx_boxes_def`
--

INSERT INTO `llx_boxes_def` (`rowid`, `file`, `entity`, `tms`, `note`) VALUES
(1, 'box_clients.php', 1, '2015-02-28 21:12:11', NULL),
(2, 'box_prospect.php', 1, '2015-02-28 21:12:11', NULL),
(3, 'box_contacts.php', 1, '2015-02-28 21:12:11', NULL),
(4, 'box_activity.php', 1, '2015-02-28 21:12:11', '(WarningUsingThisBoxSlowDown)'),
(5, 'box_factures_imp.php', 1, '2015-02-28 21:12:20', NULL),
(6, 'box_factures.php', 1, '2015-02-28 21:12:20', NULL),
(7, 'box_graph_invoices_permonth.php', 1, '2015-02-28 21:12:20', NULL),
(16, 'box_produits.php', 1, '2015-02-28 21:13:15', NULL),
(17, 'box_produits_alerte_stock.php', 1, '2015-02-28 21:13:15', NULL),
(19, 'box_services_contracts.php', 1, '2015-02-28 21:13:21', NULL),
(20, 'box_graph_product_distribution.php', 1, '2015-02-28 21:13:21', NULL),
(21, 'box_graph_propales_permonth.php', 1, '2015-02-28 21:20:55', NULL),
(22, 'box_propales.php', 1, '2015-02-28 21:20:55', NULL),
(23, 'box_actions.php', 1, '2015-03-04 20:27:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_categorie`
--

CREATE TABLE IF NOT EXISTS `llx_categorie` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_parent` int(11) NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `description` text,
  `fk_soc` int(11) DEFAULT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_categorie_ref` (`entity`,`fk_parent`,`label`,`type`),
  KEY `idx_categorie_type` (`type`),
  KEY `idx_categorie_label` (`label`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_categories_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_categories_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_categories_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_categorie_contact`
--

CREATE TABLE IF NOT EXISTS `llx_categorie_contact` (
  `fk_categorie` int(11) NOT NULL,
  `fk_socpeople` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`fk_categorie`,`fk_socpeople`),
  KEY `idx_categorie_contact_fk_categorie` (`fk_categorie`),
  KEY `idx_categorie_contact_fk_socpeople` (`fk_socpeople`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `llx_categorie_fournisseur`
--

CREATE TABLE IF NOT EXISTS `llx_categorie_fournisseur` (
  `fk_categorie` int(11) NOT NULL,
  `fk_societe` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`fk_categorie`,`fk_societe`),
  KEY `idx_categorie_fournisseur_fk_categorie` (`fk_categorie`),
  KEY `idx_categorie_fournisseur_fk_societe` (`fk_societe`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `llx_categorie_lang`
--

CREATE TABLE IF NOT EXISTS `llx_categorie_lang` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_category` int(11) NOT NULL DEFAULT '0',
  `lang` varchar(5) NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_category_lang` (`fk_category`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_categorie_member`
--

CREATE TABLE IF NOT EXISTS `llx_categorie_member` (
  `fk_categorie` int(11) NOT NULL,
  `fk_member` int(11) NOT NULL,
  PRIMARY KEY (`fk_categorie`,`fk_member`),
  KEY `idx_categorie_member_fk_categorie` (`fk_categorie`),
  KEY `idx_categorie_member_fk_member` (`fk_member`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `llx_categorie_product`
--

CREATE TABLE IF NOT EXISTS `llx_categorie_product` (
  `fk_categorie` int(11) NOT NULL,
  `fk_product` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`fk_categorie`,`fk_product`),
  KEY `idx_categorie_product_fk_categorie` (`fk_categorie`),
  KEY `idx_categorie_product_fk_product` (`fk_product`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `llx_categorie_societe`
--

CREATE TABLE IF NOT EXISTS `llx_categorie_societe` (
  `fk_categorie` int(11) NOT NULL,
  `fk_societe` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`fk_categorie`,`fk_societe`),
  KEY `idx_categorie_societe_fk_categorie` (`fk_categorie`),
  KEY `idx_categorie_societe_fk_societe` (`fk_societe`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `llx_chargesociales`
--

CREATE TABLE IF NOT EXISTS `llx_chargesociales` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `date_ech` datetime NOT NULL,
  `libelle` varchar(80) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_creation` datetime DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `fk_type` int(11) NOT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `paye` smallint(6) NOT NULL DEFAULT '0',
  `periode` date DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_commande`
--

CREATE TABLE IF NOT EXISTS `llx_commande` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(30) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(255) DEFAULT NULL,
  `ref_int` varchar(255) DEFAULT NULL,
  `ref_client` varchar(255) DEFAULT NULL,
  `fk_soc` int(11) NOT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_creation` datetime DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `date_cloture` datetime DEFAULT NULL,
  `date_commande` date DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_user_cloture` int(11) DEFAULT NULL,
  `source` smallint(6) DEFAULT NULL,
  `fk_statut` smallint(6) DEFAULT '0',
  `amount_ht` double DEFAULT '0',
  `remise_percent` double DEFAULT '0',
  `remise_absolue` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `tva` double(24,8) DEFAULT '0.00000000',
  `localtax1` double(24,8) DEFAULT '0.00000000',
  `localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  `facture` tinyint(4) DEFAULT '0',
  `fk_account` int(11) DEFAULT NULL,
  `fk_currency` varchar(3) DEFAULT NULL,
  `fk_cond_reglement` int(11) DEFAULT NULL,
  `fk_mode_reglement` int(11) DEFAULT NULL,
  `date_livraison` date DEFAULT NULL,
  `fk_availability` int(11) DEFAULT NULL,
  `fk_input_reason` int(11) DEFAULT NULL,
  `fk_delivery_address` int(11) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_commande_ref` (`ref`,`entity`),
  KEY `idx_commande_fk_soc` (`fk_soc`),
  KEY `idx_commande_fk_user_author` (`fk_user_author`),
  KEY `idx_commande_fk_user_valid` (`fk_user_valid`),
  KEY `idx_commande_fk_user_cloture` (`fk_user_cloture`),
  KEY `idx_commande_fk_projet` (`fk_projet`),
  KEY `idx_commande_fk_account` (`fk_account`),
  KEY `idx_commande_fk_currency` (`fk_currency`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_commandedet`
--

CREATE TABLE IF NOT EXISTS `llx_commandedet` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_commande` int(11) NOT NULL,
  `fk_parent_line` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `description` text,
  `tva_tx` double(6,3) DEFAULT NULL,
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `remise_percent` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `fk_remise_except` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `subprice` double(24,8) DEFAULT '0.00000000',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_tva` double(24,8) DEFAULT '0.00000000',
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `product_type` int(11) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `info_bits` int(11) DEFAULT '0',
  `buy_price_ht` double(24,8) DEFAULT '0.00000000',
  `fk_product_fournisseur_price` int(11) DEFAULT NULL,
  `special_code` int(10) unsigned DEFAULT '0',
  `rang` int(11) DEFAULT '0',
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_commandedet_fk_commande` (`fk_commande`),
  KEY `idx_commandedet_fk_product` (`fk_product`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_commandedet_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_commandedet_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_commandedet_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_commande_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_commande_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_commande_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_commande_fournisseur`
--

CREATE TABLE IF NOT EXISTS `llx_commande_fournisseur` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(30) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(30) DEFAULT NULL,
  `ref_supplier` varchar(30) DEFAULT NULL,
  `fk_soc` int(11) NOT NULL,
  `fk_projet` int(11) DEFAULT '0',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_creation` datetime DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `date_approve` datetime DEFAULT NULL,
  `date_commande` date DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_user_approve` int(11) DEFAULT NULL,
  `source` smallint(6) NOT NULL,
  `fk_statut` smallint(6) DEFAULT '0',
  `amount_ht` double DEFAULT '0',
  `remise_percent` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `tva` double(24,8) DEFAULT '0.00000000',
  `localtax1` double(24,8) DEFAULT '0.00000000',
  `localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  `date_livraison` date DEFAULT NULL,
  `fk_cond_reglement` int(11) DEFAULT NULL,
  `fk_mode_reglement` int(11) DEFAULT NULL,
  `fk_input_method` int(11) DEFAULT '0',
  `import_key` varchar(14) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_commande_fournisseur_ref` (`ref`,`fk_soc`,`entity`),
  KEY `idx_commande_fournisseur_fk_soc` (`fk_soc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_commande_fournisseurdet`
--

CREATE TABLE IF NOT EXISTS `llx_commande_fournisseurdet` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_commande` int(11) NOT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `ref` varchar(50) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `description` text,
  `tva_tx` double(6,3) DEFAULT '0.000',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `remise_percent` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `subprice` double(24,8) DEFAULT '0.00000000',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_tva` double(24,8) DEFAULT '0.00000000',
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `product_type` int(11) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `info_bits` int(11) DEFAULT '0',
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_commande_fournisseur_dispatch`
--

CREATE TABLE IF NOT EXISTS `llx_commande_fournisseur_dispatch` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_commande` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `qty` float DEFAULT NULL,
  `fk_entrepot` int(11) DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_commande_fournisseur_dispatch_fk_commande` (`fk_commande`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_commande_fournisseur_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_commande_fournisseur_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_commande_fournisseur_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_commande_fournisseur_log`
--

CREATE TABLE IF NOT EXISTS `llx_commande_fournisseur_log` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datelog` datetime NOT NULL,
  `fk_commande` int(11) NOT NULL,
  `fk_statut` smallint(6) NOT NULL,
  `fk_user` int(11) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_compta`
--

CREATE TABLE IF NOT EXISTS `llx_compta` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `datec` datetime DEFAULT NULL,
  `datev` date DEFAULT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `label` varchar(255) DEFAULT NULL,
  `fk_compta_account` int(11) DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `valid` tinyint(4) DEFAULT '0',
  `note` text,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_compta_account`
--

CREATE TABLE IF NOT EXISTS `llx_compta_account` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `datec` datetime DEFAULT NULL,
  `number` varchar(12) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `note` text,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_compta_compte_generaux`
--

CREATE TABLE IF NOT EXISTS `llx_compta_compte_generaux` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `date_creation` datetime DEFAULT NULL,
  `numero` varchar(50) DEFAULT NULL,
  `intitule` varchar(255) DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `note` text,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `numero` (`numero`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_const`
--

CREATE TABLE IF NOT EXISTS `llx_const` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `value` text NOT NULL,
  `type` varchar(6) DEFAULT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `note` text,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_const` (`name`,`entity`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=253 ;

--
-- Dumping data for table `llx_const`
--

INSERT INTO `llx_const` (`rowid`, `name`, `entity`, `value`, `type`, `visible`, `note`, `tms`) VALUES
(2, 'MAIN_FEATURES_LEVEL', 0, '0', 'chaine', 1, 'Level of features to show (0=stable only, 1=stable+experimental, 2=stable+experimental+development', '2015-02-28 21:08:13'),
(3, 'MAILING_LIMIT_SENDBYWEB', 0, '25', 'chaine', 1, 'Number of targets to defined packet size when sending mass email', '2015-02-28 21:08:13'),
(4, 'SYSLOG_HANDLERS', 0, '["mod_syslog_file"]', 'chaine', 0, 'Which logger to use', '2015-02-28 21:08:13'),
(5, 'SYSLOG_FILE', 0, 'DOL_DATA_ROOT/dolibarr.log', 'chaine', 0, 'Directory where to write log file', '2015-02-28 21:08:13'),
(6, 'SYSLOG_LEVEL', 0, '7', 'chaine', 0, 'Level of debug info to show', '2015-02-28 21:08:13'),
(7, 'MAIN_MAIL_SMTP_SERVER', 0, '', 'chaine', 0, 'Host or ip address for SMTP server', '2015-02-28 21:08:13'),
(8, 'MAIN_MAIL_SMTP_PORT', 0, '', 'chaine', 0, 'Port for SMTP server', '2015-02-28 21:08:13'),
(9, 'MAIN_UPLOAD_DOC', 0, '2048', 'chaine', 0, 'Max size for file upload (0 means no upload allowed)', '2015-02-28 21:08:13'),
(12, 'MAIN_SIZE_LISTE_LIMIT', 0, '25', 'chaine', 0, 'Longueur maximum des listes', '2015-02-28 21:08:13'),
(13, 'MAIN_SHOW_WORKBOARD', 0, '1', 'yesno', 0, 'Affichage tableau de bord de travail Dolibarr', '2015-02-28 21:08:13'),
(14, 'MAIN_MENU_STANDARD', 1, 'eldy_menu.php', 'chaine', 0, 'Menu manager for internal users', '2015-02-28 21:08:13'),
(15, 'MAIN_MENUFRONT_STANDARD', 1, 'eldy_menu.php', 'chaine', 0, 'Menu manager for external users', '2015-02-28 21:08:13'),
(16, 'MAIN_MENU_SMARTPHONE', 1, 'eldy_menu.php', 'chaine', 0, 'Menu manager for internal users using smartphones', '2015-02-28 21:08:13'),
(17, 'MAIN_MENUFRONT_SMARTPHONE', 1, 'eldy_menu.php', 'chaine', 0, 'Menu manager for external users using smartphones', '2015-02-28 21:08:13'),
(19, 'MAIN_DELAY_ORDERS_TO_PROCESS', 1, '2', 'chaine', 0, 'Tolérance de retard avant alerte (en jours) sur commandes clients non traitées', '2015-02-28 21:08:13'),
(20, 'MAIN_DELAY_SUPPLIER_ORDERS_TO_PROCESS', 1, '7', 'chaine', 0, 'Tolérance de retard avant alerte (en jours) sur commandes fournisseurs non traitées', '2015-02-28 21:08:13'),
(24, 'MAIN_DELAY_SUPPLIER_BILLS_TO_PAY', 1, '2', 'chaine', 0, 'Tolérance de retard avant alerte (en jours) sur factures fournisseur impayées', '2015-02-28 21:08:13'),
(27, 'MAIN_DELAY_MEMBERS', 1, '31', 'chaine', 0, 'Tolérance de retard avant alerte (en jours) sur cotisations adhérent en retard', '2015-02-28 21:08:13'),
(28, 'MAIN_DELAY_TRANSACTIONS_TO_CONCILIATE', 1, '62', 'chaine', 0, 'Tolérance de retard avant alerte (en jours) sur rapprochements bancaires à faire', '2015-02-28 21:08:13'),
(29, 'MAIN_FIX_FOR_BUGGED_MTA', 1, '1', 'chaine', 1, 'Set constant to fix email ending from PHP with some linux ike system', '2015-02-28 21:08:13'),
(30, 'MAILING_EMAIL_FROM', 1, 'dolibarr@domain.com', 'chaine', 0, 'EMail emmetteur pour les envois d emailings', '2015-02-28 21:08:13'),
(31, 'MAIN_MODULE_USER', 0, '1', NULL, 0, NULL, '2015-02-28 21:11:53'),
(32, 'MAIN_VERSION_LAST_INSTALL', 0, '3.6.1', 'chaine', 0, 'Dolibarr version when install', '2015-02-28 21:11:53'),
(40, 'COMPANY_ADDON_PDF_ODT_PATH', 1, 'DOL_DATA_ROOT/doctemplates/thirdparties', 'chaine', 0, NULL, '2015-02-28 21:12:11'),
(42, 'MAIN_MODULE_FACTURE', 1, '1', NULL, 0, NULL, '2015-02-28 21:12:20'),
(43, 'FACTURE_ADDON_PDF', 1, 'crabe', 'chaine', 0, 'Name of PDF model of invoice', '2015-02-28 21:12:20'),
(44, 'FACTURE_ADDON', 1, 'mod_facture_terre', 'chaine', 0, 'Name of numbering numerotation rules of invoice', '2015-02-28 21:12:20'),
(45, 'FACTURE_ADDON_PDF_ODT_PATH', 1, 'DOL_DATA_ROOT/doctemplates/invoices', 'chaine', 0, NULL, '2015-02-28 21:12:20'),
(49, 'ADHERENT_MAIL_RESIL', 1, 'Votre adhésion vient d''être résiliée.\r\nNous espérons vous revoir très bientôt', 'texte', 0, 'Mail de résiliation', '2015-02-28 21:12:25'),
(50, 'ADHERENT_MAIL_VALID', 1, 'Votre adhésion vient d''être validée. \r\nVoici le rappel de vos coordonnées (toute information erronée entrainera la non validation de votre inscription) :\r\n\r\n%INFOS%\r\n\r\n', 'texte', 0, 'Mail de validation', '2015-02-28 21:12:25'),
(51, 'ADHERENT_MAIL_VALID_SUBJECT', 1, 'Votre adhésion a été validée', 'chaine', 0, 'Sujet du mail de validation', '2015-02-28 21:12:25'),
(52, 'ADHERENT_MAIL_RESIL_SUBJECT', 1, 'Résiliation de votre adhésion', 'chaine', 0, 'Sujet du mail de résiliation', '2015-02-28 21:12:25'),
(53, 'ADHERENT_MAIL_FROM', 1, '', 'chaine', 0, 'From des mails', '2015-02-28 21:12:25'),
(54, 'ADHERENT_MAIL_COTIS', 1, 'Bonjour %FIRSTNAME%,\r\nCet email confirme que votre cotisation a été reçue\r\net enregistrée', 'texte', 0, 'Mail de validation de cotisation', '2015-02-28 21:12:25'),
(55, 'ADHERENT_MAIL_COTIS_SUBJECT', 1, 'Reçu de votre cotisation', 'chaine', 0, 'Sujet du mail de validation de cotisation', '2015-02-28 21:12:25'),
(56, 'ADHERENT_CARD_HEADER_TEXT', 1, '%ANNEE%', 'chaine', 0, 'Texte imprimé sur le haut de la carte adhérent', '2015-02-28 21:12:25'),
(57, 'ADHERENT_CARD_FOOTER_TEXT', 1, 'Association AZERTY', 'chaine', 0, 'Texte imprimé sur le bas de la carte adhérent', '2015-02-28 21:12:25'),
(58, 'ADHERENT_CARD_TEXT', 1, '%FULLNAME%\r\nID: %ID%\r\n%EMAIL%\r\n%ADDRESS%\r\n%ZIP% %TOWN%\r\n%COUNTRY%', 'texte', 0, 'Text to print on member cards', '2015-02-28 21:12:25'),
(59, 'ADHERENT_MAILMAN_ADMINPW', 1, '', 'chaine', 0, 'Mot de passe Admin des liste mailman', '2015-02-28 21:12:25'),
(60, 'ADHERENT_BANK_USE_AUTO', 1, '', 'yesno', 0, 'Insertion automatique des cotisations dans le compte banquaire', '2015-02-28 21:12:25'),
(61, 'ADHERENT_BANK_ACCOUNT', 1, '', 'chaine', 0, 'ID du Compte banquaire utilise', '2015-02-28 21:12:25'),
(62, 'ADHERENT_BANK_CATEGORIE', 1, '', 'chaine', 0, 'ID de la catégorie banquaire des cotisations', '2015-02-28 21:12:25'),
(63, 'ADHERENT_ETIQUETTE_TYPE', 1, 'L7163', 'chaine', 0, 'Type of address sheets', '2015-02-28 21:12:25'),
(64, 'ADHERENT_ETIQUETTE_TEXT', 1, '%FULLNAME%\n%ADDRESS%\n%ZIP% %TOWN%\n%COUNTRY%', 'texte', 0, 'Text to print on member address sheets', '2015-02-28 21:12:25'),
(67, 'COMMANDE_SUPPLIER_ADDON_PDF', 1, 'muscadet', 'chaine', 0, 'Nom du gestionnaire de generation des bons de commande en PDF', '2015-02-28 21:13:10'),
(68, 'COMMANDE_SUPPLIER_ADDON_NUMBER', 1, 'mod_commande_fournisseur_muguet', 'chaine', 0, 'Nom du gestionnaire de numerotation des commandes fournisseur', '2015-02-28 21:13:10'),
(69, 'INVOICE_SUPPLIER_ADDON_PDF', 1, 'canelle', 'chaine', 0, 'Nom du gestionnaire de generation des factures fournisseur en PDF', '2015-02-28 21:13:10'),
(70, 'INVOICE_SUPPLIER_ADDON_NUMBER', 1, 'mod_facture_fournisseur_cactus', 'chaine', 0, 'Nom du gestionnaire de numerotation des factures fournisseur', '2015-02-28 21:13:10'),
(72, 'MAIN_MODULE_PRODUCT', 1, '1', NULL, 0, NULL, '2015-02-28 21:13:15'),
(73, 'PRODUCT_CODEPRODUCT_ADDON', 1, 'mod_codeproduct_leopard', 'chaine', 0, 'Module to control product codes', '2015-02-28 21:13:15'),
(82, 'MAIN_MODULE_SERVICE', 1, '1', NULL, 0, NULL, '2015-02-28 21:13:21'),
(83, 'MAIN_MODULE_PROJET', 1, '1', NULL, 0, NULL, '2015-02-28 21:13:34'),
(87, 'PROJECT_TASK_ADDON_PDF', 1, '', 'chaine', 0, 'Name of PDF/ODT tasks manager class', '2015-02-28 21:13:34'),
(88, 'PROJECT_TASK_ADDON', 1, 'mod_task_simple', 'chaine', 0, 'Name of Numbering Rule task manager class', '2015-02-28 21:13:34'),
(89, 'PROJECT_TASK_ADDON_PDF_ODT_PATH', 1, 'DOL_DATA_ROOT/doctemplates/tasks', 'chaine', 0, NULL, '2015-02-28 21:13:34'),
(95, 'MAIN_INFO_SOCIETE_LOGO', 1, 'logo 1.jpeg', 'chaine', 0, '', '2015-02-28 21:19:20'),
(96, 'MAIN_INFO_SOCIETE_LOGO_SMALL', 1, 'logo 1_small.jpeg', 'chaine', 0, '', '2015-02-28 21:19:20'),
(97, 'MAIN_INFO_SOCIETE_LOGO_MINI', 1, 'logo 1_mini.jpeg', 'chaine', 0, '', '2015-02-28 21:19:20'),
(117, 'MAIN_MODULE_PROPALE', 1, '1', NULL, 0, NULL, '2015-02-28 21:20:55'),
(118, 'PROPALE_ADDON_PDF', 1, 'azur', 'chaine', 0, 'Nom du gestionnaire de generation des propales en PDF', '2015-02-28 21:20:55'),
(119, 'PROPALE_ADDON', 1, 'mod_propale_marbre', 'chaine', 0, 'Nom du gestionnaire de numerotation des propales', '2015-02-28 21:20:55'),
(120, 'PROPALE_VALIDITY_DURATION', 1, '15', 'chaine', 0, 'Duration of validity of business proposals', '2015-02-28 21:20:55'),
(121, 'PROPALE_ADDON_PDF_ODT_PATH', 1, 'DOL_DATA_ROOT/doctemplates/proposals', 'chaine', 0, NULL, '2015-02-28 21:20:55'),
(139, 'MAIN_MODULE_AGENDA', 1, '1', NULL, 0, NULL, '2015-03-04 20:27:17'),
(140, 'MAIN_AGENDA_ACTIONAUTO_COMPANY_SENTBYMAIL', 1, '1', 'chaine', 0, NULL, '2015-03-04 20:27:17'),
(141, 'MAIN_AGENDA_ACTIONAUTO_COMPANY_CREATE', 1, '1', 'chaine', 0, NULL, '2015-03-04 20:27:17'),
(142, 'MAIN_AGENDA_ACTIONAUTO_CONTRACT_VALIDATE', 1, '1', 'chaine', 0, NULL, '2015-03-04 20:27:17'),
(143, 'MAIN_AGENDA_ACTIONAUTO_PROPAL_VALIDATE', 1, '1', 'chaine', 0, NULL, '2015-03-04 20:27:17'),
(144, 'MAIN_AGENDA_ACTIONAUTO_PROPAL_SENTBYMAIL', 1, '1', 'chaine', 0, NULL, '2015-03-04 20:27:17'),
(145, 'MAIN_AGENDA_ACTIONAUTO_ORDER_VALIDATE', 1, '1', 'chaine', 0, NULL, '2015-03-04 20:27:17'),
(146, 'MAIN_AGENDA_ACTIONAUTO_ORDER_SENTBYMAIL', 1, '1', 'chaine', 0, NULL, '2015-03-04 20:27:17'),
(147, 'MAIN_AGENDA_ACTIONAUTO_BILL_VALIDATE', 1, '1', 'chaine', 0, NULL, '2015-03-04 20:27:17'),
(148, 'MAIN_AGENDA_ACTIONAUTO_BILL_PAYED', 1, '1', 'chaine', 0, NULL, '2015-03-04 20:27:17'),
(149, 'MAIN_AGENDA_ACTIONAUTO_BILL_CANCEL', 1, '1', 'chaine', 0, NULL, '2015-03-04 20:27:17'),
(150, 'MAIN_AGENDA_ACTIONAUTO_BILL_SENTBYMAIL', 1, '1', 'chaine', 0, NULL, '2015-03-04 20:27:17'),
(151, 'MAIN_AGENDA_ACTIONAUTO_ORDER_SUPPLIER_VALIDATE', 1, '1', 'chaine', 0, NULL, '2015-03-04 20:27:17'),
(152, 'MAIN_AGENDA_ACTIONAUTO_BILL_SUPPLIER_VALIDATE', 1, '1', 'chaine', 0, NULL, '2015-03-04 20:27:17'),
(153, 'MAIN_AGENDA_ACTIONAUTO_SHIPPING_VALIDATE', 1, '1', 'chaine', 0, NULL, '2015-03-04 20:27:17'),
(154, 'MAIN_AGENDA_ACTIONAUTO_SHIPPING_SENTBYMAIL', 1, '1', 'chaine', 0, NULL, '2015-03-04 20:27:17'),
(155, 'MAIN_AGENDA_ACTIONAUTO_BILL_UNVALIDATE', 1, '1', 'chaine', 0, NULL, '2015-03-04 20:27:17'),
(157, 'FCKEDITOR_ENABLE_SOCIETE', 1, '1', 'yesno', 0, 'WYSIWIG for description and note (except products/services)', '2015-03-08 19:12:49'),
(158, 'FCKEDITOR_ENABLE_PRODUCTDESC', 1, '1', 'yesno', 0, 'WYSIWIG for products/services description and note', '2015-03-08 19:12:49'),
(159, 'FCKEDITOR_ENABLE_MAILING', 1, '1', 'yesno', 0, 'WYSIWIG for mass emailings', '2015-03-08 19:12:49'),
(160, 'FCKEDITOR_ENABLE_DETAILS', 1, '1', 'yesno', 0, 'WYSIWIG for products details lines for all entities', '2015-03-08 19:12:49'),
(161, 'FCKEDITOR_ENABLE_USERSIGN', 1, '1', 'yesno', 0, 'WYSIWIG for user signature', '2015-03-08 19:12:49'),
(162, 'FCKEDITOR_ENABLE_MAIL', 1, '1', 'yesno', 0, 'WYSIWIG for products details lines for all entities', '2015-03-08 19:12:49'),
(164, 'CATEGORIE_RECURSIV_ADD', 1, '', 'yesno', 0, 'Affect parent categories', '2015-03-08 19:13:09'),
(167, 'MAIN_MODULE_WORKFLOW', 1, '1', NULL, 0, NULL, '2015-03-08 19:14:14'),
(168, 'MAIN_INFO_SOCIETE_COUNTRY', 1, '4:ES:España', 'chaine', 0, '', '2015-03-14 20:02:36'),
(169, 'MAIN_INFO_SOCIETE_NOM', 1, 'Opendoor', 'chaine', 0, '', '2015-03-14 20:02:36'),
(170, 'MAIN_INFO_SOCIETE_TOWN', 1, 'Palma de Mallorca', 'chaine', 0, '', '2015-03-14 20:02:36'),
(171, 'MAIN_INFO_SOCIETE_STATE', 1, '248', 'chaine', 0, '', '2015-03-14 20:02:36'),
(172, 'MAIN_MONNAIE', 1, 'EUR', 'chaine', 0, '', '2015-03-14 20:02:36'),
(173, 'MAIN_INFO_SOCIETE_FORME_JURIDIQUE', 1, '0', 'chaine', 0, '', '2015-03-14 20:02:36'),
(174, 'SOCIETE_FISCAL_MONTH_START', 1, '0', 'chaine', 0, '', '2015-03-14 20:02:36'),
(175, 'FACTURE_TVAOPTION', 1, '1', 'chaine', 0, '', '2015-03-14 20:02:36'),
(176, 'FACTURE_LOCAL_TAX2_OPTION', 1, 'localtax2on', 'chaine', 0, '', '2015-03-14 20:02:36'),
(178, 'CRON_KEY', 0, '', 'chaine', 0, 'CRON KEY', '2015-03-16 22:37:47'),
(180, 'MAIN_APPLICATION_TITLE', 1, 'opendoorsoft', 'chaine', 1, 'Nombre de la empresa', '2015-03-16 22:43:53'),
(182, 'PROJECT_ADDON_PDF_ODT_PATH', 1, 'DOL_DATA_ROOT/doctemplates/projects', 'chaine', 0, '', '2015-04-09 19:52:20'),
(191, 'SOCIETE_CODECOMPTA_ADDON', 1, 'mod_codecompta_aquarium', 'chaine', 0, '', '2015-04-21 08:55:11'),
(193, 'SOCIETE_IDPROF1_UNIQUE', 1, '1', 'chaine', 0, '', '2015-04-25 11:31:12'),
(194, 'SOCIETE_IDPROF2_UNIQUE', 1, '1', 'chaine', 0, '', '2015-04-25 11:31:21'),
(197, 'FICHEINTER_ADDON_PDF', 1, 'soleil', 'chaine', 0, NULL, '2015-04-25 12:03:28'),
(198, 'FICHEINTER_ADDON', 1, 'pacific', 'chaine', 0, NULL, '2015-04-25 12:03:28'),
(199, 'MAIN_MODULE_SOCIETE', 1, '1', NULL, 0, NULL, '2015-04-25 12:03:28'),
(200, 'SOCIETE_CODECLIENT_ADDON', 1, 'mod_codeclient_monkey', 'chaine', 0, '', '2015-04-25 17:19:21'),
(201, 'SOCIETE_IDPROF1_MANDATORY', 1, '1', 'chaine', 0, '', '2015-04-26 21:06:58'),
(203, 'SOCIETE_ADD_REF_IN_LIST', 1, '1', 'yesno', 0, '', '2015-05-12 19:13:56'),
(204, 'COMPANY_USE_SEARCH_TO_SELECT', 1, '2', 'chaine', 0, '', '2015-05-12 19:22:30'),
(207, 'PROJECT_UNIVERSAL_MASK', 1, '{mm}{yy}{000000@1}', 'chaine', 0, '', '2015-05-12 21:15:25'),
(208, 'PROJECT_ADDON', 1, 'mod_project_universal', 'chaine', 0, '', '2015-05-12 21:15:28'),
(226, 'MAIN_LANG_DEFAULT', 1, 'es_ES', 'chaine', 0, '', '2015-06-14 16:41:50'),
(227, 'MAIN_MULTILANGS', 1, '0', 'chaine', 0, '', '2015-06-14 16:41:50'),
(228, 'MAIN_SIZE_LISTE_LIMIT', 1, '25', 'chaine', 0, '', '2015-06-14 16:41:50'),
(229, 'MAIN_DISABLE_JAVASCRIPT', 1, '0', 'chaine', 0, '', '2015-06-14 16:41:50'),
(230, 'MAIN_BUTTON_HIDE_UNAUTHORIZED', 1, '1', 'chaine', 0, '', '2015-06-14 16:41:50'),
(231, 'MAIN_START_WEEK', 1, '1', 'chaine', 0, '', '2015-06-14 16:41:50'),
(232, 'MAIN_SHOW_LOGO', 1, '1', 'chaine', 0, '', '2015-06-14 16:41:50'),
(233, 'MAIN_FIRSTNAME_NAME_POSITION', 1, '0', 'chaine', 0, '', '2015-06-14 16:41:50'),
(234, 'MAIN_THEME', 1, 'amarok', 'chaine', 0, '', '2015-06-14 16:41:50'),
(235, 'MAIN_SEARCHFORM_CONTACT', 1, '0', 'chaine', 0, '', '2015-06-14 16:41:50'),
(236, 'MAIN_SEARCHFORM_SOCIETE', 1, '1', 'chaine', 0, '', '2015-06-14 16:41:50'),
(237, 'MAIN_SEARCHFORM_PRODUITSERVICE', 1, '1', 'chaine', 0, '', '2015-06-14 16:41:50'),
(238, 'MAIN_SEARCHFORM_PRODUITSERVICE_SUPPLIER', 1, '0', 'chaine', 0, '', '2015-06-14 16:41:50'),
(239, 'MAIN_SEARCHFORM_ADHERENT', 1, '1', 'chaine', 0, '', '2015-06-14 16:41:50'),
(240, 'MAIN_HELPCENTER_DISABLELINK', 0, '1', 'chaine', 0, '', '2015-06-14 16:41:50'),
(241, 'MAIN_HOME', 1, 'Bienvenido a Opendoor Soft', 'chaine', 0, '', '2015-06-14 16:41:50'),
(242, 'MAIN_HELP_DISABLELINK', 0, '1', 'chaine', 0, '', '2015-06-14 16:41:50'),
(243, 'MAIN_DELAY_ACTIONS_TODO', 1, '7', 'chaine', 0, '', '2015-06-14 16:44:11'),
(244, 'MAIN_DELAY_PROPALS_TO_CLOSE', 1, '31', 'chaine', 0, '', '2015-06-14 16:44:11'),
(245, 'MAIN_DELAY_PROPALS_TO_BILL', 1, '7', 'chaine', 0, '', '2015-06-14 16:44:11'),
(246, 'MAIN_DELAY_CUSTOMER_BILLS_UNPAYED', 1, '31', 'chaine', 0, '', '2015-06-14 16:44:11'),
(247, 'MAIN_DELAY_NOT_ACTIVATED_SERVICES', 1, '0', 'chaine', 0, '', '2015-06-14 16:44:11'),
(248, 'MAIN_DELAY_RUNNING_SERVICES', 1, '0', 'chaine', 0, '', '2015-06-14 16:44:11'),
(249, 'MAIN_DISABLE_METEO', 1, '1', 'chaine', 0, '', '2015-06-14 16:44:11'),
(250, 'MAIN_DISABLE_ALL_MAILS', 1, '0', 'chaine', 0, '', '2015-06-14 16:45:38'),
(251, 'MAIN_MAIL_SENDMODE', 0, 'mail', 'chaine', 0, '', '2015-06-14 16:45:38'),
(252, 'MAIN_MAIL_EMAIL_FROM', 1, 'info@opendoorsoft.com', 'chaine', 0, '', '2015-06-14 16:45:38');

-- --------------------------------------------------------

--
-- Table structure for table `llx_contrat`
--

CREATE TABLE IF NOT EXISTS `llx_contrat` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(30) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `date_contrat` datetime DEFAULT NULL,
  `statut` smallint(6) DEFAULT '0',
  `mise_en_service` datetime DEFAULT NULL,
  `fin_validite` datetime DEFAULT NULL,
  `date_cloture` datetime DEFAULT NULL,
  `fk_soc` int(11) NOT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `fk_commercial_signature` int(11) NOT NULL,
  `fk_commercial_suivi` int(11) NOT NULL,
  `fk_user_author` int(11) NOT NULL DEFAULT '0',
  `fk_user_mise_en_service` int(11) DEFAULT NULL,
  `fk_user_cloture` int(11) DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  `import_key` varchar(14) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_contrat_ref` (`ref`,`entity`),
  KEY `idx_contrat_fk_soc` (`fk_soc`),
  KEY `idx_contrat_fk_user_author` (`fk_user_author`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_contratdet`
--

CREATE TABLE IF NOT EXISTS `llx_contratdet` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_contrat` int(11) NOT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `statut` smallint(6) DEFAULT '0',
  `label` text,
  `description` text,
  `fk_remise_except` int(11) DEFAULT NULL,
  `date_commande` datetime DEFAULT NULL,
  `date_ouverture_prevue` datetime DEFAULT NULL,
  `date_ouverture` datetime DEFAULT NULL,
  `date_fin_validite` datetime DEFAULT NULL,
  `date_cloture` datetime DEFAULT NULL,
  `tva_tx` double(6,3) DEFAULT '0.000',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) DEFAULT NULL,
  `qty` double NOT NULL,
  `remise_percent` double DEFAULT '0',
  `subprice` double(24,8) DEFAULT '0.00000000',
  `price_ht` double DEFAULT NULL,
  `remise` double DEFAULT '0',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_tva` double(24,8) DEFAULT '0.00000000',
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `product_type` int(11) DEFAULT '1',
  `info_bits` int(11) DEFAULT '0',
  `buy_price_ht` double(24,8) DEFAULT NULL,
  `fk_product_fournisseur_price` int(11) DEFAULT NULL,
  `fk_user_author` int(11) NOT NULL DEFAULT '0',
  `fk_user_ouverture` int(11) DEFAULT NULL,
  `fk_user_cloture` int(11) DEFAULT NULL,
  `commentaire` text,
  PRIMARY KEY (`rowid`),
  KEY `idx_contratdet_fk_contrat` (`fk_contrat`),
  KEY `idx_contratdet_fk_product` (`fk_product`),
  KEY `idx_contratdet_date_ouverture_prevue` (`date_ouverture_prevue`),
  KEY `idx_contratdet_date_ouverture` (`date_ouverture`),
  KEY `idx_contratdet_date_fin_validite` (`date_fin_validite`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_contratdet_log`
--

CREATE TABLE IF NOT EXISTS `llx_contratdet_log` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_contratdet` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `statut` smallint(6) NOT NULL,
  `fk_user_author` int(11) NOT NULL,
  `commentaire` text,
  PRIMARY KEY (`rowid`),
  KEY `idx_contratdet_log_fk_contratdet` (`fk_contratdet`),
  KEY `idx_contratdet_log_date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_contrat_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_contrat_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_contrat_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_cotisation`
--

CREATE TABLE IF NOT EXISTS `llx_cotisation` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `fk_adherent` int(11) DEFAULT NULL,
  `dateadh` datetime DEFAULT NULL,
  `datef` date DEFAULT NULL,
  `cotisation` double DEFAULT NULL,
  `fk_bank` int(11) DEFAULT NULL,
  `note` text,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_cotisation` (`fk_adherent`,`dateadh`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_cronjob`
--

CREATE TABLE IF NOT EXISTS `llx_cronjob` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `jobtype` varchar(10) NOT NULL,
  `label` text NOT NULL,
  `command` varchar(255) DEFAULT NULL,
  `classesname` varchar(255) DEFAULT NULL,
  `objectname` varchar(255) DEFAULT NULL,
  `methodename` varchar(255) DEFAULT NULL,
  `params` text NOT NULL,
  `md5params` varchar(32) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `priority` int(11) DEFAULT '0',
  `datelastrun` datetime DEFAULT NULL,
  `datenextrun` datetime DEFAULT NULL,
  `datestart` datetime DEFAULT NULL,
  `dateend` datetime DEFAULT NULL,
  `datelastresult` datetime DEFAULT NULL,
  `lastresult` text,
  `lastoutput` text,
  `unitfrequency` int(11) NOT NULL DEFAULT '0',
  `frequency` int(11) NOT NULL DEFAULT '0',
  `nbrun` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_mod` int(11) DEFAULT NULL,
  `note` text,
  `libname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_actioncomm`
--

CREATE TABLE IF NOT EXISTS `llx_c_actioncomm` (
  `id` int(11) NOT NULL,
  `code` varchar(12) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'system',
  `libelle` varchar(48) NOT NULL,
  `module` varchar(16) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `todo` tinyint(4) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_c_actioncomm` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `llx_c_actioncomm`
--

INSERT INTO `llx_c_actioncomm` (`id`, `code`, `type`, `libelle`, `module`, `active`, `todo`, `position`) VALUES
(1, 'AC_TEL', 'system', 'Phone call', NULL, 1, NULL, 2),
(2, 'AC_FAX', 'system', 'Send Fax', NULL, 1, NULL, 3),
(3, 'AC_PROP', 'systemauto', 'Send commercial proposal by email', 'propal', 0, NULL, 10),
(4, 'AC_EMAIL', 'system', 'Send Email', NULL, 1, NULL, 4),
(5, 'AC_RDV', 'system', 'Rendez-vous', NULL, 1, NULL, 1),
(8, 'AC_COM', 'systemauto', 'Send customer order by email', 'order', 0, NULL, 8),
(9, 'AC_FAC', 'systemauto', 'Send customer invoice by email', 'invoice', 0, NULL, 6),
(10, 'AC_SHIP', 'systemauto', 'Send shipping by email', 'shipping', 0, NULL, 11),
(30, 'AC_SUP_ORD', 'systemauto', 'Send supplier order by email', 'order_supplier', 0, NULL, 9),
(31, 'AC_SUP_INV', 'systemauto', 'Send supplier invoice by email', 'invoice_supplier', 0, NULL, 7),
(40, 'AC_OTH_AUTO', 'systemauto', 'Other (automatically inserted events)', NULL, 1, NULL, 20),
(50, 'AC_OTH', 'system', 'Other (manually inserted events)', NULL, 1, NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_action_trigger`
--

CREATE TABLE IF NOT EXISTS `llx_c_action_trigger` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `label` varchar(128) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `elementtype` varchar(16) NOT NULL,
  `rang` int(11) DEFAULT '0',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_action_trigger_code` (`code`),
  KEY `idx_action_trigger_rang` (`rang`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `llx_c_action_trigger`
--

INSERT INTO `llx_c_action_trigger` (`rowid`, `code`, `label`, `description`, `elementtype`, `rang`) VALUES
(1, 'FICHINTER_VALIDATE', 'Intervention validated', 'Executed when a intervention is validated', 'ficheinter', 19),
(2, 'BILL_VALIDATE', 'Customer invoice validated', 'Executed when a customer invoice is approved', 'facture', 6),
(3, 'ORDER_SUPPLIER_APPROVE', 'Supplier order request approved', 'Executed when a supplier order is approved', 'order_supplier', 12),
(4, 'ORDER_SUPPLIER_REFUSE', 'Supplier order request refused', 'Executed when a supplier order is refused', 'order_supplier', 13),
(5, 'ORDER_VALIDATE', 'Customer order validate', 'Executed when a customer order is validated', 'commande', 4),
(6, 'PROPAL_VALIDATE', 'Customer proposal validated', 'Executed when a commercial proposal is validated', 'propal', 2),
(9, 'COMPANY_SENTBYMAIL', 'Mails sent from third party card', 'Executed when you send email from third party card', 'societe', 1),
(10, 'COMPANY_CREATE', 'Third party created', 'Executed when a third party is created', 'societe', 1),
(11, 'CONTRACT_VALIDATE', 'Contract validated', 'Executed when a contract is validated', 'contrat', 18),
(12, 'PROPAL_SENTBYMAIL', 'Commercial proposal sent by mail', 'Executed when a commercial proposal is sent by mail', 'propal', 3),
(13, 'ORDER_SENTBYMAIL', 'Customer order sent by mail', 'Executed when a customer order is sent by mail ', 'commande', 5),
(14, 'BILL_PAYED', 'Customer invoice payed', 'Executed when a customer invoice is payed', 'facture', 7),
(15, 'BILL_CANCEL', 'Customer invoice canceled', 'Executed when a customer invoice is conceled', 'facture', 8),
(16, 'BILL_SENTBYMAIL', 'Customer invoice sent by mail', 'Executed when a customer invoice is sent by mail', 'facture', 9),
(17, 'ORDER_SUPPLIER_VALIDATE', 'Supplier order validated', 'Executed when a supplier order is validated', 'order_supplier', 11),
(18, 'ORDER_SUPPLIER_SENTBYMAIL', 'Supplier order sent by mail', 'Executed when a supplier order is sent by mail', 'order_supplier', 14),
(19, 'BILL_SUPPLIER_VALIDATE', 'Supplier invoice validated', 'Executed when a supplier invoice is validated', 'invoice_supplier', 15),
(20, 'BILL_SUPPLIER_PAYED', 'Supplier invoice payed', 'Executed when a supplier invoice is payed', 'invoice_supplier', 16),
(21, 'BILL_SUPPLIER_SENTBYMAIL', 'Supplier invoice sent by mail', 'Executed when a supplier invoice is sent by mail', 'invoice_supplier', 17),
(22, 'SHIPPING_VALIDATE', 'Shipping validated', 'Executed when a shipping is validated', 'shipping', 20),
(23, 'SHIPPING_SENTBYMAIL', 'Shipping sent by mail', 'Executed when a shipping is sent by mail', 'shipping', 21),
(24, 'MEMBER_VALIDATE', 'Member validated', 'Executed when a member is validated', 'member', 22),
(25, 'MEMBER_SUBSCRIPTION', 'Member subscribed', 'Executed when a member is subscribed', 'member', 23),
(26, 'MEMBER_RESILIATE', 'Member resiliated', 'Executed when a member is resiliated', 'member', 24),
(27, 'MEMBER_DELETE', 'Member deleted', 'Executed when a member is deleted', 'member', 25),
(28, 'BILL_UNVALIDATE', 'Customer invoice unvalidated', 'Executed when a customer invoice status set back to draft', 'facture', 10),
(29, 'FICHINTER_SENTBYMAIL', 'Intervention sent by mail', 'Executed when a intervention is sent by mail', 'ficheinter', 29),
(30, 'PROJECT_CREATE', 'Project creation', 'Executed when a project is created', 'project', 30),
(31, 'PROPAL_CLOSE_SIGNED', 'Customer proposal closed signed', 'Executed when a customer proposal is closed signed', 'propal', 31),
(32, 'PROPAL_CLOSE_REFUSED', 'Customer proposal closed refused', 'Executed when a customer proposal is closed refused', 'propal', 32),
(33, 'BILL_SUPPLIER_CANCELED', 'Supplier invoice cancelled', 'Executed when a supplier invoice is cancelled', 'invoice_supplier', 33),
(34, 'MEMBER_MODIFY', 'Member modified', 'Executed when a member is modified', 'member', 34),
(35, 'TASK_CREATE', 'Task created', 'Executed when a project task is created', 'project', 35),
(36, 'TASK_MODIFY', 'Task modified', 'Executed when a project task is modified', 'project', 36),
(37, 'TASK_DELETE', 'Task deleted', 'Executed when a project task is deleted', 'project', 37);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_availability`
--

CREATE TABLE IF NOT EXISTS `llx_c_availability` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(30) NOT NULL,
  `label` varchar(60) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_availability` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `llx_c_availability`
--

INSERT INTO `llx_c_availability` (`rowid`, `code`, `label`, `active`) VALUES
(1, 'AV_NOW', 'Immediate', 1),
(2, 'AV_1W', '1 week', 1),
(3, 'AV_2W', '2 weeks', 1),
(4, 'AV_3W', '3 weeks', 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_barcode_type`
--

CREATE TABLE IF NOT EXISTS `llx_c_barcode_type` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(16) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `libelle` varchar(50) NOT NULL,
  `coder` varchar(16) NOT NULL,
  `example` varchar(16) NOT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_barcode_type` (`code`,`entity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_chargesociales`
--

CREATE TABLE IF NOT EXISTS `llx_c_chargesociales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(80) DEFAULT NULL,
  `deductible` smallint(6) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `code` varchar(12) NOT NULL,
  `accountancy_code` varchar(24) DEFAULT NULL,
  `fk_pays` int(11) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=231 ;

--
-- Dumping data for table `llx_c_chargesociales`
--

INSERT INTO `llx_c_chargesociales` (`id`, `libelle`, `deductible`, `active`, `code`, `accountancy_code`, `fk_pays`, `module`) VALUES
(1, 'Allocations familiales', 1, 1, 'TAXFAM', NULL, 1, NULL),
(2, 'CSG Deductible', 1, 1, 'TAXCSGD', NULL, 1, NULL),
(3, 'CSG/CRDS NON Deductible', 0, 1, 'TAXCSGND', NULL, 1, NULL),
(10, 'Taxe apprentissage', 0, 1, 'TAXAPP', NULL, 1, NULL),
(11, 'Taxe professionnelle', 0, 1, 'TAXPRO', NULL, 1, NULL),
(12, 'Cotisation fonciere des entreprises', 0, 1, 'TAXCFE', NULL, 1, NULL),
(13, 'Cotisation sur la valeur ajoutee des entreprises', 0, 1, 'TAXCVAE', NULL, 1, NULL),
(20, 'Impots locaux/fonciers', 0, 1, 'TAXFON', NULL, 1, NULL),
(25, 'Impots revenus', 0, 1, 'TAXREV', NULL, 1, NULL),
(30, 'Assurance Sante', 0, 1, 'TAXSECU', NULL, 1, NULL),
(40, 'Mutuelle', 0, 1, 'TAXMUT', NULL, 1, NULL),
(50, 'Assurance vieillesse', 0, 1, 'TAXRET', NULL, 1, NULL),
(60, 'Assurance Chomage', 0, 1, 'TAXCHOM', NULL, 1, NULL),
(201, 'ONSS', 1, 1, 'TAXBEONSS', NULL, 2, NULL),
(210, 'Precompte professionnel', 1, 1, 'TAXBEPREPRO', NULL, 2, NULL),
(220, 'Prime existence', 1, 1, 'TAXBEPRIEXI', NULL, 2, NULL),
(230, 'Precompte immobilier', 1, 1, 'TAXBEPREIMMO', NULL, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_civilite`
--

CREATE TABLE IF NOT EXISTS `llx_c_civilite` (
  `rowid` int(11) NOT NULL,
  `code` varchar(6) NOT NULL,
  `civilite` varchar(50) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_civilite` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `llx_c_civilite`
--

INSERT INTO `llx_c_civilite` (`rowid`, `code`, `civilite`, `active`, `module`) VALUES
(1, 'MME', 'Madame', 1, NULL),
(3, 'MR', 'Monsieur', 1, NULL),
(5, 'MLE', 'Mademoiselle', 1, NULL),
(7, 'MTRE', 'Maître', 1, NULL),
(8, 'DR', 'Docteur', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_currencies`
--

CREATE TABLE IF NOT EXISTS `llx_c_currencies` (
  `code_iso` varchar(3) NOT NULL,
  `label` varchar(64) NOT NULL,
  `unicode` varchar(32) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`code_iso`),
  UNIQUE KEY `uk_c_currencies_code_iso` (`code_iso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `llx_c_currencies`
--

INSERT INTO `llx_c_currencies` (`code_iso`, `label`, `unicode`, `active`) VALUES
('AED', 'United Arab Emirates Dirham', NULL, 1),
('AFN', 'Afghanistan Afghani', '[1547]', 1),
('ALL', 'Albania Lek', '[76,101,107]', 1),
('ANG', 'Netherlands Antilles Guilder', '[402]', 1),
('ARP', 'Pesos argentins', NULL, 0),
('ARS', 'Argentino Peso', '[36]', 1),
('ATS', 'Shiliing autrichiens', NULL, 0),
('AUD', 'Australia Dollar', '[36]', 1),
('AWG', 'Aruba Guilder', '[402]', 1),
('AZN', 'Azerbaijan New Manat', '[1084,1072,1085]', 1),
('BAM', 'Bosnia and Herzegovina Convertible Marka', '[75,77]', 1),
('BBD', 'Barbados Dollar', '[36]', 1),
('BEF', 'Francs belges', NULL, 0),
('BGN', 'Bulgaria Lev', '[1083,1074]', 1),
('BMD', 'Bermuda Dollar', '[36]', 1),
('BND', 'Brunei Darussalam Dollar', '[36]', 1),
('BOB', 'Bolivia Boliviano', '[36,98]', 1),
('BRL', 'Brazil Real', '[82,36]', 1),
('BSD', 'Bahamas Dollar', '[36]', 1),
('BWP', 'Botswana Pula', '[80]', 1),
('BYR', 'Belarus Ruble', '[112,46]', 1),
('BZD', 'Belize Dollar', '[66,90,36]', 1),
('CAD', 'Canada Dollar', '[36]', 1),
('CHF', 'Switzerland Franc', '[67,72,70]', 1),
('CLP', 'Chile Peso', '[36]', 1),
('CNY', 'China Yuan Renminbi', '[165]', 1),
('COP', 'Colombia Peso', '[36]', 1),
('CRC', 'Costa Rica Colon', '[8353]', 1),
('CUP', 'Cuba Peso', '[8369]', 1),
('CZK', 'Czech Republic Koruna', '[75,269]', 1),
('DEM', 'Deutsch mark', NULL, 0),
('DKK', 'Denmark Krone', '[107,114]', 1),
('DOP', 'Dominican Republic Peso', '[82,68,36]', 1),
('DZD', 'Algeria Dinar', NULL, 1),
('EEK', 'Estonia Kroon', '[107,114]', 1),
('EGP', 'Egypt Pound', '[163]', 1),
('ESP', 'Pesete', NULL, 0),
('EUR', 'Euro Member Countries', '[8364]', 1),
('FIM', 'Mark finlandais', NULL, 0),
('FJD', 'Fiji Dollar', '[36]', 1),
('FKP', 'Falkland Islands (Malvinas) Pound', '[163]', 1),
('FRF', 'Francs francais', NULL, 0),
('GBP', 'United Kingdom Pound', '[163]', 1),
('GGP', 'Guernsey Pound', '[163]', 1),
('GHC', 'Ghana Cedis', '[162]', 1),
('GIP', 'Gibraltar Pound', '[163]', 1),
('GRD', 'Drachme (grece)', NULL, 0),
('GTQ', 'Guatemala Quetzal', '[81]', 1),
('GYD', 'Guyana Dollar', '[36]', 1),
('HKD', 'Hong Kong Dollar', '[36]', 1),
('HNL', 'Honduras Lempira', '[76]', 1),
('HRK', 'Croatia Kuna', '[107,110]', 1),
('HUF', 'Hungary Forint', '[70,116]', 1),
('IDR', 'Indonesia Rupiah', '[82,112]', 1),
('IEP', 'Livres irlandaises', NULL, 0),
('ILS', 'Israel Shekel', '[8362]', 1),
('IMP', 'Isle of Man Pound', '[163]', 1),
('INR', 'India Rupee', NULL, 1),
('IRR', 'Iran Rial', '[65020]', 1),
('ISK', 'Iceland Krona', '[107,114]', 1),
('ITL', 'Lires', NULL, 0),
('JEP', 'Jersey Pound', '[163]', 1),
('JMD', 'Jamaica Dollar', '[74,36]', 1),
('JPY', 'Japan Yen', '[165]', 1),
('KES', 'Kenya Shilling', NULL, 1),
('KGS', 'Kyrgyzstan Som', '[1083,1074]', 1),
('KHR', 'Cambodia Riel', '[6107]', 1),
('KPW', 'Korea (North) Won', '[8361]', 1),
('KRW', 'Korea (South) Won', '[8361]', 1),
('KYD', 'Cayman Islands Dollar', '[36]', 1),
('KZT', 'Kazakhstan Tenge', '[1083,1074]', 1),
('LAK', 'Laos Kip', '[8365]', 1),
('LBP', 'Lebanon Pound', '[163]', 1),
('LKR', 'Sri Lanka Rupee', '[8360]', 1),
('LRD', 'Liberia Dollar', '[36]', 1),
('LTL', 'Lithuania Litas', '[76,116]', 1),
('LUF', 'Francs luxembourgeois', NULL, 0),
('LVL', 'Latvia Lat', '[76,115]', 1),
('MAD', 'Morocco Dirham', NULL, 1),
('MKD', 'Macedonia Denar', '[1076,1077,1085]', 1),
('MNT', 'Mongolia Tughrik', '[8366]', 1),
('MRO', 'Mauritania Ouguiya', NULL, 1),
('MUR', 'Mauritius Rupee', '[8360]', 1),
('MXN', 'Mexico Peso', '[36]', 1),
('MXP', 'Pesos Mexicans', NULL, 0),
('MYR', 'Malaysia Ringgit', '[82,77]', 1),
('MZN', 'Mozambique Metical', '[77,84]', 1),
('NAD', 'Namibia Dollar', '[36]', 1),
('NGN', 'Nigeria Naira', '[8358]', 1),
('NIO', 'Nicaragua Cordoba', '[67,36]', 1),
('NLG', 'Florins', NULL, 0),
('NOK', 'Norway Krone', '[107,114]', 1),
('NPR', 'Nepal Rupee', '[8360]', 1),
('NZD', 'New Zealand Dollar', '[36]', 1),
('OMR', 'Oman Rial', '[65020]', 1),
('PAB', 'Panama Balboa', '[66,47,46]', 1),
('PEN', 'Peru Nuevo Sol', '[83,47,46]', 1),
('PHP', 'Philippines Peso', '[8369]', 1),
('PKR', 'Pakistan Rupee', '[8360]', 1),
('PLN', 'Poland Zloty', '[122,322]', 1),
('PTE', 'Escudos', NULL, 0),
('PYG', 'Paraguay Guarani', '[71,115]', 1),
('QAR', 'Qatar Riyal', '[65020]', 1),
('RON', 'Romania New Leu', '[108,101,105]', 1),
('RSD', 'Serbia Dinar', '[1044,1080,1085,46]', 1),
('RUB', 'Russia Ruble', '[1088,1091,1073]', 1),
('SAR', 'Saudi Arabia Riyal', '[65020]', 1),
('SBD', 'Solomon Islands Dollar', '[36]', 1),
('SCR', 'Seychelles Rupee', '[8360]', 1),
('SEK', 'Sweden Krona', '[107,114]', 1),
('SGD', 'Singapore Dollar', '[36]', 1),
('SHP', 'Saint Helena Pound', '[163]', 1),
('SKK', 'Couronnes slovaques', NULL, 0),
('SOS', 'Somalia Shilling', '[83]', 1),
('SRD', 'Suriname Dollar', '[36]', 1),
('SUR', 'Rouble', NULL, 0),
('SVC', 'El Salvador Colon', '[36]', 1),
('SYP', 'Syria Pound', '[163]', 1),
('THB', 'Thailand Baht', '[3647]', 1),
('TND', 'Tunisia Dinar', NULL, 1),
('TRL', 'Turkey Lira', '[84,76]', 1),
('TRY', 'Turkey Lira', '[8356]', 1),
('TTD', 'Trinidad and Tobago Dollar', '[84,84,36]', 1),
('TVD', 'Tuvalu Dollar', '[36]', 1),
('TWD', 'Taiwan New Dollar', '[78,84,36]', 1),
('UAH', 'Ukraine Hryvna', '[8372]', 1),
('USD', 'United States Dollar', '[36]', 1),
('UYU', 'Uruguay Peso', '[36,85]', 1),
('UZS', 'Uzbekistan Som', '[1083,1074]', 1),
('VEF', 'Venezuela Bolivar Fuerte', '[66,115]', 1),
('VND', 'Viet Nam Dong', '[8363]', 1),
('XAF', 'Communaute Financiere Africaine (BEAC) CFA Franc', NULL, 1),
('XCD', 'East Caribbean Dollar', '[36]', 1),
('XEU', 'Ecus', NULL, 0),
('XOF', 'Communaute Financiere Africaine (BCEAO) Franc', NULL, 1),
('YER', 'Yemen Rial', '[65020]', 1),
('ZAR', 'South Africa Rand', '[82]', 1),
('ZWD', 'Zimbabwe Dollar', '[90,36]', 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_departements`
--

CREATE TABLE IF NOT EXISTS `llx_c_departements` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code_departement` varchar(6) NOT NULL,
  `fk_region` int(11) DEFAULT NULL,
  `cheflieu` varchar(50) DEFAULT NULL,
  `tncc` int(11) DEFAULT NULL,
  `ncc` varchar(50) DEFAULT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_departements` (`code_departement`,`fk_region`),
  KEY `idx_departements_fk_region` (`fk_region`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1010 ;

--
-- Dumping data for table `llx_c_departements`
--

INSERT INTO `llx_c_departements` (`rowid`, `code_departement`, `fk_region`, `cheflieu`, `tncc`, `ncc`, `nom`, `active`) VALUES
(1, '0', 0, '0', 0, '-', '-', 1),
(2, '01', 82, '01053', 5, 'AIN', 'Ain', 1),
(3, '02', 22, '02408', 5, 'AISNE', 'Aisne', 1),
(4, '03', 83, '03190', 5, 'ALLIER', 'Allier', 1),
(5, '04', 93, '04070', 4, 'ALPES-DE-HAUTE-PROVENCE', 'Alpes-de-Haute-Provence', 1),
(6, '05', 93, '05061', 4, 'HAUTES-ALPES', 'Hautes-Alpes', 1),
(7, '06', 93, '06088', 4, 'ALPES-MARITIMES', 'Alpes-Maritimes', 1),
(8, '07', 82, '07186', 5, 'ARDECHE', 'Ardèche', 1),
(9, '08', 21, '08105', 4, 'ARDENNES', 'Ardennes', 1),
(10, '09', 73, '09122', 5, 'ARIEGE', 'Ariège', 1),
(11, '10', 21, '10387', 5, 'AUBE', 'Aube', 1),
(12, '11', 91, '11069', 5, 'AUDE', 'Aude', 1),
(13, '12', 73, '12202', 5, 'AVEYRON', 'Aveyron', 1),
(14, '13', 93, '13055', 4, 'BOUCHES-DU-RHONE', 'Bouches-du-Rhône', 1),
(15, '14', 25, '14118', 2, 'CALVADOS', 'Calvados', 1),
(16, '15', 83, '15014', 2, 'CANTAL', 'Cantal', 1),
(17, '16', 54, '16015', 3, 'CHARENTE', 'Charente', 1),
(18, '17', 54, '17300', 3, 'CHARENTE-MARITIME', 'Charente-Maritime', 1),
(19, '18', 24, '18033', 2, 'CHER', 'Cher', 1),
(20, '19', 74, '19272', 3, 'CORREZE', 'Corrèze', 1),
(21, '2A', 94, '2A004', 3, 'CORSE-DU-SUD', 'Corse-du-Sud', 1),
(22, '2B', 94, '2B033', 3, 'HAUTE-CORSE', 'Haute-Corse', 1),
(23, '21', 26, '21231', 3, 'COTE-D OR', 'Côte-d Or', 1),
(24, '22', 53, '22278', 4, 'COTES-D ARMOR', 'Côtes-d Armor', 1),
(25, '23', 74, '23096', 3, 'CREUSE', 'Creuse', 1),
(26, '24', 72, '24322', 3, 'DORDOGNE', 'Dordogne', 1),
(27, '25', 43, '25056', 2, 'DOUBS', 'Doubs', 1),
(28, '26', 82, '26362', 3, 'DROME', 'Drôme', 1),
(29, '27', 23, '27229', 5, 'EURE', 'Eure', 1),
(30, '28', 24, '28085', 1, 'EURE-ET-LOIR', 'Eure-et-Loir', 1),
(31, '29', 53, '29232', 2, 'FINISTERE', 'Finistère', 1),
(32, '30', 91, '30189', 2, 'GARD', 'Gard', 1),
(33, '31', 73, '31555', 3, 'HAUTE-GARONNE', 'Haute-Garonne', 1),
(34, '32', 73, '32013', 2, 'GERS', 'Gers', 1),
(35, '33', 72, '33063', 3, 'GIRONDE', 'Gironde', 1),
(36, '34', 91, '34172', 5, 'HERAULT', 'Hérault', 1),
(37, '35', 53, '35238', 1, 'ILLE-ET-VILAINE', 'Ille-et-Vilaine', 1),
(38, '36', 24, '36044', 5, 'INDRE', 'Indre', 1),
(39, '37', 24, '37261', 1, 'INDRE-ET-LOIRE', 'Indre-et-Loire', 1),
(40, '38', 82, '38185', 5, 'ISERE', 'Isère', 1),
(41, '39', 43, '39300', 2, 'JURA', 'Jura', 1),
(42, '40', 72, '40192', 4, 'LANDES', 'Landes', 1),
(43, '41', 24, '41018', 0, 'LOIR-ET-CHER', 'Loir-et-Cher', 1),
(44, '42', 82, '42218', 3, 'LOIRE', 'Loire', 1),
(45, '43', 83, '43157', 3, 'HAUTE-LOIRE', 'Haute-Loire', 1),
(46, '44', 52, '44109', 3, 'LOIRE-ATLANTIQUE', 'Loire-Atlantique', 1),
(47, '45', 24, '45234', 2, 'LOIRET', 'Loiret', 1),
(48, '46', 73, '46042', 2, 'LOT', 'Lot', 1),
(49, '47', 72, '47001', 0, 'LOT-ET-GARONNE', 'Lot-et-Garonne', 1),
(50, '48', 91, '48095', 3, 'LOZERE', 'Lozère', 1),
(51, '49', 52, '49007', 0, 'MAINE-ET-LOIRE', 'Maine-et-Loire', 1),
(52, '50', 25, '50502', 3, 'MANCHE', 'Manche', 1),
(53, '51', 21, '51108', 3, 'MARNE', 'Marne', 1),
(54, '52', 21, '52121', 3, 'HAUTE-MARNE', 'Haute-Marne', 1),
(55, '53', 52, '53130', 3, 'MAYENNE', 'Mayenne', 1),
(56, '54', 41, '54395', 0, 'MEURTHE-ET-MOSELLE', 'Meurthe-et-Moselle', 1),
(57, '55', 41, '55029', 3, 'MEUSE', 'Meuse', 1),
(58, '56', 53, '56260', 2, 'MORBIHAN', 'Morbihan', 1),
(59, '57', 41, '57463', 3, 'MOSELLE', 'Moselle', 1),
(60, '58', 26, '58194', 3, 'NIEVRE', 'Nièvre', 1),
(61, '59', 31, '59350', 2, 'NORD', 'Nord', 1),
(62, '60', 22, '60057', 5, 'OISE', 'Oise', 1),
(63, '61', 25, '61001', 5, 'ORNE', 'Orne', 1),
(64, '62', 31, '62041', 2, 'PAS-DE-CALAIS', 'Pas-de-Calais', 1),
(65, '63', 83, '63113', 2, 'PUY-DE-DOME', 'Puy-de-Dôme', 1),
(66, '64', 72, '64445', 4, 'PYRENEES-ATLANTIQUES', 'Pyrénées-Atlantiques', 1),
(67, '65', 73, '65440', 4, 'HAUTES-PYRENEES', 'Hautes-Pyrénées', 1),
(68, '66', 91, '66136', 4, 'PYRENEES-ORIENTALES', 'Pyrénées-Orientales', 1),
(69, '67', 42, '67482', 2, 'BAS-RHIN', 'Bas-Rhin', 1),
(70, '68', 42, '68066', 2, 'HAUT-RHIN', 'Haut-Rhin', 1),
(71, '69', 82, '69123', 2, 'RHONE', 'Rhône', 1),
(72, '70', 43, '70550', 3, 'HAUTE-SAONE', 'Haute-Saône', 1),
(73, '71', 26, '71270', 0, 'SAONE-ET-LOIRE', 'Saône-et-Loire', 1),
(74, '72', 52, '72181', 3, 'SARTHE', 'Sarthe', 1),
(75, '73', 82, '73065', 3, 'SAVOIE', 'Savoie', 1),
(76, '74', 82, '74010', 3, 'HAUTE-SAVOIE', 'Haute-Savoie', 1),
(77, '75', 11, '75056', 0, 'PARIS', 'Paris', 1),
(78, '76', 23, '76540', 3, 'SEINE-MARITIME', 'Seine-Maritime', 1),
(79, '77', 11, '77288', 0, 'SEINE-ET-MARNE', 'Seine-et-Marne', 1),
(80, '78', 11, '78646', 4, 'YVELINES', 'Yvelines', 1),
(81, '79', 54, '79191', 4, 'DEUX-SEVRES', 'Deux-Sèvres', 1),
(82, '80', 22, '80021', 3, 'SOMME', 'Somme', 1),
(83, '81', 73, '81004', 2, 'TARN', 'Tarn', 1),
(84, '82', 73, '82121', 0, 'TARN-ET-GARONNE', 'Tarn-et-Garonne', 1),
(85, '83', 93, '83137', 2, 'VAR', 'Var', 1),
(86, '84', 93, '84007', 0, 'VAUCLUSE', 'Vaucluse', 1),
(87, '85', 52, '85191', 3, 'VENDEE', 'Vendée', 1),
(88, '86', 54, '86194', 3, 'VIENNE', 'Vienne', 1),
(89, '87', 74, '87085', 3, 'HAUTE-VIENNE', 'Haute-Vienne', 1),
(90, '88', 41, '88160', 4, 'VOSGES', 'Vosges', 1),
(91, '89', 26, '89024', 5, 'YONNE', 'Yonne', 1),
(92, '90', 43, '90010', 0, 'TERRITOIRE DE BELFORT', 'Territoire de Belfort', 1),
(93, '91', 11, '91228', 5, 'ESSONNE', 'Essonne', 1),
(94, '92', 11, '92050', 4, 'HAUTS-DE-SEINE', 'Hauts-de-Seine', 1),
(95, '93', 11, '93008', 3, 'SEINE-SAINT-DENIS', 'Seine-Saint-Denis', 1),
(96, '94', 11, '94028', 2, 'VAL-DE-MARNE', 'Val-de-Marne', 1),
(97, '95', 11, '95500', 2, 'VAL-D OISE', 'Val-d Oise', 1),
(98, '971', 1, '97105', 3, 'GUADELOUPE', 'Guadeloupe', 1),
(99, '972', 2, '97209', 3, 'MARTINIQUE', 'Martinique', 1),
(100, '973', 3, '97302', 3, 'GUYANE', 'Guyane', 1),
(101, '974', 4, '97411', 3, 'REUNION', 'Réunion', 1),
(102, '976', 6, '97601', 3, 'MAYOTTE', 'Mayotte', 1),
(103, '01', 201, '', 1, 'ANVERS', 'Anvers', 1),
(104, '02', 203, '', 3, 'BRUXELLES-CAPITALE', 'Bruxelles-Capitale', 1),
(105, '03', 202, '', 2, 'BRABANT-WALLON', 'Brabant-Wallon', 1),
(106, '04', 201, '', 1, 'BRABANT-FLAMAND', 'Brabant-Flamand', 1),
(107, '05', 201, '', 1, 'FLANDRE-OCCIDENTALE', 'Flandre-Occidentale', 1),
(108, '06', 201, '', 1, 'FLANDRE-ORIENTALE', 'Flandre-Orientale', 1),
(109, '07', 202, '', 2, 'HAINAUT', 'Hainaut', 1),
(110, '08', 201, '', 2, 'LIEGE', 'Liège', 1),
(111, '09', 202, '', 1, 'LIMBOURG', 'Limbourg', 1),
(112, '10', 202, '', 2, 'LUXEMBOURG', 'Luxembourg', 1),
(113, '11', 201, '', 2, 'NAMUR', 'Namur', 1),
(114, 'AG', 315, NULL, NULL, NULL, 'AGRIGENTO', 1),
(115, 'AL', 312, NULL, NULL, NULL, 'ALESSANDRIA', 1),
(116, 'AN', 310, NULL, NULL, NULL, 'ANCONA', 1),
(117, 'AO', 319, NULL, NULL, NULL, 'AOSTA', 1),
(118, 'AR', 316, NULL, NULL, NULL, 'AREZZO', 1),
(119, 'AP', 310, NULL, NULL, NULL, 'ASCOLI PICENO', 1),
(120, 'AT', 312, NULL, NULL, NULL, 'ASTI', 1),
(121, 'AV', 304, NULL, NULL, NULL, 'AVELLINO', 1),
(122, 'BA', 313, NULL, NULL, NULL, 'BARI', 1),
(123, 'BT', 313, NULL, NULL, NULL, 'BARLETTA-ANDRIA-TRANI', 1),
(124, 'BL', 320, NULL, NULL, NULL, 'BELLUNO', 1),
(125, 'BN', 304, NULL, NULL, NULL, 'BENEVENTO', 1),
(126, 'BG', 309, NULL, NULL, NULL, 'BERGAMO', 1),
(127, 'BI', 312, NULL, NULL, NULL, 'BIELLA', 1),
(128, 'BO', 305, NULL, NULL, NULL, 'BOLOGNA', 1),
(129, 'BZ', 317, NULL, NULL, NULL, 'BOLZANO', 1),
(130, 'BS', 309, NULL, NULL, NULL, 'BRESCIA', 1),
(131, 'BR', 313, NULL, NULL, NULL, 'BRINDISI', 1),
(132, 'CA', 314, NULL, NULL, NULL, 'CAGLIARI', 1),
(133, 'CL', 315, NULL, NULL, NULL, 'CALTANISSETTA', 1),
(134, 'CB', 311, NULL, NULL, NULL, 'CAMPOBASSO', 1),
(135, 'CI', 314, NULL, NULL, NULL, 'CARBONIA-IGLESIAS', 1),
(136, 'CE', 304, NULL, NULL, NULL, 'CASERTA', 1),
(137, 'CT', 315, NULL, NULL, NULL, 'CATANIA', 1),
(138, 'CZ', 303, NULL, NULL, NULL, 'CATANZARO', 1),
(139, 'CH', 301, NULL, NULL, NULL, 'CHIETI', 1),
(140, 'CO', 309, NULL, NULL, NULL, 'COMO', 1),
(141, 'CS', 303, NULL, NULL, NULL, 'COSENZA', 1),
(142, 'CR', 309, NULL, NULL, NULL, 'CREMONA', 1),
(143, 'KR', 303, NULL, NULL, NULL, 'CROTONE', 1),
(144, 'CN', 312, NULL, NULL, NULL, 'CUNEO', 1),
(145, 'EN', 315, NULL, NULL, NULL, 'ENNA', 1),
(146, 'FM', 310, NULL, NULL, NULL, 'FERMO', 1),
(147, 'FE', 305, NULL, NULL, NULL, 'FERRARA', 1),
(148, 'FI', 316, NULL, NULL, NULL, 'FIRENZE', 1),
(149, 'FG', 313, NULL, NULL, NULL, 'FOGGIA', 1),
(150, 'FC', 305, NULL, NULL, NULL, 'FORLI-CESENA', 1),
(151, 'FR', 307, NULL, NULL, NULL, 'FROSINONE', 1),
(152, 'GE', 308, NULL, NULL, NULL, 'GENOVA', 1),
(153, 'GO', 306, NULL, NULL, NULL, 'GORIZIA', 1),
(154, 'GR', 316, NULL, NULL, NULL, 'GROSSETO', 1),
(155, 'IM', 308, NULL, NULL, NULL, 'IMPERIA', 1),
(156, 'IS', 311, NULL, NULL, NULL, 'ISERNIA', 1),
(157, 'SP', 308, NULL, NULL, NULL, 'LA SPEZIA', 1),
(158, 'AQ', 301, NULL, NULL, NULL, 'L AQUILA', 1),
(159, 'LT', 307, NULL, NULL, NULL, 'LATINA', 1),
(160, 'LE', 313, NULL, NULL, NULL, 'LECCE', 1),
(161, 'LC', 309, NULL, NULL, NULL, 'LECCO', 1),
(162, 'LI', 314, NULL, NULL, NULL, 'LIVORNO', 1),
(163, 'LO', 309, NULL, NULL, NULL, 'LODI', 1),
(164, 'LU', 316, NULL, NULL, NULL, 'LUCCA', 1),
(165, 'MC', 310, NULL, NULL, NULL, 'MACERATA', 1),
(166, 'MN', 309, NULL, NULL, NULL, 'MANTOVA', 1),
(167, 'MS', 316, NULL, NULL, NULL, 'MASSA-CARRARA', 1),
(168, 'MT', 302, NULL, NULL, NULL, 'MATERA', 1),
(169, 'VS', 314, NULL, NULL, NULL, 'MEDIO CAMPIDANO', 1),
(170, 'ME', 315, NULL, NULL, NULL, 'MESSINA', 1),
(171, 'MI', 309, NULL, NULL, NULL, 'MILANO', 1),
(172, 'MB', 309, NULL, NULL, NULL, 'MONZA e BRIANZA', 1),
(173, 'MO', 305, NULL, NULL, NULL, 'MODENA', 1),
(174, 'NA', 304, NULL, NULL, NULL, 'NAPOLI', 1),
(175, 'NO', 312, NULL, NULL, NULL, 'NOVARA', 1),
(176, 'NU', 314, NULL, NULL, NULL, 'NUORO', 1),
(177, 'OG', 314, NULL, NULL, NULL, 'OGLIASTRA', 1),
(178, 'OT', 314, NULL, NULL, NULL, 'OLBIA-TEMPIO', 1),
(179, 'OR', 314, NULL, NULL, NULL, 'ORISTANO', 1),
(180, 'PD', 320, NULL, NULL, NULL, 'PADOVA', 1),
(181, 'PA', 315, NULL, NULL, NULL, 'PALERMO', 1),
(182, 'PR', 305, NULL, NULL, NULL, 'PARMA', 1),
(183, 'PV', 309, NULL, NULL, NULL, 'PAVIA', 1),
(184, 'PG', 318, NULL, NULL, NULL, 'PERUGIA', 1),
(185, 'PU', 310, NULL, NULL, NULL, 'PESARO e URBINO', 1),
(186, 'PE', 301, NULL, NULL, NULL, 'PESCARA', 1),
(187, 'PC', 305, NULL, NULL, NULL, 'PIACENZA', 1),
(188, 'PI', 316, NULL, NULL, NULL, 'PISA', 1),
(189, 'PT', 316, NULL, NULL, NULL, 'PISTOIA', 1),
(190, 'PN', 306, NULL, NULL, NULL, 'PORDENONE', 1),
(191, 'PZ', 302, NULL, NULL, NULL, 'POTENZA', 1),
(192, 'PO', 316, NULL, NULL, NULL, 'PRATO', 1),
(193, 'RG', 315, NULL, NULL, NULL, 'RAGUSA', 1),
(194, 'RA', 305, NULL, NULL, NULL, 'RAVENNA', 1),
(195, 'RC', 303, NULL, NULL, NULL, 'REGGIO CALABRIA', 1),
(196, 'RE', 305, NULL, NULL, NULL, 'REGGIO NELL EMILIA', 1),
(197, 'RI', 307, NULL, NULL, NULL, 'RIETI', 1),
(198, 'RN', 305, NULL, NULL, NULL, 'RIMINI', 1),
(199, 'RM', 307, NULL, NULL, NULL, 'ROMA', 1),
(200, 'RO', 320, NULL, NULL, NULL, 'ROVIGO', 1),
(201, 'SA', 304, NULL, NULL, NULL, 'SALERNO', 1),
(202, 'SS', 314, NULL, NULL, NULL, 'SASSARI', 1),
(203, 'SV', 308, NULL, NULL, NULL, 'SAVONA', 1),
(204, 'SI', 316, NULL, NULL, NULL, 'SIENA', 1),
(205, 'SR', 315, NULL, NULL, NULL, 'SIRACUSA', 1),
(206, 'SO', 309, NULL, NULL, NULL, 'SONDRIO', 1),
(207, 'TA', 313, NULL, NULL, NULL, 'TARANTO', 1),
(208, 'TE', 301, NULL, NULL, NULL, 'TERAMO', 1),
(209, 'TR', 318, NULL, NULL, NULL, 'TERNI', 1),
(210, 'TO', 312, NULL, NULL, NULL, 'TORINO', 1),
(211, 'TP', 315, NULL, NULL, NULL, 'TRAPANI', 1),
(212, 'TN', 317, NULL, NULL, NULL, 'TRENTO', 1),
(213, 'TV', 320, NULL, NULL, NULL, 'TREVISO', 1),
(214, 'TS', 306, NULL, NULL, NULL, 'TRIESTE', 1),
(215, 'UD', 306, NULL, NULL, NULL, 'UDINE', 1),
(216, 'VA', 309, NULL, NULL, NULL, 'VARESE', 1),
(217, 'VE', 320, NULL, NULL, NULL, 'VENEZIA', 1),
(218, 'VB', 312, NULL, NULL, NULL, 'VERBANO-CUSIO-OSSOLA', 1),
(219, 'VC', 312, NULL, NULL, NULL, 'VERCELLI', 1),
(220, 'VR', 320, NULL, NULL, NULL, 'VERONA', 1),
(221, 'VV', 303, NULL, NULL, NULL, 'VIBO VALENTIA', 1),
(222, 'VI', 320, NULL, NULL, NULL, 'VICENZA', 1),
(223, 'VT', 307, NULL, NULL, NULL, 'VITERBO', 1),
(224, 'NSW', 2801, '', 1, '', 'New South Wales', 1),
(225, 'VIC', 2801, '', 1, '', 'Victoria', 1),
(226, 'QLD', 2801, '', 1, '', 'Queensland', 1),
(227, 'SA', 2801, '', 1, '', 'South Australia', 1),
(228, 'ACT', 2801, '', 1, '', 'Australia Capital Territory', 1),
(229, 'TAS', 2801, '', 1, '', 'Tasmania', 1),
(230, 'WA', 2801, '', 1, '', 'Western Australia', 1),
(231, 'NT', 2801, '', 1, '', 'Northern Territory', 1),
(232, 'ON', 1401, '', 1, '', 'Ontario', 1),
(233, 'QC', 1401, '', 1, '', 'Quebec', 1),
(234, 'NS', 1401, '', 1, '', 'Nova Scotia', 1),
(235, 'NB', 1401, '', 1, '', 'New Brunswick', 1),
(236, 'MB', 1401, '', 1, '', 'Manitoba', 1),
(237, 'BC', 1401, '', 1, '', 'British Columbia', 1),
(238, 'PE', 1401, '', 1, '', 'Prince Edward Island', 1),
(239, 'SK', 1401, '', 1, '', 'Saskatchewan', 1),
(240, 'AB', 1401, '', 1, '', 'Alberta', 1),
(241, 'NL', 1401, '', 1, '', 'Newfoundland and Labrador', 1),
(242, '01', 419, '', 19, 'ALAVA', 'Álava', 1),
(243, '02', 404, '', 4, 'ALBACETE', 'Albacete', 1),
(244, '03', 411, '', 11, 'ALICANTE', 'Alicante', 1),
(245, '04', 401, '', 1, 'ALMERIA', 'Almería', 1),
(246, '05', 403, '', 3, 'AVILA', 'Avila', 1),
(247, '06', 412, '', 12, 'BADAJOZ', 'Badajoz', 1),
(248, '07', 414, '', 14, 'ISLAS BALEARES', 'Islas Baleares', 1),
(249, '08', 406, '', 6, 'BARCELONA', 'Barcelona', 1),
(250, '09', 403, '', 8, 'BURGOS', 'Burgos', 1),
(251, '10', 412, '', 12, 'CACERES', 'Cáceres', 1),
(252, '11', 401, '', 1, 'CADIZ', 'Cádiz', 1),
(253, '12', 411, '', 11, 'CASTELLON', 'Castellón', 1),
(254, '13', 404, '', 4, 'CIUDAD REAL', 'Ciudad Real', 1),
(255, '14', 401, '', 1, 'CORDOBA', 'Córdoba', 1),
(256, '15', 413, '', 13, 'LA CORUÑA', 'La Coruña', 1),
(257, '16', 404, '', 4, 'CUENCA', 'Cuenca', 1),
(258, '17', 406, '', 6, 'GERONA', 'Gerona', 1),
(259, '18', 401, '', 1, 'GRANADA', 'Granada', 1),
(260, '19', 404, '', 4, 'GUADALAJARA', 'Guadalajara', 1),
(261, '20', 419, '', 19, 'GUIPUZCOA', 'Guipúzcoa', 1),
(262, '21', 401, '', 1, 'HUELVA', 'Huelva', 1),
(263, '22', 402, '', 2, 'HUESCA', 'Huesca', 1),
(264, '23', 401, '', 1, 'JAEN', 'Jaén', 1),
(265, '24', 403, '', 3, 'LEON', 'León', 1),
(266, '25', 406, '', 6, 'LERIDA', 'Lérida', 1),
(267, '26', 415, '', 15, 'LA RIOJA', 'La Rioja', 1),
(268, '27', 413, '', 13, 'LUGO', 'Lugo', 1),
(269, '28', 416, '', 16, 'MADRID', 'Madrid', 1),
(270, '29', 401, '', 1, 'MALAGA', 'Málaga', 1),
(271, '30', 417, '', 17, 'MURCIA', 'Murcia', 1),
(272, '31', 408, '', 8, 'NAVARRA', 'Navarra', 1),
(273, '32', 413, '', 13, 'ORENSE', 'Orense', 1),
(274, '33', 418, '', 18, 'ASTURIAS', 'Asturias', 1),
(275, '34', 403, '', 3, 'PALENCIA', 'Palencia', 1),
(276, '35', 405, '', 5, 'LAS PALMAS', 'Las Palmas', 1),
(277, '36', 413, '', 13, 'PONTEVEDRA', 'Pontevedra', 1),
(278, '37', 403, '', 3, 'SALAMANCA', 'Salamanca', 1),
(279, '38', 405, '', 5, 'STA. CRUZ DE TENERIFE', 'Sta. Cruz de Tenerife', 1),
(280, '39', 410, '', 10, 'CANTABRIA', 'Cantabria', 1),
(281, '40', 403, '', 3, 'SEGOVIA', 'Segovia', 1),
(282, '41', 401, '', 1, 'SEVILLA', 'Sevilla', 1),
(283, '42', 403, '', 3, 'SORIA', 'Soria', 1),
(284, '43', 406, '', 6, 'TARRAGONA', 'Tarragona', 1),
(285, '44', 402, '', 2, 'TERUEL', 'Teruel', 1),
(286, '45', 404, '', 5, 'TOLEDO', 'Toledo', 1),
(287, '46', 411, '', 11, 'VALENCIA', 'Valencia', 1),
(288, '47', 403, '', 3, 'VALLADOLID', 'Valladolid', 1),
(289, '48', 419, '', 19, 'VIZCAYA', 'Vizcaya', 1),
(290, '49', 403, '', 3, 'ZAMORA', 'Zamora', 1),
(291, '50', 402, '', 1, 'ZARAGOZA', 'Zaragoza', 1),
(292, '51', 407, '', 7, 'CEUTA', 'Ceuta', 1),
(293, '52', 409, '', 9, 'MELILLA', 'Melilla', 1),
(294, '53', 420, '', 20, 'OTROS', 'Otros', 1),
(295, 'BW', 501, NULL, NULL, 'BADEN-WÜRTTEMBERG', 'Baden-Württemberg', 1),
(296, 'BY', 501, NULL, NULL, 'BAYERN', 'Bayern', 1),
(297, 'BE', 501, NULL, NULL, 'BERLIN', 'Berlin', 1),
(298, 'BB', 501, NULL, NULL, 'BRANDENBURG', 'Brandenburg', 1),
(299, 'HB', 501, NULL, NULL, 'BREMEN', 'Bremen', 1),
(300, 'HH', 501, NULL, NULL, 'HAMBURG', 'Hamburg', 1),
(301, 'HE', 501, NULL, NULL, 'HESSEN', 'Hessen', 1),
(302, 'MV', 501, NULL, NULL, 'MECKLENBURG-VORPOMMERN', 'Mecklenburg-Vorpommern', 1),
(303, 'NI', 501, NULL, NULL, 'NIEDERSACHSEN', 'Niedersachsen', 1),
(304, 'NW', 501, NULL, NULL, 'NORDRHEIN-WESTFALEN', 'Nordrhein-Westfalen', 1),
(305, 'RP', 501, NULL, NULL, 'RHEINLAND-PFALZ', 'Rheinland-Pfalz', 1),
(306, 'SL', 501, NULL, NULL, 'SAARLAND', 'Saarland', 1),
(307, 'SN', 501, NULL, NULL, 'SACHSEN', 'Sachsen', 1),
(308, 'ST', 501, NULL, NULL, 'SACHSEN-ANHALT', 'Sachsen-Anhalt', 1),
(309, 'SH', 501, NULL, NULL, 'SCHLESWIG-HOLSTEIN', 'Schleswig-Holstein', 1),
(310, 'TH', 501, NULL, NULL, 'THÜRINGEN', 'Thüringen', 1),
(311, '66', 10201, '', 0, '', '?????', 1),
(312, '67', 10205, '', 0, '', '?????', 1),
(313, '01', 10205, '', 0, '', '?????', 1),
(314, '02', 10205, '', 0, '', '?????', 1),
(315, '03', 10205, '', 0, '', '??????', 1),
(316, '04', 10205, '', 0, '', '?????', 1),
(317, '05', 10205, '', 0, '', '??????', 1),
(318, '06', 10203, '', 0, '', '??????', 1),
(319, '07', 10203, '', 0, '', '???????????', 1),
(320, '08', 10203, '', 0, '', '??????', 1),
(321, '09', 10203, '', 0, '', '?????', 1),
(322, '10', 10203, '', 0, '', '??????', 1),
(323, '11', 10203, '', 0, '', '??????', 1),
(324, '12', 10203, '', 0, '', '?????????', 1),
(325, '13', 10206, '', 0, '', '????', 1),
(326, '14', 10206, '', 0, '', '?????????', 1),
(327, '15', 10206, '', 0, '', '????????', 1),
(328, '16', 10206, '', 0, '', '???????', 1),
(329, '17', 10213, '', 0, '', '???????', 1),
(330, '18', 10213, '', 0, '', '????????', 1),
(331, '19', 10213, '', 0, '', '??????', 1),
(332, '20', 10213, '', 0, '', '???????', 1),
(333, '21', 10212, '', 0, '', '????????', 1),
(334, '22', 10212, '', 0, '', '??????', 1),
(335, '23', 10212, '', 0, '', '????????', 1),
(336, '24', 10212, '', 0, '', '???????', 1),
(337, '25', 10212, '', 0, '', '????????', 1),
(338, '26', 10212, '', 0, '', '???????', 1),
(339, '27', 10202, '', 0, '', '??????', 1),
(340, '28', 10202, '', 0, '', '?????????', 1),
(341, '29', 10202, '', 0, '', '????????', 1),
(342, '30', 10202, '', 0, '', '??????', 1),
(343, '31', 10209, '', 0, '', '????????', 1),
(344, '32', 10209, '', 0, '', '???????', 1),
(345, '33', 10209, '', 0, '', '????????', 1),
(346, '34', 10209, '', 0, '', '???????', 1),
(347, '35', 10209, '', 0, '', '????????', 1),
(348, '36', 10211, '', 0, '', '???????????????', 1),
(349, '37', 10211, '', 0, '', '?????', 1),
(350, '38', 10211, '', 0, '', '?????', 1),
(351, '39', 10207, '', 0, '', '????????', 1),
(352, '40', 10207, '', 0, '', '???????', 1),
(353, '41', 10207, '', 0, '', '??????????', 1),
(354, '42', 10207, '', 0, '', '?????', 1),
(355, '43', 10207, '', 0, '', '???????', 1),
(356, '44', 10208, '', 0, '', '??????', 1),
(357, '45', 10208, '', 0, '', '??????', 1),
(358, '46', 10208, '', 0, '', '??????', 1),
(359, '47', 10208, '', 0, '', '?????', 1),
(360, '48', 10208, '', 0, '', '????', 1),
(361, '49', 10210, '', 0, '', '??????', 1),
(362, '50', 10210, '', 0, '', '????', 1),
(363, '51', 10210, '', 0, '', '????????', 1),
(364, '52', 10210, '', 0, '', '????????', 1),
(365, '53', 10210, '', 0, '', '???-??????', 1),
(366, '54', 10210, '', 0, '', '??', 1),
(367, '55', 10210, '', 0, '', '?????', 1),
(368, '56', 10210, '', 0, '', '???????', 1),
(369, '57', 10210, '', 0, '', '?????', 1),
(370, '58', 10210, '', 0, '', '?????', 1),
(371, '59', 10210, '', 0, '', '?????', 1),
(372, '60', 10210, '', 0, '', '?????', 1),
(373, '61', 10210, '', 0, '', '?????', 1),
(374, '62', 10204, '', 0, '', '????????', 1),
(375, '63', 10204, '', 0, '', '??????', 1),
(376, '64', 10204, '', 0, '', '???????', 1),
(377, '65', 10204, '', 0, '', '?????', 1),
(378, 'AG', 601, NULL, NULL, 'ARGOVIE', 'Argovie', 1),
(379, 'AI', 601, NULL, NULL, 'APPENZELL RHODES INTERIEURES', 'Appenzell Rhodes intérieures', 1),
(380, 'AR', 601, NULL, NULL, 'APPENZELL RHODES EXTERIEURES', 'Appenzell Rhodes extérieures', 1),
(381, 'BE', 601, NULL, NULL, 'BERNE', 'Berne', 1),
(382, 'BL', 601, NULL, NULL, 'BALE CAMPAGNE', 'Bâle Campagne', 1),
(383, 'BS', 601, NULL, NULL, 'BALE VILLE', 'Bâle Ville', 1),
(384, 'FR', 601, NULL, NULL, 'FRIBOURG', 'Fribourg', 1),
(385, 'GE', 601, NULL, NULL, 'GENEVE', 'Genève', 1),
(386, 'GL', 601, NULL, NULL, 'GLARIS', 'Glaris', 1),
(387, 'GR', 601, NULL, NULL, 'GRISONS', 'Grisons', 1),
(388, 'JU', 601, NULL, NULL, 'JURA', 'Jura', 1),
(389, 'LU', 601, NULL, NULL, 'LUCERNE', 'Lucerne', 1),
(390, 'NE', 601, NULL, NULL, 'NEUCHATEL', 'Neuchâtel', 1),
(391, 'NW', 601, NULL, NULL, 'NIDWALD', 'Nidwald', 1),
(392, 'OW', 601, NULL, NULL, 'OBWALD', 'Obwald', 1),
(393, 'SG', 601, NULL, NULL, 'SAINT-GALL', 'Saint-Gall', 1),
(394, 'SH', 601, NULL, NULL, 'SCHAFFHOUSE', 'Schaffhouse', 1),
(395, 'SO', 601, NULL, NULL, 'SOLEURE', 'Soleure', 1),
(396, 'SZ', 601, NULL, NULL, 'SCHWYZ', 'Schwyz', 1),
(397, 'TG', 601, NULL, NULL, 'THURGOVIE', 'Thurgovie', 1),
(398, 'TI', 601, NULL, NULL, 'TESSIN', 'Tessin', 1),
(399, 'UR', 601, NULL, NULL, 'URI', 'Uri', 1),
(400, 'VD', 601, NULL, NULL, 'VAUD', 'Vaud', 1),
(401, 'VS', 601, NULL, NULL, 'VALAIS', 'Valais', 1),
(402, 'ZG', 601, NULL, NULL, 'ZUG', 'Zug', 1),
(403, 'ZH', 601, NULL, NULL, 'ZURICH', 'Zürich', 1),
(404, '701', 701, NULL, 0, NULL, 'Bedfordshire', 1),
(405, '702', 701, NULL, 0, NULL, 'Berkshire', 1),
(406, '703', 701, NULL, 0, NULL, 'Bristol, City of', 1),
(407, '704', 701, NULL, 0, NULL, 'Buckinghamshire', 1),
(408, '705', 701, NULL, 0, NULL, 'Cambridgeshire', 1),
(409, '706', 701, NULL, 0, NULL, 'Cheshire', 1),
(410, '707', 701, NULL, 0, NULL, 'Cleveland', 1),
(411, '708', 701, NULL, 0, NULL, 'Cornwall', 1),
(412, '709', 701, NULL, 0, NULL, 'Cumberland', 1),
(413, '710', 701, NULL, 0, NULL, 'Cumbria', 1),
(414, '711', 701, NULL, 0, NULL, 'Derbyshire', 1),
(415, '712', 701, NULL, 0, NULL, 'Devon', 1),
(416, '713', 701, NULL, 0, NULL, 'Dorset', 1),
(417, '714', 701, NULL, 0, NULL, 'Co. Durham', 1),
(418, '715', 701, NULL, 0, NULL, 'East Riding of Yorkshire', 1),
(419, '716', 701, NULL, 0, NULL, 'East Sussex', 1),
(420, '717', 701, NULL, 0, NULL, 'Essex', 1),
(421, '718', 701, NULL, 0, NULL, 'Gloucestershire', 1),
(422, '719', 701, NULL, 0, NULL, 'Greater Manchester', 1),
(423, '720', 701, NULL, 0, NULL, 'Hampshire', 1),
(424, '721', 701, NULL, 0, NULL, 'Hertfordshire', 1),
(425, '722', 701, NULL, 0, NULL, 'Hereford and Worcester', 1),
(426, '723', 701, NULL, 0, NULL, 'Herefordshire', 1),
(427, '724', 701, NULL, 0, NULL, 'Huntingdonshire', 1),
(428, '725', 701, NULL, 0, NULL, 'Isle of Man', 1),
(429, '726', 701, NULL, 0, NULL, 'Isle of Wight', 1),
(430, '727', 701, NULL, 0, NULL, 'Jersey', 1),
(431, '728', 701, NULL, 0, NULL, 'Kent', 1),
(432, '729', 701, NULL, 0, NULL, 'Lancashire', 1),
(433, '730', 701, NULL, 0, NULL, 'Leicestershire', 1),
(434, '731', 701, NULL, 0, NULL, 'Lincolnshire', 1),
(435, '732', 701, NULL, 0, NULL, 'London - City of London', 1),
(436, '733', 701, NULL, 0, NULL, 'Merseyside', 1),
(437, '734', 701, NULL, 0, NULL, 'Middlesex', 1),
(438, '735', 701, NULL, 0, NULL, 'Norfolk', 1),
(439, '736', 701, NULL, 0, NULL, 'North Yorkshire', 1),
(440, '737', 701, NULL, 0, NULL, 'North Riding of Yorkshire', 1),
(441, '738', 701, NULL, 0, NULL, 'Northamptonshire', 1),
(442, '739', 701, NULL, 0, NULL, 'Northumberland', 1),
(443, '740', 701, NULL, 0, NULL, 'Nottinghamshire', 1),
(444, '741', 701, NULL, 0, NULL, 'Oxfordshire', 1),
(445, '742', 701, NULL, 0, NULL, 'Rutland', 1),
(446, '743', 701, NULL, 0, NULL, 'Shropshire', 1),
(447, '744', 701, NULL, 0, NULL, 'Somerset', 1),
(448, '745', 701, NULL, 0, NULL, 'Staffordshire', 1),
(449, '746', 701, NULL, 0, NULL, 'Suffolk', 1),
(450, '747', 701, NULL, 0, NULL, 'Surrey', 1),
(451, '748', 701, NULL, 0, NULL, 'Sussex', 1),
(452, '749', 701, NULL, 0, NULL, 'Tyne and Wear', 1),
(453, '750', 701, NULL, 0, NULL, 'Warwickshire', 1),
(454, '751', 701, NULL, 0, NULL, 'West Midlands', 1),
(455, '752', 701, NULL, 0, NULL, 'West Sussex', 1),
(456, '753', 701, NULL, 0, NULL, 'West Yorkshire', 1),
(457, '754', 701, NULL, 0, NULL, 'West Riding of Yorkshire', 1),
(458, '755', 701, NULL, 0, NULL, 'Wiltshire', 1),
(459, '756', 701, NULL, 0, NULL, 'Worcestershire', 1),
(460, '757', 701, NULL, 0, NULL, 'Yorkshire', 1),
(461, '758', 702, NULL, 0, NULL, 'Anglesey', 1),
(462, '759', 702, NULL, 0, NULL, 'Breconshire', 1),
(463, '760', 702, NULL, 0, NULL, 'Caernarvonshire', 1),
(464, '761', 702, NULL, 0, NULL, 'Cardiganshire', 1),
(465, '762', 702, NULL, 0, NULL, 'Carmarthenshire', 1),
(466, '763', 702, NULL, 0, NULL, 'Ceredigion', 1),
(467, '764', 702, NULL, 0, NULL, 'Denbighshire', 1),
(468, '765', 702, NULL, 0, NULL, 'Flintshire', 1),
(469, '766', 702, NULL, 0, NULL, 'Glamorgan', 1),
(470, '767', 702, NULL, 0, NULL, 'Gwent', 1),
(471, '768', 702, NULL, 0, NULL, 'Gwynedd', 1),
(472, '769', 702, NULL, 0, NULL, 'Merionethshire', 1),
(473, '770', 702, NULL, 0, NULL, 'Monmouthshire', 1),
(474, '771', 702, NULL, 0, NULL, 'Mid Glamorgan', 1),
(475, '772', 702, NULL, 0, NULL, 'Montgomeryshire', 1),
(476, '773', 702, NULL, 0, NULL, 'Pembrokeshire', 1),
(477, '774', 702, NULL, 0, NULL, 'Powys', 1),
(478, '775', 702, NULL, 0, NULL, 'Radnorshire', 1),
(479, '776', 702, NULL, 0, NULL, 'South Glamorgan', 1),
(480, '777', 703, NULL, 0, NULL, 'Aberdeen, City of', 1),
(481, '778', 703, NULL, 0, NULL, 'Angus', 1),
(482, '779', 703, NULL, 0, NULL, 'Argyll', 1),
(483, '780', 703, NULL, 0, NULL, 'Ayrshire', 1),
(484, '781', 703, NULL, 0, NULL, 'Banffshire', 1),
(485, '782', 703, NULL, 0, NULL, 'Berwickshire', 1),
(486, '783', 703, NULL, 0, NULL, 'Bute', 1),
(487, '784', 703, NULL, 0, NULL, 'Caithness', 1),
(488, '785', 703, NULL, 0, NULL, 'Clackmannanshire', 1),
(489, '786', 703, NULL, 0, NULL, 'Dumfriesshire', 1),
(490, '787', 703, NULL, 0, NULL, 'Dumbartonshire', 1),
(491, '788', 703, NULL, 0, NULL, 'Dundee, City of', 1),
(492, '789', 703, NULL, 0, NULL, 'East Lothian', 1),
(493, '790', 703, NULL, 0, NULL, 'Fife', 1),
(494, '791', 703, NULL, 0, NULL, 'Inverness', 1),
(495, '792', 703, NULL, 0, NULL, 'Kincardineshire', 1),
(496, '793', 703, NULL, 0, NULL, 'Kinross-shire', 1),
(497, '794', 703, NULL, 0, NULL, 'Kirkcudbrightshire', 1),
(498, '795', 703, NULL, 0, NULL, 'Lanarkshire', 1),
(499, '796', 703, NULL, 0, NULL, 'Midlothian', 1),
(500, '797', 703, NULL, 0, NULL, 'Morayshire', 1),
(501, '798', 703, NULL, 0, NULL, 'Nairnshire', 1),
(502, '799', 703, NULL, 0, NULL, 'Orkney', 1),
(503, '800', 703, NULL, 0, NULL, 'Peebleshire', 1),
(504, '801', 703, NULL, 0, NULL, 'Perthshire', 1),
(505, '802', 703, NULL, 0, NULL, 'Renfrewshire', 1),
(506, '803', 703, NULL, 0, NULL, 'Ross & Cromarty', 1),
(507, '804', 703, NULL, 0, NULL, 'Roxburghshire', 1),
(508, '805', 703, NULL, 0, NULL, 'Selkirkshire', 1),
(509, '806', 703, NULL, 0, NULL, 'Shetland', 1),
(510, '807', 703, NULL, 0, NULL, 'Stirlingshire', 1),
(511, '808', 703, NULL, 0, NULL, 'Sutherland', 1),
(512, '809', 703, NULL, 0, NULL, 'West Lothian', 1),
(513, '810', 703, NULL, 0, NULL, 'Wigtownshire', 1),
(514, '811', 704, NULL, 0, NULL, 'Antrim', 1),
(515, '812', 704, NULL, 0, NULL, 'Armagh', 1),
(516, '813', 704, NULL, 0, NULL, 'Co. Down', 1),
(517, '814', 704, NULL, 0, NULL, 'Co. Fermanagh', 1),
(518, '815', 704, NULL, 0, NULL, 'Co. Londonderry', 1),
(519, 'AL', 1101, '', 0, 'ALABAMA', 'Alabama', 1),
(520, 'AK', 1101, '', 0, 'ALASKA', 'Alaska', 1),
(521, 'AZ', 1101, '', 0, 'ARIZONA', 'Arizona', 1),
(522, 'AR', 1101, '', 0, 'ARKANSAS', 'Arkansas', 1),
(523, 'CA', 1101, '', 0, 'CALIFORNIA', 'California', 1),
(524, 'CO', 1101, '', 0, 'COLORADO', 'Colorado', 1),
(525, 'CT', 1101, '', 0, 'CONNECTICUT', 'Connecticut', 1),
(526, 'DE', 1101, '', 0, 'DELAWARE', 'Delaware', 1),
(527, 'FL', 1101, '', 0, 'FLORIDA', 'Florida', 1),
(528, 'GA', 1101, '', 0, 'GEORGIA', 'Georgia', 1),
(529, 'HI', 1101, '', 0, 'HAWAII', 'Hawaii', 1),
(530, 'ID', 1101, '', 0, 'IDAHO', 'Idaho', 1),
(531, 'IL', 1101, '', 0, 'ILLINOIS', 'Illinois', 1),
(532, 'IN', 1101, '', 0, 'INDIANA', 'Indiana', 1),
(533, 'IA', 1101, '', 0, 'IOWA', 'Iowa', 1),
(534, 'KS', 1101, '', 0, 'KANSAS', 'Kansas', 1),
(535, 'KY', 1101, '', 0, 'KENTUCKY', 'Kentucky', 1),
(536, 'LA', 1101, '', 0, 'LOUISIANA', 'Louisiana', 1),
(537, 'ME', 1101, '', 0, 'MAINE', 'Maine', 1),
(538, 'MD', 1101, '', 0, 'MARYLAND', 'Maryland', 1),
(539, 'MA', 1101, '', 0, 'MASSACHUSSETTS', 'Massachusetts', 1),
(540, 'MI', 1101, '', 0, 'MICHIGAN', 'Michigan', 1),
(541, 'MN', 1101, '', 0, 'MINNESOTA', 'Minnesota', 1),
(542, 'MS', 1101, '', 0, 'MISSISSIPPI', 'Mississippi', 1),
(543, 'MO', 1101, '', 0, 'MISSOURI', 'Missouri', 1),
(544, 'MT', 1101, '', 0, 'MONTANA', 'Montana', 1),
(545, 'NE', 1101, '', 0, 'NEBRASKA', 'Nebraska', 1),
(546, 'NV', 1101, '', 0, 'NEVADA', 'Nevada', 1),
(547, 'NH', 1101, '', 0, 'NEW HAMPSHIRE', 'New Hampshire', 1),
(548, 'NJ', 1101, '', 0, 'NEW JERSEY', 'New Jersey', 1),
(549, 'NM', 1101, '', 0, 'NEW MEXICO', 'New Mexico', 1),
(550, 'NY', 1101, '', 0, 'NEW YORK', 'New York', 1),
(551, 'NC', 1101, '', 0, 'NORTH CAROLINA', 'North Carolina', 1),
(552, 'ND', 1101, '', 0, 'NORTH DAKOTA', 'North Dakota', 1),
(553, 'OH', 1101, '', 0, 'OHIO', 'Ohio', 1),
(554, 'OK', 1101, '', 0, 'OKLAHOMA', 'Oklahoma', 1),
(555, 'OR', 1101, '', 0, 'OREGON', 'Oregon', 1),
(556, 'PA', 1101, '', 0, 'PENNSYLVANIA', 'Pennsylvania', 1),
(557, 'RI', 1101, '', 0, 'RHODE ISLAND', 'Rhode Island', 1),
(558, 'SC', 1101, '', 0, 'SOUTH CAROLINA', 'South Carolina', 1),
(559, 'SD', 1101, '', 0, 'SOUTH DAKOTA', 'South Dakota', 1),
(560, 'TN', 1101, '', 0, 'TENNESSEE', 'Tennessee', 1),
(561, 'TX', 1101, '', 0, 'TEXAS', 'Texas', 1),
(562, 'UT', 1101, '', 0, 'UTAH', 'Utah', 1),
(563, 'VT', 1101, '', 0, 'VERMONT', 'Vermont', 1),
(564, 'VA', 1101, '', 0, 'VIRGINIA', 'Virginia', 1),
(565, 'WA', 1101, '', 0, 'WASHINGTON', 'Washington', 1),
(566, 'WV', 1101, '', 0, 'WEST VIRGINIA', 'West Virginia', 1),
(567, 'WI', 1101, '', 0, 'WISCONSIN', 'Wisconsin', 1),
(568, 'WY', 1101, '', 0, 'WYOMING', 'Wyoming', 1),
(569, 'GR', 1701, NULL, NULL, NULL, 'Groningen', 1),
(570, 'FR', 1701, NULL, NULL, NULL, 'Friesland', 1),
(571, 'DR', 1701, NULL, NULL, NULL, 'Drenthe', 1),
(572, 'OV', 1701, NULL, NULL, NULL, 'Overijssel', 1),
(573, 'GD', 1701, NULL, NULL, NULL, 'Gelderland', 1),
(574, 'FL', 1701, NULL, NULL, NULL, 'Flevoland', 1),
(575, 'UT', 1701, NULL, NULL, NULL, 'Utrecht', 1),
(576, 'NH', 1701, NULL, NULL, NULL, 'Noord-Holland', 1),
(577, 'ZH', 1701, NULL, NULL, NULL, 'Zuid-Holland', 1),
(578, 'ZL', 1701, NULL, NULL, NULL, 'Zeeland', 1),
(579, 'NB', 1701, NULL, NULL, NULL, 'Noord-Brabant', 1),
(580, 'LB', 1701, NULL, NULL, NULL, 'Limburg', 1),
(581, 'SS', 8601, '', 0, '', 'San Salvador', 1),
(582, 'SA', 8603, '', 0, '', 'Santa Ana', 1),
(583, 'AH', 8603, '', 0, '', 'Ahuachapan', 1),
(584, 'SO', 8603, '', 0, '', 'Sonsonate', 1),
(585, 'US', 8602, '', 0, '', 'Usulutan', 1),
(586, 'SM', 8602, '', 0, '', 'San Miguel', 1),
(587, 'MO', 8602, '', 0, '', 'Morazan', 1),
(588, 'LU', 8602, '', 0, '', 'La Union', 1),
(589, 'LL', 8601, '', 0, '', 'La Libertad', 1),
(590, 'CH', 8601, '', 0, '', 'Chalatenango', 1),
(591, 'CA', 8601, '', 0, '', 'Cabañas', 1),
(592, 'LP', 8601, '', 0, '', 'La Paz', 1),
(593, 'SV', 8601, '', 0, '', 'San Vicente', 1),
(594, 'CU', 8601, '', 0, '', 'Cuscatlan', 1),
(595, '2301', 2301, '', 0, 'CATAMARCA', 'Catamarca', 1),
(596, '2302', 2301, '', 0, 'JUJUY', 'Jujuy', 1),
(597, '2303', 2301, '', 0, 'TUCAMAN', 'Tucamán', 1),
(598, '2304', 2301, '', 0, 'SANTIAGO DEL ESTERO', 'Santiago del Estero', 1),
(599, '2305', 2301, '', 0, 'SALTA', 'Salta', 1),
(600, '2306', 2302, '', 0, 'CHACO', 'Chaco', 1),
(601, '2307', 2302, '', 0, 'CORRIENTES', 'Corrientes', 1),
(602, '2308', 2302, '', 0, 'ENTRE RIOS', 'Entre Ríos', 1),
(603, '2309', 2302, '', 0, 'FORMOSA MISIONES', 'Formosa Misiones', 1),
(604, '2310', 2302, '', 0, 'SANTA FE', 'Santa Fe', 1),
(605, '2311', 2303, '', 0, 'LA RIOJA', 'La Rioja', 1),
(606, '2312', 2303, '', 0, 'MENDOZA', 'Mendoza', 1),
(607, '2313', 2303, '', 0, 'SAN JUAN', 'San Juan', 1),
(608, '2314', 2303, '', 0, 'SAN LUIS', 'San Luis', 1),
(609, '2315', 2304, '', 0, 'CORDOBA', 'Córdoba', 1),
(610, '2316', 2304, '', 0, 'BUENOS AIRES', 'Buenos Aires', 1),
(611, '2317', 2304, '', 0, 'CABA', 'Caba', 1),
(612, '2318', 2305, '', 0, 'LA PAMPA', 'La Pampa', 1),
(613, '2319', 2305, '', 0, 'NEUQUEN', 'Neuquén', 1),
(614, '2320', 2305, '', 0, 'RIO NEGRO', 'Río Negro', 1),
(615, '2321', 2305, '', 0, 'CHUBUT', 'Chubut', 1),
(616, '2322', 2305, '', 0, 'SANTA CRUZ', 'Santa Cruz', 1),
(617, '2323', 2305, '', 0, 'TIERRA DEL FUEGO', 'Tierra del Fuego', 1),
(618, '2324', 2305, '', 0, 'ISLAS MALVINAS', 'Islas Malvinas', 1),
(619, '2325', 2305, '', 0, 'ANTARTIDA', 'Antártida', 1),
(620, 'AC', 5601, 'ACRE', 0, 'AC', 'Acre', 1),
(621, 'AL', 5601, 'ALAGOAS', 0, 'AL', 'Alagoas', 1),
(622, 'AP', 5601, 'AMAPA', 0, 'AP', 'Amapá', 1),
(623, 'AM', 5601, 'AMAZONAS', 0, 'AM', 'Amazonas', 1),
(624, 'BA', 5601, 'BAHIA', 0, 'BA', 'Bahia', 1),
(625, 'CE', 5601, 'CEARA', 0, 'CE', 'Ceará', 1),
(626, 'ES', 5601, 'ESPIRITO SANTO', 0, 'ES', 'Espirito Santo', 1),
(627, 'GO', 5601, 'GOIAS', 0, 'GO', 'Goiás', 1),
(628, 'MA', 5601, 'MARANHAO', 0, 'MA', 'Maranhão', 1),
(629, 'MT', 5601, 'MATO GROSSO', 0, 'MT', 'Mato Grosso', 1),
(630, 'MS', 5601, 'MATO GROSSO DO SUL', 0, 'MS', 'Mato Grosso do Sul', 1),
(631, 'MG', 5601, 'MINAS GERAIS', 0, 'MG', 'Minas Gerais', 1),
(632, 'PA', 5601, 'PARA', 0, 'PA', 'Pará', 1),
(633, 'PB', 5601, 'PARAIBA', 0, 'PB', 'Paraiba', 1),
(634, 'PR', 5601, 'PARANA', 0, 'PR', 'Paraná', 1),
(635, 'PE', 5601, 'PERNAMBUCO', 0, 'PE', 'Pernambuco', 1),
(636, 'PI', 5601, 'PIAUI', 0, 'PI', 'Piauí', 1),
(637, 'RJ', 5601, 'RIO DE JANEIRO', 0, 'RJ', 'Rio de Janeiro', 1),
(638, 'RN', 5601, 'RIO GRANDE DO NORTE', 0, 'RN', 'Rio Grande do Norte', 1),
(639, 'RS', 5601, 'RIO GRANDE DO SUL', 0, 'RS', 'Rio Grande do Sul', 1),
(640, 'RO', 5601, 'RONDONIA', 0, 'RO', 'Rondônia', 1),
(641, 'RR', 5601, 'RORAIMA', 0, 'RR', 'Roraima', 1),
(642, 'SC', 5601, 'SANTA CATARINA', 0, 'SC', 'Santa Catarina', 1),
(643, 'SE', 5601, 'SERGIPE', 0, 'SE', 'Sergipe', 1),
(644, 'SP', 5601, 'SAO PAULO', 0, 'SP', 'Sao Paulo', 1),
(645, 'TO', 5601, 'TOCANTINS', 0, 'TO', 'Tocantins', 1),
(646, 'DF', 5601, 'DISTRITO FEDERAL', 0, 'DF', 'Distrito Federal', 1),
(647, '151', 6715, '', 0, '151', 'Arica', 1),
(648, '152', 6715, '', 0, '152', 'Parinacota', 1),
(649, '011', 6701, '', 0, '011', 'Iquique', 1),
(650, '014', 6701, '', 0, '014', 'Tamarugal', 1),
(651, '021', 6702, '', 0, '021', 'Antofagasa', 1),
(652, '022', 6702, '', 0, '022', 'El Loa', 1),
(653, '023', 6702, '', 0, '023', 'Tocopilla', 1),
(654, '031', 6703, '', 0, '031', 'Copiapó', 1),
(655, '032', 6703, '', 0, '032', 'Chañaral', 1),
(656, '033', 6703, '', 0, '033', 'Huasco', 1),
(657, '041', 6704, '', 0, '041', 'Elqui', 1),
(658, '042', 6704, '', 0, '042', 'Choapa', 1),
(659, '043', 6704, '', 0, '043', 'Limarí', 1),
(660, '051', 6705, '', 0, '051', 'Valparaíso', 1),
(661, '052', 6705, '', 0, '052', 'Isla de Pascua', 1),
(662, '053', 6705, '', 0, '053', 'Los Andes', 1),
(663, '054', 6705, '', 0, '054', 'Petorca', 1),
(664, '055', 6705, '', 0, '055', 'Quillota', 1),
(665, '056', 6705, '', 0, '056', 'San Antonio', 1),
(666, '057', 6705, '', 0, '057', 'San Felipe de Aconcagua', 1),
(667, '058', 6705, '', 0, '058', 'Marga Marga', 1),
(668, '061', 6706, '', 0, '061', 'Cachapoal', 1),
(669, '062', 6706, '', 0, '062', 'Cardenal Caro', 1),
(670, '063', 6706, '', 0, '063', 'Colchagua', 1),
(671, '071', 6707, '', 0, '071', 'Talca', 1),
(672, '072', 6707, '', 0, '072', 'Cauquenes', 1),
(673, '073', 6707, '', 0, '073', 'Curicó', 1),
(674, '074', 6707, '', 0, '074', 'Linares', 1),
(675, '081', 6708, '', 0, '081', 'Concepción', 1),
(676, '082', 6708, '', 0, '082', 'Arauco', 1),
(677, '083', 6708, '', 0, '083', 'Biobío', 1),
(678, '084', 6708, '', 0, '084', 'Ñuble', 1),
(679, '091', 6709, '', 0, '091', 'Cautín', 1),
(680, '092', 6709, '', 0, '092', 'Malleco', 1),
(681, '141', 6714, '', 0, '141', 'Valdivia', 1),
(682, '142', 6714, '', 0, '142', 'Ranco', 1),
(683, '101', 6710, '', 0, '101', 'Llanquihue', 1),
(684, '102', 6710, '', 0, '102', 'Chiloé', 1),
(685, '103', 6710, '', 0, '103', 'Osorno', 1),
(686, '104', 6710, '', 0, '104', 'Palena', 1),
(687, '111', 6711, '', 0, '111', 'Coihaique', 1),
(688, '112', 6711, '', 0, '112', 'Aisén', 1),
(689, '113', 6711, '', 0, '113', 'Capitán Prat', 1),
(690, '114', 6711, '', 0, '114', 'General Carrera', 1),
(691, '121', 6712, '', 0, '121', 'Magallanes', 1),
(692, '122', 6712, '', 0, '122', 'Antártica Chilena', 1),
(693, '123', 6712, '', 0, '123', 'Tierra del Fuego', 1),
(694, '124', 6712, '', 0, '124', 'Última Esperanza', 1),
(695, '131', 6713, '', 0, '131', 'Santiago', 1),
(696, '132', 6713, '', 0, '132', 'Cordillera', 1),
(697, '133', 6713, '', 0, '133', 'Chacabuco', 1),
(698, '134', 6713, '', 0, '134', 'Maipo', 1),
(699, '135', 6713, '', 0, '135', 'Melipilla', 1),
(700, '136', 6713, '', 0, '136', 'Talagante', 1),
(701, 'AN', 11701, NULL, 0, 'AN', 'Andaman & Nicobar', 1),
(702, 'AP', 11701, NULL, 0, 'AP', 'Andhra Pradesh', 1),
(703, 'AR', 11701, NULL, 0, 'AR', 'Arunachal Pradesh', 1),
(704, 'AS', 11701, NULL, 0, 'AS', 'Assam', 1),
(705, 'BR', 11701, NULL, 0, 'BR', 'Bihar', 1),
(706, 'CG', 11701, NULL, 0, 'CG', 'Chattisgarh', 1),
(707, 'CH', 11701, NULL, 0, 'CH', 'Chandigarh', 1),
(708, 'DD', 11701, NULL, 0, 'DD', 'Daman & Diu', 1),
(709, 'DL', 11701, NULL, 0, 'DL', 'Delhi', 1),
(710, 'DN', 11701, NULL, 0, 'DN', 'Dadra and Nagar Haveli', 1),
(711, 'GA', 11701, NULL, 0, 'GA', 'Goa', 1),
(712, 'GJ', 11701, NULL, 0, 'GJ', 'Gujarat', 1),
(713, 'HP', 11701, NULL, 0, 'HP', 'Himachal Pradesh', 1),
(714, 'HR', 11701, NULL, 0, 'HR', 'Haryana', 1),
(715, 'JH', 11701, NULL, 0, 'JH', 'Jharkhand', 1),
(716, 'JK', 11701, NULL, 0, 'JK', 'Jammu & Kashmir', 1),
(717, 'KA', 11701, NULL, 0, 'KA', 'Karnataka', 1),
(718, 'KL', 11701, NULL, 0, 'KL', 'Kerala', 1),
(719, 'LD', 11701, NULL, 0, 'LD', 'Lakshadweep', 1),
(720, 'MH', 11701, NULL, 0, 'MH', 'Maharashtra', 1),
(721, 'ML', 11701, NULL, 0, 'ML', 'Meghalaya', 1),
(722, 'MN', 11701, NULL, 0, 'MN', 'Manipur', 1),
(723, 'MP', 11701, NULL, 0, 'MP', 'Madhya Pradesh', 1),
(724, 'MZ', 11701, NULL, 0, 'MZ', 'Mizoram', 1),
(725, 'NL', 11701, NULL, 0, 'NL', 'Nagaland', 1),
(726, 'OR', 11701, NULL, 0, 'OR', 'Orissa', 1),
(727, 'PB', 11701, NULL, 0, 'PB', 'Punjab', 1),
(728, 'PY', 11701, NULL, 0, 'PY', 'Puducherry', 1),
(729, 'RJ', 11701, NULL, 0, 'RJ', 'Rajasthan', 1),
(730, 'SK', 11701, NULL, 0, 'SK', 'Sikkim', 1),
(731, 'TN', 11701, NULL, 0, 'TN', 'Tamil Nadu', 1),
(732, 'TR', 11701, NULL, 0, 'TR', 'Tripura', 1),
(733, 'UL', 11701, NULL, 0, 'UL', 'Uttarakhand', 1),
(734, 'UP', 11701, NULL, 0, 'UP', 'Uttar Pradesh', 1),
(735, 'WB', 11701, NULL, 0, 'WB', 'West Bengal', 1),
(736, 'DIF', 15401, '', 0, 'DIF', 'Distrito Federal', 1),
(737, 'AGS', 15401, '', 0, 'AGS', 'Aguascalientes', 1),
(738, 'BCN', 15401, '', 0, 'BCN', 'Baja California Norte', 1),
(739, 'BCS', 15401, '', 0, 'BCS', 'Baja California Sur', 1),
(740, 'CAM', 15401, '', 0, 'CAM', 'Campeche', 1),
(741, 'CHP', 15401, '', 0, 'CHP', 'Chiapas', 1),
(742, 'CHI', 15401, '', 0, 'CHI', 'Chihuahua', 1),
(743, 'COA', 15401, '', 0, 'COA', 'Coahuila', 1),
(744, 'COL', 15401, '', 0, 'COL', 'Colima', 1),
(745, 'DUR', 15401, '', 0, 'DUR', 'Durango', 1),
(746, 'GTO', 15401, '', 0, 'GTO', 'Guanajuato', 1),
(747, 'GRO', 15401, '', 0, 'GRO', 'Guerrero', 1),
(748, 'HGO', 15401, '', 0, 'HGO', 'Hidalgo', 1),
(749, 'JAL', 15401, '', 0, 'JAL', 'Jalisco', 1),
(750, 'MEX', 15401, '', 0, 'MEX', 'México', 1),
(751, 'MIC', 15401, '', 0, 'MIC', 'Michoacán de Ocampo', 1),
(752, 'MOR', 15401, '', 0, 'MOR', 'Morelos', 1),
(753, 'NAY', 15401, '', 0, 'NAY', 'Nayarit', 1),
(754, 'NLE', 15401, '', 0, 'NLE', 'Nuevo León', 1),
(755, 'OAX', 15401, '', 0, 'OAX', 'Oaxaca', 1),
(756, 'PUE', 15401, '', 0, 'PUE', 'Puebla', 1),
(757, 'QRO', 15401, '', 0, 'QRO', 'Querétaro', 1),
(758, 'ROO', 15401, '', 0, 'ROO', 'Quintana Roo', 1),
(759, 'SLP', 15401, '', 0, 'SLP', 'San Luis Potosí', 1),
(760, 'SIN', 15401, '', 0, 'SIN', 'Sinaloa', 1),
(761, 'SON', 15401, '', 0, 'SON', 'Sonora', 1),
(762, 'TAB', 15401, '', 0, 'TAB', 'Tabasco', 1),
(763, 'TAM', 15401, '', 0, 'TAM', 'Tamaulipas', 1),
(764, 'TLX', 15401, '', 0, 'TLX', 'Tlaxcala', 1),
(765, 'VER', 15401, '', 0, 'VER', 'Veracruz', 1),
(766, 'YUC', 15401, '', 0, 'YUC', 'Yucatán', 1),
(767, 'ZAC', 15401, '', 0, 'ZAC', 'Zacatecas', 1),
(768, 'ANT', 7001, '', 0, 'ANT', 'Antioquia', 1),
(769, 'BOL', 7001, '', 0, 'BOL', 'Bolívar', 1),
(770, 'BOY', 7001, '', 0, 'BOY', 'Boyacá', 1),
(771, 'CAL', 7001, '', 0, 'CAL', 'Caldas', 1),
(772, 'CAU', 7001, '', 0, 'CAU', 'Cauca', 1),
(773, 'CUN', 7001, '', 0, 'CUN', 'Cundinamarca', 1),
(774, 'HUI', 7001, '', 0, 'HUI', 'Huila', 1),
(775, 'LAG', 7001, '', 0, 'LAG', 'La Guajira', 1),
(776, 'MET', 7001, '', 0, 'MET', 'Meta', 1),
(777, 'NAR', 7001, '', 0, 'NAR', 'Nariño', 1),
(778, 'NDS', 7001, '', 0, 'NDS', 'Norte de Santander', 1),
(779, 'SAN', 7001, '', 0, 'SAN', 'Santander', 1),
(780, 'SUC', 7001, '', 0, 'SUC', 'Sucre', 1),
(781, 'TOL', 7001, '', 0, 'TOL', 'Tolima', 1),
(782, 'VAC', 7001, '', 0, 'VAC', 'Valle del Cauca', 1),
(783, 'RIS', 7001, '', 0, 'RIS', 'Risalda', 1),
(784, 'ATL', 7001, '', 0, 'ATL', 'Atlántico', 1),
(785, 'COR', 7001, '', 0, 'COR', 'Córdoba', 1),
(786, 'SAP', 7001, '', 0, 'SAP', 'San Andrés, Providencia y Santa Catalina', 1),
(787, 'ARA', 7001, '', 0, 'ARA', 'Arauca', 1),
(788, 'CAS', 7001, '', 0, 'CAS', 'Casanare', 1),
(789, 'AMA', 7001, '', 0, 'AMA', 'Amazonas', 1),
(790, 'CAQ', 7001, '', 0, 'CAQ', 'Caquetá', 1),
(791, 'CHO', 7001, '', 0, 'CHO', 'Chocó', 1),
(792, 'GUA', 7001, '', 0, 'GUA', 'Guainía', 1),
(793, 'GUV', 7001, '', 0, 'GUV', 'Guaviare', 1),
(794, 'PUT', 7001, '', 0, 'PUT', 'Putumayo', 1),
(795, 'QUI', 7001, '', 0, 'QUI', 'Quindío', 1),
(796, 'VAU', 7001, '', 0, 'VAU', 'Vaupés', 1),
(797, 'BOG', 7001, '', 0, 'BOG', 'Bogotá', 1),
(798, 'VID', 7001, '', 0, 'VID', 'Vichada', 1),
(799, 'CES', 7001, '', 0, 'CES', 'Cesar', 1),
(800, 'MAG', 7001, '', 0, 'MAG', 'Magdalena', 1),
(801, 'AT', 11401, '', 0, 'AT', 'Atlántida', 1),
(802, 'CH', 11401, '', 0, 'CH', 'Choluteca', 1),
(803, 'CL', 11401, '', 0, 'CL', 'Colón', 1),
(804, 'CM', 11401, '', 0, 'CM', 'Comayagua', 1),
(805, 'CO', 11401, '', 0, 'CO', 'Copán', 1),
(806, 'CR', 11401, '', 0, 'CR', 'Cortés', 1),
(807, 'EP', 11401, '', 0, 'EP', 'El Paraíso', 1),
(808, 'FM', 11401, '', 0, 'FM', 'Francisco Morazán', 1),
(809, 'GD', 11401, '', 0, 'GD', 'Gracias a Dios', 1),
(810, 'IN', 11401, '', 0, 'IN', 'Intibucá', 1),
(811, 'IB', 11401, '', 0, 'IB', 'Islas de la Bahía', 1),
(812, 'LP', 11401, '', 0, 'LP', 'La Paz', 1),
(813, 'LM', 11401, '', 0, 'LM', 'Lempira', 1),
(814, 'OC', 11401, '', 0, 'OC', 'Ocotepeque', 1),
(815, 'OL', 11401, '', 0, 'OL', 'Olancho', 1),
(816, 'SB', 11401, '', 0, 'SB', 'Santa Bárbara', 1),
(817, 'VL', 11401, '', 0, 'VL', 'Valle', 1),
(818, 'YO', 11401, '', 0, 'YO', 'Yoro', 1),
(819, 'DC', 11401, '', 0, 'DC', 'Distrito Central', 1),
(820, 'CC', 4601, 'Oistins', 0, 'CC', 'Christ Church', 1),
(821, 'SA', 4601, 'Greenland', 0, 'SA', 'Saint Andrew', 1),
(822, 'SG', 4601, 'Bulkeley', 0, 'SG', 'Saint George', 1),
(823, 'JA', 4601, 'Holetown', 0, 'JA', 'Saint James', 1),
(824, 'SJ', 4601, 'Four Roads', 0, 'SJ', 'Saint John', 1),
(825, 'SB', 4601, 'Bathsheba', 0, 'SB', 'Saint Joseph', 1),
(826, 'SL', 4601, 'Crab Hill', 0, 'SL', 'Saint Lucy', 1),
(827, 'SM', 4601, 'Bridgetown', 0, 'SM', 'Saint Michael', 1),
(828, 'SP', 4601, 'Speightstown', 0, 'SP', 'Saint Peter', 1),
(829, 'SC', 4601, 'Crane', 0, 'SC', 'Saint Philip', 1),
(830, 'ST', 4601, 'Hillaby', 0, 'ST', 'Saint Thomas', 1),
(831, 'VE-L', 23201, '', 0, 'VE-L', 'Mérida', 1),
(832, 'VE-T', 23201, '', 0, 'VE-T', 'Trujillo', 1),
(833, 'VE-E', 23201, '', 0, 'VE-E', 'Barinas', 1),
(834, 'VE-M', 23202, '', 0, 'VE-M', 'Miranda', 1),
(835, 'VE-W', 23202, '', 0, 'VE-W', 'Vargas', 1),
(836, 'VE-A', 23202, '', 0, 'VE-A', 'Distrito Capital', 1),
(837, 'VE-D', 23203, '', 0, 'VE-D', 'Aragua', 1),
(838, 'VE-G', 23203, '', 0, 'VE-G', 'Carabobo', 1),
(839, 'VE-I', 23204, '', 0, 'VE-I', 'Falcón', 1),
(840, 'VE-K', 23204, '', 0, 'VE-K', 'Lara', 1),
(841, 'VE-U', 23204, '', 0, 'VE-U', 'Yaracuy', 1),
(842, 'VE-F', 23205, '', 0, 'VE-F', 'Bolívar', 1),
(843, 'VE-X', 23205, '', 0, 'VE-X', 'Amazonas', 1),
(844, 'VE-Y', 23205, '', 0, 'VE-Y', 'Delta Amacuro', 1),
(845, 'VE-O', 23206, '', 0, 'VE-O', 'Nueva Esparta', 1),
(846, 'VE-Z', 23206, '', 0, 'VE-Z', 'Dependencias Federales', 1),
(847, 'VE-C', 23207, '', 0, 'VE-C', 'Apure', 1),
(848, 'VE-J', 23207, '', 0, 'VE-J', 'Guárico', 1),
(849, 'VE-H', 23207, '', 0, 'VE-H', 'Cojedes', 1),
(850, 'VE-P', 23207, '', 0, 'VE-P', 'Portuguesa', 1),
(851, 'VE-B', 23208, '', 0, 'VE-B', 'Anzoátegui', 1),
(852, 'VE-N', 23208, '', 0, 'VE-N', 'Monagas', 1),
(853, 'VE-R', 23208, '', 0, 'VE-R', 'Sucre', 1),
(854, 'VE-V', 23209, '', 0, 'VE-V', 'Zulia', 1),
(855, 'VE-S', 23209, '', 0, 'VE-S', 'Táchira', 1),
(856, 'AL01', 1301, '', 0, '', 'Wilaya d''Adrar', 1),
(857, 'AL02', 1301, '', 0, '', 'Wilaya de Chlef', 1),
(858, 'AL03', 1301, '', 0, '', 'Wilaya de Laghouat', 1),
(859, 'AL04', 1301, '', 0, '', 'Wilaya d''Oum El Bouaghi', 1),
(860, 'AL05', 1301, '', 0, '', 'Wilaya de Batna', 1),
(861, 'AL06', 1301, '', 0, '', 'Wilaya de Béjaïa', 1),
(862, 'AL07', 1301, '', 0, '', 'Wilaya de Biskra', 1),
(863, 'AL08', 1301, '', 0, '', 'Wilaya de Béchar', 1),
(864, 'AL09', 1301, '', 0, '', 'Wilaya de Blida', 1),
(865, 'AL11', 1301, '', 0, '', 'Wilaya de Bouira', 1),
(866, 'AL12', 1301, '', 0, '', 'Wilaya de Tamanrasset', 1),
(867, 'AL13', 1301, '', 0, '', 'Wilaya de Tébessa', 1),
(868, 'AL14', 1301, '', 0, '', 'Wilaya de Tlemcen', 1),
(869, 'AL15', 1301, '', 0, '', 'Wilaya de Tiaret', 1),
(870, 'AL16', 1301, '', 0, '', 'Wilaya de Tizi Ouzou', 1),
(871, 'AL17', 1301, '', 0, '', 'Wilaya d''Alger', 1),
(872, 'AL18', 1301, '', 0, '', 'Wilaya de Djelfa', 1),
(873, 'AL19', 1301, '', 0, '', 'Wilaya de Jijel', 1),
(874, 'AL20', 1301, '', 0, '', 'Wilaya de Sétif	', 1),
(875, 'AL21', 1301, '', 0, '', 'Wilaya de Saïda', 1),
(876, 'AL22', 1301, '', 0, '', 'Wilaya de Skikda', 1),
(877, 'AL23', 1301, '', 0, '', 'Wilaya de Sidi Bel Abbès', 1),
(878, 'AL24', 1301, '', 0, '', 'Wilaya d''Annaba', 1),
(879, 'AL25', 1301, '', 0, '', 'Wilaya de Guelma', 1),
(880, 'AL26', 1301, '', 0, '', 'Wilaya de Constantine', 1),
(881, 'AL27', 1301, '', 0, '', 'Wilaya de Médéa', 1),
(882, 'AL28', 1301, '', 0, '', 'Wilaya de Mostaganem', 1),
(883, 'AL29', 1301, '', 0, '', 'Wilaya de M''Sila', 1),
(884, 'AL30', 1301, '', 0, '', 'Wilaya de Mascara', 1),
(885, 'AL31', 1301, '', 0, '', 'Wilaya d''Ouargla', 1),
(886, 'AL32', 1301, '', 0, '', 'Wilaya d''Oran', 1),
(887, 'AL33', 1301, '', 0, '', 'Wilaya d''El Bayadh', 1),
(888, 'AL34', 1301, '', 0, '', 'Wilaya d''Illizi', 1),
(889, 'AL35', 1301, '', 0, '', 'Wilaya de Bordj Bou Arreridj', 1),
(890, 'AL36', 1301, '', 0, '', 'Wilaya de Boumerdès', 1),
(891, 'AL37', 1301, '', 0, '', 'Wilaya d''El Tarf', 1),
(892, 'AL38', 1301, '', 0, '', 'Wilaya de Tindouf', 1),
(893, 'AL39', 1301, '', 0, '', 'Wilaya de Tissemsilt', 1),
(894, 'AL40', 1301, '', 0, '', 'Wilaya d''El Oued', 1),
(895, 'AL41', 1301, '', 0, '', 'Wilaya de Khenchela', 1),
(896, 'AL42', 1301, '', 0, '', 'Wilaya de Souk Ahras', 1),
(897, 'AL43', 1301, '', 0, '', 'Wilaya de Tipaza', 1),
(898, 'AL44', 1301, '', 0, '', 'Wilaya de Mila', 1),
(899, 'AL45', 1301, '', 0, '', 'Wilaya d''Aïn Defla', 1),
(900, 'AL46', 1301, '', 0, '', 'Wilaya de Naâma', 1),
(901, 'AL47', 1301, '', 0, '', 'Wilaya d''Aïn Témouchent', 1),
(902, 'AL48', 1301, '', 0, '', 'Wilaya de Ghardaia', 1),
(903, 'AL49', 1301, '', 0, '', 'Wilaya de Relizane', 1),
(904, 'MA', 1209, '', 0, '', 'Province de Benslimane', 1),
(905, 'MA1', 1209, '', 0, '', 'Province de Berrechid', 1),
(906, 'MA2', 1209, '', 0, '', 'Province de Khouribga', 1),
(907, 'MA3', 1209, '', 0, '', 'Province de Settat', 1),
(908, 'MA4', 1210, '', 0, '', 'Province d''El Jadida', 1),
(909, 'MA5', 1210, '', 0, '', 'Province de Safi', 1),
(910, 'MA6', 1210, '', 0, '', 'Province de Sidi Bennour', 1),
(911, 'MA7', 1210, '', 0, '', 'Province de Youssoufia', 1),
(912, 'MA6B', 1205, '', 0, '', 'Préfecture de Fès', 1),
(913, 'MA7B', 1205, '', 0, '', 'Province de Boulemane', 1),
(914, 'MA8', 1205, '', 0, '', 'Province de Moulay Yacoub', 1),
(915, 'MA9', 1205, '', 0, '', 'Province de Sefrou', 1),
(916, 'MA8A', 1202, '', 0, '', 'Province de Kénitra', 1),
(917, 'MA9A', 1202, '', 0, '', 'Province de Sidi Kacem', 1),
(918, 'MA10', 1202, '', 0, '', 'Province de Sidi Slimane', 1),
(919, 'MA11', 1208, '', 0, '', 'Préfecture de Casablanca', 1),
(920, 'MA12', 1208, '', 0, '', 'Préfecture de Mohammédia', 1),
(921, 'MA13', 1208, '', 0, '', 'Province de Médiouna', 1),
(922, 'MA14', 1208, '', 0, '', 'Province de Nouaceur', 1),
(923, 'MA15', 1214, '', 0, '', 'Province d''Assa-Zag', 1),
(924, 'MA16', 1214, '', 0, '', 'Province d''Es-Semara', 1),
(925, 'MA17A', 1214, '', 0, '', 'Province de Guelmim', 1),
(926, 'MA18', 1214, '', 0, '', 'Province de Tata', 1),
(927, 'MA19', 1214, '', 0, '', 'Province de Tan-Tan', 1),
(928, 'MA15', 1215, '', 0, '', 'Province de Boujdour', 1),
(929, 'MA16', 1215, '', 0, '', 'Province de Lâayoune', 1),
(930, 'MA17', 1215, '', 0, '', 'Province de Tarfaya', 1),
(931, 'MA18', 1211, '', 0, '', 'Préfecture de Marrakech', 1),
(932, 'MA19', 1211, '', 0, '', 'Province d''Al Haouz', 1),
(933, 'MA20', 1211, '', 0, '', 'Province de Chichaoua', 1),
(934, 'MA21', 1211, '', 0, '', 'Province d''El Kelâa des Sraghna', 1),
(935, 'MA22', 1211, '', 0, '', 'Province d''Essaouira', 1),
(936, 'MA23', 1211, '', 0, '', 'Province de Rehamna', 1),
(937, 'MA24', 1206, '', 0, '', 'Préfecture de Meknès', 1),
(938, 'MA25', 1206, '', 0, '', 'Province d’El Hajeb', 1),
(939, 'MA26', 1206, '', 0, '', 'Province d''Errachidia', 1),
(940, 'MA27', 1206, '', 0, '', 'Province d’Ifrane', 1),
(941, 'MA28', 1206, '', 0, '', 'Province de Khénifra', 1),
(942, 'MA29', 1206, '', 0, '', 'Province de Midelt', 1),
(943, 'MA30', 1204, '', 0, '', 'Préfecture d''Oujda-Angad', 1),
(944, 'MA31', 1204, '', 0, '', 'Province de Berkane', 1),
(945, 'MA32', 1204, '', 0, '', 'Province de Driouch', 1),
(946, 'MA33', 1204, '', 0, '', 'Province de Figuig', 1),
(947, 'MA34', 1204, '', 0, '', 'Province de Jerada', 1),
(948, 'MA35', 1204, '', 0, '', 'Province de Nadorgg', 1),
(949, 'MA36', 1204, '', 0, '', 'Province de Taourirt', 1),
(950, 'MA37', 1216, '', 0, '', 'Province d''Aousserd', 1),
(951, 'MA38', 1216, '', 0, '', 'Province d''Oued Ed-Dahab', 1),
(952, 'MA39', 1207, '', 0, '', 'Préfecture de Rabat', 1),
(953, 'MA40', 1207, '', 0, '', 'Préfecture de Skhirat-Témara', 1),
(954, 'MA41', 1207, '', 0, '', 'Préfecture de Salé', 1),
(955, 'MA42', 1207, '', 0, '', 'Province de Khémisset', 1),
(956, 'MA43', 1213, '', 0, '', 'Préfecture d''Agadir Ida-Outanane', 1),
(957, 'MA44', 1213, '', 0, '', 'Préfecture d''Inezgane-Aït Melloul', 1),
(958, 'MA45', 1213, '', 0, '', 'Province de Chtouka-Aït Baha', 1),
(959, 'MA46', 1213, '', 0, '', 'Province d''Ouarzazate', 1),
(960, 'MA47', 1213, '', 0, '', 'Province de Sidi Ifni', 1),
(961, 'MA48', 1213, '', 0, '', 'Province de Taroudant', 1),
(962, 'MA49', 1213, '', 0, '', 'Province de Tinghir', 1),
(963, 'MA50', 1213, '', 0, '', 'Province de Tiznit', 1),
(964, 'MA51', 1213, '', 0, '', 'Province de Zagora', 1),
(965, 'MA52', 1212, '', 0, '', 'Province d''Azilal', 1),
(966, 'MA53', 1212, '', 0, '', 'Province de Beni Mellal', 1),
(967, 'MA54', 1212, '', 0, '', 'Province de Fquih Ben Salah', 1),
(968, 'MA55', 1201, '', 0, '', 'Préfecture de M''diq-Fnideq', 1),
(969, 'MA56', 1201, '', 0, '', 'Préfecture de Tanger-Asilah', 1),
(970, 'MA57', 1201, '', 0, '', 'Province de Chefchaouen', 1),
(971, 'MA58', 1201, '', 0, '', 'Province de Fahs-Anjra', 1);
INSERT INTO `llx_c_departements` (`rowid`, `code_departement`, `fk_region`, `cheflieu`, `tncc`, `ncc`, `nom`, `active`) VALUES
(972, 'MA59', 1201, '', 0, '', 'Province de Larache', 1),
(973, 'MA60', 1201, '', 0, '', 'Province d''Ouezzane', 1),
(974, 'MA61', 1201, '', 0, '', 'Province de Tétouan', 1),
(975, 'MA62', 1203, '', 0, '', 'Province de Guercif', 1),
(976, 'MA63', 1203, '', 0, '', 'Province d''Al Hoceïma', 1),
(977, 'MA64', 1203, '', 0, '', 'Province de Taounate', 1),
(978, 'MA65', 1203, '', 0, '', 'Province de Taza', 1),
(979, 'MA6A', 1205, '', 0, '', 'Préfecture de Fès', 1),
(980, 'MA7A', 1205, '', 0, '', 'Province de Boulemane', 1),
(981, 'MA15A', 1214, '', 0, '', 'Province d''Assa-Zag', 1),
(982, 'MA16A', 1214, '', 0, '', 'Province d''Es-Semara', 1),
(983, 'MA18A', 1211, '', 0, '', 'Préfecture de Marrakech', 1),
(984, 'MA19A', 1214, '', 0, '', 'Province de Tan-Tan', 1),
(985, 'MA19B', 1214, '', 0, '', 'Province de Tan-Tan', 1),
(986, 'TN01', 1001, '', 0, '', 'Ariana', 1),
(987, 'TN02', 1001, '', 0, '', 'Béja', 1),
(988, 'TN03', 1001, '', 0, '', 'Ben Arous', 1),
(989, 'TN04', 1001, '', 0, '', 'Bizerte', 1),
(990, 'TN05', 1001, '', 0, '', 'Gabès', 1),
(991, 'TN06', 1001, '', 0, '', 'Gafsa', 1),
(992, 'TN07', 1001, '', 0, '', 'Jendouba', 1),
(993, 'TN08', 1001, '', 0, '', 'Kairouan', 1),
(994, 'TN09', 1001, '', 0, '', 'Kasserine', 1),
(995, 'TN10', 1001, '', 0, '', 'Kébili', 1),
(996, 'TN11', 1001, '', 0, '', 'La Manouba', 1),
(997, 'TN12', 1001, '', 0, '', 'Le Kef', 1),
(998, 'TN13', 1001, '', 0, '', 'Mahdia', 1),
(999, 'TN14', 1001, '', 0, '', 'Médenine', 1),
(1000, 'TN15', 1001, '', 0, '', 'Monastir', 1),
(1001, 'TN16', 1001, '', 0, '', 'Nabeul', 1),
(1002, 'TN17', 1001, '', 0, '', 'Sfax', 1),
(1003, 'TN18', 1001, '', 0, '', 'Sidi Bouzid', 1),
(1004, 'TN19', 1001, '', 0, '', 'Siliana', 1),
(1005, 'TN20', 1001, '', 0, '', 'Sousse', 1),
(1006, 'TN21', 1001, '', 0, '', 'Tataouine', 1),
(1007, 'TN22', 1001, '', 0, '', 'Tozeur', 1),
(1008, 'TN23', 1001, '', 0, '', 'Tunis', 1),
(1009, 'TN24', 1001, '', 0, '', 'Zaghouan', 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_ecotaxe`
--

CREATE TABLE IF NOT EXISTS `llx_c_ecotaxe` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `price` double(24,8) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `fk_pays` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_ecotaxe` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `llx_c_ecotaxe`
--

INSERT INTO `llx_c_ecotaxe` (`rowid`, `code`, `libelle`, `price`, `organization`, `fk_pays`, `active`) VALUES
(1, 'ER-A-A', 'Materiels electriques < 0,2kg', 0.01000000, 'ERP', 1, 1),
(2, 'ER-A-B', 'Materiels electriques >= 0,2 kg et < 0,5 kg', 0.03000000, 'ERP', 1, 1),
(3, 'ER-A-C', 'Materiels electriques >= 0,5 kg et < 1 kg', 0.04000000, 'ERP', 1, 1),
(4, 'ER-A-D', 'Materiels electriques >= 1 kg et < 2 kg', 0.13000000, 'ERP', 1, 1),
(5, 'ER-A-E', 'Materiels electriques >= 2 kg et < 4kg', 0.21000000, 'ERP', 1, 1),
(6, 'ER-A-F', 'Materiels electriques >= 4 kg et < 8 kg', 0.42000000, 'ERP', 1, 1),
(7, 'ER-A-G', 'Materiels electriques >= 8 kg et < 15 kg', 0.84000000, 'ERP', 1, 1),
(8, 'ER-A-H', 'Materiels electriques >= 15 kg et < 20 kg', 1.25000000, 'ERP', 1, 1),
(9, 'ER-A-I', 'Materiels electriques >= 20 kg et < 30 kg', 1.88000000, 'ERP', 1, 1),
(10, 'ER-A-J', 'Materiels electriques >= 30 kg', 3.34000000, 'ERP', 1, 1),
(11, 'ER-M-1', 'TV, Moniteurs < 9kg', 0.84000000, 'ERP', 1, 1),
(12, 'ER-M-2', 'TV, Moniteurs >= 9kg et < 15kg', 1.67000000, 'ERP', 1, 1),
(13, 'ER-M-3', 'TV, Moniteurs >= 15kg et < 30kg', 3.34000000, 'ERP', 1, 1),
(14, 'ER-M-4', 'TV, Moniteurs >= 30 kg', 6.69000000, 'ERP', 1, 1),
(15, 'EC-A-A', 'Materiels electriques  0,2 kg max', 0.00840000, 'Ecologic', 1, 1),
(16, 'EC-A-B', 'Materiels electriques 0,21 kg min - 0,50 kg max', 0.02500000, 'Ecologic', 1, 1),
(17, 'EC-A-C', 'Materiels electriques  0,51 kg min - 1 kg max', 0.04000000, 'Ecologic', 1, 1),
(18, 'EC-A-D', 'Materiels electriques  1,01 kg min - 2,5 kg max', 0.13000000, 'Ecologic', 1, 1),
(19, 'EC-A-E', 'Materiels electriques  2,51 kg min - 4 kg max', 0.21000000, 'Ecologic', 1, 1),
(20, 'EC-A-F', 'Materiels electriques 4,01 kg min - 8 kg max', 0.42000000, 'Ecologic', 1, 1),
(21, 'EC-A-G', 'Materiels electriques  8,01 kg min - 12 kg max', 0.63000000, 'Ecologic', 1, 1),
(22, 'EC-A-H', 'Materiels electriques 12,01 kg min - 20 kg max', 1.05000000, 'Ecologic', 1, 1),
(23, 'EC-A-I', 'Materiels electriques  20,01 kg min', 1.88000000, 'Ecologic', 1, 1),
(24, 'EC-M-1', 'TV, Moniteurs 9 kg max', 0.84000000, 'Ecologic', 1, 1),
(25, 'EC-M-2', 'TV, Moniteurs 9,01 kg min - 18 kg max', 1.67000000, 'Ecologic', 1, 1),
(26, 'EC-M-3', 'TV, Moniteurs 18,01 kg min - 36 kg max', 3.34000000, 'Ecologic', 1, 1),
(27, 'EC-M-4', 'TV, Moniteurs 36,01 kg min', 6.69000000, 'Ecologic', 1, 1),
(28, 'ES-M-1', 'TV, Moniteurs <= 20 pouces', 0.84000000, 'Eco-systemes', 1, 1),
(29, 'ES-M-2', 'TV, Moniteurs > 20 pouces et <= 32 pouces', 3.34000000, 'Eco-systemes', 1, 1),
(30, 'ES-M-3', 'TV, Moniteurs > 32 pouces et autres grands ecrans', 6.69000000, 'Eco-systemes', 1, 1),
(31, 'ES-A-A', 'Ordinateur fixe, Audio home systems (HIFI), elements hifi separes', 0.84000000, 'Eco-systemes', 1, 1),
(32, 'ES-A-B', 'Ordinateur portable, CD-RCR, VCR, lecteurs et enregistreurs DVD, instruments de musique et caisses de resonance, haut parleurs...', 0.25000000, 'Eco-systemes', 1, 1),
(33, 'ES-A-C', 'Imprimante, photocopieur, telecopieur', 0.42000000, 'Eco-systemes', 1, 1),
(34, 'ES-A-D', 'Accessoires, clavier, souris, PDA, imprimante photo, appareil photo, gps, telephone, repondeur, telephone sans fil, modem, telecommande, casque, camescope, baladeur mp3, radio portable, radio K7 et CD portable, radio reveil', 0.08400000, 'Eco-systemes', 1, 1),
(35, 'ES-A-E', 'GSM', 0.00840000, 'Eco-systemes', 1, 1),
(36, 'ES-A-F', 'Jouets et equipements de loisirs et de sports < 0,5 kg', 0.04200000, 'Eco-systemes', 1, 1),
(37, 'ES-A-G', 'Jouets et equipements de loisirs et de sports > 0,5 kg', 0.17000000, 'Eco-systemes', 1, 1),
(38, 'ES-A-H', 'Jouets et equipements de loisirs et de sports > 10 kg', 1.25000000, 'Eco-systemes', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_effectif`
--

CREATE TABLE IF NOT EXISTS `llx_c_effectif` (
  `id` int(11) NOT NULL,
  `code` varchar(12) NOT NULL,
  `libelle` varchar(30) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_c_effectif` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `llx_c_effectif`
--

INSERT INTO `llx_c_effectif` (`id`, `code`, `libelle`, `active`, `module`) VALUES
(0, 'EF0', '-', 1, NULL),
(1, 'EF1-5', '1 - 5', 1, NULL),
(2, 'EF6-10', '6 - 10', 1, NULL),
(3, 'EF11-50', '11 - 50', 1, NULL),
(4, 'EF51-100', '51 - 100', 1, NULL),
(5, 'EF100-500', '100 - 500', 1, NULL),
(6, 'EF500-', '> 500', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_email_templates`
--

CREATE TABLE IF NOT EXISTS `llx_c_email_templates` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `type_template` varchar(32) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_field_list`
--

CREATE TABLE IF NOT EXISTS `llx_c_field_list` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `element` varchar(64) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `name` varchar(32) NOT NULL,
  `alias` varchar(32) NOT NULL,
  `title` varchar(32) NOT NULL,
  `align` varchar(6) DEFAULT 'left',
  `sort` tinyint(4) NOT NULL DEFAULT '1',
  `search` tinyint(4) NOT NULL DEFAULT '0',
  `enabled` varchar(255) DEFAULT '1',
  `rang` int(11) DEFAULT '0',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_forme_juridique`
--

CREATE TABLE IF NOT EXISTS `llx_c_forme_juridique` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` int(11) NOT NULL,
  `fk_pays` int(11) NOT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `isvatexempted` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_forme_juridique` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=192 ;

--
-- Dumping data for table `llx_c_forme_juridique`
--

INSERT INTO `llx_c_forme_juridique` (`rowid`, `code`, `fk_pays`, `libelle`, `isvatexempted`, `active`, `module`) VALUES
(1, 0, 0, '-', 0, 1, NULL),
(2, 2301, 23, 'Monotributista', 0, 1, NULL),
(3, 2302, 23, 'Sociedad Civil', 0, 1, NULL),
(4, 2303, 23, 'Sociedades Comerciales', 0, 1, NULL),
(5, 2304, 23, 'Sociedades de Hecho', 0, 1, NULL),
(6, 2305, 23, 'Sociedades Irregulares', 0, 1, NULL),
(7, 2306, 23, 'Sociedad Colectiva', 0, 1, NULL),
(8, 2307, 23, 'Sociedad en Comandita Simple', 0, 1, NULL),
(9, 2308, 23, 'Sociedad de Capital e Industria', 0, 1, NULL),
(10, 2309, 23, 'Sociedad Accidental o en participación', 0, 1, NULL),
(11, 2310, 23, 'Sociedad de Responsabilidad Limitada', 0, 1, NULL),
(12, 2311, 23, 'Sociedad Anónima', 0, 1, NULL),
(13, 2312, 23, 'Sociedad Anónima con Participación Estatal Mayoritaria', 0, 1, NULL),
(14, 2313, 23, 'Sociedad en Comandita por Acciones (arts. 315 a 324, LSC)', 0, 1, NULL),
(15, 11, 1, 'Artisan Commerçant (EI)', 0, 1, NULL),
(16, 12, 1, 'Commerçant (EI)', 0, 1, NULL),
(17, 13, 1, 'Artisan (EI)', 0, 1, NULL),
(18, 14, 1, 'Officier public ou ministériel', 0, 1, NULL),
(19, 15, 1, 'Profession libérale (EI)', 0, 1, NULL),
(20, 16, 1, 'Exploitant agricole', 0, 1, NULL),
(21, 17, 1, 'Agent commercial', 0, 1, NULL),
(22, 18, 1, 'Associé Gérant de société', 0, 1, NULL),
(23, 19, 1, 'Personne physique', 0, 1, NULL),
(24, 21, 1, 'Indivision', 0, 1, NULL),
(25, 22, 1, 'Société créée de fait', 0, 1, NULL),
(26, 23, 1, 'Société en participation', 0, 1, NULL),
(27, 27, 1, 'Paroisse hors zone concordataire', 0, 1, NULL),
(28, 29, 1, 'Groupement de droit privé non doté de la personnalité morale', 0, 1, NULL),
(29, 31, 1, 'Personne morale de droit étranger, immatriculée au RCS', 0, 1, NULL),
(30, 32, 1, 'Personne morale de droit étranger, non immatriculée au RCS', 0, 1, NULL),
(31, 35, 1, 'Régime auto-entrepreneur', 0, 1, NULL),
(32, 41, 1, 'Établissement public ou régie à caractère industriel ou commercial', 0, 1, NULL),
(33, 51, 1, 'Société coopérative commerciale particulière', 0, 1, NULL),
(34, 52, 1, 'Société en nom collectif', 0, 1, NULL),
(35, 53, 1, 'Société en commandite', 0, 1, NULL),
(36, 54, 1, 'Société à responsabilité limitée (SARL)', 0, 1, NULL),
(37, 55, 1, 'Société anonyme à conseil d administration', 0, 1, NULL),
(38, 56, 1, 'Société anonyme à directoire', 0, 1, NULL),
(39, 57, 1, 'Société par actions simplifiée (SAS)', 0, 1, NULL),
(40, 58, 1, 'Entreprise Unipersonnelle à Responsabilité Limitée (EURL)', 0, 1, NULL),
(41, 59, 1, 'Société par actions simplifiée unipersonnelle (SASU)', 0, 1, NULL),
(42, 61, 1, 'Caisse d''épargne et de prévoyance', 0, 1, NULL),
(43, 62, 1, 'Groupement d''intérêt économique (GIE)', 0, 1, NULL),
(44, 63, 1, 'Société coopérative agricole', 0, 1, NULL),
(45, 64, 1, 'Société non commerciale d assurances', 0, 1, NULL),
(46, 65, 1, 'Société civile', 0, 1, NULL),
(47, 69, 1, 'Personnes de droit privé inscrites au RCS', 0, 1, NULL),
(48, 71, 1, 'Administration de l état', 0, 1, NULL),
(49, 72, 1, 'Collectivité territoriale', 0, 1, NULL),
(50, 73, 1, 'Établissement public administratif', 0, 1, NULL),
(51, 74, 1, 'Personne morale de droit public administratif', 0, 1, NULL),
(52, 81, 1, 'Organisme gérant régime de protection social à adhésion obligatoire', 0, 1, NULL),
(53, 82, 1, 'Organisme mutualiste', 0, 1, NULL),
(54, 83, 1, 'Comité d entreprise', 0, 1, NULL),
(55, 84, 1, 'Organisme professionnel', 0, 1, NULL),
(56, 85, 1, 'Organisme de retraite à adhésion non obligatoire', 0, 1, NULL),
(57, 91, 1, 'Syndicat de propriétaires', 0, 1, NULL),
(58, 92, 1, 'Association loi 1901 ou assimilé', 0, 1, NULL),
(59, 93, 1, 'Fondation', 0, 1, NULL),
(60, 99, 1, 'Personne morale de droit privé', 0, 1, NULL),
(61, 200, 2, 'Indépendant', 0, 1, NULL),
(62, 201, 2, 'SPRL - Société à responsabilité limitée', 0, 1, NULL),
(63, 202, 2, 'SA   - Société Anonyme', 0, 1, NULL),
(64, 203, 2, 'SCRL - Société coopérative à responsabilité limitée', 0, 1, NULL),
(65, 204, 2, 'ASBL - Association sans but Lucratif', 0, 1, NULL),
(66, 205, 2, 'SCRI - Société coopérative à responsabilité illimitée', 0, 1, NULL),
(67, 206, 2, 'SCS  - Société en commandite simple', 0, 1, NULL),
(68, 207, 2, 'SCA  - Société en commandite par action', 0, 1, NULL),
(69, 208, 2, 'SNC  - Société en nom collectif', 0, 1, NULL),
(70, 209, 2, 'GIE  - Groupement d intérêt économique', 0, 1, NULL),
(71, 210, 2, 'GEIE - Groupement européen d intérêt économique', 0, 1, NULL),
(72, 220, 2, 'Eenmanszaak', 0, 1, NULL),
(73, 221, 2, 'BVBA - Besloten vennootschap met beperkte aansprakelijkheid', 0, 1, NULL),
(74, 222, 2, 'NV   - Naamloze Vennootschap', 0, 1, NULL),
(75, 223, 2, 'CVBA - Coöperatieve vennootschap met beperkte aansprakelijkheid', 0, 1, NULL),
(76, 224, 2, 'VZW  - Vereniging zonder winstoogmerk', 0, 1, NULL),
(77, 225, 2, 'CVOA - Coöperatieve vennootschap met onbeperkte aansprakelijkheid ', 0, 1, NULL),
(78, 226, 2, 'GCV  - Gewone commanditaire vennootschap', 0, 1, NULL),
(79, 227, 2, 'Comm.VA - Commanditaire vennootschap op aandelen', 0, 1, NULL),
(80, 228, 2, 'VOF  - Vennootschap onder firma', 0, 1, NULL),
(81, 229, 2, 'VS0  - Vennootschap met sociaal oogmerk', 0, 1, NULL),
(82, 500, 5, 'GmbH - Gesellschaft mit beschränkter Haftung', 0, 1, NULL),
(83, 501, 5, 'AG - Aktiengesellschaft ', 0, 1, NULL),
(84, 502, 5, 'GmbH&Co. KG - Gesellschaft mit beschränkter Haftung & Compagnie Kommanditgesellschaft', 0, 1, NULL),
(85, 503, 5, 'Gewerbe - Personengesellschaft', 0, 1, NULL),
(86, 504, 5, 'UG - Unternehmergesellschaft -haftungsbeschränkt-', 0, 1, NULL),
(87, 505, 5, 'GbR - Gesellschaft des bürgerlichen Rechts', 0, 1, NULL),
(88, 506, 5, 'KG - Kommanditgesellschaft', 0, 1, NULL),
(89, 507, 5, 'Ltd. - Limited Company', 0, 1, NULL),
(90, 508, 5, 'OHG - Offene Handelsgesellschaft', 0, 1, NULL),
(91, 10201, 102, '??????? ??????????', 0, 1, NULL),
(92, 10202, 102, '????????  ??????????', 0, 1, NULL),
(93, 10203, 102, '????????? ???????? ?.?', 0, 1, NULL),
(94, 10204, 102, '??????????? ???????? ?.?', 0, 1, NULL),
(95, 10205, 102, '???????? ????????????? ??????? ?.?.?', 0, 1, NULL),
(96, 10206, 102, '??????? ???????? ?.?', 0, 1, NULL),
(97, 10207, 102, '??????? ?????????? ???????? ?.?.?', 0, 1, NULL),
(98, 10208, 102, '?????????????', 0, 1, NULL),
(99, 10209, 102, '??????????????', 0, 1, NULL),
(100, 301, 3, 'Società semplice', 0, 1, NULL),
(101, 302, 3, 'Società in nome collettivo s.n.c.', 0, 1, NULL),
(102, 303, 3, 'Società in accomandita semplice s.a.s.', 0, 1, NULL),
(103, 304, 3, 'Società per azioni s.p.a.', 0, 1, NULL),
(104, 305, 3, 'Società a responsabilità limitata s.r.l.', 0, 1, NULL),
(105, 306, 3, 'Società in accomandita per azioni s.a.p.a.', 0, 1, NULL),
(106, 307, 3, 'Società cooperativa a r.l.', 0, 1, NULL),
(107, 308, 3, 'Società consortile', 0, 1, NULL),
(108, 309, 3, 'Società europea', 0, 1, NULL),
(109, 310, 3, 'Società cooperativa europea', 0, 1, NULL),
(110, 311, 3, 'Società unipersonale', 0, 1, NULL),
(111, 312, 3, 'Società di professionisti', 0, 1, NULL),
(112, 313, 3, 'Società di fatto', 0, 1, NULL),
(113, 315, 3, 'Società apparente', 0, 1, NULL),
(114, 316, 3, 'Impresa individuale ', 0, 1, NULL),
(115, 317, 3, 'Impresa coniugale', 0, 1, NULL),
(116, 318, 3, 'Impresa familiare', 0, 1, NULL),
(117, 319, 3, 'Consorzio cooperativo', 0, 1, NULL),
(118, 320, 3, 'Società cooperativa sociale', 0, 1, NULL),
(119, 321, 3, 'Società cooperativa di consumo', 0, 1, NULL),
(120, 322, 3, 'Società cooperativa agricola', 0, 1, NULL),
(121, 323, 3, 'A.T.I. Associazione temporanea di imprese', 0, 1, NULL),
(122, 324, 3, 'R.T.I. Raggruppamento temporaneo di imprese', 0, 1, NULL),
(123, 325, 3, 'Studio associato', 0, 1, NULL),
(124, 600, 6, 'Raison Individuelle', 0, 1, NULL),
(125, 601, 6, 'Société Simple', 0, 1, NULL),
(126, 602, 6, 'Société en nom collectif', 0, 1, NULL),
(127, 603, 6, 'Société en commandite', 0, 1, NULL),
(128, 604, 6, 'Société anonyme (SA)', 0, 1, NULL),
(129, 605, 6, 'Société en commandite par actions', 0, 1, NULL),
(130, 606, 6, 'Société à responsabilité limitée (SARL)', 0, 1, NULL),
(131, 607, 6, 'Société coopérative', 0, 1, NULL),
(132, 608, 6, 'Association', 0, 1, NULL),
(133, 609, 6, 'Fondation', 0, 1, NULL),
(134, 700, 7, 'Sole Trader', 0, 1, NULL),
(135, 701, 7, 'Partnership', 0, 1, NULL),
(136, 702, 7, 'Private Limited Company by shares (LTD)', 0, 1, NULL),
(137, 703, 7, 'Public Limited Company', 0, 1, NULL),
(138, 704, 7, 'Workers Cooperative', 0, 1, NULL),
(139, 705, 7, 'Limited Liability Partnership', 0, 1, NULL),
(140, 706, 7, 'Franchise', 0, 1, NULL),
(141, 1000, 10, 'Société à responsabilité limitée (SARL)', 0, 1, NULL),
(142, 1001, 10, 'Société en Nom Collectif (SNC)', 0, 1, NULL),
(143, 1002, 10, 'Société en Commandite Simple (SCS)', 0, 1, NULL),
(144, 1003, 10, 'société en participation', 0, 1, NULL),
(145, 1004, 10, 'Société Anonyme (SA)', 0, 1, NULL),
(146, 1005, 10, 'Société Unipersonnelle à Responsabilité Limitée (SUARL)', 0, 1, NULL),
(147, 1006, 10, 'Groupement d''intérêt économique (GEI)', 0, 1, NULL),
(148, 1007, 10, 'Groupe de sociétés', 0, 1, NULL),
(149, 1701, 17, 'Eenmanszaak', 0, 1, NULL),
(150, 1702, 17, 'Maatschap', 0, 1, NULL),
(151, 1703, 17, 'Vennootschap onder firma', 0, 1, NULL),
(152, 1704, 17, 'Commanditaire vennootschap', 0, 1, NULL),
(153, 1705, 17, 'Besloten vennootschap (BV)', 0, 1, NULL),
(154, 1706, 17, 'Naamloze Vennootschap (NV)', 0, 1, NULL),
(155, 1707, 17, 'Vereniging', 0, 1, NULL),
(156, 1708, 17, 'Stichting', 0, 1, NULL),
(157, 1709, 17, 'Coöperatie met beperkte aansprakelijkheid (BA)', 0, 1, NULL),
(158, 1710, 17, 'Coöperatie met uitgesloten aansprakelijkheid (UA)', 0, 1, NULL),
(159, 1711, 17, 'Coöperatie met wettelijke aansprakelijkheid (WA)', 0, 1, NULL),
(160, 1712, 17, 'Onderlinge waarborgmaatschappij', 0, 1, NULL),
(161, 401, 4, 'Empresario Individual', 0, 1, NULL),
(162, 402, 4, 'Comunidad de Bienes', 0, 1, NULL),
(163, 403, 4, 'Sociedad Civil', 0, 1, NULL),
(164, 404, 4, 'Sociedad Colectiva', 0, 1, NULL),
(165, 405, 4, 'Sociedad Limitada', 0, 1, NULL),
(166, 406, 4, 'Sociedad Anónima', 0, 1, NULL),
(167, 407, 4, 'Sociedad Comanditaria por Acciones', 0, 1, NULL),
(168, 408, 4, 'Sociedad Comanditaria Simple', 0, 1, NULL),
(169, 409, 4, 'Sociedad Laboral', 0, 1, NULL),
(170, 410, 4, 'Sociedad Cooperativa', 0, 1, NULL),
(171, 411, 4, 'Sociedad de Garantía Recíproca', 0, 1, NULL),
(172, 412, 4, 'Entidad de Capital-Riesgo', 0, 1, NULL),
(173, 413, 4, 'Agrupación de Interés Económico', 0, 1, NULL),
(174, 414, 4, 'Sociedad de Inversión Mobiliaria', 0, 1, NULL),
(175, 415, 4, 'Agrupación sin Ánimo de Lucro', 0, 1, NULL),
(176, 15201, 152, 'Mauritius Private Company Limited By Shares', 0, 1, NULL),
(177, 15202, 152, 'Mauritius Company Limited By Guarantee', 0, 1, NULL),
(178, 15203, 152, 'Mauritius Public Company Limited By Shares', 0, 1, NULL),
(179, 15204, 152, 'Mauritius Foreign Company', 0, 1, NULL),
(180, 15205, 152, 'Mauritius GBC1 (Offshore Company)', 0, 1, NULL),
(181, 15206, 152, 'Mauritius GBC2 (International Company)', 0, 1, NULL),
(182, 15207, 152, 'Mauritius General Partnership', 0, 1, NULL),
(183, 15208, 152, 'Mauritius Limited Partnership', 0, 1, NULL),
(184, 15209, 152, 'Mauritius Sole Proprietorship', 0, 1, NULL),
(185, 15210, 152, 'Mauritius Trusts', 0, 1, NULL),
(186, 15401, 154, 'Sociedad en nombre colectivo', 0, 1, NULL),
(187, 15402, 154, 'Sociedad en comandita simple', 0, 1, NULL),
(188, 15403, 154, 'Sociedad de responsabilidad limitada', 0, 1, NULL),
(189, 15404, 154, 'Sociedad anónima', 0, 1, NULL),
(190, 15405, 154, 'Sociedad en comandita por acciones', 0, 1, NULL),
(191, 15406, 154, 'Sociedad cooperativa', 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_input_method`
--

CREATE TABLE IF NOT EXISTS `llx_c_input_method` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(30) DEFAULT NULL,
  `libelle` varchar(60) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_input_method` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `llx_c_input_method`
--

INSERT INTO `llx_c_input_method` (`rowid`, `code`, `libelle`, `active`, `module`) VALUES
(1, 'OrderByMail', 'Courrier', 1, NULL),
(2, 'OrderByFax', 'Fax', 1, NULL),
(3, 'OrderByEMail', 'EMail', 1, NULL),
(4, 'OrderByPhone', 'Téléphone', 1, NULL),
(5, 'OrderByWWW', 'En ligne', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_input_reason`
--

CREATE TABLE IF NOT EXISTS `llx_c_input_reason` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(30) DEFAULT NULL,
  `label` varchar(60) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_input_reason` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `llx_c_input_reason`
--

INSERT INTO `llx_c_input_reason` (`rowid`, `code`, `label`, `active`, `module`) VALUES
(1, 'SRC_INTE', 'Web site', 1, NULL),
(2, 'SRC_CAMP_MAIL', 'Mailing campaign', 1, NULL),
(3, 'SRC_CAMP_PHO', 'Phone campaign', 1, NULL),
(4, 'SRC_CAMP_FAX', 'Fax campaign', 1, NULL),
(5, 'SRC_COMM', 'Commercial contact', 1, NULL),
(6, 'SRC_SHOP', 'Shop contact', 1, NULL),
(7, 'SRC_CAMP_EMAIL', 'EMailing campaign', 1, NULL),
(8, 'SRC_WOM', 'Word of mouth', 1, NULL),
(9, 'SRC_PARTNER', 'Partner', 1, NULL),
(10, 'SRC_EMPLOYEE', 'Employee', 1, NULL),
(11, 'SRC_SPONSORING', 'Sponsorship', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_paiement`
--

CREATE TABLE IF NOT EXISTS `llx_c_paiement` (
  `id` int(11) NOT NULL,
  `code` varchar(6) NOT NULL,
  `libelle` varchar(30) DEFAULT NULL,
  `type` smallint(6) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_c_paiement` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `llx_c_paiement`
--

INSERT INTO `llx_c_paiement` (`id`, `code`, `libelle`, `type`, `active`, `module`) VALUES
(0, '', '-', 3, 1, NULL),
(1, 'TIP', 'TIP', 2, 1, NULL),
(2, 'VIR', 'Virement', 2, 1, NULL),
(3, 'PRE', 'Prélèvement', 2, 1, NULL),
(4, 'LIQ', 'Espèces', 2, 1, NULL),
(6, 'CB', 'Carte Bancaire', 2, 1, NULL),
(7, 'CHQ', 'Chèque', 2, 1, NULL),
(50, 'VAD', 'Paiement en ligne', 2, 0, NULL),
(51, 'TRA', 'Traite', 2, 0, NULL),
(52, 'LCR', 'LCR', 2, 0, NULL),
(53, 'FAC', 'Factor', 2, 0, NULL),
(54, 'PRO', 'Proforma', 2, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_paper_format`
--

CREATE TABLE IF NOT EXISTS `llx_c_paper_format` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(16) NOT NULL,
  `label` varchar(50) NOT NULL,
  `width` float(6,2) DEFAULT '0.00',
  `height` float(6,2) DEFAULT '0.00',
  `unit` varchar(5) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=226 ;

--
-- Dumping data for table `llx_c_paper_format`
--

INSERT INTO `llx_c_paper_format` (`rowid`, `code`, `label`, `width`, `height`, `unit`, `active`, `module`) VALUES
(1, 'EU4A0', 'Format 4A0', 1682.00, 2378.00, 'mm', 1, NULL),
(2, 'EU2A0', 'Format 2A0', 1189.00, 1682.00, 'mm', 1, NULL),
(3, 'EUA0', 'Format A0', 840.00, 1189.00, 'mm', 1, NULL),
(4, 'EUA1', 'Format A1', 594.00, 840.00, 'mm', 1, NULL),
(5, 'EUA2', 'Format A2', 420.00, 594.00, 'mm', 1, NULL),
(6, 'EUA3', 'Format A3', 297.00, 420.00, 'mm', 1, NULL),
(7, 'EUA4', 'Format A4', 210.00, 297.00, 'mm', 1, NULL),
(8, 'EUA5', 'Format A5', 148.00, 210.00, 'mm', 1, NULL),
(9, 'EUA6', 'Format A6', 105.00, 148.00, 'mm', 1, NULL),
(100, 'USLetter', 'Format Letter (A)', 216.00, 279.00, 'mm', 1, NULL),
(105, 'USLegal', 'Format Legal', 216.00, 356.00, 'mm', 1, NULL),
(110, 'USExecutive', 'Format Executive', 190.00, 254.00, 'mm', 1, NULL),
(115, 'USLedger', 'Format Ledger/Tabloid (B)', 279.00, 432.00, 'mm', 1, NULL),
(200, 'CAP1', 'Format Canadian P1', 560.00, 860.00, 'mm', 1, NULL),
(205, 'CAP2', 'Format Canadian P2', 430.00, 560.00, 'mm', 1, NULL),
(210, 'CAP3', 'Format Canadian P3', 280.00, 430.00, 'mm', 1, NULL),
(215, 'CAP4', 'Format Canadian P4', 215.00, 280.00, 'mm', 1, NULL),
(220, 'CAP5', 'Format Canadian P5', 140.00, 215.00, 'mm', 1, NULL),
(225, 'CAP6', 'Format Canadian P6', 107.00, 140.00, 'mm', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_payment_term`
--

CREATE TABLE IF NOT EXISTS `llx_c_payment_term` (
  `rowid` int(11) NOT NULL,
  `code` varchar(16) DEFAULT NULL,
  `sortorder` smallint(6) DEFAULT NULL,
  `active` tinyint(4) DEFAULT '1',
  `libelle` varchar(255) DEFAULT NULL,
  `libelle_facture` text,
  `fdm` tinyint(4) DEFAULT NULL,
  `nbjour` smallint(6) DEFAULT NULL,
  `decalage` smallint(6) DEFAULT NULL,
  `module` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `llx_c_payment_term`
--

INSERT INTO `llx_c_payment_term` (`rowid`, `code`, `sortorder`, `active`, `libelle`, `libelle_facture`, `fdm`, `nbjour`, `decalage`, `module`) VALUES
(1, 'RECEP', 1, 1, 'A réception de facture', 'Réception de facture', 0, 0, NULL, NULL),
(2, '30D', 2, 1, '30 jours', 'Réglement à 30 jours', 0, 30, NULL, NULL),
(3, '30DENDMONTH', 3, 1, '30 jours fin de mois', 'Réglement à 30 jours fin de mois', 1, 30, NULL, NULL),
(4, '60D', 4, 1, '60 jours', 'Réglement à 60 jours', 0, 60, NULL, NULL),
(5, '60DENDMONTH', 5, 1, '60 jours fin de mois', 'Réglement à 60 jours fin de mois', 1, 60, NULL, NULL),
(6, 'PT_ORDER', 6, 1, 'A réception de commande', 'A réception de commande', 0, 0, NULL, NULL),
(7, 'PT_DELIVERY', 7, 1, 'Livraison', 'Règlement à la livraison', 0, 0, NULL, NULL),
(8, 'PT_5050', 8, 1, '50 et 50', 'Règlement 50% à la commande, 50% à la livraison', 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_pays`
--

CREATE TABLE IF NOT EXISTS `llx_c_pays` (
  `rowid` int(11) NOT NULL,
  `code` varchar(2) NOT NULL,
  `code_iso` varchar(3) DEFAULT NULL,
  `libelle` varchar(50) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `idx_c_country_code` (`code`),
  UNIQUE KEY `idx_c_pays_libelle` (`libelle`),
  UNIQUE KEY `idx_c_country_code_iso` (`code_iso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `llx_c_pays`
--

INSERT INTO `llx_c_pays` (`rowid`, `code`, `code_iso`, `libelle`, `active`) VALUES
(0, '', NULL, '-', 1),
(1, 'FR', NULL, 'France', 1),
(2, 'BE', NULL, 'Belgium', 1),
(3, 'IT', NULL, 'Italy', 1),
(4, 'ES', NULL, 'Spain', 1),
(5, 'DE', NULL, 'Germany', 1),
(6, 'CH', NULL, 'Switzerland', 1),
(7, 'GB', NULL, 'United Kingdom', 1),
(8, 'IE', NULL, 'Irland', 1),
(9, 'CN', NULL, 'China', 1),
(10, 'TN', NULL, 'Tunisia', 1),
(11, 'US', NULL, 'United States', 1),
(12, 'MA', NULL, 'Maroc', 1),
(13, 'DZ', NULL, 'Algeria', 1),
(14, 'CA', NULL, 'Canada', 1),
(15, 'TG', NULL, 'Togo', 1),
(16, 'GA', NULL, 'Gabon', 1),
(17, 'NL', NULL, 'Nerderland', 1),
(18, 'HU', NULL, 'Hongrie', 1),
(19, 'RU', NULL, 'Russia', 1),
(20, 'SE', NULL, 'Sweden', 1),
(21, 'CI', NULL, 'Côte d''Ivoire', 1),
(22, 'SN', NULL, 'Senegal', 1),
(23, 'AR', NULL, 'Argentine', 1),
(24, 'CM', NULL, 'Cameroun', 1),
(25, 'PT', NULL, 'Portugal', 1),
(26, 'SA', NULL, 'Saudi Arabia', 1),
(27, 'MC', NULL, 'Monaco', 1),
(28, 'AU', NULL, 'Australia', 1),
(29, 'SG', NULL, 'Singapour', 1),
(30, 'AF', NULL, 'Afghanistan', 1),
(31, 'AX', NULL, 'Iles Aland', 1),
(32, 'AL', NULL, 'Albanie', 1),
(33, 'AS', NULL, 'Samoa américaines', 1),
(34, 'AD', NULL, 'Andorre', 1),
(35, 'AO', NULL, 'Angola', 1),
(36, 'AI', NULL, 'Anguilla', 1),
(37, 'AQ', NULL, 'Antarctique', 1),
(38, 'AG', NULL, 'Antigua-et-Barbuda', 1),
(39, 'AM', NULL, 'Arménie', 1),
(40, 'AW', NULL, 'Aruba', 1),
(41, 'AT', NULL, 'Autriche', 1),
(42, 'AZ', NULL, 'Azerbaïdjan', 1),
(43, 'BS', NULL, 'Bahamas', 1),
(44, 'BH', NULL, 'Bahreïn', 1),
(45, 'BD', NULL, 'Bangladesh', 1),
(46, 'BB', NULL, 'Barbade', 1),
(47, 'BY', NULL, 'Biélorussie', 1),
(48, 'BZ', NULL, 'Belize', 1),
(49, 'BJ', NULL, 'Bénin', 1),
(50, 'BM', NULL, 'Bermudes', 1),
(51, 'BT', NULL, 'Bhoutan', 1),
(52, 'BO', NULL, 'Bolivie', 1),
(53, 'BA', NULL, 'Bosnie-Herzégovine', 1),
(54, 'BW', NULL, 'Botswana', 1),
(55, 'BV', NULL, 'Ile Bouvet', 1),
(56, 'BR', NULL, 'Brazil', 1),
(57, 'IO', NULL, 'Territoire britannique de l''Océan Indien', 1),
(58, 'BN', NULL, 'Brunei', 1),
(59, 'BG', NULL, 'Bulgarie', 1),
(60, 'BF', NULL, 'Burkina Faso', 1),
(61, 'BI', NULL, 'Burundi', 1),
(62, 'KH', NULL, 'Cambodge', 1),
(63, 'CV', NULL, 'Cap-Vert', 1),
(64, 'KY', NULL, 'Iles Cayman', 1),
(65, 'CF', NULL, 'République centrafricaine', 1),
(66, 'TD', NULL, 'Tchad', 1),
(67, 'CL', NULL, 'Chili', 1),
(68, 'CX', NULL, 'Ile Christmas', 1),
(69, 'CC', NULL, 'Iles des Cocos (Keeling)', 1),
(70, 'CO', NULL, 'Colombie', 1),
(71, 'KM', NULL, 'Comores', 1),
(72, 'CG', NULL, 'Congo', 1),
(73, 'CD', NULL, 'République démocratique du Congo', 1),
(74, 'CK', NULL, 'Iles Cook', 1),
(75, 'CR', NULL, 'Costa Rica', 1),
(76, 'HR', NULL, 'Croatie', 1),
(77, 'CU', NULL, 'Cuba', 1),
(78, 'CY', NULL, 'Chypre', 1),
(79, 'CZ', NULL, 'République Tchèque', 1),
(80, 'DK', NULL, 'Danemark', 1),
(81, 'DJ', NULL, 'Djibouti', 1),
(82, 'DM', NULL, 'Dominique', 1),
(83, 'DO', NULL, 'République Dominicaine', 1),
(84, 'EC', NULL, 'Equateur', 1),
(85, 'EG', NULL, 'Egypte', 1),
(86, 'SV', NULL, 'Salvador', 1),
(87, 'GQ', NULL, 'Guinée Equatoriale', 1),
(88, 'ER', NULL, 'Erythrée', 1),
(89, 'EE', NULL, 'Estonia', 1),
(90, 'ET', NULL, 'Ethiopie', 1),
(91, 'FK', NULL, 'Iles Falkland', 1),
(92, 'FO', NULL, 'Iles Féroé', 1),
(93, 'FJ', NULL, 'Iles Fidji', 1),
(94, 'FI', NULL, 'Finlande', 1),
(95, 'GF', NULL, 'Guyane française', 1),
(96, 'PF', NULL, 'Polynésie française', 1),
(97, 'TF', NULL, 'Terres australes françaises', 1),
(98, 'GM', NULL, 'Gambie', 1),
(99, 'GE', NULL, 'Georgia', 1),
(100, 'GH', NULL, 'Ghana', 1),
(101, 'GI', NULL, 'Gibraltar', 1),
(102, 'GR', NULL, 'Greece', 1),
(103, 'GL', NULL, 'Groenland', 1),
(104, 'GD', NULL, 'Grenade', 1),
(106, 'GU', NULL, 'Guam', 1),
(107, 'GT', NULL, 'Guatemala', 1),
(108, 'GN', NULL, 'Guinea', 1),
(109, 'GW', NULL, 'Guinea-Bissao', 1),
(111, 'HT', NULL, 'Haiti', 1),
(112, 'HM', NULL, 'Iles Heard et McDonald', 1),
(113, 'VA', NULL, 'Saint-Siège (Vatican)', 1),
(114, 'HN', NULL, 'Honduras', 1),
(115, 'HK', NULL, 'Hong Kong', 1),
(116, 'IS', NULL, 'Islande', 1),
(117, 'IN', NULL, 'India', 1),
(118, 'ID', NULL, 'Indonésie', 1),
(119, 'IR', NULL, 'Iran', 1),
(120, 'IQ', NULL, 'Iraq', 1),
(121, 'IL', NULL, 'Israel', 1),
(122, 'JM', NULL, 'Jamaïque', 1),
(123, 'JP', NULL, 'Japon', 1),
(124, 'JO', NULL, 'Jordanie', 1),
(125, 'KZ', NULL, 'Kazakhstan', 1),
(126, 'KE', NULL, 'Kenya', 1),
(127, 'KI', NULL, 'Kiribati', 1),
(128, 'KP', NULL, 'North Corea', 1),
(129, 'KR', NULL, 'South Corea', 1),
(130, 'KW', NULL, 'Koweït', 1),
(131, 'KG', NULL, 'Kirghizistan', 1),
(132, 'LA', NULL, 'Laos', 1),
(133, 'LV', NULL, 'Lettonie', 1),
(134, 'LB', NULL, 'Liban', 1),
(135, 'LS', NULL, 'Lesotho', 1),
(136, 'LR', NULL, 'Liberia', 1),
(137, 'LY', NULL, 'Libye', 1),
(138, 'LI', NULL, 'Liechtenstein', 1),
(139, 'LT', NULL, 'Lituanie', 1),
(140, 'LU', NULL, 'Luxembourg', 1),
(141, 'MO', NULL, 'Macao', 1),
(142, 'MK', NULL, 'ex-République yougoslave de Macédoine', 1),
(143, 'MG', NULL, 'Madagascar', 1),
(144, 'MW', NULL, 'Malawi', 1),
(145, 'MY', NULL, 'Malaisie', 1),
(146, 'MV', NULL, 'Maldives', 1),
(147, 'ML', NULL, 'Mali', 1),
(148, 'MT', NULL, 'Malte', 1),
(149, 'MH', NULL, 'Iles Marshall', 1),
(151, 'MR', NULL, 'Mauritanie', 1),
(152, 'MU', NULL, 'Maurice', 1),
(153, 'YT', NULL, 'Mayotte', 1),
(154, 'MX', NULL, 'Mexique', 1),
(155, 'FM', NULL, 'Micronésie', 1),
(156, 'MD', NULL, 'Moldavie', 1),
(157, 'MN', NULL, 'Mongolie', 1),
(158, 'MS', NULL, 'Monserrat', 1),
(159, 'MZ', NULL, 'Mozambique', 1),
(160, 'MM', NULL, 'Birmanie (Myanmar)', 1),
(161, 'NA', NULL, 'Namibie', 1),
(162, 'NR', NULL, 'Nauru', 1),
(163, 'NP', NULL, 'Népal', 1),
(164, 'AN', NULL, 'Antilles néerlandaises', 1),
(165, 'NC', NULL, 'Nouvelle-Calédonie', 1),
(166, 'NZ', NULL, 'Nouvelle-Zélande', 1),
(167, 'NI', NULL, 'Nicaragua', 1),
(168, 'NE', NULL, 'Niger', 1),
(169, 'NG', NULL, 'Nigeria', 1),
(170, 'NU', NULL, 'Nioué', 1),
(171, 'NF', NULL, 'Ile Norfolk', 1),
(172, 'MP', NULL, 'Mariannes du Nord', 1),
(173, 'NO', NULL, 'Norvège', 1),
(174, 'OM', NULL, 'Oman', 1),
(175, 'PK', NULL, 'Pakistan', 1),
(176, 'PW', NULL, 'Palaos', 1),
(177, 'PS', NULL, 'Territoire Palestinien Occupé', 1),
(178, 'PA', NULL, 'Panama', 1),
(179, 'PG', NULL, 'Papouasie-Nouvelle-Guinée', 1),
(180, 'PY', NULL, 'Paraguay', 1),
(181, 'PE', NULL, 'Peru', 1),
(182, 'PH', NULL, 'Philippines', 1),
(183, 'PN', NULL, 'Iles Pitcairn', 1),
(184, 'PL', NULL, 'Pologne', 1),
(185, 'PR', NULL, 'Porto Rico', 1),
(186, 'QA', NULL, 'Qatar', 1),
(188, 'RO', NULL, 'Roumanie', 1),
(189, 'RW', NULL, 'Rwanda', 1),
(190, 'SH', NULL, 'Sainte-Hélène', 1),
(191, 'KN', NULL, 'Saint-Christophe-et-Niévès', 1),
(192, 'LC', NULL, 'Sainte-Lucie', 1),
(193, 'PM', NULL, 'Saint-Pierre-et-Miquelon', 1),
(194, 'VC', NULL, 'Saint-Vincent-et-les-Grenadines', 1),
(195, 'WS', NULL, 'Samoa', 1),
(196, 'SM', NULL, 'Saint-Marin', 1),
(197, 'ST', NULL, 'Sao Tomé-et-Principe', 1),
(198, 'RS', NULL, 'Serbie', 1),
(199, 'SC', NULL, 'Seychelles', 1),
(200, 'SL', NULL, 'Sierra Leone', 1),
(201, 'SK', NULL, 'Slovaquie', 1),
(202, 'SI', NULL, 'Slovénie', 1),
(203, 'SB', NULL, 'Iles Salomon', 1),
(204, 'SO', NULL, 'Somalie', 1),
(205, 'ZA', NULL, 'Afrique du Sud', 1),
(206, 'GS', NULL, 'Iles Géorgie du Sud et Sandwich du Sud', 1),
(207, 'LK', NULL, 'Sri Lanka', 1),
(208, 'SD', NULL, 'Soudan', 1),
(209, 'SR', NULL, 'Suriname', 1),
(210, 'SJ', NULL, 'Iles Svalbard et Jan Mayen', 1),
(211, 'SZ', NULL, 'Swaziland', 1),
(212, 'SY', NULL, 'Syrie', 1),
(213, 'TW', NULL, 'Taïwan', 1),
(214, 'TJ', NULL, 'Tadjikistan', 1),
(215, 'TZ', NULL, 'Tanzanie', 1),
(216, 'TH', NULL, 'Thaïlande', 1),
(217, 'TL', NULL, 'Timor Oriental', 1),
(218, 'TK', NULL, 'Tokélaou', 1),
(219, 'TO', NULL, 'Tonga', 1),
(220, 'TT', NULL, 'Trinité-et-Tobago', 1),
(221, 'TR', NULL, 'Turquie', 1),
(222, 'TM', NULL, 'Turkménistan', 1),
(223, 'TC', NULL, 'Iles Turks-et-Caicos', 1),
(224, 'TV', NULL, 'Tuvalu', 1),
(225, 'UG', NULL, 'Ouganda', 1),
(226, 'UA', NULL, 'Ukraine', 1),
(227, 'AE', NULL, 'Émirats arabes unis', 1),
(228, 'UM', NULL, 'Iles mineures éloignées des États-Unis', 1),
(229, 'UY', NULL, 'Uruguay', 1),
(230, 'UZ', NULL, 'Ouzbékistan', 1),
(231, 'VU', NULL, 'Vanuatu', 1),
(232, 'VE', NULL, 'Vénézuela', 1),
(233, 'VN', NULL, 'Viêt Nam', 1),
(234, 'VG', NULL, 'Iles Vierges britanniques', 1),
(235, 'VI', NULL, 'Iles Vierges américaines', 1),
(236, 'WF', NULL, 'Wallis-et-Futuna', 1),
(237, 'EH', NULL, 'Sahara occidental', 1),
(238, 'YE', NULL, 'Yémen', 1),
(239, 'ZM', NULL, 'Zambie', 1),
(240, 'ZW', NULL, 'Zimbabwe', 1),
(241, 'GG', NULL, 'Guernesey', 1),
(242, 'IM', NULL, 'Ile de Man', 1),
(243, 'JE', NULL, 'Jersey', 1),
(244, 'ME', NULL, 'Monténégro', 1),
(245, 'BL', NULL, 'Saint-Barthélemy', 1),
(246, 'MF', NULL, 'Saint-Martin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_propalst`
--

CREATE TABLE IF NOT EXISTS `llx_c_propalst` (
  `id` smallint(6) NOT NULL,
  `code` varchar(12) NOT NULL,
  `label` varchar(30) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_c_propalst` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `llx_c_propalst`
--

INSERT INTO `llx_c_propalst` (`id`, `code`, `label`, `active`) VALUES
(0, 'PR_DRAFT', 'Brouillon', 1),
(1, 'PR_OPEN', 'Ouverte', 1),
(2, 'PR_SIGNED', 'Signée', 1),
(3, 'PR_NOTSIGNED', 'Non Signée', 1),
(4, 'PR_FAC', 'Facturée', 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_prospectlevel`
--

CREATE TABLE IF NOT EXISTS `llx_c_prospectlevel` (
  `code` varchar(12) NOT NULL,
  `label` varchar(30) DEFAULT NULL,
  `sortorder` smallint(6) DEFAULT NULL,
  `active` smallint(6) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `llx_c_prospectlevel`
--

INSERT INTO `llx_c_prospectlevel` (`code`, `label`, `sortorder`, `active`, `module`) VALUES
('PL_HIGH', 'High', 4, 1, NULL),
('PL_LOW', 'Low', 2, 1, NULL),
('PL_MEDIUM', 'Medium', 3, 1, NULL),
('PL_NONE', 'None', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_regions`
--

CREATE TABLE IF NOT EXISTS `llx_c_regions` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code_region` int(11) NOT NULL,
  `fk_pays` int(11) NOT NULL,
  `cheflieu` varchar(50) DEFAULT NULL,
  `tncc` int(11) DEFAULT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `code_region` (`code_region`),
  KEY `idx_c_regions_fk_pays` (`fk_pays`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23210 ;

--
-- Dumping data for table `llx_c_regions`
--

INSERT INTO `llx_c_regions` (`rowid`, `code_region`, `fk_pays`, `cheflieu`, `tncc`, `nom`, `active`) VALUES
(1, 0, 0, '0', 0, '-', 1),
(101, 1, 1, '97105', 3, 'Guadeloupe', 1),
(102, 2, 1, '97209', 3, 'Martinique', 1),
(103, 3, 1, '97302', 3, 'Guyane', 1),
(104, 4, 1, '97411', 3, 'Réunion', 1),
(105, 11, 1, '75056', 1, 'Île-de-France', 1),
(106, 21, 1, '51108', 0, 'Champagne-Ardenne', 1),
(107, 22, 1, '80021', 0, 'Picardie', 1),
(108, 23, 1, '76540', 0, 'Haute-Normandie', 1),
(109, 24, 1, '45234', 2, 'Centre', 1),
(110, 25, 1, '14118', 0, 'Basse-Normandie', 1),
(111, 26, 1, '21231', 0, 'Bourgogne', 1),
(112, 31, 1, '59350', 2, 'Nord-Pas-de-Calais', 1),
(113, 41, 1, '57463', 0, 'Lorraine', 1),
(114, 42, 1, '67482', 1, 'Alsace', 1),
(115, 43, 1, '25056', 0, 'Franche-Comté', 1),
(116, 52, 1, '44109', 4, 'Pays de la Loire', 1),
(117, 53, 1, '35238', 0, 'Bretagne', 1),
(118, 54, 1, '86194', 2, 'Poitou-Charentes', 1),
(119, 72, 1, '33063', 1, 'Aquitaine', 1),
(120, 73, 1, '31555', 0, 'Midi-Pyrénées', 1),
(121, 74, 1, '87085', 2, 'Limousin', 1),
(122, 82, 1, '69123', 2, 'Rhône-Alpes', 1),
(123, 83, 1, '63113', 1, 'Auvergne', 1),
(124, 91, 1, '34172', 2, 'Languedoc-Roussillon', 1),
(125, 93, 1, '13055', 0, 'Provence-Alpes-Côte d''Azur', 1),
(126, 94, 1, '2A004', 0, 'Corse', 1),
(201, 201, 2, '', 1, 'Flandre', 1),
(202, 202, 2, '', 2, 'Wallonie', 1),
(203, 203, 2, '', 3, 'Bruxelles-Capitale', 1),
(301, 301, 3, NULL, 1, 'Abruzzo', 1),
(302, 302, 3, NULL, 1, 'Basilicata', 1),
(303, 303, 3, NULL, 1, 'Calabria', 1),
(304, 304, 3, NULL, 1, 'Campania', 1),
(305, 305, 3, NULL, 1, 'Emilia-Romagna', 1),
(306, 306, 3, NULL, 1, 'Friuli-Venezia Giulia', 1),
(307, 307, 3, NULL, 1, 'Lazio', 1),
(308, 308, 3, NULL, 1, 'Liguria', 1),
(309, 309, 3, NULL, 1, 'Lombardia', 1),
(310, 310, 3, NULL, 1, 'Marche', 1),
(311, 311, 3, NULL, 1, 'Molise', 1),
(312, 312, 3, NULL, 1, 'Piemonte', 1),
(313, 313, 3, NULL, 1, 'Puglia', 1),
(314, 314, 3, NULL, 1, 'Sardegna', 1),
(315, 315, 3, NULL, 1, 'Sicilia', 1),
(316, 316, 3, NULL, 1, 'Toscana', 1),
(317, 317, 3, NULL, 1, 'Trentino-Alto Adige', 1),
(318, 318, 3, NULL, 1, 'Umbria', 1),
(319, 319, 3, NULL, 1, 'Valle d Aosta', 1),
(320, 320, 3, NULL, 1, 'Veneto', 1),
(401, 401, 4, '', 0, 'Andalucia', 1),
(402, 402, 4, '', 0, 'Aragón', 1),
(403, 403, 4, '', 0, 'Castilla y León', 1),
(404, 404, 4, '', 0, 'Castilla la Mancha', 1),
(405, 405, 4, '', 0, 'Canarias', 1),
(406, 406, 4, '', 0, 'Cataluña', 1),
(407, 407, 4, '', 0, 'Comunidad de Ceuta', 1),
(408, 408, 4, '', 0, 'Comunidad Foral de Navarra', 1),
(409, 409, 4, '', 0, 'Comunidad de Melilla', 1),
(410, 410, 4, '', 0, 'Cantabria', 1),
(411, 411, 4, '', 0, 'Comunidad Valenciana', 1),
(412, 412, 4, '', 0, 'Extemadura', 1),
(413, 413, 4, '', 0, 'Galicia', 1),
(414, 414, 4, '', 0, 'Islas Baleares', 1),
(415, 415, 4, '', 0, 'La Rioja', 1),
(416, 416, 4, '', 0, 'Comunidad de Madrid', 1),
(417, 417, 4, '', 0, 'Región de Murcia', 1),
(418, 418, 4, '', 0, 'Principado de Asturias', 1),
(419, 419, 4, '', 0, 'Pais Vasco', 1),
(420, 420, 4, '', 0, 'Otros', 1),
(501, 501, 5, '', 0, 'Deutschland', 1),
(601, 601, 6, '', 1, 'Cantons', 1),
(701, 701, 7, '', 0, 'England', 1),
(702, 702, 7, '', 0, 'Wales', 1),
(703, 703, 7, '', 0, 'Scotland', 1),
(704, 704, 7, '', 0, 'Northern Ireland', 1),
(1001, 1001, 10, '', 0, 'Ariana', 1),
(1002, 1002, 10, '', 0, 'Béja', 1),
(1003, 1003, 10, '', 0, 'Ben Arous', 1),
(1004, 1004, 10, '', 0, 'Bizerte', 1),
(1005, 1005, 10, '', 0, 'Gabès', 1),
(1006, 1006, 10, '', 0, 'Gafsa', 1),
(1007, 1007, 10, '', 0, 'Jendouba', 1),
(1008, 1008, 10, '', 0, 'Kairouan', 1),
(1009, 1009, 10, '', 0, 'Kasserine', 1),
(1010, 1010, 10, '', 0, 'Kébili', 1),
(1011, 1011, 10, '', 0, 'La Manouba', 1),
(1012, 1012, 10, '', 0, 'Le Kef', 1),
(1013, 1013, 10, '', 0, 'Mahdia', 1),
(1014, 1014, 10, '', 0, 'Médenine', 1),
(1015, 1015, 10, '', 0, 'Monastir', 1),
(1016, 1016, 10, '', 0, 'Nabeul', 1),
(1017, 1017, 10, '', 0, 'Sfax', 1),
(1018, 1018, 10, '', 0, 'Sidi Bouzid', 1),
(1019, 1019, 10, '', 0, 'Siliana', 1),
(1020, 1020, 10, '', 0, 'Sousse', 1),
(1021, 1021, 10, '', 0, 'Tataouine', 1),
(1022, 1022, 10, '', 0, 'Tozeur', 1),
(1023, 1023, 10, '', 0, 'Tunis', 1),
(1024, 1024, 10, '', 0, 'Zaghouan', 1),
(1101, 1101, 11, '', 0, 'United-States', 1),
(1201, 1201, 12, '', 0, 'Tanger-Tétouan', 1),
(1202, 1202, 12, '', 0, 'Gharb-Chrarda-Beni Hssen', 1),
(1203, 1203, 12, '', 0, 'Taza-Al Hoceima-Taounate', 1),
(1204, 1204, 12, '', 0, 'L''Oriental', 1),
(1205, 1205, 12, '', 0, 'Fès-Boulemane', 1),
(1206, 1206, 12, '', 0, 'Meknès-Tafialet', 1),
(1207, 1207, 12, '', 0, 'Rabat-Salé-Zemour-Zaër', 1),
(1208, 1208, 12, '', 0, 'Grand Cassablanca', 1),
(1209, 1209, 12, '', 0, 'Chaouia-Ouardigha', 1),
(1210, 1210, 12, '', 0, 'Doukahla-Adba', 1),
(1211, 1211, 12, '', 0, 'Marrakech-Tensift-Al Haouz', 1),
(1212, 1212, 12, '', 0, 'Tadla-Azilal', 1),
(1213, 1213, 12, '', 0, 'Sous-Massa-Drâa', 1),
(1214, 1214, 12, '', 0, 'Guelmim-Es Smara', 1),
(1215, 1215, 12, '', 0, 'Laâyoune-Boujdour-Sakia el Hamra', 1),
(1216, 1216, 12, '', 0, 'Oued Ed-Dahab Lagouira', 1),
(1301, 1301, 13, '', 0, 'Algerie', 1),
(1401, 1401, 14, '', 0, 'Canada', 1),
(1701, 1701, 17, '', 0, 'Provincies van Nederland ', 1),
(2301, 2301, 23, '', 0, 'Norte', 1),
(2302, 2302, 23, '', 0, 'Litoral', 1),
(2303, 2303, 23, '', 0, 'Cuyana', 1),
(2304, 2304, 23, '', 0, 'Central', 1),
(2305, 2305, 23, '', 0, 'Patagonia', 1),
(2801, 2801, 28, '', 0, 'Australia', 1),
(4601, 4601, 46, '', 0, 'Barbados', 1),
(5601, 5601, 56, '', 0, 'Brasil', 1),
(6701, 6701, 67, NULL, NULL, 'Tarapacá', 1),
(6702, 6702, 67, NULL, NULL, 'Antofagasta', 1),
(6703, 6703, 67, NULL, NULL, 'Atacama', 1),
(6704, 6704, 67, NULL, NULL, 'Coquimbo', 1),
(6705, 6705, 67, NULL, NULL, 'Valparaíso', 1),
(6706, 6706, 67, NULL, NULL, 'General Bernardo O Higgins', 1),
(6707, 6707, 67, NULL, NULL, 'Maule', 1),
(6708, 6708, 67, NULL, NULL, 'Biobío', 1),
(6709, 6709, 67, NULL, NULL, 'Raucanía', 1),
(6710, 6710, 67, NULL, NULL, 'Los Lagos', 1),
(6711, 6711, 67, NULL, NULL, 'Aysén General Carlos Ibáñez del Campo', 1),
(6712, 6712, 67, NULL, NULL, 'Magallanes y Antártica Chilena', 1),
(6713, 6713, 67, NULL, NULL, 'Metropolitana de Santiago', 1),
(6714, 6714, 67, NULL, NULL, 'Los Ríos', 1),
(6715, 6715, 67, NULL, NULL, 'Arica y Parinacota', 1),
(7001, 7001, 70, '', 0, 'Colombie', 1),
(8601, 8601, 86, NULL, NULL, 'Central', 1),
(8602, 8602, 86, NULL, NULL, 'Oriental', 1),
(8603, 8603, 86, NULL, NULL, 'Occidental', 1),
(10201, 10201, 102, NULL, NULL, '??????', 1),
(10202, 10202, 102, NULL, NULL, '?????? ??????', 1),
(10203, 10203, 102, NULL, NULL, '???????? ?????????', 1),
(10204, 10204, 102, NULL, NULL, '?????', 1),
(10205, 10205, 102, NULL, NULL, '????????? ????????? ??? ?????', 1),
(10206, 10206, 102, NULL, NULL, '???????', 1),
(10207, 10207, 102, NULL, NULL, '????? ?????', 1),
(10208, 10208, 102, NULL, NULL, '?????? ??????', 1),
(10209, 10209, 102, NULL, NULL, '????????????', 1),
(10210, 10210, 102, NULL, NULL, '????? ??????', 1),
(10211, 10211, 102, NULL, NULL, '?????? ??????', 1),
(10212, 10212, 102, NULL, NULL, '????????', 1),
(10213, 10213, 102, NULL, NULL, '?????? ?????????', 1),
(11401, 11401, 114, '', 0, 'Honduras', 1),
(11701, 11701, 117, '', 0, 'India', 1),
(15201, 15201, 152, '', 0, 'Rivière Noire', 1),
(15202, 15202, 152, '', 0, 'Flacq', 1),
(15203, 15203, 152, '', 0, 'Grand Port', 1),
(15204, 15204, 152, '', 0, 'Moka', 1),
(15205, 15205, 152, '', 0, 'Pamplemousses', 1),
(15206, 15206, 152, '', 0, 'Plaines Wilhems', 1),
(15207, 15207, 152, '', 0, 'Port-Louis', 1),
(15208, 15208, 152, '', 0, 'Rivière du Rempart', 1),
(15209, 15209, 152, '', 0, 'Savanne', 1),
(15210, 15210, 152, '', 0, 'Rodrigues', 1),
(15211, 15211, 152, '', 0, 'Les îles Agaléga', 1),
(15212, 15212, 152, '', 0, 'Les écueils des Cargados Carajos', 1),
(15401, 15401, 154, '', 0, 'Mexique', 1),
(23201, 23201, 232, '', 0, 'Los Andes', 1),
(23202, 23202, 232, '', 0, 'Capital', 1),
(23203, 23203, 232, '', 0, 'Central', 1),
(23204, 23204, 232, '', 0, 'Cento Occidental', 1),
(23205, 23205, 232, '', 0, 'Guayana', 1),
(23206, 23206, 232, '', 0, 'Insular', 1),
(23207, 23207, 232, '', 0, 'Los Llanos', 1),
(23208, 23208, 232, '', 0, 'Nor-Oriental', 1),
(23209, 23209, 232, '', 0, 'Zuliana', 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_revenuestamp`
--

CREATE TABLE IF NOT EXISTS `llx_c_revenuestamp` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_pays` int(11) NOT NULL,
  `taux` double NOT NULL,
  `note` varchar(128) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `accountancy_code_sell` varchar(15) DEFAULT NULL,
  `accountancy_code_buy` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=102 ;

--
-- Dumping data for table `llx_c_revenuestamp`
--

INSERT INTO `llx_c_revenuestamp` (`rowid`, `fk_pays`, `taux`, `note`, `active`, `accountancy_code_sell`, `accountancy_code_buy`) VALUES
(101, 10, 0.4, 'Revenue stamp tunisia', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_shipment_mode`
--

CREATE TABLE IF NOT EXISTS `llx_c_shipment_mode` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `code` varchar(30) NOT NULL,
  `libelle` varchar(50) NOT NULL,
  `description` text,
  `tracking` varchar(255) NOT NULL,
  `active` tinyint(4) DEFAULT '0',
  `module` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `llx_c_shipment_mode`
--

INSERT INTO `llx_c_shipment_mode` (`rowid`, `tms`, `code`, `libelle`, `description`, `tracking`, `active`, `module`) VALUES
(1, '2015-02-28 21:08:13', 'CATCH', 'Catch', 'Catch by client', '', 1, NULL),
(2, '2015-02-28 21:08:13', 'TRANS', 'Transporter', 'Generic transporter', '', 1, NULL),
(3, '2015-02-28 21:08:13', 'COLSUI', 'Colissimo Suivi', 'Colissimo Suivi', '', 0, NULL),
(4, '2015-02-28 21:08:13', 'LETTREMAX', 'Lettre Max', 'Courrier Suivi et Lettre Max', '', 0, NULL),
(5, '2015-02-28 21:08:13', 'UPS', 'UPS', 'United Parcel Service', 'http://wwwapps.ups.com/etracking/tracking.cgi?InquiryNumber2=&InquiryNumber3=&tracknums_displayed=3&loc=fr_FR&TypeOfInquiryNumber=T&HTMLVersion=4.0&InquiryNumber22=&InquiryNumber32=&track=Track&Suivi.x=64&Suivi.y=7&Suivi=Valider&InquiryNumber1={TRACKID}', 0, NULL),
(6, '2015-02-28 21:08:13', 'KIALA', 'KIALA', 'Relais Kiala', 'http://www.kiala.fr/tnt/delivery/{TRACKID}', 0, NULL),
(7, '2015-02-28 21:08:13', 'GLS', 'GLS', 'General Logistics Systems', 'http://www.gls-group.eu/276-I-PORTAL-WEB/content/GLS/FR01/FR/5004.htm?txtAction=71000&txtRefNo={TRACKID}', 0, NULL),
(8, '2015-02-28 21:08:13', 'CHRONO', 'Chronopost', 'Chronopost', 'http://www.chronopost.fr/expedier/inputLTNumbersNoJahia.do?listeNumeros={TRACKID}', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_stcomm`
--

CREATE TABLE IF NOT EXISTS `llx_c_stcomm` (
  `id` int(11) NOT NULL,
  `code` varchar(12) NOT NULL,
  `libelle` varchar(30) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_c_stcomm` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `llx_c_stcomm`
--

INSERT INTO `llx_c_stcomm` (`id`, `code`, `libelle`, `active`) VALUES
(-1, 'ST_NO', 'Ne pas contacter', 1),
(0, 'ST_NEVER', 'Jamais contacté', 1),
(1, 'ST_TODO', 'A contacter', 1),
(2, 'ST_PEND', 'Contact en cours', 1),
(3, 'ST_DONE', 'Contactée', 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_tva`
--

CREATE TABLE IF NOT EXISTS `llx_c_tva` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_pays` int(11) NOT NULL,
  `taux` double NOT NULL,
  `localtax1` double NOT NULL DEFAULT '0',
  `localtax1_type` varchar(10) NOT NULL DEFAULT '0',
  `localtax2` double NOT NULL DEFAULT '0',
  `localtax2_type` varchar(10) NOT NULL DEFAULT '0',
  `recuperableonly` int(11) NOT NULL DEFAULT '0',
  `note` varchar(128) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `accountancy_code_sell` varchar(15) DEFAULT NULL,
  `accountancy_code_buy` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_tva_id` (`fk_pays`,`taux`,`recuperableonly`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2469 ;

--
-- Dumping data for table `llx_c_tva`
--

INSERT INTO `llx_c_tva` (`rowid`, `fk_pays`, `taux`, `localtax1`, `localtax1_type`, `localtax2`, `localtax2_type`, `recuperableonly`, `note`, `active`, `accountancy_code_sell`, `accountancy_code_buy`) VALUES
(11, 1, 20, 0, '0', 0, '0', 0, 'VAT standard rate (France hors DOM-TOM)', 1, NULL, NULL),
(12, 1, 8.5, 0, '0', 0, '0', 0, 'VAT standard rate (DOM sauf Guyane et Saint-Martin)', 0, NULL, NULL),
(13, 1, 8.5, 0, '0', 0, '0', 1, 'VAT standard rate (DOM sauf Guyane et Saint-Martin), non perçu par le vendeur mais récupérable par acheteur', 0, NULL, NULL),
(14, 1, 5.5, 0, '0', 0, '0', 0, 'VAT reduced rate (France hors DOM-TOM)', 1, NULL, NULL),
(15, 1, 0, 0, '0', 0, '0', 0, 'VAT Rate 0 ou non applicable', 1, NULL, NULL),
(16, 1, 2.1, 0, '0', 0, '0', 0, 'VAT super-reduced rate', 1, NULL, NULL),
(17, 1, 10, 0, '0', 0, '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(21, 2, 21, 0, '0', 0, '0', 0, 'VAT standard rate', 1, NULL, NULL),
(22, 2, 6, 0, '0', 0, '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(23, 2, 0, 0, '0', 0, '0', 0, 'VAT Rate 0 ou non applicable', 1, NULL, NULL),
(24, 2, 12, 0, '0', 0, '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(31, 3, 21, 0, '0', 0, '0', 0, 'VAT standard rate', 1, NULL, NULL),
(32, 3, 10, 0, '0', 0, '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(33, 3, 4, 0, '0', 0, '0', 0, 'VAT super-reduced rate', 1, NULL, NULL),
(34, 3, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(41, 4, 21, 5.2, '3', 1, '3', 0, 'VAT standard rate', 1, NULL, NULL),
(42, 4, 10, 1.4, '3', 1, '3', 0, 'VAT reduced rate', 1, NULL, NULL),
(43, 4, 4, 0.5, '3', 1, '3', 0, 'VAT super-reduced rate', 1, NULL, NULL),
(44, 4, 0, 0, '0', -21, '1', 0, 'VAT Rate 0', 1, NULL, NULL),
(51, 5, 19, 0, '0', 0, '0', 0, 'allgemeine Ust.', 1, NULL, NULL),
(52, 5, 7, 0, '0', 0, '0', 0, 'ermäßigte USt.', 1, NULL, NULL),
(53, 5, 0, 0, '0', 0, '0', 0, 'keine USt.', 1, NULL, NULL),
(54, 5, 5.5, 0, '0', 0, '0', 0, 'USt. Forst', 0, NULL, NULL),
(55, 5, 10.7, 0, '0', 0, '0', 0, 'USt. Landwirtschaft', 0, NULL, NULL),
(61, 6, 8, 0, '0', 0, '0', 0, 'VAT standard rate', 1, NULL, NULL),
(62, 6, 3.8, 0, '0', 0, '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(63, 6, 2.5, 0, '0', 0, '0', 0, 'VAT super-reduced rate', 1, NULL, NULL),
(64, 6, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(71, 7, 20, 0, '0', 0, '0', 0, 'VAT standard rate', 1, NULL, NULL),
(72, 7, 17.5, 0, '0', 0, '0', 0, 'VAT standard rate before 2011', 1, NULL, NULL),
(73, 7, 5, 0, '0', 0, '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(74, 7, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(91, 9, 17, 0, '0', 0, '0', 0, 'VAT standard rate', 1, NULL, NULL),
(92, 9, 13, 0, '0', 0, '0', 0, 'VAT reduced rate 0', 1, NULL, NULL),
(93, 9, 3, 0, '0', 0, '0', 0, 'VAT super reduced rate 0', 1, NULL, NULL),
(94, 9, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(101, 10, 6, 1, '4', 0, '0', 0, 'VAT 6%', 1, NULL, NULL),
(102, 10, 12, 1, '4', 0, '0', 0, 'VAT 12%', 1, NULL, NULL),
(103, 10, 18, 1, '4', 0, '0', 0, 'VAT 18%', 1, NULL, NULL),
(104, 10, 7.5, 1, '4', 0, '0', 0, 'VAT 6% Majoré à 25% (7.5%)', 1, NULL, NULL),
(105, 10, 15, 1, '4', 0, '0', 0, 'VAT 12% Majoré à 25% (15%)', 1, NULL, NULL),
(106, 10, 22.5, 1, '4', 0, '0', 0, 'VAT 18% Majoré à 25% (22.5%)', 1, NULL, NULL),
(107, 10, 0, 1, '4', 0, '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(111, 11, 0, 0, '0', 0, '0', 0, 'No Sales Tax', 1, NULL, NULL),
(112, 11, 4, 0, '0', 0, '0', 0, 'Sales Tax 4%', 1, NULL, NULL),
(113, 11, 6, 0, '0', 0, '0', 0, 'Sales Tax 6%', 1, NULL, NULL),
(121, 12, 20, 0, '0', 0, '0', 0, 'VAT standard rate', 1, NULL, NULL),
(122, 12, 14, 0, '0', 0, '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(123, 12, 10, 0, '0', 0, '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(124, 12, 7, 0, '0', 0, '0', 0, 'VAT super-reduced rate', 1, NULL, NULL),
(125, 12, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(141, 14, 7, 0, '0', 0, '0', 0, 'VAT standard rate', 1, NULL, NULL),
(142, 14, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(143, 14, 5, 9.975, '1', 0, '0', 0, 'TPS and TVQ rate', 1, NULL, NULL),
(171, 17, 19, 0, '0', 0, '0', 0, 'Algemeen BTW tarief', 1, NULL, NULL),
(172, 17, 6, 0, '0', 0, '0', 0, 'Verlaagd BTW tarief', 1, NULL, NULL),
(173, 17, 0, 0, '0', 0, '0', 0, '0 BTW tarief', 1, NULL, NULL),
(174, 17, 21, 0, '0', 0, '0', 0, 'Algemeen BTW tarief (vanaf 1 oktober 2012)', 0, NULL, NULL),
(201, 20, 25, 0, '0', 0, '0', 0, 'VAT standard rate', 1, NULL, NULL),
(202, 20, 12, 0, '0', 0, '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(203, 20, 6, 0, '0', 0, '0', 0, 'VAT super-reduced rate', 1, NULL, NULL),
(204, 20, 0, 0, '0', 1, '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(231, 23, 21, 0, '0', 0, '0', 0, 'IVA standard rate', 1, NULL, NULL),
(232, 23, 10.5, 0, '0', 0, '0', 0, 'IVA reduced rate', 1, NULL, NULL),
(233, 23, 0, 0, '0', 0, '0', 0, 'IVA Rate 0', 1, NULL, NULL),
(241, 24, 19.25, 0, '0', 0, '0', 0, 'VAT standard rate', 1, NULL, NULL),
(242, 24, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(251, 25, 23, 0, '0', 0, '0', 0, 'VAT standard rate', 1, NULL, NULL),
(252, 25, 13, 0, '0', 0, '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(253, 25, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(254, 25, 6, 0, '0', 0, '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(261, 26, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(271, 27, 19.6, 0, '0', 0, '0', 0, 'VAT standard rate (France hors DOM-TOM)', 1, NULL, NULL),
(272, 27, 8.5, 0, '0', 0, '0', 0, 'VAT standard rate (DOM sauf Guyane et Saint-Martin)', 0, NULL, NULL),
(273, 27, 8.5, 0, '0', 0, '0', 1, 'VAT standard rate (DOM sauf Guyane et Saint-Martin), non perçu par le vendeur mais récupérable par acheteur', 0, NULL, NULL),
(274, 27, 5.5, 0, '0', 0, '0', 0, 'VAT reduced rate (France hors DOM-TOM)', 0, NULL, NULL),
(275, 27, 0, 0, '0', 0, '0', 0, 'VAT Rate 0 ou non applicable', 1, NULL, NULL),
(276, 27, 2.1, 0, '0', 0, '0', 0, 'VAT super-reduced rate', 1, NULL, NULL),
(277, 27, 7, 0, '0', 0, '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(281, 28, 10, 0, '0', 0, '0', 0, 'VAT standard rate', 1, NULL, NULL),
(282, 28, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(411, 41, 20, 0, '0', 0, '0', 0, 'VAT standard rate', 1, NULL, NULL),
(412, 41, 10, 0, '0', 0, '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(413, 41, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(461, 46, 0, 0, '0', 0, '0', 0, 'No VAT', 1, NULL, NULL),
(462, 46, 15, 0, '0', 0, '0', 0, 'VAT 15%', 1, NULL, NULL),
(463, 46, 7.5, 0, '0', 0, '0', 0, 'VAT 7.5%', 1, NULL, NULL),
(561, 56, 0, 0, '0', 0, '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(591, 59, 20, 0, '0', 0, '0', 0, 'VAT standard rate', 1, NULL, NULL),
(592, 59, 7, 0, '0', 0, '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(593, 59, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(671, 67, 19, 0, '0', 0, '0', 0, 'VAT standard rate', 1, NULL, NULL),
(672, 67, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(801, 80, 25, 0, '0', 0, '0', 0, 'VAT standard rate', 1, NULL, NULL),
(802, 80, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(861, 86, 13, 0, '0', 0, '0', 0, 'IVA 13', 1, NULL, NULL),
(862, 86, 0, 0, '0', 0, '0', 0, 'SIN IVA', 1, NULL, NULL),
(1141, 114, 0, 0, '0', 0, '0', 0, 'No ISV', 1, NULL, NULL),
(1142, 114, 12, 0, '0', 0, '0', 0, 'ISV 12%', 1, NULL, NULL),
(1161, 116, 25.5, 0, '0', 0, '0', 0, 'VAT standard rate', 1, NULL, NULL),
(1162, 116, 7, 0, '0', 0, '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(1163, 116, 0, 0, '0', 0, '0', 0, 'VAT rate 0', 1, NULL, NULL),
(1171, 117, 12.5, 0, '0', 0, '0', 0, 'VAT standard rate', 1, NULL, NULL),
(1172, 117, 4, 0, '0', 0, '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(1173, 117, 1, 0, '0', 0, '0', 0, 'VAT super-reduced rate', 1, NULL, NULL),
(1174, 117, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(1231, 123, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(1232, 123, 5, 0, '0', 0, '0', 0, 'VAT Rate 5', 1, NULL, NULL),
(1401, 140, 15, 0, '0', 0, '0', 0, 'VAT standard rate', 1, NULL, NULL),
(1402, 140, 12, 0, '0', 0, '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(1403, 140, 6, 0, '0', 0, '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(1404, 140, 3, 0, '0', 0, '0', 0, 'VAT super-reduced rate', 1, NULL, NULL),
(1405, 140, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(1511, 151, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(1512, 151, 14, 0, '0', 0, '0', 0, 'VAT Rate 14', 1, NULL, NULL),
(1521, 152, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(1522, 152, 15, 0, '0', 0, '0', 0, 'VAT Rate 15', 1, NULL, NULL),
(1541, 154, 0, 0, '0', 0, '0', 0, 'No VAT', 1, NULL, NULL),
(1542, 154, 16, 0, '0', 0, '0', 0, 'VAT 16%', 1, NULL, NULL),
(1543, 154, 10, 0, '0', 0, '0', 0, 'VAT Frontero', 1, NULL, NULL),
(1662, 166, 15, 0, '0', 0, '0', 0, 'VAT standard rate', 1, NULL, NULL),
(1663, 166, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(1692, 169, 5, 0, '0', 0, '0', 0, 'VAT standard rate', 1, NULL, NULL),
(1693, 169, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(1731, 173, 25, 0, '0', 0, '0', 0, 'VAT standard rate', 1, NULL, NULL),
(1732, 173, 14, 0, '0', 0, '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(1733, 173, 8, 0, '0', 0, '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(1734, 173, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(1841, 181, 18, 0, '0', 0, '0', 0, 'VAT standard rate', 1, NULL, NULL),
(1842, 184, 7, 0, '0', 0, '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(1843, 181, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(1844, 184, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(1881, 188, 24, 0, '0', 0, '0', 0, 'VAT standard rate', 1, NULL, NULL),
(1882, 188, 9, 0, '0', 0, '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(1883, 188, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(1884, 188, 5, 0, '0', 0, '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(1931, 193, 0, 0, '0', 0, '0', 0, 'No VAT in SPM', 1, NULL, NULL),
(2011, 201, 19, 0, '0', 0, '0', 0, 'VAT standard rate', 1, NULL, NULL),
(2012, 201, 10, 0, '0', 0, '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(2013, 201, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(2021, 202, 22, 0, '0', 0, '0', 0, 'VAT standard rate', 1, NULL, NULL),
(2022, 202, 9.5, 0, '0', 0, '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(2023, 202, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(2051, 205, 0, 0, '0', 0, '0', 0, 'No VAT', 1, NULL, NULL),
(2052, 205, 14, 0, '0', 0, '0', 0, 'VAT 14%', 1, NULL, NULL),
(2261, 226, 20, 0, '0', 0, '0', 0, 'VAT standart rate', 1, NULL, NULL),
(2262, 226, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(2321, 232, 0, 0, '0', 0, '0', 0, 'No VAT', 1, NULL, NULL),
(2322, 232, 12, 0, '0', 0, '0', 0, 'VAT 12%', 1, NULL, NULL),
(2323, 232, 8, 0, '0', 0, '0', 0, 'VAT 8%', 1, NULL, NULL),
(2461, 246, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(2462, 102, 23, 0, '0', 0, '0', 0, '????????? ?.?.?.', 1, NULL, NULL),
(2463, 102, 0, 0, '0', 0, '0', 0, '???????? ?.?.?.', 1, NULL, NULL),
(2464, 102, 13, 0, '0', 0, '0', 0, '????????? ?.?.?.', 1, NULL, NULL),
(2465, 102, 6.5, 0, '0', 0, '0', 0, '????????????? ?.?.?.', 1, NULL, NULL),
(2466, 102, 16, 0, '0', 0, '0', 0, '????? ????????? ?.?.?.', 1, NULL, NULL),
(2467, 102, 9, 0, '0', 0, '0', 0, '????? ????????? ?.?.?.', 1, NULL, NULL),
(2468, 102, 5, 0, '0', 0, '0', 0, '????? ????????????? ?.?.?.', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_typent`
--

CREATE TABLE IF NOT EXISTS `llx_c_typent` (
  `id` int(11) NOT NULL,
  `code` varchar(12) NOT NULL,
  `libelle` varchar(30) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_c_typent` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `llx_c_typent`
--

INSERT INTO `llx_c_typent` (`id`, `code`, `libelle`, `active`, `module`) VALUES
(0, 'TE_UNKNOWN', '-', 1, NULL),
(1, 'TE_STARTUP', 'Start-up', 0, NULL),
(2, 'TE_GROUP', 'Grand groupe', 1, NULL),
(3, 'TE_MEDIUM', 'PME/PMI', 1, NULL),
(4, 'TE_SMALL', 'TPE', 1, NULL),
(5, 'TE_ADMIN', 'Administration', 1, NULL),
(6, 'TE_WHOLE', 'Grossiste', 0, NULL),
(7, 'TE_RETAIL', 'Revendeur', 0, NULL),
(8, 'TE_PRIVATE', 'Particulier', 1, NULL),
(100, 'TE_OTHER', 'Autres', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_type_contact`
--

CREATE TABLE IF NOT EXISTS `llx_c_type_contact` (
  `rowid` int(11) NOT NULL,
  `element` varchar(30) NOT NULL,
  `source` varchar(8) NOT NULL DEFAULT 'external',
  `code` varchar(32) NOT NULL,
  `libelle` varchar(64) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_type_contact_id` (`element`,`source`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `llx_c_type_contact`
--

INSERT INTO `llx_c_type_contact` (`rowid`, `element`, `source`, `code`, `libelle`, `active`, `module`) VALUES
(10, 'contrat', 'internal', 'SALESREPSIGN', 'Commercial signataire du contrat', 1, NULL),
(11, 'contrat', 'internal', 'SALESREPFOLL', 'Commercial suivi du contrat', 1, NULL),
(20, 'contrat', 'external', 'BILLING', 'Contact client facturation contrat', 1, NULL),
(21, 'contrat', 'external', 'CUSTOMER', 'Contact client suivi contrat', 1, NULL),
(22, 'contrat', 'external', 'SALESREPSIGN', 'Contact client signataire contrat', 1, NULL),
(31, 'propal', 'internal', 'SALESREPFOLL', 'Commercial à l''origine de la propale', 1, NULL),
(40, 'propal', 'external', 'BILLING', 'Contact client facturation propale', 1, NULL),
(41, 'propal', 'external', 'CUSTOMER', 'Contact client suivi propale', 1, NULL),
(50, 'facture', 'internal', 'SALESREPFOLL', 'Responsable suivi du paiement', 1, NULL),
(60, 'facture', 'external', 'BILLING', 'Contact client facturation', 1, NULL),
(61, 'facture', 'external', 'SHIPPING', 'Contact client livraison', 1, NULL),
(62, 'facture', 'external', 'SERVICE', 'Contact client prestation', 1, NULL),
(70, 'invoice_supplier', 'internal', 'SALESREPFOLL', 'Responsable suivi du paiement', 1, NULL),
(71, 'invoice_supplier', 'external', 'BILLING', 'Contact fournisseur facturation', 1, NULL),
(72, 'invoice_supplier', 'external', 'SHIPPING', 'Contact fournisseur livraison', 1, NULL),
(73, 'invoice_supplier', 'external', 'SERVICE', 'Contact fournisseur prestation', 1, NULL),
(80, 'agenda', 'internal', 'ACTOR', 'Responsable', 1, NULL),
(81, 'agenda', 'internal', 'GUEST', 'Guest', 1, NULL),
(85, 'agenda', 'external', 'ACTOR', 'Responsable', 1, NULL),
(86, 'agenda', 'external', 'GUEST', 'Guest', 1, NULL),
(91, 'commande', 'internal', 'SALESREPFOLL', 'Responsable suivi de la commande', 1, NULL),
(100, 'commande', 'external', 'BILLING', 'Contact client facturation commande', 1, NULL),
(101, 'commande', 'external', 'CUSTOMER', 'Contact client suivi commande', 1, NULL),
(102, 'commande', 'external', 'SHIPPING', 'Contact client livraison commande', 1, NULL),
(120, 'fichinter', 'internal', 'INTERREPFOLL', 'Responsable suivi de l''intervention', 1, NULL),
(121, 'fichinter', 'internal', 'INTERVENING', 'Intervenant', 1, NULL),
(130, 'fichinter', 'external', 'BILLING', 'Contact client facturation intervention', 1, NULL),
(131, 'fichinter', 'external', 'CUSTOMER', 'Contact client suivi de l''intervention', 1, NULL),
(140, 'order_supplier', 'internal', 'SALESREPFOLL', 'Responsable suivi de la commande', 1, NULL),
(141, 'order_supplier', 'internal', 'SHIPPING', 'Responsable réception de la commande', 1, NULL),
(142, 'order_supplier', 'external', 'BILLING', 'Contact fournisseur facturation commande', 1, NULL),
(143, 'order_supplier', 'external', 'CUSTOMER', 'Contact fournisseur suivi commande', 1, NULL),
(145, 'order_supplier', 'external', 'SHIPPING', 'Contact fournisseur livraison commande', 1, NULL),
(160, 'project', 'internal', 'PROJECTLEADER', 'Chef de Projet', 1, NULL),
(161, 'project', 'internal', 'PROJECTCONTRIBUTOR', 'Intervenant', 1, NULL),
(170, 'project', 'external', 'PROJECTLEADER', 'Chef de Projet', 1, NULL),
(171, 'project', 'external', 'PROJECTCONTRIBUTOR', 'Intervenant', 1, NULL),
(180, 'project_task', 'internal', 'TASKEXECUTIVE', 'Responsable', 1, NULL),
(181, 'project_task', 'internal', 'TASKCONTRIBUTOR', 'Intervenant', 1, NULL),
(190, 'project_task', 'external', 'TASKEXECUTIVE', 'Responsable', 1, NULL),
(191, 'project_task', 'external', 'TASKCONTRIBUTOR', 'Intervenant', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_type_fees`
--

CREATE TABLE IF NOT EXISTS `llx_c_type_fees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(12) NOT NULL,
  `libelle` varchar(30) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_c_type_fees` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `llx_c_type_fees`
--

INSERT INTO `llx_c_type_fees` (`id`, `code`, `libelle`, `active`, `module`) VALUES
(1, 'TF_OTHER', 'Other', 1, NULL),
(2, 'TF_TRIP', 'Trip', 1, NULL),
(3, 'TF_LUNCH', 'Lunch', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_type_resource`
--

CREATE TABLE IF NOT EXISTS `llx_c_type_resource` (
  `rowid` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `label` varchar(64) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_type_resource_id` (`label`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_ziptown`
--

CREATE TABLE IF NOT EXISTS `llx_c_ziptown` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(5) DEFAULT NULL,
  `fk_county` int(11) DEFAULT NULL,
  `fk_pays` int(11) NOT NULL DEFAULT '0',
  `zip` varchar(10) NOT NULL,
  `town` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_ziptown_fk_pays` (`zip`,`town`,`fk_pays`),
  KEY `idx_c_ziptown_fk_county` (`fk_county`),
  KEY `idx_c_ziptown_fk_pays` (`fk_pays`),
  KEY `idx_c_ziptown_zip` (`zip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_deplacement`
--

CREATE TABLE IF NOT EXISTS `llx_deplacement` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(30) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dated` datetime DEFAULT NULL,
  `fk_user` int(11) NOT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `type` varchar(12) NOT NULL,
  `fk_statut` int(11) NOT NULL DEFAULT '1',
  `km` double DEFAULT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `fk_projet` int(11) DEFAULT '0',
  `note_private` text,
  `note_public` text,
  `extraparams` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_document_generator`
--

CREATE TABLE IF NOT EXISTS `llx_document_generator` (
  `rowid` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `classfile` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `llx_document_model`
--

CREATE TABLE IF NOT EXISTS `llx_document_model` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `type` varchar(20) NOT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_document_model` (`nom`,`type`,`entity`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

--
-- Dumping data for table `llx_document_model`
--

INSERT INTO `llx_document_model` (`rowid`, `nom`, `entity`, `type`, `libelle`, `description`) VALUES
(1, 'crabe', 1, 'invoice', NULL, NULL),
(2, 'muscadet', 1, 'order_supplier', NULL, NULL),
(4, 'azur', 1, 'propal', NULL, NULL),
(23, 'soleil', 1, 'ficheinter', NULL, NULL),
(40, 'proyecto', 1, 'project', 'opendoor', NULL),
(41, 'parte_llaves_assista', 1, 'project', 'parte llaves assista', NULL),
(42, 'parte_llaves_aktua_banesto', 1, 'project', 'parte llaves Aktua Banesto', NULL),
(45, 'reparalia', 1, 'project', 'reparalia', NULL),
(46, 'valclima', 1, 'project', 'valclima', NULL),
(47, 'assista', 1, 'project', 'assista', NULL),
(61, 'sabadell_template', 1, 'project', 'sabadell_template', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_don`
--

CREATE TABLE IF NOT EXISTS `llx_don` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(30) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_statut` smallint(6) NOT NULL DEFAULT '0',
  `datec` datetime DEFAULT NULL,
  `datedon` datetime DEFAULT NULL,
  `amount` double DEFAULT '0',
  `fk_paiement` int(11) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `societe` varchar(50) DEFAULT NULL,
  `address` text,
  `zip` varchar(30) DEFAULT NULL,
  `town` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(24) DEFAULT NULL,
  `phone_mobile` varchar(24) DEFAULT NULL,
  `public` smallint(6) NOT NULL DEFAULT '1',
  `fk_don_projet` int(11) DEFAULT NULL,
  `fk_user_author` int(11) NOT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_ecm_directories`
--

CREATE TABLE IF NOT EXISTS `llx_ecm_directories` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(64) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_parent` int(11) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `cachenbofdoc` int(11) NOT NULL DEFAULT '0',
  `fullpath` varchar(255) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  `date_c` datetime DEFAULT NULL,
  `date_m` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_c` int(11) DEFAULT NULL,
  `fk_user_m` int(11) DEFAULT NULL,
  `acl` text,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `idx_ecm_directories` (`label`,`fk_parent`,`entity`),
  KEY `idx_ecm_directories_fk_user_c` (`fk_user_c`),
  KEY `idx_ecm_directories_fk_user_m` (`fk_user_m`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_element_contact`
--

CREATE TABLE IF NOT EXISTS `llx_element_contact` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `datecreate` datetime DEFAULT NULL,
  `statut` smallint(6) DEFAULT '5',
  `element_id` int(11) NOT NULL,
  `fk_c_type_contact` int(11) NOT NULL,
  `fk_socpeople` int(11) NOT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `idx_element_contact_idx1` (`element_id`,`fk_c_type_contact`,`fk_socpeople`),
  KEY `fk_element_contact_fk_c_type_contact` (`fk_c_type_contact`),
  KEY `idx_element_contact_fk_socpeople` (`fk_socpeople`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=367 ;

--
-- Dumping data for table `llx_element_contact`
--

INSERT INTO `llx_element_contact` (`rowid`, `datecreate`, `statut`, `element_id`, `fk_c_type_contact`, `fk_socpeople`) VALUES
(8, '2015-03-01 20:08:48', 4, 1, 180, 3),
(12, '2015-03-14 23:03:44', 4, 3, 180, 1),
(17, '2015-03-14 23:51:23', 4, 4, 180, 1),
(19, '2015-03-15 17:33:43', 4, 5, 180, 3),
(26, '2015-03-18 20:00:09', 4, 6, 180, 1),
(27, '2015-03-18 20:03:06', 4, 7, 180, 1),
(28, '2015-03-18 20:03:22', 4, 8, 180, 1),
(29, '2015-03-18 20:08:35', 4, 9, 180, 5),
(38, '2015-03-22 20:25:01', 4, 10, 180, 3),
(53, '2015-05-13 09:49:43', 4, 103, 160, 3),
(55, '2015-05-14 14:26:24', 4, 105, 160, 3),
(56, '2015-05-14 14:34:26', 4, 106, 160, 3),
(57, '2015-05-15 09:27:31', 4, 107, 160, 3),
(58, '2015-05-15 10:01:29', 4, 108, 160, 3),
(59, '2015-05-15 10:25:48', 4, 109, 160, 3),
(60, '2015-05-15 10:36:54', 4, 110, 160, 3),
(62, '2015-05-17 23:50:54', 4, 104, 161, 10),
(63, '2015-05-19 10:14:44', 4, 112, 160, 3),
(64, '2015-05-19 11:21:29', 4, 113, 160, 3),
(65, '2015-05-19 11:51:37', 4, 114, 160, 3),
(66, '2015-05-19 13:34:19', 4, 115, 160, 3),
(67, '2015-05-19 13:46:04', 4, 116, 160, 3),
(68, '2015-05-19 14:58:31', 4, 117, 160, 3),
(69, '2015-05-19 15:36:53', 4, 118, 160, 3),
(70, '2015-05-20 14:05:23', 4, 119, 160, 3),
(71, '2015-05-21 09:10:42', 4, 120, 160, 3),
(72, '2015-05-21 09:39:16', 4, 121, 160, 3),
(73, '2015-05-21 10:03:18', 4, 122, 160, 3),
(74, '2015-05-21 10:16:33', 4, 123, 160, 3),
(75, '2015-05-21 11:05:50', 4, 124, 160, 3),
(76, '2015-05-21 13:38:22', 4, 125, 160, 3),
(77, '2015-05-21 20:37:29', 4, 126, 160, 3),
(78, '2015-05-21 20:53:25', 4, 127, 160, 3),
(79, '2015-05-25 10:19:45', 4, 128, 160, 3),
(80, '2015-05-25 10:26:19', 4, 129, 160, 3),
(81, '2015-05-25 10:43:01', 4, 130, 160, 3),
(82, '2015-05-25 10:49:44', 4, 131, 160, 3),
(84, '2015-05-25 10:54:59', 4, 133, 160, 3),
(85, '2015-05-25 14:02:00', 4, 134, 160, 3),
(86, '2015-05-25 14:43:35', 4, 135, 160, 3),
(88, '2015-05-26 09:41:52', 4, 137, 160, 3),
(89, '2015-05-26 09:44:21', 4, 138, 160, 3),
(91, '2015-05-26 09:54:43', 4, 140, 160, 3),
(92, '2015-05-26 09:58:36', 4, 141, 160, 3),
(93, '2015-05-26 10:04:37', 4, 142, 160, 3),
(94, '2015-05-26 10:10:33', 4, 143, 160, 3),
(95, '2015-05-26 10:15:10', 4, 144, 160, 3),
(96, '2015-05-26 13:21:30', 4, 145, 160, 3),
(97, '2015-05-26 13:26:16', 4, 146, 160, 3),
(98, '2015-05-26 13:35:59', 4, 147, 160, 3),
(99, '2015-05-26 13:39:50', 4, 148, 160, 3),
(100, '2015-05-27 09:25:46', 4, 149, 160, 3),
(101, '2015-05-27 09:28:55', 4, 150, 160, 3),
(102, '2015-05-27 09:43:44', 4, 151, 160, 3),
(103, '2015-05-27 10:19:10', 4, 152, 160, 3),
(104, '2015-05-27 10:23:15', 4, 153, 160, 3),
(105, '2015-05-27 10:28:36', 4, 154, 160, 3),
(106, '2015-05-27 10:32:00', 4, 155, 160, 3),
(107, '2015-05-27 10:37:01', 4, 156, 160, 3),
(109, '2015-05-27 10:43:39', 4, 158, 160, 3),
(110, '2015-05-27 10:47:38', 4, 159, 160, 3),
(111, '2015-05-27 11:35:24', 4, 104, 161, 3),
(116, '2015-05-28 09:34:26', 4, 160, 160, 3),
(117, '2015-05-28 09:51:53', 4, 161, 160, 3),
(118, '2015-05-28 10:06:38', 4, 162, 160, 3),
(119, '2015-05-28 10:11:12', 4, 163, 160, 3),
(120, '2015-05-28 11:57:23', 4, 164, 160, 3),
(121, '2015-05-28 12:03:48', 4, 165, 160, 3),
(122, '2015-05-28 12:13:20', 4, 166, 160, 3),
(123, '2015-05-28 12:18:37', 4, 167, 160, 3),
(124, '2015-05-28 13:33:10', 4, 168, 160, 3),
(125, '2015-05-28 13:37:17', 4, 169, 160, 3),
(126, '2015-05-28 13:49:13', 4, 170, 160, 3),
(127, '2015-05-28 13:53:24', 4, 171, 160, 3),
(128, '2015-05-28 14:21:08', 4, 172, 160, 3),
(130, '2015-05-29 09:36:44', 4, 174, 160, 3),
(131, '2015-05-29 09:45:20', 4, 175, 160, 3),
(132, '2015-05-29 12:34:50', 4, 176, 160, 3),
(133, '2015-05-29 12:41:02', 4, 177, 160, 3),
(134, '2015-05-29 12:46:30', 4, 178, 160, 3),
(135, '2015-05-29 12:50:23', 4, 179, 160, 3),
(136, '2015-05-29 12:54:47', 4, 180, 160, 3),
(137, '2015-05-29 12:58:18', 4, 181, 160, 3),
(138, '2015-06-01 09:17:52', 4, 182, 160, 3),
(139, '2015-06-01 09:22:27', 4, 183, 160, 3),
(140, '2015-06-01 09:25:53', 4, 184, 160, 3),
(141, '2015-06-01 11:51:06', 4, 185, 160, 3),
(144, '2015-06-02 10:31:03', 4, 188, 160, 3),
(145, '2015-06-02 10:42:21', 4, 189, 160, 3),
(146, '2015-06-02 10:45:08', 4, 190, 160, 3),
(147, '2015-06-02 10:50:23', 4, 191, 160, 3),
(148, '2015-06-02 11:06:20', 4, 192, 160, 3),
(149, '2015-06-02 11:51:41', 4, 193, 160, 3),
(150, '2015-06-02 12:24:45', 4, 194, 160, 3),
(151, '2015-06-02 15:00:50', 4, 195, 160, 3),
(152, '2015-06-02 17:40:02', 4, 196, 160, 3),
(153, '2015-06-03 09:12:21', 4, 197, 160, 3),
(154, '2015-06-03 09:17:54', 4, 198, 160, 3),
(156, '2015-06-03 09:54:13', 4, 200, 160, 3),
(157, '2015-06-03 09:55:54', 4, 201, 160, 3),
(158, '2015-06-03 09:58:21', 4, 202, 160, 3),
(159, '2015-06-03 10:38:18', 4, 203, 160, 3),
(161, '2015-06-03 13:22:09', 4, 205, 160, 3),
(162, '2015-06-03 13:44:16', 4, 206, 160, 3),
(163, '2015-06-03 13:49:53', 4, 207, 160, 3),
(164, '2015-06-03 13:55:22', 4, 208, 160, 3),
(165, '2015-06-04 09:30:37', 4, 209, 160, 3),
(166, '2015-06-04 09:34:21', 4, 210, 160, 3),
(167, '2015-06-04 09:39:08', 4, 211, 160, 3),
(168, '2015-06-04 12:10:51', 4, 212, 160, 3),
(169, '2015-06-05 09:05:29', 4, 213, 160, 3),
(170, '2015-06-05 09:30:04', 4, 214, 160, 3),
(171, '2015-06-05 09:34:25', 4, 215, 160, 3),
(172, '2015-06-05 10:28:38', 4, 216, 160, 3),
(174, '2015-06-05 10:41:25', 4, 217, 161, 3),
(175, '2015-06-05 10:42:04', 4, 217, 161, 14),
(176, '2015-06-05 10:42:29', 4, 217, 161, 11),
(177, '2015-06-05 11:05:01', 4, 218, 160, 3),
(178, '2015-06-05 11:20:26', 4, 219, 160, 3),
(180, '2015-06-08 09:46:00', 4, 221, 160, 3),
(181, '2015-06-08 10:33:52', 4, 222, 160, 3),
(182, '2015-06-08 11:49:35', 4, 223, 160, 3),
(183, '2015-06-08 12:09:01', 4, 224, 160, 3),
(184, '2015-06-08 12:40:31', 4, 225, 160, 3),
(185, '2015-06-08 12:45:55', 4, 226, 160, 3),
(187, '2015-06-08 13:05:23', 4, 228, 160, 3),
(188, '2015-06-08 13:16:09', 4, 229, 160, 3),
(189, '2015-06-08 13:52:04', 4, 230, 160, 3),
(191, '2015-06-09 09:50:53', 4, 232, 160, 3),
(192, '2015-06-09 10:18:51', 4, 233, 160, 3),
(194, '2015-06-09 10:34:29', 4, 235, 160, 3),
(195, '2015-06-09 10:40:40', 4, 236, 160, 3),
(196, '2015-06-09 11:28:26', 4, 237, 160, 3),
(197, '2015-06-09 11:37:06', 4, 238, 160, 3),
(198, '2015-06-09 11:41:01', 4, 239, 160, 3),
(199, '2015-06-09 11:44:10', 4, 240, 160, 3),
(200, '2015-06-09 11:47:51', 4, 241, 160, 3),
(201, '2015-06-09 12:44:31', 4, 242, 160, 3),
(202, '2015-06-09 12:59:10', 4, 243, 160, 3),
(203, '2015-06-09 13:02:41', 4, 244, 160, 3),
(204, '2015-06-09 13:11:28', 4, 245, 160, 3),
(205, '2015-06-09 13:15:36', 4, 246, 160, 3),
(206, '2015-06-09 13:37:38', 4, 247, 160, 3),
(207, '2015-06-09 13:40:21', 4, 248, 160, 3),
(208, '2015-06-09 13:52:26', 4, 249, 160, 3),
(209, '2015-06-09 13:58:16', 4, 250, 160, 3),
(210, '2015-06-10 09:07:30', 4, 251, 160, 3),
(211, '2015-06-10 09:23:28', 4, 252, 160, 3),
(212, '2015-06-10 10:57:22', 4, 253, 160, 3),
(213, '2015-06-10 11:36:19', 4, 254, 160, 3),
(214, '2015-06-10 11:42:20', 4, 255, 160, 3),
(215, '2015-06-10 11:47:38', 4, 256, 160, 3),
(216, '2015-06-10 11:54:42', 4, 257, 160, 3),
(217, '2015-06-10 12:00:41', 4, 258, 160, 3),
(218, '2015-06-10 12:04:02', 4, 259, 160, 3),
(219, '2015-06-10 12:11:03', 4, 260, 160, 3),
(220, '2015-06-10 12:15:10', 4, 261, 160, 3),
(221, '2015-06-10 12:26:46', 4, 262, 160, 3),
(222, '2015-06-10 12:31:49', 4, 263, 160, 3),
(223, '2015-06-10 12:36:39', 4, 264, 160, 3),
(224, '2015-06-10 12:51:59', 4, 265, 160, 3),
(225, '2015-06-10 12:56:02', 4, 266, 160, 3),
(226, '2015-06-10 13:00:35', 4, 267, 160, 3),
(227, '2015-06-10 13:17:29', 4, 268, 160, 3),
(228, '2015-06-10 13:21:41', 4, 269, 160, 3),
(229, '2015-06-10 13:31:14', 4, 13, 180, 14),
(230, '2015-06-10 13:41:06', 4, 270, 160, 3),
(232, '2015-06-11 09:38:29', 4, 272, 160, 3),
(233, '2015-06-11 09:41:39', 4, 273, 160, 3),
(234, '2015-06-11 09:58:52', 4, 274, 160, 3),
(235, '2015-06-11 10:02:47', 4, 275, 160, 3),
(236, '2015-06-11 10:23:08', 4, 276, 160, 3),
(237, '2015-06-11 10:25:19', 4, 277, 160, 3),
(238, '2015-06-11 10:27:37', 4, 278, 160, 3),
(239, '2015-06-11 10:46:44', 4, 279, 160, 3),
(240, '2015-06-11 10:51:51', 4, 280, 160, 3),
(241, '2015-06-11 11:07:20', 4, 281, 160, 3),
(242, '2015-06-11 12:06:55', 4, 282, 160, 3),
(243, '2015-06-12 10:23:54', 4, 283, 160, 3),
(244, '2015-06-12 10:26:00', 4, 284, 160, 3),
(245, '2015-06-12 11:18:36', 4, 285, 160, 3),
(246, '2015-06-12 11:22:02', 4, 286, 160, 3),
(247, '2015-06-12 11:29:23', 4, 287, 160, 3),
(248, '2015-06-12 11:39:00', 4, 288, 160, 3),
(249, '2015-06-12 11:44:47', 4, 289, 160, 3),
(250, '2015-06-12 11:56:53', 4, 290, 160, 3),
(251, '2015-06-12 12:31:04', 4, 291, 160, 3),
(252, '2015-06-12 12:36:54', 4, 292, 160, 3),
(253, '2015-06-12 13:02:05', 4, 293, 160, 3),
(254, '2015-06-12 13:11:44', 4, 294, 160, 3),
(255, '2015-06-15 09:26:39', 4, 295, 160, 3),
(256, '2015-06-15 10:18:42', 4, 296, 160, 3),
(257, '2015-06-15 10:27:12', 4, 297, 160, 3),
(258, '2015-06-15 10:34:51', 4, 298, 160, 3),
(259, '2015-06-15 11:57:23', 4, 299, 160, 3),
(260, '2015-06-15 12:44:34', 4, 300, 160, 3),
(261, '2015-06-16 10:27:26', 4, 301, 160, 3),
(262, '2015-06-16 10:38:08', 4, 302, 160, 3),
(263, '2015-06-16 10:55:13', 4, 303, 160, 3),
(264, '2015-06-16 11:03:13', 4, 304, 160, 3),
(265, '2015-06-16 11:24:03', 4, 305, 160, 3),
(266, '2015-06-18 09:10:22', 4, 306, 160, 3),
(267, '2015-06-18 12:05:12', 4, 307, 160, 3),
(268, '2015-06-19 11:25:14', 4, 308, 160, 3),
(269, '2015-06-19 12:04:38', 4, 309, 160, 3),
(270, '2015-06-19 12:42:59', 4, 310, 160, 3),
(271, '2015-06-19 12:50:35', 4, 311, 160, 3),
(273, '2015-06-19 13:12:41', 4, 313, 160, 3),
(274, '2015-06-19 13:36:51', 4, 314, 160, 3),
(275, '2015-06-19 14:08:32', 4, 315, 160, 3),
(276, '2015-06-22 10:31:01', 4, 316, 160, 3),
(277, '2015-06-22 10:35:12', 4, 317, 160, 3),
(278, '2015-06-22 10:39:03', 4, 318, 160, 3),
(279, '2015-06-22 11:23:46', 4, 319, 160, 3),
(280, '2015-06-22 13:15:18', 4, 320, 160, 3),
(281, '2015-06-22 13:37:53', 4, 321, 160, 3),
(282, '2015-06-23 10:36:31', 4, 322, 160, 3),
(283, '2015-06-23 10:58:08', 4, 323, 160, 3),
(284, '2015-06-23 11:06:25', 4, 324, 160, 3),
(285, '2015-06-23 11:26:27', 4, 325, 160, 3),
(286, '2015-06-23 12:15:25', 4, 326, 160, 3),
(287, '2015-06-23 12:36:37', 4, 327, 160, 3),
(288, '2015-06-23 12:43:21', 4, 328, 160, 3),
(289, '2015-06-23 13:04:04', 4, 329, 160, 3),
(290, '2015-06-23 13:08:50', 4, 330, 160, 3),
(291, '2015-06-23 15:33:14', 4, 332, 160, 3),
(292, '2015-06-23 15:39:13', 4, 334, 160, 3),
(294, '2015-06-24 13:29:33', 4, 336, 160, 3),
(295, '2015-06-24 13:31:52', 4, 337, 160, 3),
(296, '2015-06-24 13:33:37', 4, 338, 160, 3),
(297, '2015-06-24 13:40:48', 4, 339, 160, 3),
(298, '2015-06-25 09:54:05', 4, 340, 160, 3),
(299, '2015-06-25 09:56:04', 4, 341, 160, 3),
(300, '2015-06-25 10:01:47', 4, 342, 160, 3),
(301, '2015-06-25 10:03:44', 4, 344, 160, 3),
(302, '2015-06-25 10:07:59', 4, 345, 160, 3),
(303, '2015-06-25 10:09:38', 4, 346, 160, 3),
(304, '2015-06-25 10:12:51', 4, 347, 160, 3),
(305, '2015-06-25 10:20:36', 4, 348, 160, 3),
(306, '2015-06-25 10:24:40', 4, 349, 160, 3),
(307, '2015-06-25 10:35:58', 4, 350, 160, 3),
(308, '2015-06-25 10:58:22', 4, 351, 160, 3),
(309, '2015-06-29 13:11:37', 4, 352, 160, 3),
(310, '2015-06-29 13:14:52', 4, 353, 160, 3),
(311, '2015-06-29 13:20:50', 4, 354, 160, 3),
(313, '2015-06-30 09:11:03', 4, 355, 160, 3),
(314, '2015-06-30 09:14:57', 4, 356, 160, 3),
(315, '2015-06-30 09:20:13', 4, 357, 160, 3),
(316, '2015-07-02 11:37:59', 4, 358, 160, 3),
(317, '2015-07-02 11:40:46', 4, 359, 160, 3),
(318, '2015-07-02 13:12:51', 4, 361, 160, 3),
(319, '2015-07-03 09:13:59', 4, 362, 160, 3),
(320, '2015-07-03 10:23:23', 4, 364, 160, 3),
(321, '2015-07-06 09:32:28', 4, 365, 160, 3),
(322, '2015-07-06 09:44:08', 4, 366, 160, 3),
(323, '2015-07-06 10:57:32', 4, 367, 160, 3),
(324, '2015-07-06 12:00:11', 4, 368, 160, 3),
(325, '2015-07-06 12:24:46', 4, 369, 160, 3),
(326, '2015-07-07 12:14:08', 4, 370, 160, 3),
(327, '2015-07-07 13:56:25', 4, 371, 160, 3),
(328, '2015-07-08 09:33:40', 4, 372, 160, 3),
(329, '2015-07-08 09:38:11', 4, 374, 160, 3),
(330, '2015-07-08 09:42:20', 4, 375, 160, 3),
(331, '2015-07-08 09:44:43', 4, 376, 160, 3),
(332, '2015-07-08 09:49:32', 4, 377, 160, 3),
(333, '2015-07-08 09:51:23', 4, 378, 160, 3),
(334, '2015-07-08 09:53:38', 4, 379, 160, 3),
(335, '2015-07-08 09:56:04', 4, 380, 160, 3),
(336, '2015-07-08 09:58:25', 4, 381, 160, 3),
(337, '2015-07-08 10:00:28', 4, 382, 160, 3),
(338, '2015-07-08 10:02:17', 4, 383, 160, 3),
(339, '2015-07-08 10:04:10', 4, 384, 160, 3),
(340, '2015-07-08 13:26:41', 4, 385, 160, 3),
(341, '2015-07-08 13:30:52', 4, 386, 160, 3),
(342, '2015-07-08 13:46:11', 4, 387, 160, 3),
(343, '2015-07-09 10:36:46', 4, 388, 160, 3),
(344, '2015-07-09 12:25:53', 4, 389, 160, 3),
(345, '2015-07-10 10:21:03', 4, 390, 160, 3),
(346, '2015-07-10 10:35:33', 4, 391, 160, 3),
(347, '2015-07-10 10:46:09', 4, 392, 160, 3),
(348, '2015-07-10 12:38:40', 4, 393, 160, 3),
(349, '2015-07-10 13:22:53', 4, 394, 160, 3),
(350, '2015-07-10 13:31:47', 4, 395, 160, 3),
(351, '2015-07-10 13:35:48', 4, 396, 160, 3),
(352, '2015-07-13 09:13:44', 4, 398, 160, 3),
(353, '2015-07-13 09:39:07', 4, 399, 160, 3),
(354, '2015-07-13 09:44:04', 4, 400, 160, 3),
(355, '2015-07-13 11:01:08', 4, 401, 160, 3),
(356, '2015-07-13 12:08:11', 4, 402, 160, 3),
(357, '2015-07-13 12:32:55', 4, 403, 160, 3),
(358, '2015-07-14 09:24:04', 4, 404, 160, 3),
(359, '2015-07-14 09:31:09', 4, 405, 160, 3),
(360, '2015-07-14 09:36:07', 4, 406, 160, 3),
(361, '2015-07-14 09:42:14', 4, 407, 160, 3),
(362, '2015-07-14 09:55:21', 4, 408, 160, 3),
(363, '2015-07-14 11:02:43', 4, 409, 160, 3),
(364, '2015-07-14 13:34:55', 4, 410, 160, 3),
(365, '2015-07-15 12:20:57', 4, 411, 160, 3),
(366, '2015-07-15 12:34:53', 4, 412, 160, 3);

-- --------------------------------------------------------

--
-- Table structure for table `llx_element_element`
--

CREATE TABLE IF NOT EXISTS `llx_element_element` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_source` int(11) NOT NULL,
  `sourcetype` varchar(32) NOT NULL,
  `fk_target` int(11) NOT NULL,
  `targettype` varchar(32) NOT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `idx_element_element_idx1` (`fk_source`,`sourcetype`,`fk_target`,`targettype`),
  KEY `idx_element_element_fk_target` (`fk_target`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_element_lock`
--

CREATE TABLE IF NOT EXISTS `llx_element_lock` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_element` int(11) NOT NULL,
  `elementtype` varchar(32) NOT NULL,
  `datel` datetime DEFAULT NULL,
  `datem` datetime DEFAULT NULL,
  `sessionid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_element_resources`
--

CREATE TABLE IF NOT EXISTS `llx_element_resources` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `resource_id` int(11) DEFAULT NULL,
  `resource_type` varchar(64) DEFAULT NULL,
  `element_id` int(11) DEFAULT NULL,
  `element_type` varchar(64) DEFAULT NULL,
  `busy` int(11) DEFAULT NULL,
  `mandatory` int(11) DEFAULT NULL,
  `fk_user_create` int(11) DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `idx_element_resources_idx1` (`resource_id`,`resource_type`,`element_id`,`element_type`),
  KEY `idx_element_element_element_id` (`element_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_element_tag`
--

CREATE TABLE IF NOT EXISTS `llx_element_tag` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `lang` varchar(5) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `fk_element` int(11) NOT NULL,
  `element` varchar(64) NOT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_element_tag` (`entity`,`lang`,`tag`,`fk_element`,`element`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_entrepot`
--

CREATE TABLE IF NOT EXISTS `llx_entrepot` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `label` varchar(255) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `description` text,
  `lieu` varchar(64) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `town` varchar(50) DEFAULT NULL,
  `fk_departement` int(11) DEFAULT NULL,
  `fk_pays` int(11) DEFAULT '0',
  `statut` tinyint(4) DEFAULT '1',
  `valo_pmp` float(12,4) DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_entrepot_label` (`label`,`entity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_events`
--

CREATE TABLE IF NOT EXISTS `llx_events` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(32) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `dateevent` datetime DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `description` varchar(250) NOT NULL,
  `ip` varchar(32) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `fk_object` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_events_dateevent` (`dateevent`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_event_element`
--

CREATE TABLE IF NOT EXISTS `llx_event_element` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_source` int(11) NOT NULL,
  `fk_target` int(11) NOT NULL,
  `targettype` varchar(32) NOT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_expedition`
--

CREATE TABLE IF NOT EXISTS `llx_expedition` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ref` varchar(30) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_soc` int(11) NOT NULL,
  `ref_ext` varchar(30) DEFAULT NULL,
  `ref_int` varchar(30) DEFAULT NULL,
  `ref_customer` varchar(30) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `date_expedition` datetime DEFAULT NULL,
  `date_delivery` datetime DEFAULT NULL,
  `fk_address` int(11) DEFAULT NULL,
  `fk_shipping_method` int(11) DEFAULT NULL,
  `tracking_number` varchar(50) DEFAULT NULL,
  `fk_statut` smallint(6) DEFAULT '0',
  `height` float DEFAULT NULL,
  `width` float DEFAULT NULL,
  `size_units` int(11) DEFAULT NULL,
  `size` float DEFAULT NULL,
  `weight_units` int(11) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `idx_expedition_uk_ref` (`ref`,`entity`),
  KEY `idx_expedition_fk_soc` (`fk_soc`),
  KEY `idx_expedition_fk_user_author` (`fk_user_author`),
  KEY `idx_expedition_fk_user_valid` (`fk_user_valid`),
  KEY `idx_expedition_fk_shipping_method` (`fk_shipping_method`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_expeditiondet`
--

CREATE TABLE IF NOT EXISTS `llx_expeditiondet` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_expedition` int(11) NOT NULL,
  `fk_origin_line` int(11) DEFAULT NULL,
  `fk_entrepot` int(11) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `rang` int(11) DEFAULT '0',
  PRIMARY KEY (`rowid`),
  KEY `idx_expeditiondet_fk_expedition` (`fk_expedition`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_expeditiondet_batch`
--

CREATE TABLE IF NOT EXISTS `llx_expeditiondet_batch` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_expeditiondet` int(11) NOT NULL,
  `eatby` date DEFAULT NULL,
  `sellby` date DEFAULT NULL,
  `batch` varchar(30) DEFAULT NULL,
  `qty` double NOT NULL DEFAULT '0',
  `fk_origin_stock` int(11) NOT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_fk_expeditiondet` (`fk_expeditiondet`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_export_compta`
--

CREATE TABLE IF NOT EXISTS `llx_export_compta` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(12) NOT NULL,
  `date_export` datetime NOT NULL,
  `fk_user` int(11) NOT NULL,
  `note` text,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_export_model`
--

CREATE TABLE IF NOT EXISTS `llx_export_model` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_user` int(11) NOT NULL DEFAULT '0',
  `label` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `field` text NOT NULL,
  `filter` text,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_export_model` (`label`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `elementtype` varchar(64) NOT NULL DEFAULT 'member',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `label` varchar(255) NOT NULL,
  `type` varchar(8) DEFAULT NULL,
  `size` varchar(8) DEFAULT NULL,
  `fieldunique` int(11) DEFAULT '0',
  `fieldrequired` int(11) DEFAULT '0',
  `pos` int(11) DEFAULT '0',
  `param` text,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_extrafields_name` (`name`,`entity`,`elementtype`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=132 ;

--
-- Dumping data for table `llx_extrafields`
--

INSERT INTO `llx_extrafields` (`rowid`, `name`, `entity`, `elementtype`, `tms`, `label`, `type`, `size`, `fieldunique`, `fieldrequired`, `pos`, `param`) VALUES
(22, 'act', 1, 'projet_task', '2015-03-14 22:06:33', 'Actividad', 'select', '', 0, 0, 0, 'a:1:{s:7:"options";a:7:{i:0;s:4:" ---";i:1;s:11:"Fontanería";i:2;s:12:"Carpintería";i:3;s:7:"Pintura";i:4;s:11:"Cerrajería";i:5;s:11:"Jardinería";i:6;s:13:"Albañilería";}}'),
(37, 'title_cli', 1, 'projet', '2015-04-04 14:33:45', 'Cliente', 'separate', '', 0, 0, 0, 'a:1:{s:7:"options";a:1:{s:0:"";N;}}'),
(38, 'nom_cli', 1, 'projet', '2015-04-04 14:34:26', 'Nombre', 'varchar', '255', 0, 0, 0, 'a:1:{s:7:"options";a:1:{s:0:"";N;}}'),
(39, 'ref_K_cli', 1, 'projet', '2015-04-25 18:42:20', 'Referencia K', 'varchar', '255', 0, 0, 0, 'a:1:{s:7:"options";a:1:{s:0:"";N;}}'),
(40, 'macro_cli', 1, 'projet', '2015-04-25 18:51:58', 'Macro', 'varchar', '255', 0, 0, 0, 'a:1:{s:7:"options";a:1:{s:0:"";N;}}'),
(42, 'dir_cli', 1, 'projet', '2015-04-25 18:48:21', 'Dirección', 'varchar', '255', 0, 0, 0, 'a:1:{s:7:"options";a:1:{s:0:"";N;}}'),
(43, 'zipcode_cli', 1, 'projet', '2015-04-25 18:48:02', 'Cod. Postal', 'varchar', '5', 0, 0, 0, 'a:1:{s:7:"options";a:1:{s:0:"";N;}}'),
(44, 'tel_cli', 1, 'projet', '2015-04-25 18:47:58', 'Telefono', 'int', '9', 0, 0, 0, 'a:1:{s:7:"options";a:1:{s:0:"";N;}}'),
(45, 'mov_cli', 1, 'projet', '2015-04-25 18:47:53', 'Móvil', 'int', '9', 0, 0, 0, 'a:1:{s:7:"options";a:1:{s:0:"";N;}}'),
(46, 'lc_cli', 1, 'projet', '2015-04-25 18:47:46', 'Límite de Cobertura', 'varchar', '255', 0, 0, 0, 'a:1:{s:7:"options";a:1:{s:0:"";N;}}'),
(47, 'ser_cli', 1, 'projet', '2015-04-25 18:47:42', 'Tipo de servicio', 'select', '', 0, 0, 0, 'a:1:{s:7:"options";a:2:{i:1;s:7:" Normal";i:2;s:8:" Urgente";}}'),
(48, 'tra_cli', 1, 'projet', '2015-04-25 18:47:35', 'Nota de la tramitadora', 'text', '2000', 0, 0, 0, 'a:1:{s:7:"options";a:1:{s:0:"";N;}}'),
(49, 'loc_cli', 1, 'projet', '2015-04-25 18:47:07', 'Localidad', 'select', '', 0, 0, 0, 'a:1:{s:7:"options";a:165:{i:1;s:6:"ALAIOR";i:2;s:5:"ALARO";i:3;s:7:"ALCUDIA";i:4;s:7:"ALGAIDA";i:5;s:15:"ALQUERIA BLANCA";i:6;s:7:"ANDRATX";i:7;s:6:"ARIANY";i:8;s:4:"ARTA";i:9;s:19:"BANYOS DE SANT JOAN";i:10;s:10:"BAYALBUFAR";i:11;s:8:"BINIAMAR";i:12;s:9:"BINIARAIX";i:13;s:8:"BINIBECA";i:14;s:10:"BINISSALEM";i:15;s:5:"BUGER";i:16;s:7:"BUNYOLA";i:17;s:7:"CAIMARI";i:18;s:10:"CALA BLAVA";i:19;s:9:"CALA BONA";i:20;s:17:"CALA DE PORTINATX";i:21;s:16:"CALA D´ALCAUFAR";i:22;s:10:"CALA D´OR";i:23;s:14:"CALA EN PORTER";i:24;s:12:"CALA FIGUERA";i:25;s:11:"CALA GRACIO";i:26;s:11:"CALA MILLOR";i:27;s:11:"CALA MOREIA";i:28;s:11:"CALA MORELL";i:29;s:11:"CALA MURADA";i:30;s:12:"CALA RATJADA";i:31;s:16:"CALA SAN VICENÇ";i:32;s:18:"CALA SANTA GALDANA";i:33;s:7:"CALONGE";i:34;s:6:"CALVIA";i:35;s:8:"CAMPANET";i:36;s:15:"CAMPOS DEL PORT";i:37;s:9:"CAN CLAVO";i:38;s:8:"CAN CREU";i:39;s:12:"CAN PASTILLA";i:40;s:12:"CAN PICAFORT";i:41;s:11:"CAN SINGALA";i:42;s:8:"CAPDELLA";i:43;s:9:"CAPDEPERA";i:44;s:10:"CAS CATALA";i:45;s:10:"CAS CONCOS";i:46;s:11:"CASES NOVAS";i:47;s:25:"CASES VELLAS DE FORMENTOR";i:48;s:21:"CIUTADELLA DE MENORCA";i:49;s:18:"COLL D´EN RABASSA";i:50;s:21:"COLONIA DE SANT JORDI";i:51;s:7:"CONSELL";i:52;s:7:"COSTITX";i:53;s:4:"DEIA";i:54;s:7:"EIVISSA";i:55;s:19:"EL PILAR DE LA MOLA";i:56;s:7:"ES CALO";i:57;s:8:"ES CANAR";i:58;s:10:"ES CASTELL";i:59;s:12:"ES LLOMBARDS";i:60;s:11:"ES MERCADAL";i:61;s:15:"ES MIGJORN GRAN";i:62;s:9:"ES PALMER";i:63;s:7:"ES PORT";i:64;s:9:"ES PUJOLS";i:65;s:7:"ESCORCA";i:66;s:8:"ESPORLES";i:67;s:12:"ESTABLIMENTS";i:68;s:19:"ESTANYOL DE MITJORN";i:69;s:10:"ESTELLENCS";i:70;s:8:"FELANITX";i:71;s:9:"FERRERIES";i:72;s:9:"FORNALUTX";i:73;s:8:"FORNELLS";i:74;s:7:"GALILEA";i:75;s:6:"GENOVA";i:76;s:4:"INCA";i:77;s:5:"JESUS";i:78;s:22:"LLORET DE VISTA ALEGRE";i:79;s:7:"LLOSETA";i:80;s:5:"LLUBI";i:81;s:10:"LLUCALCARI";i:82;s:9:"LLUCMAJOR";i:83;s:5:"MAHON";i:84;s:7:"MANACOR";i:85;s:17:"MANCOR DE LA VALL";i:86;s:17:"MARIA DE LA SALUT";i:87;s:8:"MARRATXI";i:88;s:8:"MONTUIRI";i:89;s:7:"MOSCARI";i:90;s:4:"MURO";i:91;s:6:"ORIENT";i:92;s:17:"PALMA DE MALLORCA";i:93;s:10:"PALMA NOVA";i:94;s:7:"PEGUERA";i:95;s:5:"PETRA";i:96;s:4:"PINA";i:97;s:9:"POLLENÇA";i:98;s:12:"PONT D´INCA";i:99;s:8:"PORRERES";i:100;s:19:"PORT DE SANT MIQUEL";i:101;s:14:"PORT DE SOLLER";i:102;s:15:"PORT D´ANDRATX";i:103;s:11:"PORTAL NOUS";i:104;s:11:"PORTO COLOM";i:105;s:12:"PORTO CRISTO";i:106;s:11:"PORTO PETRO";i:107;s:11:"PUIGPUNYENT";i:108;s:11:"PUNTA PRIMA";i:109;s:11:"SA CABANETA";i:110;s:8:"SA CANAL";i:111;s:14:"SA CASA BLANCA";i:112;s:23:"SA COLONIA DE SANT PERE";i:113;s:16:"SA CREU VERMELLA";i:114;s:11:"SA MESQUIDA";i:115;s:8:"SA POBLA";i:116;s:9:"SA RAPITA";i:117;s:9:"SA SAVINA";i:118;s:11:"SANT AGUSTI";i:119;s:23:"SANT ANTONI DE PORTMANY";i:120;s:12:"SANT CLIMENT";i:121;s:25:"SANT FERRAN DE SES ROQUES";i:122;s:27:"SANT FRANCESC DE FORMENTERA";i:123;s:28:"SANT FRANCESC DE SES SALINES";i:124;s:10:"SANT JAUME";i:125;s:9:"SANT JOAN";i:126;s:21:"SANT JOAN DE LABRITJA";i:127;s:10:"SANT JORDI";i:128;s:10:"SANT JOSEP";i:129;s:27:"SANT LLORENÇ DES CARDASSAR";i:130;s:10:"SANT LLUIS";i:131;s:21:"SANT MATEU D´EUBARCA";i:132;s:23:"SANT MIQUEL DE BALASANT";i:133;s:10:"SANT RAFEL";i:134;s:9:"SANT TELM";i:135;s:10:"SANT TOMAS";i:136;s:13:"SANT. AGUSTIN";i:137;s:12:"SANT. CARLES";i:138;s:12:"SANT. VICENT";i:139;s:21:"SANTA AGNES DE CORONA";i:140;s:13:"SANTA EUGENIA";i:141;s:21:"SANTA EULALIA DEL RIU";i:142;s:15:"SANTA GERTRUDIS";i:143;s:15:"SANTA MARGALIDA";i:144;s:20:"SANTA MARIA DEL CAMI";i:145;s:12:"SANTA PONÇA";i:146;s:8:"SANTANYI";i:147;s:15:"SECA DE LA REAL";i:148;s:5:"SELVA";i:149;s:9:"SENCELLES";i:150;s:12:"SES OLLERIES";i:151;s:11:"SES SALINES";i:152;s:5:"SINEU";i:153;s:6:"SOLLER";i:154;s:8:"SOLLERIC";i:155;s:11:"SON FERRIOL";i:156;s:11:"SON SARDINA";i:157;s:9:"SON SERRA";i:158;s:11:"SON SERVERA";i:159;s:11:"S_ESGLEIETA";i:160;s:12:"S´ARANJASSA";i:161;s:9:"S´ARENAL";i:162;s:9:"S´ARRACO";i:163;s:9:"TALAMANCA";i:164;s:11:"VALLDEMOSSA";i:165;s:20:"VILAFRANCA DE BONANY";}}'),
(50, 'prov_cli', 1, 'projet', '2015-05-12 20:41:58', 'Provincia', 'select', '', 0, 0, 0, 'a:1:{s:7:"options";a:4:{i:1;s:8:"MALLORCA";i:2;s:7:"MENORCA";i:3;s:5:"IBIZA";s:0:"";N;}}'),
(91, 'dni_cli', 1, 'projet', '2015-04-14 17:27:29', 'DNI/CIF', 'varchar', '255', 0, 0, 0, 'a:1:{s:7:"options";a:1:{s:0:"";N;}}'),
(92, 'rc_cli', 1, 'projet', '2015-04-14 17:28:22', 'Datos R.C', 'varchar', '255', 0, 0, 0, 'a:1:{s:7:"options";a:1:{s:0:"";N;}}'),
(93, 'mail_cli', 1, 'projet', '2015-04-14 17:28:53', 'E-mail', 'mail', '', 0, 0, 0, 'a:1:{s:7:"options";a:1:{s:0:"";N;}}'),
(94, 'title_llv', 1, 'projet', '2015-04-14 17:29:22', 'Llaves - APIS', 'separate', '', 0, 0, 0, 'a:1:{s:7:"options";a:1:{s:0:"";N;}}'),
(95, 'pj_api_llv', 1, 'projet', '2015-04-14 17:29:58', 'Llaves', 'checkbox', '', 0, 0, 0, 'a:1:{s:7:"options";a:1:{i:1;s:4:" Sí";}}'),
(96, 'pj_api_slct', 1, 'projet', '2015-07-15 18:36:03', 'API', 'select', '', 0, 0, 0, 'a:1:{s:7:"options";a:14:{i:1;s:15:" Montaña Negra";i:2;s:12:" Fincas Fiol";i:3;s:15:" Antonio Palmer";i:4;s:15:" Palmer Estades";i:5;s:13:" Virginia Liz";i:6;s:25:" Centre Comptable La Vila";i:7;s:12:" Javier Polo";i:8;s:15:" Pisos Sa Pobla";i:9;s:15:" Far d''Aucanada";i:10;s:8:" Activum";i:11;s:8:" Asescon";i:12;s:28:" Bym Servicios Inmobiliarios";i:13;s:13:" Raúl Gracia";s:0:"";N;}}'),
(100, 'pj_apj_returned', 1, 'projet', '2015-04-14 17:32:43', 'Devueltas', 'radio', '', 0, 0, 0, 'a:1:{s:7:"options";a:2:{i:0;s:4:" Sí";i:1;s:3:" No";}}'),
(101, 'pj_api_motive', 1, 'projet', '2015-04-14 17:33:18', 'Motivo', 'varchar', '255', 0, 0, 0, 'a:1:{s:7:"options";a:1:{s:0:"";N;}}'),
(102, 'pj_api_location', 1, 'projet', '2015-04-14 17:33:36', 'Ubicación', 'varchar', '255', 0, 0, 0, 'a:1:{s:7:"options";a:1:{s:0:"";N;}}'),
(103, 'pj_api_obs', 1, 'projet', '2015-05-25 20:09:52', 'Observaciones', 'text', '1500', 0, 0, 0, 'a:1:{s:7:"options";a:1:{s:0:"";N;}}'),
(104, 'title_gst', 1, 'projet', '2015-05-25 20:11:00', 'Llaves - Gestor', 'separate', '', 0, 0, 0, 'a:1:{s:7:"options";a:1:{s:0:"";N;}}'),
(105, 'pj_gst_llv', 1, 'projet', '2015-05-25 20:13:57', 'Llaves', 'checkbox', '', 0, 0, 0, 'a:1:{s:7:"options";a:1:{i:1;s:4:" Sí";}}'),
(106, 'pj_gst_slct', 1, 'projet', '2015-05-25 20:14:33', 'Gestor', 'select', '', 0, 0, 0, 'a:1:{s:7:"options";a:4:{i:1;s:14:" Diagonal Gest";i:2;s:6:" Aktua";i:3;s:9:" Inmoilla";s:0:"";N;}}'),
(107, 'pj_gst_returned', 1, 'projet', '2015-05-25 20:15:10', 'Devueltas', 'radio', '', 0, 0, 0, 'a:1:{s:7:"options";a:2:{i:0;s:4:" Sí";i:1;s:3:" No";}}'),
(108, 'pj_gst_motive', 1, 'projet', '2015-05-25 20:16:06', 'Motivo', 'varchar', '255', 0, 0, 0, 'a:1:{s:7:"options";a:1:{s:0:"";N;}}'),
(109, 'pj_gst_location', 1, 'projet', '2015-05-25 20:16:45', 'Ubicación', 'varchar', '255', 0, 0, 0, 'a:1:{s:7:"options";a:1:{s:0:"";N;}}'),
(110, 'pj_gst_obs', 1, 'projet', '2015-05-25 20:17:28', 'Observaciones', 'text', '1500', 0, 0, 0, 'a:1:{s:7:"options";a:1:{s:0:"";N;}}'),
(111, 'autonomo_cli', 1, 'societe', '2015-05-07 19:48:43', 'Autónomo', 'checkbox', '', 0, 0, 0, 'a:1:{s:7:"options";a:1:{i:0;s:3:"Sí";}}'),
(120, 'prov_oper', 1, 'user', '2015-05-23 18:49:37', 'Provincia', 'select', '', 0, 0, 0, 'a:1:{s:7:"options";a:3:{i:1;s:8:"MALLORCA";i:2;s:7:"MENORCA";i:3;s:5:"IBIZA";}}'),
(121, 'title_oper', 1, 'projet', '2015-05-25 20:17:59', 'Operario', 'separate', '', 0, 0, 0, 'a:1:{s:7:"options";a:1:{s:0:"";N;}}'),
(122, 'slct_oper', 1, 'projet', '2015-05-25 20:18:14', 'Operario', 'sellist', '', 0, 1, 0, 'a:1:{s:7:"options";a:1:{s:35:"user:login:rowid:: where operario=1";N;}}'),
(128, 'cat_oper', 1, 'projet', '2015-06-22 22:04:33', 'Categoría', 'select', '', 0, 1, 0, 'a:1:{s:7:"options";a:8:{i:1;s:8:"Albañil";i:2;s:9:"Fontanero";i:3;s:10:"Carpintero";i:4;s:9:"Cerrajero";i:5;s:6:"Pintor";i:6;s:12:"Electricista";i:7;s:9:"Jardinero";s:0:"";N;}}'),
(131, 'cat_oper', 1, 'user', '2015-07-15 18:37:21', 'Categoría', 'select', '', 0, 0, 0, 'a:1:{s:7:"options";a:9:{i:1;s:9:" Albañil";i:2;s:10:" Fontanero";i:3;s:11:" Carpintero";i:4;s:10:" Cerrajero";i:5;s:7:" Pintor";i:6;s:13:" Electricista";i:7;s:10:" Jardinero";i:8;s:14:" Multiservicio";s:0:"";N;}}');

-- --------------------------------------------------------

--
-- Table structure for table `llx_facture`
--

CREATE TABLE IF NOT EXISTS `llx_facture` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `facnumber` varchar(30) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(255) DEFAULT NULL,
  `ref_int` varchar(255) DEFAULT NULL,
  `ref_client` varchar(255) DEFAULT NULL,
  `type` smallint(6) NOT NULL DEFAULT '0',
  `increment` varchar(10) DEFAULT NULL,
  `fk_soc` int(11) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `datef` date DEFAULT NULL,
  `date_valid` date DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `paye` smallint(6) NOT NULL DEFAULT '0',
  `amount` double(24,8) NOT NULL DEFAULT '0.00000000',
  `remise_percent` double DEFAULT '0',
  `remise_absolue` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `close_code` varchar(16) DEFAULT NULL,
  `close_note` varchar(128) DEFAULT NULL,
  `tva` double(24,8) DEFAULT '0.00000000',
  `localtax1` double(24,8) DEFAULT '0.00000000',
  `localtax2` double(24,8) DEFAULT '0.00000000',
  `revenuestamp` double(24,8) DEFAULT '0.00000000',
  `total` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `fk_statut` smallint(6) NOT NULL DEFAULT '0',
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_facture_source` int(11) DEFAULT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `fk_account` int(11) DEFAULT NULL,
  `fk_currency` varchar(3) DEFAULT NULL,
  `fk_cond_reglement` int(11) NOT NULL DEFAULT '1',
  `fk_mode_reglement` int(11) DEFAULT NULL,
  `date_lim_reglement` date DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `idx_facture_uk_facnumber` (`facnumber`,`entity`),
  KEY `idx_facture_fk_soc` (`fk_soc`),
  KEY `idx_facture_fk_user_author` (`fk_user_author`),
  KEY `idx_facture_fk_user_valid` (`fk_user_valid`),
  KEY `idx_facture_fk_facture_source` (`fk_facture_source`),
  KEY `idx_facture_fk_projet` (`fk_projet`),
  KEY `idx_facture_fk_account` (`fk_account`),
  KEY `idx_facture_fk_currency` (`fk_currency`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `llx_facture`
--

INSERT INTO `llx_facture` (`rowid`, `facnumber`, `entity`, `ref_ext`, `ref_int`, `ref_client`, `type`, `increment`, `fk_soc`, `datec`, `datef`, `date_valid`, `tms`, `paye`, `amount`, `remise_percent`, `remise_absolue`, `remise`, `close_code`, `close_note`, `tva`, `localtax1`, `localtax2`, `revenuestamp`, `total`, `total_ttc`, `fk_statut`, `fk_user_author`, `fk_user_valid`, `fk_facture_source`, `fk_projet`, `fk_account`, `fk_currency`, `fk_cond_reglement`, `fk_mode_reglement`, `date_lim_reglement`, `note_private`, `note_public`, `model_pdf`, `import_key`, `extraparams`) VALUES
(10, '(PROV10)', 1, NULL, NULL, NULL, 0, NULL, 16, '2015-05-30 18:34:22', '2015-05-28', NULL, '2015-05-30 16:35:20', 0, 0.00000000, NULL, NULL, 0, NULL, NULL, 42.00000000, 0.00000000, 0.00000000, 0.00000000, 200.00000000, 242.00000000, 0, 3, NULL, NULL, NULL, NULL, NULL, 1, 4, '2015-05-28', NULL, NULL, 'crabe', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_facturedet`
--

CREATE TABLE IF NOT EXISTS `llx_facturedet` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_facture` int(11) NOT NULL,
  `fk_parent_line` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `description` text,
  `tva_tx` double(6,3) DEFAULT NULL,
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `remise_percent` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `fk_remise_except` int(11) DEFAULT NULL,
  `subprice` double(24,8) DEFAULT NULL,
  `price` double(24,8) DEFAULT NULL,
  `total_ht` double(24,8) DEFAULT NULL,
  `total_tva` double(24,8) DEFAULT NULL,
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT NULL,
  `product_type` int(11) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `info_bits` int(11) DEFAULT '0',
  `buy_price_ht` double(24,8) DEFAULT '0.00000000',
  `fk_product_fournisseur_price` int(11) DEFAULT NULL,
  `fk_code_ventilation` int(11) NOT NULL DEFAULT '0',
  `special_code` int(10) unsigned DEFAULT '0',
  `rang` int(11) DEFAULT '0',
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_fk_remise_except` (`fk_remise_except`,`fk_facture`),
  KEY `idx_facturedet_fk_facture` (`fk_facture`),
  KEY `idx_facturedet_fk_product` (`fk_product`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `llx_facturedet`
--

INSERT INTO `llx_facturedet` (`rowid`, `fk_facture`, `fk_parent_line`, `fk_product`, `label`, `description`, `tva_tx`, `localtax1_tx`, `localtax1_type`, `localtax2_tx`, `localtax2_type`, `qty`, `remise_percent`, `remise`, `fk_remise_except`, `subprice`, `price`, `total_ht`, `total_tva`, `total_localtax1`, `total_localtax2`, `total_ttc`, `product_type`, `date_start`, `date_end`, `info_bits`, `buy_price_ht`, `fk_product_fournisseur_price`, `fk_code_ventilation`, `special_code`, `rang`, `import_key`) VALUES
(11, 10, NULL, NULL, NULL, 'apertura de puerta urgente', 21.000, 0.000, '3', 0.000, '3', 1, 0, 0, NULL, 200.00000000, NULL, 200.00000000, 42.00000000, 0.00000000, 0.00000000, 242.00000000, 1, NULL, NULL, 0, 0.00000000, NULL, 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_facturedet_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_facturedet_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_facturedet_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_facturedet_rec`
--

CREATE TABLE IF NOT EXISTS `llx_facturedet_rec` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_facture` int(11) NOT NULL,
  `fk_parent_line` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `product_type` int(11) DEFAULT '0',
  `label` varchar(255) DEFAULT NULL,
  `description` text,
  `tva_tx` double(6,3) DEFAULT '19.600',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `remise_percent` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `subprice` double(24,8) DEFAULT NULL,
  `price` double(24,8) DEFAULT NULL,
  `total_ht` double(24,8) DEFAULT NULL,
  `total_tva` double(24,8) DEFAULT NULL,
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT NULL,
  `info_bits` int(11) DEFAULT '0',
  `special_code` int(10) unsigned DEFAULT '0',
  `rang` int(11) DEFAULT '0',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_facture_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_facture_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_facture_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_facture_fourn`
--

CREATE TABLE IF NOT EXISTS `llx_facture_fourn` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(30) DEFAULT NULL,
  `ref_supplier` varchar(50) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(30) DEFAULT NULL,
  `type` smallint(6) NOT NULL DEFAULT '0',
  `fk_soc` int(11) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `datef` date DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `libelle` varchar(255) DEFAULT NULL,
  `paye` smallint(6) NOT NULL DEFAULT '0',
  `amount` double(24,8) NOT NULL DEFAULT '0.00000000',
  `remise` double(24,8) DEFAULT '0.00000000',
  `close_code` varchar(16) DEFAULT NULL,
  `close_note` varchar(128) DEFAULT NULL,
  `tva` double(24,8) DEFAULT '0.00000000',
  `localtax1` double(24,8) DEFAULT '0.00000000',
  `localtax2` double(24,8) DEFAULT '0.00000000',
  `total` double(24,8) DEFAULT '0.00000000',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_tva` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `fk_statut` smallint(6) NOT NULL DEFAULT '0',
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_facture_source` int(11) DEFAULT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `fk_cond_reglement` int(11) DEFAULT NULL,
  `fk_mode_reglement` int(11) DEFAULT NULL,
  `date_lim_reglement` date DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_facture_fourn_ref_supplier` (`ref_supplier`,`fk_soc`,`entity`),
  UNIQUE KEY `uk_facture_fourn_ref` (`ref`,`entity`),
  KEY `idx_facture_fourn_date_lim_reglement` (`date_lim_reglement`),
  KEY `idx_facture_fourn_fk_soc` (`fk_soc`),
  KEY `idx_facture_fourn_fk_user_author` (`fk_user_author`),
  KEY `idx_facture_fourn_fk_user_valid` (`fk_user_valid`),
  KEY `idx_facture_fourn_fk_projet` (`fk_projet`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_facture_fourn_det`
--

CREATE TABLE IF NOT EXISTS `llx_facture_fourn_det` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_facture_fourn` int(11) NOT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `ref` varchar(50) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `description` text,
  `pu_ht` double(24,8) DEFAULT NULL,
  `pu_ttc` double(24,8) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `remise_percent` double DEFAULT '0',
  `tva_tx` double(6,3) DEFAULT NULL,
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) DEFAULT NULL,
  `total_ht` double(24,8) DEFAULT NULL,
  `tva` double(24,8) DEFAULT NULL,
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT NULL,
  `product_type` int(11) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `info_bits` int(11) DEFAULT '0',
  `fk_code_ventilation` int(11) NOT NULL DEFAULT '0',
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_facture_fourn_det_fk_facture` (`fk_facture_fourn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_facture_fourn_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_facture_fourn_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_facture_fourn_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_facture_rec`
--

CREATE TABLE IF NOT EXISTS `llx_facture_rec` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(50) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_soc` int(11) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `amount` double(24,8) NOT NULL DEFAULT '0.00000000',
  `remise` double DEFAULT '0',
  `remise_percent` double DEFAULT '0',
  `remise_absolue` double DEFAULT '0',
  `tva` double(24,8) DEFAULT '0.00000000',
  `localtax1` double(24,8) DEFAULT '0.00000000',
  `localtax2` double(24,8) DEFAULT '0.00000000',
  `total` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `fk_cond_reglement` int(11) DEFAULT '0',
  `fk_mode_reglement` int(11) DEFAULT '0',
  `date_lim_reglement` date DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  `usenewprice` int(11) DEFAULT '0',
  `frequency` int(11) DEFAULT NULL,
  `unit_frequency` varchar(2) DEFAULT 'd',
  `date_when` datetime DEFAULT NULL,
  `date_last_gen` datetime DEFAULT NULL,
  `nb_gen_done` int(11) DEFAULT NULL,
  `nb_gen_max` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `idx_facture_rec_uk_titre` (`titre`,`entity`),
  KEY `idx_facture_rec_fk_soc` (`fk_soc`),
  KEY `idx_facture_rec_fk_user_author` (`fk_user_author`),
  KEY `idx_facture_rec_fk_projet` (`fk_projet`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_fichinter`
--

CREATE TABLE IF NOT EXISTS `llx_fichinter` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_soc` int(11) NOT NULL,
  `fk_projet` int(11) DEFAULT '0',
  `fk_contrat` int(11) DEFAULT '0',
  `ref` varchar(30) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `datei` date DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_statut` smallint(6) DEFAULT '0',
  `duree` double DEFAULT NULL,
  `description` text,
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_fichinter_ref` (`ref`,`entity`),
  KEY `idx_fichinter_fk_soc` (`fk_soc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_fichinterdet`
--

CREATE TABLE IF NOT EXISTS `llx_fichinterdet` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_fichinter` int(11) DEFAULT NULL,
  `fk_parent_line` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` text,
  `duree` int(11) DEFAULT NULL,
  `rang` int(11) DEFAULT '0',
  PRIMARY KEY (`rowid`),
  KEY `idx_fichinterdet_fk_fichinter` (`fk_fichinter`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_fichinter_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_fichinter_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_ficheinter_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_holiday`
--

CREATE TABLE IF NOT EXISTS `llx_holiday` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_user` int(11) NOT NULL,
  `fk_user_create` int(11) DEFAULT NULL,
  `date_create` datetime NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `halfday` int(11) DEFAULT '0',
  `statut` int(11) NOT NULL DEFAULT '1',
  `fk_validator` int(11) NOT NULL,
  `date_valid` datetime DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `date_refuse` datetime DEFAULT NULL,
  `fk_user_refuse` int(11) DEFAULT NULL,
  `date_cancel` datetime DEFAULT NULL,
  `fk_user_cancel` int(11) DEFAULT NULL,
  `detail_refuse` varchar(250) DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  PRIMARY KEY (`rowid`),
  KEY `idx_holiday_fk_user` (`fk_user`),
  KEY `idx_holiday_fk_user_create` (`fk_user_create`),
  KEY `idx_holiday_date_create` (`date_create`),
  KEY `idx_holiday_date_debut` (`date_debut`),
  KEY `idx_holiday_date_fin` (`date_fin`),
  KEY `idx_holiday_fk_validator` (`fk_validator`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_holiday_config`
--

CREATE TABLE IF NOT EXISTS `llx_holiday_config` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` text,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `llx_holiday_config`
--

INSERT INTO `llx_holiday_config` (`rowid`, `name`, `value`) VALUES
(1, 'userGroup', NULL),
(2, 'lastUpdate', NULL),
(3, 'nbUser', NULL),
(4, 'delayForRequest', '31'),
(5, 'AlertValidatorDelay', '0'),
(6, 'AlertValidatorSolde', '0'),
(7, 'nbHolidayDeducted', '1'),
(8, 'nbHolidayEveryMonth', '2.08334');

-- --------------------------------------------------------

--
-- Table structure for table `llx_holiday_events`
--

CREATE TABLE IF NOT EXISTS `llx_holiday_events` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_holiday_name` (`name`,`entity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_holiday_logs`
--

CREATE TABLE IF NOT EXISTS `llx_holiday_logs` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `date_action` datetime NOT NULL,
  `fk_user_action` int(11) NOT NULL,
  `fk_user_update` int(11) NOT NULL,
  `type_action` varchar(255) NOT NULL,
  `prev_solde` varchar(255) NOT NULL,
  `new_solde` varchar(255) NOT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_holiday_users`
--

CREATE TABLE IF NOT EXISTS `llx_holiday_users` (
  `fk_user` int(11) NOT NULL,
  `nb_holiday` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`fk_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `llx_import_model`
--

CREATE TABLE IF NOT EXISTS `llx_import_model` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_user` int(11) NOT NULL DEFAULT '0',
  `label` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `field` text NOT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_import_model` (`label`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_links`
--

CREATE TABLE IF NOT EXISTS `llx_links` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datea` datetime NOT NULL,
  `url` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `objecttype` varchar(255) NOT NULL,
  `objectid` int(11) NOT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_livraison`
--

CREATE TABLE IF NOT EXISTS `llx_livraison` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ref` varchar(30) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_soc` int(11) NOT NULL,
  `ref_ext` varchar(30) DEFAULT NULL,
  `ref_int` varchar(30) DEFAULT NULL,
  `ref_customer` varchar(30) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `date_delivery` date DEFAULT NULL,
  `fk_address` int(11) DEFAULT NULL,
  `fk_statut` smallint(6) DEFAULT '0',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `idx_livraison_uk_ref` (`ref`,`entity`),
  KEY `idx_livraison_fk_soc` (`fk_soc`),
  KEY `idx_livraison_fk_user_author` (`fk_user_author`),
  KEY `idx_livraison_fk_user_valid` (`fk_user_valid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_livraisondet`
--

CREATE TABLE IF NOT EXISTS `llx_livraisondet` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_livraison` int(11) DEFAULT NULL,
  `fk_origin_line` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `description` text,
  `qty` double DEFAULT NULL,
  `subprice` double(24,8) DEFAULT '0.00000000',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `rang` int(11) DEFAULT '0',
  PRIMARY KEY (`rowid`),
  KEY `idx_livraisondet_fk_expedition` (`fk_livraison`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_localtax`
--

CREATE TABLE IF NOT EXISTS `llx_localtax` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datep` date DEFAULT NULL,
  `datev` date DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `note` text,
  `fk_bank` int(11) DEFAULT NULL,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_mailing`
--

CREATE TABLE IF NOT EXISTS `llx_mailing` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `statut` smallint(6) DEFAULT '0',
  `titre` varchar(60) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `sujet` varchar(60) DEFAULT NULL,
  `body` mediumtext,
  `bgcolor` varchar(8) DEFAULT NULL,
  `bgimage` varchar(255) DEFAULT NULL,
  `cible` varchar(60) DEFAULT NULL,
  `nbemail` int(11) DEFAULT NULL,
  `email_from` varchar(160) DEFAULT NULL,
  `email_replyto` varchar(160) DEFAULT NULL,
  `email_errorsto` varchar(160) DEFAULT NULL,
  `tag` varchar(128) DEFAULT NULL,
  `date_creat` datetime DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `date_appro` datetime DEFAULT NULL,
  `date_envoi` datetime DEFAULT NULL,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_user_appro` int(11) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  `joined_file1` varchar(255) DEFAULT NULL,
  `joined_file2` varchar(255) DEFAULT NULL,
  `joined_file3` varchar(255) DEFAULT NULL,
  `joined_file4` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_mailing_cibles`
--

CREATE TABLE IF NOT EXISTS `llx_mailing_cibles` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_mailing` int(11) NOT NULL,
  `fk_contact` int(11) NOT NULL,
  `lastname` varchar(160) DEFAULT NULL,
  `firstname` varchar(160) DEFAULT NULL,
  `email` varchar(160) NOT NULL,
  `other` varchar(255) DEFAULT NULL,
  `tag` varchar(128) DEFAULT NULL,
  `statut` smallint(6) NOT NULL DEFAULT '0',
  `source_url` varchar(160) DEFAULT NULL,
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(16) DEFAULT NULL,
  `date_envoi` datetime DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_mailing_cibles` (`fk_mailing`,`email`),
  KEY `idx_mailing_cibles_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_menu`
--

CREATE TABLE IF NOT EXISTS `llx_menu` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `menu_handler` varchar(16) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `module` varchar(64) DEFAULT NULL,
  `type` varchar(4) NOT NULL,
  `mainmenu` varchar(100) NOT NULL,
  `leftmenu` varchar(100) DEFAULT NULL,
  `fk_menu` int(11) NOT NULL,
  `fk_mainmenu` varchar(24) DEFAULT NULL,
  `fk_leftmenu` varchar(24) DEFAULT NULL,
  `position` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(100) DEFAULT NULL,
  `titre` varchar(255) NOT NULL,
  `langs` varchar(100) DEFAULT NULL,
  `level` smallint(6) DEFAULT NULL,
  `perms` varchar(255) DEFAULT NULL,
  `enabled` varchar(255) DEFAULT '1',
  `usertype` int(11) NOT NULL DEFAULT '0',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `idx_menu_uk_menu` (`menu_handler`,`fk_menu`,`position`,`url`,`entity`),
  KEY `idx_menu_menuhandler_type` (`menu_handler`,`type`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `llx_menu`
--

INSERT INTO `llx_menu` (`rowid`, `menu_handler`, `entity`, `module`, `type`, `mainmenu`, `leftmenu`, `fk_menu`, `fk_mainmenu`, `fk_leftmenu`, `position`, `url`, `target`, `titre`, `langs`, `level`, `perms`, `enabled`, `usertype`, `tms`) VALUES
(1, 'all', 1, 'agenda', 'top', 'agenda', NULL, 0, NULL, NULL, 100, '/comm/action/index.php', '', 'Agenda', 'agenda', NULL, '$user->rights->agenda->myactions->read', '$conf->agenda->enabled', 2, '2015-03-04 20:27:17'),
(2, 'all', 1, 'agenda', 'left', 'agenda', NULL, 1, NULL, NULL, 100, '/comm/action/index.php?mainmenu=agenda&amp;leftmenu=agenda', '', 'Actions', 'agenda', NULL, '$user->rights->agenda->myactions->read', '$conf->agenda->enabled', 2, '2015-03-04 20:27:17'),
(3, 'all', 1, 'agenda', 'left', 'agenda', NULL, 2, NULL, NULL, 101, '/comm/action/fiche.php?mainmenu=agenda&amp;leftmenu=agenda&amp;action=create', '', 'NewAction', 'commercial', NULL, '($user->rights->agenda->myactions->create||$user->rights->agenda->allactions->create)', '$conf->agenda->enabled', 2, '2015-03-04 20:27:17'),
(4, 'all', 1, 'agenda', 'left', 'agenda', NULL, 2, NULL, NULL, 102, '/comm/action/index.php?mainmenu=agenda&amp;leftmenu=agenda', '', 'Calendar', 'agenda', NULL, '$user->rights->agenda->myactions->read', '$conf->agenda->enabled', 2, '2015-03-04 20:27:17'),
(5, 'all', 1, 'agenda', 'left', 'agenda', NULL, 4, NULL, NULL, 103, '/comm/action/index.php?mainmenu=agenda&amp;leftmenu=agenda&amp;status=todo&amp;filter=mine', '', 'MenuToDoMyActions', 'agenda', NULL, '$user->rights->agenda->myactions->read', '$conf->agenda->enabled', 2, '2015-03-04 20:27:17'),
(6, 'all', 1, 'agenda', 'left', 'agenda', NULL, 4, NULL, NULL, 104, '/comm/action/index.php?mainmenu=agenda&amp;leftmenu=agenda&amp;status=done&amp;filter=mine', '', 'MenuDoneMyActions', 'agenda', NULL, '$user->rights->agenda->myactions->read', '$conf->agenda->enabled', 2, '2015-03-04 20:27:17'),
(7, 'all', 1, 'agenda', 'left', 'agenda', NULL, 4, NULL, NULL, 105, '/comm/action/index.php?mainmenu=agenda&amp;leftmenu=agenda&amp;status=todo', '', 'MenuToDoActions', 'agenda', NULL, '$user->rights->agenda->allactions->read', '$user->rights->agenda->allactions->read', 2, '2015-03-04 20:27:17'),
(8, 'all', 1, 'agenda', 'left', 'agenda', NULL, 4, NULL, NULL, 106, '/comm/action/index.php?mainmenu=agenda&amp;leftmenu=agenda&amp;status=done', '', 'MenuDoneActions', 'agenda', NULL, '$user->rights->agenda->allactions->read', '$user->rights->agenda->allactions->read', 2, '2015-03-04 20:27:17'),
(9, 'all', 1, 'agenda', 'left', 'agenda', NULL, 2, NULL, NULL, 112, '/comm/action/listactions.php?mainmenu=agenda&amp;leftmenu=agenda', '', 'List', 'agenda', NULL, '$user->rights->agenda->myactions->read', '$conf->agenda->enabled', 2, '2015-03-04 20:27:17'),
(10, 'all', 1, 'agenda', 'left', 'agenda', NULL, 9, NULL, NULL, 113, '/comm/action/listactions.php?mainmenu=agenda&amp;leftmenu=agenda&amp;status=todo&amp;filter=mine', '', 'MenuToDoMyActions', 'agenda', NULL, '$user->rights->agenda->myactions->read', '$conf->agenda->enabled', 2, '2015-03-04 20:27:17'),
(11, 'all', 1, 'agenda', 'left', 'agenda', NULL, 9, NULL, NULL, 114, '/comm/action/listactions.php?mainmenu=agenda&amp;leftmenu=agenda&amp;status=done&amp;filter=mine', '', 'MenuDoneMyActions', 'agenda', NULL, '$user->rights->agenda->myactions->read', '$conf->agenda->enabled', 2, '2015-03-04 20:27:17'),
(12, 'all', 1, 'agenda', 'left', 'agenda', NULL, 9, NULL, NULL, 115, '/comm/action/listactions.php?mainmenu=agenda&amp;leftmenu=agenda&amp;status=todo', '', 'MenuToDoActions', 'agenda', NULL, '$user->rights->agenda->allactions->read', '$user->rights->agenda->allactions->read', 2, '2015-03-04 20:27:17'),
(13, 'all', 1, 'agenda', 'left', 'agenda', NULL, 9, NULL, NULL, 116, '/comm/action/listactions.php?mainmenu=agenda&amp;leftmenu=agenda&amp;status=done', '', 'MenuDoneActions', 'agenda', NULL, '$user->rights->agenda->allactions->read', '$user->rights->agenda->allactions->read', 2, '2015-03-04 20:27:17'),
(14, 'all', 1, 'agenda', 'left', 'agenda', NULL, 2, NULL, NULL, 120, '/comm/action/rapport/index.php?mainmenu=agenda&amp;leftmenu=agenda', '', 'Reportings', 'agenda', NULL, '$user->rights->agenda->allactions->read', '$conf->agenda->enabled', 2, '2015-03-04 20:27:17');

-- --------------------------------------------------------

--
-- Table structure for table `llx_notify`
--

CREATE TABLE IF NOT EXISTS `llx_notify` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `daten` datetime DEFAULT NULL,
  `fk_action` int(11) NOT NULL,
  `fk_contact` int(11) DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `objet_type` varchar(24) NOT NULL,
  `objet_id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_notify_def`
--

CREATE TABLE IF NOT EXISTS `llx_notify_def` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` date DEFAULT NULL,
  `fk_action` int(11) NOT NULL,
  `fk_soc` int(11) NOT NULL,
  `fk_contact` int(11) DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `type` varchar(16) DEFAULT 'email',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_opensurvey_comments`
--

CREATE TABLE IF NOT EXISTS `llx_opensurvey_comments` (
  `id_comment` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_sondage` char(16) NOT NULL,
  `comment` text NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `usercomment` text,
  PRIMARY KEY (`id_comment`),
  KEY `idx_id_comment` (`id_comment`),
  KEY `idx_id_sondage` (`id_sondage`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_opensurvey_sondage`
--

CREATE TABLE IF NOT EXISTS `llx_opensurvey_sondage` (
  `id_sondage` varchar(16) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `commentaires` text,
  `mail_admin` varchar(128) DEFAULT NULL,
  `nom_admin` varchar(64) DEFAULT NULL,
  `fk_user_creat` int(11) NOT NULL,
  `titre` text NOT NULL,
  `date_fin` datetime NOT NULL,
  `format` varchar(2) NOT NULL,
  `mailsonde` tinyint(4) NOT NULL DEFAULT '0',
  `allow_comments` tinyint(4) NOT NULL DEFAULT '1',
  `allow_spy` tinyint(4) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sujet` text,
  PRIMARY KEY (`id_sondage`),
  KEY `idx_date_fin` (`date_fin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `llx_opensurvey_user_studs`
--

CREATE TABLE IF NOT EXISTS `llx_opensurvey_user_studs` (
  `id_users` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(64) NOT NULL,
  `id_sondage` varchar(16) NOT NULL,
  `reponses` varchar(100) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_users`),
  KEY `idx_opensurvey_user_studs_id_users` (`id_users`),
  KEY `idx_opensurvey_user_studs_nom` (`nom`),
  KEY `idx_opensurvey_user_studs_id_sondage` (`id_sondage`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_paiement`
--

CREATE TABLE IF NOT EXISTS `llx_paiement` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datep` datetime DEFAULT NULL,
  `amount` double(24,8) DEFAULT '0.00000000',
  `fk_paiement` int(11) NOT NULL,
  `num_paiement` varchar(50) DEFAULT NULL,
  `note` text,
  `fk_bank` int(11) NOT NULL DEFAULT '0',
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `statut` smallint(6) NOT NULL DEFAULT '0',
  `fk_export_compta` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_paiementcharge`
--

CREATE TABLE IF NOT EXISTS `llx_paiementcharge` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_charge` int(11) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datep` datetime DEFAULT NULL,
  `amount` double DEFAULT '0',
  `fk_typepaiement` int(11) NOT NULL,
  `num_paiement` varchar(50) DEFAULT NULL,
  `note` text,
  `fk_bank` int(11) NOT NULL,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_paiementfourn`
--

CREATE TABLE IF NOT EXISTS `llx_paiementfourn` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `datep` datetime DEFAULT NULL,
  `amount` double DEFAULT '0',
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_paiement` int(11) NOT NULL,
  `num_paiement` varchar(50) DEFAULT NULL,
  `note` text,
  `fk_bank` int(11) NOT NULL,
  `statut` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_paiementfourn_facturefourn`
--

CREATE TABLE IF NOT EXISTS `llx_paiementfourn_facturefourn` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_paiementfourn` int(11) DEFAULT NULL,
  `fk_facturefourn` int(11) DEFAULT NULL,
  `amount` double(24,8) DEFAULT '0.00000000',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_paiementfourn_facturefourn` (`fk_paiementfourn`,`fk_facturefourn`),
  KEY `idx_paiementfourn_facturefourn_fk_facture` (`fk_facturefourn`),
  KEY `idx_paiementfourn_facturefourn_fk_paiement` (`fk_paiementfourn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_paiement_facture`
--

CREATE TABLE IF NOT EXISTS `llx_paiement_facture` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_paiement` int(11) DEFAULT NULL,
  `fk_facture` int(11) DEFAULT NULL,
  `amount` double(24,8) DEFAULT '0.00000000',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_paiement_facture` (`fk_paiement`,`fk_facture`),
  KEY `idx_paiement_facture_fk_facture` (`fk_facture`),
  KEY `idx_paiement_facture_fk_paiement` (`fk_paiement`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_payment_salary`
--

CREATE TABLE IF NOT EXISTS `llx_payment_salary` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user` int(11) NOT NULL,
  `datep` date DEFAULT NULL,
  `datev` date DEFAULT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `fk_typepayment` int(11) NOT NULL,
  `num_payment` varchar(50) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `datesp` date DEFAULT NULL,
  `dateep` date DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `note` text,
  `fk_bank` int(11) DEFAULT NULL,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_prelevement_bons`
--

CREATE TABLE IF NOT EXISTS `llx_prelevement_bons` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(12) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime DEFAULT NULL,
  `amount` double DEFAULT '0',
  `statut` smallint(6) DEFAULT '0',
  `credite` smallint(6) DEFAULT '0',
  `note` text,
  `date_trans` datetime DEFAULT NULL,
  `method_trans` smallint(6) DEFAULT NULL,
  `fk_user_trans` int(11) DEFAULT NULL,
  `date_credit` datetime DEFAULT NULL,
  `fk_user_credit` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_prelevement_bons_ref` (`ref`,`entity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_prelevement_facture`
--

CREATE TABLE IF NOT EXISTS `llx_prelevement_facture` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_facture` int(11) NOT NULL,
  `fk_prelevement_lignes` int(11) NOT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_prelevement_facture_fk_prelevement_lignes` (`fk_prelevement_lignes`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_prelevement_facture_demande`
--

CREATE TABLE IF NOT EXISTS `llx_prelevement_facture_demande` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_facture` int(11) NOT NULL,
  `amount` double NOT NULL,
  `date_demande` datetime NOT NULL,
  `traite` smallint(6) DEFAULT '0',
  `date_traite` datetime DEFAULT NULL,
  `fk_prelevement_bons` int(11) DEFAULT NULL,
  `fk_user_demande` int(11) NOT NULL,
  `code_banque` varchar(7) DEFAULT NULL,
  `code_guichet` varchar(6) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `cle_rib` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_prelevement_lignes`
--

CREATE TABLE IF NOT EXISTS `llx_prelevement_lignes` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_prelevement_bons` int(11) DEFAULT NULL,
  `fk_soc` int(11) NOT NULL,
  `statut` smallint(6) DEFAULT '0',
  `client_nom` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT '0',
  `code_banque` varchar(7) DEFAULT NULL,
  `code_guichet` varchar(6) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `cle_rib` varchar(5) DEFAULT NULL,
  `note` text,
  PRIMARY KEY (`rowid`),
  KEY `idx_prelevement_lignes_fk_prelevement_bons` (`fk_prelevement_bons`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_prelevement_rejet`
--

CREATE TABLE IF NOT EXISTS `llx_prelevement_rejet` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_prelevement_lignes` int(11) DEFAULT NULL,
  `date_rejet` datetime DEFAULT NULL,
  `motif` int(11) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `fk_user_creation` int(11) DEFAULT NULL,
  `note` text,
  `afacturer` tinyint(4) DEFAULT '0',
  `fk_facture` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_printer_ipp`
--

CREATE TABLE IF NOT EXISTS `llx_printer_ipp` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `printer_name` text NOT NULL,
  `printer_location` text NOT NULL,
  `printer_uri` varchar(255) NOT NULL,
  `copy` int(11) NOT NULL DEFAULT '1',
  `module` varchar(16) NOT NULL,
  `login` varchar(32) NOT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product`
--

CREATE TABLE IF NOT EXISTS `llx_product` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(128) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(128) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `virtual` tinyint(4) NOT NULL DEFAULT '0',
  `fk_parent` int(11) DEFAULT '0',
  `label` varchar(255) NOT NULL,
  `description` text,
  `note` text,
  `customcode` varchar(32) DEFAULT NULL,
  `fk_country` int(11) DEFAULT NULL,
  `price` double(24,8) DEFAULT '0.00000000',
  `price_ttc` double(24,8) DEFAULT '0.00000000',
  `price_min` double(24,8) DEFAULT '0.00000000',
  `price_min_ttc` double(24,8) DEFAULT '0.00000000',
  `price_base_type` varchar(3) DEFAULT 'HT',
  `tva_tx` double(6,3) DEFAULT NULL,
  `recuperableonly` int(11) NOT NULL DEFAULT '0',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `fk_user_author` int(11) DEFAULT NULL,
  `tosell` tinyint(4) DEFAULT '1',
  `tobuy` tinyint(4) DEFAULT '1',
  `tobatch` tinyint(4) NOT NULL DEFAULT '0',
  `fk_product_type` int(11) DEFAULT '0',
  `duration` varchar(6) DEFAULT NULL,
  `seuil_stock_alerte` int(11) DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `fk_barcode_type` int(11) DEFAULT '0',
  `accountancy_code_sell` varchar(15) DEFAULT NULL,
  `accountancy_code_buy` varchar(15) DEFAULT NULL,
  `partnumber` varchar(32) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `weight_units` tinyint(4) DEFAULT NULL,
  `length` float DEFAULT NULL,
  `length_units` tinyint(4) DEFAULT NULL,
  `surface` float DEFAULT NULL,
  `surface_units` tinyint(4) DEFAULT NULL,
  `volume` float DEFAULT NULL,
  `volume_units` tinyint(4) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `pmp` double(24,8) NOT NULL DEFAULT '0.00000000',
  `canvas` varchar(32) DEFAULT NULL,
  `finished` tinyint(4) DEFAULT NULL,
  `hidden` tinyint(4) DEFAULT '0',
  `import_key` varchar(14) DEFAULT NULL,
  `desiredstock` int(11) DEFAULT '0',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_product_ref` (`ref`,`entity`),
  UNIQUE KEY `uk_product_barcode` (`barcode`,`fk_barcode_type`,`entity`),
  KEY `idx_product_label` (`label`),
  KEY `idx_product_barcode` (`barcode`),
  KEY `idx_product_import_key` (`import_key`),
  KEY `idx_product_seuil_stock_alerte` (`seuil_stock_alerte`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=363 ;

--
-- Dumping data for table `llx_product`
--

INSERT INTO `llx_product` (`rowid`, `ref`, `entity`, `ref_ext`, `datec`, `tms`, `virtual`, `fk_parent`, `label`, `description`, `note`, `customcode`, `fk_country`, `price`, `price_ttc`, `price_min`, `price_min_ttc`, `price_base_type`, `tva_tx`, `recuperableonly`, `localtax1_tx`, `localtax2_tx`, `fk_user_author`, `tosell`, `tobuy`, `tobatch`, `fk_product_type`, `duration`, `seuil_stock_alerte`, `url`, `barcode`, `fk_barcode_type`, `accountancy_code_sell`, `accountancy_code_buy`, `partnumber`, `weight`, `weight_units`, `length`, `length_units`, `surface`, `surface_units`, `volume`, `volume_units`, `stock`, `pmp`, `canvas`, `finished`, `hidden`, `import_key`, `desiredstock`) VALUES
(6, 'F001', 1, NULL, '2015-05-20 10:52:47', '2015-05-20 08:58:24', 0, 0, 'Localizacón de avería sin decubrir. Inervención mínima.', 'Localización de avería sin descubrir. Intervención mínima.', '', '', NULL, 21.00000000, 25.41000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(7, 'F002', 1, NULL, '2015-05-20 11:02:47', '2015-05-20 09:02:47', 0, 0, 'Localización de avería descubriendo sin reparar. Intervención mínima.', 'Localización de avería descubriendo sin reparar. Intervención mínima.', '', '', NULL, 24.00000000, 29.04000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(8, 'F004', 1, NULL, '2015-05-20 12:44:52', '2015-05-20 10:44:52', 0, 0, 'Sustitución de juego completo de válvula o rebosadero de bañera o similar.', 'Sustitución de juego completo de válvula o rebosadero de bañera o similar.', '', '', NULL, 44.20000000, 53.48200000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(9, 'F005', 1, NULL, '2015-05-20 12:46:04', '2015-05-20 10:46:04', 0, 0, 'Sustitución de sifón simple.', 'Sustitución de sifón simple.', '', '', NULL, 33.80000000, 40.89800000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(10, 'F006', 1, NULL, '2015-05-20 12:46:52', '2015-05-20 10:46:52', 0, 0, 'Sustitución de sifón doble.', 'Sustitución de sifón doble.', '', '', NULL, 38.90000000, 47.06900000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(11, 'F007', 1, NULL, '2015-05-20 12:47:49', '2015-05-20 10:47:49', 0, 0, 'Bote sifonico PVC + uniones.', 'Bote sifonico PVC + uniones.', '', '', NULL, 78.29000000, 94.73090000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(12, 'F008', 1, NULL, '2015-05-20 12:48:56', '2015-05-20 10:48:56', 0, 0, 'Bote sifonico PVC gran capacidad + Uniones.', 'Bote sifonico PVC gran capacidad + Uniones.', '', '', NULL, 105.40000000, 127.53400000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(13, 'F009', 1, NULL, '2015-05-20 12:49:40', '2015-05-20 10:49:40', 0, 0, 'Bote sifonico de plomo + Uniones.', 'Bote sifonico de plomo + Uniones.', '', '', NULL, 93.36000000, 112.96560000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(14, 'F010', 1, NULL, '2015-05-20 12:50:48', '2015-05-20 10:50:48', 0, 0, 'Bote sifonico de plomo gran capacidad + Uniones.', 'Bote sifonico de plomo gran capacidad + Uniones.', '', '', NULL, 119.81000000, 144.97010000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(15, 'F011', 1, NULL, '2015-05-20 12:55:18', '2015-05-20 10:55:18', 0, 0, 'Sustitución de tramo de tubería de desagüe, alimentación o calefacción en plomo, PVC o cobre (hasta 1 ml).', 'Sustitución de tramo de tubería de desagüe, alimentación o calefacción en plomo, PVC o cobre (hasta 1 ml).', '', '', NULL, 45.30000000, 54.81300000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(16, 'F012', 1, NULL, '2015-05-20 12:56:55', '2015-05-20 10:56:55', 0, 0, 'Sustitución de tramo de tubería de desagüe, alimentación o calefacción en plomo, PVC o cobre (ml adicional).', 'Sustitución de tramo de tubería de desagüe, alimentación o calefacción en plomo, PVC o cobre (ml adicional).', '', '', NULL, 11.20000000, 13.55200000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(17, 'F013', 1, NULL, '2015-05-20 12:58:21', '2015-05-20 10:58:21', 0, 0, 'Sustitución de mangueton recto de PVC, plomo (desmontaje y montaje de inodoro y tramo de tubería incluido).', 'Sustitución de mangueton recto de PVC, plomo (desmontaje y montaje de inodoro y tramo de tubería incluido).', '', '', NULL, 97.23000000, 117.64830000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(18, 'F014', 1, NULL, '2015-05-20 12:59:34', '2015-05-20 10:59:34', 0, 0, 'Sustitución de mangueton curvo de PVC, plomo (desmontaje y montaje de inodoro y tramo de tubería incluido).', 'Sustitución de mangueton curvo de PVC, plomo (desmontaje y montaje de inodoro y tramo de tubería incluido).', '', '', NULL, 128.40000000, 155.36400000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(19, 'F015', 1, NULL, '2015-05-20 13:00:53', '2015-05-20 11:00:53', 0, 0, 'Modificación o sustitución de tomas en siniestros de loza con cambio de modelo por estar descatalogado (en caso de estar cubiertos). Uno por siniestro.', 'Modificación o sustitución de tomas en siniestros de loza con cambio de modelo por estar descatalogado (en caso de estar cubiertos). Uno por siniestro.', '', '', NULL, 35.20000000, 42.59200000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(20, 'F016', 1, NULL, '2015-05-20 13:01:37', '2015-05-20 11:01:37', 0, 0, 'Tramo de tubería general (hasta 1 ml).', 'Tramo de tubería general (hasta 1 ml).', '', '', NULL, 46.48000000, 56.24080000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(21, 'F017', 1, NULL, '2015-05-20 13:02:21', '2015-05-20 11:02:21', 0, 0, 'Tramo de tubería general (ml adicional).', 'Tramo de tubería general (ml adicional).', '', '', NULL, 17.70000000, 21.41700000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(22, 'F018', 1, NULL, '2015-05-20 13:03:22', '2015-05-20 11:03:22', 0, 0, 'Sustitución de "T" ó "Y" + tramo de bajada general.', 'Sustitución de "T" ó "Y" + tramo de bajada general.', '', '', NULL, 89.98000000, 108.87580000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(23, 'F019', 1, NULL, '2015-05-20 13:04:20', '2015-05-20 11:04:20', 0, 0, 'Sustitución de "T" ó "Y" + tramo de bajada general.', 'Sustitución de "T" ó "Y" + tramo de bajada general.', '', '', NULL, 102.80000000, 124.38800000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(24, 'F020', 1, NULL, '2015-05-20 13:05:38', '2015-05-20 11:05:38', 0, 0, 'Sustitución de canalón PVC sin andamio 8ml).', 'Sustitución de canalón PVC sin andamio 8ml).', '', '', NULL, 20.00000000, 24.20000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(25, 'F021', 1, NULL, '2015-05-20 13:11:47', '2015-05-20 11:11:47', 0, 0, 'Sustitución de canalón de Zinc o aluminio sin andamio (ml).', 'Sustitución de canalón de Zinc o aluminio sin andamio (ml).', '', '', NULL, 24.00000000, 29.04000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(26, 'F022', 1, NULL, '2015-05-20 13:12:22', '2015-05-20 11:12:22', 0, 0, 'Sustitución canalón de cobre (ml).', 'Sustitución canalón de cobre (ml).', '', '', NULL, 32.00000000, 38.72000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(27, 'F023', 1, NULL, '2015-05-20 13:15:11', '2015-05-20 11:15:11', 0, 0, 'Reparación de manguetón / sustitución de mangueta flexible (incluido material).', 'Reparación de manguetón / sustitución de mangueta flexible (incluido material).', '', '', NULL, 37.77000000, 45.70170000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(28, 'F0024', 1, NULL, '2015-05-20 13:16:48', '2015-05-20 11:16:48', 0, 0, 'Reparación de bote sifinico.', 'Reparación de bote sifinico.', '', '', NULL, 32.40000000, 39.20400000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(29, 'F0025', 1, NULL, '2015-05-20 13:18:00', '2015-05-20 11:18:00', 0, 0, 'Reparación de válvula y/o sifón (bañera, lavabo, bide, fregadero, ducha...).', 'Reparación de válvula y/o sifón (bañera, lavabo, bide, fregadero, ducha...).', '', '', NULL, 46.20000000, 55.90200000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(30, 'F0026', 1, NULL, '2015-05-20 13:18:43', '2015-05-20 11:18:43', 0, 0, 'Reparación de tubería con soldadura.', 'Reparación de tubería con soldadura.', '', '', NULL, 48.60000000, 58.80600000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(31, 'F0027', 1, NULL, '2015-05-20 13:19:52', '2015-05-20 11:19:52', 0, 0, 'Reparación de tubería con abrazadera-Gebo tapaporos 1/2".', 'Reparación de tubería con abrazadera-Gebo tapaporos 1/2".', '', '', NULL, 39.38000000, 47.64980000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(32, 'F0028', 1, NULL, '2015-05-20 13:20:47', '2015-05-20 11:20:47', 0, 0, 'Reparación de tubería con abarzadera-Gebo tapaporos 3/4".', 'Reparación de tubería con abarzadera-Gebo tapaporos 3/4".', '', '', NULL, 48.30000000, 58.44300000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(33, 'F0029', 1, NULL, '2015-05-20 13:22:20', '2015-05-20 11:22:20', 0, 0, 'Reparación de tubería con abarazadera-Gebo tapaporos 1 1/4".', 'Reparación de tubería con abarazadera-Gebo tapaporos 1 1/4".', '', '', NULL, 56.16000000, 67.95360000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(34, 'F0030', 1, NULL, '2015-05-20 13:23:37', '2015-05-20 11:23:37', 0, 0, 'Reparación de tubería con abrazadera-Gebo tapaporos 1 1/2".', 'Reparación de tubería con abrazadera-Gebo tapaporos 1 1/2".', '', '', NULL, 58.56000000, 70.85760000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(35, 'F0031', 1, NULL, '2015-05-20 13:24:24', '2015-05-20 11:24:24', 0, 0, 'Reparación mecanismo cisterna (mano d obra y material).', 'Reparación mecanismo cisterna (mano d obra y material).', '', '', NULL, 35.60000000, 43.07600000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(36, 'F0032', 1, NULL, '2015-05-20 13:25:09', '2015-05-20 11:25:09', 0, 0, 'Reparación radiador (mano de obra y material).', 'Reparación radiador (mano de obra y material).', '', '', NULL, 48.22000000, 58.34620000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(37, 'F0033', 1, NULL, '2015-05-20 13:25:58', '2015-05-20 11:25:58', 0, 0, 'Reparación de llave de grifo, llave de paso (incluido mano de obra y material).', 'Reparación de llave de grifo, llave de paso (incluido mano de obra y material).', '', '', NULL, 45.60000000, 55.17600000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(38, 'F0034', 1, NULL, '2015-05-20 13:26:40', '2015-05-20 11:26:40', 0, 0, 'Rehacer juntas de mangueton, derivación o bajantes.', 'Rehacer juntas de mangueton, derivación o bajantes', '', '', NULL, 45.32000000, 54.83720000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(39, 'F003', 1, NULL, '2015-05-20 13:28:20', '2015-05-20 11:28:20', 0, 0, 'Sustitución ascendente conetida general (hasta 1 ml).', 'Sustitución ascendente conetida general (hasta 1 ml).', '', '', NULL, 46.48000000, 56.24080000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(40, 'F0035', 1, NULL, '2015-05-20 13:29:40', '2015-05-20 11:29:40', 0, 0, 'Sustitución de tramo de tubería de cobre hasta 22mm (1ml).', 'Sustitución de tramo de tubería de cobre hasta 22mm (1ml).', '', '', NULL, 48.95000000, 59.22950000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(41, 'F0036', 1, NULL, '2015-05-20 13:30:42', '2015-05-20 11:30:42', 0, 0, 'Sustitución de tramo de tubería de cobre hasta 22mm (adicional).', 'Sustitución de tramo de tubería de cobre hasta 22mm (adicional).', '', '', NULL, 12.53000000, 15.16130000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(42, 'F0037', 1, NULL, '2015-05-20 13:31:30', '2015-05-20 11:31:30', 0, 0, 'Sustitución de tramo de tubería de cobre hasta 42 mm (1ml).', 'Sustitución de tramo de tubería de cobre hasta 42 mm (1ml).', '', '', NULL, 67.44000000, 81.60240000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(43, 'F0038', 1, NULL, '2015-05-20 13:32:48', '2015-05-20 11:32:48', 0, 0, 'Sustitución de tramo de tubería de cobre 42mm (adicionales).', 'Sustitución de tramo de tubería de cobre 42mm (adicionales).', '', '', NULL, 13.44000000, 16.26240000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(44, 'F0039', 1, NULL, '2015-05-20 13:33:25', '2015-05-20 11:33:25', 0, 0, 'Sustitución de latiguillo.', 'Sustitución de latiguillo.', '', '', NULL, 18.51000000, 22.39710000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(45, 'F0040', 1, NULL, '2015-05-20 13:34:43', '2015-05-20 11:34:43', 0, 0, 'Sustitución de tubería de Politileno recticulado/multicapa, polibutileno o similares (1ml).', 'Sustitución de tubería de Politileno recticulado/multicapa, polibutileno o similares (1ml).', '', '', NULL, 95.40000000, 115.43400000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(46, 'F0041', 1, NULL, '2015-05-20 13:36:20', '2015-05-20 11:36:20', 0, 0, 'Sustitución de tubería de Polietileno recticulado/multicapa, polibutileno o similares (adicionales).', 'Sustitución de tubería de Polietileno recticulado/multicapa, polibutileno o similares (adicionales).', '', '', NULL, 38.10000000, 46.10100000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(47, 'F0042', 1, NULL, '2015-05-20 13:36:55', '2015-05-20 11:36:55', 0, 0, 'Sustitución de grifo o llave de paso.', 'Sustitución de grifo o llave de paso.', '', '', NULL, 21.14000000, 25.57940000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(48, 'F0043', 1, NULL, '2015-05-20 13:37:53', '2015-05-20 11:37:53', 0, 0, 'Sustitución de mecanismo de cisterna (incluido material).', 'Sustitución de mecanismo de cisterna (incluido material).', '', '', NULL, 75.97000000, 91.92370000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(49, 'HM001', 1, NULL, '2015-05-20 13:39:15', '2015-05-20 11:39:15', 0, 0, 'Mano de obra de oficial (todos los gremios).', 'Mano de obra de oficial (todos los gremios).', '', '', NULL, 21.00000000, 25.41000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(50, 'HM002', 1, NULL, '2015-05-20 13:40:03', '2015-05-20 11:40:03', 0, 0, 'Hora sucesiva de mano de obra oficial (todos los gremios).', 'Hora sucesiva de mano de obra oficial (todos los gremios).', '', '', NULL, 17.50000000, 21.17500000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(51, 'HM003', 1, NULL, '2015-05-20 13:40:50', '2015-05-20 11:40:50', 0, 0, 'Mano de obra ayudante (todos los gremios).', 'Mano de obra ayudante (todos los gremios).', '', '', NULL, 13.00000000, 15.73000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(52, 'HM004', 1, NULL, '2015-05-20 13:41:35', '2015-05-20 11:41:35', 0, 0, 'Hora sucesiva mano de obra ayidante (todos los gremios).', 'Hora sucesiva mano de obra ayidante (todos los gremios).', '', '', NULL, 9.50000000, 11.49500000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(54, 'HM005', 1, NULL, '2015-05-20 13:44:49', '2015-05-20 11:44:49', 0, 0, 'Hora sucesiva mano de obra ayudante (sólo se factura en estéticos para retirada y colocación de mobiliario).', 'Hora sucesiva mano de obra ayudante (sólo se factura en estéticos para retirada y colocación de mobiliario).', '', '', NULL, 8.50000000, 10.28500000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(55, 'HM006', 1, NULL, '2015-05-20 13:45:26', '2015-05-20 11:45:26', 0, 0, 'Mano de obra técnico.', 'Mano de obra técnico.', '', '', NULL, 24.30000000, 29.40300000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(56, 'HM007', 1, NULL, '2015-05-20 13:47:44', '2015-05-20 11:47:44', 0, 0, 'Hora sucesiva de mano de obra de Técnico.', 'Hora sucesiva de mano de obra de Técnico.', '', '', NULL, 18.90000000, 22.86900000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(57, 'HM008', 1, NULL, '2015-05-20 13:48:19', '2015-05-20 11:48:19', 0, 0, 'Mano de obra de ayudante Técnico.', 'Mano de obra de ayudante Técnico.', '', '', NULL, 17.30000000, 20.93300000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(58, 'HM009', 1, NULL, '2015-05-20 13:49:02', '2015-05-20 11:49:02', 0, 0, 'Hora sucesiva de mano de obra de Técnico.', 'Hora sucesiva de mano de obra de Técnico.', '', '', NULL, 11.00000000, 13.31000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(59, 'HM010', 1, NULL, '2015-05-20 13:49:29', '2015-05-20 11:49:29', 0, 0, 'Limpieza.', 'Limpieza.', '', '', NULL, 8.50000000, 10.28500000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(60, 'ME001', 1, NULL, '2015-05-20 13:50:36', '2015-05-20 11:50:36', 0, 0, 'Alquiler de andamios, incluso traslado a obra, montaje y desmontaje, hasta 2 cuerpos.', 'Alquiler de andamios, incluso traslado a obra, montaje y desmontaje, hasta 2 cuerpos.', '', '', NULL, 46.51000000, 56.27710000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(61, 'ME002', 1, NULL, '2015-05-20 13:51:33', '2015-05-20 11:51:33', 0, 0, 'Alquiler de andamios, incluso traslado a obra, montaje y desmontaje, hasta 3 cuerpos.', 'Alquiler de andamios, incluso traslado a obra, montaje y desmontaje, hasta 3 cuerpos.', '', '', NULL, 107.10000000, 129.59100000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(62, 'ME003', 1, NULL, '2015-05-20 13:52:22', '2015-05-20 11:52:22', 0, 0, 'Alquiler de andamios, incluso traslado a obra, montaje y desmontaje, hasta 4 cuerpos.', 'Alquiler de andamios, incluso traslado a obra, montaje y desmontaje, hasta 4 cuerpos.', '', '', NULL, 128.40000000, 155.36400000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(63, 'ME004', 1, NULL, '2015-05-20 13:53:10', '2015-05-20 11:53:10', 0, 0, 'Alquiler de andamios, incluso traslado a obra, montaje y desmontaje, hasta 5 cuerpos.', 'Alquiler de andamios, incluso traslado a obra, montaje y desmontaje, hasta 5 cuerpos.', '', '', NULL, 153.56000000, 185.80760000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(64, 'ME005', 1, NULL, '2015-05-20 13:57:55', '2015-05-20 11:57:55', 0, 0, 'Alquiler de andamios, incluso traslado a obra, montaje y desmontaje, hasta 6 cuerpos.', 'Alquiler de andamios, incluso traslado a obra, montaje y desmontaje, hasta 6 cuerpos', '', '', NULL, 184.27000000, 222.96670000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(65, 'ME006', 1, NULL, '2015-05-20 13:59:37', '2015-05-20 11:59:37', 0, 0, 'Alquiler contenedor (esta partida solo es de aplicación para estéticos e incluye la mano de obra necesaria y retirada a vertedero para mas de 2m3).', 'Alquiler contenedor (esta partida solo es de aplicación para estéticos e incluye la mano de obra necesaria y retirada a vertedero para mas de 2m3).', '', '', NULL, 80.00000000, 96.80000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(66, 'ME007', 1, NULL, '2015-05-22 11:28:32', '2015-05-22 09:28:32', 0, 0, 'UTILIZACIÓN DE SACO PARA ESCOMBRO CON RETIRADA DEL MISMO (ESTA PARTIDA SOLO ES DE APLICACIÓN PARA ESTÉTICOS E INCLUYE LA MANO DE OBRA NECESIARIA Y RETIRADA AVERTEDERO PARA MENOS DE 2M3).', 'UTILIZACIÓN DE SACO PARA ESCOMBRO CON RETIRADA DEL MISMO (ESTA PARTIDA SOLO ES DE APLICACIÓN PARA ESTÉTICOS E INCLUYE LA MANO DE OBRA NECESIARIA Y RETIRADA AVERTEDERO PARA MENOS DE 2M3).', '', '', NULL, 35.40000000, 42.83400000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(67, 'ME008', 1, NULL, '2015-05-22 11:29:13', '2015-05-22 09:29:13', 0, 0, 'ALQUILER DE MARTILLO COMPRESOR.', 'ALQUILER DE MARTILLO COMPRESOR', '', '', NULL, 32.10000000, 38.84100000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(68, 'ME009', 1, NULL, '2015-05-22 11:30:30', '2015-05-22 09:30:30', 0, 0, 'UTILIZACIÓN DE CAMIÓN CON CESTA PLUMA, ALTURA DE TRABAJO HASTA 12M. (PRECIO POR DÍA).', 'UTILIZACIÓN DE CAMIÓN CON CESTA PLUMA, ALTURA DE TRABAJO HASTA 12M. (PRECIO POR DÍA).', '', '', NULL, 168.00000000, 203.28000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(69, 'ME010', 1, NULL, '2015-05-22 11:31:46', '2015-05-22 09:31:46', 0, 0, 'UTILIZACIÓN DE CAMIÓN CON CESTA PLUMA, ALTURA DE TRABAJO DE 18M A 21M (PRECIO POR DÍA).', 'UTILIZACIÓN DE CAMIÓN CON CESTA PLUMA, ALTURA DE TRABAJO DE 18M A 21M (PRECIO POR DÍA).', '', '', NULL, 248.00000000, 300.08000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(70, 'ME011', 1, NULL, '2015-05-22 11:34:40', '2015-05-22 09:34:40', 0, 0, 'UTILIZACIÓN PLATAFORMA TIJERA ELÉCTRICA O ARTICULADA, ALTURA DE TRABAJO HASTA 16M PRECIO POR DÍA).', 'UTILIZACIÓN PLATAFORMA TIJERA ELÉCTRICA O ARTICULADA, ALTURA DE TRABAJO HASTA 16M PRECIO POR DÍA).', '', '', NULL, 208.00000000, 251.68000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(71, 'ME012', 1, NULL, '2015-05-22 11:35:44', '2015-05-22 09:35:44', 0, 0, 'UTILIZACIÓN DE TIJERA ELE´CTRICA O ARTICULADA, ALTURA DE TRABAJO HASTA 23 M (PRECIO POR DÍA).', 'UTILIZACIÓN DE TIJERA ELE´CTRICA O ARTICULADA, ALTURA DE TRABAJO HASTA 23 M (PRECIO POR DÍA).', '', '', NULL, 248.00000000, 300.08000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(72, 'ME013', 1, NULL, '2015-05-22 11:36:59', '2015-05-22 09:36:59', 0, 0, 'PLUS DE PELIGROSIDAD PARA TRANBAJOS VERTICALES, INCLUIDOS ALQUILER DE ARNÉS (SE FACTURARÁ UN CONCEPTO POR SERVICIO).', 'PLUS DE PELIGROSIDAD PARA TRANBAJOS VERTICALES, INCLUIDOS ALQUILER DE ARNÉS (SE FACTURARÁ UN CONCEPTO POR SERVICIO).', '', '', NULL, 75.00000000, 90.75000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(73, 'AL001', 1, NULL, '2015-05-22 11:38:11', '2015-05-22 09:38:11', 0, 0, 'SOLADOS GRES M2.', 'SOLADOS GRES M2.', '', '', NULL, 7.41000000, 8.96610000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(74, 'AL002', 1, NULL, '2015-05-22 11:42:50', '2015-05-22 09:42:50', 0, 0, 'SOLADOS TERRAZO M2.', 'SOLADOS TERRAZO M2.', '', '', NULL, 11.11000000, 13.44310000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(75, 'AL003', 1, NULL, '2015-05-22 11:43:28', '2015-05-22 09:43:28', 0, 0, 'ALICATADOS M2.', 'ALICATADOS M2.', '', '', NULL, 7.41000000, 8.96610000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(76, 'AL004', 1, NULL, '2015-05-22 11:44:13', '2015-05-22 09:44:13', 0, 0, 'LEVANTADO DE MÁRMOL M2.', 'LEVANTADO DE MÁRMOL M2.', '', '', NULL, 13.33000000, 16.12930000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(77, 'AL005', 1, NULL, '2015-05-22 11:44:51', '2015-05-22 09:44:51', 0, 0, 'PICADO DE YESO M2.', 'PICADO DE YESO M2.', '', '', NULL, 4.44000000, 5.37240000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(78, 'AL006', 1, NULL, '2015-05-22 11:45:25', '2015-05-22 09:45:25', 0, 0, 'PICADO DE CEMENTO.', 'PICADO DE CEMENTO.', '', '', NULL, 8.33000000, 10.07930000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(79, 'AL007', 1, NULL, '2015-05-22 11:45:52', '2015-05-22 09:45:52', 0, 0, 'ESCAYOLA M2.', 'ESCAYOLA M2.', '', '', NULL, 4.44000000, 5.37240000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(80, 'AL008', 1, NULL, '2015-05-22 11:46:38', '2015-05-22 09:46:38', 0, 0, 'LADRILLO HUECO SENCILLO M2.', 'LADRILLO HUECO SENCILLO M2.', '', '', NULL, 5.55000000, 6.71550000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(81, 'AL009', 1, NULL, '2015-05-22 11:47:12', '2015-05-22 09:47:12', 0, 0, 'LADRILLO HUECO DOBLE M2.', 'LADRILLO HUECO DOBLE M2.', '', '', NULL, 6.66000000, 8.05860000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(82, 'AL010', 1, NULL, '2015-05-22 11:47:50', '2015-05-22 09:47:50', 0, 0, 'LADRILLO MACIZO M2.', 'LADRILLO MACIZO M2.', '', '', NULL, 7.78000000, 9.41380000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(83, 'AL011', 1, NULL, '2015-05-22 11:48:25', '2015-05-22 09:48:25', 0, 0, 'PLANCHAS PLADUR M2.', 'PLANCHAS PLADUR M2.', '', '', NULL, 5.55000000, 6.71550000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(84, 'AL012', 1, NULL, '2015-05-22 11:49:04', '2015-05-22 09:49:04', 0, 0, 'SOLERA HORMIGÓN HASTA 10 CM.', 'SOLERA HORMIGÓN HASTA 10 CM.', '', '', NULL, 11.11000000, 13.44310000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(85, 'AL013', 1, NULL, '2015-05-22 11:50:13', '2015-05-22 09:50:13', 0, 0, 'SOLERA HORMIGON > 10CM. M2.', 'SOLERA HORMIGON > 10CM. M2.', '', '', NULL, 13.89000000, 16.80690000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(86, 'AL0014', 1, NULL, '2015-05-22 11:51:09', '2015-05-22 09:51:09', 0, 0, 'TAPAR EN PARED TABICANDO Y ALICATANDO A DOS CARAS 1/2 M2.', 'TAPAR EN PARED TABICANDO Y ALICATANDO A DOS CARAS 1/2 M2.', '', '', NULL, 43.32000000, 52.41720000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(87, 'AL015', 1, NULL, '2015-05-22 11:51:52', '2015-05-22 09:51:52', 0, 0, 'TAPAR EN PARED TABICANDO Y ALICATANDO A DOS CARAS 1 M2.', 'TAPAR EN PARED TABICANDO Y ALICATANDO A DOS CARAS 1 M2.', '', '', NULL, 52.77000000, 63.85170000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(88, 'AL0016', 1, NULL, '2015-05-22 11:52:23', '2015-05-22 09:52:23', 0, 0, '1 M2 ADICIONAL.', '1 M2 ADICIONAL.', '', '', NULL, 26.66000000, 32.25860000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(89, 'AL0017', 1, NULL, '2015-05-22 11:53:26', '2015-05-22 09:53:26', 0, 0, 'TAPADO PARED, TABICANDO Y ENLUCIENDO UNA CARA Y ALICATANDO OTRA 1/2 M2.', 'TAPADO PARED, TABICANDO Y ENLUCIENDO UNA CARA Y ALICATANDO OTRA 1/2 M2.', '', '', NULL, 39.99000000, 48.38790000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(90, 'AL0018', 1, NULL, '2015-05-22 11:55:29', '2015-05-22 09:55:29', 0, 0, 'TAPADO PARED, TABICANDO Y ENLUCIENDO UNA CARA Y ALICATANDO OTRA 1 M2.', 'TAPADO PARED, TABICANDO Y ENLUCIENDO UNA CARA Y ALICATANDO OTRA 1 M2.', '', '', NULL, 49.98000000, 60.47580000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(91, 'AL0019', 1, NULL, '2015-05-22 11:56:00', '2015-05-22 09:56:00', 0, 0, '1 M2 ADICIONAL.', '1 M2 ADICIONAL.', '', '', NULL, 21.58000000, 26.11180000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(92, 'AL0020', 1, NULL, '2015-05-22 11:57:01', '2015-05-22 09:57:01', 0, 0, 'TAPADO DE PARED, TABICANDO, GUARNECIENDO Y ENLUCIENDO A DOS CARAS 1/2 M2.', 'TAPADO DE PARED, TABICANDO, GUARNECIENDO Y ENLUCIENDO A DOS CARAS 1/2 M2.', '', '', NULL, 28.72000000, 34.75120000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(93, 'AL0021', 1, NULL, '2015-05-22 11:57:44', '2015-05-22 09:57:44', 0, 0, 'TAPADO DE PARED TABICANDO, GUARNECIENDO Y ENLUCIENDO A UNA CARA 1 M2.', 'TAPADO DE PARED TABICANDO, GUARNECIENDO Y ENLUCIENDO A UNA CARA 1 M2.', '', '', NULL, 37.32000000, 45.15720000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(94, 'AL0022', 1, NULL, '2015-05-22 11:58:35', '2015-05-22 09:58:35', 0, 0, '1 M2 ADICIONAL.', '1 M2 ADICIONAL.', '', '', NULL, 10.00000000, 12.10000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(95, 'AL0023', 1, NULL, '2015-05-22 11:59:29', '2015-05-22 09:59:29', 0, 0, 'TAPADO EN PARED, TABICANDO, GUARNECIENDO Y ENLUCIENDO A DOS CARAS 1/2 M2.', 'TAPADO EN PARED, TABICANDO, GUARNECIENDO Y ENLUCIENDO A DOS CARAS 1/2 M2.', '', '', NULL, 33.33000000, 40.32930000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(96, 'AL0024', 1, NULL, '2015-05-22 12:01:07', '2015-05-22 10:01:07', 0, 0, 'TAPADO EN PARED, TABICANDO, GUARNECIENDO Y ENLUCIENDO A DOS CARAS 1M2.', 'TAPADO EN PARED, TABICANDO, GUARNECIENDO Y ENLUCIENDO A DOS CARAS 1M2.', '', '', NULL, 45.49000000, 55.04290000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(97, 'AL0025', 1, NULL, '2015-05-22 12:01:38', '2015-05-22 10:01:38', 0, 0, '1 M2 ADICIONAL.', '1 M2 ADICIONAL.', '', '', NULL, 10.58000000, 12.80180000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(98, 'AL0026', 1, NULL, '2015-05-22 12:13:12', '2015-05-22 10:13:12', 0, 0, 'SOLADO DE PAVIMENTO DE TERRAZO, GRES, ETC. INCLUYENDO % RODAPIÉ 1/2 M2.', 'SOLADO DE PAVIMENTO DE TERRAZO, GRES, ETC. INCLUYENDO % RODAPIÉ 1/2 M2.', '', '', NULL, 41.66000000, 50.40860000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(99, 'AL0027', 1, NULL, '2015-05-22 13:41:15', '2015-05-22 11:41:15', 0, 0, 'SOLADO DE PAVIMENTO DE TERRAZO, GRES, ETC. INCLUYENDO % RODAPIÉ 1 M2.', 'SOLADO DE PAVIMENTO DE TERRAZO, GRES, ETC. INCLUYENDO % RODAPIÉ 1 M2.', '', '', NULL, 55.54000000, 67.20340000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(100, 'AL0028', 1, NULL, '2015-05-22 13:44:16', '2015-05-22 11:44:16', 0, 0, '1 M2 ADICIONAL.', '1 M2 ADICIONAL.', '', '', NULL, 16.66000000, 20.15860000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(101, 'AL0029', 1, NULL, '2015-05-22 13:45:36', '2015-05-22 11:45:36', 0, 0, 'SOLERA DE CEMENTO PARA REVESTIMIENTO SINTASOL, PARQUÉ, MOQUETA, ETC. 1/2 M2.', 'SOLERA DE CEMENTO PARA REVESTIMIENTO SINTASOL, PARQUÉ, MOQUETA, ETC. 1/2 M2.', '', '', NULL, 22.22000000, 26.88620000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(102, 'AL0030', 1, NULL, '2015-05-22 13:48:59', '2015-05-22 11:48:59', 0, 0, 'SOLERA DE CEMENTO PARA REVESTIMIENTO SONTASOL, PARQUÉ, MOQUETA, ETC. 1 M2.', 'SOLERA DE CEMENTO PARA REVESTIMIENTO SONTASOL, PARQUÉ, MOQUETA, ETC. 1 M2.', '', '', NULL, 30.54000000, 36.95340000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(103, 'AL0031', 1, NULL, '2015-05-22 13:59:38', '2015-05-22 11:59:38', 0, 0, '1 M2 ADICIONAL.', '1 M2 ADICIONAL.', '', '', NULL, 7.78000000, 9.41380000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(104, 'AL0032', 1, NULL, '2015-05-22 14:00:30', '2015-05-22 12:00:30', 0, 0, 'REHACER MOCHETA CON GUARNECIDO Y ENLUCIDO 1/2 M2.', 'REHACER MOCHETA CON GUARNECIDO Y ENLUCIDO 1/2 M2.', '', '', NULL, 30.54000000, 36.95340000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(105, 'AL0033', 1, NULL, '2015-05-25 11:14:52', '2015-05-25 09:14:52', 0, 0, 'REHACER MOCHETA CON GUARNECIDO Y ENLUCIDO 1 M2.', 'REHACER MOCHETA CON GUARNECIDO Y ENLUCIDO 1 M2.', '', '', NULL, 44.43000000, 53.76030000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(106, 'AL0034', 1, NULL, '2015-05-25 11:15:51', '2015-05-25 09:15:51', 0, 0, '1 M2 ADICIONAL.', '1 M2 ADICIONAL.', '', '', NULL, 12.22000000, 14.78620000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(107, 'AL0035', 1, NULL, '2015-05-25 11:16:35', '2015-05-25 09:16:35', 0, 0, 'REHACER MOCHETA ALICATADO 1/2 M2.', 'REHACER MOCHETA ALICATADO 1/2 M2.', '', '', NULL, 35.44000000, 42.88240000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(108, 'AL0036', 1, NULL, '2015-05-25 11:17:26', '2015-05-25 09:17:26', 0, 0, 'REHACER MOCHETA ALICATADO 1 M2.', 'REHACER MOCHETA ALICATADO 1 M2', '', '', NULL, 49.72000000, 60.16120000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(109, 'AL0037', 1, NULL, '2015-05-26 11:08:51', '2015-05-26 09:08:51', 0, 0, '1 M2 ADICIONAL.', '1 M2 ADICIONAL.', '', '', NULL, 21.58000000, 26.11180000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(110, 'AL0038', 1, NULL, '2015-05-26 11:10:57', '2015-05-26 09:10:57', 0, 0, 'ALICATADO O SOLADO 1 M2.', 'ALICATADO O SOLADO 1 M2.', '', '', NULL, 37.56000000, 45.44760000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(111, 'AL0039', 1, NULL, '2015-05-26 11:11:56', '2015-05-26 09:11:56', 0, 0, '1 M2 ADICIONAL ALICATADO O SOLADO.', '1 M2 ADICIONAL ALICATADO O SOLADO', '', '', NULL, 15.34000000, 18.56140000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(112, 'AL0040', 1, NULL, '2015-05-26 11:12:41', '2015-05-26 09:12:41', 0, 0, 'TAPADO CATA ESCAYOLA 1/2.', 'TAPADO CATA ESCAYOLA 1/2.', '', '', NULL, 34.41000000, 41.63610000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(113, 'AL0041', 1, NULL, '2015-05-26 11:13:23', '2015-05-26 09:13:23', 0, 0, 'TAPADO CATA ESCAYOLA 1 M2.', 'TAPADO CATA ESCAYOLA 1 M2.', '', '', NULL, 44.58000000, 53.94180000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(114, 'AL0042', 1, NULL, '2015-05-26 11:14:35', '2015-05-26 09:14:35', 0, 0, 'TAPADO CATA DE ESCAYOLA M2 ADICIONAL.', 'TAPADO CATA DE ESCAYOLA M2 ADICIONAL', '', '', NULL, 9.44000000, 11.42240000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(115, 'AL0043', 1, NULL, '2015-05-26 11:15:31', '2015-05-26 09:15:31', 0, 0, 'SUMINISTRO Y COLOCACIÓN PLACA ASTRONG O SIMILAR HASTA 1 M2.', 'SUMINISTRO Y COLOCACIÓN PLACA ASTRONG O SIMILAR HASTA 1 M2.', '', '', NULL, 41.20000000, 49.85200000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(116, 'AL0044', 1, NULL, '2015-05-26 11:16:30', '2015-05-26 09:16:30', 0, 0, 'SUMINISTRO Y COLOCACIÓN PLACA AMSTRONG O SIMILAR M2 ADICIONAL.', 'SUMINISTRO Y COLOCACIÓN PLACA AMSTRONG O SIMILAR M2 ADICIONAL.', '', '', NULL, 15.10000000, 18.27100000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(117, 'AL0045', 1, NULL, '2015-05-26 11:17:19', '2015-05-26 09:17:19', 0, 0, 'METRO LINEAL DE MOLDURA DE ESCAYOLA (SIEMPRE QUE EXISTA EN EL MERCADO).', 'METRO LINEAL DE MOLDURA DE ESCAYOLA (SIEMPRE QUE EXISTA EN EL MERCADO).', '', '', NULL, 6.66000000, 8.05860000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(118, 'AL0046', 1, NULL, '2015-05-26 11:18:00', '2015-05-26 09:18:00', 0, 0, 'IMPERMEABILIZACIÓN CON TELA ASFÁLTICA M2.', 'IMPERMEABILIZACIÓN CON TELA ASFÁLTICA M2', '', '', NULL, 30.40000000, 36.78400000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(119, 'AL0047', 1, NULL, '2015-05-26 11:21:16', '2015-05-26 09:21:16', 0, 0, 'TAPADO CATA CON PLACA DE YESO LAMINADO, INCLUIDO PP. DE PERFILERÍA, PASTA DE AGRRE, CINTA Y PASTA DE JUNTAS. HASTA 2 M2.', 'TAPADO CATA CON PLACA DE YESO LAMINADO, INCLUIDO PP. DE PERFILERÍA, PASTA DE AGRRE, CINTA Y PASTA DE JUNTAS. HASTA 2 M2.', '', '', NULL, 58.71000000, 71.03910000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL);
INSERT INTO `llx_product` (`rowid`, `ref`, `entity`, `ref_ext`, `datec`, `tms`, `virtual`, `fk_parent`, `label`, `description`, `note`, `customcode`, `fk_country`, `price`, `price_ttc`, `price_min`, `price_min_ttc`, `price_base_type`, `tva_tx`, `recuperableonly`, `localtax1_tx`, `localtax2_tx`, `fk_user_author`, `tosell`, `tobuy`, `tobatch`, `fk_product_type`, `duration`, `seuil_stock_alerte`, `url`, `barcode`, `fk_barcode_type`, `accountancy_code_sell`, `accountancy_code_buy`, `partnumber`, `weight`, `weight_units`, `length`, `length_units`, `surface`, `surface_units`, `volume`, `volume_units`, `stock`, `pmp`, `canvas`, `finished`, `hidden`, `import_key`, `desiredstock`) VALUES
(120, 'AL0048', 1, NULL, '2015-05-26 11:22:23', '2015-05-26 09:22:23', 0, 0, 'TAPADO CATA CON PLACA DE YESO LAMINADO, INCLUIDO PP. DE PERFILERÍA, PASTA DE AGRRE, CINTA Y PASTA DE JUNTAS. M2 ADICIONALES.', 'TAPADO CATA CON PLACA DE YESO LAMINADO, INCLUIDO PP. DE PERFILERÍA, PASTA DE AGRRE, CINTA Y PASTA DE JUNTAS. M2 ADICIONALES.', '', '', NULL, 38.11000000, 46.11310000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(121, 'AL0049', 1, NULL, '2015-05-26 11:23:39', '2015-05-26 09:23:39', 0, 0, 'DESMONTAJE O MONTAJE DE HASTA 5 PLACAS PARA FALDO TECHO DE CUALQUIER MATERIAL Y MEDIDA, COLOCADOS SOBRE ENTRAMADO VISTO U OCULTO.', 'DESMONTAJE O MONTAJE DE HASTA 5 PLACAS PARA FALDO TECHO DE CUALQUIER MATERIAL Y MEDIDA, COLOCADOS SOBRE ENTRAMADO VISTO U OCULTO.', '', '', NULL, 14.83000000, 17.94430000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 0, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(122, 'AL0050', 1, NULL, '2015-05-26 11:25:04', '2015-05-26 09:25:04', 0, 0, 'DESMONTAJE O MONTAJE DE PLACAS PARA FALSO TECHO DE CUALQUIER MATERIAL Y MEDIDA. COLOCADOS SOBRE ENTRAMADO VISTO U OCULTO PLACA ADICIONAL.', 'DESMONTAJE O MONTAJE DE PLACAS PARA FALSO TECHO DE CUALQUIER MATERIAL Y MEDIDA. COLOCADOS SOBRE ENTRAMADO VISTO U OCULTO PLACA ADICIONAL.', '', '', NULL, 2.06000000, 2.49260000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(123, 'F0044', 1, NULL, '2015-05-26 11:26:43', '2015-05-26 09:26:43', 0, 0, 'DESMONTAJE Y MONTAJE DE MAMPARA.', 'DESMONTAJE Y MONTAJE DE MAMPARA.', '', '', NULL, 28.94000000, 35.01740000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(124, 'F0045', 1, NULL, '2015-05-26 11:30:57', '2015-05-26 09:30:57', 0, 0, 'DESMONTAJE Y MONTAJE DE UNIDAD DE SANITARIOS (UD. LAVABO, BIDET O INODORO).', 'DESMONTAJE Y MONTAJE DE UNIDAD DE SANITARIOS (UD. LAVABO, BIDET O INODORO).', '', '', NULL, 29.45000000, 35.63450000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(125, 'F0046', 1, NULL, '2015-05-26 11:31:38', '2015-05-26 09:31:38', 0, 0, 'DESMONTAJE Y MONTAJE PLATO DE DUCHA.', 'DESMONTAJE Y MONTAJE PLATO DE DUCHA.', '', '', NULL, 42.00000000, 50.82000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(126, 'F0047', 1, NULL, '2015-05-26 11:32:22', '2015-05-26 09:32:22', 0, 0, 'DESMONTAJE Y MONTAJE DE BAÑERA.', 'DESMONTAJE Y MONTAJE DE BAÑERA.', '', '', NULL, 66.12000000, 80.00520000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(127, 'F0048', 1, NULL, '2015-05-26 11:34:01', '2015-05-26 09:34:01', 0, 0, 'DESMONTAJE Y MONTAJE ENCIMERA DE COCINA, MUEBLE COCINA, MUEBLE BAÑO, FREGADERO, RADIADOR, CALENTADOR (UNIDAD).', 'DESMONTAJE Y MONTAJE ENCIMERA DE COCINA, MUEBLE COCINA, MUEBLE BAÑO, FREGADERO, RADIADOR, CALENTADOR (UNIDAD).', '', '', NULL, 26.00000000, 31.46000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(128, 'F0049', 1, NULL, '2015-05-26 11:34:52', '2015-05-26 09:34:52', 0, 0, 'SELLADO DE BANDA DE BAÑERA O PLATO DE DUCHA CON SILICONA O CEMENTO BLANCO.', 'SELLADO DE BANDA DE BAÑERA O PLATO DE DUCHA CON SILICONA O CEMENTO BLANCO.', '', '', NULL, 22.01000000, 26.63210000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(129, 'F0050', 1, NULL, '2015-05-26 11:35:58', '2015-05-26 09:35:58', 0, 0, 'CAMBIO DE LLAVE Y DETENEDOR DE RADIADOR, LLAVE DE CORTE Y/O ANULACIÓN DE TOMAS.', 'CAMBIO DE LLAVE Y DETENEDOR DE RADIADOR, LLAVE DE CORTE Y/O ANULACIÓN DE TOMAS.', '', '', NULL, 26.45000000, 32.00450000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(130, 'F0051', 1, NULL, '2015-05-26 11:36:46', '2015-05-26 09:36:46', 0, 0, 'VACIADO Y LLENADO DE CIRCUITO DE CALEFACCIÓN CON PURGADO DE RADIADORES.', 'VACIADO Y LLENADO DE CIRCUITO DE CALEFACCIÓN CON PURGADO DE RADIADORES.', '', '', NULL, 12.00000000, 14.52000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(131, 'F0052', 1, NULL, '2015-05-26 11:37:54', '2015-05-26 09:37:54', 0, 0, 'DESATRANCO MANUAL CON LÍQUIDO DESATASCADOR 8INCLUIDO MATERIAL Y MANO DE OBRA) (CÓDIGO ÚNICO POR SERVICIO).', 'DESATRANCO MANUAL CON LÍQUIDO DESATASCADOR 8INCLUIDO MATERIAL Y MANO DE OBRA) (CÓDIGO ÚNICO POR SERVICIO).', '', '', NULL, 32.80000000, 39.68800000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(132, 'F0053', 1, NULL, '2015-05-26 11:38:56', '2015-05-26 09:38:56', 0, 0, 'DESTRANCO CON MÁQUINA CON LÍQUIDO DESATASCADOR (INCLUIDO MATERIAL Y MANO DE OBRA) (PRIMERA HORA).', 'DESTRANCO CON MÁQUINA CON LÍQUIDO DESATASCADOR (INCLUIDO MATERIAL Y MANO DE OBRA) (PRIMERA HORA).', '', '', NULL, 40.00000000, 48.40000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(133, 'P001', 1, NULL, '2015-05-26 11:40:02', '2015-05-26 09:40:02', 0, 0, 'PARCHEADO DE GOTÉELE SOLO EN ZONA DAÑADA.', 'PARCHEADO DE GOTÉELE SOLO EN ZONA DAÑADA.', '', '', NULL, 17.75000000, 21.47750000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(134, 'P002', 1, NULL, '2015-05-26 11:40:45', '2015-05-26 09:40:45', 0, 0, 'TEMPLE LISO. PRIMEROS 10 M2.', 'TEMPLE LISO. PRIMEROS 10 M2.', '', '', NULL, 38.86000000, 47.02060000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(135, 'P003', 1, NULL, '2015-05-26 11:41:41', '2015-05-26 09:41:41', 0, 0, 'TEMPLE LISO. M2 ADICIONAL.', 'TEMPLE LISO. M2 ADICIONAL.', '', '', NULL, 2.14000000, 2.58940000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(136, 'P004', 1, NULL, '2015-05-26 11:47:29', '2015-05-26 09:47:29', 0, 0, 'TEMPLE PICADO. PRIMEROS 10 M2.', 'TEMPLE PICADO. PRIMEROS 10 M2.', '', '', NULL, 43.95000000, 53.17950000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(137, 'P005', 1, NULL, '2015-05-26 11:50:10', '2015-05-26 09:50:10', 0, 0, 'TEMPLE PICADO. M2 ADICIONAL.', 'TEMPLE PICADO. M2 ADICIONAL.', '', '', NULL, 2.68000000, 3.24280000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(138, 'P006', 1, NULL, '2015-05-26 11:51:26', '2015-05-26 09:51:26', 0, 0, 'PLÁSTICO LISO O GOTÉELE TEMPLE. PRIMEROS 10 M2.', 'PLÁSTICO LISO O GOTÉELE TEMPLE. PRIMEROS 10 M2.', '', '', NULL, 44.48000000, 53.82080000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(139, 'P007', 1, NULL, '2015-05-26 11:52:34', '2015-05-26 09:52:34', 0, 0, 'PLÁSTICO LISO O GOTÉELE TEMPLE. M2 ADICIONAL.', 'PLÁSTICO LISO O GOTÉELE TEMPLE. M2 ADICIONAL.', '', '', NULL, 3.20000000, 3.87200000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(140, 'P008', 1, NULL, '2015-05-26 11:53:24', '2015-05-26 09:53:24', 0, 0, 'GOTÉELE ACABADO PLÁSTICO. PRIMEROS 10 M2.', 'GOTÉELE ACABADO PLÁSTICO. PRIMEROS 10 M2.', '', '', NULL, 55.19000000, 66.77990000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(141, 'P009', 1, NULL, '2015-05-26 11:54:09', '2015-05-26 09:54:09', 0, 0, 'GOTÉELE ACABADO PLÁSTICO. M2 ADICIONAL.', 'GOTÉELE ACABADO PLÁSTICO. M2 ADICIONAL.', '', '', NULL, 3.78000000, 4.57380000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(142, 'P010', 1, NULL, '2015-05-26 11:55:05', '2015-05-26 09:55:05', 0, 0, 'PICADO PLÁSTICO, PASTA RAYADA, ARPILLERA, PÉTREA. PRIMEROS 10 M2.', 'PICADO PLÁSTICO, PASTA RAYADA, ARPILLERA, PÉTREA. PRIMEROS 10 M2.', '', '', NULL, 66.65000000, 80.64650000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(143, 'P011', 1, NULL, '2015-05-26 11:55:52', '2015-05-26 09:55:52', 0, 0, 'PICADO PLÁSTICO, PASTA RAYADA, ARPILLERA, PÉTREA; M2 ADICIONAL.', 'PICADO PLÁSTICO, PASTA RAYADA, ARPILLERA, PÉTREA; M2 ADICIONAL.', '', '', NULL, 4.92000000, 5.95320000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(144, 'P012', 1, NULL, '2015-05-26 11:56:37', '2015-05-26 09:56:37', 0, 0, 'TIXOTRÓPICA O ESMALTE. PRIMEROS 10 M2.', 'TIXOTRÓPICA O ESMALTE. PRIMEROS 10 M2.', '', '', NULL, 58.64000000, 70.95440000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(145, 'P013', 1, NULL, '2015-05-26 11:57:48', '2015-05-26 09:57:48', 0, 0, 'TIXOTRÓPICA O ESMALTE. M2 ADICIONAL.', 'TIXOTRÓPICA O ESMALTE. M2 ADICIONAL.', '', '', NULL, 4.15000000, 5.02150000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(146, 'P014', 1, NULL, '2015-05-26 11:59:09', '2015-05-26 09:59:09', 0, 0, 'RECARGO DE COLOR U/O CODIFICADA POR ORDENADOR (SÓLO SE COBRARÁ UN CONCEPTO POR SERVICIO).', 'RECARGO DE COLOR U/O CODIFICADA POR ORDENADOR (SÓLO SE COBRARÁ UN CONCEPTO POR SERVICIO).', '', '', NULL, 8.00000000, 9.68000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(147, 'P015', 1, NULL, '2015-05-26 11:59:42', '2015-05-26 09:59:42', 0, 0, 'LACADO, PRIMEROS 4 M2.', 'LACADO, PRIMEROS 4 M2.', '', '', NULL, 65.60000000, 79.37600000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(148, 'P016', 1, NULL, '2015-05-26 12:00:22', '2015-05-26 10:00:22', 0, 0, 'LACADO M2 ADICIONAL.', 'LACADO M2 ADICIONAL.', '', '', NULL, 12.81000000, 15.50010000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(149, 'P017', 1, NULL, '2015-05-26 12:00:52', '2015-05-26 10:00:52', 0, 0, 'BARNIZ. PRIMEROS 4 M2.', 'BARNIZ. PRIMEROS 4 M2.', '', '', NULL, 52.18000000, 63.13780000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(150, 'P018', 1, NULL, '2015-05-26 12:01:23', '2015-05-26 10:01:23', 0, 0, 'BARNIZ. M2 ADICIONAL.', 'BARNIZ. M2 ADICIONAL.', '', '', NULL, 9.62000000, 11.64020000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(151, 'P019', 1, NULL, '2015-05-26 12:02:17', '2015-05-26 10:02:17', 0, 0, 'PINTURA DE MINIO, PRIMEROS 10 M2.', 'PINTURA DE MINIO, PRIMEROS 10 M2', '', '', NULL, 51.36000000, 62.14560000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(152, 'P020', 1, NULL, '2015-05-26 12:02:50', '2015-05-26 10:02:50', 0, 0, 'PINTURA DE MINIO. M2 ADICIONAL.', 'PINTURA DE MINIO. M2 ADICIONAL.', '', '', NULL, 2.84000000, 3.43640000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(153, 'P021', 1, NULL, '2015-05-26 12:06:12', '2015-05-26 10:06:12', 0, 0, 'ESMALTE SINTÉTICO. PRIMEROS 10 M2.', 'ESMALTE SINTÉTICO. PRIMEROS 10 M2', '', '', NULL, 52.62000000, 63.67020000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(154, 'P022', 1, NULL, '2015-05-26 12:06:42', '2015-05-26 10:06:42', 0, 0, 'ESMALTE SINTÉTICO. M2 ADICIONAL.', 'ESMALTE SINTÉTICO. M2 ADICIONAL.', '', '', NULL, 10.04000000, 12.14840000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(155, 'P023', 1, NULL, '2015-05-26 12:07:37', '2015-05-26 10:07:37', 0, 0, 'RETIRADA DE PAPEL PINTADO, POSTERIOR LAVADO Y EMPLASTECIDO. M2.', 'RETIRADA DE PAPEL PINTADO, POSTERIOR LAVADO Y EMPLASTECIDO. M2', '', '', NULL, 3.35000000, 4.05350000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(156, 'P024', 1, NULL, '2015-05-26 12:10:37', '2015-05-26 10:10:37', 0, 0, 'COLOCACIÓN DE PAPEL. NO INCLUYE MATERIAL. PRIMEROS M2.', 'COLOCACIÓN DE PAPEL. NO INCLUYE MATERIAL. PRIMEROS M2.', '', '', NULL, 52.30000000, 63.28300000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(157, 'P025', 1, NULL, '2015-05-26 12:11:18', '2015-05-26 10:11:18', 0, 0, 'COLOCACIÓN DE PAPEL. NO INCLUYE MATERIAL. M2 ADICIONAL.', 'COLOCACIÓN DE PAPEL. NO INCLUYE MATERIAL. M2 ADICIONAL.', '', '', NULL, 12.44000000, 15.05240000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(158, 'P026', 1, NULL, '2015-05-26 12:12:00', '2015-05-26 10:12:00', 0, 0, 'MATERIAL: ROLLOS DE PAPEL.', 'MATERIAL: ROLLOS DE PAPEL.', '', '', NULL, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(159, 'PQ001', 1, NULL, '2015-05-26 12:16:50', '2015-05-26 10:16:50', 0, 0, 'ROBLE DAMA DE 11X2, 5X0,8 CM.SIN INCLUIR LIJADO Y BARNIZADO. DE 1 A 3 M2.', 'ROBLE DAMA DE 11X2, 5X0,8 CM.SIN INCLUIR LIJADO Y BARNIZADO. DE 1 A 3 M2.', '', '', NULL, 32.80000000, 39.68800000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(160, 'PQ002', 1, NULL, '2015-05-26 12:18:51', '2015-05-26 10:18:51', 0, 0, 'ROBLE DAMA DE 11X2, 5X0,8 CM. SIN INCLUIR LIJADO Y BARNIZADO. M2 ADICIONAL.', 'ROBLE DAMA DE 11X2, 5X0,8 CM. SIN INCLUIR LIJADO Y BARNIZADO. M2 ADICIONAL', '', '', NULL, 24.34000000, 29.45140000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(161, 'PQ003', 1, NULL, '2015-05-26 12:29:38', '2015-05-26 10:29:38', 0, 0, 'ROBLE TABILLA DE 11X2, 5X0,8 CM. SIN INCLUIR LIJADO Y BARNIZADO. DE 1 A 3.', 'ROBLE TABILLA DE 11X2, 5X0,8 CM. SIN INCLUIR LIJADO Y BARNIZADO. DE 1 A 3.', '', '', NULL, 34.38000000, 41.59980000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(162, 'PQ004', 1, NULL, '2015-05-26 12:30:47', '2015-05-26 10:30:47', 0, 0, 'ROBLE TABLILLA DE 11X2, 5X0,8 CM. SIN INCLUIR LIJADO Y BARNIZADO. M2 ADICIONAL.', 'ROBLE TABLILLA DE 11X2, 5X0,8 CM. SIN INCLUIR LIJADO Y BARNIZADO. M2 ADICIONAL.', '', '', NULL, 25.92000000, 31.36320000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(163, 'PQ005', 1, NULL, '2015-05-26 12:31:48', '2015-05-26 10:31:48', 0, 0, 'CASTAÑO DAMAS DE 11X2, 5X0,8 CM. SIN INCLUIR LIJADO Y BARNIZADO. DE 1 A 3 M2.', 'CASTAÑO DAMAS DE 11X2, 5X0,8 CM. SIN INCLUIR LIJADO Y BARNIZADO. DE 1 A 3 M2', '', '', NULL, 33.10000000, 40.05100000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(164, 'PQ006', 1, NULL, '2015-05-26 12:32:43', '2015-05-26 10:32:43', 0, 0, 'CASTAÑO DAMAS DE 11X2, 5X0,8 CM. SIN INCLUIR LIJADO Y BARNIZADO. ADICIONAL M2.', 'CASTAÑO DAMAS DE 11X2, 5X0,8 CM. SIN INCLUIR LIJADO Y BARNIZADO. ADICIONAL M2.', '', '', NULL, 26.48000000, 32.04080000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(165, 'PQ007', 1, NULL, '2015-05-26 12:33:49', '2015-05-26 10:33:50', 0, 0, 'CASTAÑO TABLILLA DE 25X5X1 CM. SIN INCLUIR LIJADO Y BARNIZADO. DE 1 A 3 M2.', 'CASTAÑO TABLILLA DE 25X5X1 CM. SIN INCLUIR LIJADO Y BARNIZADO. DE 1 A 3 M2.', '', '', NULL, 36.40000000, 44.04400000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(166, 'PQ008', 1, NULL, '2015-05-26 12:40:02', '2015-05-26 10:40:02', 0, 0, 'CASTAÑO TABLILLA DE 25X5X1 CM. SIN INCLUIR LIJADO Y BARNIZADO. ADICIONAL M2.', 'CASTAÑO TABLILLA DE 25X5X1 CM. SIN INCLUIR LIJADO Y BARNIZADO. ADICIONAL M2', '', '', NULL, 29.12000000, 35.23520000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(167, 'PQ009', 1, NULL, '2015-05-26 12:41:35', '2015-05-26 10:41:35', 0, 0, 'ELONDO TABLILLA DE 25X5X1 CM. SIN INCLUIR LIJADO Y BARNIZADO. M2. DE 1 A 3 M2.', 'ELONDO TABLILLA DE 25X5X1 CM. SIN INCLUIR LIJADO Y BARNIZADO. M2. DE 1 A 3 M2.', '', '', NULL, 38.09000000, 46.08890000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(168, 'PQ010', 1, NULL, '2015-05-26 12:42:32', '2015-05-26 10:42:32', 0, 0, 'ELONDO TABLILLA DE 25X5X1 CM. SIN INCLUIR LIJADO Y BARNIZADO. ADICIONAL M2.', 'ELONDO TABLILLA DE 25X5X1 CM. SIN INCLUIR LIJADO Y BARNIZADO. ADICIONAL M2.', '', '', NULL, 29.62000000, 35.84020000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(169, 'PQ011', 1, NULL, '2015-05-26 12:43:44', '2015-05-26 10:43:44', 0, 0, 'EUCALIPTO DAMAS DE 11X2, 5X0,8 CM. SIN INCLUIR LIJADO Y BARNIZADO. DE 1 A 3 M2.', 'EUCALIPTO DAMAS DE 11X2, 5X0,8 CM. SIN INCLUIR LIJADO Y BARNIZADO. DE 1 A 3 M2.', '', '', NULL, 30.15000000, 36.48150000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(170, 'PQ012', 1, NULL, '2015-05-26 12:45:08', '2015-05-26 10:45:08', 0, 0, 'EUCALIPTO DAMAS DE 11X2, 5X0,8 CM. SIN INCLUIR LIJADO Y BARNIZADO. ADICIONAL M2.', 'EUCALIPTO DAMAS DE 11X2, 5X0,8 CM. SIN INCLUIR LIJADO Y BARNIZADO. ADICIONAL M2', '', '', NULL, 21.69000000, 26.24490000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(171, 'PQ013', 1, NULL, '2015-05-26 12:46:11', '2015-05-26 10:46:11', 0, 0, 'EUCALIPTO TABLILLAS DE 25X5X1 CM. SIN INCLUIR LIJADO Y BARNIZADO. DE 1 A 3 M2.', 'EUCALIPTO TABLILLAS DE 25X5X1 CM. SIN INCLUIR LIJADO Y BARNIZADO. DE 1 A 3 M2.', '', '', NULL, 31.74000000, 38.40540000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(172, 'PQ014', 1, NULL, '2015-05-26 12:47:11', '2015-05-26 10:47:11', 0, 0, 'EUCALIPTO TABLILLAS DE 25X5X1 CM. SIN INCLUIR LIJADO Y BARNIZADO. ADICIONAL M2.', 'EUCALIPTO TABLILLAS DE 25X5X1 CM. SIN INCLUIR LIJADO Y BARNIZADO. ADICIONAL M2.', '', '', NULL, 23.27000000, 28.15670000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(173, 'PQ015', 1, NULL, '2015-05-26 12:48:21', '2015-05-26 10:48:21', 0, 0, 'IROKO DAMAS DE 25X5X1 CM. SIN INCLUIR LIJADO Y BARNIZADO. M2. DE 1 A 3 M2.', 'IROKO DAMAS DE 25X5X1 CM. SIN INCLUIR LIJADO Y BARNIZADO. M2. DE 1 A 3 M2.', '', '', NULL, 48.30000000, 58.44300000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(174, 'PQ016', 1, NULL, '2015-05-26 12:49:18', '2015-05-26 10:49:18', 0, 0, 'IROKO DAMAS DE 25X5X1 CM. SIN INCLUIR LIJADO Y BARNIZADO. ADICIONAL M2.', 'IROKO DAMAS DE 25X5X1 CM. SIN INCLUIR LIJADO Y BARNIZADO. ADICIONAL M2.', '', '', NULL, 38.64000000, 46.75440000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(175, 'PQ017', 1, NULL, '2015-05-26 12:53:06', '2015-05-26 10:53:06', 0, 0, 'IROKO TABLILLA DE 25X5X1 CM. SIN INCLUIR LIJADO Y BARNIZADO. M2 DE 1 A 3 M2.', 'IROKO TABLILLA DE 25X5X1 CM. SIN INCLUIR LIJADO Y BARNIZADO. M2 DE 1 A 3 M2', '', '', NULL, 38.25000000, 46.28250000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(176, 'PQ018', 1, NULL, '2015-05-26 12:54:29', '2015-05-26 10:54:29', 0, 0, 'IROKO TABLILLA DE 25X5X1 CM. SIN INCLUIR LIJADO Y BARNIZADO. ADICIONAL M2.', 'IROKO TABLILLA DE 25X5X1 CM. SIN INCLUIR LIJADO Y BARNIZADO. ADICIONAL M2.', '', '', NULL, 30.60000000, 37.02600000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(177, 'PQ019', 1, NULL, '2015-05-26 12:55:14', '2015-05-26 10:55:14', 0, 0, 'M2 TARIMA DE PINO VIEJO M2.', 'M2 TARIMA DE PINO VIEJO M2.', '', '', NULL, 75.11000000, 90.88310000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(178, 'PQ020', 1, NULL, '2015-05-26 12:55:44', '2015-05-26 10:55:44', 0, 0, 'M2 TARIMA DE CEREZO M2.', 'M2 TARIMA DE CEREZO M2.', '', '', NULL, 64.58000000, 78.14180000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(179, 'PQ021', 1, NULL, '2015-05-26 12:56:48', '2015-05-26 10:56:48', 0, 0, 'M2 TARIMA DE HAYA M2.', 'M2 TARIMA DE HAYA M2.', '', '', NULL, 34.22000000, 41.40620000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(180, 'PQ022', 1, NULL, '2015-05-26 12:57:19', '2015-05-26 10:57:19', 0, 0, 'M2 TARIMA DE ROBLE M2.', 'M2 TARIMA DE ROBLE M2.', '', '', NULL, 68.10000000, 82.40100000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(181, 'PQ023', 1, NULL, '2015-05-26 12:57:50', '2015-05-26 10:57:50', 0, 0, 'TARIMA DE BAMBÚ M2.', 'TARIMA DE BAMBÚ M2.', '', '', NULL, 51.04000000, 61.75840000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 0, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(182, 'PQ024', 1, NULL, '2015-05-26 12:58:40', '2015-05-26 10:58:40', 0, 0, 'M2 TARIMA DE FRESNO.', 'M2 TARIMA DE FRESNO.', '', '', NULL, 78.56000000, 95.05760000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(183, 'PQ025', 1, NULL, '2015-05-26 12:59:27', '2015-05-26 10:59:27', 0, 0, 'TARIMA FLOTANTE MADERA NATURAL. HASTA 3 M2.', 'TARIMA FLOTANTE MADERA NATURAL. HASTA 3 M2.', '', '', NULL, 56.40000000, 68.24400000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(184, 'PQ026', 1, NULL, '2015-05-26 13:00:18', '2015-05-26 11:00:18', 0, 0, 'TARIMA FLOTANTE DE MADERA NATURAL, ADICIONAL M2.', 'TARIMA FLOTANTE DE MADERA NATURAL, ADICIONAL M2.', '', '', NULL, 47.90000000, 57.95900000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(185, 'PQ027', 1, NULL, '2015-05-26 13:02:11', '2015-05-26 11:02:11', 0, 0, 'TARIMA FLOTANTE SINTÉTICA CALIDAD 3º CLASE (FLOOR LINE O SIMILAR). HASTA 3M2.', 'TARIMA FLOTANTE SINTÉTICA CALIDAD 3º CLASE (FLOOR LINE O SIMILAR). HASTA 3M2.', '', '', NULL, 37.40000000, 45.25400000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(186, 'PQ028', 1, NULL, '2015-05-26 13:03:02', '2015-05-26 11:03:02', 0, 0, 'TARIMA FLOTANTE SINTÉTICA CALIDAD 3 º CLASE (FLOOR LINE O SIMILAR9. ADICIONAL M2.', 'TARIMA FLOTANTE SINTÉTICA CALIDAD 3 º CLASE (FLOOR LINE O SIMILAR9. ADICIONAL M2', '', '', NULL, 29.92000000, 36.20320000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(187, 'PQ029', 1, NULL, '2015-05-26 13:04:08', '2015-05-26 11:04:08', 0, 0, 'TARIMA FLOTANTE SINTÉTICA CALIDAD 2ª CLASE (TARKET, MEISTER O SIMILAR) HASTA 3 M2.', 'TARIMA FLOTANTE SINTÉTICA CALIDAD 2ª CLASE (TARKET, MEISTER O SIMILAR) HASTA 3 M2.', '', '', NULL, 42.80000000, 51.78800000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(188, 'PQ030', 1, NULL, '2015-05-26 13:05:07', '2015-05-26 11:05:07', 0, 0, 'TARIMA FLOTANTE SINTÉTICA CALIDAD 2ª CLASE (TARKET, MEISTER O SIMILAR) M2 ADICIONAL.', 'TARIMA FLOTANTE SINTÉTICA CALIDAD 2ª CLASE (TARKET, MEISTER O SIMILAR) M2 ADICIONAL.', '', '', NULL, 34.25000000, 41.44250000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 0, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(189, 'PQ031', 1, NULL, '2015-05-26 13:06:26', '2015-05-26 11:06:26', 0, 0, 'TARIMA FLOTANTE SINTÉTICA CALIDAD 1ª CLASE (FLINT, PERGO, QUICK STEP O SIMILAR), HASTA 3.', 'TARIMA FLOTANTE SINTÉTICA CALIDAD 1ª CLASE (FLINT, PERGO, QUICK STEP O SIMILAR), HASTA 3', '', '', NULL, 48.80000000, 59.04800000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(190, 'PQ032', 1, NULL, '2015-05-26 13:47:39', '2015-05-26 11:47:39', 0, 0, 'TARIMA FLOTANTE SINTÉTICA CALIDAD 1ª CLASE (FLINT, PERGO, QUICK STEP O SIMILAR). M2 ADICIONAL.', 'TARIMA FLOTANTE SINTÉTICA CALIDAD 1ª CLASE (FLINT, PERGO, QUICK STEP O SIMILAR). M2 ADICIONAL.', '', '', NULL, 39.04000000, 47.23840000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(191, 'PQ033', 1, NULL, '2015-05-26 13:48:22', '2015-05-26 11:48:22', 0, 0, 'CORCHO BARNIZADO O PLASTIFICADO, M2.', 'CORCHO BARNIZADO O PLASTIFICADO, M2', '', '', NULL, 34.40000000, 41.62400000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(192, 'PQ034', 1, NULL, '2015-05-27 12:15:25', '2015-05-27 10:15:25', 0, 0, 'MOQUETA DE LOSETAS M2.', 'MOQUETA DE LOSETAS M2.', '', '', NULL, 41.16000000, 49.80360000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(193, 'PQ035', 1, NULL, '2015-05-27 12:16:02', '2015-05-27 10:16:02', 0, 0, 'MOQUETA EN ROLLOS M2.', 'MOQUETA EN ROLLOS M2', '', '', NULL, 41.51000000, 50.22710000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(194, 'PQ036', 1, NULL, '2015-05-27 12:16:45', '2015-05-27 10:16:45', 0, 0, 'PAVIMENTOS DE GOMA M2.', 'PAVIMENTOS DE GOMA M2.', '', '', NULL, 36.53000000, 44.20130000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(195, 'PQ037', 1, NULL, '2015-05-27 12:17:51', '2015-05-27 10:17:51', 0, 0, 'PAVIMENTOS DE LINÓLEO M2.', 'PAVIMENTOS DE LINÓLEO M2.', '', '', NULL, 35.82000000, 43.34220000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(196, 'PQ038', 1, NULL, '2015-05-27 12:20:22', '2015-05-27 10:20:22', 0, 0, 'PAVIMENTOS VINÍLICOS M2.', 'PAVIMENTOS VINÍLICOS M2.', '', '', NULL, 34.84000000, 42.15640000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(197, 'PQ039', 1, NULL, '2015-05-27 12:21:36', '2015-05-27 10:21:36', 0, 0, 'RODAPIÉ AGLOMERADO ML.', 'RODAPIÉ AGLOMERADO ML.', '', '', NULL, 5.20000000, 6.29200000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(198, 'PQ040', 1, NULL, '2015-05-27 12:30:01', '2015-05-27 10:30:01', 0, 0, 'RODAPIÉ MACIZO DE 7 CM. ML.', 'RODAPIÉ MACIZO DE 7 CM. ML.', '', '', NULL, 6.24000000, 7.55040000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(199, 'PQ041', 1, NULL, '2015-05-27 12:32:04', '2015-05-27 10:32:04', 0, 0, 'RODAPIÉ MACIZO DE 10 CM. ML.', 'RODAPIÉ MACIZO DE 10 CM. ML.', '', '', NULL, 8.20000000, 9.92200000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(200, 'PQ042', 1, NULL, '2015-05-27 12:32:46', '2015-05-27 10:32:46', 0, 0, 'LIJADO Y BARNIZADO DE 3 CAPAS. PRIMEROS 15 M2.', 'LIJADO Y BARNIZADO DE 3 CAPAS. PRIMEROS 15 M2.', '', '', NULL, 164.00000000, 198.44000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(201, 'PQ043', 1, NULL, '2015-05-27 12:33:26', '2015-05-27 10:33:26', 0, 0, 'LIJADO Y BARNIZADO DE 3 CAPAS. M2 ADICIONAL.', 'LIJADO Y BARNIZADO DE 3 CAPAS. M2 ADICIONAL.', '', '', NULL, 10.24000000, 12.39040000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(202, 'PQ044', 1, NULL, '2015-05-27 12:34:40', '2015-05-27 10:34:40', 0, 0, 'PULIDO Y ABRILANTADO DE TERRAZO O MÁRMOL. PRIMEROS 15 M2.', 'PULIDO Y ABRILANTADO DE TERRAZO O MÁRMOL. PRIMEROS 15 M2', '', '', NULL, 100.11000000, 121.13310000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(203, 'PQ045', 1, NULL, '2015-05-27 12:35:22', '2015-05-27 10:35:22', 0, 0, 'PULIDO Y ABRILLANTADO DE TERRAZO O MÁRMOL. M2 ADICIONAL.', 'PULIDO Y ABRILLANTADO DE TERRAZO O MÁRMOL. M2 ADICIONAL.', '', '', NULL, 5.60000000, 6.77600000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(204, 'PQ046', 1, NULL, '2015-05-27 12:35:58', '2015-05-27 10:35:58', 0, 0, 'ABRILLANTADO DE TERRAZO O MÁRMOL. PRIMEROS 15 M2.', 'ABRILLANTADO DE TERRAZO O MÁRMOL. PRIMEROS 15 M2.', '', '', NULL, 126.80000000, 153.42800000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(205, 'PQ047', 1, NULL, '2015-05-27 12:36:32', '2015-05-27 10:36:32', 0, 0, 'ABRILLANTADO DE TERRAZO O MÁRMOL. M2 ADICIONAL.', 'ABRILLANTADO DE TERRAZO O MÁRMOL. M2 ADICIONAL.', '', '', NULL, 7.60000000, 9.19600000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(206, 'PQ048', 1, NULL, '2015-05-27 13:04:28', '2015-05-27 11:04:28', 0, 0, 'LEVANTADO Y COLOCACIÓN DE PAVIMENTOS Y PP. RODAPIÉ M2.', 'LEVANTADO Y COLOCACIÓN DE PAVIMENTOS Y PP. RODAPIÉ M2.', '', '', NULL, 8.00000000, 9.68000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(207, 'PQ049', 1, NULL, '2015-05-27 13:05:08', '2015-05-27 11:05:08', 0, 0, 'PASTA NIVELADORA DE PREPARACIÓN M2.', 'PASTA NIVELADORA DE PREPARACIÓN M2', '', '', NULL, 4.35000000, 5.26350000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(208, 'PQ050', 1, NULL, '2015-05-27 13:05:48', '2015-05-27 11:05:48', 0, 0, 'TAPAJUNTAS PARA SOLADOS EN PASO DE PUERTA, INCLUIDO MATERIAL.', 'TAPAJUNTAS PARA SOLADOS EN PASO DE PUERTA, INCLUIDO MATERIAL.', '', '', NULL, 12.00000000, 14.52000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(209, 'PQ051', 1, NULL, '2015-05-27 13:06:37', '2015-05-27 11:06:37', 0, 0, 'MANO DE OBRA DE INSTALACIÓN DE PAVIMENTOS (NO INCLUIDOS EN OTROS CÓDIGOS) M2.', 'MANO DE OBRA DE INSTALACIÓN DE PAVIMENTOS (NO INCLUIDOS EN OTROS CÓDIGOS) M2.', '', '', NULL, 22.00000000, 26.62000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(210, 'PQ052', 1, NULL, '2015-05-27 13:07:11', '2015-05-27 11:07:11', 0, 0, 'RETIRADA DE PARQUET ANTIGUO.', 'RETIRADA DE PARQUET ANTIGUO.', '', '', NULL, 4.70000000, 5.68700000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(211, 'PQ053', 1, NULL, '2015-05-27 13:18:09', '2015-05-27 11:18:09', 0, 0, 'CHAPAS DE PASO O PLETINAS.', 'CHAPAS DE PASO O PLETINAS.', '', '', NULL, 4.32000000, 5.22720000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(212, 'CR0001', 1, NULL, '2015-06-02 11:09:49', '2015-06-02 09:09:49', 0, 0, 'LUNAS INCOLORAS 3 MM. M2.', 'LUNAS INCOLORAS 3 MM. M2.', '', '', NULL, 29.54000000, 35.74340000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(213, 'CR002', 1, NULL, '2015-06-02 11:10:30', '2015-06-02 09:10:30', 0, 0, 'LUNAS INCOLORAS 4MM. M2.', 'LUNAS INCOLORAS 4MM. M2.', '', '', NULL, 31.00000000, 37.51000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(214, 'CR003', 1, NULL, '2015-06-02 11:12:05', '2015-06-02 09:12:05', 0, 0, 'LUNAS INCOLORAS 5 MM. M2.', 'LUNAS INCOLORAS 5 MM. M2.', '', '', NULL, 34.84000000, 42.15640000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(215, 'CR004', 1, NULL, '2015-06-02 11:12:40', '2015-06-02 09:12:40', 0, 0, 'LUNAS INCOLORAS 6 MM. M2.', 'LUNAS INCOLORAS 6 MM. M2.', '', '', NULL, 38.88000000, 47.04480000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(216, 'CR005', 1, NULL, '2015-06-02 11:13:11', '2015-06-02 09:13:11', 0, 0, 'LUNAS INCOLORAS 8 MM. M2.', 'LUNAS INCOLORAS 8 MM. M2.', '', '', NULL, 47.87000000, 57.92270000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(217, 'CR006', 1, NULL, '2015-06-02 11:13:44', '2015-06-02 09:13:44', 0, 0, 'LUNAS INCOLORAS 10 MM. M2.', 'LUNAS INCOLORAS 10 MM. M2.', '', '', NULL, 58.98000000, 71.36580000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(218, 'CR007', 1, NULL, '2015-06-02 11:14:17', '2015-06-02 09:14:17', 0, 0, 'LUNAS INCOLORAS 15 MM. M2.', 'LUNAS INCOLORAS 15 MM. M2.', '', '', NULL, 91.35000000, 110.53350000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(219, 'CR008', 1, NULL, '2015-06-02 11:15:59', '2015-06-02 09:15:59', 0, 0, 'LUNAS INCOLORAS 19 MM. M2.', 'LUNAS INCOLORAS 19 MM. M2.', '', '', NULL, 126.40000000, 152.94400000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(220, 'CR009', 1, NULL, '2015-06-02 11:16:48', '2015-06-02 09:16:48', 0, 0, 'PARSOL 4 MM. M2.', 'PARSOL 4 MM. M2.', '', '', NULL, 35.86000000, 43.39060000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(221, 'CR010', 1, NULL, '2015-06-02 11:17:28', '2015-06-02 09:17:28', 0, 0, 'PARSOL 5 MM. M2.', 'PARSOL 5 MM. M2.', '', '', NULL, 38.09000000, 46.08890000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(222, 'CR011', 1, NULL, '2015-06-02 11:19:46', '2015-06-02 09:19:46', 0, 0, 'PARSOL 6 MM. M2.', 'PARSOL 6 MM. M2.', '', '', NULL, 43.38000000, 52.48980000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(223, 'CR012', 1, NULL, '2015-06-02 11:20:15', '2015-06-02 09:20:15', 0, 0, 'PARSOL 10 MM. M2.', 'PARSOL 10 MM. M2.', '', '', NULL, 67.18000000, 81.28780000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(224, 'CR013', 1, NULL, '2015-06-02 11:20:43', '2015-06-02 09:20:43', 0, 0, 'PLATA 3 MM. M2.', 'PLATA 3 MM. M2.', '', '', NULL, 33.86000000, 40.97060000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(225, 'CR014', 1, NULL, '2015-06-02 11:21:13', '2015-06-02 09:21:13', 0, 0, 'PLATA 4 MM. M2.', 'PLATA 4 MM. M2.', '', '', NULL, 38.78000000, 46.92380000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(226, 'CR015', 1, NULL, '2015-06-02 11:21:41', '2015-06-02 09:21:41', 0, 0, 'PLATA 5 MM. M2.', 'PLATA 5 MM. M2.', '', '', NULL, 49.19000000, 59.51990000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(227, 'CR016', 1, NULL, '2015-06-02 11:23:13', '2015-06-02 09:23:13', 0, 0, 'COLOR 3 MM. M2 PINK ROSA.', 'COLOR 3 MM. M2 PINK ROSA.', '', '', NULL, 64.80000000, 78.40800000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(228, 'CR017', 1, NULL, '2015-06-02 11:23:48', '2015-06-02 09:23:48', 0, 0, 'COLOR 4 MM. M2. PINK ROSA.', 'COLOR 4 MM. M2. PINK ROSA.', '', '', NULL, 68.63000000, 83.04230000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(229, 'CR018', 1, NULL, '2015-06-02 11:24:21', '2015-06-02 09:24:21', 0, 0, 'COLOR 5 MM. M2 PINK ROSA.', 'COLOR 5 MM. M2 PINK ROSA.', '', '', NULL, 72.47000000, 87.68870000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(230, 'CR019', 1, NULL, '2015-06-02 11:25:00', '2015-06-02 09:25:00', 0, 0, 'IMPRESOS, LISTRALES M2.', 'IMPRESOS, LISTRALES M2.', '', '', NULL, 23.67000000, 28.64070000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(231, 'CR020', 1, NULL, '2015-06-02 11:25:36', '2015-06-02 09:25:36', 0, 0, 'IMPRESOS, LISTRALES COLOR M2.', 'IMPRESOS, LISTRALES COLOR M2.', '', '', NULL, 26.18000000, 31.67780000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(232, 'CR021', 1, NULL, '2015-06-02 11:27:30', '2015-06-02 09:27:30', 0, 0, 'IMPRESOS / 200 - 6 - 7 MM. M2.', 'IMPRESOS / 200 - 6 - 7 MM. M2.', '', '', NULL, 29.67000000, 35.90070000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(233, 'CR022', 1, NULL, '2015-06-02 11:30:48', '2015-06-02 09:30:48', 0, 0, 'IMPRESOS / 200 - 9 - 11 MM. M2.', 'IMPRESOS / 200 - 9 - 11 MM. M2.', '', '', NULL, 57.79000000, 69.92590000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(234, 'CR023', 1, NULL, '2015-06-02 11:31:53', '2015-06-02 09:31:53', 0, 0, 'CATEDRAL ARMADO, ARMADO CARGLASS M2.', 'CATEDRAL ARMADO, ARMADO CARGLASS M2.', '', '', NULL, 35.97000000, 43.52370000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 0, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(235, 'CR024', 1, NULL, '2015-06-02 11:32:20', '2015-06-02 09:32:20', 0, 0, 'COLOR ARMADOS M2.', 'COLOR ARMADOS M2.', '', '', NULL, 38.62000000, 46.73020000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(236, 'CR025', 1, NULL, '2015-06-02 11:32:52', '2015-06-02 09:32:52', 0, 0, 'U-UGLAS M2.', 'U-UGLAS M2.', '', '', NULL, 62.55000000, 75.68550000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL);
INSERT INTO `llx_product` (`rowid`, `ref`, `entity`, `ref_ext`, `datec`, `tms`, `virtual`, `fk_parent`, `label`, `description`, `note`, `customcode`, `fk_country`, `price`, `price_ttc`, `price_min`, `price_min_ttc`, `price_base_type`, `tva_tx`, `recuperableonly`, `localtax1_tx`, `localtax2_tx`, `fk_user_author`, `tosell`, `tobuy`, `tobatch`, `fk_product_type`, `duration`, `seuil_stock_alerte`, `url`, `barcode`, `fk_barcode_type`, `accountancy_code_sell`, `accountancy_code_buy`, `partnumber`, `weight`, `weight_units`, `length`, `length_units`, `surface`, `surface_units`, `volume`, `volume_units`, `stock`, `pmp`, `canvas`, `finished`, `hidden`, `import_key`, `desiredstock`) VALUES
(237, 'CR026', 1, NULL, '2015-06-02 11:33:36', '2015-06-02 09:33:36', 0, 0, 'U-UGLAS ARMADO M2.', 'U-UGLAS ARMADO M2.', '', '', NULL, 66.65000000, 80.64650000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(238, 'CR027', 1, NULL, '2015-06-02 11:34:07', '2015-06-02 09:34:07', 0, 0, 'REFLECTASOL 6 MM. M2.', 'REFLECTASOL 6 MM. M2.', '', '', NULL, 77.08000000, 93.26680000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(239, 'CR028', 1, NULL, '2015-06-02 11:34:39', '2015-06-02 09:34:39', 0, 0, 'DECOMAT MATEADO 3 MM. M2.', 'DECOMAT MATEADO 3 MM. M2.', '', '', NULL, 49.03000000, 59.32630000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(240, 'CR029', 1, NULL, '2015-06-02 11:35:12', '2015-06-02 09:35:12', 0, 0, 'FUERTE A LA SEDA 4 MM. M2.', 'FUERTE A LA SEDA 4 MM. M2.', '', '', NULL, 54.32000000, 65.72720000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(241, 'CR030', 1, NULL, '2015-06-02 11:35:42', '2015-06-02 09:35:42', 0, 0, 'FUERTE A LA SEDA 5 MM. M2.', 'FUERTE A LA SEDA 5 MM. M2.', '', '', NULL, 62.89000000, 76.09690000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(242, 'CR031', 1, NULL, '2015-06-02 11:36:14', '2015-06-02 09:36:14', 0, 0, 'VIMAT INCOLORO 5 MM. M2.', 'VIMAT INCOLORO 5 MM. M2.', '', '', NULL, 57.13000000, 69.12730000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(243, 'CR032', 1, NULL, '2015-06-02 11:37:10', '2015-06-02 09:37:10', 0, 0, 'VIMAT COLOR 5 MM. M2.', 'VIMAT COLOR 5 MM. M2.', '', '', NULL, 65.59000000, 79.36390000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(244, 'CR033', 1, NULL, '2015-06-02 11:37:53', '2015-06-02 09:37:53', 0, 0, 'COMPOSICIÓN INCOLORO 4+6+4 M2.', 'COMPOSICIÓN INCOLORO 4+6+4 M2.', '', '', NULL, 66.03000000, 79.89630000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(245, 'CR034', 1, NULL, '2015-06-02 11:38:34', '2015-06-02 09:38:34', 0, 0, 'COMPOSICIÓN INCOLORO 5+6+4 M2.', 'COMPOSICIÓN INCOLORO 5+6+4 M2.', '', '', NULL, 71.65000000, 86.69650000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(246, 'CR035', 1, NULL, '2015-06-02 11:39:07', '2015-06-02 09:39:07', 0, 0, 'COMPOSICIÓN INCOLORO 6+6+4 M2.', 'COMPOSICIÓN INCOLORO 6+6+4 M2.', '', '', NULL, 75.40000000, 91.23400000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(247, 'CR036', 1, NULL, '2015-06-02 11:40:36', '2015-06-02 09:40:36', 0, 0, 'COMPOSICIÓN INCOLORO 8+6+4 M2.', 'COMPOSICIÓN INCOLORO 8+6+4 M2.', '', '', NULL, 87.10000000, 105.39100000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(248, 'CR037', 1, NULL, '2015-06-02 11:41:21', '2015-06-02 09:41:21', 0, 0, 'COMPOSICIÓN INCOLORO 6+6+6 M2.', 'COMPOSICIÓN INCOLORO 6+6+6 M2.', '', '', NULL, 76.80000000, 92.92800000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(249, 'CR038', 1, NULL, '2015-06-02 11:45:10', '2015-06-02 09:45:10', 0, 0, 'COMPOSICIÓN CON VIDRIO IMPRESO 4+6+4 M2.', 'COMPOSICIÓN CON VIDRIO IMPRESO 4+6+4 M2', '', '', NULL, 66.22000000, 80.12620000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(250, 'CR039', 1, NULL, '2015-06-02 11:45:50', '2015-06-02 09:45:50', 0, 0, 'COMPOSICIÓN COLOR GRIS, BRONCE, ROSA 4+6+4 M2.', 'COMPOSICIÓN COLOR GRIS, BRONCE, ROSA 4+6+4 M2.', '', '', NULL, 72.31000000, 87.49510000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(251, 'CR040', 1, NULL, '2015-06-04 13:01:09', '2015-06-04 11:01:09', 0, 0, 'LUNA MATEADA AL ÁCIDO LISA 3 MM. M2.', 'LUNA MATEADA AL ÁCIDO LISA 3 MM. M2.', '', '', NULL, 51.84000000, 62.72640000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(252, 'CR041', 1, NULL, '2015-06-04 13:01:57', '2015-06-04 11:01:57', 0, 0, 'LUNA MATEADA AL ÁCIDO LISA 4 MM. M2.', 'LUNA MATEADA AL ÁCIDO LISA 4 MM. M2.', '', '', NULL, 60.83000000, 73.60430000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(253, 'CR042', 1, NULL, '2015-06-04 13:02:44', '2015-06-04 11:02:44', 0, 0, 'LUNA MATEADA AL ÁCIDO LISA 5 MM. M2.', 'LUNA MATEADA AL ÁCIDO LISA 5 MM. M2.', '', '', NULL, 68.24000000, 82.57040000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(254, 'CR043', 1, NULL, '2015-06-04 13:03:35', '2015-06-04 11:03:35', 0, 0, 'LUNA MATEADA AL ÁCIDO LISA 6 MM. M2.', 'LUNA MATEADA AL ÁCIDO LISA 6 MM. M2.', '', '', NULL, 76.17000000, 92.16570000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(255, 'CR044', 1, NULL, '2015-06-04 13:04:19', '2015-06-04 11:04:19', 0, 0, 'LUNA MATEADA AL ÁCIDO DECORADA (MADRÁS) INCOLORA M2.', 'LUNA MATEADA AL ÁCIDO DECORADA (MADRÁS) INCOLORA M2.', '', '', NULL, 71.67000000, 86.72070000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(256, 'CR045', 1, NULL, '2015-06-04 13:04:54', '2015-06-04 11:04:54', 0, 0, 'DOS LUNAS, 3+3 MM. M2.', 'DOS LUNAS, 3+3 MM. M2.', '', '', NULL, 79.61000000, 96.32810000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(257, 'CR046', 1, NULL, '2015-06-04 13:08:50', '2015-06-04 11:08:50', 0, 0, 'DOS LUNAS, 4+4 MM. M2.', 'DOS LUNAS, 4+4 MM. M2.', '', '', NULL, 100.21000000, 121.25410000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(258, 'CR047', 1, NULL, '2015-06-04 13:09:26', '2015-06-04 11:09:26', 0, 0, 'DOS LUNAS, 5+5 MM. M2.', 'DOS LUNAS, 5+5 MM. M2.', '', '', NULL, 108.92000000, 131.79320000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(259, 'CR048', 1, NULL, '2015-06-04 13:10:05', '2015-06-04 11:10:05', 0, 0, 'DOS LUNAS, 6+6 MM. M2.', 'DOS LUNAS, 6+6 MM. M2.', '', '', NULL, 134.35000000, 162.56350000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(260, 'CR049', 1, NULL, '2015-06-04 13:11:24', '2015-06-04 11:11:24', 0, 0, 'TRES LUNAS ANTIRROBO, 6+6 MM. M2.', 'TRES LUNAS ANTIRROBO, 6+6 MM. M2', '', '', NULL, 189.01000000, 228.70210000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(261, 'CR050', 1, NULL, '2015-06-04 13:12:05', '2015-06-04 11:12:05', 0, 0, 'TRES LUNAS ANTIBALA 10+10+2,5 MM. M2.', 'TRES LUNAS ANTIBALA 10+10+2,5 MM. M2.', '', '', NULL, 303.81000000, 367.61010000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(262, 'CR057', 1, NULL, '2015-06-04 13:14:45', '2015-06-04 11:14:45', 0, 0, 'TAPA DE MESA DE 70 CM. ACABADA M2.', 'TAPA DE MESA DE 70 CM. ACABADA M2', '', '', NULL, 27.50000000, 33.27500000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(263, 'CR058', 1, NULL, '2015-06-04 13:15:22', '2015-06-04 11:15:22', 0, 0, 'TAPA DE MESA DE 80 CM. ACABADA M2.', 'TAPA DE MESA DE 80 CM. ACABADA M2.', '', '', NULL, 31.21000000, 37.76410000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(264, 'CR059', 1, NULL, '2015-06-04 13:15:53', '2015-06-04 11:15:53', 0, 0, 'TAPA DE MESA DE 90 CM. ACABADA M2.', 'TAPA DE MESA DE 90 CM. ACABADA M2.', '', '', NULL, 36.66000000, 44.35860000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(265, 'CR060', 1, NULL, '2015-06-04 13:16:28', '2015-06-04 11:16:28', 0, 0, 'TAPA DE MESA DE 100 CM. ACABADA M2.', 'TAPA DE MESA DE 100 CM. ACABADA M2.', '', '', NULL, 40.73000000, 49.28330000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(266, 'CR061', 1, NULL, '2015-06-04 13:17:02', '2015-06-04 11:17:02', 0, 0, 'TAPA DE MESA DE 110 CM. ACABADA M2.', 'TAPA DE MESA DE 110 CM. ACABADA M2.', '', '', NULL, 47.74000000, 57.76540000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(267, 'CR062', 1, NULL, '2015-06-04 13:17:30', '2015-06-04 11:17:30', 0, 0, 'BARROTILLOS', 'BARROTILLOS', '', '', NULL, 10.25000000, 12.40250000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(268, 'CR063', 1, NULL, '2015-06-04 13:18:10', '2015-06-04 11:18:10', 0, 0, 'BISEL CURVO, HASTA 6 MM. M.', 'BISEL CURVO, HASTA 6 MM. M.', '', '', NULL, 10.25000000, 12.40250000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(269, 'CR064', 1, NULL, '2015-06-04 13:19:53', '2015-06-04 11:19:53', 0, 0, 'BISEL CURVO, MÁS DE 6 MM. M.', 'BISEL CURVO, MÁS DE 6 MM. M.', '', '', NULL, 13.33000000, 16.12930000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(270, 'CR065', 1, NULL, '2015-06-04 13:20:59', '2015-06-04 11:20:59', 0, 0, 'BISEL RECTO, HASTA 6 MM. M.', 'BISEL RECTO, HASTA 6 MM. M.', '', '', NULL, 3.58000000, 4.33180000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(271, 'CR066', 1, NULL, '2015-06-04 13:21:43', '2015-06-04 11:21:43', 0, 0, 'BISEL RECTO, MÁS DE 6 MM. M.', 'BISEL RECTO, MÁS DE 6 MM. M.', '', '', NULL, 9.22000000, 11.15620000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(272, 'CR067', 1, NULL, '2015-06-04 13:22:20', '2015-06-04 11:22:20', 0, 0, 'CANTO PECHO PALOMA ESQUINAS, 8/10 MM. M.', 'CANTO PECHO PALOMA ESQUINAS, 8/10 MM. M', '', '', NULL, 4.76000000, 5.75960000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(273, 'CR068', 1, NULL, '2015-06-04 13:22:55', '2015-06-04 11:22:55', 0, 0, 'CANTO PECHO PALOMA, 8/10 MM. M.', 'CANTO PECHO PALOMA, 8/10 MM. M.', '', '', NULL, 17.94000000, 21.70740000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(274, 'CR069', 1, NULL, '2015-06-04 13:23:30', '2015-06-04 11:23:30', 0, 0, 'CANTO PECHO PALOMA MÁS DE 10 MM. M.', 'CANTO PECHO PALOMA MÁS DE 10 MM. M.', '', '', NULL, 21.53000000, 26.05130000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(275, 'CR070', 1, NULL, '2015-06-04 13:24:32', '2015-06-04 11:24:32', 0, 0, 'CANTO PECHO PALOMA CURVO MÁS DE 10 MM. M.', 'CANTO PECHO PALOMA CURVO MÁS DE 10 MM. M.', '', '', NULL, 39.34000000, 47.60140000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(276, 'CR071', 1, NULL, '2015-06-04 13:25:05', '2015-06-04 11:25:05', 0, 0, 'CANTO PULIDO CURVO, HASTA 6 MM. M.', 'CANTO PULIDO CURVO, HASTA 6 MM. M.', '', '', NULL, 5.13000000, 6.20730000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(277, 'CR072', 1, NULL, '2015-06-04 13:35:56', '2015-06-04 11:35:56', 0, 0, 'CANTO PULIDO CURVO, MÁS DE 6 MM. M.', 'CANTO PULIDO CURVO, MÁS DE 6 MM. M.', '', '', NULL, 7.69000000, 9.30490000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(278, 'CR073', 1, NULL, '2015-06-04 13:36:43', '2015-06-04 11:36:43', 0, 0, 'CANTO PULIDO RECTO, HASTA 6 MM. M.', 'CANTO PULIDO RECTO, HASTA 6 MM. M.', '', '', NULL, 2.78000000, 3.36380000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(279, 'CR074', 1, NULL, '2015-06-04 13:37:16', '2015-06-04 11:37:16', 0, 0, 'CANTO PULIDO RECTO, MÁS DE 6 MM. M.', 'CANTO PULIDO RECTO, MÁS DE 6 MM. M.', '', '', NULL, 4.55000000, 5.50550000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(280, 'CR075', 1, NULL, '2015-06-04 13:37:44', '2015-06-04 11:37:44', 0, 0, 'ESCUADRAS 6 MM.', 'ESCUADRAS 6 MM.', '', '', NULL, 5.76000000, 6.96960000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(281, 'CR076', 1, NULL, '2015-06-04 13:38:13', '2015-06-04 11:38:13', 0, 0, 'ESCUADRAS REJILLAS.', 'ESCUADRAS REJILLAS.', '', '', NULL, 3.33000000, 4.02930000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(282, 'CR077', 1, NULL, '2015-06-04 13:38:44', '2015-06-04 11:38:44', 0, 0, 'ESQUINAS REDONDAS.', 'ESQUINAS REDONDAS.', '', '', NULL, 2.05000000, 2.48050000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(283, 'CR078', 1, NULL, '2015-06-04 13:39:12', '2015-06-04 11:39:12', 0, 0, 'ESTRÍAS/UÑEROS', 'ESTRÍAS/UÑEROS', '', '', NULL, 5.13000000, 6.20730000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(284, 'CR079', 1, NULL, '2015-06-04 13:39:44', '2015-06-04 11:39:44', 0, 0, 'TALADRO CIRCULAR SALIDA HUMOS.', 'TALADRO CIRCULAR SALIDA HUMOS.', '', '', NULL, 9.74000000, 11.78540000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(285, 'CR080', 1, NULL, '2015-06-04 13:40:54', '2015-06-04 11:40:55', 0, 0, 'TALADROS PUNTO DE LUCES.', 'TALADROS PUNTO DE LUCES.', '', '', NULL, 3.58000000, 4.33180000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(286, 'CR081', 1, NULL, '2015-06-04 13:41:27', '2015-06-04 11:41:27', 0, 0, 'TALADROS, GROSOR HASTA 10 MM.', 'TALADROS, GROSOR HASTA 10 MM.', '', '', NULL, 2.30000000, 2.78300000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(287, 'CR082', 1, NULL, '2015-06-05 11:30:12', '2015-06-05 09:30:12', 0, 0, 'UNID. ESCUADRAS', 'UNID. ESCUADRAS', '', '', NULL, 15.86000000, 19.19060000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(288, 'CR083', 1, NULL, '2015-06-05 11:30:40', '2015-06-05 09:30:40', 0, 0, 'INGLETES M.', 'INGLETES M.', '', '', NULL, 25.30000000, 30.61300000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(289, 'CR084', 1, NULL, '2015-06-05 11:31:08', '2015-06-05 09:31:08', 0, 0, 'TALADROS DE 11 A 20 MM.', 'TALADROS DE 11 A 20 MM.', '', '', NULL, 5.81000000, 7.03010000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(290, 'CR085', 1, NULL, '2015-06-05 11:33:59', '2015-06-05 09:33:59', 0, 0, 'TALADROS DE 21 A 50 MM.', 'TALADROS DE 21 A 50 MM.', '', '', NULL, 11.51000000, 13.92710000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(291, 'CR086', 1, NULL, '2015-06-05 11:34:26', '2015-06-05 09:34:26', 0, 0, 'TALADROS HASTA 10 MM.', 'TALADROS HASTA 10 MM.', '', '', NULL, 5.05000000, 6.11050000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(292, 'CR087', 1, NULL, '2015-06-05 11:34:53', '2015-06-05 09:34:53', 0, 0, 'TAQUILLAS', 'TAQUILLAS', '', '', NULL, 8.74000000, 10.57540000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(293, 'EL001', 1, NULL, '2015-06-05 11:57:31', '2015-06-05 09:57:31', 0, 0, 'REPOSICIÓN DE MAGNETOTÉRMICO DE 2X40 A.', 'REPOSICIÓN DE MAGNETOTÉRMICO DE 2X40 A.', '', '', NULL, 34.49000000, 41.73290000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(294, 'EL002', 1, NULL, '2015-06-05 11:58:11', '2015-06-05 09:58:11', 0, 0, 'REPOSICIÓN DE MAGNETOTÉRMICO DE 2X50 A.', 'REPOSICIÓN DE MAGNETOTÉRMICO DE 2X50 A.', '', '', NULL, 76.12000000, 92.10520000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(295, 'EL003', 1, NULL, '2015-06-05 11:58:55', '2015-06-05 09:58:55', 0, 0, 'REPOSICIÓN DE MAGNETOTÉRMICO DE 4X25 A.', 'REPOSICIÓN DE MAGNETOTÉRMICO DE 4X25 A.', '', '', NULL, 98.49000000, 119.17290000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(296, 'EL004', 1, NULL, '2015-06-05 11:59:50', '2015-06-05 09:59:50', 0, 0, 'REPOSICIÓN DE MAGNETOTÉRMICO DE 4X40 A.', 'REPOSICIÓN DE MAGNETOTÉRMICO DE 4X40 A.', '', '', NULL, 118.49000000, 143.37290000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(297, 'EL005', 1, NULL, '2015-06-05 12:00:28', '2015-06-05 10:00:28', 0, 0, 'REPOSICIÓN DE MAGNETOTÉRMICO DE 4X50 A.', 'REPOSICIÓN DE MAGNETOTÉRMICO DE 4X50 A.', '', '', NULL, 162.20000000, 196.26200000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(298, 'EL006', 1, NULL, '2015-06-05 12:01:20', '2015-06-05 10:01:20', 0, 0, 'REPOSICIÓN DE DIFERENCIAL HASTA 2X40 A SENSIBILIDAD 30 MA.', 'REPOSICIÓN DE DIFERENCIAL HASTA 2X40 A SENSIBILIDAD 30 MA.', '', '', NULL, 59.29000000, 71.74090000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(299, 'EL007', 1, NULL, '2015-06-05 12:02:05', '2015-06-05 10:02:05', 0, 0, 'REPOSICIÓN DE DIFERENCIAL 2X63 A SENSIBILIDAD 30 MA.', 'REPOSICIÓN DE DIFERENCIAL 2X63 A SENSIBILIDAD 30 MA.', '', '', NULL, 212.89000000, 257.59690000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(300, 'EL008', 1, NULL, '2015-06-05 12:02:50', '2015-06-05 10:02:50', 0, 0, 'REPOSICIÓN DE DIFERENCIAL HASTA 4X40 A SENSIBILIDAD 30 MA.', 'REPOSICIÓN DE DIFERENCIAL HASTA 4X40 A SENSIBILIDAD 30 MA.', '', '', NULL, 180.60000000, 218.52600000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(301, 'EL009', 1, NULL, '2015-06-05 12:03:36', '2015-06-05 10:03:36', 0, 0, 'REPOSICIÓN DE DIFERENCIAL 4X63 A SENSIBILIDAD 30 MA.', 'REPOSICIÓN DE DIFERENCIAL 4X63 A SENSIBILIDAD 30 MA.', '', '', NULL, 297.68000000, 360.19280000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(302, 'EL010', 1, NULL, '2015-06-05 12:56:02', '2015-06-05 10:56:02', 0, 0, 'REPOSICIÓN DE DIFERENCIAL HASTA 4X40 A SENSIBILIDAD 300 MA.', 'REPOSICIÓN DE DIFERENCIAL HASTA 4X40 A SENSIBILIDAD 300 MA.', '', '', NULL, 184.09000000, 222.74890000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(303, 'EL011', 1, NULL, '2015-06-05 13:10:46', '2015-06-05 11:10:46', 0, 0, 'REPOSICIÓN DE DIFERENCIAL 4X63 A SENSIBILIDAD 300 MA.', 'REPOSICIÓN DE DIFERENCIAL 4X63 A SENSIBILIDAD 300 MA.', '', '', NULL, 159.27000000, 192.71670000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(304, 'EL012', 1, NULL, '2015-06-05 13:12:01', '2015-06-05 11:12:01', 0, 0, 'CAMBIO DE LÍNEAS GENERALES HASTA 6 MM. M.', 'CAMBIO DE LÍNEAS GENERALES HASTA 6 MM. M', '', '', NULL, 5.20000000, 6.29200000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(305, 'EL013', 1, NULL, '2015-06-05 13:12:36', '2015-06-05 11:12:36', 0, 0, 'CAMBIO DE LÍNEAS GENERALES 10 MM. M.', 'CAMBIO DE LÍNEAS GENERALES 10 MM. M', '', '', NULL, 6.80000000, 8.22800000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(306, 'EL014', 1, NULL, '2015-06-05 13:13:11', '2015-06-05 11:13:11', 0, 0, 'CAMBIO DE LÍNEAS GENERALES 16 MM. M.', 'CAMBIO DE LÍNEAS GENERALES 16 MM. M.', '', '', NULL, 7.60000000, 9.19600000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(307, 'EL015', 1, NULL, '2015-06-05 13:13:54', '2015-06-05 11:13:54', 0, 0, 'CAMBIO DE LÍNEAS GENERALES 25 MM. M.', 'CAMBIO DE LÍNEAS GENERALES 25 MM. M.', '', '', NULL, 8.40000000, 10.16400000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(308, 'EL016', 1, NULL, '2015-06-05 13:14:30', '2015-06-05 11:14:30', 0, 0, 'REPARACIÓN CORTOCIRCUITO.', 'REPARACIÓN CORTOCIRCUITO.', '', '', NULL, 44.44000000, 53.77240000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(309, 'EL017', 1, NULL, '2015-06-05 13:15:13', '2015-06-05 11:15:13', 0, 0, 'PUNTO DE LUZ SIMPLE CON MECANISMO DE GAMA MEDIA (INCLUIDO MATERIAL).', 'PUNTO DE LUZ SIMPLE CON MECANISMO DE GAMA MEDIA (INCLUIDO MATERIAL).', '', '', NULL, 32.10000000, 38.84100000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(310, 'EL018', 1, NULL, '2015-06-11 12:15:32', '2015-06-11 10:15:32', 0, 0, 'LLAVE COMBINADA CON MECANISMO DE GAMA MEDIA.', 'LLAVE COMBINADA CON MECANISMO DE GAMA MEDIA.', '', '', NULL, 36.00000000, 43.56000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(311, 'EL019', 1, NULL, '2015-06-11 12:16:10', '2015-06-11 10:16:10', 0, 0, 'LLAVE DE CRUCE CON MECANISMO DE GAMA MEDIA.', 'LLAVE DE CRUCE CON MECANISMO DE GAMA MEDIA', '', '', NULL, 40.00000000, 48.40000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(312, 'EL020', 1, NULL, '2015-06-11 12:16:47', '2015-06-11 10:16:47', 0, 0, 'REPOSICIÓN DE AUTOMÁTICO 1 POLO Y HASTA 25 A.', 'REPOSICIÓN DE AUTOMÁTICO 1 POLO Y HASTA 25 A.', '', '', NULL, 24.89000000, 30.11690000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(313, 'EL021', 1, NULL, '2015-06-11 12:18:21', '2015-06-11 10:18:21', 0, 0, 'REPOSICIÓN DE AUTOMÁTICO 1 POLO Y HASTA 40 A.', 'REPOSICIÓN DE AUTOMÁTICO 1 POLO Y HASTA 40 A.', '', '', NULL, 38.49000000, 46.57290000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(314, 'EL022', 1, NULL, '2015-06-11 12:18:57', '2015-06-11 10:18:57', 0, 0, 'REPOSICIÓN DE AUTOMÁTICO DPN HASTA 32 A.', 'REPOSICIÓN DE AUTOMÁTICO DPN HASTA 32 A.', '', '', NULL, 47.04000000, 56.91840000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(315, 'EL023', 1, NULL, '2015-06-11 12:20:04', '2015-06-11 10:20:04', 0, 0, 'REPOSICIÓN DE AUTOMÁTICO DPN HASTA 40 A.', 'REPOSICIÓN DE AUTOMÁTICO DPN HASTA 40 A.', '', '', NULL, 55.12000000, 66.69520000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(316, 'CM001', 1, NULL, '2015-06-15 12:48:50', '2015-06-15 10:48:50', 0, 0, 'SUSTITUCIÓN DE JAMBAS.', 'SUSTITUCIÓN DE JAMBAS.', '', '', NULL, 52.16000000, 63.11360000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(317, 'CM002', 1, NULL, '2015-06-15 12:49:30', '2015-06-15 10:49:30', 0, 0, 'SUSTITUCIÓN DE BATIENTES (CERCOS).', 'SUSTITUCIÓN DE BATIENTES (CERCOS).', '', '', NULL, 79.52000000, 96.21920000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(318, 'CM003', 1, NULL, '2015-06-15 12:51:36', '2015-06-15 10:51:36', 0, 0, 'SUSTITUCIÓN DE JUEGO COMPLETO DE TAPETAS Y BATIENTES (JAMBAS Y CERCOS).', 'SUSTITUCIÓN DE JUEGO COMPLETO DE TAPETAS Y BATIENTES (JAMBAS Y CERCOS).', '', '', NULL, 97.72000000, 118.24120000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(319, 'CM004', 1, NULL, '2015-06-15 12:52:50', '2015-06-15 10:52:50', 0, 0, 'SUSTITUCIÓN HOJA DE PUERTA INTERIOR CIEGA, (HAYA VAPORIZADA, ROBLE ETC.) (INCLUIDO HERRAJES).', 'SUSTITUCIÓN HOJA DE PUERTA INTERIOR CIEGA, (HAYA VAPORIZADA, ROBLE ETC.) (INCLUIDO HERRAJES).', '', '', NULL, 140.00000000, 169.40000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(320, 'CM005', 1, NULL, '2015-06-15 12:53:25', '2015-06-15 10:53:25', 0, 0, 'PUERTA VIDRIERA SIN CRISTALES (INCLUIDO HERRAJES).', 'PUERTA VIDRIERA SIN CRISTALES (INCLUIDO HERRAJES).', '', '', NULL, 204.40000000, 247.32400000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(321, 'CM006', 1, NULL, '2015-06-15 12:55:02', '2015-06-15 10:55:02', 0, 0, 'REPARACIÓN DE PUERTA QUE ROZA EL SUELO (CEPILLADO INC. D/M HOJA, CEPILLADO, LIJADO Y BARNIZADO, SI ES NECESARIO).  ESTE CÓDIGO NO PUEDE COEXISTIR CON  OTRO TIPO DE TRABAJO.', 'REPARACIÓN DE PUERTA QUE ROZA EL SUELO (CEPILLADO INC. D/M HOJA, CEPILLADO, LIJADO Y BARNIZADO, SI ES NECESARIO).  ESTE CÓDIGO NO PUEDE COEXISTIR CON  OTRO TIPO DE TRABAJO.', '', '', NULL, 36.15000000, 43.74150000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(322, 'CM007', 1, NULL, '2015-06-15 13:00:51', '2015-06-15 11:00:51', 0, 0, 'SÓLO DESMONTAJE O MONTAJE DE MÓDULO DE COCINA. 1ª UNIDAD.', 'SÓLO DESMONTAJE O MONTAJE DE MÓDULO DE COCINA. 1ª UNIDAD.', '', '', NULL, 16.48000000, 19.94080000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(323, 'CM008', 1, NULL, '2015-06-15 13:03:10', '2015-06-15 11:03:10', 0, 0, 'REPOSICIÓN DE CASCO DE MUELLE ALTO O BAJO (SIN PUERTAS), CUALQUIER MEDIDA ESTÁNDAR, INCLUIDO EL MONTAJE DE PUERTAS EXISTENTES EN SU CASO 8GAMA MEDIA).', 'REPOSICIÓN DE CASCO DE MUELLE ALTO O BAJO (SIN PUERTAS), CUALQUIER MEDIDA ESTÁNDAR, INCLUIDO EL MONTAJE DE PUERTAS EXISTENTES EN SU CASO 8GAMA MEDIA).', '', '', NULL, 65.57000000, 79.33970000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(324, 'CM009', 1, NULL, '2015-06-15 13:04:27', '2015-06-15 11:04:27', 0, 0, 'REPOSICIÓN DE CASCO DE MUEBLE ALTO O BAJO (CON PUERTAS NUEVAS) CUALQUIER MEDIDA ESTÁNDAR, INCLUIDO EL MONTAJE DE PUERTAS (GAMA MEDIA).', 'REPOSICIÓN DE CASCO DE MUEBLE ALTO O BAJO (CON PUERTAS NUEVAS) CUALQUIER MEDIDA ESTÁNDAR, INCLUIDO EL MONTAJE DE PUERTAS (GAMA MEDIA).', '', '', NULL, 131.20000000, 158.75200000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(325, 'CM010', 1, NULL, '2015-06-15 13:05:19', '2015-06-15 11:05:19', 0, 0, 'SUSTITUCIÓN DE MÓDULO DE COCINA. INCLUIDO MUEBLE CAJONERA. (GAMA MEDIA).', 'SUSTITUCIÓN DE MÓDULO DE COCINA. INCLUIDO MUEBLE CAJONERA. (GAMA MEDIA).', '', '', NULL, 124.13000000, 150.19730000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(326, 'CM011', 1, NULL, '2015-06-15 13:06:16', '2015-06-15 11:06:16', 0, 0, 'DESMONTAJE Y MONTAJE DE ENCIMERA DE AGLOMERADO (INCLUYE D/M DE FREGAERO Y/O PLACA) HASTA 3,60 ML.', 'DESMONTAJE Y MONTAJE DE ENCIMERA DE AGLOMERADO (INCLUYE D/M DE FREGAERO Y/O PLACA) HASTA 3,60 ML.', '', '', NULL, 72.14000000, 87.28940000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(327, 'CM012', 1, NULL, '2015-06-15 13:07:13', '2015-06-15 11:07:13', 0, 0, 'DESMONTAJE Y MONTAJE DE ENCIMERA DE AGLOMERADO (INCLUYE D/M DE FREGADERO Y/O PLACA) ML. ADICIONAL.', 'DESMONTAJE Y MONTAJE DE ENCIMERA DE AGLOMERADO (INCLUYE D/M DE FREGADERO Y/O PLACA) ML. ADICIONAL.', '', '', NULL, 14.96000000, 18.10160000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(328, 'CM013', 1, NULL, '2015-06-15 13:08:37', '2015-06-15 11:08:37', 0, 0, 'SUSTITUCIÓN DE ENCIMERA DE AGLOMERADO (INCLUYE D/M DE FREGADERO Y/O PLACA) HASTA 3,60 ML.', 'SUSTITUCIÓN DE ENCIMERA DE AGLOMERADO (INCLUYE D/M DE FREGADERO Y/O PLACA) HASTA 3,60 ML.', '', '', NULL, 260.08000000, 314.69680000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(329, 'CM014', 1, NULL, '2015-06-15 13:11:24', '2015-06-15 11:11:24', 0, 0, 'SUSTITUCIÓN DE ENCIMERA DE AGLOMERADO (INCLUYRE D/M DE FREGADERO Y/O PLACA) MI ADICIONAL.', 'SUSTITUCIÓN DE ENCIMERA DE AGLOMERADO (INCLUYRE D/M DE FREGADERO Y/O PLACA) MI ADICIONAL.', '', '', NULL, 53.16000000, 64.32360000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(330, 'CM015', 1, NULL, '2015-06-15 13:12:09', '2015-06-15 11:12:09', 0, 0, 'DESMONTAJE Y MONTAJE DE CORNISA, COPETE O PORTALUZ HASTA 3,60 ML.', 'DESMONTAJE Y MONTAJE DE CORNISA, COPETE O PORTALUZ HASTA 3,60 ML.', '', '', NULL, 56.51000000, 68.37710000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(331, 'CM016', 1, NULL, '2015-06-15 13:15:47', '2015-06-15 11:15:47', 0, 0, 'DESMONTAJE Y MONTAJE DE CORNISA, COPETE O PORTALUZ, MI ADICIONAL O ACOMPAÑADO DE OTRA REPARACIÓN.', 'DESMONTAJE Y MONTAJE DE CORNISA, COPETE O PORTALUZ, MI ADICIONAL O ACOMPAÑADO DE OTRA REPARACIÓN.', '', '', NULL, 12.05000000, 14.58050000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(332, 'CM017', 1, NULL, '2015-06-15 13:17:48', '2015-06-15 11:17:48', 0, 0, 'SUSTITUCIÓN DE ZÓCALO, COPETE, CORNISA O PORTALUZ HASTA 3,60 ML. (GAMA MEDIA).', 'SUSTITUCIÓN DE ZÓCALO, COPETE, CORNISA O PORTALUZ HASTA 3,60 ML. (GAMA MEDIA).', '', '', NULL, 79.52000000, 96.21920000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(333, 'CM018', 1, NULL, '2015-06-15 13:18:57', '2015-06-15 11:18:57', 0, 0, 'SUSTITUCIÓN DE ZÓCALO, COPETE, CORNISA O PORTALUZ. MI ADICIONAL, O ACOMPAÑADO DE OTRA REPARACIÓN (GAMA MEDIA).', 'SUSTITUCIÓN DE ZÓCALO, COPETE, CORNISA O PORTALUZ. MI ADICIONAL, O ACOMPAÑADO DE OTRA REPARACIÓN (GAMA MEDIA).', '', '', NULL, 17.93000000, 21.69530000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(334, 'CM019', 1, NULL, '2015-06-15 13:19:48', '2015-06-15 11:19:48', 0, 0, 'SUSTITUCIÓN DE COSTADO DE FRIGORÍFICO. CUALQUIER MEDIDA (GAMA MEDIA).', 'SUSTITUCIÓN DE COSTADO DE FRIGORÍFICO. CUALQUIER MEDIDA (GAMA MEDIA).', '', '', NULL, 118.86000000, 143.82060000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(335, 'CM020', 1, NULL, '2015-06-15 13:20:49', '2015-06-15 11:20:49', 0, 0, 'SUSTITUCIÓN DE COSTADO DE FRIGORÍFICO. ADICIONAL O ACOMPAÑADO DE OTRA REPARACIÓN (GAMA MEDIA).', 'SUSTITUCIÓN DE COSTADO DE FRIGORÍFICO. ADICIONAL O ACOMPAÑADO DE OTRA REPARACIÓN (GAMA MEDIA).', '', '', NULL, 57.68000000, 69.79280000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(336, 'CM021', 1, NULL, '2015-06-15 13:21:46', '2015-06-15 11:21:46', 0, 0, 'SUSTITUCIÓN DE COSTADO DE FRIGORÍFICO EN HOJA BARNIZADA. CUALQUIER MEDIDA (GAMA MEDIA).', 'SUSTITUCIÓN DE COSTADO DE FRIGORÍFICO EN HOJA BARNIZADA. CUALQUIER MEDIDA (GAMA MEDIA).', '', '', NULL, 156.32000000, 189.14720000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(337, 'CM022', 1, NULL, '2015-06-15 13:23:22', '2015-06-15 11:23:22', 0, 0, 'SUSTITUCIÓN DE COSTADO DE FRIGORÍFICO EN HOJA BARNIZADA. ADICIONAL O ACOMPAÑADO DE OTRA REPARACIÓN (GAMA MEDIA).', 'SUSTITUCIÓN DE COSTADO DE FRIGORÍFICO EN HOJA BARNIZADA. ADICIONAL O ACOMPAÑADO DE OTRA REPARACIÓN (GAMA MEDIA).', '', '', NULL, 79.28000000, 95.92880000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(338, 'CM023', 1, NULL, '2015-06-15 13:23:58', '2015-06-15 11:23:58', 0, 0, 'SUSTITUCIÓN DE COSTADO DE LAVADORA (GAMA MEDIA).', 'SUSTITUCIÓN DE COSTADO DE LAVADORA (GAMA MEDIA).', '', '', NULL, 52.94000000, 64.05740000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(339, 'CM024', 1, NULL, '2015-06-15 13:24:38', '2015-06-15 11:24:38', 0, 0, 'SUSTITUCIÓN DE COSTADO DE LAVADORA EN HOJA BARNIZADA (GAMA MEDIA).', 'SUSTITUCIÓN DE COSTADO DE LAVADORA EN HOJA BARNIZADA (GAMA MEDIA).', '', '', NULL, 68.16000000, 82.47360000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(340, 'CM025', 1, NULL, '2015-06-15 13:25:46', '2015-06-15 11:25:46', 0, 0, 'SUSTITUCIÓN DE PUERTA DE MUEBLE ALTO O BAJO, EN CUALQUER MEDIDA. MIVELAR PUERTAS, AJUSTAR BISAGRAS, COLOCAR BALDAS, ETC. (GAMA MEDIA).', 'SUSTITUCIÓN DE PUERTA DE MUEBLE ALTO O BAJO, EN CUALQUER MEDIDA. MIVELAR PUERTAS, AJUSTAR BISAGRAS, COLOCAR BALDAS, ETC. (GAMA MEDIA).', '', '', NULL, 49.10000000, 59.41100000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(341, 'CM026', 1, NULL, '2015-06-15 13:27:34', '2015-06-15 11:27:34', 0, 0, 'SUSTITUCIÓN DE PUERTA ADICIONAL DE MUEBLE ALTO O BAJO, EN CUALQUIER MEDIDA. NIVELAR PUERTAS, AJUSTAR BISAGRAS, COLOCAR BALDAS, ETC... (GAMA MEDIA).', 'SUSTITUCIÓN DE PUERTA ADICIONAL DE MUEBLE ALTO O BAJO, EN CUALQUIER MEDIDA. NIVELAR PUERTAS, AJUSTAR BISAGRAS, COLOCAR BALDAS, ETC... (GAMA MEDIA).', '', '', NULL, 29.40000000, 35.57400000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(342, 'CM027', 1, NULL, '2015-06-15 13:28:24', '2015-06-15 11:28:24', 0, 0, 'SUSTITUCIÓN DE MUEBLE COLUMNA, ESCOBERO, RINCÓN O SIMILAR CON O SIN PUERTAS (GAMA MEDIA).', 'SUSTITUCIÓN DE MUEBLE COLUMNA, ESCOBERO, RINCÓN O SIMILAR CON O SIN PUERTAS (GAMA MEDIA).', '', '', NULL, 100.08000000, 121.09680000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(343, 'CM028', 1, NULL, '2015-06-15 13:30:00', '2015-06-15 11:30:00', 0, 0, 'DESMONTAJE Y MONTAJE DE ENCIMERA DE MÁRMOL/GRANITO/SILESTONE O SIMILAR ML.', 'DESMONTAJE Y MONTAJE DE ENCIMERA DE MÁRMOL/GRANITO/SILESTONE O SIMILAR ML.', '', '', NULL, 49.92000000, 60.40320000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(344, 'CM029', 1, NULL, '2015-06-15 13:31:12', '2015-06-15 11:31:12', 0, 0, 'SUSTITUCIÓN DE ENCIMERA DE MÁRMOL HASTA 1,20 ML. (INCLUIDO COPETE Y ENCASTRE) GROSOR 2 CM.', 'SUSTITUCIÓN DE ENCIMERA DE MÁRMOL HASTA 1,20 ML. (INCLUIDO COPETE Y ENCASTRE) GROSOR 2 CM.', '', '', NULL, 228.40000000, 276.36400000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(345, 'CM030', 1, NULL, '2015-06-15 13:32:50', '2015-06-15 11:32:50', 0, 0, 'SUSTITUCIÓN DE ENCIMERA DE MÁRMOL ADICIONAL ML (INCLUIDO COPETE Y ENCASTRE) GROSOR 2 CM.', 'SUSTITUCIÓN DE ENCIMERA DE MÁRMOL ADICIONAL ML (INCLUIDO COPETE Y ENCASTRE) GROSOR 2 CM.', '', '', NULL, 91.36000000, 110.54560000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(346, 'CM031', 1, NULL, '2015-06-15 13:35:29', '2015-06-15 11:35:29', 0, 0, 'SUSTITUCIÓN ENCIMERA DE GRANITO NACIONAL HASTA 1,20 ML. (INCLUIDO COPETE Y ENCASTRE) GROSOR 2 CM.', 'SUSTITUCIÓN ENCIMERA DE GRANITO NACIONAL HASTA 1,20 ML. (INCLUIDO COPETE Y ENCASTRE) GROSOR 2 CM.', '', '', NULL, 177.60000000, 214.89600000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(347, 'CM032', 1, NULL, '2015-06-15 13:36:26', '2015-06-15 11:36:26', 0, 0, 'SUSTITUCIÓN ENCIMERA DE GRANITO NACIONAL ADICIONAL ML. (INCLUIDO COPETE Y ENCASTRE) GROSOR 2 CM.', 'SUSTITUCIÓN ENCIMERA DE GRANITO NACIONAL ADICIONAL ML. (INCLUIDO COPETE Y ENCASTRE) GROSOR 2 CM.', '', '', NULL, 71.04000000, 85.95840000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(348, 'CM033', 1, NULL, '2015-06-15 13:37:34', '2015-06-15 11:37:34', 0, 0, 'SUSTITUCIÓN ENCIMERA DE GRANITO IMPORTACIÓN HASTA 1,20 ML. (INCLUIDO COPETE Y ENCASTRE) GROSOR 2 CM.', 'SUSTITUCIÓN ENCIMERA DE GRANITO IMPORTACIÓN HASTA 1,20 ML. (INCLUIDO COPETE Y ENCASTRE) GROSOR 2 CM.', '', '', NULL, 245.28000000, 296.78880000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(349, 'CM034', 1, NULL, '2015-06-15 13:38:34', '2015-06-15 11:38:34', 0, 0, 'SUSTITUCIÓN ENCIMERA DE GRANITO IMPORTACIÓN ADICIONAL ML (INCLUIDO COPETE Y ENCASTRE) GROSOR 2 CM.', 'SUSTITUCIÓN ENCIMERA DE GRANITO IMPORTACIÓN ADICIONAL ML (INCLUIDO COPETE Y ENCASTRE) GROSOR 2 CM.', '', '', NULL, 98.11000000, 118.71310000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(350, 'CM035', 1, NULL, '2015-06-15 13:39:03', '2015-06-15 11:39:03', 0, 0, 'APERTURA DE PUERTA.', 'APERTURA DE PUERTA.', '', '', NULL, 40.00000000, 48.40000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(351, 'CM036', 1, NULL, '2015-06-15 13:39:55', '2015-06-15 11:39:55', 0, 0, 'CAMBIO DE CERRADURA O SUSTITUCIÓN DE BOMBÍN (SÓLO INCLUYE MANO DE OBRA).', '', 'CAMBIO DE CERRADURA O SUSTITUCIÓN DE BOMBÍN (SÓLO INCLUYE MANO DE OBRA).', '', NULL, 21.00000000, 25.41000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL);
INSERT INTO `llx_product` (`rowid`, `ref`, `entity`, `ref_ext`, `datec`, `tms`, `virtual`, `fk_parent`, `label`, `description`, `note`, `customcode`, `fk_country`, `price`, `price_ttc`, `price_min`, `price_min_ttc`, `price_base_type`, `tva_tx`, `recuperableonly`, `localtax1_tx`, `localtax2_tx`, `fk_user_author`, `tosell`, `tobuy`, `tobatch`, `fk_product_type`, `duration`, `seuil_stock_alerte`, `url`, `barcode`, `fk_barcode_type`, `accountancy_code_sell`, `accountancy_code_buy`, `partnumber`, `weight`, `weight_units`, `length`, `length_units`, `surface`, `surface_units`, `volume`, `volume_units`, `stock`, `pmp`, `canvas`, `finished`, `hidden`, `import_key`, `desiredstock`) VALUES
(352, 'CM037', 1, NULL, '2015-06-15 13:40:48', '2015-06-15 11:40:48', 0, 0, 'CAMBIO DE CERRADURA DE SEGURIDAD (SÓLO INCLUYE MANO DE OBRA).', 'CAMBIO DE CERRADURA DE SEGURIDAD (SÓLO INCLUYE MANO DE OBRA).', '', '', NULL, 47.00000000, 56.87000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(353, 'CM038', 1, NULL, '2015-06-15 13:41:46', '2015-06-15 11:41:46', 0, 0, 'SUSTITUCIÓN DE BOMBÍN CON APERTURA (SÓLO INCLUYE MANO DE OBRA).', 'SUSTITUCIÓN DE BOMBÍN CON APERTURA (SÓLO INCLUYE MANO DE OBRA).', '', '', NULL, 70.00000000, 84.70000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(354, 'CM039', 1, NULL, '2015-06-15 13:42:47', '2015-06-15 11:42:47', 0, 0, 'SUSTITUCIÓN DE BOMBILLO NORMAL (CVL, LINCE, TESA, AZBE. MCM, EZCURRA Y SIMILAR). INCLUIDO MATERIAL.', 'SUSTITUCIÓN DE BOMBILLO NORMAL (CVL, LINCE, TESA, AZBE. MCM, EZCURRA Y SIMILAR). INCLUIDO MATERIAL.', '', '', NULL, 72.57000000, 87.80970000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(355, 'CM040', 1, NULL, '2015-06-15 13:44:14', '2015-06-15 11:44:14', 0, 0, 'SUSTITUCIÓN DE BOMBILLO DE SEGURIDAD, POMPA O BORJAS (CVL, LINCE, TESA, AZBE, MCM, EZCURRA, FIAM, MULTILOCK, TOVER, CR Y SIMILAR). INCLUIDO MATERIAL.', 'SUSTITUCIÓN DE BOMBILLO DE SEGURIDAD, POMPA O BORJAS (CVL, LINCE, TESA, AZBE, MCM, EZCURRA, FIAM, MULTILOCK, TOVER, CR Y SIMILAR). INCLUIDO MATERIAL.', '', '', NULL, 136.57000000, 165.24970000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(356, 'CM041', 1, NULL, '2015-06-15 13:45:24', '2015-06-15 11:45:24', 0, 0, 'SUSTITUCIÓN DE CERRADURA NORMAL, BOMBÍN O CERROJO 8CVL, LINCE, TESA, AZBE, MCM, EZCURRA, UCEM Y SIMILAR9 INCLUIDO MATERIAL.', 'SUSTITUCIÓN DE CERRADURA NORMAL, BOMBÍN O CERROJO 8CVL, LINCE, TESA, AZBE, MCM, EZCURRA, UCEM Y SIMILAR9 INCLUIDO MATERIAL.', '', '', NULL, 105.71000000, 127.90910000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(357, 'CM042', 1, NULL, '2015-06-15 13:49:43', '2015-06-15 11:49:43', 0, 0, 'SUSTITUCIÓN DE CERRADURA DE SEGURIDAD DE 3 PUNTOS (CVL, LINCE, TESA, AZBE, MCM, EZCURRA, UCEM Y SIMILAR) INCLUIDO MATERIAL.', 'SUSTITUCIÓN DE CERRADURA DE SEGURIDAD DE 3 PUNTOS (CVL, LINCE, TESA, AZBE, MCM, EZCURRA, UCEM Y SIMILAR) INCLUIDO MATERIAL.', '', '', NULL, 145.60000000, 176.17600000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(358, 'CM043', 1, NULL, '2015-06-15 13:52:03', '2015-06-15 11:52:03', 0, 0, 'SUSTITUCIÓN DE CERRADURA DE SEGURIDAD DE 5 PUNTOS (CVL, LINCE, TESA, AZBE, MCM, EZCURRA, UCEM Y SIMILAR) INCLUIDO MATERIAL.', 'SUSTITUCIÓN DE CERRADURA DE SEGURIDAD DE 5 PUNTOS (CVL, LINCE, TESA, AZBE, MCM, EZCURRA, UCEM Y SIMILAR) INCLUIDO MATERIAL.', '', '', NULL, 190.30000000, 230.26300000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(359, 'CM045', 1, NULL, '2015-06-15 13:52:47', '2015-06-15 11:52:47', 0, 0, 'SUSTITUCIÓN DE UNA O MÁS PERSIANAS DE PVC ESTÁNDAR. PRIMEROS 1 M2.', 'SUSTITUCIÓN DE UNA O MÁS PERSIANAS DE PVC ESTÁNDAR. PRIMEROS 1 M2.', '', '', NULL, 54.40000000, 65.82400000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(360, 'CM046', 1, NULL, '2015-06-15 13:53:39', '2015-06-15 11:53:39', 0, 0, 'SUSTITUCIÓN DE UNA O MÁS PERSIANAS DE PVC ESTÁNDAR. M2 ADICIONAL.', 'SUSTITUCIÓN DE UNA O MÁS PERSIANAS DE PVC ESTÁNDAR. M2 ADICIONAL.', '', '', NULL, 31.50000000, 38.11500000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(361, 'CM047', 1, NULL, '2015-06-15 13:54:18', '2015-06-15 11:54:18', 0, 0, 'SUSTITUCIÓN DE UNA O MÁS PERSIANAS DE ALUMINIO ESTÁNDAR. PRIMEROS 1 M2.', 'SUSTITUCIÓN DE UNA O MÁS PERSIANAS DE ALUMINIO ESTÁNDAR. PRIMEROS 1 M2.', '', '', NULL, 72.00000000, 87.12000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL),
(362, 'CM048', 1, NULL, '2015-06-15 13:54:59', '2015-06-15 11:54:59', 0, 0, 'SUSTITUCIÓN DE UNA O MÁS PERSIANAS DE ALUMINIO ESTÁNDAR. M2 ADICIONAL.', 'SUSTITUCIÓN DE UNA O MÁS PERSIANAS DE ALUMINIO ESTÁNDAR. M2 ADICIONAL.', '', '', NULL, 44.00000000, 53.24000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 1, 0, 1, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00000000, '', 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_association`
--

CREATE TABLE IF NOT EXISTS `llx_product_association` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_product_pere` int(11) NOT NULL DEFAULT '0',
  `fk_product_fils` int(11) NOT NULL DEFAULT '0',
  `qty` double DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_product_association` (`fk_product_pere`,`fk_product_fils`),
  KEY `idx_product_association_fils` (`fk_product_fils`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_batch`
--

CREATE TABLE IF NOT EXISTS `llx_product_batch` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_product_stock` int(11) NOT NULL,
  `eatby` datetime DEFAULT NULL,
  `sellby` datetime DEFAULT NULL,
  `batch` varchar(30) DEFAULT NULL,
  `qty` double NOT NULL DEFAULT '0',
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_fk_product_stock` (`fk_product_stock`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_customer_price`
--

CREATE TABLE IF NOT EXISTS `llx_product_customer_price` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_product` int(11) NOT NULL,
  `fk_soc` int(11) NOT NULL,
  `price` double(24,8) DEFAULT '0.00000000',
  `price_ttc` double(24,8) DEFAULT '0.00000000',
  `price_min` double(24,8) DEFAULT '0.00000000',
  `price_min_ttc` double(24,8) DEFAULT '0.00000000',
  `price_base_type` varchar(3) DEFAULT 'HT',
  `tva_tx` double(6,3) DEFAULT NULL,
  `recuperableonly` int(11) NOT NULL DEFAULT '0',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `fk_user` int(11) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_customer_price_fk_product_fk_soc` (`fk_product`,`fk_soc`),
  KEY `idx_product_customer_price_fk_user` (`fk_user`),
  KEY `idx_product_customer_price_fk_soc` (`fk_soc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_customer_price_log`
--

CREATE TABLE IF NOT EXISTS `llx_product_customer_price_log` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime DEFAULT NULL,
  `fk_product` int(11) NOT NULL,
  `fk_soc` int(11) NOT NULL,
  `price` double(24,8) DEFAULT '0.00000000',
  `price_ttc` double(24,8) DEFAULT '0.00000000',
  `price_min` double(24,8) DEFAULT '0.00000000',
  `price_min_ttc` double(24,8) DEFAULT '0.00000000',
  `price_base_type` varchar(3) DEFAULT 'HT',
  `tva_tx` double(6,3) DEFAULT NULL,
  `recuperableonly` int(11) NOT NULL DEFAULT '0',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `fk_user` int(11) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_product_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_product_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_fournisseur_price`
--

CREATE TABLE IF NOT EXISTS `llx_product_fournisseur_price` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_product` int(11) DEFAULT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `ref_fourn` varchar(30) DEFAULT NULL,
  `fk_availability` int(11) DEFAULT NULL,
  `price` double(24,8) DEFAULT '0.00000000',
  `quantity` double DEFAULT NULL,
  `remise_percent` double NOT NULL DEFAULT '0',
  `remise` double NOT NULL DEFAULT '0',
  `unitprice` double(24,8) DEFAULT '0.00000000',
  `charges` double(24,8) DEFAULT '0.00000000',
  `unitcharges` double(24,8) DEFAULT '0.00000000',
  `tva_tx` double(6,3) NOT NULL,
  `info_bits` int(11) NOT NULL DEFAULT '0',
  `fk_user` int(11) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_product_fournisseur_price_ref` (`ref_fourn`,`fk_soc`,`quantity`,`entity`),
  KEY `idx_product_fournisseur_price_fk_user` (`fk_user`),
  KEY `idx_product_fourn_price_fk_product` (`fk_product`,`entity`),
  KEY `idx_product_fourn_price_fk_soc` (`fk_soc`,`entity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_fournisseur_price_log`
--

CREATE TABLE IF NOT EXISTS `llx_product_fournisseur_price_log` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `datec` datetime DEFAULT NULL,
  `fk_product_fournisseur` int(11) NOT NULL,
  `price` double(24,8) DEFAULT '0.00000000',
  `quantity` double DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_lang`
--

CREATE TABLE IF NOT EXISTS `llx_product_lang` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_product` int(11) NOT NULL DEFAULT '0',
  `lang` varchar(5) NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL,
  `description` text,
  `note` text,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_product_lang` (`fk_product`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_price`
--

CREATE TABLE IF NOT EXISTS `llx_product_price` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_product` int(11) NOT NULL,
  `date_price` datetime NOT NULL,
  `price_level` smallint(6) DEFAULT '1',
  `price` double(24,8) DEFAULT NULL,
  `price_ttc` double(24,8) DEFAULT NULL,
  `price_min` double(24,8) DEFAULT NULL,
  `price_min_ttc` double(24,8) DEFAULT NULL,
  `price_base_type` varchar(3) DEFAULT 'HT',
  `tva_tx` double(6,3) NOT NULL,
  `recuperableonly` int(11) NOT NULL DEFAULT '0',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `fk_user_author` int(11) DEFAULT NULL,
  `tosell` tinyint(4) DEFAULT '1',
  `price_by_qty` int(11) NOT NULL DEFAULT '0',
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=363 ;

--
-- Dumping data for table `llx_product_price`
--

INSERT INTO `llx_product_price` (`rowid`, `entity`, `tms`, `fk_product`, `date_price`, `price_level`, `price`, `price_ttc`, `price_min`, `price_min_ttc`, `price_base_type`, `tva_tx`, `recuperableonly`, `localtax1_tx`, `localtax2_tx`, `fk_user_author`, `tosell`, `price_by_qty`, `import_key`) VALUES
(6, 1, '2015-05-20 08:52:47', 6, '2015-05-20 10:52:47', 1, 21.00000000, 25.41000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(7, 1, '2015-05-20 09:02:47', 7, '2015-05-20 11:02:47', 1, 24.00000000, 29.04000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(8, 1, '2015-05-20 10:44:52', 8, '2015-05-20 12:44:52', 1, 44.20000000, 53.48200000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(9, 1, '2015-05-20 10:46:04', 9, '2015-05-20 12:46:04', 1, 33.80000000, 40.89800000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(10, 1, '2015-05-20 10:46:52', 10, '2015-05-20 12:46:52', 1, 38.90000000, 47.06900000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(11, 1, '2015-05-20 10:47:49', 11, '2015-05-20 12:47:49', 1, 78.29000000, 94.73090000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(12, 1, '2015-05-20 10:48:56', 12, '2015-05-20 12:48:56', 1, 105.40000000, 127.53400000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(13, 1, '2015-05-20 10:49:40', 13, '2015-05-20 12:49:40', 1, 93.36000000, 112.96560000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(14, 1, '2015-05-20 10:50:48', 14, '2015-05-20 12:50:48', 1, 119.81000000, 144.97010000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(15, 1, '2015-05-20 10:55:18', 15, '2015-05-20 12:55:18', 1, 45.30000000, 54.81300000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(16, 1, '2015-05-20 10:56:55', 16, '2015-05-20 12:56:55', 1, 11.20000000, 13.55200000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(17, 1, '2015-05-20 10:58:21', 17, '2015-05-20 12:58:21', 1, 97.23000000, 117.64830000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(18, 1, '2015-05-20 10:59:34', 18, '2015-05-20 12:59:34', 1, 128.40000000, 155.36400000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(19, 1, '2015-05-20 11:00:53', 19, '2015-05-20 13:00:53', 1, 35.20000000, 42.59200000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(20, 1, '2015-05-20 11:01:37', 20, '2015-05-20 13:01:37', 1, 46.48000000, 56.24080000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(21, 1, '2015-05-20 11:02:21', 21, '2015-05-20 13:02:21', 1, 17.70000000, 21.41700000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(22, 1, '2015-05-20 11:03:22', 22, '2015-05-20 13:03:22', 1, 89.98000000, 108.87580000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(23, 1, '2015-05-20 11:04:20', 23, '2015-05-20 13:04:20', 1, 102.80000000, 124.38800000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(24, 1, '2015-05-20 11:05:38', 24, '2015-05-20 13:05:38', 1, 20.00000000, 24.20000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(25, 1, '2015-05-20 11:11:47', 25, '2015-05-20 13:11:47', 1, 24.00000000, 29.04000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(26, 1, '2015-05-20 11:12:22', 26, '2015-05-20 13:12:22', 1, 32.00000000, 38.72000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(27, 1, '2015-05-20 11:15:11', 27, '2015-05-20 13:15:11', 1, 37.77000000, 45.70170000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(28, 1, '2015-05-20 11:16:48', 28, '2015-05-20 13:16:48', 1, 32.40000000, 39.20400000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(29, 1, '2015-05-20 11:18:00', 29, '2015-05-20 13:18:00', 1, 46.20000000, 55.90200000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(30, 1, '2015-05-20 11:18:43', 30, '2015-05-20 13:18:43', 1, 48.60000000, 58.80600000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(31, 1, '2015-05-20 11:19:52', 31, '2015-05-20 13:19:52', 1, 39.38000000, 47.64980000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(32, 1, '2015-05-20 11:20:47', 32, '2015-05-20 13:20:47', 1, 48.30000000, 58.44300000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(33, 1, '2015-05-20 11:22:20', 33, '2015-05-20 13:22:20', 1, 56.16000000, 67.95360000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(34, 1, '2015-05-20 11:23:37', 34, '2015-05-20 13:23:37', 1, 58.56000000, 70.85760000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(35, 1, '2015-05-20 11:24:24', 35, '2015-05-20 13:24:24', 1, 35.60000000, 43.07600000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(36, 1, '2015-05-20 11:25:09', 36, '2015-05-20 13:25:09', 1, 48.22000000, 58.34620000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(37, 1, '2015-05-20 11:25:58', 37, '2015-05-20 13:25:58', 1, 45.60000000, 55.17600000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(38, 1, '2015-05-20 11:26:40', 38, '2015-05-20 13:26:40', 1, 45.32000000, 54.83720000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(39, 1, '2015-05-20 11:28:20', 39, '2015-05-20 13:28:20', 1, 46.48000000, 56.24080000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(40, 1, '2015-05-20 11:29:40', 40, '2015-05-20 13:29:40', 1, 48.95000000, 59.22950000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(41, 1, '2015-05-20 11:30:42', 41, '2015-05-20 13:30:42', 1, 12.53000000, 15.16130000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(42, 1, '2015-05-20 11:31:30', 42, '2015-05-20 13:31:30', 1, 67.44000000, 81.60240000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(43, 1, '2015-05-20 11:32:48', 43, '2015-05-20 13:32:48', 1, 13.44000000, 16.26240000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(44, 1, '2015-05-20 11:33:25', 44, '2015-05-20 13:33:25', 1, 18.51000000, 22.39710000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(45, 1, '2015-05-20 11:34:43', 45, '2015-05-20 13:34:43', 1, 95.40000000, 115.43400000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(46, 1, '2015-05-20 11:36:20', 46, '2015-05-20 13:36:20', 1, 38.10000000, 46.10100000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(47, 1, '2015-05-20 11:36:55', 47, '2015-05-20 13:36:55', 1, 21.14000000, 25.57940000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(48, 1, '2015-05-20 11:37:53', 48, '2015-05-20 13:37:53', 1, 75.97000000, 91.92370000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(49, 1, '2015-05-20 11:39:15', 49, '2015-05-20 13:39:15', 1, 21.00000000, 25.41000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(50, 1, '2015-05-20 11:40:03', 50, '2015-05-20 13:40:03', 1, 17.50000000, 21.17500000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(51, 1, '2015-05-20 11:40:50', 51, '2015-05-20 13:40:50', 1, 13.00000000, 15.73000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(52, 1, '2015-05-20 11:41:35', 52, '2015-05-20 13:41:35', 1, 9.50000000, 11.49500000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(54, 1, '2015-05-20 11:44:49', 54, '2015-05-20 13:44:49', 1, 8.50000000, 10.28500000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(55, 1, '2015-05-20 11:45:26', 55, '2015-05-20 13:45:26', 1, 24.30000000, 29.40300000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(56, 1, '2015-05-20 11:47:44', 56, '2015-05-20 13:47:44', 1, 18.90000000, 22.86900000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(57, 1, '2015-05-20 11:48:19', 57, '2015-05-20 13:48:19', 1, 17.30000000, 20.93300000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(58, 1, '2015-05-20 11:49:02', 58, '2015-05-20 13:49:02', 1, 11.00000000, 13.31000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(59, 1, '2015-05-20 11:49:29', 59, '2015-05-20 13:49:29', 1, 8.50000000, 10.28500000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(60, 1, '2015-05-20 11:50:36', 60, '2015-05-20 13:50:36', 1, 46.51000000, 56.27710000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(61, 1, '2015-05-20 11:51:33', 61, '2015-05-20 13:51:33', 1, 107.10000000, 129.59100000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(62, 1, '2015-05-20 11:52:22', 62, '2015-05-20 13:52:22', 1, 128.40000000, 155.36400000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(63, 1, '2015-05-20 11:53:10', 63, '2015-05-20 13:53:10', 1, 153.56000000, 185.80760000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(64, 1, '2015-05-20 11:57:55', 64, '2015-05-20 13:57:55', 1, 184.27000000, 222.96670000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(65, 1, '2015-05-20 11:59:37', 65, '2015-05-20 13:59:37', 1, 80.00000000, 96.80000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(66, 1, '2015-05-22 09:28:32', 66, '2015-05-22 11:28:32', 1, 35.40000000, 42.83400000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(67, 1, '2015-05-22 09:29:13', 67, '2015-05-22 11:29:13', 1, 32.10000000, 38.84100000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(68, 1, '2015-05-22 09:30:30', 68, '2015-05-22 11:30:30', 1, 168.00000000, 203.28000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(69, 1, '2015-05-22 09:31:46', 69, '2015-05-22 11:31:46', 1, 248.00000000, 300.08000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(70, 1, '2015-05-22 09:34:40', 70, '2015-05-22 11:34:40', 1, 208.00000000, 251.68000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(71, 1, '2015-05-22 09:35:44', 71, '2015-05-22 11:35:44', 1, 248.00000000, 300.08000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(72, 1, '2015-05-22 09:36:59', 72, '2015-05-22 11:36:59', 1, 75.00000000, 90.75000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(73, 1, '2015-05-22 09:38:11', 73, '2015-05-22 11:38:11', 1, 7.41000000, 8.96610000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(74, 1, '2015-05-22 09:42:50', 74, '2015-05-22 11:42:50', 1, 11.11000000, 13.44310000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(75, 1, '2015-05-22 09:43:28', 75, '2015-05-22 11:43:28', 1, 7.41000000, 8.96610000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(76, 1, '2015-05-22 09:44:13', 76, '2015-05-22 11:44:13', 1, 13.33000000, 16.12930000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(77, 1, '2015-05-22 09:44:51', 77, '2015-05-22 11:44:51', 1, 4.44000000, 5.37240000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(78, 1, '2015-05-22 09:45:25', 78, '2015-05-22 11:45:25', 1, 8.33000000, 10.07930000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(79, 1, '2015-05-22 09:45:52', 79, '2015-05-22 11:45:52', 1, 4.44000000, 5.37240000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(80, 1, '2015-05-22 09:46:38', 80, '2015-05-22 11:46:38', 1, 5.55000000, 6.71550000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(81, 1, '2015-05-22 09:47:12', 81, '2015-05-22 11:47:12', 1, 6.66000000, 8.05860000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(82, 1, '2015-05-22 09:47:50', 82, '2015-05-22 11:47:50', 1, 7.78000000, 9.41380000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(83, 1, '2015-05-22 09:48:25', 83, '2015-05-22 11:48:25', 1, 5.55000000, 6.71550000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(84, 1, '2015-05-22 09:49:04', 84, '2015-05-22 11:49:04', 1, 11.11000000, 13.44310000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(85, 1, '2015-05-22 09:50:13', 85, '2015-05-22 11:50:13', 1, 13.89000000, 16.80690000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(86, 1, '2015-05-22 09:51:09', 86, '2015-05-22 11:51:09', 1, 43.32000000, 52.41720000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(87, 1, '2015-05-22 09:51:52', 87, '2015-05-22 11:51:52', 1, 52.77000000, 63.85170000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(88, 1, '2015-05-22 09:52:23', 88, '2015-05-22 11:52:23', 1, 26.66000000, 32.25860000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(89, 1, '2015-05-22 09:53:26', 89, '2015-05-22 11:53:26', 1, 39.99000000, 48.38790000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(90, 1, '2015-05-22 09:55:29', 90, '2015-05-22 11:55:29', 1, 49.98000000, 60.47580000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(91, 1, '2015-05-22 09:56:00', 91, '2015-05-22 11:56:00', 1, 21.58000000, 26.11180000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(92, 1, '2015-05-22 09:57:01', 92, '2015-05-22 11:57:01', 1, 28.72000000, 34.75120000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(93, 1, '2015-05-22 09:57:44', 93, '2015-05-22 11:57:44', 1, 37.32000000, 45.15720000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(94, 1, '2015-05-22 09:58:35', 94, '2015-05-22 11:58:35', 1, 10.00000000, 12.10000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(95, 1, '2015-05-22 09:59:29', 95, '2015-05-22 11:59:29', 1, 33.33000000, 40.32930000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(96, 1, '2015-05-22 10:01:07', 96, '2015-05-22 12:01:07', 1, 45.49000000, 55.04290000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(97, 1, '2015-05-22 10:01:38', 97, '2015-05-22 12:01:38', 1, 10.58000000, 12.80180000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(98, 1, '2015-05-22 10:13:12', 98, '2015-05-22 12:13:12', 1, 41.66000000, 50.40860000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(99, 1, '2015-05-22 11:41:15', 99, '2015-05-22 13:41:15', 1, 55.54000000, 67.20340000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(100, 1, '2015-05-22 11:44:16', 100, '2015-05-22 13:44:16', 1, 16.66000000, 20.15860000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(101, 1, '2015-05-22 11:45:36', 101, '2015-05-22 13:45:36', 1, 22.22000000, 26.88620000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(102, 1, '2015-05-22 11:48:59', 102, '2015-05-22 13:48:59', 1, 30.54000000, 36.95340000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(103, 1, '2015-05-22 11:59:38', 103, '2015-05-22 13:59:38', 1, 7.78000000, 9.41380000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(104, 1, '2015-05-22 12:00:30', 104, '2015-05-22 14:00:30', 1, 30.54000000, 36.95340000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(105, 1, '2015-05-25 09:14:52', 105, '2015-05-25 11:14:52', 1, 44.43000000, 53.76030000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(106, 1, '2015-05-25 09:15:51', 106, '2015-05-25 11:15:51', 1, 12.22000000, 14.78620000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(107, 1, '2015-05-25 09:16:35', 107, '2015-05-25 11:16:35', 1, 35.44000000, 42.88240000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(108, 1, '2015-05-25 09:17:26', 108, '2015-05-25 11:17:26', 1, 49.72000000, 60.16120000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(109, 1, '2015-05-26 09:08:51', 109, '2015-05-26 11:08:51', 1, 21.58000000, 26.11180000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(110, 1, '2015-05-26 09:10:57', 110, '2015-05-26 11:10:57', 1, 37.56000000, 45.44760000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(111, 1, '2015-05-26 09:11:56', 111, '2015-05-26 11:11:56', 1, 15.34000000, 18.56140000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(112, 1, '2015-05-26 09:12:41', 112, '2015-05-26 11:12:41', 1, 34.41000000, 41.63610000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(113, 1, '2015-05-26 09:13:23', 113, '2015-05-26 11:13:23', 1, 44.58000000, 53.94180000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(114, 1, '2015-05-26 09:14:35', 114, '2015-05-26 11:14:35', 1, 9.44000000, 11.42240000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(115, 1, '2015-05-26 09:15:31', 115, '2015-05-26 11:15:31', 1, 41.20000000, 49.85200000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(116, 1, '2015-05-26 09:16:30', 116, '2015-05-26 11:16:30', 1, 15.10000000, 18.27100000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(117, 1, '2015-05-26 09:17:19', 117, '2015-05-26 11:17:19', 1, 6.66000000, 8.05860000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(118, 1, '2015-05-26 09:18:00', 118, '2015-05-26 11:18:00', 1, 30.40000000, 36.78400000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(119, 1, '2015-05-26 09:21:16', 119, '2015-05-26 11:21:16', 1, 58.71000000, 71.03910000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(120, 1, '2015-05-26 09:22:23', 120, '2015-05-26 11:22:23', 1, 38.11000000, 46.11310000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(121, 1, '2015-05-26 09:23:39', 121, '2015-05-26 11:23:39', 1, 14.83000000, 17.94430000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(122, 1, '2015-05-26 09:25:04', 122, '2015-05-26 11:25:04', 1, 2.06000000, 2.49260000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(123, 1, '2015-05-26 09:26:43', 123, '2015-05-26 11:26:43', 1, 28.94000000, 35.01740000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(124, 1, '2015-05-26 09:30:57', 124, '2015-05-26 11:30:57', 1, 29.45000000, 35.63450000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(125, 1, '2015-05-26 09:31:38', 125, '2015-05-26 11:31:38', 1, 42.00000000, 50.82000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(126, 1, '2015-05-26 09:32:22', 126, '2015-05-26 11:32:22', 1, 66.12000000, 80.00520000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(127, 1, '2015-05-26 09:34:01', 127, '2015-05-26 11:34:01', 1, 26.00000000, 31.46000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(128, 1, '2015-05-26 09:34:52', 128, '2015-05-26 11:34:52', 1, 22.01000000, 26.63210000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(129, 1, '2015-05-26 09:35:58', 129, '2015-05-26 11:35:58', 1, 26.45000000, 32.00450000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(130, 1, '2015-05-26 09:36:46', 130, '2015-05-26 11:36:46', 1, 12.00000000, 14.52000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(131, 1, '2015-05-26 09:37:54', 131, '2015-05-26 11:37:54', 1, 32.80000000, 39.68800000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(132, 1, '2015-05-26 09:38:56', 132, '2015-05-26 11:38:56', 1, 40.00000000, 48.40000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(133, 1, '2015-05-26 09:40:02', 133, '2015-05-26 11:40:02', 1, 17.75000000, 21.47750000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(134, 1, '2015-05-26 09:40:45', 134, '2015-05-26 11:40:45', 1, 38.86000000, 47.02060000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(135, 1, '2015-05-26 09:41:41', 135, '2015-05-26 11:41:41', 1, 2.14000000, 2.58940000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(136, 1, '2015-05-26 09:47:29', 136, '2015-05-26 11:47:29', 1, 43.95000000, 53.17950000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(137, 1, '2015-05-26 09:50:10', 137, '2015-05-26 11:50:10', 1, 2.68000000, 3.24280000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(138, 1, '2015-05-26 09:51:26', 138, '2015-05-26 11:51:26', 1, 44.48000000, 53.82080000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(139, 1, '2015-05-26 09:52:34', 139, '2015-05-26 11:52:34', 1, 3.20000000, 3.87200000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(140, 1, '2015-05-26 09:53:24', 140, '2015-05-26 11:53:24', 1, 55.19000000, 66.77990000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(141, 1, '2015-05-26 09:54:09', 141, '2015-05-26 11:54:09', 1, 3.78000000, 4.57380000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(142, 1, '2015-05-26 09:55:05', 142, '2015-05-26 11:55:05', 1, 66.65000000, 80.64650000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(143, 1, '2015-05-26 09:55:52', 143, '2015-05-26 11:55:52', 1, 4.92000000, 5.95320000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(144, 1, '2015-05-26 09:56:37', 144, '2015-05-26 11:56:37', 1, 58.64000000, 70.95440000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(145, 1, '2015-05-26 09:57:48', 145, '2015-05-26 11:57:48', 1, 4.15000000, 5.02150000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(146, 1, '2015-05-26 09:59:09', 146, '2015-05-26 11:59:09', 1, 8.00000000, 9.68000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(147, 1, '2015-05-26 09:59:42', 147, '2015-05-26 11:59:42', 1, 65.60000000, 79.37600000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(148, 1, '2015-05-26 10:00:22', 148, '2015-05-26 12:00:22', 1, 12.81000000, 15.50010000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(149, 1, '2015-05-26 10:00:52', 149, '2015-05-26 12:00:52', 1, 52.18000000, 63.13780000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(150, 1, '2015-05-26 10:01:23', 150, '2015-05-26 12:01:23', 1, 9.62000000, 11.64020000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(151, 1, '2015-05-26 10:02:17', 151, '2015-05-26 12:02:17', 1, 51.36000000, 62.14560000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(152, 1, '2015-05-26 10:02:50', 152, '2015-05-26 12:02:50', 1, 2.84000000, 3.43640000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(153, 1, '2015-05-26 10:06:12', 153, '2015-05-26 12:06:12', 1, 52.62000000, 63.67020000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(154, 1, '2015-05-26 10:06:42', 154, '2015-05-26 12:06:42', 1, 10.04000000, 12.14840000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(155, 1, '2015-05-26 10:07:37', 155, '2015-05-26 12:07:37', 1, 3.35000000, 4.05350000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(156, 1, '2015-05-26 10:10:37', 156, '2015-05-26 12:10:37', 1, 52.30000000, 63.28300000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(157, 1, '2015-05-26 10:11:18', 157, '2015-05-26 12:11:18', 1, 12.44000000, 15.05240000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(158, 1, '2015-05-26 10:12:00', 158, '2015-05-26 12:12:00', 1, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(159, 1, '2015-05-26 10:16:50', 159, '2015-05-26 12:16:50', 1, 32.80000000, 39.68800000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(160, 1, '2015-05-26 10:18:51', 160, '2015-05-26 12:18:51', 1, 24.34000000, 29.45140000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(161, 1, '2015-05-26 10:29:38', 161, '2015-05-26 12:29:38', 1, 34.38000000, 41.59980000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(162, 1, '2015-05-26 10:30:47', 162, '2015-05-26 12:30:47', 1, 25.92000000, 31.36320000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(163, 1, '2015-05-26 10:31:48', 163, '2015-05-26 12:31:48', 1, 33.10000000, 40.05100000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(164, 1, '2015-05-26 10:32:43', 164, '2015-05-26 12:32:43', 1, 26.48000000, 32.04080000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(165, 1, '2015-05-26 10:33:50', 165, '2015-05-26 12:33:49', 1, 36.40000000, 44.04400000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(166, 1, '2015-05-26 10:40:02', 166, '2015-05-26 12:40:02', 1, 29.12000000, 35.23520000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(167, 1, '2015-05-26 10:41:35', 167, '2015-05-26 12:41:35', 1, 38.09000000, 46.08890000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(168, 1, '2015-05-26 10:42:32', 168, '2015-05-26 12:42:32', 1, 29.62000000, 35.84020000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(169, 1, '2015-05-26 10:43:44', 169, '2015-05-26 12:43:44', 1, 30.15000000, 36.48150000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(170, 1, '2015-05-26 10:45:08', 170, '2015-05-26 12:45:08', 1, 21.69000000, 26.24490000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(171, 1, '2015-05-26 10:46:11', 171, '2015-05-26 12:46:11', 1, 31.74000000, 38.40540000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(172, 1, '2015-05-26 10:47:11', 172, '2015-05-26 12:47:11', 1, 23.27000000, 28.15670000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(173, 1, '2015-05-26 10:48:21', 173, '2015-05-26 12:48:21', 1, 48.30000000, 58.44300000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(174, 1, '2015-05-26 10:49:18', 174, '2015-05-26 12:49:18', 1, 38.64000000, 46.75440000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(175, 1, '2015-05-26 10:53:06', 175, '2015-05-26 12:53:06', 1, 38.25000000, 46.28250000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(176, 1, '2015-05-26 10:54:29', 176, '2015-05-26 12:54:29', 1, 30.60000000, 37.02600000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(177, 1, '2015-05-26 10:55:14', 177, '2015-05-26 12:55:14', 1, 75.11000000, 90.88310000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(178, 1, '2015-05-26 10:55:44', 178, '2015-05-26 12:55:44', 1, 64.58000000, 78.14180000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(179, 1, '2015-05-26 10:56:48', 179, '2015-05-26 12:56:48', 1, 34.22000000, 41.40620000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(180, 1, '2015-05-26 10:57:19', 180, '2015-05-26 12:57:19', 1, 68.10000000, 82.40100000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(181, 1, '2015-05-26 10:57:50', 181, '2015-05-26 12:57:50', 1, 51.04000000, 61.75840000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(182, 1, '2015-05-26 10:58:40', 182, '2015-05-26 12:58:40', 1, 78.56000000, 95.05760000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(183, 1, '2015-05-26 10:59:27', 183, '2015-05-26 12:59:27', 1, 56.40000000, 68.24400000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(184, 1, '2015-05-26 11:00:18', 184, '2015-05-26 13:00:18', 1, 47.90000000, 57.95900000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(185, 1, '2015-05-26 11:02:11', 185, '2015-05-26 13:02:11', 1, 37.40000000, 45.25400000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(186, 1, '2015-05-26 11:03:02', 186, '2015-05-26 13:03:02', 1, 29.92000000, 36.20320000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(187, 1, '2015-05-26 11:04:08', 187, '2015-05-26 13:04:08', 1, 42.80000000, 51.78800000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(188, 1, '2015-05-26 11:05:07', 188, '2015-05-26 13:05:07', 1, 34.25000000, 41.44250000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(189, 1, '2015-05-26 11:06:26', 189, '2015-05-26 13:06:26', 1, 48.80000000, 59.04800000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(190, 1, '2015-05-26 11:47:39', 190, '2015-05-26 13:47:39', 1, 39.04000000, 47.23840000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(191, 1, '2015-05-26 11:48:22', 191, '2015-05-26 13:48:22', 1, 34.40000000, 41.62400000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(192, 1, '2015-05-27 10:15:25', 192, '2015-05-27 12:15:25', 1, 41.16000000, 49.80360000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(193, 1, '2015-05-27 10:16:02', 193, '2015-05-27 12:16:02', 1, 41.51000000, 50.22710000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(194, 1, '2015-05-27 10:16:45', 194, '2015-05-27 12:16:45', 1, 36.53000000, 44.20130000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(195, 1, '2015-05-27 10:17:51', 195, '2015-05-27 12:17:51', 1, 35.82000000, 43.34220000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(196, 1, '2015-05-27 10:20:22', 196, '2015-05-27 12:20:22', 1, 34.84000000, 42.15640000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(197, 1, '2015-05-27 10:21:36', 197, '2015-05-27 12:21:36', 1, 5.20000000, 6.29200000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(198, 1, '2015-05-27 10:30:01', 198, '2015-05-27 12:30:01', 1, 6.24000000, 7.55040000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(199, 1, '2015-05-27 10:32:04', 199, '2015-05-27 12:32:04', 1, 8.20000000, 9.92200000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(200, 1, '2015-05-27 10:32:46', 200, '2015-05-27 12:32:46', 1, 164.00000000, 198.44000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(201, 1, '2015-05-27 10:33:26', 201, '2015-05-27 12:33:26', 1, 10.24000000, 12.39040000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(202, 1, '2015-05-27 10:34:40', 202, '2015-05-27 12:34:40', 1, 100.11000000, 121.13310000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(203, 1, '2015-05-27 10:35:22', 203, '2015-05-27 12:35:22', 1, 5.60000000, 6.77600000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(204, 1, '2015-05-27 10:35:58', 204, '2015-05-27 12:35:58', 1, 126.80000000, 153.42800000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(205, 1, '2015-05-27 10:36:32', 205, '2015-05-27 12:36:32', 1, 7.60000000, 9.19600000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(206, 1, '2015-05-27 11:04:28', 206, '2015-05-27 13:04:28', 1, 8.00000000, 9.68000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(207, 1, '2015-05-27 11:05:08', 207, '2015-05-27 13:05:08', 1, 4.35000000, 5.26350000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(208, 1, '2015-05-27 11:05:48', 208, '2015-05-27 13:05:48', 1, 12.00000000, 14.52000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(209, 1, '2015-05-27 11:06:37', 209, '2015-05-27 13:06:37', 1, 22.00000000, 26.62000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(210, 1, '2015-05-27 11:07:11', 210, '2015-05-27 13:07:11', 1, 4.70000000, 5.68700000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(211, 1, '2015-05-27 11:18:09', 211, '2015-05-27 13:18:09', 1, 4.32000000, 5.22720000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(212, 1, '2015-06-02 09:09:49', 212, '2015-06-02 11:09:49', 1, 29.54000000, 35.74340000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(213, 1, '2015-06-02 09:10:30', 213, '2015-06-02 11:10:30', 1, 31.00000000, 37.51000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(214, 1, '2015-06-02 09:12:05', 214, '2015-06-02 11:12:05', 1, 34.84000000, 42.15640000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(215, 1, '2015-06-02 09:12:40', 215, '2015-06-02 11:12:40', 1, 38.88000000, 47.04480000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(216, 1, '2015-06-02 09:13:11', 216, '2015-06-02 11:13:11', 1, 47.87000000, 57.92270000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(217, 1, '2015-06-02 09:13:44', 217, '2015-06-02 11:13:44', 1, 58.98000000, 71.36580000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(218, 1, '2015-06-02 09:14:17', 218, '2015-06-02 11:14:17', 1, 91.35000000, 110.53350000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(219, 1, '2015-06-02 09:15:59', 219, '2015-06-02 11:15:59', 1, 126.40000000, 152.94400000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(220, 1, '2015-06-02 09:16:48', 220, '2015-06-02 11:16:48', 1, 35.86000000, 43.39060000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(221, 1, '2015-06-02 09:17:28', 221, '2015-06-02 11:17:28', 1, 38.09000000, 46.08890000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(222, 1, '2015-06-02 09:19:46', 222, '2015-06-02 11:19:46', 1, 43.38000000, 52.48980000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(223, 1, '2015-06-02 09:20:15', 223, '2015-06-02 11:20:15', 1, 67.18000000, 81.28780000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(224, 1, '2015-06-02 09:20:43', 224, '2015-06-02 11:20:43', 1, 33.86000000, 40.97060000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(225, 1, '2015-06-02 09:21:13', 225, '2015-06-02 11:21:13', 1, 38.78000000, 46.92380000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(226, 1, '2015-06-02 09:21:41', 226, '2015-06-02 11:21:41', 1, 49.19000000, 59.51990000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(227, 1, '2015-06-02 09:23:13', 227, '2015-06-02 11:23:13', 1, 64.80000000, 78.40800000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(228, 1, '2015-06-02 09:23:48', 228, '2015-06-02 11:23:48', 1, 68.63000000, 83.04230000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(229, 1, '2015-06-02 09:24:21', 229, '2015-06-02 11:24:21', 1, 72.47000000, 87.68870000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(230, 1, '2015-06-02 09:25:00', 230, '2015-06-02 11:25:00', 1, 23.67000000, 28.64070000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(231, 1, '2015-06-02 09:25:36', 231, '2015-06-02 11:25:36', 1, 26.18000000, 31.67780000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(232, 1, '2015-06-02 09:27:30', 232, '2015-06-02 11:27:30', 1, 29.67000000, 35.90070000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(233, 1, '2015-06-02 09:30:48', 233, '2015-06-02 11:30:48', 1, 57.79000000, 69.92590000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(234, 1, '2015-06-02 09:31:53', 234, '2015-06-02 11:31:53', 1, 35.97000000, 43.52370000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(235, 1, '2015-06-02 09:32:20', 235, '2015-06-02 11:32:20', 1, 38.62000000, 46.73020000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(236, 1, '2015-06-02 09:32:52', 236, '2015-06-02 11:32:52', 1, 62.55000000, 75.68550000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(237, 1, '2015-06-02 09:33:36', 237, '2015-06-02 11:33:36', 1, 66.65000000, 80.64650000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(238, 1, '2015-06-02 09:34:07', 238, '2015-06-02 11:34:07', 1, 77.08000000, 93.26680000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(239, 1, '2015-06-02 09:34:39', 239, '2015-06-02 11:34:39', 1, 49.03000000, 59.32630000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(240, 1, '2015-06-02 09:35:12', 240, '2015-06-02 11:35:12', 1, 54.32000000, 65.72720000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(241, 1, '2015-06-02 09:35:42', 241, '2015-06-02 11:35:42', 1, 62.89000000, 76.09690000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(242, 1, '2015-06-02 09:36:14', 242, '2015-06-02 11:36:14', 1, 57.13000000, 69.12730000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(243, 1, '2015-06-02 09:37:10', 243, '2015-06-02 11:37:10', 1, 65.59000000, 79.36390000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(244, 1, '2015-06-02 09:37:53', 244, '2015-06-02 11:37:53', 1, 66.03000000, 79.89630000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(245, 1, '2015-06-02 09:38:34', 245, '2015-06-02 11:38:34', 1, 71.65000000, 86.69650000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(246, 1, '2015-06-02 09:39:07', 246, '2015-06-02 11:39:07', 1, 75.40000000, 91.23400000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(247, 1, '2015-06-02 09:40:36', 247, '2015-06-02 11:40:36', 1, 87.10000000, 105.39100000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(248, 1, '2015-06-02 09:41:21', 248, '2015-06-02 11:41:21', 1, 76.80000000, 92.92800000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(249, 1, '2015-06-02 09:45:10', 249, '2015-06-02 11:45:10', 1, 66.22000000, 80.12620000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(250, 1, '2015-06-02 09:45:50', 250, '2015-06-02 11:45:50', 1, 72.31000000, 87.49510000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(251, 1, '2015-06-04 11:01:09', 251, '2015-06-04 13:01:09', 1, 51.84000000, 62.72640000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(252, 1, '2015-06-04 11:01:57', 252, '2015-06-04 13:01:57', 1, 60.83000000, 73.60430000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(253, 1, '2015-06-04 11:02:44', 253, '2015-06-04 13:02:44', 1, 68.24000000, 82.57040000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(254, 1, '2015-06-04 11:03:35', 254, '2015-06-04 13:03:35', 1, 76.17000000, 92.16570000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(255, 1, '2015-06-04 11:04:19', 255, '2015-06-04 13:04:19', 1, 71.67000000, 86.72070000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(256, 1, '2015-06-04 11:04:54', 256, '2015-06-04 13:04:54', 1, 79.61000000, 96.32810000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(257, 1, '2015-06-04 11:08:50', 257, '2015-06-04 13:08:50', 1, 100.21000000, 121.25410000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(258, 1, '2015-06-04 11:09:26', 258, '2015-06-04 13:09:26', 1, 108.92000000, 131.79320000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(259, 1, '2015-06-04 11:10:05', 259, '2015-06-04 13:10:05', 1, 134.35000000, 162.56350000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(260, 1, '2015-06-04 11:11:24', 260, '2015-06-04 13:11:24', 1, 189.01000000, 228.70210000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(261, 1, '2015-06-04 11:12:05', 261, '2015-06-04 13:12:05', 1, 303.81000000, 367.61010000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(262, 1, '2015-06-04 11:14:45', 262, '2015-06-04 13:14:45', 1, 27.50000000, 33.27500000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(263, 1, '2015-06-04 11:15:22', 263, '2015-06-04 13:15:22', 1, 31.21000000, 37.76410000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(264, 1, '2015-06-04 11:15:53', 264, '2015-06-04 13:15:53', 1, 36.66000000, 44.35860000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(265, 1, '2015-06-04 11:16:28', 265, '2015-06-04 13:16:28', 1, 40.73000000, 49.28330000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(266, 1, '2015-06-04 11:17:02', 266, '2015-06-04 13:17:02', 1, 47.74000000, 57.76540000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(267, 1, '2015-06-04 11:17:30', 267, '2015-06-04 13:17:30', 1, 10.25000000, 12.40250000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(268, 1, '2015-06-04 11:18:10', 268, '2015-06-04 13:18:10', 1, 10.25000000, 12.40250000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(269, 1, '2015-06-04 11:19:53', 269, '2015-06-04 13:19:53', 1, 13.33000000, 16.12930000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(270, 1, '2015-06-04 11:20:59', 270, '2015-06-04 13:20:59', 1, 3.58000000, 4.33180000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(271, 1, '2015-06-04 11:21:43', 271, '2015-06-04 13:21:43', 1, 9.22000000, 11.15620000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(272, 1, '2015-06-04 11:22:20', 272, '2015-06-04 13:22:20', 1, 4.76000000, 5.75960000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(273, 1, '2015-06-04 11:22:55', 273, '2015-06-04 13:22:55', 1, 17.94000000, 21.70740000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(274, 1, '2015-06-04 11:23:30', 274, '2015-06-04 13:23:30', 1, 21.53000000, 26.05130000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(275, 1, '2015-06-04 11:24:32', 275, '2015-06-04 13:24:32', 1, 39.34000000, 47.60140000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(276, 1, '2015-06-04 11:25:05', 276, '2015-06-04 13:25:05', 1, 5.13000000, 6.20730000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(277, 1, '2015-06-04 11:35:56', 277, '2015-06-04 13:35:56', 1, 7.69000000, 9.30490000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(278, 1, '2015-06-04 11:36:43', 278, '2015-06-04 13:36:43', 1, 2.78000000, 3.36380000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(279, 1, '2015-06-04 11:37:16', 279, '2015-06-04 13:37:16', 1, 4.55000000, 5.50550000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(280, 1, '2015-06-04 11:37:44', 280, '2015-06-04 13:37:44', 1, 5.76000000, 6.96960000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(281, 1, '2015-06-04 11:38:13', 281, '2015-06-04 13:38:13', 1, 3.33000000, 4.02930000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(282, 1, '2015-06-04 11:38:44', 282, '2015-06-04 13:38:44', 1, 2.05000000, 2.48050000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(283, 1, '2015-06-04 11:39:12', 283, '2015-06-04 13:39:12', 1, 5.13000000, 6.20730000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(284, 1, '2015-06-04 11:39:44', 284, '2015-06-04 13:39:44', 1, 9.74000000, 11.78540000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(285, 1, '2015-06-04 11:40:55', 285, '2015-06-04 13:40:55', 1, 3.58000000, 4.33180000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(286, 1, '2015-06-04 11:41:27', 286, '2015-06-04 13:41:27', 1, 2.30000000, 2.78300000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(287, 1, '2015-06-05 09:30:12', 287, '2015-06-05 11:30:12', 1, 15.86000000, 19.19060000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(288, 1, '2015-06-05 09:30:40', 288, '2015-06-05 11:30:40', 1, 25.30000000, 30.61300000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(289, 1, '2015-06-05 09:31:08', 289, '2015-06-05 11:31:08', 1, 5.81000000, 7.03010000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(290, 1, '2015-06-05 09:33:59', 290, '2015-06-05 11:33:59', 1, 11.51000000, 13.92710000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(291, 1, '2015-06-05 09:34:26', 291, '2015-06-05 11:34:26', 1, 5.05000000, 6.11050000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(292, 1, '2015-06-05 09:34:53', 292, '2015-06-05 11:34:53', 1, 8.74000000, 10.57540000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(293, 1, '2015-06-05 09:57:31', 293, '2015-06-05 11:57:31', 1, 34.49000000, 41.73290000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(294, 1, '2015-06-05 09:58:11', 294, '2015-06-05 11:58:11', 1, 76.12000000, 92.10520000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(295, 1, '2015-06-05 09:58:55', 295, '2015-06-05 11:58:55', 1, 98.49000000, 119.17290000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(296, 1, '2015-06-05 09:59:50', 296, '2015-06-05 11:59:50', 1, 118.49000000, 143.37290000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(297, 1, '2015-06-05 10:00:28', 297, '2015-06-05 12:00:28', 1, 162.20000000, 196.26200000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(298, 1, '2015-06-05 10:01:20', 298, '2015-06-05 12:01:20', 1, 59.29000000, 71.74090000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(299, 1, '2015-06-05 10:02:05', 299, '2015-06-05 12:02:05', 1, 212.89000000, 257.59690000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(300, 1, '2015-06-05 10:02:50', 300, '2015-06-05 12:02:50', 1, 180.60000000, 218.52600000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(301, 1, '2015-06-05 10:03:36', 301, '2015-06-05 12:03:36', 1, 297.68000000, 360.19280000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(302, 1, '2015-06-05 10:56:02', 302, '2015-06-05 12:56:02', 1, 184.09000000, 222.74890000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(303, 1, '2015-06-05 11:10:46', 303, '2015-06-05 13:10:46', 1, 159.27000000, 192.71670000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(304, 1, '2015-06-05 11:12:01', 304, '2015-06-05 13:12:01', 1, 5.20000000, 6.29200000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(305, 1, '2015-06-05 11:12:36', 305, '2015-06-05 13:12:36', 1, 6.80000000, 8.22800000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(306, 1, '2015-06-05 11:13:11', 306, '2015-06-05 13:13:11', 1, 7.60000000, 9.19600000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(307, 1, '2015-06-05 11:13:54', 307, '2015-06-05 13:13:54', 1, 8.40000000, 10.16400000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(308, 1, '2015-06-05 11:14:30', 308, '2015-06-05 13:14:30', 1, 44.44000000, 53.77240000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(309, 1, '2015-06-05 11:15:13', 309, '2015-06-05 13:15:13', 1, 32.10000000, 38.84100000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(310, 1, '2015-06-11 10:15:32', 310, '2015-06-11 12:15:32', 1, 36.00000000, 43.56000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(311, 1, '2015-06-11 10:16:10', 311, '2015-06-11 12:16:10', 1, 40.00000000, 48.40000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(312, 1, '2015-06-11 10:16:47', 312, '2015-06-11 12:16:47', 1, 24.89000000, 30.11690000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(313, 1, '2015-06-11 10:18:21', 313, '2015-06-11 12:18:21', 1, 38.49000000, 46.57290000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(314, 1, '2015-06-11 10:18:57', 314, '2015-06-11 12:18:57', 1, 47.04000000, 56.91840000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(315, 1, '2015-06-11 10:20:04', 315, '2015-06-11 12:20:04', 1, 55.12000000, 66.69520000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(316, 1, '2015-06-15 10:48:50', 316, '2015-06-15 12:48:50', 1, 52.16000000, 63.11360000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(317, 1, '2015-06-15 10:49:30', 317, '2015-06-15 12:49:30', 1, 79.52000000, 96.21920000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(318, 1, '2015-06-15 10:51:36', 318, '2015-06-15 12:51:36', 1, 97.72000000, 118.24120000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(319, 1, '2015-06-15 10:52:50', 319, '2015-06-15 12:52:50', 1, 140.00000000, 169.40000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(320, 1, '2015-06-15 10:53:25', 320, '2015-06-15 12:53:25', 1, 204.40000000, 247.32400000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(321, 1, '2015-06-15 10:55:02', 321, '2015-06-15 12:55:02', 1, 36.15000000, 43.74150000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(322, 1, '2015-06-15 11:00:51', 322, '2015-06-15 13:00:51', 1, 16.48000000, 19.94080000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL);
INSERT INTO `llx_product_price` (`rowid`, `entity`, `tms`, `fk_product`, `date_price`, `price_level`, `price`, `price_ttc`, `price_min`, `price_min_ttc`, `price_base_type`, `tva_tx`, `recuperableonly`, `localtax1_tx`, `localtax2_tx`, `fk_user_author`, `tosell`, `price_by_qty`, `import_key`) VALUES
(323, 1, '2015-06-15 11:03:10', 323, '2015-06-15 13:03:10', 1, 65.57000000, 79.33970000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(324, 1, '2015-06-15 11:04:27', 324, '2015-06-15 13:04:27', 1, 131.20000000, 158.75200000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(325, 1, '2015-06-15 11:05:19', 325, '2015-06-15 13:05:19', 1, 124.13000000, 150.19730000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(326, 1, '2015-06-15 11:06:16', 326, '2015-06-15 13:06:16', 1, 72.14000000, 87.28940000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(327, 1, '2015-06-15 11:07:13', 327, '2015-06-15 13:07:13', 1, 14.96000000, 18.10160000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(328, 1, '2015-06-15 11:08:37', 328, '2015-06-15 13:08:37', 1, 260.08000000, 314.69680000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(329, 1, '2015-06-15 11:11:24', 329, '2015-06-15 13:11:24', 1, 53.16000000, 64.32360000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(330, 1, '2015-06-15 11:12:09', 330, '2015-06-15 13:12:09', 1, 56.51000000, 68.37710000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(331, 1, '2015-06-15 11:15:47', 331, '2015-06-15 13:15:47', 1, 12.05000000, 14.58050000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(332, 1, '2015-06-15 11:17:48', 332, '2015-06-15 13:17:48', 1, 79.52000000, 96.21920000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(333, 1, '2015-06-15 11:18:57', 333, '2015-06-15 13:18:57', 1, 17.93000000, 21.69530000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(334, 1, '2015-06-15 11:19:48', 334, '2015-06-15 13:19:48', 1, 118.86000000, 143.82060000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(335, 1, '2015-06-15 11:20:49', 335, '2015-06-15 13:20:49', 1, 57.68000000, 69.79280000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(336, 1, '2015-06-15 11:21:46', 336, '2015-06-15 13:21:46', 1, 156.32000000, 189.14720000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(337, 1, '2015-06-15 11:23:22', 337, '2015-06-15 13:23:22', 1, 79.28000000, 95.92880000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(338, 1, '2015-06-15 11:23:58', 338, '2015-06-15 13:23:58', 1, 52.94000000, 64.05740000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(339, 1, '2015-06-15 11:24:38', 339, '2015-06-15 13:24:38', 1, 68.16000000, 82.47360000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(340, 1, '2015-06-15 11:25:46', 340, '2015-06-15 13:25:46', 1, 49.10000000, 59.41100000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(341, 1, '2015-06-15 11:27:34', 341, '2015-06-15 13:27:34', 1, 29.40000000, 35.57400000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(342, 1, '2015-06-15 11:28:24', 342, '2015-06-15 13:28:24', 1, 100.08000000, 121.09680000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(343, 1, '2015-06-15 11:30:00', 343, '2015-06-15 13:30:00', 1, 49.92000000, 60.40320000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(344, 1, '2015-06-15 11:31:12', 344, '2015-06-15 13:31:12', 1, 228.40000000, 276.36400000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(345, 1, '2015-06-15 11:32:50', 345, '2015-06-15 13:32:50', 1, 91.36000000, 110.54560000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(346, 1, '2015-06-15 11:35:29', 346, '2015-06-15 13:35:29', 1, 177.60000000, 214.89600000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(347, 1, '2015-06-15 11:36:26', 347, '2015-06-15 13:36:26', 1, 71.04000000, 85.95840000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(348, 1, '2015-06-15 11:37:34', 348, '2015-06-15 13:37:34', 1, 245.28000000, 296.78880000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(349, 1, '2015-06-15 11:38:34', 349, '2015-06-15 13:38:34', 1, 98.11000000, 118.71310000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(350, 1, '2015-06-15 11:39:03', 350, '2015-06-15 13:39:03', 1, 40.00000000, 48.40000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(351, 1, '2015-06-15 11:39:55', 351, '2015-06-15 13:39:55', 1, 21.00000000, 25.41000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(352, 1, '2015-06-15 11:40:48', 352, '2015-06-15 13:40:48', 1, 47.00000000, 56.87000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(353, 1, '2015-06-15 11:41:46', 353, '2015-06-15 13:41:46', 1, 70.00000000, 84.70000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(354, 1, '2015-06-15 11:42:47', 354, '2015-06-15 13:42:47', 1, 72.57000000, 87.80970000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(355, 1, '2015-06-15 11:44:14', 355, '2015-06-15 13:44:14', 1, 136.57000000, 165.24970000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(356, 1, '2015-06-15 11:45:24', 356, '2015-06-15 13:45:24', 1, 105.71000000, 127.90910000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(357, 1, '2015-06-15 11:49:43', 357, '2015-06-15 13:49:43', 1, 145.60000000, 176.17600000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(358, 1, '2015-06-15 11:52:03', 358, '2015-06-15 13:52:03', 1, 190.30000000, 230.26300000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(359, 1, '2015-06-15 11:52:47', 359, '2015-06-15 13:52:47', 1, 54.40000000, 65.82400000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(360, 1, '2015-06-15 11:53:39', 360, '2015-06-15 13:53:39', 1, 31.50000000, 38.11500000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(361, 1, '2015-06-15 11:54:18', 361, '2015-06-15 13:54:18', 1, 72.00000000, 87.12000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL),
(362, 1, '2015-06-15 11:54:59', 362, '2015-06-15 13:54:59', 1, 44.00000000, 53.24000000, 0.00000000, 0.00000000, 'HT', 21.000, 0, 0.000, 0.000, 3, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_price_by_qty`
--

CREATE TABLE IF NOT EXISTS `llx_product_price_by_qty` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_product_price` int(11) NOT NULL,
  `date_price` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `price` double(24,8) DEFAULT '0.00000000',
  `quantity` double DEFAULT NULL,
  `remise_percent` double NOT NULL DEFAULT '0',
  `remise` double NOT NULL DEFAULT '0',
  `unitprice` double(24,8) DEFAULT '0.00000000',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_product_price_by_qty_level` (`fk_product_price`,`quantity`),
  KEY `idx_product_price_by_qty_fk_product_price` (`fk_product_price`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_stock`
--

CREATE TABLE IF NOT EXISTS `llx_product_stock` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_product` int(11) NOT NULL,
  `fk_entrepot` int(11) NOT NULL,
  `reel` double DEFAULT NULL,
  `pmp` double(24,8) NOT NULL DEFAULT '0.00000000',
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_product_stock` (`fk_product`,`fk_entrepot`),
  KEY `idx_product_stock_fk_product` (`fk_product`),
  KEY `idx_product_stock_fk_entrepot` (`fk_entrepot`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_projet`
--

CREATE TABLE IF NOT EXISTS `llx_projet` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_soc` int(11) DEFAULT NULL,
  `datec` date DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dateo` date DEFAULT NULL,
  `datee` date DEFAULT NULL,
  `ref` varchar(50) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `title` varchar(255) NOT NULL,
  `description` text,
  `fk_user_creat` int(11) NOT NULL,
  `public` int(11) DEFAULT NULL,
  `fk_statut` smallint(6) NOT NULL DEFAULT '0',
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_projet_ref` (`ref`,`entity`),
  KEY `idx_projet_fk_soc` (`fk_soc`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=413 ;

--
-- Dumping data for table `llx_projet`
--

INSERT INTO `llx_projet` (`rowid`, `fk_soc`, `datec`, `tms`, `dateo`, `datee`, `ref`, `entity`, `title`, `description`, `fk_user_creat`, `public`, `fk_statut`, `note_private`, `note_public`, `model_pdf`) VALUES
(103, 15, '2015-05-13', '2015-06-11 07:53:13', '2015-05-12', '2015-05-19', '0515000001', 1, '710335/52015', 'DACION DÍA 20/05/2015 A LAS 10:00 CON VISITA PREVIA EL DÍA 19', 3, 0, 2, NULL, NULL, 'assista'),
(104, 15, '2015-05-14', '2015-05-19 13:07:21', '2014-12-11', '2015-05-13', '0515000002', 1, '611682/22014', 'colocación de tapas en los registros de los aljibes.', 3, 0, 1, NULL, NULL, 'parte_llaves_aktua_banesto'),
(105, 15, '2015-05-14', '2015-06-09 09:56:25', '2015-05-07', '2015-05-31', '0515000003', 1, '707051/52015', 'COMPROBACIÓN OCUPACIÓN ILEGAL Y TAPIADO DE PUERTA', 3, 0, 2, NULL, NULL, 'assista'),
(106, 15, '2015-05-14', '2015-05-27 08:49:13', '2015-05-07', NULL, '0515000004', 1, '707650/52015', 'toma de posesión', 3, 0, 1, NULL, NULL, 'sabadell_template'),
(107, 15, '2015-05-15', '2015-05-15 07:55:07', '2015-04-13', NULL, '0515000005', 1, '690468/42015', 'TPJ 07/05/2015 10:00 PROCURADOR Antonio colom Ferra	659445158	 FINCAS FIOL, C.B. (971755220/692644739)', 3, 0, 1, NULL, NULL, 'assista'),
(108, 15, '2015-05-15', '2015-06-29 08:26:52', '2015-05-06', '2015-06-25', '0515000006', 1, '706455/52015', 'TPJ 15/05/2015 A LAS 11:30, PROCURADOR GABRIEL TOMAS GILI 609649224', 3, 0, 2, NULL, NULL, 'parte_llaves_assista'),
(109, 15, '2015-05-15', '2015-05-24 20:14:19', '2015-04-28', NULL, '0515000007', 1, '679363/32015', 'TPJ 25/03/15 PROCURADORA FRANCISCA RIBOT BINIMELIS, 606597769.APERTURA Y CAMBIO DE CERRADURA.', 3, 0, 1, NULL, NULL, 'sabadell_template'),
(110, 15, '2015-05-15', '2015-06-19 11:04:37', '2015-05-15', '2015-06-19', '0515000008', 1, '712574/52015', 'TPJ 18/05/15 A LAS 10h. PROCURADOR, CATALINA AMENGUAL PONS 629612276.', 3, 0, 2, 'NO SE PUEDEN HACER LOS TRABAJOS DE VACIADO POR OCUPACIÓN ILEGAL.', NULL, 'parte_llaves_aktua_banesto'),
(112, 15, '2015-05-19', '2015-06-29 08:02:17', '2015-04-30', '2015-06-24', '0515000010', 1, '648965/22015', 'TOMA DE POSESIÓN 25/03/2015 A LAS 12:00', 3, 0, 2, '23/06 SE HACE ENTREGA DE UNA COPIA DE LLAVES A PATRICIA.\r\n26/06 DEVOLUCIÓN DE LLAVES PATRICIA.', NULL, 'sabadell_template'),
(113, 15, '2015-05-19', '2015-06-11 07:51:29', '2015-05-19', '2015-06-10', '0515000011', 1, '714324/52015', 'ESTÁ CAYENDO AGUA EN EL TALLER SONOMUSIC', 3, 0, 2, NULL, NULL, 'assista'),
(114, 15, '2015-05-19', '2015-06-08 11:58:32', '2015-04-30', NULL, '0515000012', 1, '703758/42015', 'TPJ 12/05/2015 A LAS 10:30 PROCURADOR: ANTONIO BUADES 971714524 - 626099976', 3, 0, 1, NULL, NULL, 'assista'),
(115, 15, '2015-05-19', '2015-06-23 09:17:08', '2014-08-22', '2015-06-18', '0515000013', 1, '541984/82014', '15/09/14 A LAS10:30 TOMA DE POSESIÓN - AUTO 930/2009. PROCURADOR: MARIA DEL PILAR PERELLO. 971845464', 3, 0, 2, '19/05/2015 10:30\r\n\r\nSe llama a Manuel Pérez al teléfono 671501504 para decirle que venga a recoger las llaves a la oficina, le facilitamos nuestro teléfono para que nos avise cuando vaya a venir. Nos comenta que vendrán hoy y que nos llamarán.', NULL, 'parte_llaves_aktua_banesto'),
(116, 15, '2015-05-19', '2015-07-03 08:18:41', '2015-05-17', '2015-07-02', '0515000014', 1, '713145/52015', 'SALE AGUA DEL 6ªB (DOMICILIO PRESIDENTE), SOLAMENTE CUANDO SE HACEN USO DE LAS DUCHAS DE LOS PISOS SUPERIORES.', 3, 0, 2, NULL, NULL, 'assista'),
(117, 15, '2015-05-19', '2015-06-10 07:20:58', '2015-05-04', '2015-06-09', '0515000015', 1, '704349/52015', 'DESRATIZACIÓN Y TAPADO DE ACCESOS PARA EVITAR LA ENTRADA DE RATAS. MONTAÑA NEGRA EL API 620019198', 3, 0, 2, '19/05/2015 A LAS 14:15\r\n\r\nME PONGO EN CONTACTO CON LA EMPRESA L''ARTISAN CONTROL DE PLAGAS, EDUARDO GALÁN TELÉFONO 608636315 Y NOS PASA UNA VALORACIÓN DE 22O EUROS, EL TRATAMIENTO CONSISTE EN UN TRATAMIENTO DE CHOQUE Y UN SEGUNDO TRATAMIENTO TRANSCURRIDO DE 8 A 10 DIAS. NOS PUEDEN PROPORCIONAR UN CERTIFICADO SI NOS HICIERA FALTA.\r\n\r\n19/05/2015 A LAS 15:00\r\n\r\nPASAMOS INFORMACIÓN A LA TRAMITADORA, FOTOS Y VALORACIÓN.\r\n\r\n                                                                   ', NULL, 'parte_llaves_aktua_banesto'),
(118, 15, '2015-05-19', '2015-05-19 13:40:29', '2015-02-10', NULL, '0515000016', 1, '643032/12015', 'VERIFICACIÓN DE LLAVES REMITIDAS POR ASSISTA', 3, 0, 1, '19/05/2015\r\n\r\nREALIZAR LA ENTREGA DE LAS LLAVES FORMANDO LOS CORRESPONDIENTES LLAVEROS. NO SE TIENE QUE REALIZAR NI LIMPIEZA NI VACIADO.', NULL, 'sabadell'),
(119, 15, '2015-05-20', '2015-06-29 08:58:43', '2015-04-22', '2015-06-25', '0515000017', 1, '671820/32015', 'POSESIÓN 12/04/15 A LAS 10. EJECUCIÓN HIPOTECARIA 564/09 MANACOR 10/03/15.609602020.', 3, 0, 2, NULL, NULL, 'sabadell_template'),
(120, 15, '2015-05-21', '2015-05-21 13:10:58', '2015-04-02', NULL, '0515000018', 1, '685911/42015', 'DESALOJO PACTADO EN A0 60129 0001 PARA EL 06/04/15 A LAS 12H. MEDIADORA: LIA AMENGUAL, 665 347 462.  DESCERRAJE Y VACIADO.', 3, 0, 2, '21/05/2015 15:10\r\n\r\nSe le ha reclamado la llave comunitaria a Carlos en varias ocasiones, estamos a la espera de que nos la consiga.\r\n\r\n', NULL, 'sabadell'),
(121, 15, '2015-05-21', '2015-06-09 11:35:02', '2015-04-20', '2015-05-21', '0515000019', 1, '665646/32015', 'OT GENÉRICA: CARMEN GAYA FONT. TOMA DE POSESIÓN 17/03/15 A LAS 11:30. JUZGADO 1º INST., Nº 11, AUTOS Nº1762/12. 971228620', 3, 0, 2, NULL, NULL, 'sabadell'),
(122, 15, '2015-05-21', '2015-06-12 10:39:36', '2015-05-20', NULL, '0515000020', 1, '715154/52015', 'DACIÓN DÍA 21/05 A LAS 11H, VISITA AL INMUEBLE A LAS 9H. NOTARÍA MIGUEL AMENGUAL. SR. CASTILLO 635 80 78 59', 3, 0, 2, NULL, NULL, 'assista'),
(123, 15, '2015-05-21', '2015-05-21 08:17:10', '2015-05-20', NULL, '0515000021', 1, '715717/52015', 'RECOGER LLAVES EN DIAGONAL GEST, REALIZAR 4 COPIAS Y ENTREGA JUEGOS NUEVAMENTE.', 3, 0, 1, NULL, NULL, 'sabadell'),
(124, 15, '2015-05-21', '2015-05-24 19:59:35', '2015-05-15', NULL, '0515000022', 1, '672824/32015', 'TPJ PROCURADOR ANTONIO BUADE GARAU 626 09 99 76. 25715 K. FINCAS FIOL.', 3, 0, 1, NULL, NULL, 'sabadell_template'),
(125, 15, '2015-05-21', '2015-07-14 09:13:13', '2015-01-22', '2015-07-10', '0515000023', 1, '634183/12015', 'OT GENÉRICA. PROCURADOR: MªJOSE RODRIGUEZ, LANZAMIENTO 3/02/15 A LAS 11:30H.DESAHUCIO 826/14.', 3, 0, 2, NULL, NULL, 'sabadell'),
(126, 15, '2015-05-21', '2015-05-21 18:41:12', '2015-03-31', NULL, '0515000024', 1, '684219/32015', 'contactad urgente con el presidente pedro 628683270 y desatascar bajante', 3, 0, 1, NULL, NULL, 'assista'),
(127, 15, '2015-05-21', '2015-05-21 18:54:14', '2015-04-28', NULL, '0515000025', 1, '702107/42015', 'DACIÓN PARA EL DÍA 30/04/2015 A LAS 11 EN LA NOTARÍA MIGUEL AMENGUAL DEUDORA 653266362', 3, 0, 1, NULL, NULL, 'assista'),
(128, 15, '2015-05-25', '2015-06-11 07:45:26', '2015-05-25', '2015-06-10', '0515000026', 1, '717525/52015', 'ASEGURAR VIVIENDA, CAMBIAR CERRADURAS Y REPARAR VENTANA. 971 712345/606326628.', 3, 0, 2, NULL, NULL, 'assista'),
(129, 15, '2015-05-25', '2015-06-11 07:44:04', '2015-05-22', '2015-06-10', '0515000027', 1, '716821/52015', 'LA VENTANA DE HA HINCHADO DE LA LLUVIA Y NO SE PUEDE CERRAR, REPARAR. FINCAS FIOL, 971 755220-692644739.', 3, 0, 2, NULL, NULL, 'assista'),
(130, 15, '2015-05-25', '2015-06-29 09:55:33', '2015-05-22', NULL, '0515000028', 1, '716729/52015', 'PRESUPUESTAR LIMPIEZA SOLAR Y CERRAMIENTO POR REQUERIMIENTO AGENTE: BYM SERVICIOS INMOBILIARIOS, S.L. 677379644', 3, 0, 1, '29/06/2015 11:54\r\n\r\nGrasen nos pasa una valoración de 280,00.- euros', NULL, NULL),
(131, 15, '2015-05-25', '2015-05-25 08:49:50', '2015-05-21', NULL, '0515000029', 1, '716399/52015', 'SE HAN CAIDO UNAS VALLAS EN EL LOCAL DE SOLVIA EN MAHON, SOLICITA QUE SE PONGAN EN CONTACTO CON LA POLOCÍA 971363961 PARA INFORMAR COMO PROCEDER AL RESPECTO.', 3, 0, 1, NULL, NULL, NULL),
(133, 15, '2015-05-25', '2015-05-25 08:55:04', '2015-05-25', NULL, '0515000031', 1, '717545/52015', 'DAÑOS ELÉCTRICOS EN TERMO DE AGUA.', 3, 0, 1, NULL, NULL, NULL),
(134, 15, '2015-05-25', '2015-05-25 12:02:06', '2015-05-04', NULL, '0515000032', 1, '704005/52015', 'TPJ 26/05/2015 A LAS 12:30, PROCURADOR: JUAN MARIA CERDÓ 971 717298.', 3, 0, 1, NULL, NULL, NULL),
(135, 15, '2015-05-25', '2015-06-23 08:54:56', '2015-05-19', '2015-06-18', '0515000033', 1, '714610/52015', 'las llaves de la gestoría no funcionan, recogerla y verificarlas, en caso de no funcionar realizar descerraje', 3, 0, 2, NULL, NULL, 'parte_llaves_assista'),
(137, 15, '2015-05-26', '2015-05-27 13:47:41', '2015-05-25', NULL, '0515000035', 1, '718367/52015', 'ESTÁ CAYENDO AGUA A BORBOTONES EN EL 4º 2ª, IR A LA VIVIENDA, CORTAR EL AGUA, REVISAR Y REPARAR. AGENTE: FINCAS FIOL, C.B.', 3, 0, 1, NULL, NULL, 'assista'),
(138, 15, '2015-05-26', '2015-05-26 07:44:25', '2015-05-25', NULL, '0515000036', 1, '718106/52015', 'ATASCO EN EL FREGADERO DE LA COCINA. ATT. ESC-INVEST.', 3, 0, 1, NULL, NULL, NULL),
(140, 15, '2015-05-26', '2015-06-15 09:45:08', '2015-05-25', '2015-06-15', '0515000038', 1, '718239/52015', 'CAMBIO DE CERRADURA PARA EL 5/06/15 A LAS 11 H. SE FIRMA ENTREGA DE POSESIÓN. SOLICITANTE: Mª PAZ MORENO-685012324', 3, 0, 2, NULL, NULL, 'assista'),
(141, 15, '2015-05-26', '2015-05-27 14:00:52', '2015-05-25', NULL, '0515000039', 1, '718206/52015', 'LA BARRERA ESTABA ABIERTA. HAY QUE IR A PONER CANDADO, HABÍA UNO Y YA NO ESTÁ. AGENTE: PISOS SA POBLA, S.L. 664442201.', 3, 0, 1, NULL, NULL, 'assista'),
(142, 15, '2015-05-26', '2015-07-13 07:48:45', '2015-05-25', '2015-07-13', '0515000040', 1, '718186/52015', 'PODAR VEGETACIÓN DE SUS TERRAZAS EVITANDO ASÍ LA INVASIÓN DE ESPACIOS COMUNITARIOS, MANTENER SUS TERRAZAS LIBRES DE VEGETACIÓN AÉREAY MALAS HIERBAS. AGENTE: CENTRE COMPTABLE LA VILA, S.L. 626616410.', 3, 0, 2, NULL, NULL, NULL),
(143, 15, '2015-05-26', '2015-05-26 08:10:37', '2015-05-25', NULL, '0515000041', 1, '717968/52015', 'LLAMAR AL INQUILINO JACOBO JURADO 644460897, 25/05 14:00, JAME SEGUÍ ESTEVE, CUADRO ELÉCTRICO NO FUNCIONA, CONTACTO, CITA SD-90936-0004 25/05 12:30 27/05/15 12:30 .', 3, 0, 1, NULL, NULL, NULL),
(144, 15, '2015-05-26', '2015-07-03 08:11:28', '2015-05-25', '2015-07-03', '0515000042', 1, '713410/52015', '2238398 (EO) LIMPIEZA 15/05/15 05/06/15, CHECKLIST HABITABILIDAD 15/05/15 05/06/15 .', 3, 0, 2, NULL, NULL, 'sabadell_template'),
(145, 15, '2015-05-26', '2015-06-08 09:51:58', '2015-05-18', NULL, '0515000043', 1, '713205/52015', 'TPJ 08/06/15 12:30 H. APERTURA Y CAMBIO DE CERRADURA. CONSEGUIR DATOS COMUNIDAD Y LLAVES PORTAL. PROCURADOR: MARIA MAGINA BORRAS, 639355803.', 3, 0, 1, NULL, NULL, 'parte_llaves_aktua_banesto'),
(146, 15, '2015-05-26', '2015-05-26 11:26:21', '2015-05-18', NULL, '0515000044', 1, '687825/42015', 'TPJ 19/05/15 A LAS 10:30H. PROCURADORA CARMEN, 971 228620.', 3, 0, 1, NULL, NULL, NULL),
(147, 15, '2015-05-26', '2015-05-27 08:06:08', '2015-05-18', NULL, '0515000045', 1, '662931/22015', 'TPJ 28/05/15 A LAS 11 H. RIBOT BINIMELIS FRANCESCA, 606597769, APERTURA Y CAMBIO DE CERRADURA.', 3, 0, 1, NULL, NULL, NULL),
(148, 15, '2015-05-26', '2015-05-27 07:58:11', '2015-05-19', NULL, '0515000046', 1, '701550/42015', 'RECOGER LLAVE COMUNITARIA EN OFI ADMINIS. JUAN J. TORRENS 971472785.', 3, 0, 1, NULL, NULL, 'parte_llaves_aktua_banesto'),
(149, 15, '2015-05-27', '2015-05-27 07:50:55', '2015-05-19', NULL, '0515000047', 1, '701584/42015', 'RECOGER LLAVE COMUNITARIA EN OFI ADMIN. JUAN J. TORRENS 971472785.', 3, 0, 1, NULL, NULL, 'parte_llaves_aktua_banesto'),
(150, 15, '2015-05-27', '2015-05-27 07:47:06', '2015-05-19', NULL, '0515000048', 1, '701459/42015', 'RECOGER LLAVE COMUNITARIA EN OFI. ADMIN. JUAA J. TORRENS 971472785.', 3, 0, 1, NULL, NULL, 'parte_llaves_aktua_banesto'),
(151, 15, '2015-05-27', '2015-05-27 07:58:52', '2015-05-19', NULL, '0515000049', 1, '701452/42015', 'RECOGER LLAVE COMUNITARIA EN OFICINA DEL ADM. JUAN JOSE 971 472785. HAN CAMBIADO LLAVES DEL PORTAL.', 3, 0, 1, NULL, NULL, 'parte_llaves_aktua_banesto'),
(152, 15, '2015-05-27', '2015-05-27 14:33:54', '2015-04-30', NULL, '0515000050', 1, '703168/42015', 'CONSEGUIR LLAVES ACCESO PEATONAL Y MANDO GARAJE, FOTOS APARCAMIENTO 19 Y AL GARAJE GENERAL.RESCINSIÓN CONTRATO PLAZA APARCAMIENTO.', 3, 0, 1, NULL, NULL, 'sabadell_template'),
(153, 15, '2015-05-27', '2015-05-27 09:05:31', '2015-04-30', NULL, '0515000051', 1, '703165/42015', 'RESCINSIÓN CONTRATO, REALIZAR DESCERRAJE, VACIADO. FOTOS ANTES Y DESPUÉS.', 3, 0, 1, NULL, NULL, 'sabadell_template'),
(154, 15, '2015-05-27', '2015-06-18 07:49:55', '2015-04-24', NULL, '0515000052', 1, '616252/122014', 'TPJ DÍA 30/01/15 A LAS 9:30H. PROCURADOR: MONTSERRAT MIRÓ MARTÍ 971352231.', 3, 0, 1, NULL, NULL, 'sabadell_template'),
(155, 15, '2015-05-27', '2015-07-09 11:37:19', '2015-04-24', NULL, '0515000053', 1, '699770/42015', 'APERTURA Y CAMBIO DE CERRADURA. FOTOS DEL NOMBRE DE LA CALLE, FACHADA, PUERTA, TODAS ESTANCIAS Y CERRADURA.', 3, 0, 1, 'ESTAMOS PENDIENTES DE SABER SI SE TIENE O NO SE TIENE QUE REALIZAR LA LIMPIEZA.', NULL, 'parte_llaves_assista'),
(156, 15, '2015-05-27', '2015-05-27 08:37:05', '2015-02-10', NULL, '0515000054', 1, '651797/22015', 'OT GENERICA, GOTERAS EN LA COCINA DEL VECINO DE ABAJO. SE REPARÓ PERO LA HUMEDADES HAN SALIDO DE NUEVO.', 3, 0, 1, NULL, NULL, NULL),
(158, 15, '2015-05-27', '2015-06-15 09:03:29', '2015-05-07', NULL, '0515000056', 1, '701826/42015', 'LIMPIEZA/VACIADO Y CHECK LIST.', 3, 0, 2, '12/6 subido a la plataforma parte de llaves firmado y fotos de llaves.\r\nMANDÓ EL CHECK LIST PERO FALTA UNA SEGUNDA HOJA.', NULL, 'sabadell_template'),
(159, 15, '2015-05-27', '2015-05-27 08:47:42', '2015-05-21', NULL, '0515000057', 1, '716399/52015', 'REPARAR VALLADO DE VÍA PÚBLICA, LLAMAR A LA POLICÍA PARA INFORMAR COMO PROCEDER 971363961', 3, 0, 1, NULL, NULL, NULL),
(160, 15, '2015-05-28', '2015-07-01 09:36:14', '2015-05-27', '2015-07-01', '0515000058', 1, '719401/52015', 'HUMEDADES EN EL VECINO DE ABAJO, MIRAR SI ES COMUNITARIO O ES DEL PISO DE BANESTO.', 3, 0, 2, NULL, NULL, NULL),
(161, 15, '2015-05-28', '2015-07-13 08:13:34', '2015-05-27', NULL, '0515000059', 1, '713439/52015', 'CHECKLIST.', 3, 0, 1, '13/07 PATRICIA SE HA LLEVADO UNA COPIA.', NULL, 'parte_llaves_assista'),
(162, 15, '2015-05-28', '2015-05-31 21:31:26', '2015-05-27', NULL, '0515000060', 1, '662074/22015', 'TPJ 01/06/2015 A LAS 10:30 H. EN ALCÚDIA. CARMEN SERRA LLULL, 971507378.', 3, 0, 1, NULL, NULL, 'parte_llaves_aktua_banesto'),
(163, 15, '2015-05-28', '2015-05-28 08:13:11', '2015-05-27', NULL, '0515000061', 1, '692660/42015', 'TPJ 04/06/15 A LAS 11 H., PROCURADOR JUAN CERDÁ 609602020.', 3, 0, 1, NULL, NULL, NULL),
(164, 15, '2015-05-28', '2015-07-06 09:06:04', '2015-05-28', '2015-07-03', '0515000062', 1, '715635/52015', 'CHECKLIST + LIMPIEZA', 3, 0, 2, NULL, NULL, 'sabadell_template'),
(165, 15, '2015-05-28', '2015-07-13 11:54:53', '2015-05-28', NULL, '0515000063', 1, '715623/52015', 'CHECKLIST + LIMPIEZA.', 3, 0, 1, '13/07/2015 11:54\r\n\r\nEstamos pendientes de realizar las fotos de la fachada, fotos del interior y de la terraza superior para que nos finalicen el servicio\r\n\r\n13/07/2015 13:54\r\n\r\nlos datos comunitarios son: Administrador Maria del Mar 971 88 18 68 - 609 604 676\r\n\r\nSe tiene que reparar unos daños en la pared de la escalera comunitaria, la persona de contacto es Rebeca y su teléfono el 679412111', NULL, 'sabadell_template'),
(166, 15, '2015-05-28', '2015-06-03 07:59:59', '2015-05-28', NULL, '0515000064', 1, '720270/52015', 'HACER COPIAS DE LLAVE COMUNITARIA Y LLAVEROS. ENTREGAR EN GESTORÍA PRECINTADAS.5 JUEGOS.', 3, 0, 1, NULL, NULL, 'sabadell_template'),
(167, 15, '2015-05-28', '2015-06-11 08:28:28', '2015-05-28', '2015-06-10', '0515000065', 1, '720237/52015', 'NO FUNCIONA LLAVE DE LA VIVIENDA, COMPROBAR QUE NO ESTÉ OCUPADA Y DEJAR ACCESO SEGURO.', 3, 0, 2, 'HEMOS HABLADO CON LA TRAMITADORA, HA INTENTADO RESERVAR LAS LLAVES PERO ESTÁN OCUPRADAS, MIRARÁ DE RECHAZARLAS Y A VER SI PODEMOS REALIZAR LA VISITA SIN LLAVES. ESTAMOS A LA ESPERA QUE NOS LLAME Y NOS INFORME CÓMO PROCEDER.', NULL, NULL),
(168, 15, '2015-05-28', '2015-06-16 07:24:28', '2015-05-28', '2015-06-15', '0515000066', 1, '690676/42015', 'TPJ 02/06/2015 A LAS 10 H. PROCURADOR: JUANA MARÍA CERDÓ FRÍAS.', 3, 0, 2, NULL, NULL, 'parte_llaves_aktua_banesto'),
(169, 15, '2015-05-28', '2015-07-06 09:05:13', '2015-05-13', '2015-07-02', '0515000067', 1, '621657/122014', 'VACIADO PERO SE DEJA MOBILIARIO EN BUEN ESTADO. LIMPIEZA Y CHECKLIST.', 3, 0, 2, NULL, NULL, 'sabadell_template'),
(170, 15, '2015-05-28', '2015-06-19 11:00:47', '2015-05-20', '2015-06-19', '0515000068', 1, '713463/52015', 'VACIADO + CHECKLIST PDTE. LLAVES.', 3, 0, 2, NULL, NULL, 'parte_llaves_assista'),
(171, 15, '2015-05-28', '2015-05-28 11:53:28', '2015-05-28', NULL, '0515000069', 1, '707069/52015', 'TPJ 05/06/15 A LAS 12:30 H.', 3, 0, 1, NULL, NULL, NULL),
(172, 16, '2015-05-28', '2015-06-02 16:24:47', '2015-05-28', NULL, '0515000070', 1, 'JULIO', 'APERTURA DE PUERTA URGENTE', 3, 0, 1, NULL, NULL, 'proyecto'),
(174, 15, '2015-05-29', '2015-06-10 10:40:26', '2015-05-18', '2015-06-10', '0515000071', 1, '663417/22015', 'TPJ 29/05/15 A LAS 11 H.. CATALINA AMENGUAL PONS 629612276.', 3, 0, 2, NULL, NULL, 'parte_llaves_aktua_banesto'),
(175, 15, '2015-05-29', '2015-06-29 08:55:15', '2015-05-05', '2015-06-25', '0515000072', 1, '705821/52015', 'TPJ 29/05/2015 A LAS 12:30 H. PROCURADORA: MARÍA BORRÁS, 639355803.', 3, 0, 2, NULL, NULL, 'parte_llaves_aktua_banesto'),
(176, 15, '2015-05-29', '2015-06-12 07:04:32', '2015-05-29', NULL, '0515000073', 1, '721151/52015', 'DAC 12/06/15 (pte. hora) SEBASTIAN ANTICH. LIMPIEZA Y VACIADO HASTA 5M3.', 3, 0, 1, NULL, NULL, 'parte_llaves_aktua_banesto'),
(177, 15, '2015-05-29', '2015-07-10 08:47:35', '2015-05-29', '2015-07-03', '0515000074', 1, '720885/52015', 'DAC 05/06/15 (pte. hora), LIMPIEZA Y VACIADO.NOT. SEBASTIAN ANTICH 659497317.', 3, 0, 2, NULL, NULL, 'parte_llaves_aktua_banesto'),
(178, 15, '2015-05-29', '2015-07-15 07:56:20', '2015-05-29', '2015-07-14', '0515000075', 1, '716809/52015', 'TPJ 1/06/15 A LAS 10:30 H.PROCURADOR: NANCY RUYS 609687999.', 3, 0, 2, NULL, NULL, 'parte_llaves_assista'),
(179, 15, '2015-05-29', '2015-06-08 11:24:52', '2015-05-28', NULL, '0515000076', 1, '720870/52015', 'POSIBLE ATASCO EN LA VIVIENDA.', 3, 0, 2, NULL, NULL, 'assista'),
(180, 15, '2015-05-29', '2015-05-29 10:54:50', '2015-05-29', NULL, '0515000077', 1, '719270/52015', 'PUERTA TAPIADA, EL API QUIERE ACCEDER.API: GESMORENT 671542245.', 3, 0, 1, NULL, NULL, NULL),
(181, 15, '2015-05-29', '2015-06-12 10:37:53', '2015-05-29', NULL, '0515000078', 1, '721170/52015', 'VACIAR Y LIMPIAR VIVIENDA. FINCAS FIOL, 692644739.', 3, 0, 2, NULL, NULL, 'parte_llaves_aktua_banesto'),
(182, 15, '2015-06-01', '2015-06-10 07:24:26', '2015-05-30', '2015-06-09', '0615000079', 1, '721564/52015', 'HUMEDADES EN EL TECHO DEL CUARTO DE BAÑO DEL PISO DE ABAJO.', 3, 0, 2, NULL, NULL, NULL),
(183, 15, '2015-06-01', '2015-06-03 11:10:54', '2015-05-29', NULL, '0615000080', 1, '711464/52015', 'COMPROBAR LLAVES, CONSEGUIR LLAVES COMUNITARIAS. MARIA O PAQUI 971365461.', 3, 0, 1, NULL, NULL, 'sabadell_template'),
(184, 15, '2015-06-01', '2015-06-03 11:07:03', '2015-05-29', NULL, '0615000081', 1, '711519/52015', 'COMPROBACIÓN LLAVES Y CONSEGUIR LAS COMUNITARIAS. PAQUI O MARÍA 971365461 NOS LAS ENTREGAN.', 3, 0, 1, NULL, NULL, 'sabadell_template'),
(185, 15, '2015-06-01', '2015-07-02 10:42:56', '2015-05-20', '2015-06-18', '0615000082', 1, '702342/42015', 'TPJ 02/06/15 10:30 H. PROCURADOR: JUANA Mª CERDÓ, 971717298.', 3, 0, 2, 'administrador:\r\n\r\n\r\nServifincas\r\n\r\n971 46 93 95\r\n\r\n699 56 15 59', NULL, 'parte_llaves_aktua_banesto'),
(188, 15, '2015-06-02', '2015-06-02 08:31:07', '2015-06-02', NULL, '0615000083', 1, '722742/62015', 'PODAR LOS ÁRBOLES Y LA VEGETACIÓN QUE INVADA ZONA COMUNITARIA. 971240121.', 3, 0, 1, NULL, NULL, NULL),
(189, 15, '2015-06-02', '2015-06-02 08:42:25', '2015-06-01', NULL, '0615000084', 1, '717157/52015', 'CAMBIO DE BOMBIN Y VACIADO SI NO SUPERA LOS 140. SE PUEDE REALIZAR DIRECTAMENTE. SE DEJA MOBILIARIO EN BUEN ESTADO.', 3, 0, 1, NULL, NULL, NULL),
(190, 15, '2015-06-02', '2015-06-16 12:01:11', '2015-06-01', NULL, '0615000085', 1, '717156/52015', 'CAMBIO BOMBIN 03/06.VACIADO. SE DEJA MOBILIARIO EN BUEN ESTADO.', 3, 0, 1, ' 16/06 DICEN QUE NOS HAN ENVIADO LAS LLAVES Y NOSOTROS NO LAS TENEMOS, HE HABLADO CON BELÉN SALVADOR Y ESTAMOS PENDIENTES QUE NOS DIGA CÓMO LO HACEMOS.', NULL, NULL),
(191, 15, '2015-06-02', '2015-06-10 10:41:32', '2015-06-01', '2015-06-10', '0615000086', 1, '722389/62015', 'TPP 03/06/15 A LAS 11:15 H. CAMBIO DE CERRADURA VIVIENDA Y CAMBIO DE CANDADO REJA ENTRADA. Mª PAZ MORENO 685012324', 3, 0, 2, NULL, NULL, 'parte_llaves_aktua_banesto'),
(192, 15, '2015-06-02', '2015-06-02 09:08:04', '2015-06-02', NULL, '0615000087', 1, '652989/22015', 'VENTANAS ABIERTAS Y SALIDA DE HUMOS ABIERTA AL CIELO POR LO QUE DEBE INUNDR NAVE.', 3, 0, 1, 'LAS LLAVES SE PIDIERON Y FUÉ IMPOSIBLE ENCONTRARLAS. EL 15/05 SE MANDAN AL CIAL. DE MENORCA. NOS DICEN QUE NO HACE FALTA IR, YA QUE LA NAVE SE HA VENDIDO Y VAN A REALIZAR OBRAS. LAS VENTANAS LAS CERRÓ EL. SE HA INFORMADO AL TRAMITADOR EN LA PLATAFORMA.', NULL, NULL),
(193, 15, '2015-06-02', '2015-06-15 09:44:29', '2015-05-25', '2015-06-15', '0615000088', 1, '718277/52015', 'TPJ 26/05/15 A LAS10 H. PROCURADOR: MARIA MASCARÓ GALMES', 3, 0, 2, NULL, NULL, 'assista'),
(194, 15, '2015-06-02', '2015-06-02 16:46:20', '2014-11-11', NULL, '0615000089', 1, '590715/112014', 'POSIBLE ATASCO BAJANTE COMUNITARIA, LE ESTÁ SUBIENDO EL AGUA POR LOS GRIFOS AL VECINO DEL 2º.', 3, 0, 1, NULL, NULL, 'sabadell_template'),
(195, 15, '2015-06-02', '2015-06-02 13:05:53', '2015-04-23', NULL, '0615000090', 1, '698612/42015', 'Dación 28/04/2015 a las 12:00 Notaria pareja', 3, 0, 1, '2/06/2015\r\n\r\nEL PRESIDENTE DE LA COMUNIDAD ES ANTONIO MÁS TELEFONO 696545685', NULL, 'assista'),
(196, 15, '2015-06-02', '2015-06-02 15:40:19', '2014-11-26', NULL, '0615000091', 1, '600687/112014', 'toma de posesion 27/11/14 a las 10:00 procuradora Francisca Ribot', 3, 0, 1, NULL, NULL, 'parte_llaves_aktua_banesto'),
(197, 15, '2015-06-03', '2015-06-03 07:12:35', '2015-05-21', NULL, '0615000092', 1, '715958/52015', 'DAC 22/05/15 A LAS 9:30 H. PAZ MORENO SELVA 685012324.', 3, 0, 1, NULL, NULL, 'parte_llaves_aktua_banesto'),
(198, 15, '2015-06-03', '2015-06-03 08:58:28', '2015-05-21', NULL, '0615000093', 1, '711858/52015', 'TPJ 18/05/15 A LAS 9:30 H. Mª JOSE HERNANDEZ 971 728225', 3, 0, 1, NULL, NULL, 'sabadell_template'),
(200, 15, '2015-06-03', '2015-06-03 08:08:03', '2015-06-02', NULL, '0615000094', 1, '723091/62015', 'REALIZAR 5 COPIAS LLAVES COMUNITARIAS Y COMPLETAR LLAVEROS .', 3, 0, 1, NULL, NULL, 'sabadell_template'),
(201, 15, '2015-06-03', '2015-06-03 08:04:52', '2015-06-02', NULL, '0615000095', 1, '723094/62015', 'REALIZAR 5 COPIAS DE LLAVES COMUNITARIAS Y COMPLETAR LLAVEROS GESTORÍA.', 3, 0, 1, NULL, NULL, 'sabadell_template'),
(202, 15, '2015-06-03', '2015-06-03 08:03:13', '2015-06-02', NULL, '0615000096', 1, '723102/62015', 'REALIZAR 5 COPIAS DE LLAVES COMUNITARIAS Y COMPLETAR LLAVEROS GESTORÍA.', 3, 0, 1, NULL, NULL, 'sabadell_template'),
(203, 15, '2015-06-03', '2015-06-12 10:13:22', '2014-12-10', NULL, '0615000097', 1, '609878/122014', 'HAY HUMEDAD EN EL BAÑO Y EN VARIAS HABITACIONES, HAY PAREDES PINTADAS CON GRAFFITIS.', 3, 0, 1, 'CONSEGUIR LLAVE COMUNIDAD.\r\nSE HA FACTURADO LO DE LAS LLAVES, QUEDA PENDIENTE FACTURAR LO DE LAS LLAVES.', NULL, 'parte_llaves_aktua_banesto'),
(205, 15, '2015-06-03', '2015-06-19 12:00:07', '2015-06-02', '2015-06-18', '0615000098', 1, '711763/52015', 'RECOGER LLAVES, COLOCAR CARTEL Y ENTREGAR LLAVES.', 3, 0, 2, NULL, NULL, 'sabadell_template'),
(206, 15, '2015-06-03', '2015-06-11 07:55:33', '2015-06-02', '2015-06-10', '0615000099', 1, '723405/62015', 'DESCERRAJE. LLAVES LAS TIENE API; ANTONIO PALMER INMOBILIARIA, 658983280.', 3, 0, 2, NULL, NULL, 'assista'),
(207, 15, '2015-06-03', '2015-06-23 08:47:23', '2015-06-02', '2015-06-17', '0615000100', 1, '723253/62015', 'IR A VER CAUSAS Y ORIGEN GOTERA. VEN GOTERA CONSTANTE DESDE NUESTRO INMUEBLE AL GARAJE. PRESI: PEP 670698923.PERJUDIC, 610082214.', 3, 0, 2, 'CERRADO CON VISITA.', NULL, NULL),
(208, 15, '2015-06-03', '2015-06-11 18:58:17', '2015-06-02', NULL, '0615000101', 1, '723284/62015', 'DESCERRAJE Y CAMBIO CERRADURA .', 3, 0, 2, NULL, NULL, 'parte_llaves_assista'),
(209, 15, '2015-06-04', '2015-06-04 07:30:41', '2015-06-03', NULL, '0615000102', 1, '724287/62015', 'DESCERRAJE FINCA. FINCAS FORCADELL 672490436', 3, 0, 1, NULL, NULL, NULL),
(210, 15, '2015-06-04', '2015-07-03 08:15:20', '2015-06-03', '2015-07-03', '0615000103', 1, '724347/62015', 'DESCERRAJE. API: ES FAR D''AUCANADA 610039410.', 3, 0, 2, '02/07 SE LOCALIZÓ EL INMUEBLE PERO HAY OCUPACIÓN ILEGAL.', NULL, NULL),
(211, 15, '2015-06-04', '2015-06-16 08:31:10', '2015-05-05', '2015-06-10', '0615000104', 1, '664681/32015', 'TPJ 29/04/15 A LAS 10:30 H. JUAN FCO. CERDA BESTARD; 609602020.', 3, 0, 2, NULL, NULL, 'sabadell_template'),
(212, 15, '2015-06-04', '2015-06-10 07:41:15', '2015-06-04', '2015-06-10', '0615000105', 1, '707377/52015', 'TPJ 04/06/15 A LAS 12:30 H. PROC.: JUAN CERDÁ BESTARD', 3, 0, 2, 'SE HACE ENTREGA DE 2 LLAVES AL API Y 1 LLAVE AL GESTOR.', NULL, 'assista'),
(213, 15, '2015-06-05', '2015-06-19 11:25:52', '2015-05-18', '2015-06-18', '0615000106', 1, '713351/52015', 'BOMBÍN+CHECKLIST.', 3, 0, 2, NULL, NULL, 'sabadell_template'),
(214, 15, '2015-06-05', '2015-06-19 11:22:50', '2015-05-18', '2015-06-18', '0615000107', 1, '713340/52015', 'BOMBÍN+CHECKLIST.', 3, 0, 2, NULL, NULL, 'sabadell_template'),
(215, 15, '2015-06-05', '2015-06-19 11:24:10', '2015-05-18', '2015-06-18', '0615000108', 1, '713356/52015', 'BOMBÍN+CHECKLIST.', 3, 0, 2, NULL, NULL, 'sabadell_template'),
(216, 15, '2015-06-05', '2015-06-19 11:15:47', '2015-04-22', '2015-06-19', '0615000109', 1, '684588/32015', 'CAMBIO DE BOMBÍN.', 3, 0, 2, NULL, NULL, 'sabadell_template'),
(217, 15, '2015-06-05', '2015-07-03 08:24:49', '2015-04-27', '2015-07-02', '0615000110', 1, '701071/42015', 'POSIBLE ROTURA BAJANTE O TUBERÍA, CAUSA DAÑOS HUMEDAD EN LOCAL (BANCO).', 3, 0, 2, NULL, NULL, NULL),
(218, 15, '2015-06-05', '2015-07-06 08:39:20', '2015-06-05', NULL, '0615000111', 1, '691548/42015', 'TPJ 19/06/15 A LAS 11 H. PROCURADOR: Mº CARMEN GAYA FONT 971228620', 3, 0, 1, '6/6/2015 10:39\r\n\r\nTras varios intentos de conseguir los accesos comunes a la plaza de parking, por fin hemos conseguido que la administradora nos diga algo más en firme, seguramente que para mañana nos llamará indicandonos como hacerlo para conseguir lo que necesitamos.', NULL, 'sabadell_template'),
(219, 15, '2015-06-05', '2015-06-10 08:27:23', '2015-06-05', NULL, '0615000112', 1, '639411/12015', 'VECINO DE ABAJO TIENE MANCHAS HUMEDAD EN TECHO BAÑO Y CUARTO. FOTOS Y PRESUPUESTO. FOTOS FACHADA.', 3, 0, 1, NULL, NULL, NULL),
(221, 15, '2015-06-08', '2015-06-08 07:49:57', '2015-06-04', NULL, '0615000114', 1, '724684/62015', 'TPJ 05/06/15 A LAS 10:30H.PROCURADOR: FREDERIC XAVIER RUIZ GALMÉS.', 3, 0, 1, NULL, NULL, 'sabadell_template'),
(222, 15, '2015-06-08', '2015-07-03 10:38:11', '2015-06-02', NULL, '0615000115', 1, '722432/62015', 'ATASCO EN FREGADERO. PRIVATIVO. CARMEN 626971628.', 3, 0, 1, 'estamos a la espera del tramitador ya que no había manera de desatacar el fregadero, pendientes de si nos autorizan camión cuba para desatascar.\r\n\r\n\r\n03/06/2015  12:38\r\n\r\nSe ha intentado realizar el desatasco por el método tradicional sin éxito. Para realizar el desatasco es necesario mandar un camión cuba para probar ya que parece ser que tiene un atasco importante.', NULL, 'assista'),
(223, 15, '2015-06-08', '2015-06-12 10:18:51', '2015-06-05', '2015-06-12', '0615000116', 1, '713904/52015', 'TPJ 1/06/15 A LAS 13 H. LIMPIEZA Y VACIADO. PROCURADOR MIGUEL SOCÍAS 971718002.', 3, 0, 2, 'ESTE PARTE ESTÁ CERRADO, SÓLO QUEDA IR EL DÍA 16/06 A SACAR LOS MUEBLES PARA LA RECOGIDA. HEMOS HECHO UNA COPIA DE LA LLAVE PARA NOSOTROS.', NULL, 'assista'),
(224, 15, '2015-06-08', '2015-07-01 09:21:01', '2015-06-05', NULL, '0615000117', 1, '725625/62015', 'LIMPIEZA Y VACIADO. LLAVES AS TIENE EL API: ACTIVUM 692207439.', 3, 0, 1, 'Se ha puesto en contacto con nosotros el departamento de obras para que realicemos la valoración de limpieza y vaciado de este inmueble. Se le pasa a Joan', NULL, 'parte_llaves_aktua_banesto'),
(225, 15, '2015-06-08', '2015-06-29 08:56:54', '2015-06-05', '2015-06-25', '0615000118', 1, '725967/62015', 'CAMBIO DE CERRADURA URGENTE.. OCUPACIÓN ILEGAL. LUIS ESTELRICH 657637808', 3, 0, 2, NULL, NULL, 'parte_llaves_aktua_banesto'),
(226, 15, '2015-06-08', '2015-07-06 09:04:00', '2015-06-05', '2015-07-03', '0615000119', 1, '725822/62015', 'DAC 12/06/15 NOTARÍA PAREJA A las 9:30 h. VISITA PREVIA 606519736', 3, 0, 2, NULL, NULL, 'parte_llaves_aktua_banesto'),
(228, 15, '2015-06-08', '2015-06-12 10:43:41', '2015-06-05', NULL, '0615000121', 1, '725674/62015', 'IR AL INMUEBLE Y ASEGURAR QUE LA VIVIENDA ESTÁ VACÍA, CONFIRMAR CON VECINOS. SI ESTÁ DESOCUPADA CAMBIO CERRADURA.', 3, 0, 2, 'DAVID MANDA LOS PARTES ORIGINALES POR AGENCIA, CUANDO LOS RECIBAMOS HAY QUE GRAPARLOS CON LA ORTEN DE SERVICIO.', NULL, NULL),
(229, 15, '2015-06-08', '2015-07-03 10:14:42', '2015-06-08', '2015-07-02', '0615000122', 1, '726497/62015', 'ASEGURAR VIVIENDA. INSTALAR CERRADURA. AGENTE: PISOS SA POBLA, 664442201.', 3, 0, 2, 'ESTE PARTE VA LIGADO CON EL 730124.', NULL, NULL),
(230, 15, '2015-06-08', '2015-06-08 12:00:08', '2015-06-08', NULL, '0615000123', 1, '726635/62015', 'DAC 15/06 (PTE. HORA). VISITA PREVIA, 971724501. NOTARÍA; PAREJA-BORN 15/06.', 3, 0, 1, NULL, NULL, NULL),
(232, 15, '2015-06-09', '2015-06-09 09:52:23', '2015-05-12', '2015-06-09', '0615000124', 1, '710153/52015', 'VALORAR DAÑOS HUMEDADES EN LA PARED DE LA VIVIENDA, CONTACTAR CON EL API Y REALIZAR PRESUPUESTO.', 3, 0, 2, NULL, NULL, NULL),
(233, 15, '2015-06-09', '2015-06-09 09:54:22', '2015-05-12', '2015-05-15', '0615000125', 1, '709937/52015', 'RETIRADA DE CARTEL + CHECK LIST, HACER FOTOS CARTEL RETIRARLO Y FOTOS SIN.', 3, 0, 2, NULL, NULL, NULL),
(235, 15, '2015-06-09', '2015-06-09 09:57:09', '2015-04-30', '2015-06-07', '0615000126', 1, '703642/42015', 'PRESUPUESTAR LIMPIEZA Y RETIRADA DE ESCOMBROS. API: ACTIVUM 692207439.', 3, 0, 2, 'EL API INFORMA DE QUE PASÓ MAL LOS DATOS REF: 20189K. DÍA 5/05/15 ANULAN EL SERVICIO.', NULL, NULL),
(236, 15, '2015-06-09', '2015-06-09 10:09:45', '2015-04-28', '2015-06-09', '0615000127', 1, '701905/42015', 'HACER COPIAS LLAVES. HAN CAMBIADO LLAVES DEL PORTAL Y AGREGADO UNA SEGUNDA CERRADURA. SOLICITAR AL ADMIN. TORRENS 971472785', 3, 0, 2, NULL, NULL, NULL),
(237, 15, '2015-06-09', '2015-06-09 09:28:29', '2015-06-09', NULL, '0615000128', 1, '727336/62015', 'PRESUPUESTO PARA LIMPIEZA Y VACIADO. API: CENTRE COMPTABLE VILA, 626616410.', 3, 0, 1, NULL, NULL, NULL),
(238, 15, '2015-06-09', '2015-06-09 10:11:48', '2015-04-23', '2015-06-09', '0615000129', 1, '698542/42015', 'CAMBIO DE CERRADURA 24/04 A LAS 9:30H. VIRGINIA LIZ 685613858', 3, 0, 2, NULL, NULL, NULL),
(239, 15, '2015-06-09', '2015-06-09 10:12:16', '2015-04-15', '2015-06-09', '0615000130', 1, '692069/42015', '1º PISO DAÑOS POR AGUA EN EL SALÓN, PARED. ADMON.679973637.', 3, 0, 2, 'ES PRIVATIVO NO COMUNITARIO', NULL, NULL),
(240, 15, '2015-06-09', '2015-06-09 11:06:09', '2015-04-07', '2015-06-09', '0615000131', 1, '686708/42015', 'NO ABRE PUERTA. URGENTE. 971495505', 3, 0, 2, NULL, NULL, NULL),
(241, 15, '2015-06-09', '2015-06-09 10:13:33', '2015-03-30', '2015-06-09', '0615000132', 1, '683558/32015', 'DAC 31/03/15 NOTARÍA DEL BORN-LUIS PAREJA.', 3, 0, 2, NULL, NULL, NULL),
(242, 15, '2015-06-09', '2015-07-03 11:32:25', '2015-06-09', '2015-07-03', '0615000133', 1, '727336/62015', 'ASEGURAMIENTO 4 CERRADURAS (HECHO), PRESUPUESTO LIMPIEZA Y VACIADO. API, CENTRE COMPTABLE VILA 626616410', 3, 0, 2, '03/07 anulación del servicio, falta de aprobación por parte de la supervisora.', NULL, 'parte_llaves_aktua_banesto'),
(243, 15, '2015-06-09', '2015-06-22 11:39:26', '2015-04-10', '2015-06-09', '0615000134', 1, '677222/32015', 'TPJ 13/04/15 LLUISA ADROVER THOMÁS 610559115.', 3, 0, 2, '16/06 HAY QUE VOLVER A LA VIVIENDA Y REALIZAR 15-20 FOTOS DEL INTERIOR HACER VACIADO SI ES INFERIOR A 140 € Y VOLVER A TAPIAR.', NULL, NULL),
(244, 15, '2015-06-09', '2015-06-09 11:46:03', '2015-03-11', '2015-06-09', '0615000135', 1, '671607/32015', 'COMPROBAR SI HAY AGUA ESTANCADA FILTRANDO AL LOCAL INFERIOR.', 3, 0, 2, 'NO HAY LLAVES NI API NI GESTOR\r\nANULACIÓN DEL SERVICIO.', NULL, NULL),
(245, 15, '2015-06-09', '2015-06-09 11:44:27', '2015-04-21', '2015-06-09', '0615000136', 1, '671055/32015', 'TPJ 11/05/15 A LAS 10 H. PROCURADOR: ANTONIO BUADES GARAU 626099976.', 3, 0, 2, 'TPJ SUSPENDIDA.', NULL, NULL),
(246, 15, '2015-06-09', '2015-06-09 11:15:44', '2015-03-10', '2015-03-18', '0615000137', 1, '670579/32015', 'NO HAN TAPADO CON LADRILLOS EN LA CATA DE LA COCINA, SINO COLOCADO PLAQUETA, NO ESTABA ASÍ. BELTRÁN 619264953.', 3, 0, 2, NULL, NULL, NULL),
(247, 15, '2015-06-09', '2015-06-09 11:42:39', '2015-02-20', '2015-06-09', '0615000138', 1, '658977/22015', 'TPJ 26/03/15 A LAS 11H. JUAN BLANES JAUME 699746573.', 3, 0, 2, 'TPJ ANULADA.', NULL, NULL),
(248, 15, '2015-06-09', '2015-06-09 11:43:14', '2015-02-18', '2015-06-09', '0615000139', 1, '657651/22015', 'TPJ 08/05/15 A LAS 10 H.CARMEN SERRA LLULL, 971507378', 3, 0, 2, 'TPJ ANULADA.', NULL, NULL),
(249, 15, '2015-06-09', '2015-06-09 11:52:36', '2015-02-13', '2015-02-13', '0615000140', 1, '654921/22015', 'SE LES HA ROTO LA LLAVE DE LA CAJA FUERTE Y SE LES HA QUEDADO DENTRO.', 3, 0, 2, NULL, NULL, NULL),
(250, 15, '2015-06-09', '2015-06-09 11:59:15', '2015-02-25', '2015-03-25', '0615000141', 1, '645962/22015', 'TPJ 26/02/15 A LAS 10 H. MONTSERRAT MIRO MARTI 971 35 22 31.', 3, 0, 2, 'DEVUELTAS 2 LLAVES AL API Y 1 AL GESTOR.', NULL, NULL),
(251, 15, '2015-06-10', '2015-06-12 09:59:57', '2015-05-13', '2015-06-11', '0615000142', 1, '710507/52015', 'REVISAR SUMIDEROS, SOLUCIONAR PROVISIONALMENTE, VISITAR INMUEBLE PERJUDICADO PARA VALORAR DAÑOS (LOCAL BAJO EL PISO DEL BANCO).', 3, 0, 2, NULL, NULL, 'parte_llaves_aktua_banesto'),
(252, 15, '2015-06-10', '2015-06-10 07:23:49', '2015-06-05', '2015-06-09', '0615000143', 1, '723956/62015', 'CAMBIO DE CERRADURA 5/06/15 A LAS 16:30H.', 3, 0, 2, NULL, NULL, NULL),
(253, 15, '2015-06-10', '2015-07-08 09:40:49', '2015-06-10', NULL, '0615000144', 1, '728065/62015', 'PROBLEMAS CON LA ESTRUCTURA, Mº COLOMA OLIVER 609965749 Y API 626616410, ACUDIR LOS TRES.', 3, 0, 1, '08/07 PENDIENTES DEL TRAMITADOR.', NULL, NULL),
(254, 15, '2015-06-10', '2015-06-25 11:22:56', '2015-06-09', '2015-06-25', '0615000145', 1, '727244/62015', 'VECINA AFECTADA POR CUCACRACHAS. URGENTE. Mª CRISTINA 601110529.', 3, 0, 2, NULL, NULL, 'sabadell_template'),
(255, 15, '2015-06-10', '2015-06-10 09:42:25', '2015-06-09', NULL, '0615000146', 1, '727730/62015', 'DAC 16/06/15 A LAS 10H.  NOTARÍA DEL BORNE, 23 ENTLO 16/6 A.', 3, 0, 1, NULL, NULL, NULL),
(256, 15, '2015-06-10', '2015-07-14 09:57:07', '2015-06-09', '2015-07-14', '0615000147', 1, '727790/62015', 'HA ENTRADO SUCIEDAD POR LA COLADURÍA, PARTE DEL TECHO DEL BAÑO SE HA CAÍDO SOBRE LA BAÑERA, FREGADERO OXIDADO. PRESUPUESTO.', 3, 0, 2, 'estas llaves se las queda Dolores, ya que son de fondo social.', NULL, 'parte_llaves_aktua_banesto'),
(257, 15, '2015-06-10', '2015-06-22 11:12:03', '2015-06-09', '2015-06-22', '0615000148', 1, '727876/62015', 'TPP 12/06/15 A LAS 9:30 H. Mº PAZ MORENO, 685 012 324.', 3, 0, 2, '15/06/2015 14:56\r\n\r\nNos quedamos a la espera de aceptación de prespuesto para la realización de limpieza y vaciado. Se han cambiado dos cerraduras, una de la puerta principal y otra de la puerta de cancela.', NULL, 'parte_llaves_aktua_banesto'),
(258, 15, '2015-06-10', '2015-07-10 07:30:13', '2015-06-09', '2015-06-26', '0615000149', 1, '727815/62015', 'TPJ 15/06/15 A LAS 12 H. PROCURADOR, FCO. TORTELLA TUGORES 971460202.', 3, 0, 2, NULL, NULL, 'parte_llaves_aktua_banesto'),
(259, 15, '2015-06-10', '2015-06-10 10:04:14', '2015-06-10', NULL, '0615000150', 1, '728051/62015', 'DESCERRAJE INSTALACIÓN DE CERRADURA. BYM SERVICIOS INMOBILIARIOS, 677379644.', 3, 0, 1, NULL, NULL, NULL),
(260, 15, '2015-06-10', '2015-06-10 10:11:17', '2015-01-30', '2015-06-09', '0615000151', 1, '643879/12015', 'ESTUDIOS PARA LA JUESTIFICACIÓN DE LOS EQUIPOS DE CLIMA INSTALADOS EN PLUS ULTRA.', 3, 0, 2, NULL, NULL, NULL),
(261, 15, '2015-06-10', '2015-06-10 10:15:18', '2015-01-28', '2015-01-29', '0615000152', 1, '642003/12015', 'SE CAEN LAS BALDOSAS DE LA GALERÍA, ENVIAR PRESUPUESTO. FINCAS FIOL 609980500.', 3, 0, 2, NULL, NULL, NULL),
(262, 15, '2015-06-10', '2015-06-10 10:26:51', '2015-01-28', NULL, '0615000153', 1, '641983/12015', 'HACER COPIAS DE LLAVES DE ENTRADA Y ASCENSOR. FINCAS FIOL, 609980500.', 3, 0, 1, NULL, NULL, NULL),
(263, 15, '2015-06-10', '2015-06-10 10:32:18', '2015-01-27', '2015-03-20', '0615000154', 1, '641116/12015', 'TPJ 20/03/15 A LAS 10 H.RIBOT BINIMELIS FRANCESCA, 606597769.', 3, 0, 0, 'LANZAMIENTO SUSPENDIDO POR SER UN SOLAR.', NULL, NULL),
(264, 15, '2015-06-10', '2015-06-10 10:37:43', '2015-01-23', '2015-01-24', '0615000155', 1, '638538/12015', 'HUMEDADES EN EL TECHO DE LA VIVIENDA. ANTONIO GALMÉS 616469393.', 3, 0, 2, 'FACTURA VISITA Y YA ESTÁ, NO SE HIZO NADA.', NULL, NULL),
(265, 15, '2015-06-10', '2015-06-10 10:52:08', '2015-01-22', '2015-02-06', '0615000156', 1, '638263/12015', 'DAC 27/01/15 A LAS 10 H.NOTARÍA DE ARTÁ.', 3, 0, 2, NULL, NULL, NULL),
(266, 15, '2015-06-10', '2015-06-10 10:56:11', '2015-02-19', '2015-03-03', '0615000157', 1, '637829/12015', 'TIENE TODAS LAS TUBERÍAS CON CEMENTO. API ACTIVUM 680599699.', 3, 0, 2, NULL, NULL, NULL),
(267, 15, '2015-06-10', '2015-06-10 11:01:22', '2015-01-21', '2015-02-05', '0615000158', 1, '636990/12015', 'OBTENCIÓN MANDO DE GARAJE. NO HAY API.', 3, 0, 2, 'EL IMPORTE LO TENÍA QUE PASAR A OTRO PARTE.', NULL, NULL),
(268, 15, '2015-06-10', '2015-06-10 11:17:52', '2015-02-13', '2015-03-11', '0615000159', 1, '635554/12015', 'TPP 21/01/15 A LAS 10 H. ENSEÑAT PALMER 675922866.', 3, 0, 2, NULL, NULL, NULL),
(269, 15, '2015-06-10', '2015-06-10 11:21:48', '2014-12-29', '2015-06-10', '0615000160', 1, '623545/122014', 'NO HAY LUZ EN LA ENTRADA. EDIFICIO DE OFICINAS. MAR LLABRÉS 871962450.', 3, 0, 2, NULL, NULL, NULL),
(270, 15, '2015-06-10', '2015-07-13 11:57:32', '2015-05-28', '2015-07-13', '0615000161', 1, '720336/52015', 'SE LE HA DESPEGADO EL ZÓCALO QUE LE PUSIMOS. MARGARITA GELABERT 656783422.', 3, 0, 2, 'ESTE PARTE VA LIGADO AL 693873.\r\nNUEVA CITA 17/06 A LAS 17 H.', NULL, NULL),
(272, 15, '2015-06-11', '2015-06-11 07:38:54', '2015-03-27', '2015-06-10', '0615000162', 1, '682372/32015', 'MONTAR 5 MUEBLES NUEVOS EN KIT COLGAR, 2 PERCHEROS CAMBIAR VARIOS APLIQUES.', 3, 0, 2, NULL, NULL, NULL),
(273, 15, '2015-06-11', '2015-06-11 07:41:46', '2015-05-19', '2015-06-10', '0615000163', 1, '714601/52015', 'LLAMAN DEL HOTEL COLINDANTE PARA LIMPIAR TERRAZA. FINCAS FIOL, 692644739.', 3, 0, 2, NULL, NULL, NULL),
(274, 15, '2015-06-11', '2015-06-11 07:59:00', '2015-04-21', '2015-06-10', '0615000164', 1, '694629/42015', 'SE HA ROTO EL FREGADERO DE LA COCINA DE LOZA. MARÍA VICENS 971769177.', 3, 0, 2, NULL, NULL, NULL),
(275, 15, '2015-06-11', '2015-06-11 08:02:56', '2015-04-22', '2015-06-10', '0615000165', 1, '697208/42015', 'ROTURA LOZA SANITARIA INODORO DE COLOR.626369628 / 670597045.', 3, 0, 2, NULL, NULL, NULL),
(276, 15, '2015-06-11', '2015-06-11 08:23:16', '2015-04-28', '2015-06-10', '0615000166', 1, '702041/42015', 'POSIBLE ROTURA BAJANTE, CAUSA DAÑOS DE HUMEDAD EN EL 4º A DE LIBERTAD 4.65262601', 3, 0, 2, NULL, NULL, NULL),
(277, 15, '2015-06-11', '2015-06-11 08:25:26', '2015-04-08', '2015-06-10', '0615000167', 1, '688073/42015', 'NO SALE AGUA FRÍA Y LA CISTERNA PIERDE AGUA. NANCY ARISTIZABAL 676844503.', 3, 0, 2, NULL, NULL, NULL),
(278, 15, '2015-06-11', '2015-06-11 08:27:44', '2015-03-26', '2015-06-10', '0615000168', 1, '681831/32015', 'MIRAR SI ESTÁ OCUPADO EL INMUEBLE, Y SI TODO EL EDIFICIO ESTÁ OCUPADO INDICARLO.', 3, 0, 2, NULL, NULL, NULL),
(279, 15, '2015-06-11', '2015-06-11 08:48:13', '2015-06-04', '2015-06-11', '0615000169', 1, '725131/62015', 'LA LLAVE NO ENCAJA EN EL COMBÍN, RECOGER TODOS LOS JUEGOS Y HACER COMPROBACIÓN. ACTUAR SI ES PRECISO.', 3, 0, 2, '-LLAVES NO FUNCIONAN.\r\n- SEGÚN EL VECINO HABÍA OCUPACIÓN ILIGAL.\r\n- NO LLAVES COMUNES.', NULL, NULL),
(280, 15, '2015-06-11', '2015-06-23 09:29:35', '2015-06-04', '2015-06-18', '0615000170', 1, '725122/62015', 'CONSEGUIR LLAVES GARAJE. ADMINISTRADOR: GENIUS ASESORES 971436589.', 3, 0, 2, '- RECOGER LLAVE COMÚN EN: C/ VÍA ASIMA, 20 DCHO 3 (GENIUS).\r\n-MANDO GARAJE, JMA C/ SAN FCO. SALES, 28.  971 755 578\r\n.- 22/06 SE HA DEVUELTO LLAVE A GENIUS.', NULL, 'parte_llaves_assista'),
(281, 15, '2015-06-11', '2015-06-11 10:45:44', '2015-06-11', '2015-06-11', '0615000171', 1, '728898/62015', 'AL API LE FALTA UNA LLAVE, HAY QUE CONSEGUIRLA. ADMINISTRADOR; 971 228224.  FINCAS FIOL: 692644739', 3, 0, 2, NULL, NULL, 'parte_llaves_aktua_banesto'),
(282, 15, '2015-06-11', '2015-06-11 10:07:02', '2015-05-21', NULL, '0615000172', 1, '716300/52015', 'LIMPIAR VIVIENDA, ESTÁ LLENO DE COLCHONES, HABITACIÓN LLENA DE HECES TAPADAS CON ARENA Y UNA HABITACIÓN QUE NO SE HA PODIDO ENTRAR.', 3, 0, 1, NULL, NULL, NULL),
(283, 15, '2015-06-12', '2015-06-19 11:19:35', '2015-06-11', '2015-06-18', '0615000173', 1, '729168/62015', 'TPJ 18/06/15 A LAS 11 H. ANTONIO  BUADES 626099976.', 3, 0, 2, '17/06/2015 22:39\r\n\r\nSe asigna este servicio a carlos mediante mail.', NULL, 'parte_llaves_aktua_banesto'),
(284, 15, '2015-06-12', '2015-06-29 08:25:33', '2015-06-12', '2015-06-25', '0615000174', 1, '729671/62015', 'DAC 16/06 A LAS 11 H. NOTARÍA DE ARTÁ.', 3, 0, 2, 'Telefono de contacto del deudor Sr. Jorge 674285697', NULL, NULL),
(285, 15, '2015-06-12', '2015-06-29 08:24:41', '2015-06-12', '2015-06-25', '0615000175', 1, '729664/62015', 'DAC 19/06/15 A LAS 11 H. EN NOTARÍA DE ARTÁ.', 3, 0, 2, 'Teléfono de contacto del deudor Sr. Jorge 674285697', NULL, NULL),
(286, 15, '2015-06-12', '2015-06-19 10:32:05', '2015-06-11', NULL, '0615000176', 1, '728828/62015', 'DESCERRAJE FINCA, EN CASO DE ESTRA OCUPADA EMITIR INFORME . AGENTE: VIRGINIA LIZ 685613858.', 3, 0, 0, NULL, NULL, 'parte_llaves_aktua_banesto'),
(287, 15, '2015-06-12', '2015-06-19 11:18:35', '2015-06-12', '2015-06-18', '0615000177', 1, '729774/62015', 'DESCERRAJAR FINCA. API: PISOS SA POBLA S.L. 664442201.', 3, 0, 2, NULL, NULL, 'assista'),
(288, 15, '2015-06-12', '2015-06-12 09:39:04', '2015-06-11', NULL, '0615000178', 1, '644587/22015', 'COLOCAR CARTEL EN SOLAR + PTO. DE VACIADO DE CASETA DEL SOLAR. NOA HAY QUE RECOGER LLAVES.', 3, 0, 1, NULL, NULL, NULL),
(289, 15, '2015-06-12', '2015-06-12 09:46:00', '2015-06-11', NULL, '0615000179', 1, '729459/62015', 'VALLADO SOLAR.', 3, 0, 1, 'LOS PARTE 729459 Y 644587 VAN LIGADOS, EN UNO SE TIENE QUE COLOCAR CARTEL Y VACIAR Y EN EL OTRO HACER EL VALLADO DEL SOLAR. NO SE NECESITAN LLAVES.', NULL, NULL),
(290, 15, '2015-06-12', '2015-06-12 09:57:00', '2015-05-19', '2015-06-11', '0615000180', 1, '714665/52015', 'AL LOCAL DE ABAJO LE ESTÁ CAYENDO AGUA. JORDI HIJA 692069700 Y 653670594.', 3, 0, 2, NULL, NULL, NULL),
(291, 15, '2015-06-12', '2015-06-12 10:31:11', '2015-02-10', '2015-06-12', '0615000181', 1, '629699/12015', 'TPJ 12/03/15 A LASM 11 H.', 3, 0, 2, NULL, NULL, NULL),
(292, 15, '2015-06-12', '2015-06-12 10:37:01', '2015-05-22', '2015-06-12', '0615000182', 1, '717219/52015', 'DEJAR ACCESOS SEGUROS Y OPERATIVOS.', 3, 0, 2, NULL, NULL, NULL),
(293, 15, '2015-06-12', '2015-06-15 09:48:47', '2015-06-12', '2015-06-15', '0615000183', 1, '729897/62015', 'RETIRAR RÓTULOS DE LA VIVENDA, QUE EL API NOS EXPLIQUE EN QUÉ CONSISTE. ACTIVUM 692207439.', 3, 0, 2, 'NO HAY PARTE DE LLAVES YA QUE SE HIZO EL TRABAJO SIN ELLAS.', NULL, NULL),
(294, 15, '2015-06-12', '2015-06-16 07:21:34', '2015-06-12', '2015-06-16', '0615000184', 1, '729913/62015', 'RETIRAR RÓTULO DE LA VIVENDA, QUE EL API NOS EXPLIQUE EN QUÉ CONSISTE. ACTIVUM 692207439.', 3, 0, 2, NULL, NULL, NULL),
(295, 15, '2015-06-15', '2015-07-09 09:30:34', '2015-06-12', NULL, '0615000185', 1, '730124/62015', 'SUSTITUIR CANDADO EXTERIOR, REPONER REJILLA DE LA PUERTA. VACIAR Y LIMPIAR.', 3, 0, 1, 'PARTE RELACIONADO CON 726497.\r\nref.catastral 07027A001000630000xy\r\n\r\nLa compañía dice que el inmueble no está ocupado. Si no lo está realizar descerraje y mandar presupuesto.\r\n\r\n09/07 presupuesto aceptado.', NULL, 'assista'),
(296, 15, '2015-06-15', '2015-07-03 08:20:15', '2015-06-11', '2015-07-02', '0615000186', 1, '729249/62015', 'ACUDIR AL INMUEBLE Y ASEGURARLO.', 3, 0, 2, 'VAMOS A COMPROBAR LAS LLAVES Y A HACER FOTOGRAFÍAS INICIAES.\r\n\r\nNO SE TENÍA QUE HACER LIMPIEZA Y VACIADO.', NULL, 'sabadell_template'),
(297, 15, '2015-06-15', '2015-06-25 09:20:16', '2015-06-12', '2015-06-24', '0615000187', 1, '730297/62015', 'TPJ 18/06/15 A LAS 12 H. PROCURADOR: JUAN NAVARRO 609173341.', 3, 0, 2, NULL, NULL, 'parte_llaves_aktua_banesto'),
(298, 15, '2015-06-15', '2015-07-02 09:45:21', '2015-06-15', NULL, '0615000188', 1, '730254/62015', 'REVISAR INCIDENCIAS QUE TIENE EL INQUILINO. PORTERO AUTOMÁTICO, ACCESOS AZOTEA, MADERA DE LAVAVAJILLAS...', 3, 0, 1, '02/07 NO LOCALIZAMOS A MIGUEL ROCA (INQUILINO).', NULL, NULL),
(299, 15, '2015-06-15', '2015-07-10 08:49:07', '2015-06-15', '2015-07-02', '0615000189', 1, '714065/52015', 'REALIZAR LIMPIEZA-DESINF.-VACIADO.', 3, 0, 2, '15/06 ROBERTO TIENE QUE TRAER LAS LLAVES.\r\n16/06 LASLLAVES ESTÁN EN EL PLÁSTICO JUNTO CON EL PARTE.', NULL, 'parte_llaves_aktua_banesto'),
(300, 15, '2015-06-15', '2015-07-01 09:33:17', '2015-06-12', '2015-07-01', '0615000190', 1, '730332/62015', 'CONTACTAR CON EL ADM. PARA SOLICITAR LLAVES COMUNITARIAS DEL PORTAL, ACCESOS COMUNES, GARAJE, ACCESO PEATONAL Y MANDO SI FUERA NECESARIO.', 3, 0, 2, NULL, NULL, 'parte_llaves_aktua_banesto'),
(301, 15, '2015-06-16', '2015-06-16 08:27:55', '2015-04-20', NULL, '0615000191', 1, '681180/32015', 'DESTAPIAR Y REALIZRA FOTOS, VACIADO Y LIMPIEZA. VOLVER A TAPIAR EN EL MOMENTO QUE SE FINALICE EL VACIADO/LIMPIEZA.', 3, 0, 1, NULL, NULL, NULL),
(302, 15, '2015-06-16', '2015-06-16 08:38:16', '2015-02-19', '2015-06-10', '0615000192', 1, '658283/22015', 'CAMBIO DE CERRADURA. QUEDARNOS UNA COPIA Y EL RESTO ENTREGARLAS AL CONTACTO.', 3, 0, 2, NULL, NULL, NULL),
(303, 15, '2015-06-16', '2015-06-16 08:55:49', '2015-02-13', '2015-06-16', '0615000193', 1, '654271/22015', 'ATASCO Y DOS PINOS QUE ESTÁN A PUNTO DE CAER.', 3, 0, 2, NULL, NULL, NULL),
(304, 15, '2015-06-16', '2015-06-16 09:03:19', '2015-02-13', '2015-06-16', '0615000194', 1, '629693/12015', 'COMPROBACIÓN DE OCUPAS. ASEGURAR PUERTA.', 3, 0, 2, NULL, NULL, NULL),
(305, 15, '2015-06-16', '2015-06-16 09:24:11', '2015-02-18', '2015-06-16', '0615000195', 1, '611600/122014', 'RECOGER LLAVES EN FORT D L''EAU, 24 LOCAL 971352231, REALIZAR EL PACK DE DACIÓN. CAMBIO DE CERRADURA, LIMPIEZA Y VACIADO.', 3, 0, 2, NULL, NULL, NULL),
(306, 15, '2015-06-18', '2015-06-19 10:58:46', '2015-02-10', '2015-06-19', '0615000196', 1, '632704/12015', 'TPJ 17/2 A LAS 10.', 3, 0, 2, NULL, NULL, 'sabadell_template'),
(307, 15, '2015-06-18', '2015-07-03 09:11:28', '2015-06-17', NULL, '0615000197', 1, '733207/62015', 'DAC 26/06 A LAS 10 H. PASSEIG DEL BORN 23.', 3, 0, 1, '03/07/2015 11:10\r\n\r\n\r\nSe han cambiado 5 cerraduras, 4 bombillos normales gama media y uno de puerta de garaje. Estamos pendientes de recibir la k y la asignacion de api', NULL, 'parte_llaves_aktua_banesto'),
(308, 15, '2015-06-19', '2015-06-19 09:25:18', '2015-06-18', NULL, '0615000198', 1, '734037/62015', 'TPJ 06/07 A LAS 12 H. PROCURADOR: ANA MARÍA CRESPÍ, 971 495919.', 3, 0, 1, NULL, NULL, NULL),
(309, 15, '2015-06-19', '2015-06-29 08:55:55', '2015-04-07', '2015-06-25', '0615000199', 1, '686711/42015', 'ROTURA DE TUBERÍA, AFECTANDO A LA VIVIENDA INFERIOR, HAN CORTADO LLAVE DE PASO. POR LA ZONA DE LA COCINA. 606108326.', 3, 0, 2, NULL, NULL, 'assista'),
(310, 15, '2015-06-19', '2015-07-13 10:39:05', '2015-06-19', '2015-07-13', '0615000200', 1, '734429/62015', 'DAC 25/06 A LAS 9:30 H. PASAJE CALA MORLANDA Nº8.', 3, 0, 2, NULL, NULL, 'parte_llaves_aktua_banesto'),
(311, 15, '2015-06-19', '2015-06-29 08:57:49', '2015-06-19', '2015-06-25', '0615000201', 1, '734460/62015', 'DESCERRAJAR EL TRASTERO. TIENE TRASTERO ASOCIADO.', 3, 0, 2, NULL, NULL, 'assista'),
(313, 15, '2015-06-19', '2015-07-02 10:31:27', '2015-06-19', NULL, '0615000202', 1, '734563/62015', 'LIMPIEZA Y RETIRADA DE MUEBLES Y ENSERES. ', 3, 0, 1, '30/06/2015\r\n\r\nTras varios intentos para conseguir las llaves que tiene el api y no ser posible se informa en la plataforma, mañana volvemos a informar.\r\n\r\n\r\n01/07 \r\n\r\nEL API NOS TIENE QUE DEJAR LAS LLAVES EN RECEPCIÓN.\r\n\r\n02/07\r\nESTAMOS A LA ESPERA DE RECIBIR LAS LLAVES, HOY LAS TRAERÁ.', NULL, NULL),
(314, 15, '2015-06-19', '2015-07-14 07:37:30', '2015-03-30', '2015-07-13', '0615000203', 1, '683867/32015', 'DESALOJO PACTADO 31/03/15 A LAS 10:30 H. RETIRAR ENSERES, DESCERRAJE.', 3, 0, 2, '16/06 SE HA PASADO SERVICIO URGENTE PARA ASEGURAR VIVIENDA.', NULL, 'sabadell_template'),
(315, 15, '2015-06-19', '2015-06-30 11:54:42', '2015-06-19', '2015-06-25', '0615000204', 1, '734538/62015', 'EVACUACIÓN AGUA PISCINA POR MOSQUITOS Y MAL OLOR. CELIA PONS 606321842.', 3, 0, 2, NULL, NULL, 'sabadell_template'),
(316, 15, '2015-06-22', '2015-07-15 07:20:44', '2015-06-19', '2015-07-14', '0615000205', 1, '734875/62015', 'DAC 25/06 A LAS 12 H.', 3, 0, 2, NULL, NULL, 'parte_llaves_aktua_banesto'),
(317, 15, '2015-06-22', '2015-06-22 08:35:16', '2015-06-19', NULL, '0615000206', 1, '734874/62015', 'DAC 25/06 A LAS 12 H. NOTARÍA C/ BISBE LLOMPART, 133 INCA ', 3, 0, 1, NULL, NULL, NULL),
(318, 15, '2015-06-22', '2015-06-22 08:39:06', '2015-06-19', NULL, '0615000207', 1, '734808/62015', 'DAC 26/06 A LAS 12 H.', 3, 0, 1, NULL, NULL, NULL);
INSERT INTO `llx_projet` (`rowid`, `fk_soc`, `datec`, `tms`, `dateo`, `datee`, `ref`, `entity`, `title`, `description`, `fk_user_creat`, `public`, `fk_statut`, `note_private`, `note_public`, `model_pdf`) VALUES
(319, 15, '2015-06-22', '2015-07-13 07:36:39', '2015-06-19', '2015-07-13', '0615000208', 1, '734911/62015', 'TPJ 23/06 A LAS 9:30 H.PROCURADOR: 609687999. PTO. DE LIMPIEZA Y VACIADO.', 3, 0, 2, 'NULO', NULL, NULL),
(320, 15, '2015-06-22', '2015-06-22 11:23:22', '2015-04-18', '2015-06-19', '0615000209', 1, '694342/42015', 'POSIBLE ROTURA EN TUBERÍA EN LA ZONA DEL BAÑO.', 3, 0, 2, NULL, NULL, NULL),
(321, 15, '2015-06-22', '2015-06-22 11:38:32', '2015-04-28', '2015-05-06', '0615000210', 1, '701689/42015', 'TPJ 06/05 A LAS 11 H. PROCURADOR: MARINA DEL PILAR PERELLÓ, 971845464.', 3, 0, 2, 'TOMA SUSPENDIDA.', NULL, NULL),
(322, 15, '2015-06-23', '2015-06-23 08:36:37', '2015-02-09', NULL, '0615000211', 1, '651192/22015', 'SE HAN PRODUCIDO FILTRACIONES APARENTEMENTE POR AGUA DE LLUVIA QUE PROVOCAN DAÑOS DE HUMEDAD.', 3, 0, 1, NULL, NULL, NULL),
(323, 15, '2015-06-23', '2015-06-23 08:58:25', '2015-05-26', '2015-06-18', '0615000212', 1, '719012/52015', 'ACUDIR AL INMUEBLE Y DEJARLO ASEGURADO. ADM. YOLANDA 971 366969.', 3, 0, 2, NULL, NULL, NULL),
(324, 15, '2015-06-23', '2015-06-23 09:06:42', '2015-05-13', '2015-06-12', '0615000213', 1, '705951/52015', 'LIMPIEZA BÁSICA Y RETIRADA DE ENSERES, EL MOBILIARIO EN BUEBNESTADO SE DEJA.', 3, 0, 2, NULL, NULL, NULL),
(325, 15, '2015-06-23', '2015-06-23 09:26:43', '2015-05-20', '2015-06-17', '0615000214', 1, '715594/52015', 'SALE AGUA DE UNA TUBERÍA, SE HA ROTO POR LA PARED.', 3, 0, 2, NULL, NULL, NULL),
(326, 15, '2015-06-23', '2015-07-10 08:50:34', '2015-06-23', '2015-07-02', '0615000215', 1, '736430/62015', 'TPP 24/06 A LAS 11 H. Mª PAZ MORENO 685012324.', 3, 0, 2, '03/07 hemos ido a buscar las llaves a AKTUA y se las entregamos a Rolando.\r\nLe hemos entregado una copia a Rolando, tenemos 2 más en el plástico junto con el parte.\r\n07/07 Rolando nos ha hecho entrega de las llaves y nos ha añadido una que es la del trastero.', NULL, 'parte_llaves_aktua_banesto'),
(327, 15, '2015-06-23', '2015-07-13 09:43:38', '2015-06-23', NULL, '0615000216', 1, '723213/62015', 'TPJ 09/07 A LAS 9:30 H. PROCURADOR: JAUME 699746573.', 3, 0, 1, '13/07/2015 a las 11:43\r\n\r\nLa presidenta de la comunidad es Margarita Petro y su teléfono es el 606 073 509', NULL, 'parte_llaves_aktua_banesto'),
(328, 15, '2015-06-23', '2015-07-15 07:47:28', '2015-06-22', '2015-07-14', '0615000217', 1, '735752/62015', 'DAC 25/06 A LAS 12 H. NOTARÍA ANTICH.', 3, 0, 2, NULL, NULL, 'parte_llaves_aktua_banesto'),
(329, 15, '2015-06-23', '2015-06-23 11:04:07', '2015-06-23', NULL, '0615000218', 1, '736144/62015', 'CONSEGUIR LLAVES COMUNITARIAS DEL PORTAL ACCESOS COMUNES, GARAJE, ACCESO PEATONAL YMANDO SI FUERA EL CASO.', 3, 0, 1, NULL, NULL, NULL),
(330, 15, '2015-06-23', '2015-06-23 11:08:53', '2015-06-23', NULL, '0615000219', 1, '736145/62015', 'CONSEGUIR LLAVES COMUNITARIAS DEL PORTAL, ACCESOS COMUNES, GARAJE, ACCESO PEATONAL Y MANDO.', 3, 0, 1, NULL, NULL, NULL),
(332, 15, '2015-06-23', '2015-06-30 11:55:41', '2015-06-23', '2015-06-25', '0615000220', 1, '736455/62015', 'COMO CONSECUENCIA DE UN POSIBLE ESCAPE EN LA COMETIDA DESE EL CONTADOR A LA VIVIENDA SALE MUCHA AGUA.', 3, 0, 2, NULL, NULL, 'assista'),
(334, 15, '2015-06-23', '2015-06-23 13:40:40', '2015-06-23', NULL, '0615000221', 1, '736679/62015', 'Problemas indicados por el cliente: OTROS: Otros (termo) ; VISITAR Y VER CUAL ES EL PROBLEMA, INFORMAR Y PASAR PRESUPUESTO, HACER FOTOS.', 3, 0, 1, NULL, NULL, 'assista'),
(336, 15, '2015-06-24', '2015-06-24 11:29:36', '2015-06-23', NULL, '0615000222', 1, '736233/62015', 'RECOGER MANDO , Mº ANTONIA 971 145649 Y ENTREGAR AL API.', 3, 0, 1, NULL, NULL, NULL),
(337, 15, '2015-06-24', '2015-06-24 11:31:55', '2015-06-23', NULL, '0615000223', 1, '736149/62015', 'RECOGER MANDO Mª ANTONIA 971 145649 Y ENTREGARLO AL API.', 3, 0, 1, NULL, NULL, NULL),
(338, 15, '2015-06-24', '2015-06-24 11:33:41', '2015-06-23', NULL, '0615000224', 1, '736236/62015', 'RECOGER MANDO Mª ANTONIA 971 145649 Y ENTREGAR AL API.', 3, 0, 1, NULL, NULL, NULL),
(339, 15, '2015-06-24', '2015-06-24 11:40:54', '2015-06-23', NULL, '0615000225', 1, '736236/62015', 'RECOGER MANDO Mª ANTONIA 971 145649 Y ENTREGAR AL API.', 3, 0, 1, NULL, NULL, NULL),
(340, 15, '2015-06-25', '2015-06-25 07:54:09', '2015-06-23', NULL, '0615000226', 1, '736240/62015', 'RECOGER EL MANDO A Mª ANTONIA 971 145649 Y ENTREGARLO AL API.', 3, 0, 1, NULL, NULL, NULL),
(341, 15, '2015-06-25', '2015-06-25 07:56:07', '2015-06-23', NULL, '0615000227', 1, '736241/62015', 'RECOGER LLAVES A Mª ANTONIA 971 145649 Y ENTREGARLAS AL API.', 3, 0, 1, NULL, NULL, NULL),
(342, 15, '2015-06-25', '2015-06-25 08:01:50', '2015-06-23', NULL, '0615000228', 1, '736243/62015', 'RECOGER LLAVES A Mª ANTONIA 971 145649 Y ENTREGARLAS AL API.', 3, 0, 1, NULL, NULL, NULL),
(344, 15, '2015-06-25', '2015-06-25 08:03:47', '2015-06-23', NULL, '0615000229', 1, '736148/62015', 'RECOGER MANDO Mª ANTONIA 971 145649 Y ENTREGARLO AL API.', 3, 0, 1, NULL, NULL, NULL),
(345, 15, '2015-06-25', '2015-07-15 11:33:17', '2015-06-23', NULL, '0615000230', 1, '736147/62015', 'RECOGER LAS LLAVES A Mª ANTONIA 971 145649 Y ENTREGARLAS AL API.', 3, 0, 1, '15/07 la tramitadora todavía está pendiente de la compañía. ', NULL, NULL),
(346, 15, '2015-06-25', '2015-06-25 08:09:42', '2015-06-23', NULL, '0615000231', 1, '736146/62015', 'RECOGER EL MANDO A Mª ANTONIA 971 145649 Y ENTREGARLO AL API.', 3, 0, 1, NULL, NULL, NULL),
(347, 15, '2015-06-25', '2015-06-25 08:12:55', '2015-06-24', NULL, '0615000232', 1, '716195/52015', 'TPJ 30/06 A LAS 12 H. PROCURADOR: CARMEN SERRA, 971 507378.', 3, 0, 1, NULL, NULL, NULL),
(348, 15, '2015-06-25', '2015-06-25 08:20:40', '2015-06-24', NULL, '0615000233', 1, '737026/62015', 'DAC 30/06 A LAS 11 H. VISITA PREVIA MISMO DÍA A LAS 9. ARISTIDES 604146508.', 3, 0, 1, NULL, NULL, NULL),
(349, 15, '2015-06-25', '2015-06-29 07:59:37', '2015-05-04', '2015-06-26', '0615000234', 1, '698032/42015', 'TPJ 08/05 A LAS 9:30 H.MARIA DEL CARMEN, 971 228620.', 3, 0, 2, NULL, NULL, 'sabadell_template'),
(350, 15, '2015-06-25', '2015-07-03 08:17:13', '2015-06-24', '2015-07-02', '0615000235', 1, '737285/62015', 'HAY CANDADO EN LA PUERTA DE LA CALLE, PUERTA PRINCIPAL BLOQUEADA Y SIN MANETA.', 3, 0, 2, '01/07 FUERON AL INMUEBEL, NO SE CAMBIÓ LA CERRADURA YA QUE CON UNOS ALICATES SE PUDO ABRIR.', NULL, NULL),
(351, 15, '2015-06-25', '2015-06-25 08:58:45', '2015-04-20', '2015-06-24', '0615000236', 1, '694690/42015', 'CABEZAL SALIDA CHIMENEA TERRAZA COMUNIDAD SE HA DESPRENDIDO.', 3, 0, 2, NULL, NULL, NULL),
(352, 15, '2015-06-29', '2015-06-29 11:12:02', '2015-04-16', '2015-06-29', '0615000237', 1, '692763/42015', 'MANTENIMIENTO PREVENTIVO MARYPAZ.', 3, 0, 2, NULL, NULL, NULL),
(353, 15, '2015-06-29', '2015-06-29 11:15:01', '2015-04-16', '2015-06-29', '0615000238', 1, '692783/42015', 'MANTENIMIENTO PREVENTIVO. SOPORTE EXTINTOR HAY QUE REPARARLO.', 3, 0, 2, NULL, NULL, NULL),
(354, 15, '2015-06-29', '2015-06-29 11:21:57', '2015-05-17', '2015-06-29', '0615000239', 1, '713179/52015', 'ROTURA DE TUBERÍA PROVOCA DAÑOS.', 3, 0, 2, NULL, NULL, NULL),
(355, 15, '2015-06-30', '2015-06-30 07:12:16', '2015-06-29', NULL, '0615000240', 1, '740273/62015', 'TPJ 30/06 A LAS 11:30 H. PROCURADOR: FCO. TORTELLA 610092229.', 3, 0, 1, NULL, NULL, 'parte_llaves_aktua_banesto'),
(356, 15, '2015-06-30', '2015-06-30 07:15:28', '2015-06-29', NULL, '0615000241', 1, '577165/102014', 'HACER DESBROCE Y VALLADO. VERIFICAR QUE EL VALLADO ES SÓLO DEL SOLAR SEGÚN CATASTRO.', 3, 0, 1, NULL, NULL, NULL),
(357, 15, '2015-06-30', '2015-07-03 08:12:44', '2015-06-29', '2015-07-02', '0615000242', 1, '740181/62015', 'ASEGURAR VIVIENDA.', 3, 0, 2, NULL, NULL, 'parte_llaves_aktua_banesto'),
(358, 15, '2015-07-02', '2015-07-06 09:06:43', '2015-07-01', '2015-07-03', '0715000243', 1, '742059/72015', 'SUSTITUCIÓN CERRADURA PUERTA ACCESO VIVIENDA Y TRASTERO.', 3, 0, 2, NULL, NULL, 'assista'),
(359, 15, '2015-07-02', '2015-07-02 09:40:49', '2015-07-01', NULL, '0715000244', 1, '702059/72015', 'SUTITUCIÓN CERRADURA PUERTA DE ACESO VIVIENDA Y PUERTA TRASTERO.', 3, 0, 1, NULL, NULL, NULL),
(361, 15, '2015-07-02', '2015-07-14 07:39:26', '2015-05-20', '2015-07-03', '0715000245', 1, '715284/52015', 'LIMPIEZA Y VACIADO.', 3, 0, 2, NULL, NULL, 'parte_llaves_aktua_banesto'),
(362, 15, '2015-07-03', '2015-07-03 09:43:36', '2015-03-06', '2015-07-03', '0715000246', 1, '661543/22015', 'TAPIADO DE LAS 2 PUERTAS DEL PATIO INTERIOR QUE COMUNICAN LA VIVIENDA.', 3, 0, 2, '03/07 Dolores (AKTUA) se ha quedado también las llaves del API.', NULL, 'parte_llaves_aktua_banesto'),
(364, 15, '2015-07-03', '2015-07-15 08:16:08', '2015-03-27', '2015-07-02', '0715000247', 1, '682963/32015', 'HAY FILTRACIONES DE AGUA QUE AFECTAN AL VECINO DE ABAJO.', 3, 0, 1, '08/07 HAY QUE VOLVER AL PISO DEL BANCO, ARREGLAR EL PROBLEMA DE LAS FILTRACIONES. PABLO FUÉ Y DICE QUE VIENEN DEL TIRO DE LA CHIMENEA, HAY QUE COLOCAR EL CAPUCHÓN Y PASAR LO QUE VALE. TAMBIÉN TENEMOS QUE HACER FOTOS DE TODAS LAS ESTANCIAS Y MANDARLAS.\r\n\r\n15/7/2015 10:15\r\n\r\nNos ponemos en contacto con el sr Torres y nos indica que las llaves las tiene en la oficina del banco de popular de la plaza españa, 1\r\n\r\n', NULL, NULL),
(365, 15, '2015-07-06', '2015-07-10 08:49:42', '2015-07-06', '2015-07-08', '0715000248', 1, '744564/72015', 'TPJ 07/07 A LAS 10 H. PROCURADOR; FCO. TORTELLA 971 460 202', 3, 0, 2, NULL, NULL, 'assista'),
(366, 15, '2015-07-06', '2015-07-13 10:37:20', '2015-07-06', '2015-07-13', '0715000249', 1, '745006/72015', 'CERRAR VENTANAS DE PROPIEDAD. CONTACTAR CON API FINCAS FIOL.', 3, 0, 2, NULL, NULL, 'parte_llaves_aktua_banesto'),
(367, 15, '2015-07-06', '2015-07-07 10:29:59', '2015-07-06', NULL, '0715000250', 1, '740179/62015', 'TPJ 08/07 A LAS 9:30 H. PROCURADOR, JUAN FCO. BESTARD, 609602020. Visita previa para mirar cerraduras.', 3, 0, 1, 'Hay viviendas y trasteros.\r\n\r\nIndica que las cerraduras de las viviendas son DIARRE y, que hay que colocar la misma… me indica que son unos 300 € cada una…. \r\n', NULL, 'sabadell_template'),
(368, 15, '2015-07-06', '2015-07-06 10:28:05', '2015-07-06', NULL, '0715000251', 1, '744438/72015', 'RECOGER LLAVES A DIAGONAL GEST, IR CON ADMINISTRADORA AL TRASTERO A ABRIR, ESPERAR QUE TERMINEN REVISIÓN Y CERRAR.', 3, 0, 1, 'HEMOS LLAMADO A LA ADMINISTRADORA PARA CONCERTAR CITA Y NOS HA DICHO QUE LA REVISIÓN DE LOS DETECTORES DE HUMO YA ESTÁ HECHA Y QUE LA PUERTA ESTABA ABIERTA, NO NECEITARON LLAVES PORQUE PUEDE ENTRAR CUALQUIERA.\r\n\r\n06/07 QUEDAMOS A LA ESPERA DE LA TRAMITADORA.', NULL, 'sabadell_template'),
(369, 15, '2015-07-06', '2015-07-07 14:32:46', '2015-06-29', NULL, '0715000252', 1, '739328/62015', 'DAÑOS POR AGUA EN EL LOCAL INFERIOR.', 3, 0, 1, '04/07\r\n\r\n SE FUÉ A LA VIVIENDA Y SE REALIZARON DOS CATAS. NO SE ENCONTRÓ LA FUGA, PODRÍA SER QUE ESTUVIESE DEBAJO DE LA BAÑERA. SE HA PASADO INFORMACIÓN AL TRAMITADOR Y ESTAMOS A LA ESPERA DE NOTICIAS. LAS BALDOSAS DEL BAÑO YA NO SE FABRICAN Y ESTA SEÑORA TIENE CONTRATDO ESTÉTICOS.\r\n\r\n7/07/2015 16:31\r\n\r\nNos facilitan el teléfono del perito que lleva este parte para ponernos en contacto con él para realizar la reparación que parece ser que se está complicando.\r\n\r\nEl teléfono del perito es el 629550992 Sr. Miguel', NULL, NULL),
(370, 15, '2015-07-07', '2015-07-13 09:46:20', '2015-04-30', NULL, '0715000253', 1, '683512/32015', 'TPJ 10/07 A LAS 12 H. PROCURADOR', 3, 0, 1, '13/07/2015 11:46\r\n\r\nToma de posesión suspendida, nos quedamos a la espera de una nueva fecha', NULL, 'sabadell_template'),
(371, 15, '2015-07-07', '2015-07-07 11:56:31', '2015-07-07', NULL, '0715000254', 1, '746955/72015', 'RECOGER TODOS LOS JUEGOS DE LLAVES E IR AL INMUEBLE A REALIZAR COMPROBACIÓN Y ACTUAR SI ES PRECISO.', 3, 0, 1, NULL, NULL, NULL),
(372, 15, '2015-07-08', '2015-07-14 08:03:55', '2015-07-08', '2015-07-13', '0715000255', 1, '747446/72015', 'CAMBIO CERRADURA. CONSEGUIR TELEF. DE ALGÚN VECINO.', 3, 0, 2, 'SERVICIOS REALIZADOS EN EL 735752', NULL, 'assista'),
(374, 15, '2015-07-08', '2015-07-14 07:38:31', '2015-07-08', '2015-07-13', '0715000256', 1, '747445/72015', 'CAMBIO CERRADURA.', 3, 0, 2, 'SERVICIOS REALIZADOS EN EL 735752', NULL, 'assista'),
(375, 15, '2015-07-08', '2015-07-14 08:03:00', '2015-07-08', '2015-07-13', '0715000257', 1, '747444/72015', 'CAMBIO CERRADURA', 3, 0, 2, 'SERVICIOES REALIZADOS EN EL 735752', NULL, 'assista'),
(376, 15, '2015-07-08', '2015-07-14 08:01:11', '2015-07-08', '2015-07-13', '0715000258', 1, '747443/72015', 'CAMBIO CERRADURA', 3, 0, 2, 'SERVICIOS REALIZADOS EN EL 735752.', NULL, 'assista'),
(377, 15, '2015-07-08', '2015-07-15 07:50:23', '2015-07-08', '2015-07-14', '0715000259', 1, '747442/72015', 'CAMBIO CERRADURA', 3, 0, 2, 'SERVICIOS REALIZADOS EN EL 735752', NULL, 'assista'),
(378, 15, '2015-07-08', '2015-07-15 07:52:08', '2015-07-08', '2015-07-14', '0715000260', 1, '747440/72015', 'CAMBIO CERRADURA', 3, 0, 2, 'SERVICIOS REALIZADOS EN EL 735752.', NULL, 'assista'),
(379, 15, '2015-07-08', '2015-07-14 08:00:01', '2015-07-08', '2015-07-13', '0715000261', 1, '747410/72015', 'CAMBIO CERRADURA', 3, 0, 2, 'SERVICIOS REALIZADOS EN EL 735752', NULL, 'assista'),
(380, 15, '2015-07-08', '2015-07-14 08:06:26', '2015-07-08', '2015-07-13', '0715000262', 1, '747409/72015', 'CAMBIO CERRADURA', 3, 0, 2, 'SERVICIOS REALIZADOS EN EL 735752', NULL, 'assista'),
(381, 15, '2015-07-08', '2015-07-15 07:51:19', '2015-07-08', '2015-07-14', '0715000263', 1, '747408/72015', 'CAMBIO CERRADURA', 3, 0, 2, 'SERVICIOS REALIZADOS EN EL 735752', NULL, 'assista'),
(382, 15, '2015-07-08', '2015-07-14 08:02:06', '2015-07-08', '2015-07-13', '0715000264', 1, '747406/72015', 'CAMBIO CERRADURA', 3, 0, 2, 'SERVICIOS REALIZADOS EN EL 735752', NULL, 'assista'),
(383, 15, '2015-07-08', '2015-07-14 07:58:55', '2015-07-08', '2015-07-13', '0715000265', 1, '747405/72015', 'CAMBIO DE CERRADURA', 3, 0, 2, 'SERVICIOS REALIZADOS EN EL 735752', NULL, 'assista'),
(384, 15, '2015-07-08', '2015-07-14 08:05:31', '2015-07-08', '2015-07-13', '0715000266', 1, '747402/72015', 'CAMBIO DE CERRADURA', 3, 0, 2, 'SERVICIOS REALIZADOS EN EL 735752', NULL, 'assista'),
(385, 15, '2015-07-08', '2015-07-14 11:43:38', '2015-07-08', NULL, '0715000267', 1, '747848/72015', 'TPP 15/07 A LAS 19:00 H. Mª PAZ MORENO 685012324', 3, 0, 1, NULL, NULL, 'parte_llaves_aktua_banesto'),
(386, 15, '2015-07-08', '2015-07-08 11:33:09', '2015-07-08', NULL, '0715000268', 1, '747841/72015', 'TPP 09/07 A LAS 10:30 H. Mª PAZ MORENO 685012324', 3, 0, 1, NULL, NULL, 'assista'),
(387, 15, '2015-07-08', '2015-07-08 11:47:31', '2015-07-08', NULL, '0715000269', 1, '747775/72015', 'TPJ 09/07 A LAS 11 H. PROCURADOR: FCO. TORTELLA 971 460202', 3, 0, 1, NULL, NULL, 'assista'),
(388, 15, '2015-07-09', '2015-07-10 11:50:17', '2015-07-09', '2015-07-10', '0715000270', 1, '745946/72015', 'CAMBIO MECANISMO CISTERNA, MATERIAL A SU CARGO.', 3, 0, 2, NULL, NULL, 'assista'),
(389, 15, '2015-07-09', '2015-07-15 08:24:08', '2015-07-09', NULL, '0715000271', 1, '748616/72015', 'ASEGURAR FINCA, COMPROBAR QUE ESTÁ VACÍA, SI ES ASÍ CAMBIO CERRADURA.', 3, 0, 1, NULL, NULL, 'parte_llaves_aktua_banesto'),
(390, 15, '2015-07-10', '2015-07-13 09:50:13', '2015-07-09', NULL, '0715000272', 1, '748931/72015', 'DESCERRAJE.', 3, 0, 1, '13/07/2015 11:49\r\n\r\nSe le ha enviado dos correos solicitándole a la tramitadora la tasación para poder localizar el inmueble.', NULL, 'assista'),
(391, 15, '2015-07-10', '2015-07-10 08:35:38', '2015-07-10', NULL, '0715000273', 1, '749088/72015', 'REVISAR LLAVES, CONTACTAR CON EL API.', 3, 0, 1, NULL, NULL, NULL),
(392, 15, '2015-07-10', '2015-07-10 08:46:26', '2015-06-08', '2015-07-07', '0715000274', 1, '727071/62015', 'ACUDIR VIVIENDA Y DEJAR ACCESOS ASEGURADOS.', 3, 0, 2, NULL, NULL, NULL),
(393, 15, '2015-07-10', '2015-07-15 08:05:18', '2015-07-10', NULL, '0715000275', 1, '749435/72015', 'LIMPIEZA HASA 150 M2, RETIRADA CONTENEDOR 5M3. FINCAS FORCADELL 672490436', 3, 0, 2, 'NULO', NULL, 'assista'),
(394, 15, '2015-07-10', '2015-07-14 07:57:56', '2015-07-10', '2015-07-13', '0715000276', 1, '749480/72015', 'DAC REALIZADA EN PARTE 734875', 3, 0, 2, NULL, NULL, 'parte_llaves_aktua_banesto'),
(395, 15, '2015-07-10', '2015-07-14 07:57:21', '2015-07-10', '2015-07-13', '0715000277', 1, '749478/72015', 'DAC REALIZADA EN SERV. 734875.', 3, 0, 2, NULL, NULL, 'parte_llaves_aktua_banesto'),
(396, 15, '2015-07-10', '2015-07-14 07:56:31', '2015-07-10', '2015-07-13', '0715000278', 1, '749475/72015', 'DAC REALIZADA EN EL SERVICIO 734875.', 3, 0, 2, NULL, NULL, 'parte_llaves_aktua_banesto'),
(398, 15, '2015-07-13', '2015-07-15 07:43:30', '2015-07-10', NULL, '0715000279', 1, '749783/72015', 'SE HA TIRADO LA PUERTA ABAJO PARA OCUPARLO. ACUDIR PARA DEJAR ACCESOS SEGUROS.', 3, 0, 1, '14/07 se ha acudido al inmueble y los vecinos habían puesto un candado para que no entrase ocupación.', NULL, 'assista'),
(399, 15, '2015-07-13', '2015-07-13 07:39:24', '2015-05-12', '2015-07-13', '0715000280', 1, '701313/42015', 'LIMPIEZA Y VACIADO.', 3, 0, 2, NULL, NULL, NULL),
(400, 15, '2015-07-13', '2015-07-13 07:44:25', '2015-05-29', '2015-07-13', '0715000281', 1, '702763/42015', 'DESCERRAJE DE VIVIENDA.', 3, 0, 2, NULL, NULL, NULL),
(401, 15, '2015-07-13', '2015-07-14 09:50:47', '2015-03-03', '2015-07-13', '0715000282', 1, '665929/32015', 'TPJ 16/06 A LAS 11:30 H.', 3, 0, 2, NULL, NULL, 'parte_llaves_aktua_banesto'),
(402, 15, '2015-07-13', '2015-07-14 08:04:42', '2015-02-27', '2015-07-13', '0715000283', 1, '663964/22015', 'CONSEGUIR LLAVES DE ACCESO AL EDIF. Y PARKING.', 3, 0, 2, NULL, NULL, 'parte_llaves_aktua_banesto'),
(403, 15, '2015-07-13', '2015-07-13 11:09:40', '2014-12-29', NULL, '0715000284', 1, '623933/122014', 'RECOGER LLAVES E IR A LA VIVIENDA A COMPROBAR SI HAY AGUA.', 3, 0, 1, NULL, NULL, 'sabadell_template'),
(404, 15, '2015-07-14', '2015-07-14 07:24:08', '2015-07-13', NULL, '0715000285', 1, '750751/72015', 'TPJ 28/07 A LAS 12 H. PROCURADOR: GABRIEL TOMÁS 609.649.224.', 3, 0, 1, NULL, NULL, NULL),
(405, 15, '2015-07-14', '2015-07-14 07:31:13', '2015-07-13', NULL, '0715000286', 1, '750862/72015', 'DESCERRAJE, FOTOS ESTANCIAS Y DATOS COMUNIDAD.', 3, 0, 1, NULL, NULL, NULL),
(406, 15, '2015-07-14', '2015-07-14 07:36:14', '2015-07-08', '2015-07-13', '0715000287', 1, '748245/72015', 'REPARAR PUERTA Y DEJARLO CERRADO.', 3, 0, 2, NULL, NULL, NULL),
(407, 15, '2015-07-14', '2015-07-14 07:43:28', '2015-01-28', '2015-07-13', '0715000288', 1, '641896/12015', 'TPP 30/01 A LAS 12 H.', 3, 0, 2, NULL, NULL, NULL),
(408, 15, '2015-07-14', '2015-07-14 07:55:42', '2015-07-08', '2015-07-13', '0715000289', 1, '748302/72015', 'DESCERRAJE.', 3, 0, 2, 'HAY OCUPACIÓN ILEGAL.', NULL, NULL),
(409, 15, '2015-07-14', '2015-07-14 09:02:50', '2015-01-30', '2015-02-24', '0715000290', 1, '624019/122014', 'REALIZAR CHECK Y LIMPIEZA.', 3, 0, 2, NULL, NULL, NULL),
(410, 15, '2015-07-14', '2015-07-14 11:36:06', '2015-07-14', NULL, '0715000291', 1, '751449/72015', 'LANZAMIENTO 15/07 A LAS 12 H. LIA AMENGUAL, 665.347.462.', 3, 0, 1, NULL, NULL, 'sabadell_template'),
(411, 15, '2015-07-15', '2015-07-15 10:38:57', '2015-07-15', NULL, '0715000292', 1, '740372/62015', 'DESCERRAJE URGENTE Y ENTREGAR LLAVES AL API Y GESTOR.', 3, 0, 1, NULL, NULL, 'assista'),
(412, 15, '2015-07-15', '2015-07-15 10:35:11', '2015-07-15', NULL, '0715000293', 1, '752359/72015', 'DAC 24/07 A LAS 13:00 H. NOTARÍA PASEO DEL BORNE Nº 23.', 3, 0, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_projet_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_projet_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `nom_cli` varchar(255) DEFAULT NULL,
  `ref_K_cli` varchar(255) DEFAULT NULL,
  `macro_cli` varchar(255) DEFAULT NULL,
  `dir_cli` varchar(255) DEFAULT NULL,
  `zipcode_cli` varchar(5) DEFAULT NULL,
  `tel_cli` int(9) DEFAULT NULL,
  `mov_cli` int(9) DEFAULT NULL,
  `prov_cli` text,
  `lc_cli` varchar(255) DEFAULT NULL,
  `ser_cli` text,
  `tra_cli` text,
  `loc_cli` text,
  `dni_cli` varchar(255) DEFAULT NULL,
  `rc_cli` varchar(255) DEFAULT NULL,
  `mail_cli` varchar(128) DEFAULT NULL,
  `pj_api_llv` text,
  `pj_api_slct` text,
  `pj_apj_returned` text,
  `pj_api_motive` varchar(255) DEFAULT NULL,
  `pj_api_location` varchar(255) DEFAULT NULL,
  `pj_gst_llv` text,
  `pj_gst_slct` text,
  `pj_gst_returned` text,
  `pj_gst_motive` varchar(255) DEFAULT NULL,
  `pj_gst_location` varchar(255) DEFAULT NULL,
  `slct_oper` text NOT NULL,
  `pj_api_obs` text,
  `pj_gst_obs` text,
  `cat_oper` text NOT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_projet_extrafields` (`fk_object`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=661 ;

--
-- Dumping data for table `llx_projet_extrafields`
--

INSERT INTO `llx_projet_extrafields` (`rowid`, `tms`, `fk_object`, `import_key`, `nom_cli`, `ref_K_cli`, `macro_cli`, `dir_cli`, `zipcode_cli`, `tel_cli`, `mov_cli`, `prov_cli`, `lc_cli`, `ser_cli`, `tra_cli`, `loc_cli`, `dni_cli`, `rc_cli`, `mail_cli`, `pj_api_llv`, `pj_api_slct`, `pj_apj_returned`, `pj_api_motive`, `pj_api_location`, `pj_gst_llv`, `pj_gst_slct`, `pj_gst_returned`, `pj_gst_motive`, `pj_gst_location`, `slct_oper`, `pj_api_obs`, `pj_gst_obs`, `cat_oper`) VALUES
(82, '2015-05-14 17:19:08', 106, NULL, 'INMUEBLE BS SD-09946-8103 RESC+CK', NULL, 'BS SD-09946-8103 RESC+CK', 'PL SON OMS, PARCELA 4 Nº S/N', '07198', NULL, NULL, '1', NULL, '1', '***LANZAMIENTO****\r\nRESCISIÓN DE ALQUILER --- BK ALQUILER DE COCHES SL \r\nPL SON OMS, PARCELA 4 Nº S/N       07198 -- ISLAS BALEARES      \r\nPROCURADORA -- Mª JOSE RODRIGUEZ HERNANDEZ         971728225 –\r\n \r\nHORA DEL LANZAMIENTO 10.15H\r\n ', '92', NULL, NULL, NULL, NULL, '0', '1', NULL, NULL, '1', '1', '1', NULL, NULL, '0', NULL, NULL, ''),
(83, '2015-05-15 07:27:31', 107, NULL, 'TPJ 53487K BMN ADJ.', '53487K', NULL, 'CALLE ALBACETE 17 ESQ. C. COLLIURE 13', NULL, NULL, NULL, '1', NULL, '1', 'Tras cambio urgente 2 llaves a api, EL MISMO DÍA DEL CAMBIO, resto a gestor de zona ó Assista valencia. Respecto a los datos de comunidad es imprescindible conseguir un telf. de algún vecino para poder cerrar el servicio y poder facturarlo.\r\n', '92', NULL, NULL, NULL, '1', '2', '1', NULL, 'FUNDA CON EL PARTE', '1', '2', '1', NULL, 'FUNDA CON EL PARTE', '0', NULL, NULL, ''),
(102, '2015-05-19 09:51:37', 114, NULL, 'TPJ RUIZ DE ALDA', '59429K', NULL, 'C/ RUIZ DE ALDA, 2 SOTANO 1 APARC 3', NULL, 97171452, 626099976, '1', NULL, '1', NULL, '92', NULL, NULL, NULL, '1', '2', '1', 'PENDIENTE DE REFERENCIA K', NULL, NULL, '0', '0', NULL, NULL, '12', NULL, NULL, ''),
(107, '2015-05-19 13:07:21', 104, NULL, 'VAR 22768K BMN ADJ.', '22768K', NULL, 'LOCAL 3 F C.C. SANTA PONÇA BL. II VINCULAT EXP.7', NULL, NULL, NULL, '1', NULL, '1', NULL, '145', NULL, NULL, NULL, NULL, '1', '1', NULL, 'LAS TIENE CARLOS', NULL, '2', '1', NULL, 'LAS TIENE CARLOS', '10', NULL, NULL, ''),
(109, '2015-05-19 13:39:03', 118, NULL, 'INMUEBLE BS A052457-0001 LIM+CK', NULL, 'BS A052457-0001', 'C/ PL 30 PARCELA 60. ES CLAPES Nº 17.10', NULL, NULL, NULL, '1', NULL, '1', 'LIMPIEZA Y CHECK', '70', NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '1', '1', '1', 'PENDIENTE DE INSTRUCCIONES', 'EN EL CAJON', '13', NULL, NULL, ''),
(111, '2015-05-21 07:10:42', 120, NULL, 'INMUEBLE BS A0 60129 0001 DESALOJO', NULL, 'A0 60129 0001', 'C/ RAFAEL ALCOVER Nº 8 BLOQ. A PB B', NULL, NULL, 665347462, '1', NULL, '1', 'DESALOJO PACTADO PARA EL LUNS A LAS 12H.', '92', NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '1', '1', '1', 'PENDIENTE DE HACER COPIAS', 'EN EL PLÁSTICO JUNTO AL PARTE', '9', NULL, NULL, ''),
(114, '2015-05-21 08:16:33', 123, NULL, 'INMUEBLE BS SD-09264-0001 LL', NULL, 'SD-09264-0001 LL', 'AV. RAMÓN DE SANT MARTÍ Nº 2 LOCAL', NULL, NULL, NULL, '1', NULL, '0', 'RECOGER LLAVES EN DIAGONAL GEST, REALIZAR 4 COPIAS Y ENTREGA JUEGOS NUEVAMENTE. FOTOS Y PARTE.', '82', NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, '0', '0', NULL, NULL, '13', NULL, NULL, ''),
(115, '2015-05-21 09:05:50', 124, NULL, 'TPJ 25715K BMN ADJ', '25715K', NULL, 'C/ DRAGONERA, 15 1B', NULL, NULL, 626099976, '1', NULL, '1', 'RECOGER LLAVES EN API Y PROCEDER CON LA LIMPIEZA Y VACIADO.', '92', NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '1', '2', '1', 'REALIZAR TRABAJOS', 'LAS TIENE DAVID', '13', NULL, NULL, ''),
(120, '2015-05-21 18:37:29', 126, NULL, 'obr 29143k SAREB BMN ADJ.', '29143K', NULL, 'C/ TRITON 6 BJO', '07', 628683270, 628683270, '1', NULL, '2', NULL, '30', NULL, NULL, NULL, '1', '9', '1', 'FINALIZACIÓN DE LOS TRABAJOS', 'LAS TIENE PABLO', NULL, '0', '0', NULL, NULL, '11', NULL, NULL, ''),
(121, '2015-05-21 18:53:25', 127, NULL, 'DAC CONCORDIA', '69228 K', NULL, 'C/ CONCORIDA, 15 2º 1ª', '07', 653266362, NULL, '1', NULL, '1', '1º Contactar con titular para Visita previa antes de la firma, fotos de todas las estancias e informar a la tramitadora del estado del inmueble. 2º Acudir a notaria 30/04 A LAS 09:00 H. Recoger llaves y proceder con el cambio de cerradura SIEMPRE GAMA BAJA fotos del cambio. 3º Realizar limpieza básica y vaciado hasta 5m3 para superior pedir autorización. Fotos antes y después de la limpieza. 4º CONSEGUIR DATOS COMUNIDAD Y LLAVES PORTAL IMPRESCINDIBLE ', '92', NULL, NULL, NULL, '1', '2', '1', NULL, 'EN LA FUNDA', '1', '0', '1', 'POR REALIZAR LA LIMPIEZA', 'EN LA FUNDA', '9', NULL, NULL, ''),
(124, '2015-05-25 08:43:01', 130, NULL, 'OBR 29418K SAREB BMN ADJ. REQ.', '29418K', NULL, 'C/ANTONI GELABERT 33', NULL, NULL, 677379644, '1', NULL, '1', 'VALORAR LIMPIEZA Y SOLAR Y CERRAMIENTO, CONTACTAR CON EL API. REALIZAR PRESUPUESTO PARA SOLICITAR AUTORIZACIÓN GESTOR.', '144', NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, NULL, ''),
(125, '2015-05-25 08:49:44', 131, NULL, 'INMUEBLES BS MACRO SD-90037-7401 S', NULL, 'SD-90037-7401 S', 'C/ MONJO I PONS ESQ. VIA DE RONDA Nº 12-14', '07700', 971363961, NULL, '2', NULL, '1', 'RETIRAR VALLADO DE VÍA PÚBLICA ASEGURÁNDOLO, HACER PPTO. PARA ASEGURAR TODO EL VALLADO.', '83', NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, '0', '0', NULL, NULL, '10', NULL, NULL, ''),
(127, '2015-05-25 08:54:59', 133, NULL, 'MANUELA SEGUÍ COLL', NULL, NULL, 'AVDA. VERGE DEL TORO, 25-1-IZQ.', '07750', NULL, 676700651, '2', NULL, '1', 'VERIFICAR ORIGEN AVERÍA SI ES POR CORTOCIRCUITO O SOBRETENSIÓN TENDRÍA COBERTURA.', '71', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', '0', NULL, NULL, '10', NULL, NULL, ''),
(128, '2015-05-25 12:02:00', 134, NULL, 'TPJ EDIFICIO MIGJORN', NULL, NULL, 'C/RICARDO ANKERMAN 15, EDIFICIO ANGULAR CON C/TOMAS FORTEZA 35,37 Y 39 Y C/ JERONIMO POU, 20.', NULL, NULL, 971717298, '1', NULL, '1', 'TRAS CAMBIO 2 LLAVES A API, RESTO GESTOR. CONSEGUIR TEFEF. DE ALGUN VECINO PARA PODER CERRAR EL SERVICIO Y FACTURARLO.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, NULL, ''),
(131, '2015-05-26 07:41:52', 137, NULL, 'VAR 69091K BMN ADJ.', '69091K', NULL, 'C/ARAGÓ 323 PISO 5º PUERTA 2', NULL, 971755220, 692644739, '1', NULL, '1', 'CORTAR EL AGUA, REVISAR Y REPARAR. CONTACTAR CON EL API. REALIZAR PRESUPUESTO PARA SOLICITAR AUTORIZACIÓN DEL GESTOR.', '92', NULL, NULL, NULL, NULL, '2', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, ''),
(132, '2015-05-26 07:44:21', 138, NULL, 'MARIA ISABEL LEON JIMENEZ', NULL, NULL, 'C/ BALADRE, 6,1-A', '07008', NULL, 665203807, '1', NULL, '1', 'ATASCO EN EL FREGADERO DE LA COCINA.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, ''),
(135, '2015-05-26 07:58:36', 141, NULL, 'STC 36777K SAREB BMN ADJ.', '36777K', NULL, 'C/ SON FRAU-POLÍGONO 11-PARCELA 22 11', NULL, 871707321, 664442201, '1', NULL, '1', 'TRAS CAMBIO 2 LLAVES AL API, EL MISMO DÍA DEL CAMBIO, RESTO AL GESTOR.', '76', NULL, NULL, NULL, NULL, '8', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, ''),
(137, '2015-05-26 08:10:33', 143, NULL, 'INMUEBLES BS SD-90936-0004 REP', NULL, 'SD-90936-0004 REP.', 'C/ MIGUEL DE VERÍ, Nº 12 2 3', '07703', NULL, 644460897, '2', NULL, '1', 'QUEDAR CON EL INQUILINO Y CONCERTAR CITA, LLAMARLO PARA VER QUE TIENE MAL, SEGÚN ORDEN ES EL CUADRO ELÉCTRICO.', '83', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, ''),
(140, '2015-05-26 11:26:16', 146, NULL, 'INMUEBLE BS A0-33660-0001 TOMA.', NULL, 'BS A0-33660-0001 TOMA.', 'C/ VERDEROS, URB. SA CABANA Nº30.', NULL, 971228620, NULL, '1', NULL, '1', 'TPJ MISMO DÍA FOTOS DE DESCERRAJ Y FOTO DILIGENCIA, VACIADO DIRECTO SI ES MENOS DE 140 €, SI NO PTO. OS QUEDAIS LAS LLAVES Y OS DIRÉ CUANTOS JUEGOS SON.', '87', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, ''),
(145, '2015-05-27 07:43:44', 151, NULL, 'VAR 26772K BMN ADJ.', '26772K', NULL, 'C/ SANT IGNASI 64A ESCALERA 6 PISO 1 PUERTA D', NULL, NULL, NULL, '1', NULL, '1', 'RECOGER LLAVE COMUNITARIA EN LA OFI DEL ADMINISTRADOR.\r\nAPI: VIRGINI ALIZ 685613858', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, ''),
(147, '2015-05-27 07:49:09', 149, NULL, 'VAR 53681K BMN. ADJ.', '53681K', NULL, 'C/ SANT IGNASI 64, PISO 1 PUERTA C', NULL, NULL, NULL, '1', NULL, '1', 'RECOGER LLAVE COMUNITARIA EN OFI. ADMINISTRADOR.\r\nAPI: VIRGINIA LIZ 685613858.\r\nHAN CAMBIADO LLAVES DEL PORTAL Y AGREGADO SEGUNDA CERRADURA.', '92', NULL, NULL, NULL, NULL, '5', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(148, '2015-05-27 07:53:52', 150, NULL, 'VAR 21832K BMN ADJ.', '21832K', NULL, 'C/SANT IGNASI 64A ESCALERA 5 PISO 2 PUERTA C', NULL, NULL, NULL, NULL, NULL, '1', 'RECOGER LLAVE COMUNITARIA EN OFI. ADMINISTRADOR. API: VIRGINIA LIZ 685613858.\r\nHAN CAMBIADO LLAVE DEL PORTAL Y AGREGADO SEGUNDA CERRADURA.', '92', NULL, NULL, NULL, NULL, '5', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(149, '2015-05-27 07:58:04', 148, NULL, 'VAR 26568K BMN ADJ.', '26568K', NULL, 'C/ SANT IGNASI 64A ESCALERA 5 PISO 1 PUERTA B', NULL, NULL, NULL, '1', NULL, '1', 'RECOGER LLA VE COMUNITARIA EN LA OFI DE ADM.\r\nHAN CAMBIADO LLAVES DEL PORTAL Y AGREGADO SEGUNDA CERRADURA.', '92', NULL, NULL, NULL, NULL, '5', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(150, '2015-05-27 08:06:08', 147, NULL, 'TPJ 5412K BMN ADJ.', '54124K', NULL, 'C/VERACRUZ 9996', NULL, NULL, 606597769, '1', NULL, '1', 'TRAS CAMBIO 2 LLAVES AL API, RESTO AL GESTOR. ', '95', NULL, NULL, NULL, NULL, '6', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(151, '2015-05-27 08:09:02', 145, NULL, 'TPJ GENOVA', NULL, NULL, 'CAMÍ DE GENOVA 13 1 ESC. X', NULL, NULL, 639355803, '1', NULL, '1', '2 LLAVES AL API, RESTO AL GESTOR.FOTOS DE TODAS LAS ESTANCIAS, ANTES Y DESPUÉS.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(156, '2015-05-27 08:24:20', 152, NULL, 'INMUEBLE BS A0-50783-0002 RES+CK.', NULL, 'A0-50783-0002 RES+CK.', 'C/FRANCISCO DE BORJA MOLL Nº 48 ESC.01-1 19 PLAZA APARCAMIENTO.', NULL, NULL, NULL, '2', NULL, '1', 'VA CON SERVICIO 703165 PLAZO 11/05.\r\nCOMPLETAR 8 LLAVEROS, 1 ROJO 1 AZUL Y 6 VERDES.', '83', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '10', NULL, NULL, ''),
(158, '2015-05-27 08:32:00', 155, NULL, 'FINSOLUTIA PROPIEDAD 26053', NULL, NULL, 'PASSATGE ROSES 3, BAJO 3', NULL, NULL, NULL, '2', NULL, '1', 'ENVIAR PARTE DE LLAVES ENTREGADAS A BROKER, INDICAR SI HAY AGUA, LUZ, GAS Y DATOS COMUNIDAD. CONTACTAR CON ANTONIO 627906003', '48', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '10', NULL, NULL, ''),
(159, '2015-05-27 08:37:01', 156, NULL, 'MACRO A0-15924-0001  S3', NULL, 'A0-15924-0001 S3', 'PZ. NOVA Nº29 PB.', '07730', NULL, 619881876, '2', NULL, '1', 'FONTANERÍA. REVISAR ANTES PARA PODER HACER RESERVA DE LLAVE, RECOGER EN GESTORÍA MAHON.', '1', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '10', NULL, NULL, ''),
(162, '2015-05-27 08:47:38', 159, NULL, 'INMUEBLES BS MACRO SD-90037-7401 S', NULL, 'SD-90037-7401 S', 'C/MONJO I PONS ESQ. VÍA DE RONDA Nº 12-14', '07700', NULL, NULL, '2', NULL, '1', 'REPARAR VALLADO DE LA VÍA PÚBLICA, HACER PPTO PARA ASEGURAR EL VALLADO.', '83', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '10', NULL, NULL, ''),
(163, '2015-05-27 09:13:45', 153, NULL, 'INMUEBLE BS A0-50783-0001 RES.+CK.', NULL, 'A0-50783-0001 RES+CK', 'C/ FRANCISCO DE BORJA MOLL Nº65 2 2', NULL, NULL, NULL, '2', NULL, '1', 'VA CON SERVICIO 703168 DAR ACCESO AL TECNICO MIQUEL 61974884.', '83', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '1', '3', '1', 'pendiente de hacer llaveros', 'LAS TIENE DAVID', '10', NULL, NULL, ''),
(167, '2015-05-28 08:06:38', 162, NULL, 'TPJ 25041K BMN ADJ.', '25041K', NULL, 'C/ VIDRELL ESQUINA ECLIPSE PLANTA 2ª EDIF. CAN PEDRETA Nº6.', NULL, 971507378, NULL, '1', NULL, '1', 'TPJ 01/06/15 CARMEN SERRA LLULL. 971 507378. API: FAR D''AUCANADA S.L., 971 548090.', '3', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, ''),
(168, '2015-05-28 08:11:12', 163, NULL, 'INMUEBLES BS A0-61146-0001 TOMA', NULL, 'A0-61146-0001', 'C/ DE SES COVES Nº 20 3 B', NULL, NULL, 609602020, '1', NULL, '1', 'TPJ 04/06/15 A LAS 11H.', '84', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, ''),
(173, '2015-05-28 10:13:20', 166, NULL, 'INMUEBLE BS S3-22857-0002 LL.', NULL, 'S3-22857-0002', 'C/ SA MOSTRA Nº 0016 2º A', NULL, NULL, NULL, '1', NULL, '1', 'REALIZAR COPIAS DE LLAVE COMUNITARIA Y COMPLETAR LLAVEROS, ENTREGARLAS EN GESTORÍA PRECINTADAS. CIAL:; 639935926, PILAR. AVD. ALEJANDRO ROSSELLÓ 15-3º EDIF.MINACO, GABINETE MARIO DARDER.', '92', NULL, NULL, NULL, '1', NULL, '1', 'IR A BUSCAR LLAVE COMUNITARIA.', 'COMUNIDAD.', NULL, NULL, '0', NULL, NULL, '0', 'IR AL PRESIDENTE A BUSCAR LLAVE PARA PODER HACER COPIAS Y LUEGO ENTREGARLAS EN GESTORÍA.', NULL, ''),
(178, '2015-05-28 11:53:24', 171, NULL, 'INMUEBLES BS A0-59953-0001 TOMA.', NULL, 'A0-59953-0001', NULL, '07001', NULL, NULL, '1', NULL, '1', 'TPJ 05/06/12 A LAS 12:30 H. FOTOS DEL CAMBIO DE BOMBÍN. JUZGADO 1º INST. PALMA Nº 4. 639355803.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(179, '2015-05-28 11:56:35', 161, NULL, 'INMUEBLES BS A0-33847-0001 LI+CK', NULL, 'A0-33847-0001', 'C/ JUAN BAUZÁ Nº 28 AT B', '07007', NULL, NULL, '1', NULL, '1', 'RECOGER LLAVES DE ROBERTO VEGAS Y VALORAR VACIADO.', '92', NULL, NULL, NULL, '1', NULL, '1', NULL, 'LAS TENEMOS NOSOTROS.', NULL, NULL, '0', NULL, NULL, '13', 'ROBERTO VEGAS LAS TRAERA HOY 28/05/15. HA TRAIDO LAS LLAVES, LAS TENEMOS NOSOTROS.', NULL, ''),
(180, '2015-05-28 12:21:08', 172, NULL, 'JULIO', NULL, NULL, 'C/ SAVINA, 7', NULL, 656525880, 656525880, '1', NULL, '2', 'APERTURA DE PUERTA URGENTE', '40', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '12', NULL, NULL, ''),
(185, '2015-05-29 10:34:50', 176, NULL, 'DAC TERRERS', NULL, NULL, 'ES TERRERS 53 PISO 1', NULL, NULL, NULL, '1', NULL, '1', 'DAC 12/06/15. SEBASTIAN ANTICH. CAMBIO DE CERRADURA GAMA BAJA. LIMPIEZA BÁSICA Y VACIADO HASTA 5M3, PARA SUPERIOR PEDIR AUTORIZACIÓN.', '76', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(189, '2015-05-29 10:50:40', 179, NULL, 'ALBERT EARL ENGLE', NULL, NULL, 'C/ DE SA MAR, 107', '07100', NULL, 634542905, '1', NULL, '1', 'POSIBLE ATASCO VIVIENDA, LE SUBE EL AGUA SUCIA POR EL DESAGÜE DEL BAÑO QUE TIENE EN EL SÓTANO.', '153', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(190, '2015-05-29 10:54:47', 180, NULL, 'INMUEBLE BS A0-19214-0001 PTA.', NULL, 'A0-19214-0001', 'PUIG D''ALARÓ (EDIF. PANAMS II) URB. SON SÉMOLA Nº14 4 2.', NULL, NULL, NULL, '1', NULL, '0', 'EL API: GESMORENT QUIERE ENTRAR Y LA PUERTA ESTÁ TAPIADA.. PONERSE EN CONTACTO CON EL.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, ''),
(194, '2015-06-01 07:22:27', 183, NULL, 'MACRO S3226861', NULL, 'S3226861', 'UR. CAPARROT 0036 00 03', NULL, NULL, NULL, '2', NULL, '1', 'CONTACTAR CON MARÍA O PAQUI DE 9 A 14 H.QUE NOS ENTREGUEN LAS LLAVES, COMPROBARLAS Y FORMAR 3 JUEGOS DE LLAVES (1 ROJO+2 VERDES). ENVIAR FOTO LLAVES Y PARTE.', '83', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, ''),
(195, '2015-06-01 07:25:53', 184, NULL, 'MACRO S3-22686-0002', NULL, 'S3-22686-0002', 'UR. CAPARROT 1-1 3', NULL, NULL, NULL, '2', NULL, '1', 'COMPROBACIÓN LLAVES Y CONSEGUIR LAS COMUNITARIAS. PAQUI O MARÍA 971365461 NOS LAS ENTREGAN. FORMAR 3 JUEGOS (1 ROJO+2 VERDES).', '83', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, ''),
(205, '2015-06-02 08:31:03', 188, NULL, 'VAR 55388K BMN. ADJ.', '55388K', NULL, 'C/ SANT LLUC 8 BLOQUE F ESCALERA 3 PISO BAJO PUERTA 93', NULL, NULL, NULL, '1', NULL, '1', 'LIMPIEZA Y DESBROZADO SOLAR. CONTACTARCON API PARA REALIZAR PRESUPUESTO Y SOLICITAR AUTORIZACIÓN. PALMER ESTRADES 971 240121.', '82', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(206, '2015-06-02 08:42:21', 189, NULL, 'INMUEBLE BS SD-92188-0001 DAC', NULL, 'SD-92188-0001', 'C/ MIGJORN, URB. TORRE SOLÍ, VILLA XALOC Nº242', NULL, NULL, NULL, '2', NULL, '1', 'PLAZO CAMBIO BOMBIN 03/06. VACIADO. MONTAR 8 JUEGOS DE LLAVES. ENVIAR CERTIFICADO DE RESIDUOS.', '1', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '10', NULL, NULL, ''),
(207, '2015-06-02 08:45:08', 190, NULL, 'INMUEBLE BS SD-92188-0002 DAC', 'SD-92188-0002', NULL, 'C/ MIGJORN, URB. TORRE SOLÍ, VILLA MISTRAL Nº243', NULL, NULL, NULL, '2', NULL, '1', 'PLAZO CAMBIO BOMBIN 03/06. VACIADO. MONTAR 8 LLAVEROS.', '1', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '10', NULL, NULL, ''),
(209, '2015-06-02 09:06:20', 192, NULL, '52454513 I', NULL, NULL, 'C/ TRENCADORS, Nº10', '07750', NULL, NULL, '2', NULL, '1', 'NOS HA INFORMADO POLICIA QUE LAS VENTANAS ESTÁN ABIERTAS Y LA SALIDA DE HUMOS VA HACIA EL CIELO POR LO QUE DEBE INUNDAR LA NAVE.', '71', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '10', NULL, NULL, ''),
(212, '2015-06-02 10:24:45', 194, NULL, 'COP. LLUIS MARTÍ 82', NULL, NULL, 'C/ LLUIS MARTÍ, 82', '07005', NULL, NULL, '1', NULL, '1', 'POSIBLE ATASCO BAJANTE COMUNITARIA, LE ESTÁ SUBIENDO EL AGUA POR LOS GRIFOS AL VECINO DEL 2º.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '11', NULL, NULL, ''),
(214, '2015-06-02 13:02:07', 195, NULL, 'DAC FORMENTERA', '71265 K', NULL, 'C/ FORMENTERA, 3 4º IZ', NULL, NULL, NULL, '1', NULL, '1', 'VISITA PREVIA ANTES DE REALIZAR LA DACIÓN. NO HAY CONTACTO DE MOMENTO', '82', NULL, NULL, NULL, '1', '4', '1', 'FINALIZACIÓN DE LOS TRABAJOS', 'LLAVES JUNTO AL PARTE', '1', '2', '1', 'FINALIZACION DE LOS TRABAJOS', 'LLAVES JUNTO AL PARTE', '13', NULL, NULL, ''),
(216, '2015-06-02 15:41:19', 196, NULL, 'TPJ DEPARTAMENTO 20', '57100 K', NULL, 'DEPARTAMENTO 20 EDIFICIO ESMERALDA', NULL, 606597769, NULL, '1', NULL, '1', NULL, '129', NULL, NULL, NULL, '1', '9', '1', 'PENDIENTE DE TRAMITADOR', NULL, '1', '2', '1', 'PENDIENTE DE TRAMITADOR', NULL, '13', NULL, NULL, ''),
(218, '2015-06-03 07:12:21', 197, NULL, 'DAC PORRERES', '71179K', NULL, 'C/PORRERES 34 ESQUINA C/MONTUIRI 34, BJOS. 2 , APARCAMIENTO 12', NULL, NULL, 685012324, '1', NULL, '1', 'DAC 22/05/15 A LAS 9:30 H. PAZ MORENO SELVA 685012324.', '36', NULL, NULL, NULL, '1', NULL, '1', NULL, 'PLÁSTICO CON EL PARTE.', '1', NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(221, '2015-06-03 07:43:31', 109, NULL, 'TPJ SAN JAIME', '60109 K', NULL, 'CALLE SAN JAIME 5 Y 7', NULL, 606597769, NULL, '1', NULL, '1', 'LIMPIEZA Y VACIADO', '84', NULL, NULL, NULL, '1', '6', '1', 'PENDIENTE DE ENTREGAR', 'EN FUNDA CON EL PARTE', '1', '2', '0', NULL, NULL, '13', NULL, NULL, ''),
(222, '2015-06-03 07:54:13', 200, NULL, 'INMUEBLE BS S3-22857-0005 LL', NULL, 'BS S3-22857-0005', 'C/ SA MOSTRA Nº 0016 2B.', NULL, NULL, NULL, '1', NULL, '1', 'REALIZAR 5 COPIAS LLAVES COMUNITARIAS Y COMPLETAR LLAVEROS DE GESTORÍA.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(224, '2015-06-03 07:58:21', 202, NULL, 'INMUEBLE BS S3-22857-0003 LL', NULL, 'S3-22857-0003', 'C/ SA MOSTRA Nº 0016 2C', NULL, NULL, NULL, '1', NULL, '1', 'REALIZAR 5 COPIAS DE LLAVES COMUNITARIAS Y COMPLETAR LLAVEROS GESTORÍA.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(225, '2015-06-03 08:06:27', 201, NULL, 'INMUEBLE BS S3-22857-0004', NULL, 'S3-22857-0004', 'C/ SA MOSTRA Nº 0016 3B', NULL, NULL, NULL, '1', NULL, '1', 'REALIZAR 5 COPIAS DE LLAVES COMUNITARIAS Y COMPLETAR LLAVEROS GESTORÍA.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(229, '2015-06-03 09:33:07', 198, NULL, 'INMUEBLE BS A0-83851-0001 TOMA RES.', NULL, 'A0-83851-0001', 'C/ TOMAS DE VILLANUEVA CORTES Nº 22 2ºB', NULL, NULL, 971728225, '1', NULL, '1', 'TPJ 18/05/15 A LAS 9:30 H. Mª JOSE HERNANDEZ 971 728225', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, 'EN EL PLÁSTICO CON EL PARTE.', NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(234, '2015-06-03 11:55:59', 208, NULL, 'STC 57626K BMN ADJ.', '57626K', NULL, 'C/ FRANCESC SALVA I PIZA ESC. 14 PISO BAJO PUERTA A.', NULL, NULL, NULL, '1', NULL, '1', 'DESCERRAJE Y CAMBIO CERRADURA . VANESSA MORENILLA; 609978855. API: MONTAÑA NEGRA 2010, S.L.U. 600043866. CONSEGUIR TELEF. VECINO PARA CERRAR PARTE.', '87', NULL, NULL, NULL, NULL, '1', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(235, '2015-06-04 07:30:37', 209, NULL, 'STC 28001K BMN ADJ.', '28001K', NULL, 'AV. COMTE DE SALLENT 2 PI:PR PT:G', NULL, NULL, NULL, '1', NULL, '1', 'DESCERRAJE FINCA. FINCAS FORCADELL 672490436. CONSEGUIR TELEF. DE ALGÚN VECINO PARA PODER CERRAR SERVICIO.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(243, '2015-06-05 08:01:09', 165, NULL, 'INMUEBLES BS A0-59135-0001 LI+CK.', NULL, 'A0-59135-0001', 'C/ SON AMONDA Nº 11 ESC. B 2A', '07300', NULL, NULL, '1', NULL, '1', 'LIMPIEZA Y CHECKLIST. ENVÍO LLAVES POR SEUR.', '76', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '1', '1', 'PENDIENTE DE TRAMITADOR', NULL, '13', NULL, 'LAS LLAVES NOS TIENEN QUE LLEGAR POR SEUR. LAS LLAVES YA HAN LLEGADO. SE LE HACE ENTREGA DE UNA LLAVE AL CERTIFICADOR ENERGÉTICO.', ''),
(247, '2015-06-05 09:05:01', 218, NULL, 'INMUEBLE BS A0-60911-0001 TOMA.', NULL, 'BS A0-60911-0001', 'C/ TANQUES Nº 2 ESC. 3-1 16', '07609', NULL, 971228620, '1', NULL, '1', 'TPJ 19/06/15 A LAS 11 H. PROCURADOR: Mº CARMEN GAYA FONT 971228620', '82', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(251, '2015-06-08 07:46:00', 221, NULL, 'INMUEBLE BS A0-22978-0001 ADC+CK.', NULL, 'A0-22978-0001', 'REIS CATOLOCS Nº 99 PLANTA 2 PUERTA ÚNICA', NULL, NULL, NULL, '1', NULL, '1', 'TPJ 05/06/15 A LAS 10:30H.PROCURADOR: FREDERIC XAVIER RUIZ GALMÉS. DAR UNA COPIA DE LLAVES A GRUP SURESTE Y QUE FIRME EL PARTE.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(253, '2015-06-08 08:33:52', 222, NULL, 'CARMEN CORTÉS CORTÉS', NULL, NULL, 'C/ FRANCESC FEMENIAS, 42 2', '07702', NULL, 626971628, '2', NULL, '1', 'ATASCO EN FREGADERO. PRIVATIVO. CARMEN 626971628.', '83', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '16', NULL, NULL, ''),
(260, '2015-06-08 11:05:23', 228, NULL, 'STC 23829K BMN ADJ.', '23829K', NULL, 'C/ REFUGIO DE PESCADORES 36 URB. CALA´N FUST', NULL, NULL, NULL, '2', NULL, '1', 'IR AL INMUEBLE Y ASEGURAR QUE LA VIVIENDA ESTÁ VACÍA, CONFIRMAR CON VECINOS. SI ESTÁ DESOCUPADA CAMBIO CERRADURA. SI LA VIVIENDA ESTÁ OCUPADA NO HACEMOS NADA. FOTOS PARA JUSTIFICAR LA VISITA.', '13', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '10', NULL, NULL, ''),
(262, '2015-06-08 11:52:04', 230, NULL, 'DAC PASEO MALLORCA', NULL, NULL, 'PASEO MALLORCA Nº 7 PISO 4, PUERTA B.', NULL, NULL, NULL, '1', NULL, '1', 'DAC 15/06 (PTE. HORA). VISITA PREVIA 971724501. NOTARÍA; PAREJA-BORN 15/06.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(274, '2015-06-09 09:28:26', 237, NULL, 'STC 62276K BMN ADJ.', '62276K', NULL, 'C/ESTRELLA 15', NULL, NULL, NULL, '1', NULL, '1', 'PRESUPUESTO PARA LIMPIEZA Y VACIADO. API: CENTRE COMPTABLE VILA, 626616410.\r\nCONTACTAR CON API PARA RECOGER LAS LLAVES.', '70', NULL, NULL, NULL, '1', '6', '1', 'HAY QUE IR A BUSCARLAS', NULL, NULL, NULL, '0', NULL, NULL, '13', 'IR A BUSCAR LAS LLAVES PARA HACER EL PRESUPUESTO DE LIMPIEZA Y VACIADO.', NULL, ''),
(280, '2015-06-09 09:52:13', 232, NULL, 'VAR 57427K BMN ADJ.', '57427K', NULL, 'C/CAP DEL PINAR 5 ESCALERA 4 PISO 2º PUERTA 9 URB. SON ROCA', NULL, NULL, NULL, '1', NULL, '1', 'VALORAR DAÑOS HUMEDADES EN LA PARED DE LA VIVIENDA, CONTACTAR CON EL API Y REALIZAR PRESUPUESTO.', '92', NULL, NULL, NULL, '1', '2', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '11', 'DEVUELTAS EL 29/05/15', NULL, ''),
(281, '2015-06-09 09:54:15', 233, NULL, 'INMUEBLE BS S1-10004-0002 RET+CK', NULL, 'BS S1-10004-0002', 'C/ SAN VICENTE DE PAUL Nº 2 BLOQ. 0 0 4', NULL, NULL, NULL, '1', NULL, '1', 'RETIRADA DE CARTEL + CHECK LIST, HACER FOTOS CARTEL RETIRARLO Y FOTOS SIN.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '1', '1', '0', NULL, NULL, '13', NULL, 'SE NETREGAN LOS LLAVEROS C1 Y C2.', ''),
(282, '2015-06-09 09:56:21', 105, NULL, 'INMUEBLES BS A0-35942-0001 OC-', NULL, 'A0-35942-001 OC-', 'CL SAN DAMASO Nº38 BLOQ. A 1ºG', NULL, NULL, NULL, '1', NULL, '1', NULL, '92', NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, '1', '1', 'esto es un tapiado, no hay llaves', NULL, '12', NULL, NULL, ''),
(283, '2015-06-09 09:57:06', 235, NULL, 'STC 29091K SAREB BMN ADJ.', '29091K', NULL, 'C/ ANGEL RUIZ Y PABLO 50 ESC. 1 PISO 2 PUERTA B.', NULL, NULL, NULL, '2', NULL, '1', 'PRESUPUESTAR LIMPIEZA Y RETIRADA DE ESCOMBROS. API: ACTIVUM 692207439.', '48', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '10', NULL, NULL, ''),
(285, '2015-06-09 10:09:41', 236, NULL, 'VAR 26769K BMN. ADJ.', '26769K', NULL, 'C/ SANT DAMAS 67B ESC. 3 PISO 1 PUERTA D', NULL, 971472785, NULL, '1', NULL, '1', 'HACER COPIAS LLAVES. HAN CAMBIADO LLAVES DEL PORTAL Y AGREGADO UNA SEGUNDA CERRADURA. SOLICITAR AL ADMINIST. API: VIRGINIA LIZ 685613858', '92', NULL, NULL, NULL, '1', '5', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', 'SE ENTREGAN LLAVES DE LA COMUNIDAD.', NULL, ''),
(287, '2015-06-09 10:11:45', 238, NULL, 'TPP 14138K CASSIOPEIA', '14138K', NULL, 'C/PIC PICO TEIDE 2 PISO BAJO PUERTA B', NULL, NULL, NULL, '1', NULL, '1', 'CAMBIO DE CERRADURA 24/04 A LAS 9:30H. VIRGINIA LIZ 685613858', '92', NULL, NULL, NULL, '1', '5', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(288, '2015-06-09 10:12:13', 239, NULL, 'COMUNIDAD DE PROPIETARIOS', NULL, NULL, 'C/FRANCISCO MARTÍN MORA, 15', '07011', NULL, NULL, '1', NULL, '1', '1º PISO DAÑOS POR AGUA EN EL SALÓN, PARED. ADMON.679973637', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '11', NULL, NULL, ''),
(290, '2015-06-09 10:13:29', 241, NULL, 'DAC VIVERS', '68993K', NULL, 'C/VIVERS Y C/CANT METXO 15 PUERTA C', NULL, NULL, NULL, '1', NULL, '1', 'DAC 31/03/15 NOTARÍA DEL BORN-LUIS PAREJA.', '8', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(296, '2015-06-09 11:06:06', 240, NULL, 'MARYPAZ PALMA', NULL, NULL, 'C/SAN MIGUEL, 46', NULL, NULL, NULL, '1', NULL, '1', 'NO ABRE PUERTA. URGENTE.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '9', NULL, NULL, ''),
(297, '2015-06-09 11:06:33', 244, NULL, 'VAR 21176K BMN FONDO SOCIAL', '21176K', NULL, 'C/ JACINTO GUERRERO 3 PISO 1 PUERTA 3 URB. SON ALEMANY O SON OLIVA', NULL, NULL, NULL, '1', NULL, '1', 'COMPROBAR SI HAY AGUA ESTANCADA FILTRANDO AL LOCAL INFERIOR.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '9', NULL, NULL, ''),
(298, '2015-06-09 11:11:28', 245, NULL, 'TPJ 52532K BMN ADJ.', '52532K', NULL, 'C/ PUIG DÉS CAPITÁ, Nº 5 PLANTA BJA. CASTILLO DE BENDINAT', NULL, NULL, 626099976, '1', NULL, '1', 'TPJ 11/05/15 A LAS 10 H. PROCURADOR: ANTONIO BUADES GARAU 626099976.API: FCO. JAVIER POLO MORENO 618143523.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(299, '2015-06-09 11:15:36', 246, NULL, 'COMUNIDAD DE PROPIETARIOS LIBERTAD Nº 4 Y Nº6', NULL, NULL, 'C/LIBERTAD 4 Y 6', '07013', NULL, NULL, '1', NULL, '1', 'NO HAN TAPADO CON LADRILLOS EN LA CATA DE LA COCINA, SINO COLOCADO PLAQUETA Y ECHANDO YESO ENCIMA, NO ESTABA ASÍ. BELTRÁN 619264953.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(300, '2015-06-09 11:34:58', 121, NULL, 'INMUEBLES BS A0-58624-0001 TOMA', NULL, 'A0-58624-0001', 'C/ SAN ISIDORO Nº 4, 4D', NULL, 971228620, NULL, '1', NULL, '1', 'REALIZAR VACIADO Y LIMPIEZA, CHECK LIST, CONSEGUIR LLAVES COMUNITARIAS. LAS LLAVES DE LA VIBIENDA LAS TIENE ROBERTO VEGAS.', '92', NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '1', '1', '0', NULL, 'ENTREGADAS', '9', NULL, NULL, ''),
(301, '2015-06-09 11:37:38', 247, NULL, 'TPJ SON RIGO', NULL, NULL, 'AVDA. SON RIGO 25 4º-B', NULL, NULL, 699746573, '1', NULL, '1', 'TPJ 26/03/15 A LAS 11H. JUAN BLANES JAUME 699746573.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(302, '2015-06-09 11:40:21', 248, NULL, 'TPJ LEPANTO', NULL, NULL, 'C/ LEPANTO 5-4º PISO Y ESC. Nº 59.', NULL, 971507378, NULL, '1', NULL, '1', 'TPJ 08/05/15 A LAS 10 H.CARMEN SERRA LLULL, 971507378', '40', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(303, '2015-06-09 11:52:26', 249, NULL, 'MARYPAZ', NULL, NULL, 'C/ SAN MIGUEL 46', '07002', NULL, NULL, '1', NULL, '1', 'SE LES HA ROTO LA LLAVE DE LA CAJA FUERTE Y SE LES HA QUEDADO DENTRO.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '9', NULL, NULL, ''),
(304, '2015-06-09 11:58:16', 250, NULL, 'TPJ 53380K BMN ADJ.', '53380K', NULL, 'URB. CALA TIRANT PARCELA N 30', NULL, 971352231, NULL, '2', NULL, '1', 'TPJ 26/02/15 A LAS 10 H. MONTSERRAT MIRO MARTI 971 35 22 31. API GESTIÓN DE PROYECTOS INMOBILIARIOS DE LEVANTE 680599699.', '48', NULL, NULL, NULL, '1', NULL, '0', NULL, NULL, '1', '2', '0', NULL, NULL, '13', 'API GESTIÓN DE PROYECTOS INMOBILIARIOS DE LEVANTE 680599699.', NULL, ''),
(306, '2015-06-10 07:20:51', 117, NULL, 'STC 33329K BMN ADJ                                                                 ', '33329K', NULL, 'C/ SA TAFONA, ANTES C/ VIZCAYA, 5 BJO 5', '07', 620019198, NULL, '1', NULL, '1', NULL, '6', NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '1', '2', '0', NULL, NULL, '9', NULL, NULL, ''),
(308, '2015-06-10 07:23:40', 252, NULL, 'STC 22616K BMN ADJ. 2', '22616K', NULL, 'C/ GENERAL RIERA, 45', NULL, NULL, NULL, '1', NULL, '1', 'CAMBIO DE CERRADURA 5/06/15 A LAS 16:30H. ', '92', NULL, NULL, NULL, '1', '11', '0', NULL, NULL, '1', '2', '0', NULL, NULL, '13', NULL, NULL, ''),
(309, '2015-06-10 07:24:23', 182, NULL, 'KIM FUNG YEUNG CHUNS', NULL, NULL, 'C/ JAUME VILLANUEVA, 8 2ºB', '07009', NULL, 649010905, '1', NULL, '1', 'HUMEDADES EN EL TECHO DEL CUARTO DE BAÑO DEL PISO DE ABAJO', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '11', NULL, NULL, ''),
(310, '2015-06-10 07:40:06', 212, NULL, 'TPJ 53524K 53509K BMN ADJ. ', '53524K', NULL, 'AV. JUAN CARLOS I 167 ES: 1 PL:02 PT:F1', NULL, NULL, NULL, '1', NULL, '1', 'TPJ 04/06/15 A LAS 12:30 H. PROC.: JUAN CERDÁ BESTARD. CONSEGUIR TELÉFONO VECINO PARA PODER CERRAR EL SERVICIO. 2 LLAVES AL API Y EL RESTO AL GESTOR.', '30', NULL, NULL, NULL, '1', '9', '0', NULL, NULL, '1', '2', '0', NULL, NULL, '13', NULL, NULL, ''),
(311, '2015-06-10 08:27:23', 219, NULL, 'INMUEBLES BS MACRO A0-53325-0001 S3', NULL, 'S3 A0-53325-0001', NULL, '07005', NULL, NULL, '1', NULL, '1', ' VECINO DE ABAJO TIENE MANCHAS HUMEDAD EN TECHO BAÑO Y CUARTO. FOTOS Y PRESUPUESTO DE AVERÍA Y DAÑOS. FOTOS FACHADA.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '11', NULL, NULL, ''),
(312, '2015-06-10 08:57:22', 253, NULL, 'VAR 36306K SAREB BMN ADJ.', '36306K', NULL, 'C/ SALUT 25 BLOQUE 1 PISO BAJO', '07620', NULL, NULL, '1', NULL, '1', 'PROBLEMAS CON LA ESTRUCTURA, Mº COLOMA OLIVER 609965749 Y API 626616410, ACUDIR LOS TRES. VALORAR DAÑOS.', '82', NULL, NULL, NULL, NULL, '6', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(314, '2015-06-10 09:42:20', 255, NULL, 'DAC NAPOLS', NULL, NULL, 'C/ NAPOLS, 6 ESCALERA 1 PLANTA BAJA-PUERTA 2', NULL, NULL, NULL, '1', NULL, '1', 'DAC 16/06/15 A LAS 10H.  NOTARÍA DEL BORNE, 23 ENTLO 16/6 A.', '36', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(318, '2015-06-10 10:04:02', 259, NULL, 'STC 71225K BMN ADJ.', '71225K', NULL, 'PLAZA CAN BERCELO 11 PISO 1 PUERTA B', NULL, NULL, NULL, '1', NULL, '1', 'DESCERRAJE INSTALACIÓN DE CERRADURA. BYM SERVICIOS INMOBILIARIOS, 677379644.', '87', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(319, '2015-06-10 10:11:03', 260, NULL, 'PLUS ULTRA', NULL, NULL, 'PRÍNCIPE DE ESPAÑA, 45', NULL, 971605656, NULL, '1', NULL, '1', 'ESTUDIOS PARA LA JUESTIFICACIÓN DE LOS EQUIPOS DE CLIMA INSTALADOS EN PLUS ULTRA.', '87', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(320, '2015-06-10 10:15:10', 261, NULL, 'VAR 33376K SAREB BMN ADJ.', '33376K', NULL, 'C/ JOAN MASSANET I MORAGUES 14 PISO 4 PUERTA B URB. GENERAL RIERA.', NULL, NULL, NULL, '1', NULL, '0', 'SE CAEN LAS BALDOSAS DE LA GALERÍA, ENVIAR PRESUPUESTO Y FOTOS. FINCAS FIOL 609980500.', '92', NULL, NULL, NULL, '1', '2', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', '28-01-15 SE ENTREGAN LLAVES.', NULL, ''),
(321, '2015-06-10 10:26:46', 262, NULL, 'STC 53953K BMN ADJ.', '53953K', NULL, 'ALEJANDRO ROSSELLÓ 5 5B 1 B', NULL, NULL, NULL, '1', NULL, '1', 'HACER COPIAS DE LLAVES DE ENTRADA Y ASCENSOR. FINCAS FIOL, 609980500.', '92', NULL, NULL, NULL, '1', '2', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', 'SE ENTREGARON EL 04/03/15.', NULL, ''),
(322, '2015-06-10 10:31:49', 263, NULL, 'TPJ 55336 BMN ADJ.', '55336K', NULL, 'C/ GESSAMI 1', NULL, NULL, NULL, '1', NULL, '1', 'TPJ 20/03/15 A LAS 10 H.RIBOT BINIMELIS FRANCESCA, 606597769', '8', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(323, '2015-06-10 10:36:39', 264, NULL, 'ANTONIO GALMÉS BAUZÁ', NULL, NULL, 'C/ OLESA, 32 2º', '07500', NULL, NULL, '1', NULL, '1', 'HUMEDADES EN EL TECHO DE LA VIVIENDA. ANTONIO GALMÉS 616469393.', '84', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(324, '2015-06-10 10:40:22', 174, NULL, 'TPJ 21281K BMN. ADJ.', '21281K', NULL, 'C/ MENORCA 4 ESCALERA 2 PISO 2 PUERTA 21. URBANIZACIÓN EDIF. ES PARC.', NULL, NULL, 629612276, '1', NULL, '1', 'TPJ 29/05/15 A LAS 11H. APERTURA Y CAMBIO DE CERRADURA.', '3', NULL, NULL, NULL, '1', '9', '0', NULL, NULL, '1', '2', '0', NULL, NULL, '13', 'SE ENTREGAN 3 LLAVES, 2 DE LA VIVIENDA Y 1 DEL PORTAL.', 'SE ENTREGAN 2 LLAVES, 1 DE LA VIVENDA Y 1 DEL PORTAL.', ''),
(325, '2015-06-10 10:41:29', 191, NULL, 'TPP 69207K SANTANDER ADJ.', '69207K', NULL, 'PARAJE C''AN COSME', NULL, NULL, 685012324, '1', NULL, '1', 'TPP 03/06/15 A LAS 11:15 H. CAMBIO DE CERRADURA VIVIENDA (ESTÁ SOLDADA A LA PUERTA DE METAL DE LA VIVIENDA) Y CAMBIO DE CANDADO REJA ENTRADA. Mª PAZ MORENO 685012324. AGENTE: B&G CONSULTORES INMOBILIARIOS; 620019198.', '51', NULL, NULL, NULL, '1', '11', '1', NULL, NULL, '1', '2', '0', NULL, NULL, '13', 'se entregan 4 llaves que corresponden 2 de la vivienda y 2 de accesos', 'se entregan 5 llaves que corresponde 3 de la vivienda y 2 de accesos', ''),
(326, '2015-06-10 10:51:59', 265, NULL, 'DAC PONTARRO', NULL, NULL, 'C/ PONTARRO 24', NULL, NULL, NULL, '1', NULL, '1', 'DAC 27/01/15 A LAS 10 H.NOTARÍA DE ARTÁ.', '8', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(327, '2015-06-10 10:56:02', 266, NULL, 'VAR 27154K BMN ADJ.', '27154K', NULL, 'C/ CARMEN 81', NULL, NULL, NULL, '1', NULL, '1', 'TIENE TODAS LAS TUBERÍAS CON CEMENTO. API ACTIVUM 680599699.', '83', NULL, NULL, NULL, '1', '10', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '10', NULL, NULL, ''),
(328, '2015-06-10 11:00:35', 267, NULL, 'STC 60125K BMN ADJ.', '60125K', NULL, 'C/ HISTORIADOR TRUYOLS 22 PISO-1', NULL, NULL, NULL, '1', NULL, '1', 'CONTACTAR CON EL ADMINISTRADOR PARA SOLICITAR LLAVES. OBTENCIÓN MANDO DE GARAJE. NO HAY API.', '84', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(330, '2015-06-10 11:17:29', 268, NULL, 'TPP 57758K SANTANDER ADJ.', '57758K', NULL, 'C/ SAN CRISTOFOL 24 PISO 2º PUERTA 2', NULL, NULL, NULL, '2', NULL, '1', 'TPP 21/01/15 A LAS 10 H. ENSEÑAT PALMER 675922866.', '58', NULL, NULL, NULL, '1', '10', '0', NULL, NULL, '1', '2', '0', NULL, NULL, '10', 'SE LE ENTREGAN 2 LLAVES.', 'SE LE ENTREGA 1 LLAVE.', ''),
(331, '2015-06-10 11:21:41', 269, NULL, 'VAR 20330K BMN ADJ.', '20330K', NULL, 'C/ GENERAL RIERA Y FRANCISCO SITJAR.', NULL, NULL, NULL, '1', NULL, '1', 'NO HAY LUZ EN LA ENTRADA. EDIFICIO DE OFICINAS. MAR LLABRÉS 871962450.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(335, '2015-06-11 07:38:51', 272, NULL, 'OFELIA MARGARITA BYLEVELD', NULL, NULL, 'C/ PRÍNCEPS DÉSPANYA Nº 19 A', '07141', 971602975, 653523573, '1', NULL, '1', 'MONTAR 5 MUEBLES NUEVOS EN KIT COLGAR, 2 PERCHEROS CAMBIAR VARIOS APLIQUES. 4 HORAS MANOS DE OBRA MATERIAL A SU CARGO.', '87', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(336, '2015-06-11 07:41:39', 273, NULL, 'STC 18916K SANTANDER', '18916K', NULL, 'C/ AMILCAR 7 PISO B', NULL, NULL, NULL, '1', NULL, '1', 'LLAMAN DEL HOTEL COLINDANTE PARA LIMPIAR TERRAZA. FINCAS FIOL, 692644739.', '92', NULL, NULL, NULL, '1', '2', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '11', NULL, NULL, ''),
(337, '2015-06-11 07:44:00', 129, NULL, 'VAR 57838K BMN ADJ.', '57838K', NULL, 'C/PROVENÇA 14 PISO 3º PUERTA 2', NULL, NULL, 692644739, '1', NULL, '1', 'VALORAR, MANDAR PARA REPARA Y CONTACTAR CON EL API. REALIZAR PRESUPUESTO PARA SOLICITAR AUTORIZACIÓN DEL GESTOR.', '92', NULL, NULL, NULL, '1', '2', '0', NULL, NULL, NULL, '0', '0', NULL, NULL, '13', NULL, NULL, ''),
(338, '2015-06-11 07:45:21', 128, NULL, 'STC 22616K BMN. ADJ.', '22616K', NULL, 'C/GENERAL RIERA, 45', NULL, NULL, 606326628, '1', NULL, '1', '2 LLAVES A API. EL MISMO DÍA DEL CAMBIO, RESTO A GESTOR. IMPRESCINDIBLE TELF. DE ALGÚN VECINO PARA PODER CERRAR Y FACTURAR EL SERVICIO.', '92', NULL, NULL, NULL, '1', '11', '1', NULL, NULL, '1', '2', '1', NULL, NULL, '13', 'se hace entrega de una llave de un candado', 'se hace entrega de una llave de un candado', ''),
(339, '2015-06-11 07:51:26', 113, NULL, 'COMUNIDAD DE PROPIERTARIOS PONENT ', NULL, NULL, 'C/ LLEIDA 1 Y 3', '07500', 971551716, NULL, '1', NULL, '2', 'VERIFICAR SI LA AVERÍA ES COMUNITARIA O PRIVATIVA', '76', NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, '0', '0', NULL, NULL, '11', NULL, NULL, ''),
(340, '2015-06-11 07:53:09', 103, NULL, 'DAC AGUILO', '71162K', NULL, 'C/ MARIA AGUILO, 9 4º 3ª', '07', 600057162, NULL, '1', NULL, '1', 'DACION DÍA 20/05/2015 A LAS 10:00 CON VISITA PREVIA EL DÍA 19\r\n\r\nLLAMAR A LAURA ( DEUDORA ) 600057162', '92', NULL, NULL, NULL, '1', '4', '0', NULL, NULL, '1', '2', '0', NULL, NULL, '13', 'SE LE HACE ENTREGA DE 3 LLAVES, 2 DE LA VIVIENDA Y 1 DEL PORTAL.', 'SE LE HACE ENTREGA DE 1 LLAVE DE LA VIVIENDA Y 1 DEL PORTAL.', ''),
(341, '2015-06-11 07:55:25', 206, NULL, 'STC 26300K BMN AD.', '26300K', NULL, 'C/ JOAN ALCOVER 78 PISO BJ PUERTA C', NULL, NULL, NULL, '1', NULL, '1', 'DESCERRAJE. LLAVES LAS TIENE API; ANTONIO PALMER INMOBILIARIA, 658983280. CONSEGUIR TELÉF. DE ALGÚN VECINO PARA PODER CERRAR SERVICIO. 2 LLAVES AL API, RESTO GESTOR.', '2', NULL, NULL, NULL, '1', '3', '0', NULL, NULL, '1', '2', '0', NULL, NULL, '13', 'SE LE HACE ENTREGA DE 2 LLAVES DE LA VIVIENDA.', 'SE LE HACE ENTREGA DE 1 LLAVE DE LA VIVIENDA.', ''),
(342, '2015-06-11 07:58:52', 274, NULL, 'MIGUEL BALLESTER RIGO', NULL, NULL, 'CAMÍ DEL FRARE DE SA TORRE 33', NULL, 971769177, NULL, '1', NULL, '1', 'SE HA ROTO EL FREGADERO DE LA COCINA DE LOZA. MARÍA VICENS 971769177.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '11', NULL, NULL, ''),
(343, '2015-06-11 08:02:47', 275, NULL, 'DAVID GALVEZ CANO', NULL, NULL, 'C/BALANGUERA, 5 2ºB', '07141', NULL, 670597045, '1', NULL, '1', 'ROTURA LOZA SANITARIA INODORO DE COLOR.626369628 / 670597045.', '87', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '11', NULL, NULL, ''),
(344, '2015-06-11 08:23:08', 276, NULL, 'COMINUDAD DE PROPIETARIOS LIBERTAD Nº 4 Y Nº6', NULL, NULL, 'COMINUDAD DE PROPIETARIOS LIBERTAD Nº 4 Y Nº6', '07013', 971456684, 65262601, '1', NULL, '1', 'POSIBLE ROTURA BAJANTE, CAUSA DAÑOS DE HUMEDAD EN EL 4º A DE LIBERTAD 4.65262601', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '11', NULL, NULL, ''),
(345, '2015-06-11 08:25:19', 277, NULL, '52719309', NULL, NULL, 'C/ ANTONIO TORRANDELL Nº 76 1º DERECHA.', NULL, NULL, 676844503, '1', NULL, '1', 'NO SALE AGUA FRÍA Y LA CISTERNA PIERDE AGUA. NANCY ARISTIZABAL 676844503.', '76', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '11', NULL, NULL, ''),
(346, '2015-06-11 08:27:37', 278, NULL, 'INF 26772K BMN ADJ.', '26772K', NULL, 'C/ SANT IGNASI 64 A ESCALERA 6 PISO 1 PUERTA D.', NULL, NULL, NULL, '1', NULL, '1', 'MIRAR SI ESTÁ OCUPADO EL INMUEBLE, Y SI TODO EL EDIFICIO ESTÁ OCUPADO INDICARLO.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '9', NULL, NULL, ''),
(347, '2015-06-11 08:28:25', 167, NULL, 'INMUEBLE BS A0-12631-0001 LL.', NULL, 'A0-12631-0001', 'C/ PERE JOAN LLOBET (VICTOR PRADERA) Nº 8 5ª 1', NULL, NULL, NULL, '1', NULL, '1', 'COMPROBAR QUE VIVIENDA NO ESTÉ OCUPADA, CAMBIAR CERRADURA. SE MONTAN JUEGOS 8 COPIAS CON COMUNITARIAS QUE TENDRÁ GESTORÍA.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '9', NULL, NULL, ''),
(348, '2015-06-11 08:46:44', 279, NULL, 'INMUEBLE BS A0-55527-0001 LL', NULL, 'A0-55527-0001', 'C/ SESTEPAR Nº 18 ESC. 1 1º DCHA.', NULL, NULL, NULL, '1', NULL, '1', 'LA LLAVE NO ENCAJA EN EL COMBÍN, RECOGER TODOS LOS JUEGOS Y HACER COMPROBACIÓN. ACTUAR SI ES PRECISO. LLAVES RESERVAAS PARA 05/06.', '158', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(351, '2015-06-11 10:06:55', 282, NULL, 'STC 53273K BMN ADJ.', '53273K', NULL, 'C/ SANT VICENÇ DE FERRER, 42', NULL, NULL, NULL, '1', NULL, '1', 'LIMPIAR VIVIENDA, ESTÁ LLENO DE COLCHONES, HABITACIÓN LLENA DE HECES TAPADAS CON ARENA Y UNA HABITACIÓN QUE NO SE HA PODIDO ENTRAR.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(352, '2015-06-11 10:45:41', 281, NULL, 'VAR 37809K SANTANDER (BANESTO)', '37809K', NULL, 'C/ JOAQUIM SOROLLA 11 PISO 5 PUERTA DERECHA.', NULL, NULL, 971228224, '1', NULL, '1', 'AL API LE FALTA UNA LLAVE, HAY QUE CONSEGUIRLA. ADMINISTRADOR; 971 228224.  FINCAS FIOL: 692644739. ENTREGAR COPIA AL API.', '92', NULL, NULL, NULL, '1', '2', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', 'SE HACE ENTREGA DE LLAVE COMUNITARIA.', NULL, ''),
(355, '2015-06-12 08:41:14', 158, NULL, 'INMUEBLE BS A0-59324-0001 LI+CK', NULL, 'A0-59324-0001', 'UR ENTREPLAYAS-SON XORIGUER Nº6 BLOQ. 3 1 132', NULL, NULL, NULL, '2', NULL, '1', 'LIMPIEZA/VACIADO CHECK LIST.', '48', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '1', '3', '0', 'HACER COPIAS', NULL, '10', NULL, 'ENTREGADAS LLAVES.', ''),
(359, '2015-06-12 09:22:02', 286, NULL, 'STC 13618K SANTANDER (BANESTO)', '13618K', NULL, 'C/ PICOS DE EUROPA, 2 PISO 1º PUERTA 7.', NULL, NULL, NULL, '1', NULL, '1', 'DESCERRAJE FINCA, EN CASO DE ESTRA OCUPADA EMITIR INFORME . AGENTE: VIRGINIA LIZ 685613858.', '92', NULL, NULL, NULL, NULL, '5', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(365, '2015-06-12 09:39:00', 288, NULL, 'INMUEBLE BS A0-51353-0001 TOMA', NULL, 'A0-51353-0001', 'PL POLÍGONO 1 PARCELAS 290A Y 290B Nº SN', NULL, NULL, NULL, '1', NULL, '1', 'COLOCAR CARTEL EN SOLAR + PTO. DE VACIADO DE CASETA DEL SOLAR. NOA HAY QUE RECOGER LLAVES.\r\nEL PTO. DEL VALLADO SE PASARÁ POR EL 729459.', '153', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(367, '2015-06-12 09:56:53', 290, NULL, 'GERTRUDIS HORTA PRAT', NULL, NULL, 'C/ MANACOR 26-1-3', '07006', NULL, NULL, '1', NULL, '1', 'AL LOCAL DE ABAJO LE ESTÁ CAYENDO AGUA. JORDI HIJA 692069700. URGENTE ATENDER SOBRE LAS 15/15:30 H.. VAMOS POR PRIVATIVO, SI ES AVERÍA DE ASEGURADA REPARAR.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '11', NULL, NULL, ''),
(368, '2015-06-12 09:59:52', 251, NULL, 'VAR 36317K SAREB BMN ADJ.', '36317K', NULL, 'C/MANACOR 41 PISO 1 PUERTA 1', NULL, NULL, NULL, '1', NULL, '1', 'LOCALIZAR AVERÍA, SOLUCIONAR PROVISIONALMENTE, VISITAR INMUEBLE PERJUDICADO PARA VALORAR DAÑOS (LOCAL BAJO EL PISO DEL BANCO). CONTACTAR CON EL API; PALMER ESTRADES 971 24 01 21.', '92', NULL, NULL, NULL, '1', '4', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(370, '2015-06-12 10:18:46', 223, NULL, 'TPJ 14136K CASSIOPEIA', '14136K', NULL, 'C/ PIC ALMANZOR 1 ESC. 1 PISO 4 PUERTA B', NULL, 971718002, NULL, '1', NULL, '1', 'TPJ 1/06/15 A LAS 13 H. LIMPIEZA Y VACIADO. PROCURADOR MIGUEL SOCÍAS 971718002. LIMPIEZA DE MANTENIMIENTO. ', '92', NULL, NULL, NULL, NULL, '5', '0', NULL, NULL, '1', '2', '0', NULL, NULL, '13', 'ROBERTO HIZO TPJ Y SE LAS ENTREGÓ.', 'SE LE HA HECHO ENTREGA DE LAS LLAVES.', ''),
(371, '2015-06-12 10:31:04', 291, NULL, 'INMUEBLE BS A0-62151-0001 TOMA', NULL, 'A0-62151-0001', 'C/ AUTO JUAN CARLOS I Nº44 1A', NULL, NULL, NULL, '1', NULL, '1', 'TPJ 12/03/15 A LASM 11 H. LIMPIEZA Y CHECK LIST.', '43', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '1', '1', '0', NULL, NULL, '13', NULL, 'SE HA HECHO DEVOLUCIÓN DE LLAVES.', ''),
(372, '2015-06-12 10:36:54', 292, NULL, 'INMUEBLES BS 43-19247-0001 PF', NULL, 'BS 43-19247-0001', 'C/ MOSCARI Nº 1 BLOQ. 0B ESC. 2 6 4', NULL, NULL, NULL, '1', NULL, '1', 'DEJAR ACCESOS SEGUROS Y OPERATIVOS. PUERTA FORZADA.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '1', '1', '0', NULL, NULL, '13', NULL, 'DEVOLUCIÓN LLAVES. FINCIONAN CORRECTAMENTE.', ''),
(373, '2015-06-12 10:37:49', 181, NULL, 'STC 32854K SAREB BMN ADJ.', '32854K', NULL, 'C/ANTONI ROSSELLÓ I NADAL 0006 PISO 4 PUERTA 2.', NULL, NULL, NULL, '1', NULL, '1', 'SÓLO SE PUEDE PROCEDER EN EL MOMENTO SI HAY MAX 5M3 DE VACIADO Y ES UNA LIMPIEZA DE MANTENIMIENTO.', '92', NULL, NULL, NULL, '1', '2', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, ''),
(374, '2015-06-12 10:39:32', 122, NULL, 'DAC BERNAT', '71317K', NULL, 'C/ BERNAT D''ES CLOT Nº11 2ºA', NULL, NULL, 635807859, '1', NULL, '1', 'DACION DÍA 21/05/15  A LAS 11.', '3', NULL, NULL, NULL, '1', '8', '0', NULL, NULL, '1', '2', '0', NULL, NULL, '13', 'SE ENTREGAN 3 LLAVES, 2 DE LA 1ª VIVIENDA Y 1 DE LA COMUNIDAD.', 'SE ENTREGA 1 LLAVE DE LA VIVIENDA.', ''),
(381, '2015-06-15 07:26:39', 295, NULL, 'VAR 20938K BMN ADJ.', '20938K', NULL, 'C/FINCA LA VIÑA POL. 1 PORTAL PARC.63/64', NULL, NULL, NULL, '1', NULL, '1', 'LA PUERTA DE LA VIVIENDA TIENE LA MISMA LLAVE Y CIERRA BIEN, SE NOS OLVIDÓ COMPROBAR LOS OTROS ACCESOS. SUSTITUIR CANDADO EXTERIOR, REPONER REJILLA DE LA PUERTA. VACIAR Y LIMPIAR.', '76', NULL, NULL, NULL, NULL, '8', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '0'),
(386, '2015-06-15 08:34:51', 298, NULL, 'OBR 24630K BMN ADJ.', '24630K', NULL, 'PLAZA NOVA 5 PISO 1 PUERTA C URB. PK26', NULL, NULL, NULL, '1', NULL, '1', 'REVISAR INCIDENCIAS QUE TIENE EL INQUILINO, NUESTRO PORTERO AUTOMÁTICO NO FUNCIONA, LA PUERTA DE MADERA DEL LAVAVJILLAS SE HA DESCOLGADO, LOS ACCESOS A LA AZOTEA DE LAS ENTRADAS 5C Y 5D DE PLAZA NUEVA NO TIENEN CERRADURA.', '144', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '0'),
(388, '2015-06-15 09:44:24', 193, NULL, 'TPJ 65574K SANTANDER ADJ.', '65574K', NULL, 'C/PIZARRO 63 PISO 1º PUERTA B', NULL, NULL, NULL, '1', NULL, '1', 'TPJ 26/05/15 A LAS10 H. PROCURADOR: MARIA MASCARÓ GALMES. API: ES FAR D''AUCANADA 610039410.', '43', NULL, NULL, NULL, '1', '9', '0', NULL, NULL, '1', '2', '0', NULL, NULL, '13', 'SE HACE ENTREGA DE 2 LLAVES DE LA VIVIENDA AL API.', 'SE HACE ENTREGA DE 1 LLAVE DE LA VIVIENDA.', '4'),
(389, '2015-06-15 09:45:04', 140, NULL, 'TPP 17087K SANTANDER', '17087K', NULL, 'C/ SILENCIO 9, PISO 3º PUERTA B', NULL, NULL, NULL, '1', NULL, '0', 'TRAS CAMBIO URGENTE, 2 LLAVES AL API EL MISMO DÍA DEL CAMBIO Y EL RESTO AL GESTOR. SOLICITANTE Mª PAZ MORENO 685012324.', '143', NULL, NULL, NULL, '1', '9', '0', NULL, NULL, '1', '2', '0', NULL, NULL, '13', 'hay 2 llaves de seguridad de la puerta principal y 2 llaves más correspondiente a la puerta de la comunidad y otra puerta de cancela también de comunidad.\r\nSE ENTREGAN 4 LLAVES A API 2 DE LA VIVIENDA Y 2 COMUNITARIAS.', 'hay 3 llaves de seguridad de la puerta principal\r\nSE ENTREGAN 3 LLAVES.', '4'),
(390, '2015-06-15 09:48:42', 293, NULL, 'OBR 36355K SAREB BMN ADJ.', '36355K', NULL, 'C/ ROURES 13 PORTAL 2 URB. MARINA BINIANCOLLET.', NULL, NULL, NULL, '2', NULL, '1', 'RETIRAR RÓTULOS DE LA VIVENDA, QUE EL API NOS EXPLIQUE EN QUÉ CONSISTE. ACTIVUM 692207439.', '130', NULL, NULL, NULL, NULL, '10', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '10', 'SE PUSO EN CONTACTO CON EL API Y QUEDARON QUE PARA REALIZAR EL TRABAJO NO HACÍAN FALTA LAS LLAVES.', NULL, '4');
INSERT INTO `llx_projet_extrafields` (`rowid`, `tms`, `fk_object`, `import_key`, `nom_cli`, `ref_K_cli`, `macro_cli`, `dir_cli`, `zipcode_cli`, `tel_cli`, `mov_cli`, `prov_cli`, `lc_cli`, `ser_cli`, `tra_cli`, `loc_cli`, `dni_cli`, `rc_cli`, `mail_cli`, `pj_api_llv`, `pj_api_slct`, `pj_apj_returned`, `pj_api_motive`, `pj_api_location`, `pj_gst_llv`, `pj_gst_slct`, `pj_gst_returned`, `pj_gst_motive`, `pj_gst_location`, `slct_oper`, `pj_api_obs`, `pj_gst_obs`, `cat_oper`) VALUES
(393, '2015-06-16 07:21:30', 294, NULL, 'STC 33411K SAREB AMN ADJ.', '33411K', NULL, 'URB. MARINA BINIANCOLLET 4 PORTAL 4 URB. MARINA BINIANCOLLET.', NULL, NULL, NULL, '1', NULL, '1', 'RETIRAR RÓTULO DE LA VIVENDA, QUE EL API NOS EXPLIQUE EN QUÉ CONSISTE. ACTIVUM 692207439.', '130', NULL, NULL, NULL, NULL, '10', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '10', 'HEMOS CONTACTADO CON EL API Y NOS HA DICHO QUE NO NOS HACÍA FALTA LLAVE PARA REALIZAR EL TRABAJO.', NULL, '4'),
(394, '2015-06-16 07:24:24', 168, NULL, 'TPJ 55363K BMN ADJ.', '55363K', NULL, 'C/ CLAPERS Nº95', NULL, NULL, NULL, '1', NULL, '1', 'TPJ 02/06/15 A LAS 10H. API: CENTRE COMPTABLE LA VILA, S.L., 626616410. IR PREVISTOS DE FURGONETA POR SI HAY QUE VACIAR ALGO DE LA VIVIENDA AL MOMENTO. NO SE HACE HASTA QUE EL PROCURADOR NOS LO INDIQUE.', '4', NULL, NULL, NULL, '1', '6', '0', NULL, NULL, '1', '2', '0', NULL, NULL, '13', 'SE LE ENTREGAN 4 LLAVES DE 2 ACCESOS.', 'SE LE NETREGAN LLAVES.', '4'),
(395, '2015-06-16 08:27:26', 301, NULL, 'INMUEBLE BS A0-25619-0001 ADEC+CK', NULL, 'A0-25619-0001', NULL, NULL, NULL, NULL, '1', NULL, '1', 'DESTAPIAR Y REALIZRA FOTOS, VACIADO Y LIMPIEZA. VOLVER A TAPIAR EN EL MOMENTO QUE SE FINALICE EL VACIADO/LIMPIEZA. MUIY IMPORTANTE EL TEMA DE LAS FOTOS, MÍN. 4 FOTOS POR ESTANCIA.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(398, '2015-06-16 08:31:07', 211, NULL, 'INMUEBLES BS A0-62298-0001 TOMA', NULL, 'A0-62298-0001', 'RD. PORRERA Nº9 PB 1', NULL, NULL, 609602020, '1', NULL, '1', 'TPJ 29/04/15 A LAS 10:30 H. JUAN FCO. CERDA BESTARD; 609602020.', '99', NULL, NULL, NULL, '1', NULL, '1', NULL, NULL, NULL, '1', '0', NULL, NULL, '15', NULL, '8 LLAVEROS ENTREGADOS.', '7'),
(399, '2015-06-16 08:38:08', 302, NULL, 'FINSOLUTIA PROPIEDAD 14780', NULL, NULL, 'AVDA. PEGUERA, 61 PI:01 PT:F', NULL, NULL, NULL, '1', NULL, '1', 'CAMBIO DE CERRADURA. QUEDARNOS UNA COPIA Y EL RESTO ENTREGARLAS AL CONTACTO. CONCERTAR CITA CON LA COMERCIAL.', '34', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '9', NULL, NULL, '4'),
(401, '2015-06-16 08:55:46', 303, NULL, 'VAR 29143K SAREB BMN ADJ.', '29143K', NULL, 'C/ TRITÓN 6 PISO BAJO', NULL, NULL, NULL, '1', NULL, '1', 'ATASCO Y DOS PINOS QUE ESTÁN A PUNTO DE CAER. API: ES FAR D''AUCANADA 610039410.', '30', NULL, NULL, NULL, NULL, '9', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(402, '2015-06-16 09:03:13', 304, NULL, 'INMUEBLE BS MACRO A0-22921-0001 OC.', NULL, 'A0-22921-0001', 'C/ BARTOMEU TORRES Nº 53 5', NULL, NULL, NULL, '1', NULL, '1', 'COMPROBACIÓN DE OCUPAS. ASEGURAR PUERTA.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '1', '1', '0', NULL, NULL, '13', NULL, 'SE HACE NTREGA DE 8 LLAVEROS.', '4'),
(403, '2015-06-16 09:24:03', 305, NULL, 'TPJ 57271K BMN ADJ.', '57271K', NULL, 'SANTA BARBARA 52 PISO BAJO PUERA 1', NULL, NULL, NULL, '2', NULL, '1', 'RECOGER LLAVES EN FORT D L''EAU, 24 LOCAL 971352231, REALIZAR EL PACK DE DACIÓN. CAMBIO DE CERRADURA, LIMPIEZA Y VACIADO', '58', NULL, NULL, NULL, '1', '10', '0', NULL, NULL, '1', '2', '0', NULL, NULL, '10', 'SE HACE ENTREGA DE 2 LLAVES.', 'SE HACE ENTREGA DE 1 LLAVE.', '4'),
(408, '2015-06-18 07:49:37', 154, NULL, 'INMUEBLES BS A0-62446 VARIOS TOMA', NULL, 'A0-62446', 'C/ DEGOLLADOR Nº61 BJ ', NULL, NULL, NULL, '2', NULL, '1', 'LLAVES RESERVADAS EN GESTORÍA. DEUDOR; CALA BLANCA S.A. 7 AUTOS Nº68/2014.', '48', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '10', NULL, NULL, '4'),
(410, '2015-06-19 09:25:14', 308, NULL, 'TPJ 33594K SAREB BMN ADJ.', '33594K', NULL, 'C/ HORITZO 0012', NULL, NULL, NULL, '1', NULL, '1', 'TPJ 06/07 A LAS 12 H. PROCURADOR: ANA MARÍA CRESPÍ, 971 495919.', '17', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(414, '2015-06-19 10:58:43', 306, NULL, 'INMUEBLE SA A0-56501-0001 TOMA', NULL, 'A0-56501-0001', 'C/ DE SA FONT DE SA CALA, URB. NA TACONERA Nº 4 PB DCHA.', NULL, NULL, NULL, '1', NULL, '1', 'TPJ 17/2 A LAS 10. LIMPIEZA Y CHECK LIST.', '43', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '1', '1', '0', NULL, NULL, '13', NULL, 'SE HACE ENTREGA DE 8 LLAVEROS.', '4'),
(415, '2015-06-19 11:00:44', 170, NULL, 'INMUEBLE BS A0-51347-0001 LI+CK', NULL, 'A0-51347-0001', 'C/ JOAN ALCOVER Nº S/N ESC. 2 1 B.', NULL, NULL, NULL, '1', NULL, '1', 'COMPROBAR SI LAS LLAVES FUNCIONAN, COMPLETAR JUEGOS DE 8 LLAVES, FOTOS CON FACAHDA, CUADRO LUCES.... PASAR DATOS ADM. Y ENTREGA.', '76', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '1', '0', NULL, NULL, '13', 'SE LE HACE UNA ENTREGA DE UN JUEGO DE LLAVES A ROBERTO.', 'SE LE HACE ENTREGA DE 8 LLAVEROS.', '4'),
(417, '2015-06-19 11:04:33', 110, NULL, 'TPJ SOLAR', NULL, NULL, 'SOLAR 24 PLAYA LOS FRANCESES', NULL, 629612276, NULL, '1', NULL, '1', 'APERTURA Y CAMBIO DE CERRADURA.', '3', NULL, NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, '0', '1', NULL, NULL, '9', NULL, NULL, '4'),
(419, '2015-06-19 11:12:41', 313, NULL, 'M05123751', NULL, NULL, 'ES PONTES, 265 4 BAJO 2', '07689', NULL, NULL, '1', NULL, '1', 'LIMPIEZA Y RETIRADA DE MUEBLES Y ENSERES. AUTORIZADOS HASTA 4 CONTENEDORES, SI EXCEDE ENVIAR PRESUPUESTO. API: RAUL GRACIA 600.500.864.\r\nHAY QUE HACER FOTOS A LAS FURGONETAS VARGADAS CON LO RETIRADO, MUY IMPORTANTE PARA EL COBRO.', '84', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(420, '2015-06-19 11:15:43', 216, NULL, 'INMUEBLE BS A0-61762-0001 TOMA ', NULL, 'A0-61762-0001', 'C/ LLUÍS MARTÍ Nº 116 3B', NULL, NULL, NULL, '1', NULL, '1', 'CAMBIO DE BOMBÍN, COPIA DE DILIGENCIA, VACIADO SIN LIMPIEZA SI NO SUPERA MÁS DE 140 €.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '1', '1', '0', NULL, NULL, '11', NULL, 'SE HACE ENTREGA DE 8 LLAVEROS.', '4'),
(422, '2015-06-19 11:18:31', 287, NULL, 'STC 24668K BMN ADJ.', '24668K', NULL, 'C/ MIGUEL BELTRÁN 3 PISO 1 PUERTA S/N', NULL, NULL, NULL, '1', NULL, '1', 'DESCERRAJAR FINCA. API: PISOS SA POBLA S.L. 664442201.', '76', NULL, NULL, NULL, '1', '8', '0', NULL, NULL, NULL, '2', '0', NULL, NULL, '13', 'SE ENTREGAN TODAS LAS LLAVES AL API.', NULL, '4'),
(423, '2015-06-19 11:19:32', 283, NULL, 'TPJ JUAN ROSSELLO', '23603 K', NULL, 'C/ JUAN ROSSELLO ZAFORTEZA, 11', NULL, 971714524, 626099976, '1', NULL, '1', 'TPJ 18/06/15 A LAS 11 H. ANTONIO  BUADES 626099976.', '92', NULL, NULL, NULL, NULL, '12', '1', NULL, NULL, NULL, '2', '1', NULL, NULL, '9', 'TOMA DE POSESIÓN SUSPENDIDA.', 'TOMA DE POSESIÓN SUSPENDIDA.', '4'),
(424, '2015-06-19 11:21:10', 185, NULL, 'TPJ 19327K BMN ADJ.', '19327K', NULL, 'C/ JOAN DE SARIDAKIS Nº22 PTA.11, URB. EDIF. PULLMAN IV', NULL, NULL, 971717298, '1', NULL, '1', 'TPJ 02/06/15 A LAS 10:30 H. API:FINCAS FIOL, C.B. 692644739', '92', NULL, NULL, NULL, '1', '2', '0', NULL, NULL, '1', '2', '0', NULL, NULL, '13', 'SE ENTREGAN 4 LLAVES DE 2 CERRADURAS.', 'SE ENTREGAN 2 LLAVES DE 2 CERRADURAS.', '4'),
(425, '2015-06-19 11:22:48', 214, NULL, 'INMUEBLES BS S1-10133-0001 CK+BO.', NULL, 'S1-10133-0001', 'PZ GONZALO TORRENTE BALLESTER Nº8 ESC. 3 3A', NULL, NULL, NULL, '1', NULL, '1', 'BOMBÍN+CHECKLIST.ENVIARAN LLAVES POR SEUR.', '36', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '1', '1', '0', NULL, NULL, '13', NULL, NULL, '4'),
(426, '2015-06-19 11:24:07', 215, NULL, 'INMUEBLES BS S1-10133-0003 CK+BO.', NULL, 'S1-10133-0003', 'C/JULIÀ BALLESTER, GRAVADOR Nº 5 ESC. 8 2A', NULL, NULL, NULL, NULL, NULL, '1', 'BOMBÍN+CHECKLIST.', '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '1', '1', '0', NULL, NULL, '13', NULL, 'SE HACE ENTREGA DE 8 LLAVEROS.', '4'),
(427, '2015-06-19 11:25:48', 213, NULL, 'INMUEBLES BS S1-10133-0002 CK-BO', NULL, 'S1-10133-0002', 'C/ JULIÁ BALLESTER, GRAVADOR Nº5 ESC. 8 1 C.', NULL, NULL, NULL, '1', NULL, '1', 'BOMBÍN+CHECKLIST. ENVIARAN LLAVES POR SEUR.', '36', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '1', '1', '0', NULL, NULL, '13', NULL, 'SE HACE ENTREGA DE 8 LLAVEROS. EL LLAVERO ROJO CONTIENE LAS LLAVES DEL BUZÓN.', '4'),
(430, '2015-06-19 12:00:03', 205, NULL, 'MACRO S3226861 COLOCAR CARTEL', NULL, 'S3226861', 'UR. CAPARROT 0036 00 03', NULL, NULL, NULL, '2', NULL, '1', 'RECOGER LLAVES, COLOCAR CARTEL Y ENTREGAR LLAVES. FOTO DEL CARTEL ANTES Y DESPUÉS DE COLOCARLO Y PARTE ENTREGA LLAVES SOLVIA FIRMADO.', '83', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '10', NULL, NULL, '4'),
(433, '2015-06-22 08:35:12', 317, NULL, 'DAC MIGUEL ORDINAS', NULL, NULL, 'C/ MIGUEL ORDINAS 62 Y 64', NULL, NULL, NULL, '1', NULL, '1', 'DAC 25/06 A LAS 12 H. NOTARÍA C/ BISBE LLOMPART, 133 INCA. VISITA PREVIA: 669872589, COSME.', '143', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(434, '2015-06-22 08:39:03', 318, NULL, 'DAC TRAVESSIA DE JESUS', NULL, NULL, 'TRAVESSIA DE JESÚS 4A 2º 5ª', NULL, NULL, NULL, '1', NULL, '1', 'DAC 26/06 A LAS 12 H.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(436, '2015-06-22 11:11:59', 257, NULL, 'TPP 58058K SANTANDER ADJ.', '58058K', NULL, 'C/ MARGARITA MONLAU 58 PISO BAJO PUERTA A', NULL, NULL, NULL, '1', NULL, '1', 'TPP 12/06/15 A LAS 9:30 H. Mº PAZ MORENO, 685 012 324.', '92', NULL, NULL, NULL, '1', '4', '0', NULL, NULL, '1', '2', '0', 'Hacer limpieza y vaciado', NULL, '13', 'Se hace entrega de 4 llaves que corresponden a la cancela y a la vivienda', 'Se entregan 2 llaves, 1 de la cancela y 1 de la vivienda', '4'),
(438, '2015-06-22 11:23:19', 320, NULL, 'MARÍA ISABEL PALMER MARTÍ', NULL, NULL, 'C/ ALBER, 68 2A', '07008', NULL, NULL, '1', NULL, '1', 'POSIBLE ROTURA EN TUBERÍA EN LA ZONA DEL BAÑO.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '11', NULL, NULL, '2'),
(440, '2015-06-22 11:38:29', 321, NULL, '52934138', NULL, NULL, 'TAFONA NOVA Nº 13, ESC. 3, PISO 2, PUERTA 14.', NULL, NULL, NULL, '1', NULL, '1', 'TPJ 06/05 A LAS 11 H. PROCURADOR: MARINA DEL PILAR PERELLÓ, 971845464.', '43', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(441, '2015-06-22 11:39:21', 243, NULL, 'MACRO A0-60675-0001 TOMA', NULL, 'A0-60675-0001', 'C/ PUIG DÁLARÓ Nº 14 6 2', '07015', NULL, 610559115, '1', NULL, '1', 'TPJ 13/04/15 LLUISA ADROVER THOMÁS 610559115.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '12', NULL, NULL, '4'),
(442, '2015-06-22 11:40:37', 289, NULL, 'INMUEBLE BS A0-51353-0001 ENC.', NULL, 'A0-51353-0001', 'PL POLÍGONO 1 PARCELAS 290A Y 290B Nº SN', NULL, NULL, NULL, '1', NULL, '1', 'VALLADO SOLAR.\r\n', '153', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(444, '2015-06-23 08:37:13', 322, NULL, 'VAR 33458K SAREB BMN ADJ.', '33458K', NULL, 'C/ UETAM 11', NULL, NULL, NULL, '1', NULL, '1', 'SE HAN PRODUCIDO FILTRACIONES APARENTEMENTE POR AGUA DE LLUVIA QUE PROVOCAN DAÑOS DE HUMEDAD.CONTACTAR CON API Y VALORAR DAÑOS Y FOTOS.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(445, '2015-06-23 08:47:20', 207, NULL, 'INMUEBELS BS MACRO A0-51347-0001 S3', NULL, 'A0-51347-0001', 'C/ JOAN ALCOVER Nº S/N ESC. 2 1B', '07300', NULL, 670698923, '1', NULL, '1', 'IR A VER CAUSAS Y ORIGEN GOTERA. VEN GOTERA CONSTANTE DESDE NUESTRO INMUEBLE AL GARAJE. PRESI: PEP 670698923. PERJUDICADO: JOSE, 610082214', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(446, '2015-06-23 08:54:52', 135, NULL, 'INMUEBLE BS SD-90985-0001 LL1', NULL, 'SD-90985-0001', 'C/ ANUNCIVAY, 26', '07', NULL, NULL, '2', NULL, '1', 'LLAVES RESERVADAS PARA ESTA TARDE 19/05 - ENVÍO DOCUMENTACIÓN VÍA MIAL.* 8 JUEGOS CON PRECINTOS EN LOS 6 VERDES ', '83', NULL, NULL, NULL, NULL, NULL, '1', 'EN ESPERA DE INSTRUCCIONES', 'LAS TIENE DAVID', NULL, '1', '0', NULL, NULL, '10', NULL, NULL, '4'),
(448, '2015-06-23 08:58:22', 323, NULL, 'INMUEBLE BS A0-18357-0001 PF', NULL, 'A0-18357-0001', NULL, NULL, NULL, NULL, '1', NULL, '1', 'ACUDIR AL INMUEBLE Y DEJARLO ASEGURADO. ADM. YOLANDA 971 366969.', '83', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '10', NULL, NULL, '4'),
(450, '2015-06-23 09:06:36', 324, NULL, 'UE 210138/206225', NULL, NULL, 'C/ URBANIZACIÓN CALAN BLANES S/N ESC. A PL01', NULL, NULL, NULL, '2', NULL, '1', 'LIMPIEZA BÁSICA Y RETIRADA DE ENSERES, EL MOBILIARIO EN BUEBNESTADO SE DEJA.', '48', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '10', NULL, NULL, '4'),
(451, '2015-06-23 09:17:03', 115, NULL, '50464592', NULL, NULL, 'PZA/FORMENTOR Nº8 PLANTA BJA. PUERTA H-B-3', NULL, 971845464, 671501504, '1', NULL, '1', 'HACER LIMPIEZA', '84', NULL, NULL, NULL, NULL, '0', '0', 'LLAVES DEL BANCO POPULAR', '1 LLAVE LA TIENE EL DEUDOR Y LAS OTRAS EN EL CAJON', NULL, '0', '0', NULL, NULL, '12', 'SE ENTREGAN 5 COPIAS DE LLAVES DE SEGURIDAD PUERTA DE ENTRADA.', NULL, '4'),
(453, '2015-06-23 09:26:36', 325, NULL, 'TERESA GARCÍA MONTERO', NULL, NULL, 'URB. SON GALLARD CALLE B, 27 PARCELA.', '07198', NULL, NULL, '1', NULL, '1', 'SALE AGUA DE UNA TUBERÍA, SE HA ROTO POR LA PARED.', '155', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '11', NULL, NULL, '2'),
(454, '2015-06-23 09:28:56', 280, NULL, 'INMUEBLE BS SD-09792-0002 LL', NULL, 'SD-09792-0002', 'C/ CASES DE SON AMETLER Nº 35-1 37', NULL, NULL, NULL, '1', NULL, '1', 'CONSEGUIR LLAVES GARAJE. ADMINISTRADOR: GENIUS ASESORES 971436589.', '92', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '1', '0', NULL, NULL, '13', NULL, 'Se tienen que realizar 8 llaveros y no sé si se tiene o no que poner un mando en el llavero rojo\r\nSE HAN ENTREGADO 8 LLAVEROS.', '4'),
(460, '2015-06-23 11:04:04', 329, NULL, 'VAR 19530K BMN ADJ.', '19530K', NULL, NULL, NULL, NULL, NULL, '1', NULL, '1', 'CONSEGUIR LLAVES COMUNITARIAS DEL PORTAL ACCESOS COMUNES, GARAJE, ACCESO PEATONAL YMANDO SI FUERA EL CASO.', '14', NULL, NULL, NULL, NULL, '3', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '4'),
(461, '2015-06-23 11:08:50', 330, NULL, 'VAR 25451K BMN ADJ.', '25451K', NULL, 'C/ GERMANIES 36 PISO SÓTANO PUERTA 52', NULL, NULL, NULL, '1', NULL, '1', 'CONSEGUIR LLAVES COMUNITARIAS DEL PORTAL, ACCESOS COMUNES, GARAJE, ACCESO PEATONAL Y MANDO.', '14', NULL, NULL, NULL, NULL, '4', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '4'),
(466, '2015-06-23 13:39:13', 334, NULL, 'BS SD-90749-0004 RP', NULL, 'SD-90749-0004', 'C/ GOBERNADOR RAMIREZ, 21 ESC B 2 1º A', '07702', NULL, NULL, '2', NULL, '0', 'Problemas indicados por el cliente: OTROS: Otros (termo) ; VISITAR Y VER CUAL ES EL PROBLEMA, INFORMAR Y PASAR PRESUPUESTO, HACER FOTOS.', '83', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, '3', '0', NULL, NULL, '16', NULL, NULL, '2'),
(475, '2015-06-24 11:29:33', 336, NULL, 'VAR 19735K BMN ADJ.', '19735K', NULL, 'C/ GERMANIES 36 PISO SÓTANO PUERTA 45', NULL, NULL, NULL, '1', NULL, '1', 'RECOGER MANDO , Mº ANTONIA 971 145649 Y ENTREGAR AL API.', '14', NULL, NULL, NULL, '1', '3', '1', NULL, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '4'),
(476, '2015-06-24 11:31:52', 337, NULL, 'VAR 24151K BMN ADJ.', '24151K', NULL, 'C/ GERMANIES 36 PISO SÓTANO PUERTA 49', NULL, NULL, NULL, '1', NULL, '1', 'RECOGER MANDO Mª ANTONIA 971 145649 Y ENTREGARLO AL API.', '14', NULL, NULL, NULL, '1', '3', '1', NULL, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '4'),
(477, '2015-06-24 11:33:37', 338, NULL, 'VAR 21130K BMN ADJ.', '21130K', NULL, 'C/ GERMANIES 36 PISO SÓTANO PUERTA 68.', NULL, NULL, NULL, '1', NULL, '1', 'RECOGER MANDO Mª ANTONIA 971 145649 Y ENTREGAR AL API.', '14', NULL, NULL, NULL, '1', '3', '1', NULL, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '4'),
(478, '2015-06-24 11:40:48', 339, NULL, 'VAR 21130K BMN. ADJ.', '21130K', NULL, 'C/ GERMANIES 36 PISO SÓTANO PUERTA 68.', NULL, NULL, NULL, '1', NULL, '1', 'RECOGER MANDO Mª ANTONIA 971 145649 Y ENTREGAR AL API', '14', NULL, NULL, NULL, '1', '3', '1', NULL, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '4'),
(479, '2015-06-25 07:54:05', 340, NULL, 'VAR 25931K BMN ADJ.', '25931K', NULL, 'C/ GERMANIES 36 PISO SÓTANO PUERTA 48.', NULL, NULL, NULL, '1', NULL, '1', 'RECOGER EL MANDO A Mª ANTONIA 971 145649 Y ENTREGARLO AL API.', '14', NULL, NULL, NULL, '1', '3', '1', NULL, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '4'),
(480, '2015-06-25 07:56:04', 341, NULL, 'VAR 25448K BMN ADJ.', '25448K', NULL, 'C/ GERMANIES 36 PUERTA 43.', NULL, NULL, NULL, '1', NULL, '1', 'RECOGER LLAVES A Mª ANTONIA 971 145649 Y ENTREGARLAS AL API.', '14', NULL, NULL, NULL, '1', '3', '1', NULL, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '4'),
(481, '2015-06-25 08:01:47', 342, NULL, 'VAR 26305K BMN ADJ.', '26305K', NULL, 'C/ GERMANIES 36 PISO SÓTANO PUERTA 73.', NULL, NULL, NULL, '1', NULL, '1', 'RECOGER LLAVES A Mª ANTONIA 971 145649 Y ENTREGARLAS AL API.', '14', NULL, NULL, NULL, '1', '3', '1', NULL, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '4'),
(482, '2015-06-25 08:03:44', 344, NULL, 'VAR 26002K BMN ADJ.', '26002K', NULL, 'C/ GERMANIES 36 PISO SÓTANO PUERTA 62.', NULL, NULL, NULL, '1', NULL, '1', 'RECOGER MANDO Mª ANTONIA 971 145649 Y ENTREGARLO AL API.', '14', NULL, NULL, NULL, '1', '3', '1', NULL, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '4'),
(483, '2015-06-25 08:07:59', 345, NULL, 'VAR 25098K BMN ADJ.', '25098K', NULL, 'C/ GERMANIES 36 PISO SÓTANO PUERTA 67.', NULL, NULL, NULL, '1', NULL, '1', 'RECOGER LAS LLAVES A Mª ANTONIA 971 145649 Y ENTREGARLAS AL API.', '14', NULL, NULL, NULL, '1', '4', '1', NULL, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '4'),
(484, '2015-06-25 08:09:38', 346, NULL, 'VAR 23499K BMN ADJ.', '23499K', NULL, 'C/ GERMANIES 36 PISO SÓTANO PUERTA 55.', NULL, NULL, NULL, '1', NULL, '1', 'RECOGER EL MANDO A Mª ANTONIA 971 145649 Y ENTREGARLO AL API.', '14', NULL, NULL, NULL, '1', '3', '1', NULL, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '4'),
(485, '2015-06-25 08:12:51', 347, NULL, 'TPJ SANTA MARGARITA', NULL, NULL, 'APTO. 18, PLANTA 2, BLOQUE 4, APARTAMENTOS ASPA.', NULL, NULL, NULL, '1', NULL, '1', 'TPJ 30/06 A LAS 12 H. PROCURADOR: CARMEN SERRA, 971 507378.', '143', NULL, NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '4'),
(486, '2015-06-25 08:20:36', 348, NULL, 'DAC MIQUEL SANTANDREU', NULL, NULL, 'C/ MIQUEL SANTANDREU Nº10, PLANTA 1 PUERTA 3.', NULL, NULL, NULL, '1', NULL, '1', 'DAC 30/06 A LAS 11 H. VISITA PREVIA MISMO DÍA A LAS 9. ARISTIDES 604146508.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '4'),
(490, '2015-06-25 08:58:41', 351, NULL, 'COM. DE PROP. C. CAPDEPERA 11 ESQ. C', NULL, NULL, 'C. CAPDEPERA ESQ. C. ANDREU PONT, 11', '07500', NULL, NULL, '1', NULL, '1', 'CABEZAL SALIDA CHIMENEA TERRAZA COMUNIDAD SE HA DESPRENDIDO.', '84', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '9', NULL, NULL, '4'),
(491, '2015-06-25 09:20:13', 297, NULL, 'TPJ 54197K BMN ADJ.', '54197K', NULL, 'C/ EDUARDO URGORRI 2 BLOQUE I PISO BAJO PUERTA 6 URB. LOCAL 70.', NULL, NULL, NULL, '1', NULL, '1', 'TPJ 18/06/15 A LAS 12 H. PROCURADOR: JUAN NAVARRO 609173341. FINCAS FORCADELL, 672490436.', '92', NULL, NULL, NULL, '1', NULL, '0', NULL, 'FINCAS FORCADELL', '1', '2', '0', NULL, NULL, '13', 'SE ENTREGAN 4 LLAVES DE 2 ACCESOS.', 'SE ENTREGAN 2 LLAVES DE 2 ACCESOS.', '4'),
(493, '2015-06-25 11:22:53', 254, NULL, 'INMUEBLE BS A0-64040-0001 LIM', NULL, 'A0-64040-0001', 'C/ FETGET Nº 2 3 8', NULL, NULL, NULL, '1', NULL, '1', 'VECINA AFECTADA POR CUCACRACHAS. URGENTE. Mª CRISTINA 601110529.', '158', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '1', '0', NULL, NULL, '9', NULL, 'las entregó Carlos.', '4'),
(494, '2015-06-25 16:32:46', 203, NULL, 'STC 57192K BMN ADJ.', '57192K', NULL, 'C/ VISTALEGRE, 15 2ºA', NULL, NULL, NULL, '1', NULL, '1', 'HAY HUMEDAD EN EL BAÑO Y EN VARIAS HABITACIONES, HAY PAREDES PINTADAS CON GRAFFITIS. CONTACTAR CON EL API: FINCAS FIOL 609980500', '92', NULL, NULL, NULL, NULL, '2', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(495, '2015-06-29 07:59:24', 349, NULL, 'INMUEBLE BS A0-62383-0001 TOMA', NULL, 'A0-62383-0001', 'C/ SANTA FLORENTINA Nº 47 1 1', '07006', NULL, NULL, '1', NULL, '1', 'TPJ 08/05 A LAS 9:30 H.MARIA DEL CARMEN, 971 228620.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '1', '1', '0', NULL, NULL, '13', NULL, 'SE HA HECHO ENTREGA DE 8 LLAVEROS.', '4'),
(496, '2015-06-29 08:01:29', 112, NULL, 'INMUEBLE BS A0-63172-0001 TOMA', NULL, ' BS A0-63172-0001', 'C/ FRA JUNIPER SERRA ( MARE DE DEU DE GRACIA 1 ) 83 1º B', '07', 971507378, NULL, '1', NULL, '1', 'TOMA DE POSESIÓN 25/03/2015 A LAS 12:00\r\nTELEFONO DE LA PROCURADORA CARMEN SERRA 971507378', '76', NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, '1', '0', NULL, NULL, '9', NULL, 'LLAVES DE LA COMUNIDAD ENTREGADAS.', '4'),
(497, '2015-06-29 08:24:38', 285, NULL, 'DAC JUAN CARLOS', NULL, NULL, 'C/ JUAN CARLOS I Nº 134, ESC. 3, PISO 1B', NULL, NULL, NULL, '1', NULL, '1', 'DAC 19/06/15 A LAS 11 H. EN NOTARÍA DE ARTÁ. CONTACTAR CON M. ELENA PARA LA VISITA PREVIA, 971 829674.', '30', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, '2', '1', NULL, NULL, '13', NULL, NULL, '4'),
(498, '2015-06-29 08:25:29', 284, NULL, 'DAC COVES', NULL, NULL, 'C/ COVES-ESQUINA JAIME II, Nº4 PLANTA BAJA', NULL, NULL, NULL, '1', NULL, '1', 'DAC 16/06 A LAS 11 H. NOTARÍA DE ARTÁ. CONTACTAR CON M. ELENA PARA VISITA PREVIA 971 829674.', '30', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(499, '2015-06-29 08:26:49', 108, NULL, '52884750', NULL, NULL, 'C/MANACOR-26 2ºA', NULL, 609649224, NULL, '1', NULL, '1', 'TPJ 15/05/2015 11:30 DESCERRAJE Y CAMBIO BOMBIN, LIMPIEZA Y VACIADO HASTA 4m3. INFORMAR ESTADO, DATOS CDAD., LLAVES Y FOTOS.', '92', NULL, NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, '0', '1', NULL, NULL, '13', NULL, NULL, '4'),
(500, '2015-06-29 08:44:20', 258, NULL, '52928074', NULL, NULL, 'C/ VIA GALETA-EDIF. ALDAMAR 12 BAJO', NULL, 971460202, NULL, '1', NULL, '0', 'TPJ 15/06/15 A LAS 12 H. PROCURADOR, FCO. TORTELLA TUGORES 971460202.', '34', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(501, '2015-06-29 08:55:11', 175, NULL, 'TPJ MOLINET', '52857K', NULL, 'C/ MOLINET 6 1ºB S''ARANJASSA', NULL, NULL, 639355803, '1', NULL, '1', 'TPJ 29/05/15 A LAS 12:30 H. ', '160', NULL, NULL, NULL, '1', '4', '0', NULL, NULL, '1', '2', '0', NULL, NULL, '13', 'SE LE ENTREGAN 2 LLAVES.', 'SE LE ENTREGA UNA LLAVE.', '4'),
(502, '2015-06-29 08:55:52', 309, NULL, 'PEDRO LOPEZ CASTILLO', NULL, NULL, 'C/GRAN VÍA PUIG DES TEIX, 6B, 2º PTA. 13', '07181', NULL, 659191480, '1', NULL, '1', 'ROTURA DE TUBERÍA, AFECTANDO A LA VIVIENDA INFERIOR, HAN CORTADO LLAVE DE PASO. POR LA ZONA DE LA COCINA. 606108326.', '145', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '14', NULL, NULL, '1'),
(503, '2015-06-29 08:56:50', 225, NULL, 'STC CARRER BUNYOLA', '68992K', NULL, 'CARRER BUNYOLA Nº 6 BAJOS', NULL, NULL, NULL, '1', NULL, '1', 'CAMBIO DE CERRADURA URGENTE.. OCUPACIÓN ILEGAL. LUIS ESTELRICH 657637808.', '92', NULL, NULL, NULL, NULL, '2', '0', NULL, NULL, NULL, '2', '0', NULL, NULL, '13', 'SE LE ENTREGAN 2 LLAVES.', 'SE LE ENTREGAN 3 LLAVES.', '4'),
(504, '2015-06-29 08:57:46', 311, NULL, 'STC 54528K SAREB BMN ADJ.', '54528K', NULL, 'C/TOMÁS FORTEZA 35-37 PISO 2º PUERTA 5', NULL, NULL, NULL, '1', NULL, '1', 'DESCERRAJAR EL TRASTERO. TIENE TRASTERO ASOCIADO. PALMER ESTRADES, 971240121.', '92', NULL, NULL, NULL, NULL, '4', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', 'SE HACE ENTREGA DE TODAS LAS LLAVES AL API.', NULL, '4'),
(505, '2015-06-29 08:58:40', 119, NULL, 'INMUEBLE BS AO-58975-0001 TOMA', NULL, 'A0-58975-0001', 'CARRETERA CAMÍ VELL DE PORRERES S/N Nº2', '07230', 609602020, NULL, '1', NULL, '1', 'TOMA DE POSESIÓN JUEVES 23/04/15 A LAS 10H.', '88', NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, '1', '0', 'PTE. AUTORIZACIÓN DE PRESUPUESTO.', NULL, '13', NULL, 'SE HACE ENTREGA DE 8 LLAVEROS.', '4'),
(507, '2015-06-29 11:11:59', 352, NULL, 'MARYPAZ', NULL, NULL, 'C/ PLAZA RECTOR RUBÍ, 13', NULL, 971843134, NULL, '1', NULL, '1', 'MANTENIMIENTO PREVENTIVO MARYPAZ.', '84', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '6'),
(508, '2015-06-29 11:14:52', 353, NULL, 'MARYPAZ', NULL, NULL, 'C/ SAN MIGUEL, 46', NULL, 971495505, NULL, '1', NULL, '1', 'MANTENIMIENTO PREVENTIVO. SOPORTE EXTINTOR HAY QUE REPARARLO.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '6'),
(510, '2015-06-29 11:21:16', 354, NULL, 'MIGUEL SANCHEZ MARTÍ', NULL, NULL, 'C/ ARZOBISPO ASPARGO, 12,2A', '07007', NULL, NULL, '1', NULL, '1', 'ROTURA DE TUBERÍA PROVOCA DAÑOS.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '11', NULL, NULL, '2'),
(511, '2015-06-30 07:11:03', 355, NULL, '51329541 I', NULL, NULL, 'C/ EMILIA SUREDA Nº 21, BAJO D', NULL, NULL, 610092229, '1', NULL, '1', 'TPJ 30/06 A LAS 11:30 H. PROCURADOR: FCO. TORTELLA 610092229.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '4'),
(512, '2015-06-30 07:14:57', 356, NULL, '52940265', NULL, NULL, 'C/ RONDA SES COSTES, 119', '07749', NULL, NULL, '2', NULL, '1', 'HACER DESBROCE Y VALLADO. VERIFICAR QUE EL VALLADO ES SÓLO DEL SOLAR SEGÚN CATASTRO.', '60', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '4'),
(517, '2015-06-30 11:54:39', 315, NULL, 'M05109981', NULL, NULL, 'SON XORIGUER 19 BAJO A', NULL, NULL, NULL, '2', NULL, '1', 'EVACUACIÓN AGUA PISCINA POR MOSQUITOS Y MAL OLOR. CELIA PONS 606321842.', '48', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '16', NULL, NULL, '1'),
(518, '2015-06-30 11:55:35', 332, NULL, 'LUIS HEVIA PAZOS', NULL, NULL, 'UR. V. DE MENORCA, 2 - 2', '07760', 609645819, 670639457, '2', NULL, '2', 'COMO CONSECUENCIA DE UN POSIBLE ESCAPE EN LA COMETIDA DESE EL CONTADOR A LA VIVIENDA SALE MUCHA AGUA.', '48', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, '16', NULL, NULL, '2'),
(520, '2015-07-01 09:15:36', 224, NULL, 'STC 58110K BMN ADJ. 2', '58110K', NULL, 'CTRA. MAHON A CIUTADELLA S/N URB. POLIG. 14 PARC 4', NULL, NULL, NULL, '1', NULL, '0', 'LIMPIEZA Y VACIADO. LLAVES LAS TIENE EL API: ACTIVUM 692207439. RECOGERLAS PARA HACER LA LIMPIEZA. PASAR PRESUPUESTO.', '60', NULL, NULL, NULL, NULL, '10', '1', 'LAS TIENE EL API', NULL, NULL, NULL, '0', NULL, NULL, '16', 'LAS TENEMSO QUE IR A BUSCAR PARA HACER TRABAJOS.', NULL, '3'),
(521, '2015-07-01 09:33:13', 300, NULL, 'VAR 25633K BMN ADJ.', '25633K', NULL, 'C/ JOCS 37 PISO 1 PUERTA B', NULL, NULL, NULL, '1', NULL, '1', 'CONTACTAR CON EL ADM. PARA SOLICITAR LLAVES COMUNITARIAS DEL PORTAL, ACCESOS COMUNES, GARAJE, ACCESO PEATONAL Y MANDO SI FUERA NECESARIO. TRAS LA OBTENCIÓN DE LLAVES ENTREGAR LA COPIA AL API.', '76', NULL, NULL, NULL, '1', '8', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', 'SE HACE ENTREGA DE LLAVE COMUNITARIA.', NULL, '4'),
(522, '2015-07-01 09:36:11', 160, NULL, 'VAR 58322K BMN ADJ.', '58322K', NULL, 'C/ ARAGÓ 223 PISO 1 PUERTA B', NULL, NULL, NULL, '1', NULL, '1', 'CONTACTAR CON EL API Y PERJUDICADO PARA HACER VISITA LOS 3, IR AL INMUEBLE DE BANESTO SI LA FUGA PROVIENE DE ESTE PISO O SI ES COMUNITARIA, SOLUCIONAR PROVISIONALMENTE, VALORAR DAÑOS PERJUDICADO Y PASAR PRESUPUESTO.\r\nAPI: FINCAS FIOL 692644739.', '92', NULL, NULL, NULL, NULL, '2', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(524, '2015-07-02 09:40:46', 359, NULL, 'PATRICIA CANAVES PUYOL', NULL, NULL, 'SANTA EULALIA TOMÁS 12-1-B', '07300', NULL, NULL, '1', NULL, '1', 'SUTITUCIÓN CERRADURA PUERTA DE ACESO VIVIENDA Y PUERTA TRASTERO.', '76', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '4'),
(531, '2015-07-03 08:11:24', 144, NULL, 'INMUEBLES BS A0-62994-001 LI+CK.', NULL, 'A0-62994-001 LI+CK', 'C/ JOAN MIRÓ Nº 38 EN 7', '07015', NULL, NULL, '1', NULL, '1', 'PTO. VACIADO, NO HACE FALTA LLAVES, ESTÁ ABIERTO, ASEGURAR EL INMUEBLE CON CANDADO.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', NULL, NULL, '13', NULL, 'se tiene que realizar la entrega de las llaves a gestoria.\r\nSe hace entrega de 8 llaveros.', '4'),
(532, '2015-07-03 08:12:41', 357, NULL, 'STC 25308K BMN ADJ.', '25308K', NULL, 'C/ VISTABELLA, 13-OLLA 19 13', NULL, NULL, NULL, '1', NULL, '1', 'ASEGURAR VIVIENDA.', '30', NULL, NULL, NULL, '1', '9', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', 'SE LE HACE ENTREGA DE TODAS LAS LLAVES.', NULL, '4'),
(533, '2015-07-03 08:15:16', 210, NULL, 'STC 21724K BMN ADJ. 2', '21724K', NULL, 'C/ VIA FRANçA 16 PISO-1 PUERTA 1', NULL, NULL, NULL, '1', NULL, '1', 'DESCERRAJE. API: ES FAR D''AUCANADA 610039410.SOLICITAR AL API O A DOLORES SI NECESITAMOS INFORMACIÓN.', '40', NULL, NULL, NULL, NULL, '9', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(535, '2015-07-03 08:17:11', 350, NULL, 'STC 22616K BMN ADJ. 3', '22616K', NULL, 'C/ GENERAL RIERA 45', NULL, NULL, NULL, '1', NULL, '1', 'HAY CANDADO EN LA PUERTA DE LA CALLE, PUERTA PRINCIPAL BLOQUEADA Y SIN MANETA. VALORAR Y CONTACTAR CON EL API.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '9', NULL, NULL, '4'),
(536, '2015-07-03 08:18:31', 116, NULL, 'COM. PROP. BALEARES 25', NULL, NULL, 'C. BALEARES, 25 (6ºB)', '07600', 655766485, NULL, '1', NULL, '1', 'SALE AGUA DEL 6ªB (DOMICILIO PRESIDENTE), SOLAMENTE CUANDO SE HACEN USO DE LAS DUCHAS DE LOS PISOS SUPERIORES.', '92', NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, '0', '0', NULL, NULL, '14', NULL, NULL, '1'),
(537, '2015-07-03 08:19:45', 296, NULL, 'INMUEBLE BS A0-37911-0001 PF', NULL, 'A0-37911-0001 ', 'PZ ORSON WELLWS Nº 17 2º 5', NULL, NULL, NULL, '1', NULL, '1', 'ACUDIR AL INMUEBLE Y ASEGURARLO.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '1', '1', '0', NULL, NULL, '13', NULL, 'FUIMOS A RECOGER DOS COPIAS.\r\nSE HA HECHO DEVOLUCIÓN DE 8 LLAVEROS.', '4'),
(538, '2015-07-03 08:23:23', 364, NULL, '49515553 II', NULL, NULL, 'VILLALONGA PORTOCRISTO 27 A 2º PISO', NULL, NULL, NULL, '1', NULL, '1', 'HAY FILTRACIONES DE AGUA QUE AFECTAN AL VECINO DE ABAJO. LEONARDA FERNANDEZ 627312147.', '84', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(539, '2015-07-03 08:24:46', 217, NULL, 'COMUNIDAD DE PROPIETARIOS DRAGONERA', NULL, NULL, 'C/ DRAGONERA, 19', NULL, NULL, NULL, '1', NULL, '1', 'POSIBLE ROTURA BAJANTE O TUBERÍA, CAUSA DAÑOS HUMEDAD EN LOCAL (BANCO). 971717963', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '14', NULL, NULL, '1'),
(541, '2015-07-03 09:10:05', 307, NULL, 'DAC SANT JORDI', NULL, NULL, 'SANT JORDI, 19', '07199', NULL, NULL, '1', NULL, '1', 'DAC 26/06 A LAS 10 H. PASSEIG DEL BORN 23. CONTACTAR CON 971 785045 PARA VISITA PREVIA.', '127', NULL, NULL, NULL, '1', '0', '1', 'pendiente de asignacion de api', 'en la funda', '1', '1', '1', 'pendiente de recibir la referencia k', 'en la funda', '13', NULL, NULL, '4'),
(543, '2015-07-03 09:43:33', 362, NULL, 'STC 28401K SAREB BMN ADJ.', '28401K', NULL, 'C/ ANSELM TURMEDA,16', NULL, NULL, NULL, '1', NULL, '1', 'TAPIADO DE LAS 2 PUERTAS DEL PATIO INTERIOR QUE COMUNICAN LA VIVIENDA.', '14', NULL, NULL, NULL, '1', '3', '0', NULL, NULL, '1', '2', '0', NULL, NULL, '13', 'SE LAS HA QUEDADO DOLORES DE AKTUA, YA QUE TENÍAN QUE CAMBIAR EL API.', 'SE LE HAN DEVUELTO TODAS LAS LLAVES, LAS SUYAS Y LAS DEL API.', '4'),
(544, '2015-07-03 10:14:15', 229, NULL, 'STC 20938K BMN ADJ.', '20938K', NULL, 'C/ FINCA LA VIÑA POL. 1 PORTAL PARC. 63/64', NULL, NULL, NULL, '1', NULL, '1', 'ASEGURAR VIVIENDA. INSTALAR CERRADURA. AGENTE: PISOS SA POBLA, 664442201.', '76', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(545, '2015-07-03 11:32:21', 242, NULL, 'STC 62276K BMN ADJ.', '62276K', NULL, 'C/ESTRELLA 15', NULL, NULL, NULL, '1', NULL, '1', 'ASEGURAMIENTO 4 CERRADURAS (HECHO), PRESUPUESTO LIMPIEZA Y VACIADO. API, CENTRE COMPTABLE VILA 626616410', '70', NULL, NULL, NULL, '1', '6', '1', NULL, 'ESTÁN CON EL PARTE', NULL, NULL, '0', NULL, NULL, '13', 'HEMOS HECHO CAMBIO DE CERRADURAS Y TODAVÍA NO SE LAS HEMOS LLEVADO.', NULL, '4'),
(549, '2015-07-06 08:57:32', 367, NULL, 'INMUEBLES BS A0-32480-0001 TOMA', NULL, 'BS A0-32480-0001', 'AV DEL PARC-URB. MANACOR PARC-T5 PK20 Nº80 ESC.1 03 01', NULL, 971720052, 609602020, '1', NULL, '1', 'TPJ 08/07 A LAS 9:30 H. PROCURADOR, JUAN FCO. BESTARD, 609602020. Visita previa para mirar cerraduras.', '84', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(550, '2015-07-06 09:03:53', 226, NULL, 'DAC SAN LLUC', NULL, NULL, 'C/SAN LLUC Nº 8 EDIF. F, ESC. 3, PLANTA 2º PUERTA 50 LOS COLIBRIS.', NULL, NULL, NULL, '1', NULL, '1', 'DAC 12/06/15 NOTARÍA PAREJA A las 9:30 h. VISITA PREVIA 606519736 Y 971441692, LUEGO IR A NOTARÍA.', '82', NULL, NULL, NULL, '1', '4', '0', NULL, NULL, '1', '2', '0', NULL, NULL, '13', 'SE LE HACEN ENTREGA DE 6 LLAVES.', 'SE LE HACEN ENTREGA DE 2 LLAVES.', '4'),
(552, '2015-07-06 09:05:10', 169, NULL, 'INMUEBLE BS A0-19211-0001 LIM+CHECK', NULL, 'A0-19211-0001', 'C/ JOAN DE SARIDAKIS, Nº 24 9 11', NULL, NULL, NULL, '1', NULL, '1', 'CHECKLIST+VACIADO. PRESUPUESTAR VACIADO.', '92', NULL, NULL, NULL, '1', NULL, '1', NULL, 'CON EL PARTE EN EL PLÁSTICO.', '1', NULL, '0', NULL, NULL, '13', 'HACER COPIAS DE LLAVES, SE LE DA UNA LLAVE A ROBERTO.', 'SE LE HACE ENTREGA DE 8 LLAVEROS.', '4'),
(553, '2015-07-06 09:06:00', 164, NULL, 'INMUEBELS BS A0-59135-0002 LI+CK.', NULL, 'A0-59135-0002', 'C/ SON AMONDA Nº 11-1 18', '07300', NULL, NULL, '1', NULL, '1', 'CHECKLIST + LIMPIEZA. PLAZA DE GARAJE SÓLO FOTOS 8RELACIONADA CON EL PISO). CONSEGUIR LLAVE COMUNITARIA.', '76', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '1', '1', '0', NULL, NULL, '13', NULL, 'SE LE HACEN ENTREGA DE 8 LLAVEROS.', '4'),
(554, '2015-07-06 09:06:39', 358, NULL, 'PATRICIA CÁNAVES PUYOL', NULL, NULL, 'SANTA EULALIA TOMÁS, 12-1-B', '07300', NULL, NULL, '1', NULL, '1', 'SUSTITUCIÓN CERRADURA PUERTA ACCESO VIVIENDA Y TRASTERO.', '76', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(557, '2015-07-06 10:24:46', 369, NULL, 'ANTONIA FERNANDEZ ZAPATA', NULL, NULL, 'C/ VALENCIA 11, 1-1', '07760', NULL, 697417595, '2', NULL, '1', 'DAÑOS POR AGUA EN EL LOCAL INFERIOR.', '48', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '16', NULL, NULL, '1'),
(558, '2015-07-06 10:28:13', 368, NULL, 'INMUEBLE A0-57122-0003 AC', NULL, 'A0-57122-0003', 'C/ ESCOLA, ( SOT. Nº 14) Y TRASTERO 10 S/N.', NULL, NULL, NULL, '1', NULL, '1', 'RECOGER LLAVES A DIAGONAL GEST, IR CON ADMINISTRADORA AL TRASTERO A ABRIR, ESPERAR QUE TERMINEN REVISIÓN Y CERRAR. ADMINISTRADORA CATI, 971 539455', '115', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '1', NULL, '1', NULL, NULL, '13', NULL, '06/07 ESTÁN RESERVADAS PARA IR A BUSCARLAS A PARTIR DE LAS 12.', '4'),
(561, '2015-07-07 10:14:08', 370, NULL, 'INMUEBLES A0-35354-0001 TOMA', NULL, 'A0-35354-0001', 'ANDREU CAIMARI Nº 112 3ºB', '07300', NULL, NULL, '1', NULL, '1', 'TPJ 10/07 A LAS 12 H. PROCURADOR', '76', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(563, '2015-07-07 11:56:48', 371, NULL, 'INMUEBLES BS MACRO A0-62607-0001', NULL, 'A0-62607-0001', 'C/ GUILLERMO COSTA Nº2 PB A', '07001', NULL, NULL, '1', NULL, '1', 'RECOGER TODOS LOS JUEGOS DE LLAVES E IR AL INMUEBLE A REALIZAR COMPROBACIÓN Y ACTUAR SI ES PRECISO.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '1', '1', '1', NULL, 'HAY QUE IR A BUSCARLAS.', '13', NULL, 'ESTÁN RESERVADA PARA EL DÍA 08/07.', '4'),
(580, '2015-07-08 11:26:41', 385, NULL, 'TPP 68447K BMN ADJ.', '68447K', NULL, 'C/EUSEBIO ESTADA  ESCALERA  PISO 1º PUERTA E', NULL, NULL, NULL, '1', NULL, '1', 'TPP 15/07 A LAS 19:00 H. Mª PAZ MORENO 685012324', '92', NULL, NULL, NULL, NULL, '2', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(581, '2015-07-08 11:30:52', 386, NULL, 'TPP 71225K BMN. ADJ.', '71225K', NULL, 'PLAZA CAN BARCELO 11 PISO 1 PUERTA B', NULL, NULL, NULL, '1', NULL, '1', 'TPP 09/07 A LAS 10:30 H. Mª PAZ MORENO 685012324', '87', NULL, NULL, NULL, NULL, '12', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(582, '2015-07-08 11:46:11', 387, NULL, 'TPJ 71695K SAPPHIRE ADJ.', '71695K', NULL, 'C/ SANTA FLORENTINA N 55 PISO 5º IZQ.', NULL, 971460202, NULL, '1', NULL, '1', 'TPJ 09/07 A LAS 11 H. PROCURADOR: FCO. TORTELLA 971 460202', '92', NULL, NULL, NULL, NULL, '5', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(590, '2015-07-10 08:21:03', 390, NULL, 'STC 72386K BMN ADJ.', '72386K', NULL, 'C/ SA CAPELLA S/N', NULL, NULL, NULL, '1', NULL, '1', 'DESCERRAJE', '143', NULL, NULL, NULL, NULL, '9', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(591, '2015-07-10 08:35:33', 391, NULL, 'STC 54528K SAREB ADJ.2', '54528K', NULL, 'C/ TOMAS FORTEZA 35-37 PISO 2º PUERTA 5', NULL, NULL, NULL, '1', NULL, '1', 'REVISAR LLAVES, CONTACTAR CON EL API. PALMER ESTADES 971 240121', '92', NULL, NULL, NULL, NULL, '4', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(593, '2015-07-10 08:46:21', 392, NULL, 'INMUEBLE BS A0-52457-0001 PF', NULL, 'A0-52457-0001', NULL, NULL, NULL, NULL, '1', NULL, '1', 'ACUDIR VIVIENDA Y DEJAR ACCESOS ASEGURADOS.', '70', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(594, '2015-07-10 08:47:31', 177, NULL, 'DAC PUIG DE MASSANELLA ', '71874k', NULL, 'PUIG DE MASSANELLA 122 BJ', NULL, NULL, NULL, '1', NULL, '1', 'DAC 05/06/15 LIMPIEZA Y VACIADO HASTA 5M3.', '76', NULL, NULL, NULL, '1', '8', '0', NULL, NULL, '1', '2', '0', NULL, NULL, '13', 'SE HACE ENTREGA DE 10 LLAVES AL API.', 'SE HACE ENTREGA DE 5 LLAVES AL GESTOR.', '4'),
(595, '2015-07-10 08:49:04', 299, NULL, 'TPP BE00374 SAPPHIRE', 'BE00374', NULL, 'C/ JAUME BALMES Nº 58 A', NULL, NULL, NULL, '1', NULL, '1', 'REALIZAR LIMPIEZA-DESINF.-VACIADO. LAS LLAVES LAS TIENE ROBERTO VEGAS.', '92', NULL, NULL, NULL, '1', '2', '0', NULL, NULL, '1', '2', '0', NULL, NULL, '13', 'SE ENTREGAN 3 LLAVES AL API, 2 DEL PORTAL Y 1 DE LA COMUNIDAD.', 'Se entrega una llave al gestor', '4'),
(596, '2015-07-10 08:49:39', 365, NULL, 'ALI0000106696', NULL, NULL, 'C/ PUIG DEL ROMANÍ 21 BºA UR. S''HOSTALOT BJ-A,B Y C', NULL, 971460202, NULL, '1', NULL, '1', 'TPJ 07/07 A LAS 10 H. PROCURADOR; FCO. TORTELLA 971 460 202', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(597, '2015-07-10 08:50:30', 326, NULL, 'TPP 70427K SANTANDER (BANESTO)', '70427K', NULL, 'C/ DENTAL 10 PISO 2º PUERTA B', NULL, NULL, 685012324, '1', NULL, '1', 'TPP 24/06 A LAS 11 H. Mª PAZ MORENO 685012324.', '125', NULL, NULL, NULL, '1', '6', '0', NULL, NULL, '1', '2', '0', NULL, NULL, '13', 'SE LE ENTREGAN 2 LLAVES.', 'SE LE ENTREGAN 3 LLAVES.', '4'),
(598, '2015-07-10 10:38:40', 393, NULL, 'STC 32806K SAREB BMN ADJ.', '32806K', NULL, 'C/ INDUSTRIA 6 PISO PB PUERTA 3', NULL, NULL, NULL, '1', NULL, '1', 'LIMPIEZA HASA 150 M2, RETIRADA CONTENEDOR 5M3.', '92', NULL, NULL, NULL, '1', NULL, '1', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', 'CONTACTAR CON API PARA RECOGER LLAVES 672.49.04.36 FINCAS FORCADELL.', NULL, '4'),
(604, '2015-07-10 11:50:14', 388, NULL, 'RUBEN HERRERO', NULL, NULL, 'C/ TORRES QUEVEDO, 131', NULL, NULL, 670320825, '2', NULL, '1', 'CAMBIO MECANISMO CISTERNA, MATERIAL A SU CARGO.', '48', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '16', NULL, NULL, '1'),
(605, '2015-07-13 07:13:44', 398, NULL, 'INMUEBLE BS MACRO 38-00027-0001 PF', NULL, '38-00027-0001', 'C/ BAJO RIERA Nº 5 BL', NULL, NULL, NULL, '1', NULL, '1', 'SE HA TIRADO LA PUERTA ABAJO PARA OCUPARLO. ACUDIR PARA DEJAR ACCESOS SEGUROS.', '84', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(606, '2015-07-13 07:36:34', 319, NULL, 'FINSOLUTIA PROPIEDAD 14768 I', NULL, NULL, 'PASSATGE PICOS DE EUROPA 2, BAJO', NULL, NULL, NULL, '1', NULL, '1', 'TPJ 23/06 A LAS 9:30 H.PROCURADOR: 609687999. PERSONA DE CONTACTO LAURA SIFFREDI 69282731. SOLICITAN PRESUPUESTO DE LIMPIEZA Y VACIADO.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(608, '2015-07-13 07:39:19', 399, NULL, 'STC 35204K SAREB BMN ADJ.', '35204K', NULL, 'C/ DE LA TRONETA 0000 BLOQUE 4 PUERTA B URB. SON BOQUER.', NULL, NULL, NULL, '1', NULL, '1', 'LIMPIEZA Y VACIADO.', '97', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(611, '2015-07-13 07:44:14', 400, NULL, '25059K AKTUA', '25059K', NULL, 'C/ BOGOTÁ, 6 BL. 2 1ªC', NULL, NULL, NULL, '1', NULL, '1', 'DESCERRAJE DE VIVIENDA.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(612, '2015-07-13 07:48:38', 142, NULL, 'VAR 58642K BMN ADJ.', '58642K', NULL, 'C/ SANTA MARGALIDA 9 BLOQUE A PISO BAJA PUERTA 4.', NULL, 971581710, 626616410, '1', NULL, '1', 'CONTACTAR CON API, REALIZAR PRESUPUESTO PARA SOLICITAR AUTORIZACIÓN DEL GESTOR.', '82', NULL, NULL, NULL, NULL, '6', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(615, '2015-07-13 09:44:28', 327, NULL, 'TPJ ISIDORO', NULL, NULL, 'C7 ISIDORO ANTILLÓN, 77 4º', NULL, NULL, NULL, '1', NULL, '1', 'TPJ 09/07 A LAS 9:30 H. PROCURADOR: JAUME 699746573.', '92', NULL, NULL, NULL, NULL, '0', '1', 'estamos a la espera del api', 'en la funda', NULL, '2', '1', NULL, NULL, '13', NULL, NULL, '4'),
(617, '2015-07-13 10:32:55', 403, NULL, 'INMUEBLE BS MACRO A0-36351-0001 S', NULL, 'A0-36351-0001', 'C/ PERE LLOBERA Nº 17 2ªA', '07007', NULL, NULL, '1', NULL, '1', 'RECOGER LLAVES E IR A LA VIVIENDA A COMPROBAR SI HAY AGUA.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '1', '1', '1', NULL, 'JUNTO CON PARTE', '13', NULL, NULL, '4'),
(618, '2015-07-13 10:37:17', 366, NULL, 'VAR 57838K BMN ADJ.', '57838K', NULL, 'C/ PROVENZA 14 PISO 3º PUERTA 2', NULL, NULL, NULL, '1', NULL, '1', 'CERRAR VENTANAS DE PROPIEDAD. CONTACTAR CON API FINCAS FIOL.', '92', NULL, NULL, NULL, '1', '2', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(619, '2015-07-13 10:39:02', 310, NULL, 'DAC PASAJE CALA MORLANDA', '72203k', NULL, 'C/ PASAJE CALA MORLANDA, Nº8 2B', NULL, NULL, NULL, '1', NULL, '1', 'DAC 25/06 A LAS 9:30 H. PASAJE CALA MORLANDA Nº8.', '92', NULL, NULL, NULL, '1', '4', '0', NULL, NULL, '1', '2', '0', NULL, NULL, '13', 'SE LE ENTREGAN 2 LLAVES DE ENTRADA 1 DEL PORTAL Y 1 DEL BUZÓN.', 'SE LE ENTREGA 1 LLAVE DE LA VIVIENDA Y 1 DEL PORTAL.', '4'),
(620, '2015-07-13 11:57:28', 270, NULL, 'MARGARITA AGUILÓ GELABERT', NULL, NULL, 'C/ GRAN VÍA MENORCA, 52 1ºC', '07180', NULL, 656783422, '1', NULL, '1', 'SE LE HA DESPEGADO EL ZÓCALO QUE LE PUSIMOS. MARGARITA GELABERT 656783422.\r\nVIENE DEL PARTE 693873.', '145', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(621, '2015-07-14 07:24:04', 404, NULL, '52883320', NULL, NULL, 'C/SAGASTA Nº 51-1º-B', NULL, 971770574, 609649224, '1', NULL, '1', 'TPJ 28/07 A LAS 12 H. PROCURADOR: GABRIEL TOMÁS 609.649.224.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(622, '2015-07-14 07:31:09', 405, NULL, 'STC 28012K BMN LÍNEA 2', '28012K', NULL, 'C/ SON PUIG 5 PISO 1º PUERTA L5', NULL, NULL, NULL, '1', NULL, '1', 'DESCERRAJE, FOTOS ESTANCIAS Y DATOS COMUNIDAD. API: FINCAS FORCADELL, 672.490.436.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(623, '2015-07-14 07:36:07', 406, NULL, 'OBR 37809K SANTANDER (BANESTO)', '37809K', NULL, 'C/ JOAQUIM SOROLLA 11 PISO 5 PUERTA DERECHA', NULL, NULL, NULL, '1', NULL, '1', 'REPARAR PUERTA Y DEJARLO CERRADO.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(624, '2015-07-14 07:37:27', 314, NULL, 'INMUEBLE BS A0-50094-0001 ADEC1', NULL, 'A0-50094-0001', 'C/ PARE GUILLEM VIVES N 5A PB-', NULL, NULL, NULL, '1', NULL, '1', 'DESALOJO PACTADO 31/03/15 A LAS 10:30 H. LIA AMENGUAL 665347462.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '1', '1', '0', NULL, NULL, '13', NULL, 'se tiene que realizar la entrega de una llave a Eliseo de las alarmas.', '4'),
(625, '2015-07-14 07:38:27', 374, NULL, 'DAC 72349K BMN ADJ.', '72349K', NULL, 'AVDA. GERANIS, S''ESTANY DEN MAS 10-18 PUERTA 9 BLOQUE 3 URB. PLAYA ROMANTICA', NULL, NULL, NULL, '1', NULL, '1', 'CAMBIO CERRADURA.', '84', NULL, NULL, NULL, '1', '6', '0', NULL, NULL, '1', NULL, '0', NULL, NULL, '13', 'SE ENTREGAN 6 LLAVES DE 3 PUERTAS.', 'SE ENTREGAN 3 LLAVES DE 3 PUERTAS.', '4'),
(626, '2015-07-14 07:39:22', 361, NULL, 'STC 69110K BMN ADJ.2', '69110K', NULL, 'PASAJE BOQUETA CAMINO DE PALMA 459 URB. POL. 1 DISTRITO II', NULL, NULL, NULL, '1', NULL, '1', 'LIMPIEZA Y VACIADO.', '76', NULL, NULL, NULL, '1', '8', '0', NULL, NULL, '1', '2', '0', NULL, NULL, '13', 'SE ENTREGAN TODAS LAS LLAVES AL API.', NULL, '4'),
(629, '2015-07-14 07:43:24', 407, NULL, 'TPP 59261K SANTANDER (BANESTO)', '59261K', NULL, 'C/ COLLIURE 8 PISO 5º PUERTA B', NULL, NULL, NULL, '1', NULL, '1', 'TPP 30/01 A LAS 12 H.', '92', NULL, NULL, NULL, NULL, '2', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(630, '2015-07-14 07:55:21', 408, NULL, 'STC 25975K BMN ADJ.', '25975K', NULL, 'C/ ESPIGOL 7 BLOQUE A PISO 1 PUERTA 11', NULL, NULL, NULL, '1', NULL, '1', 'DESCERRAJE.', '40', NULL, NULL, NULL, NULL, '9', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(631, '2015-07-14 07:56:28', 396, NULL, 'DAC 72238K BMN ADJ.', '72238K', NULL, 'PASEO CARLOS I 29 ESCALERA 4 PISO BAJO PUERTA 1', NULL, NULL, NULL, '1', NULL, '1', 'DAC REALIZADA EN EL SERVICIO 734875.', '105', NULL, NULL, NULL, '1', '6', '0', NULL, NULL, '1', '2', '0', NULL, NULL, '13', 'SE ENTREGAN 4 LLAVES DE 2 PUERTAS.', 'SE ENTREGAN 2 LLAVES DE 2 PUERTAS.', '4'),
(632, '2015-07-14 07:57:17', 395, NULL, 'DAC 72186K BMN ADJ.', '72186K', NULL, 'PASEO CARLOS I 29 ESCALERA 5 PISO BAJO PUERTA 1', NULL, NULL, NULL, '1', NULL, '1', 'DAC REALIZADA EN SERV. 734875.', '105', NULL, NULL, NULL, '1', '6', '0', NULL, NULL, '1', '2', '0', NULL, NULL, '13', 'SE LE ENTREGAN 4 LLAVES DE 2 PUERTAS.', 'SE ENTREGAN 2 LLAVES DE 2 PUERTAS.', '4'),
(633, '2015-07-14 07:57:53', 394, NULL, 'DAC 72200K BMN ADJ.', '72200K', NULL, 'PASEO CARLOS I 29 ESCALERA 5 PISO BAJO PUERTA 2', NULL, NULL, NULL, '1', NULL, '1', 'DAC REALIZADA EN PARTE 734875', '105', NULL, NULL, NULL, '1', '6', '0', NULL, NULL, '1', '2', '0', NULL, NULL, '13', 'SE ENTREGAN 4 LLAVES DE 2 PUERTAS', 'SE ENTREGAN 2 LLAVES DE 2 PUERTS.', '4'),
(634, '2015-07-14 07:58:51', 383, NULL, 'DAC 72258K BMN ADJ.', '72258K', NULL, 'AVDA. GERANIS, S''ESTANY DEN MAS 10-18 PUERTA 18 BLOQUE 6 URB. PLAYA ROMANTICA', NULL, NULL, NULL, '1', NULL, '1', 'CAMBIO DE CERRADURA', '84', NULL, NULL, NULL, '1', '6', '0', NULL, NULL, '1', '2', '0', NULL, NULL, '13', 'SE ENTREGAN 4 LLAVES DE 2 PUERTAS.', 'SE ENTREGAN 2 LLAVES DE 2 PUERTAS.', '4'),
(635, '2015-07-14 07:59:58', 379, NULL, 'DAC 72302K BMN ADJ.', '72302K', NULL, 'AVDA. GERANIS, S''ESTANY DEN MAS 10-18 PUERTA 19 BLOQUE 6 URB. PLAYA ROMANTICA', NULL, NULL, NULL, '1', NULL, '1', 'CAMBIO CERRADURA', '84', NULL, NULL, NULL, '1', '6', '0', NULL, NULL, '1', '2', '0', NULL, NULL, '13', 'SE ENTREGAN 6 LLAVES DE 3 CERRADURAS.', 'SE ENTREGAN 3 LLAVES DE 3 CERRADURAS.', '4'),
(636, '2015-07-14 08:01:07', 376, NULL, 'DAC 72337K BMN ADJ.', '72337K', NULL, 'AVDA. GERANIS, S''ESTANY DEN MAS 10-18 PUERTA 20 BLOQUE 6 URB. PLAYA ROMANTICA', NULL, NULL, NULL, '1', NULL, '1', 'CAMBIO CERRADURA', '84', NULL, NULL, NULL, '1', '6', '0', NULL, NULL, '1', NULL, '0', NULL, NULL, '13', 'SE ENTREGAN 10 LLAVES DE 5 PUERTAS.', 'SE ENTREGAN 5 LLAVES DE 5 PUERTAS.', '4'),
(637, '2015-07-14 08:02:03', 382, NULL, 'DAC 72286K BMN ADJ.', '72286K', NULL, 'AVDA. GERANIS, S''ESTANY DEN MAS 10-18 PUERTA 17 BLOQUE 5 URB. PLAYA ROMANTICA', NULL, NULL, NULL, '1', NULL, '1', 'CAMBIO CERRADURA', '84', NULL, NULL, NULL, '1', '6', '0', NULL, NULL, '1', '2', '0', NULL, NULL, '13', 'SE ENTREGAN 4 LLAVES DE 2 PUERTAS.', 'SE ENTREGAN 2 LLAVES DE 2 PUERTAS.', '4'),
(638, '2015-07-14 08:02:56', 375, NULL, 'DAC 72339K BMN ADJ.', '72339K', NULL, 'AVDA. GERANIS, S''ESTANY DEN MAS 10-18 PUERTA 3 BLOQUE 1 URB, PLAYA ROMANTICA', NULL, NULL, NULL, '1', NULL, '1', 'CAMBIO CERRADURA', '84', NULL, NULL, NULL, '1', '6', '0', NULL, NULL, '1', '2', '0', NULL, NULL, '13', 'SE ENTREGAN 4 LLAVES DE 2 PUERTAS.', 'SE ENTREGAN 2 LLAVES DE 2 PUERTAS.', '4');
INSERT INTO `llx_projet_extrafields` (`rowid`, `tms`, `fk_object`, `import_key`, `nom_cli`, `ref_K_cli`, `macro_cli`, `dir_cli`, `zipcode_cli`, `tel_cli`, `mov_cli`, `prov_cli`, `lc_cli`, `ser_cli`, `tra_cli`, `loc_cli`, `dni_cli`, `rc_cli`, `mail_cli`, `pj_api_llv`, `pj_api_slct`, `pj_apj_returned`, `pj_api_motive`, `pj_api_location`, `pj_gst_llv`, `pj_gst_slct`, `pj_gst_returned`, `pj_gst_motive`, `pj_gst_location`, `slct_oper`, `pj_api_obs`, `pj_gst_obs`, `cat_oper`) VALUES
(639, '2015-07-14 08:03:52', 372, NULL, 'DAC 72354K BMN ADJ.', '72354K', NULL, 'AVDA. GERANIS, S''ESTANY DEN MAS 10-18 PUERTA 16 BLOQUE 5 URB. PLAYA CALA ROMANTICA', NULL, NULL, NULL, '1', NULL, '1', 'CAMBIO CERRADURA. CONSEGUIR TELEF. DE ALGÚN VECINO.', '84', NULL, NULL, NULL, '1', '6', '0', NULL, NULL, '1', '2', '0', NULL, NULL, '13', 'SE ENTREGAN 6 LLAVES DE 3 CERRADURAS.', 'SE ENTREGAN 3 LLAVES DE 3 CERRADURAS.', '4'),
(640, '2015-07-14 08:04:38', 402, NULL, 'STC 25880K BMN. ADJ.', '25880K', NULL, 'C/ BARTOMEU LLULL 8 PISO 2 PUERTA C', NULL, NULL, NULL, '1', NULL, '1', 'CONSEGUIR LLAVES DE ACCESO AL EDIF. Y PARKING. ENTREGAR COPIA AL API.', '92', NULL, NULL, NULL, '1', '2', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', 'SE ENTREGA 1 LLAVE AL API.', NULL, '4'),
(641, '2015-07-14 08:05:28', 384, NULL, 'DAC 72256K BMN ADJ.', '72256K', NULL, 'AVDA. GERANIS, S''ESTANY DEN MAS 10-18 PUERTA 8 BLOQUE 2 URB. PLAYA ROMANTICA', NULL, NULL, NULL, '1', NULL, '1', 'CAMBIO DE CERRADURA', '84', NULL, NULL, NULL, '1', '6', '0', NULL, NULL, '1', '2', '0', NULL, NULL, '13', 'SE ENTREGAN 4 LLAVES DE 2 PUERTAS.', 'SE ENTREGAN 2 LLAVES DE 2 PUERTAS.', '4'),
(642, '2015-07-14 08:06:23', 380, NULL, 'DAC 72296K BMN ADJ.', '72296K', NULL, 'AVDA. GERANIS, S''ESTANY DEN MAS 10-18 PUERTA 15 BLOQUE 5 URB. PLAYA ROMANTICA', NULL, NULL, NULL, '1', NULL, '1', 'CAMBIO CERRADURA', '84', NULL, NULL, NULL, '1', '6', '0', NULL, NULL, '1', '2', '0', NULL, NULL, '13', 'SE ENTREGAN 4 LLAVES DE 2 PUERTAS.', 'SE ENTREGAN 2 LLAVES DE 2 PUERTAS.', '4'),
(643, '2015-07-14 09:02:43', 409, NULL, 'INMUEBLES BS A0-35749-0001 LIM-CH', NULL, 'A0-35749-0001', 'TERMINO DE ATRA, SA FONT', NULL, NULL, NULL, '1', NULL, '1', 'REALIZAR CHECK Y LIMPIEZA.', '84', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(645, '2015-07-14 09:13:10', 125, NULL, 'INMUEBLE BS SG-32580-0001B TOMA', NULL, 'SG-32580-0001 TOMA', 'C/IMPRESOR CALAFAT Nº35 3', NULL, NULL, NULL, '1', NULL, '1', 'OT GENÉRICA. PROCURADOR: MªJOSE RODRIGUEZ, LANZAMIENTO 3/02/15 A LAS 11:30H.DESAHUCIO 826/14.', '92', NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '1', '1', '0', NULL, NULL, '13', NULL, 'SE HACE ENTREGA DE 8 LLAVEROS.', '4'),
(646, '2015-07-14 09:50:43', 401, NULL, 'TPJ DELS SASTRES', '52899K', NULL, 'C/ DELS SATRES ESQ. AVDA. DEL PLA', NULL, NULL, NULL, '1', NULL, '1', 'TPJ 16/06 A LAS 11:30 H.', '76', NULL, NULL, NULL, '1', NULL, '0', NULL, NULL, '1', '2', '0', NULL, NULL, '9', NULL, NULL, '4'),
(648, '2015-07-14 09:57:04', 256, NULL, 'VAR 21176K BMN FONDO SOCIAL 2', '21176K', NULL, 'C/ JACINTO GUERRERO 3 PISO 1 PUERTA 3 URB. SON ALEMAY O SON OLIVA', NULL, NULL, NULL, '1', NULL, '1', 'HA ENTRADO SUCIEDAD POR LA COLADURÍA, PARTE DEL TECHO DEL BAÑO SE HA CAÍDO SOBRE LA BAÑERA, FREGADERO OXIDADO. PRESUPUESTO. FINCAS FIOL; 692644739', '92', NULL, NULL, NULL, NULL, '2', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(649, '2015-07-14 11:34:55', 410, NULL, 'INMUEBLE BS A0-62141-0001 TOMA', NULL, 'A0-62141-0001', 'C/ PABLO IGLESIAS Nº 41 1B', '07004', 665347462, NULL, '1', NULL, '1', 'LANZAMIENTO 15/07 A LAS 12 H. LIA AMENGUAL, 665.347.462.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(650, '2015-07-15 07:20:37', 316, NULL, 'DAC MIGUEL ORDINAS', '72179K', NULL, 'C/ CARLOS I, 29 BLOQUE 1 APTO. 2', NULL, NULL, NULL, '1', NULL, '1', 'DAC 25/06 A LAS 12 H.', '105', NULL, NULL, NULL, '1', '6', '0', NULL, NULL, '1', NULL, '0', NULL, NULL, '13', 'SE ENTREGAN 6 LLAVES DE 3 PUERTAS.', 'SE ENTREGAN 3 LLAVES DE 3 PUERTAS.', '4'),
(652, '2015-07-15 07:47:17', 328, NULL, 'DAC CALA ROMÁNTICA', '72372K', NULL, 'COMPLEJO RESIDENCIAL CALA ROMÁNTICA AVDA. GERANIS 10-18.APTO. 10', NULL, NULL, NULL, '1', NULL, '1', 'DAC 25/06 A LAS 12 H. NOTARÍA ANTICH. VISITA PREVIA RAFAEL 649809656', '84', NULL, NULL, NULL, '1', '6', '0', NULL, NULL, '1', '2', '0', NULL, NULL, '13', 'SE ENTREGAN 4 LLAVES DE 2 CERRADURAS.', 'SE ENTREGAN 2 LLAVES DE 2 CERRADURAS.', '4'),
(653, '2015-07-15 07:50:19', 377, NULL, 'DAC 72321K BMN ADJ.', '72321K', NULL, 'AVDA. GERANIS, S''ESTANY DEN MAS 10-18 PUERTA 6 BLOQUE 2 URB. PLAYA ROMANTICA', NULL, NULL, NULL, '1', NULL, '1', 'CAMBIO CERRADURA', '84', NULL, NULL, NULL, '1', '6', '0', NULL, NULL, '1', '2', '0', NULL, NULL, '13', 'SE HACEN ENTREGA DE 6 LLAVES DE 3 CERRADURAS.', 'SE HACEN ENTREGA DE 3 LLAVES DE 3 CERRADURAS.', '4'),
(654, '2015-07-15 07:51:16', 381, NULL, 'DAC 72292K BMN ADJ.', '72292K', NULL, 'AVDA. GERANIS, S''ESTANY DEN MAS 10-18 PUERTA 2 BLOQUE 1 URB. PLAYA ROMANTICA', NULL, NULL, NULL, '1', NULL, '1', 'CAMBIO CERRADURA', '84', NULL, NULL, NULL, '1', '6', '0', NULL, NULL, '1', '2', '0', NULL, NULL, '13', 'SE ENTREGAN 6 LLAVES DE 3 PUERTAS.', 'SE ENTREGAN 3 LLAVES DE 3 PUERTAS.', '4'),
(655, '2015-07-15 07:52:06', 378, NULL, 'DAC 72319K BMN ADJ.', '72319K', NULL, 'AVDA. GERANIS, S''ESTANY DEN MAS 10-18 PUERTA 1 BLOQUE 1 URB. PLAYA ROMANTICA', NULL, NULL, NULL, '1', NULL, '1', 'CAMBIO CERRADURA', '84', NULL, NULL, NULL, '1', '6', '0', NULL, NULL, '1', NULL, '0', NULL, NULL, '13', 'SE ENTREGAN 4 LLAVES DE 2 CERRADURAS.', 'SE ENTREGAN 2 LLAVES.', '4'),
(656, '2015-07-15 07:56:16', 178, NULL, '52949907', NULL, NULL, 'C/ PUNTA BALLENA, Nº13 PISO 5, PUERTA 55, URB. TORRENOVA.', NULL, NULL, 609687999, '1', NULL, '1', 'TPJ 1/06/15 A LAS 10:30 H. DESCERRAJE Y CAMBIO DE BOMBIN. LIMPIEZA Y VACIADO HASTA 4 M3.', '34', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '0', '1', NULL, NULL, '13', NULL, 'LAS LLAVES SE ENVIAN A ASSISTA UNA VEZ FINALIZADO EL TRABAJO. SE LE TIENE QUE FACILITAR UNA LLAVE AL CERTIFICADOR.', '4'),
(657, '2015-07-15 08:24:00', 389, NULL, 'STC 57296K BMN ADJ.', '57296K', NULL, 'AVDA. CALA GAT 7', NULL, NULL, NULL, '1', NULL, '1', 'ASEGURAR FINCA, COMPROBAR QUE ESTÁ VACÍA, SI ES ASÍ CAMBIO CERRADURA. SI LA VIVIENDA ESTÁ OCUPADA NO HACEMOS NADA.', '43', NULL, NULL, NULL, '1', '9', '1', NULL, NULL, '1', '2', '1', NULL, NULL, '13', NULL, NULL, '4'),
(659, '2015-07-15 10:21:10', 411, NULL, 'STC 35743K SAREB BMN ADJ.', '35743K', NULL, 'AVDA. EUROPA 29, PISO 4 PUERTA B URB. SON VERÍ DE MARINA', NULL, NULL, NULL, '1', NULL, '1', 'DESCERRAJE URGENTE Y ENTREGAR LLAVES AL API Y GESTOR.', '82', NULL, NULL, NULL, NULL, '4', '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4'),
(660, '2015-07-15 10:34:53', 412, NULL, 'DAC OSCA', NULL, NULL, 'C/ OSCA Nº 5 PLANTA BAJA', NULL, NULL, NULL, '1', NULL, '1', 'DAC 24/07 A LAS 13:00 H. NOTARÍA PASEO DEL BORNE Nº 23.', '92', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, '13', NULL, NULL, '4');

-- --------------------------------------------------------

--
-- Table structure for table `llx_projet_task`
--

CREATE TABLE IF NOT EXISTS `llx_projet_task` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(50) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_projet` int(11) NOT NULL,
  `fk_task_parent` int(11) NOT NULL DEFAULT '0',
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dateo` datetime DEFAULT NULL,
  `datee` datetime DEFAULT NULL,
  `datev` datetime DEFAULT NULL,
  `label` varchar(255) NOT NULL,
  `description` text,
  `duration_effective` double NOT NULL DEFAULT '0',
  `planned_workload` double NOT NULL DEFAULT '0',
  `progress` int(11) DEFAULT '0',
  `priority` int(11) DEFAULT '0',
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_statut` smallint(6) NOT NULL DEFAULT '0',
  `note_private` text,
  `note_public` text,
  `rang` int(11) DEFAULT '0',
  `model_pdf` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_projet_task_fk_projet` (`fk_projet`),
  KEY `idx_projet_task_fk_user_creat` (`fk_user_creat`),
  KEY `idx_projet_task_fk_user_valid` (`fk_user_valid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `llx_projet_task`
--

INSERT INTO `llx_projet_task` (`rowid`, `ref`, `entity`, `fk_projet`, `fk_task_parent`, `datec`, `tms`, `dateo`, `datee`, `datev`, `label`, `description`, `duration_effective`, `planned_workload`, `progress`, `priority`, `fk_user_creat`, `fk_user_valid`, `fk_statut`, `note_private`, `note_public`, `rang`, `model_pdf`) VALUES
(13, 'TK1505-0001', 1, 116, 0, '2015-06-10 13:31:14', '2015-06-10 11:31:14', '2015-06-10 13:26:00', NULL, NULL, 'ALBAÑILERÍA.', '', 0, 0, 0, 0, 3, NULL, 0, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_projet_task_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_projet_task_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `act` text,
  PRIMARY KEY (`rowid`),
  KEY `idx_projet_task_extrafields` (`fk_object`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `llx_projet_task_extrafields`
--

INSERT INTO `llx_projet_task_extrafields` (`rowid`, `tms`, `fk_object`, `import_key`, `act`) VALUES
(10, '2015-05-27 09:37:31', 11, NULL, '3'),
(12, '2015-05-27 09:42:12', 12, NULL, '2'),
(13, '2015-06-10 11:31:14', 13, NULL, '6');

-- --------------------------------------------------------

--
-- Table structure for table `llx_projet_task_time`
--

CREATE TABLE IF NOT EXISTS `llx_projet_task_time` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_task` int(11) NOT NULL,
  `task_date` date DEFAULT NULL,
  `task_duration` double DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `thm` double(24,8) DEFAULT NULL,
  `note` text,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_propal`
--

CREATE TABLE IF NOT EXISTS `llx_propal` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(30) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(255) DEFAULT NULL,
  `ref_int` varchar(255) DEFAULT NULL,
  `ref_client` varchar(255) DEFAULT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `datep` date DEFAULT NULL,
  `fin_validite` datetime DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `date_cloture` datetime DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_user_cloture` int(11) DEFAULT NULL,
  `fk_statut` smallint(6) NOT NULL DEFAULT '0',
  `price` double DEFAULT '0',
  `remise_percent` double DEFAULT '0',
  `remise_absolue` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `tva` double(24,8) DEFAULT '0.00000000',
  `localtax1` double(24,8) DEFAULT '0.00000000',
  `localtax2` double(24,8) DEFAULT '0.00000000',
  `total` double(24,8) DEFAULT '0.00000000',
  `fk_account` int(11) DEFAULT NULL,
  `fk_currency` varchar(3) DEFAULT NULL,
  `fk_cond_reglement` int(11) DEFAULT NULL,
  `fk_mode_reglement` int(11) DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  `date_livraison` date DEFAULT NULL,
  `fk_availability` int(11) DEFAULT NULL,
  `fk_input_reason` int(11) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  `fk_delivery_address` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_propal_ref` (`ref`,`entity`),
  KEY `idx_propal_fk_soc` (`fk_soc`),
  KEY `idx_propal_fk_user_author` (`fk_user_author`),
  KEY `idx_propal_fk_user_valid` (`fk_user_valid`),
  KEY `idx_propal_fk_user_cloture` (`fk_user_cloture`),
  KEY `idx_propal_fk_projet` (`fk_projet`),
  KEY `idx_propal_fk_account` (`fk_account`),
  KEY `idx_propal_fk_currency` (`fk_currency`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `llx_propal`
--

INSERT INTO `llx_propal` (`rowid`, `ref`, `entity`, `ref_ext`, `ref_int`, `ref_client`, `fk_soc`, `fk_projet`, `tms`, `datec`, `datep`, `fin_validite`, `date_valid`, `date_cloture`, `fk_user_author`, `fk_user_valid`, `fk_user_cloture`, `fk_statut`, `price`, `remise_percent`, `remise_absolue`, `remise`, `total_ht`, `tva`, `localtax1`, `localtax2`, `total`, `fk_account`, `fk_currency`, `fk_cond_reglement`, `fk_mode_reglement`, `note_private`, `note_public`, `model_pdf`, `date_livraison`, `fk_availability`, `fk_input_reason`, `import_key`, `extraparams`, `fk_delivery_address`) VALUES
(1, '(PROV1)', 1, NULL, NULL, '686711/42015', 15, 309, '2015-06-22 12:28:18', '2015-06-22 14:28:18', '2015-06-22', '2015-07-07 12:00:00', NULL, NULL, 3, NULL, NULL, 0, 0, NULL, NULL, 0, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, NULL, NULL, 1, 0, '', '', 'azur', NULL, 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_propaldet`
--

CREATE TABLE IF NOT EXISTS `llx_propaldet` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_propal` int(11) NOT NULL,
  `fk_parent_line` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `description` text,
  `fk_remise_except` int(11) DEFAULT NULL,
  `tva_tx` double(6,3) DEFAULT '0.000',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `remise_percent` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `price` double DEFAULT NULL,
  `subprice` double(24,8) DEFAULT '0.00000000',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_tva` double(24,8) DEFAULT '0.00000000',
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `product_type` int(11) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `info_bits` int(11) DEFAULT '0',
  `buy_price_ht` double(24,8) DEFAULT '0.00000000',
  `fk_product_fournisseur_price` int(11) DEFAULT NULL,
  `special_code` int(11) DEFAULT '0',
  `rang` int(11) DEFAULT '0',
  PRIMARY KEY (`rowid`),
  KEY `idx_propaldet_fk_propal` (`fk_propal`),
  KEY `idx_propaldet_fk_product` (`fk_product`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_propaldet_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_propaldet_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_propaldet_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_propal_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_propal_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_propal_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_resource`
--

CREATE TABLE IF NOT EXISTS `llx_resource` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) DEFAULT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `description` text,
  `fk_code_type_resource` varchar(32) DEFAULT NULL,
  `note_public` text,
  `note_private` text,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rowid`),
  KEY `fk_code_type_resource_idx` (`fk_code_type_resource`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_rights_def`
--

CREATE TABLE IF NOT EXISTS `llx_rights_def` (
  `id` int(11) NOT NULL DEFAULT '0',
  `libelle` varchar(255) DEFAULT NULL,
  `module` varchar(64) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `perms` varchar(50) DEFAULT NULL,
  `subperms` varchar(50) DEFAULT NULL,
  `type` varchar(1) DEFAULT NULL,
  `bydefault` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`,`entity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `llx_rights_def`
--

INSERT INTO `llx_rights_def` (`id`, `libelle`, `module`, `entity`, `perms`, `subperms`, `type`, `bydefault`) VALUES
(11, 'Lire les factures', 'facture', 1, 'lire', NULL, 'a', 1),
(12, 'Creer/modifier les factures', 'facture', 1, 'creer', NULL, 'a', 0),
(13, 'Dévalider les factures', 'facture', 1, 'invoice_advance', 'unvalidate', 'a', 0),
(14, 'Valider les factures', 'facture', 1, 'valider', NULL, 'a', 0),
(15, 'Envoyer les factures par mail', 'facture', 1, 'invoice_advance', 'send', 'a', 0),
(16, 'Emettre des paiements sur les factures', 'facture', 1, 'paiement', NULL, 'a', 0),
(19, 'Supprimer les factures', 'facture', 1, 'supprimer', NULL, 'a', 0),
(21, 'Lire les propositions commerciales', 'propale', 1, 'lire', NULL, 'r', 1),
(22, 'Creer/modifier les propositions commerciales', 'propale', 1, 'creer', NULL, 'w', 0),
(24, 'Valider les propositions commerciales', 'propale', 1, 'valider', NULL, 'd', 0),
(25, 'Envoyer les propositions commerciales aux clients', 'propale', 1, 'propal_advance', 'send', 'd', 0),
(26, 'Cloturer les propositions commerciales', 'propale', 1, 'cloturer', NULL, 'd', 0),
(27, 'Supprimer les propositions commerciales', 'propale', 1, 'supprimer', NULL, 'd', 0),
(28, 'Exporter les propositions commerciales et attributs', 'propale', 1, 'export', NULL, 'r', 0),
(31, 'Lire les produits', 'produit', 1, 'lire', NULL, 'r', 1),
(32, 'Creer/modifier les produits', 'produit', 1, 'creer', NULL, 'w', 0),
(34, 'Supprimer les produits', 'produit', 1, 'supprimer', NULL, 'd', 0),
(38, 'Exporter les produits', 'produit', 1, 'export', NULL, 'r', 0),
(41, 'Lire les projets et tâches (partagés ou dont je suis contact)', 'projet', 1, 'lire', NULL, 'r', 1),
(42, 'Creer/modifier les projets et tâches (partagés ou dont je suis contact)', 'projet', 1, 'creer', NULL, 'w', 0),
(44, 'Supprimer les projets et tâches (partagés ou dont je suis contact)', 'projet', 1, 'supprimer', NULL, 'd', 0),
(45, 'Exporter les projets', 'projet', 1, 'export', NULL, 'd', 0),
(121, 'Lire les societes', 'societe', 1, 'lire', NULL, 'r', 1),
(122, 'Creer modifier les societes', 'societe', 1, 'creer', NULL, 'w', 0),
(125, 'Supprimer les societes', 'societe', 1, 'supprimer', NULL, 'd', 0),
(126, 'Exporter les societes', 'societe', 1, 'export', NULL, 'r', 0),
(141, 'Lire tous les projets et tâches (y compris prives qui ne me sont pas affectes)', 'projet', 1, 'all', 'lire', 'r', 0),
(142, 'Creer/modifier tous les projets et tâches (y compris prives qui ne me sont pas affectes)', 'projet', 1, 'all', 'creer', 'w', 0),
(144, 'Supprimer tous les projets et tâches (y compris prives qui ne me sont pas affectes)', 'projet', 1, 'all', 'supprimer', 'd', 0),
(251, 'Consulter les autres utilisateurs', 'user', 1, 'user', 'lire', 'r', 0),
(252, 'Consulter les permissions des autres utilisateurs', 'user', 1, 'user_advance', 'readperms', 'r', 0),
(253, 'Creer/modifier utilisateurs internes et externes', 'user', 1, 'user', 'creer', 'w', 0),
(254, 'Creer/modifier utilisateurs externes seulement', 'user', 1, 'user_advance', 'write', 'w', 0),
(255, 'Modifier le mot de passe des autres utilisateurs', 'user', 1, 'user', 'password', 'w', 0),
(256, 'Supprimer ou desactiver les autres utilisateurs', 'user', 1, 'user', 'supprimer', 'd', 0),
(262, 'Consulter tous les tiers par utilisateurs internes (sinon uniquement si contact commercial). Non effectif pour utilisateurs externes (tjs limités à eux-meme).', 'societe', 1, 'client', 'voir', 'r', 1),
(281, 'Lire les contacts', 'societe', 1, 'contact', 'lire', 'r', 1),
(282, 'Creer modifier les contacts', 'societe', 1, 'contact', 'creer', 'w', 0),
(283, 'Supprimer les contacts', 'societe', 1, 'contact', 'supprimer', 'd', 0),
(286, 'Exporter les contacts', 'societe', 1, 'contact', 'export', 'd', 0),
(341, 'Consulter ses propres permissions', 'user', 1, 'self_advance', 'readperms', 'r', 1),
(342, 'Creer/modifier ses propres infos utilisateur', 'user', 1, 'self', 'creer', 'w', 1),
(343, 'Modifier son propre mot de passe', 'user', 1, 'self', 'password', 'w', 1),
(344, 'Modifier ses propres permissions', 'user', 1, 'self_advance', 'writeperms', 'w', 1),
(351, 'Consulter les groupes', 'user', 1, 'group_advance', 'read', 'r', 0),
(352, 'Consulter les permissions des groupes', 'user', 1, 'group_advance', 'readperms', 'r', 0),
(353, 'Creer/modifier les groupes et leurs permissions', 'user', 1, 'group_advance', 'write', 'w', 0),
(354, 'Supprimer ou desactiver les groupes', 'user', 1, 'group_advance', 'delete', 'd', 0),
(358, 'Exporter les utilisateurs', 'user', 1, 'user', 'export', 'r', 0),
(531, 'Lire les services', 'service', 1, 'lire', NULL, 'r', 1),
(532, 'Creer/modifier les services', 'service', 1, 'creer', NULL, 'w', 0),
(534, 'Supprimer les services', 'service', 1, 'supprimer', NULL, 'd', 0),
(538, 'Exporter les services', 'service', 1, 'export', NULL, 'r', 0),
(1321, 'Exporter les factures clients, attributs et reglements', 'facture', 1, 'facture', 'export', 'r', 0),
(2401, 'Read actions/tasks linked to his account', 'agenda', 1, 'myactions', 'read', 'r', 1),
(2402, 'Create/modify actions/tasks linked to his account', 'agenda', 1, 'myactions', 'create', 'w', 0),
(2403, 'Delete actions/tasks linked to his account', 'agenda', 1, 'myactions', 'delete', 'w', 0),
(2411, 'Read actions/tasks of others', 'agenda', 1, 'allactions', 'read', 'r', 0),
(2412, 'Create/modify actions/tasks of others', 'agenda', 1, 'allactions', 'create', 'w', 0),
(2413, 'Delete actions/tasks of others', 'agenda', 1, 'allactions', 'delete', 'w', 0),
(2414, 'Export actions/tasks of others', 'agenda', 1, 'export', NULL, 'w', 0);

-- --------------------------------------------------------

--
-- Table structure for table `llx_societe`
--

CREATE TABLE IF NOT EXISTS `llx_societe` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(60) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(128) DEFAULT NULL,
  `ref_int` varchar(60) DEFAULT NULL,
  `statut` tinyint(4) DEFAULT '0',
  `parent` int(11) DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `code_client` varchar(24) DEFAULT NULL,
  `code_fournisseur` varchar(24) DEFAULT NULL,
  `code_compta` varchar(24) DEFAULT NULL,
  `code_compta_fournisseur` varchar(24) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zip` varchar(25) DEFAULT NULL,
  `town` varchar(50) DEFAULT NULL,
  `fk_departement` int(11) DEFAULT '0',
  `fk_pays` int(11) DEFAULT '0',
  `phone` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `skype` varchar(255) DEFAULT NULL,
  `fk_effectif` int(11) DEFAULT '0',
  `fk_typent` int(11) DEFAULT '0',
  `fk_forme_juridique` int(11) DEFAULT '0',
  `fk_currency` varchar(3) DEFAULT NULL,
  `siren` varchar(128) DEFAULT NULL,
  `siret` varchar(128) DEFAULT NULL,
  `ape` varchar(128) DEFAULT NULL,
  `idprof4` varchar(128) DEFAULT NULL,
  `idprof5` varchar(128) DEFAULT NULL,
  `idprof6` varchar(128) DEFAULT NULL,
  `tva_intra` varchar(20) DEFAULT NULL,
  `capital` double DEFAULT NULL,
  `fk_stcomm` int(11) NOT NULL DEFAULT '0',
  `note_private` text,
  `note_public` text,
  `prefix_comm` varchar(5) DEFAULT NULL,
  `client` tinyint(4) DEFAULT '0',
  `fournisseur` tinyint(4) DEFAULT '0',
  `supplier_account` varchar(32) DEFAULT NULL,
  `fk_prospectlevel` varchar(12) DEFAULT NULL,
  `customer_bad` tinyint(4) DEFAULT '0',
  `customer_rate` double DEFAULT '0',
  `supplier_rate` double DEFAULT '0',
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `remise_client` double DEFAULT '0',
  `mode_reglement` tinyint(4) DEFAULT NULL,
  `cond_reglement` tinyint(4) DEFAULT NULL,
  `mode_reglement_supplier` tinyint(4) DEFAULT NULL,
  `cond_reglement_supplier` tinyint(4) DEFAULT NULL,
  `tva_assuj` tinyint(4) DEFAULT '1',
  `localtax1_assuj` tinyint(4) DEFAULT '0',
  `localtax2_assuj` tinyint(4) DEFAULT '0',
  `barcode` varchar(255) DEFAULT NULL,
  `fk_barcode_type` int(11) DEFAULT '0',
  `price_level` int(11) DEFAULT NULL,
  `outstanding_limit` double(24,8) DEFAULT NULL,
  `default_lang` varchar(6) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `canvas` varchar(32) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_societe_prefix_comm` (`prefix_comm`,`entity`),
  UNIQUE KEY `uk_societe_code_client` (`code_client`,`entity`),
  UNIQUE KEY `uk_societe_code_fournisseur` (`code_fournisseur`,`entity`),
  UNIQUE KEY `uk_societe_barcode` (`barcode`,`fk_barcode_type`,`entity`),
  KEY `idx_societe_user_creat` (`fk_user_creat`),
  KEY `idx_societe_user_modif` (`fk_user_modif`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `llx_societe`
--

INSERT INTO `llx_societe` (`rowid`, `nom`, `entity`, `ref_ext`, `ref_int`, `statut`, `parent`, `tms`, `datec`, `status`, `code_client`, `code_fournisseur`, `code_compta`, `code_compta_fournisseur`, `address`, `zip`, `town`, `fk_departement`, `fk_pays`, `phone`, `fax`, `url`, `email`, `skype`, `fk_effectif`, `fk_typent`, `fk_forme_juridique`, `fk_currency`, `siren`, `siret`, `ape`, `idprof4`, `idprof5`, `idprof6`, `tva_intra`, `capital`, `fk_stcomm`, `note_private`, `note_public`, `prefix_comm`, `client`, `fournisseur`, `supplier_account`, `fk_prospectlevel`, `customer_bad`, `customer_rate`, `supplier_rate`, `fk_user_creat`, `fk_user_modif`, `remise_client`, `mode_reglement`, `cond_reglement`, `mode_reglement_supplier`, `cond_reglement_supplier`, `tva_assuj`, `localtax1_assuj`, `localtax2_assuj`, `barcode`, `fk_barcode_type`, `price_level`, `outstanding_limit`, `default_lang`, `logo`, `canvas`, `import_key`) VALUES
(15, 'ASSISTA', 1, NULL, NULL, 0, NULL, '2015-05-13 07:37:09', '2015-05-13 09:37:09', 1, 'CU1505-0001', NULL, '411CU15050001', NULL, 'C/ GENERAL PALANCA 4', NULL, NULL, 287, 4, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'B97600001', '', '', '', '', '', '', 0, 0, NULL, NULL, NULL, 2, 0, NULL, NULL, 0, 0, 0, 3, 3, 0, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Julio', 1, NULL, NULL, 0, NULL, '2015-05-28 12:18:46', '2015-05-28 14:18:46', 1, 'CU1505-0002', NULL, '411CU15050002', NULL, 'C/ SAVINA, 7', NULL, 'CAN PICAFORT', 248, 4, '656525880', NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, '00000000', '', '', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0, 3, 3, 0, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_societe_address`
--

CREATE TABLE IF NOT EXISTS `llx_societe_address` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `label` varchar(30) DEFAULT NULL,
  `fk_soc` int(11) DEFAULT '0',
  `name` varchar(60) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `town` varchar(50) DEFAULT NULL,
  `fk_pays` int(11) DEFAULT '0',
  `phone` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `note` text,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_societe_commerciaux`
--

CREATE TABLE IF NOT EXISTS `llx_societe_commerciaux` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_soc` int(11) DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_societe_commerciaux` (`fk_soc`,`fk_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `llx_societe_commerciaux`
--

INSERT INTO `llx_societe_commerciaux` (`rowid`, `fk_soc`, `fk_user`) VALUES
(1, 6, 1),
(2, 7, 3),
(3, 8, 3),
(4, 9, 1),
(5, 10, 1),
(6, 11, 1),
(7, 12, 1),
(8, 13, 1),
(9, 14, 1),
(10, 15, 3),
(11, 16, 3);

-- --------------------------------------------------------

--
-- Table structure for table `llx_societe_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_societe_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `autonomo_cli` text,
  PRIMARY KEY (`rowid`),
  KEY `idx_societe_extrafields` (`fk_object`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `llx_societe_extrafields`
--

INSERT INTO `llx_societe_extrafields` (`rowid`, `tms`, `fk_object`, `import_key`, `autonomo_cli`) VALUES
(9, '2015-05-13 07:37:09', 15, NULL, NULL),
(10, '2015-05-28 12:18:46', 16, NULL, '0');

-- --------------------------------------------------------

--
-- Table structure for table `llx_societe_log`
--

CREATE TABLE IF NOT EXISTS `llx_societe_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datel` datetime DEFAULT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `fk_statut` int(11) DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `author` varchar(30) DEFAULT NULL,
  `label` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_societe_prices`
--

CREATE TABLE IF NOT EXISTS `llx_societe_prices` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_soc` int(11) DEFAULT '0',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `price_level` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_societe_remise`
--

CREATE TABLE IF NOT EXISTS `llx_societe_remise` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_soc` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `remise_client` double(6,3) NOT NULL DEFAULT '0.000',
  `note` text,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_societe_remise_except`
--

CREATE TABLE IF NOT EXISTS `llx_societe_remise_except` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_soc` int(11) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `amount_ht` double(24,8) NOT NULL,
  `amount_tva` double(24,8) NOT NULL DEFAULT '0.00000000',
  `amount_ttc` double(24,8) NOT NULL DEFAULT '0.00000000',
  `tva_tx` double(6,3) NOT NULL DEFAULT '0.000',
  `fk_user` int(11) NOT NULL,
  `fk_facture_line` int(11) DEFAULT NULL,
  `fk_facture` int(11) DEFAULT NULL,
  `fk_facture_source` int(11) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_societe_remise_except_fk_user` (`fk_user`),
  KEY `idx_societe_remise_except_fk_soc` (`fk_soc`),
  KEY `idx_societe_remise_except_fk_facture_line` (`fk_facture_line`),
  KEY `idx_societe_remise_except_fk_facture` (`fk_facture`),
  KEY `idx_societe_remise_except_fk_facture_source` (`fk_facture_source`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_societe_rib`
--

CREATE TABLE IF NOT EXISTS `llx_societe_rib` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_soc` int(11) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `label` varchar(30) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `code_banque` varchar(7) DEFAULT NULL,
  `code_guichet` varchar(6) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `cle_rib` varchar(5) DEFAULT NULL,
  `bic` varchar(20) DEFAULT NULL,
  `iban_prefix` varchar(34) DEFAULT NULL,
  `domiciliation` varchar(255) DEFAULT NULL,
  `proprio` varchar(60) DEFAULT NULL,
  `owner_address` varchar(255) DEFAULT NULL,
  `default_rib` smallint(6) NOT NULL DEFAULT '0',
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_socpeople`
--

CREATE TABLE IF NOT EXISTS `llx_socpeople` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_soc` int(11) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(128) DEFAULT NULL,
  `civilite` varchar(6) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zip` varchar(25) DEFAULT NULL,
  `town` varchar(255) DEFAULT NULL,
  `fk_departement` int(11) DEFAULT NULL,
  `fk_pays` int(11) DEFAULT '0',
  `birthday` date DEFAULT NULL,
  `poste` varchar(80) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `phone_perso` varchar(30) DEFAULT NULL,
  `phone_mobile` varchar(30) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `jabberid` varchar(255) DEFAULT NULL,
  `skype` varchar(255) DEFAULT NULL,
  `no_email` smallint(6) NOT NULL DEFAULT '0',
  `priv` smallint(6) NOT NULL DEFAULT '0',
  `fk_user_creat` int(11) DEFAULT '0',
  `fk_user_modif` int(11) DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  `default_lang` varchar(6) DEFAULT NULL,
  `canvas` varchar(32) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `statut` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  KEY `idx_socpeople_fk_soc` (`fk_soc`),
  KEY `idx_socpeople_fk_user_creat` (`fk_user_creat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_socpeople_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_socpeople_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_socpeople_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_stock_mouvement`
--

CREATE TABLE IF NOT EXISTS `llx_stock_mouvement` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datem` datetime DEFAULT NULL,
  `fk_product` int(11) NOT NULL,
  `fk_entrepot` int(11) NOT NULL,
  `value` double DEFAULT NULL,
  `price` float(13,4) DEFAULT '0.0000',
  `type_mouvement` smallint(6) DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `label` varchar(128) DEFAULT NULL,
  `fk_origin` int(11) DEFAULT NULL,
  `origintype` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_stock_mouvement_fk_product` (`fk_product`),
  KEY `idx_stock_mouvement_fk_entrepot` (`fk_entrepot`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_texts`
--

CREATE TABLE IF NOT EXISTS `llx_texts` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(32) DEFAULT NULL,
  `typemodele` varchar(32) DEFAULT NULL,
  `sortorder` smallint(6) DEFAULT NULL,
  `private` smallint(6) NOT NULL DEFAULT '0',
  `fk_user` int(11) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `filename` varchar(128) DEFAULT NULL,
  `content` text,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_tva`
--

CREATE TABLE IF NOT EXISTS `llx_tva` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datep` date DEFAULT NULL,
  `datev` date DEFAULT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `fk_typepayment` int(11) DEFAULT NULL,
  `num_payment` varchar(50) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `note` text,
  `fk_bank` int(11) DEFAULT NULL,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_user`
--

CREATE TABLE IF NOT EXISTS `llx_user` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(50) DEFAULT NULL,
  `ref_int` varchar(50) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `login` varchar(24) NOT NULL,
  `pass` varchar(32) DEFAULT NULL,
  `pass_crypted` varchar(128) DEFAULT NULL,
  `pass_temp` varchar(32) DEFAULT NULL,
  `civilite` varchar(6) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zip` varchar(25) DEFAULT NULL,
  `town` varchar(50) DEFAULT NULL,
  `fk_state` int(11) DEFAULT '0',
  `fk_country` int(11) DEFAULT '0',
  `job` varchar(128) DEFAULT NULL,
  `skype` varchar(255) DEFAULT NULL,
  `office_phone` varchar(20) DEFAULT NULL,
  `office_fax` varchar(20) DEFAULT NULL,
  `user_mobile` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `signature` text,
  `admin` smallint(6) DEFAULT '0',
  `module_comm` smallint(6) DEFAULT '1',
  `module_compta` smallint(6) DEFAULT '1',
  `fk_societe` int(11) DEFAULT NULL,
  `fk_socpeople` int(11) DEFAULT NULL,
  `fk_member` int(11) DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `thm` double(24,8) DEFAULT NULL,
  `note` text,
  `datelastlogin` datetime DEFAULT NULL,
  `datepreviouslogin` datetime DEFAULT NULL,
  `egroupware_id` int(11) DEFAULT NULL,
  `ldap_sid` varchar(255) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `statut` tinyint(4) DEFAULT '1',
  `photo` varchar(255) DEFAULT NULL,
  `lang` varchar(6) DEFAULT NULL,
  `color` varchar(6) DEFAULT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `fk_barcode_type` int(11) DEFAULT '0',
  `accountancy_code` varchar(24) DEFAULT NULL,
  `nb_holiday` int(11) DEFAULT '0',
  `salary` double(24,8) DEFAULT NULL,
  `operario` tinyint(1) NOT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_user_login` (`login`,`entity`),
  UNIQUE KEY `uk_user_fk_socpeople` (`fk_socpeople`),
  UNIQUE KEY `uk_user_fk_member` (`fk_member`),
  KEY `uk_user_fk_societe` (`fk_societe`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `llx_user`
--

INSERT INTO `llx_user` (`rowid`, `entity`, `ref_ext`, `ref_int`, `datec`, `tms`, `login`, `pass`, `pass_crypted`, `pass_temp`, `civilite`, `lastname`, `firstname`, `address`, `zip`, `town`, `fk_state`, `fk_country`, `job`, `skype`, `office_phone`, `office_fax`, `user_mobile`, `email`, `signature`, `admin`, `module_comm`, `module_compta`, `fk_societe`, `fk_socpeople`, `fk_member`, `fk_user`, `thm`, `note`, `datelastlogin`, `datepreviouslogin`, `egroupware_id`, `ldap_sid`, `openid`, `statut`, `photo`, `lang`, `color`, `barcode`, `fk_barcode_type`, `accountancy_code`, `nb_holiday`, `salary`, `operario`) VALUES
(1, 0, NULL, NULL, '2015-02-28 22:11:53', '2015-02-28 21:42:30', 'admin_opendooorweb', 'opendoorsoft', '6279fda3bd8a6d9146b0d2eeca8e7287', NULL, NULL, 'Administrador', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', 1, 1, 1, NULL, NULL, NULL, NULL, NULL, '', '2015-07-15 19:50:47', '2015-07-15 19:44:41', NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 0, '', 0, NULL, 0),
(3, 0, NULL, NULL, '2015-02-28 22:50:20', '2015-02-28 21:53:22', 'pedro', '1234', '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, 'Aznar', 'Pedro', '', '', '', NULL, NULL, '', '', '', '', '', '', '', 0, 1, 1, NULL, NULL, NULL, NULL, NULL, '', '2015-07-14 11:53:50', '2015-07-13 22:21:01', NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 0, '', 0, NULL, 0),
(9, 0, NULL, NULL, '2015-05-15 09:52:53', '2015-06-17 09:11:45', 'seguridad jucar', '1234', '81dc9bdb52d04dc20036dbd8313ed055', '7m5hjz1v', NULL, 'Sanchez', 'Juan Carlos', '', '', '', NULL, NULL, 'multiusos y cerrajero', '', '606166764', '', '971914455', 'seguridadjucar@hotmail.com', '', 0, 1, 1, NULL, NULL, NULL, NULL, NULL, 'Hace trabajos de cerrajería y también trabajos varios como puede ser pintura, herrería, etc.', '2015-05-15 10:11:20', NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 0, '', 0, NULL, 1),
(10, 0, NULL, NULL, '2015-05-17 23:33:27', '2015-05-19 13:37:19', 'DAVID VIDAL', '1234', '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, 'VIDAL', 'DAVID', '', '', '', NULL, NULL, 'CERRAJERO Y MULTIUSOS', '', '692965537', '', '692965537', '', '', 0, 1, 1, NULL, NULL, NULL, NULL, NULL, '', '2015-05-27 11:27:05', '2015-05-18 20:27:43', NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 0, '', 0, NULL, 1),
(11, 0, NULL, NULL, '2015-05-19 11:18:20', '2015-07-03 08:06:11', 'JOCARPA', '1234', '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, 'LOSA', 'JOSE', '', '', '', NULL, NULL, 'FONTANERO', '', '971283966', '', '686578726', 'INSTALACIONESJOCARPA@GMAIL.COM', '', 0, 1, 1, NULL, NULL, NULL, 3, NULL, 'REALIZA TRABAJOS DE FONTANERIA, TAMBIEN 24 HORAS', NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 0, '', 0, NULL, 1),
(12, 0, NULL, NULL, '2015-05-19 11:45:05', '2015-05-19 09:45:05', 'ENRIQUE', '1234', '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, 'GARCIA LLABRÉS', 'ENRIQUE', '', '', '', NULL, NULL, 'CERRAJERO Y MULTIUSO', '', '628360603', '', '', '', '', 0, 1, 1, NULL, NULL, NULL, NULL, NULL, 'HAY QUE ESTAR DETRÁS DE ÉL PORQUE ES BASTANTE INFORMAL, NO PASARLE DEMASIADOS PARTES HASTA QUE NO TENGA LOS ASIGNADOS ACABADOS. MÁXIMO 3 PARTES EN MARCHA', NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 0, '', 0, NULL, 1),
(13, 0, NULL, NULL, '2015-05-19 15:38:42', '2015-07-03 08:03:00', 'OPENDOOR', '1234', '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, 'AZNAR', 'PEDRO', '', '', '', NULL, NULL, 'CERRAJERO Y MULTIUSO', '', '661045224', '', '661045224', '', '', 0, 1, 1, NULL, NULL, NULL, NULL, NULL, '', '2015-06-18 13:22:22', '2015-06-18 10:04:59', NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 0, '', 0, NULL, 1),
(14, 0, NULL, NULL, '2015-05-27 12:36:29', '2015-07-03 08:05:50', 'TONI TOUS', 'xbdt43fm', 'cf0b959c172a62596ca968ecfe0b699a', NULL, NULL, 'TOUS BOSCH', 'TONI', '', '', '', NULL, NULL, 'MULTISERVICIOS', '', '695815951', '', '695815951', 'BOSCH84@HOTMAIL.ES', '', 0, 1, 1, NULL, NULL, NULL, 3, NULL, '', NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 0, '', 0, NULL, 1),
(15, 0, NULL, NULL, '2015-06-02 19:13:09', '2015-06-02 17:13:09', 'KRASEN', 't9qh2c7r', '9501da02c81dc44256d55ac0aad0cc9c', NULL, NULL, 'ILIEV', 'KRASEN', '', '', '', NULL, NULL, 'DESBROCE Y VALLAS', '', '600839845', '', '', '', '', 0, 1, 1, NULL, NULL, NULL, NULL, NULL, 'HACE TRABAJOS DE DESBROCE, VALLADO Y ALGÚN VACIADO', NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 0, '', 0, NULL, 1),
(16, 0, NULL, NULL, '2015-06-08 10:15:01', '2015-07-03 08:05:20', 'JUAN SALORT', 'k1qbdzj2', '7c7ced4447bbf00f7b4db3f33ef47b95', NULL, NULL, 'DE SALORT', 'JUAN', '', '', '', NULL, NULL, 'MULTISERVICIOS', '', '606373130', '', '606373130', 'JOANCIUTADELLA@GMAIL.COM', '', 0, 1, 1, NULL, NULL, NULL, 3, NULL, 'SERVICIOS FONTANERÍA, ELECTRICIDAD, CONSTRUCCIÓN, PARED SECA, PINTURA, CERRAJERÍA. JARDINERÍA...', NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 0, '', 0, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_usergroup`
--

CREATE TABLE IF NOT EXISTS `llx_usergroup` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `note` text,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_usergroup_name` (`nom`,`entity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_usergroup_rights`
--

CREATE TABLE IF NOT EXISTS `llx_usergroup_rights` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_usergroup` int(11) NOT NULL,
  `fk_id` int(11) NOT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `fk_usergroup` (`fk_usergroup`,`fk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_usergroup_user`
--

CREATE TABLE IF NOT EXISTS `llx_usergroup_user` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_user` int(11) NOT NULL,
  `fk_usergroup` int(11) NOT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_usergroup_user` (`entity`,`fk_user`,`fk_usergroup`),
  KEY `fk_usergroup_user_fk_user` (`fk_user`),
  KEY `fk_usergroup_user_fk_usergroup` (`fk_usergroup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_user_alert`
--

CREATE TABLE IF NOT EXISTS `llx_user_alert` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL,
  `fk_contact` int(11) DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_user_clicktodial`
--

CREATE TABLE IF NOT EXISTS `llx_user_clicktodial` (
  `fk_user` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `login` varchar(32) DEFAULT NULL,
  `pass` varchar(64) DEFAULT NULL,
  `poste` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`fk_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `llx_user_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_user_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `cat_oper` text,
  `prov_oper` text,
  PRIMARY KEY (`rowid`),
  KEY `idx_user_extrafields` (`fk_object`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `llx_user_extrafields`
--

INSERT INTO `llx_user_extrafields` (`rowid`, `tms`, `fk_object`, `import_key`, `cat_oper`, `prov_oper`) VALUES
(17, '2015-05-17 22:16:45', 3, NULL, NULL, NULL),
(24, '2015-06-02 17:14:17', 15, NULL, NULL, '1'),
(28, '2015-07-03 07:32:58', 12, NULL, '4', '1'),
(30, '2015-07-03 07:33:26', 10, NULL, '4', '2'),
(31, '2015-07-03 07:33:39', 9, NULL, '4', '1'),
(33, '2015-07-03 08:03:00', 13, NULL, '4', '1'),
(35, '2015-07-03 08:05:50', 14, NULL, '1', '1'),
(36, '2015-07-03 08:06:11', 11, NULL, '2', '1'),
(37, '2015-07-09 08:38:09', 16, NULL, '1', '2');

-- --------------------------------------------------------

--
-- Table structure for table `llx_user_param`
--

CREATE TABLE IF NOT EXISTS `llx_user_param` (
  `fk_user` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `param` varchar(64) NOT NULL,
  `value` varchar(255) NOT NULL,
  UNIQUE KEY `uk_user_param` (`fk_user`,`param`,`entity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `llx_user_param`
--

INSERT INTO `llx_user_param` (`fk_user`, `entity`, `param`, `value`) VALUES
(3, 1, 'MAIN_BOXES_0', '1'),
(13, 1, 'MAIN_THEME', 'eldy');

-- --------------------------------------------------------

--
-- Table structure for table `llx_user_rights`
--

CREATE TABLE IF NOT EXISTS `llx_user_rights` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_user` int(11) NOT NULL,
  `fk_id` int(11) NOT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_user_rights` (`fk_user`,`fk_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=751 ;

--
-- Dumping data for table `llx_user_rights`
--

INSERT INTO `llx_user_rights` (`rowid`, `fk_user`, `fk_id`) VALUES
(29, 1, 11),
(22, 1, 12),
(23, 1, 13),
(25, 1, 14),
(26, 1, 15),
(28, 1, 16),
(30, 1, 19),
(148, 1, 21),
(140, 1, 22),
(142, 1, 24),
(143, 1, 25),
(145, 1, 26),
(147, 1, 27),
(149, 1, 28),
(117, 1, 31),
(114, 1, 32),
(116, 1, 34),
(118, 1, 38),
(131, 1, 41),
(128, 1, 42),
(130, 1, 44),
(132, 1, 45),
(442, 1, 61),
(439, 1, 62),
(441, 1, 64),
(443, 1, 67),
(444, 1, 68),
(66, 1, 71),
(61, 1, 72),
(63, 1, 74),
(67, 1, 75),
(65, 1, 76),
(69, 1, 78),
(70, 1, 79),
(355, 1, 91),
(352, 1, 92),
(354, 1, 93),
(356, 1, 94),
(450, 1, 121),
(447, 1, 122),
(449, 1, 125),
(451, 1, 126),
(136, 1, 141),
(135, 1, 142),
(137, 1, 144),
(341, 1, 241),
(340, 1, 242),
(342, 1, 243),
(452, 1, 262),
(458, 1, 281),
(455, 1, 282),
(457, 1, 283),
(459, 1, 286),
(1, 1, 341),
(2, 1, 342),
(3, 1, 343),
(4, 1, 344),
(124, 1, 531),
(121, 1, 532),
(123, 1, 534),
(125, 1, 538),
(71, 1, 1181),
(95, 1, 1182),
(74, 1, 1183),
(76, 1, 1184),
(78, 1, 1185),
(80, 1, 1186),
(82, 1, 1187),
(84, 1, 1188),
(93, 1, 1231),
(87, 1, 1232),
(89, 1, 1233),
(91, 1, 1234),
(92, 1, 1235),
(94, 1, 1236),
(96, 1, 1237),
(31, 1, 1321),
(325, 1, 2401),
(324, 1, 2402),
(326, 1, 2403),
(330, 1, 2411),
(329, 1, 2412),
(331, 1, 2413),
(332, 1, 2414),
(348, 1, 23001),
(345, 1, 23002),
(347, 1, 23003),
(349, 1, 23004),
(478, 3, 11),
(473, 3, 12),
(475, 3, 14),
(477, 3, 16),
(479, 3, 19),
(497, 3, 21),
(490, 3, 22),
(492, 3, 24),
(494, 3, 26),
(496, 3, 27),
(498, 3, 28),
(486, 3, 31),
(483, 3, 32),
(485, 3, 34),
(487, 3, 38),
(210, 3, 41),
(207, 3, 42),
(209, 3, 44),
(211, 3, 45),
(229, 3, 121),
(226, 3, 122),
(228, 3, 125),
(230, 3, 126),
(215, 3, 141),
(214, 3, 142),
(216, 3, 144),
(653, 3, 251),
(654, 3, 252),
(655, 3, 253),
(656, 3, 254),
(657, 3, 255),
(658, 3, 256),
(184, 3, 262),
(235, 3, 281),
(234, 3, 282),
(232, 3, 283),
(659, 3, 341),
(660, 3, 342),
(661, 3, 343),
(662, 3, 344),
(663, 3, 351),
(664, 3, 352),
(665, 3, 353),
(666, 3, 354),
(667, 3, 358),
(223, 3, 531),
(224, 3, 532),
(222, 3, 534),
(220, 3, 538),
(480, 3, 1321),
(463, 3, 2401),
(462, 3, 2402),
(464, 3, 2403),
(468, 3, 2411),
(467, 3, 2412),
(469, 3, 2413),
(470, 3, 2414),
(515, 9, 341),
(516, 9, 342),
(517, 9, 343),
(518, 9, 344),
(519, 9, 531),
(648, 10, 31),
(670, 10, 41),
(671, 10, 42),
(652, 10, 343),
(647, 10, 2401),
(673, 11, 11),
(674, 11, 21),
(675, 11, 31),
(676, 11, 41),
(677, 11, 121),
(678, 11, 262),
(679, 11, 281),
(680, 11, 341),
(681, 11, 342),
(682, 11, 343),
(683, 11, 344),
(684, 11, 531),
(685, 11, 2401),
(686, 12, 11),
(687, 12, 21),
(688, 12, 31),
(689, 12, 41),
(690, 12, 121),
(691, 12, 262),
(692, 12, 281),
(693, 12, 341),
(694, 12, 342),
(695, 12, 343),
(696, 12, 344),
(697, 12, 531),
(698, 12, 2401),
(699, 13, 11),
(700, 13, 21),
(701, 13, 31),
(702, 13, 41),
(703, 13, 121),
(704, 13, 262),
(705, 13, 281),
(706, 13, 341),
(707, 13, 342),
(708, 13, 343),
(709, 13, 344),
(710, 13, 531),
(711, 13, 2401),
(712, 14, 11),
(713, 14, 21),
(714, 14, 31),
(715, 14, 41),
(716, 14, 121),
(717, 14, 262),
(718, 14, 281),
(719, 14, 341),
(720, 14, 342),
(721, 14, 343),
(722, 14, 344),
(723, 14, 531),
(724, 14, 2401),
(725, 15, 11),
(726, 15, 21),
(727, 15, 31),
(728, 15, 41),
(729, 15, 121),
(730, 15, 262),
(731, 15, 281),
(732, 15, 341),
(733, 15, 342),
(734, 15, 343),
(735, 15, 344),
(736, 15, 531),
(737, 15, 2401),
(738, 16, 11),
(739, 16, 21),
(740, 16, 31),
(741, 16, 41),
(742, 16, 121),
(743, 16, 262),
(744, 16, 281),
(745, 16, 341),
(746, 16, 342),
(747, 16, 343),
(748, 16, 344),
(749, 16, 531),
(750, 16, 2401);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `llx_accountingaccount`
--
ALTER TABLE `llx_accountingaccount`
  ADD CONSTRAINT `fk_accountingaccount_fk_pcg_version` FOREIGN KEY (`fk_pcg_version`) REFERENCES `llx_accounting_system` (`pcg_version`);

--
-- Constraints for table `llx_adherent`
--
ALTER TABLE `llx_adherent`
  ADD CONSTRAINT `adherent_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`),
  ADD CONSTRAINT `fk_adherent_adherent_type` FOREIGN KEY (`fk_adherent_type`) REFERENCES `llx_adherent_type` (`rowid`);

--
-- Constraints for table `llx_boxes`
--
ALTER TABLE `llx_boxes`
  ADD CONSTRAINT `fk_boxes_box_id` FOREIGN KEY (`box_id`) REFERENCES `llx_boxes_def` (`rowid`);

--
-- Constraints for table `llx_categorie_contact`
--
ALTER TABLE `llx_categorie_contact`
  ADD CONSTRAINT `fk_categorie_contact_categorie_rowid` FOREIGN KEY (`fk_categorie`) REFERENCES `llx_categorie` (`rowid`),
  ADD CONSTRAINT `fk_categorie_contact_fk_socpeople` FOREIGN KEY (`fk_socpeople`) REFERENCES `llx_socpeople` (`rowid`);

--
-- Constraints for table `llx_categorie_fournisseur`
--
ALTER TABLE `llx_categorie_fournisseur`
  ADD CONSTRAINT `fk_categorie_fournisseur_categorie_rowid` FOREIGN KEY (`fk_categorie`) REFERENCES `llx_categorie` (`rowid`),
  ADD CONSTRAINT `fk_categorie_fournisseur_fk_soc` FOREIGN KEY (`fk_societe`) REFERENCES `llx_societe` (`rowid`);

--
-- Constraints for table `llx_categorie_lang`
--
ALTER TABLE `llx_categorie_lang`
  ADD CONSTRAINT `fk_category_lang_fk_category` FOREIGN KEY (`fk_category`) REFERENCES `llx_categorie` (`rowid`);

--
-- Constraints for table `llx_categorie_member`
--
ALTER TABLE `llx_categorie_member`
  ADD CONSTRAINT `fk_categorie_member_categorie_rowid` FOREIGN KEY (`fk_categorie`) REFERENCES `llx_categorie` (`rowid`),
  ADD CONSTRAINT `fk_categorie_member_member_rowid` FOREIGN KEY (`fk_member`) REFERENCES `llx_adherent` (`rowid`);

--
-- Constraints for table `llx_categorie_product`
--
ALTER TABLE `llx_categorie_product`
  ADD CONSTRAINT `fk_categorie_product_categorie_rowid` FOREIGN KEY (`fk_categorie`) REFERENCES `llx_categorie` (`rowid`),
  ADD CONSTRAINT `fk_categorie_product_product_rowid` FOREIGN KEY (`fk_product`) REFERENCES `llx_product` (`rowid`);

--
-- Constraints for table `llx_categorie_societe`
--
ALTER TABLE `llx_categorie_societe`
  ADD CONSTRAINT `fk_categorie_societe_categorie_rowid` FOREIGN KEY (`fk_categorie`) REFERENCES `llx_categorie` (`rowid`),
  ADD CONSTRAINT `fk_categorie_societe_fk_soc` FOREIGN KEY (`fk_societe`) REFERENCES `llx_societe` (`rowid`);

--
-- Constraints for table `llx_commande`
--
ALTER TABLE `llx_commande`
  ADD CONSTRAINT `fk_commande_fk_projet` FOREIGN KEY (`fk_projet`) REFERENCES `llx_projet` (`rowid`),
  ADD CONSTRAINT `fk_commande_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`),
  ADD CONSTRAINT `fk_commande_fk_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `llx_user` (`rowid`),
  ADD CONSTRAINT `fk_commande_fk_user_cloture` FOREIGN KEY (`fk_user_cloture`) REFERENCES `llx_user` (`rowid`),
  ADD CONSTRAINT `fk_commande_fk_user_valid` FOREIGN KEY (`fk_user_valid`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_commandedet`
--
ALTER TABLE `llx_commandedet`
  ADD CONSTRAINT `fk_commandedet_fk_commande` FOREIGN KEY (`fk_commande`) REFERENCES `llx_commande` (`rowid`);

--
-- Constraints for table `llx_commande_fournisseur`
--
ALTER TABLE `llx_commande_fournisseur`
  ADD CONSTRAINT `fk_commande_fournisseur_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`);

--
-- Constraints for table `llx_contrat`
--
ALTER TABLE `llx_contrat`
  ADD CONSTRAINT `fk_contrat_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`),
  ADD CONSTRAINT `fk_contrat_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_contratdet`
--
ALTER TABLE `llx_contratdet`
  ADD CONSTRAINT `fk_contratdet_fk_contrat` FOREIGN KEY (`fk_contrat`) REFERENCES `llx_contrat` (`rowid`),
  ADD CONSTRAINT `fk_contratdet_fk_product` FOREIGN KEY (`fk_product`) REFERENCES `llx_product` (`rowid`);

--
-- Constraints for table `llx_contratdet_log`
--
ALTER TABLE `llx_contratdet_log`
  ADD CONSTRAINT `fk_contratdet_log_fk_contratdet` FOREIGN KEY (`fk_contratdet`) REFERENCES `llx_contratdet` (`rowid`);

--
-- Constraints for table `llx_c_regions`
--
ALTER TABLE `llx_c_regions`
  ADD CONSTRAINT `fk_c_regions_fk_pays` FOREIGN KEY (`fk_pays`) REFERENCES `llx_c_pays` (`rowid`);

--
-- Constraints for table `llx_c_ziptown`
--
ALTER TABLE `llx_c_ziptown`
  ADD CONSTRAINT `fk_c_ziptown_fk_county` FOREIGN KEY (`fk_county`) REFERENCES `llx_c_departements` (`rowid`),
  ADD CONSTRAINT `fk_c_ziptown_fk_pays` FOREIGN KEY (`fk_pays`) REFERENCES `llx_c_pays` (`rowid`);

--
-- Constraints for table `llx_ecm_directories`
--
ALTER TABLE `llx_ecm_directories`
  ADD CONSTRAINT `fk_ecm_directories_fk_user_c` FOREIGN KEY (`fk_user_c`) REFERENCES `llx_user` (`rowid`),
  ADD CONSTRAINT `fk_ecm_directories_fk_user_m` FOREIGN KEY (`fk_user_m`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_element_contact`
--
ALTER TABLE `llx_element_contact`
  ADD CONSTRAINT `fk_element_contact_fk_c_type_contact` FOREIGN KEY (`fk_c_type_contact`) REFERENCES `llx_c_type_contact` (`rowid`);

--
-- Constraints for table `llx_expedition`
--
ALTER TABLE `llx_expedition`
  ADD CONSTRAINT `fk_expedition_fk_shipping_method` FOREIGN KEY (`fk_shipping_method`) REFERENCES `llx_c_shipment_mode` (`rowid`),
  ADD CONSTRAINT `fk_expedition_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`),
  ADD CONSTRAINT `fk_expedition_fk_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `llx_user` (`rowid`),
  ADD CONSTRAINT `fk_expedition_fk_user_valid` FOREIGN KEY (`fk_user_valid`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_expeditiondet`
--
ALTER TABLE `llx_expeditiondet`
  ADD CONSTRAINT `fk_expeditiondet_fk_expedition` FOREIGN KEY (`fk_expedition`) REFERENCES `llx_expedition` (`rowid`);

--
-- Constraints for table `llx_expeditiondet_batch`
--
ALTER TABLE `llx_expeditiondet_batch`
  ADD CONSTRAINT `fk_expeditiondet_batch_fk_expeditiondet` FOREIGN KEY (`fk_expeditiondet`) REFERENCES `llx_expeditiondet` (`rowid`);

--
-- Constraints for table `llx_facture`
--
ALTER TABLE `llx_facture`
  ADD CONSTRAINT `fk_facture_fk_facture_source` FOREIGN KEY (`fk_facture_source`) REFERENCES `llx_facture` (`rowid`),
  ADD CONSTRAINT `fk_facture_fk_projet` FOREIGN KEY (`fk_projet`) REFERENCES `llx_projet` (`rowid`),
  ADD CONSTRAINT `fk_facture_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`),
  ADD CONSTRAINT `fk_facture_fk_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `llx_user` (`rowid`),
  ADD CONSTRAINT `fk_facture_fk_user_valid` FOREIGN KEY (`fk_user_valid`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_facturedet`
--
ALTER TABLE `llx_facturedet`
  ADD CONSTRAINT `fk_facturedet_fk_facture` FOREIGN KEY (`fk_facture`) REFERENCES `llx_facture` (`rowid`);

--
-- Constraints for table `llx_facture_fourn`
--
ALTER TABLE `llx_facture_fourn`
  ADD CONSTRAINT `fk_facture_fourn_fk_projet` FOREIGN KEY (`fk_projet`) REFERENCES `llx_projet` (`rowid`),
  ADD CONSTRAINT `fk_facture_fourn_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`),
  ADD CONSTRAINT `fk_facture_fourn_fk_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `llx_user` (`rowid`),
  ADD CONSTRAINT `fk_facture_fourn_fk_user_valid` FOREIGN KEY (`fk_user_valid`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_facture_fourn_det`
--
ALTER TABLE `llx_facture_fourn_det`
  ADD CONSTRAINT `fk_facture_fourn_det_fk_facture` FOREIGN KEY (`fk_facture_fourn`) REFERENCES `llx_facture_fourn` (`rowid`);

--
-- Constraints for table `llx_facture_rec`
--
ALTER TABLE `llx_facture_rec`
  ADD CONSTRAINT `fk_facture_rec_fk_projet` FOREIGN KEY (`fk_projet`) REFERENCES `llx_projet` (`rowid`),
  ADD CONSTRAINT `fk_facture_rec_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`),
  ADD CONSTRAINT `fk_facture_rec_fk_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_fichinter`
--
ALTER TABLE `llx_fichinter`
  ADD CONSTRAINT `fk_fichinter_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`);

--
-- Constraints for table `llx_fichinterdet`
--
ALTER TABLE `llx_fichinterdet`
  ADD CONSTRAINT `fk_fichinterdet_fk_fichinter` FOREIGN KEY (`fk_fichinter`) REFERENCES `llx_fichinter` (`rowid`);

--
-- Constraints for table `llx_livraison`
--
ALTER TABLE `llx_livraison`
  ADD CONSTRAINT `fk_livraison_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`),
  ADD CONSTRAINT `fk_livraison_fk_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `llx_user` (`rowid`),
  ADD CONSTRAINT `fk_livraison_fk_user_valid` FOREIGN KEY (`fk_user_valid`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_livraisondet`
--
ALTER TABLE `llx_livraisondet`
  ADD CONSTRAINT `fk_livraisondet_fk_livraison` FOREIGN KEY (`fk_livraison`) REFERENCES `llx_livraison` (`rowid`);

--
-- Constraints for table `llx_paiement_facture`
--
ALTER TABLE `llx_paiement_facture`
  ADD CONSTRAINT `fk_paiement_facture_fk_facture` FOREIGN KEY (`fk_facture`) REFERENCES `llx_facture` (`rowid`),
  ADD CONSTRAINT `fk_paiement_facture_fk_paiement` FOREIGN KEY (`fk_paiement`) REFERENCES `llx_paiement` (`rowid`);

--
-- Constraints for table `llx_prelevement_facture`
--
ALTER TABLE `llx_prelevement_facture`
  ADD CONSTRAINT `fk_prelevement_facture_fk_prelevement_lignes` FOREIGN KEY (`fk_prelevement_lignes`) REFERENCES `llx_prelevement_lignes` (`rowid`);

--
-- Constraints for table `llx_prelevement_lignes`
--
ALTER TABLE `llx_prelevement_lignes`
  ADD CONSTRAINT `fk_prelevement_lignes_fk_prelevement_bons` FOREIGN KEY (`fk_prelevement_bons`) REFERENCES `llx_prelevement_bons` (`rowid`);

--
-- Constraints for table `llx_product_batch`
--
ALTER TABLE `llx_product_batch`
  ADD CONSTRAINT `fk_product_batch_fk_product_stock` FOREIGN KEY (`fk_product_stock`) REFERENCES `llx_product_stock` (`rowid`);

--
-- Constraints for table `llx_product_customer_price`
--
ALTER TABLE `llx_product_customer_price`
  ADD CONSTRAINT `fk_product_customer_price_fk_product` FOREIGN KEY (`fk_product`) REFERENCES `llx_product` (`rowid`),
  ADD CONSTRAINT `fk_product_customer_price_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`),
  ADD CONSTRAINT `fk_product_customer_price_fk_user` FOREIGN KEY (`fk_user`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_product_fournisseur_price`
--
ALTER TABLE `llx_product_fournisseur_price`
  ADD CONSTRAINT `fk_product_fournisseur_price_fk_product` FOREIGN KEY (`fk_product`) REFERENCES `llx_product` (`rowid`),
  ADD CONSTRAINT `fk_product_fournisseur_price_fk_user` FOREIGN KEY (`fk_user`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_product_lang`
--
ALTER TABLE `llx_product_lang`
  ADD CONSTRAINT `fk_product_lang_fk_product` FOREIGN KEY (`fk_product`) REFERENCES `llx_product` (`rowid`);

--
-- Constraints for table `llx_product_price_by_qty`
--
ALTER TABLE `llx_product_price_by_qty`
  ADD CONSTRAINT `fk_product_price_by_qty_fk_product_price` FOREIGN KEY (`fk_product_price`) REFERENCES `llx_product_price` (`rowid`);

--
-- Constraints for table `llx_projet`
--
ALTER TABLE `llx_projet`
  ADD CONSTRAINT `fk_projet_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`);

--
-- Constraints for table `llx_projet_task`
--
ALTER TABLE `llx_projet_task`
  ADD CONSTRAINT `fk_projet_task_fk_projet` FOREIGN KEY (`fk_projet`) REFERENCES `llx_projet` (`rowid`),
  ADD CONSTRAINT `fk_projet_task_fk_user_creat` FOREIGN KEY (`fk_user_creat`) REFERENCES `llx_user` (`rowid`),
  ADD CONSTRAINT `fk_projet_task_fk_user_valid` FOREIGN KEY (`fk_user_valid`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_propal`
--
ALTER TABLE `llx_propal`
  ADD CONSTRAINT `fk_propal_fk_projet` FOREIGN KEY (`fk_projet`) REFERENCES `llx_projet` (`rowid`),
  ADD CONSTRAINT `fk_propal_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`),
  ADD CONSTRAINT `fk_propal_fk_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `llx_user` (`rowid`),
  ADD CONSTRAINT `fk_propal_fk_user_cloture` FOREIGN KEY (`fk_user_cloture`) REFERENCES `llx_user` (`rowid`),
  ADD CONSTRAINT `fk_propal_fk_user_valid` FOREIGN KEY (`fk_user_valid`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_propaldet`
--
ALTER TABLE `llx_propaldet`
  ADD CONSTRAINT `fk_propaldet_fk_propal` FOREIGN KEY (`fk_propal`) REFERENCES `llx_propal` (`rowid`);

--
-- Constraints for table `llx_societe_remise_except`
--
ALTER TABLE `llx_societe_remise_except`
  ADD CONSTRAINT `fk_societe_remise_fk_facture` FOREIGN KEY (`fk_facture`) REFERENCES `llx_facture` (`rowid`),
  ADD CONSTRAINT `fk_societe_remise_fk_facture_line` FOREIGN KEY (`fk_facture_line`) REFERENCES `llx_facturedet` (`rowid`),
  ADD CONSTRAINT `fk_societe_remise_fk_facture_source` FOREIGN KEY (`fk_facture_source`) REFERENCES `llx_facture` (`rowid`),
  ADD CONSTRAINT `fk_societe_remise_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`),
  ADD CONSTRAINT `fk_societe_remise_fk_user` FOREIGN KEY (`fk_user`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_socpeople`
--
ALTER TABLE `llx_socpeople`
  ADD CONSTRAINT `fk_socpeople_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`),
  ADD CONSTRAINT `fk_socpeople_user_creat_user_rowid` FOREIGN KEY (`fk_user_creat`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_usergroup_rights`
--
ALTER TABLE `llx_usergroup_rights`
  ADD CONSTRAINT `fk_usergroup_rights_fk_usergroup` FOREIGN KEY (`fk_usergroup`) REFERENCES `llx_usergroup` (`rowid`);

--
-- Constraints for table `llx_usergroup_user`
--
ALTER TABLE `llx_usergroup_user`
  ADD CONSTRAINT `fk_usergroup_user_fk_user` FOREIGN KEY (`fk_user`) REFERENCES `llx_user` (`rowid`),
  ADD CONSTRAINT `fk_usergroup_user_fk_usergroup` FOREIGN KEY (`fk_usergroup`) REFERENCES `llx_usergroup` (`rowid`);

--
-- Constraints for table `llx_user_rights`
--
ALTER TABLE `llx_user_rights`
  ADD CONSTRAINT `fk_user_rights_fk_user_user` FOREIGN KEY (`fk_user`) REFERENCES `llx_user` (`rowid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
