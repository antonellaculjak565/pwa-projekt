-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2024 at 11:53 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pwa_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `id` int(11) NOT NULL,
  `ime` varchar(32) COLLATE utf8_croatian_ci NOT NULL,
  `prezime` varchar(32) COLLATE utf8_croatian_ci NOT NULL,
  `korisnicko_ime` varchar(32) COLLATE utf8_croatian_ci NOT NULL,
  `lozinka` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `razina` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`id`, `ime`, `prezime`, `korisnicko_ime`, `lozinka`, `razina`) VALUES
(1, 'Antonella', 'Culjak', 'Antonella', '123', 1),
(3, 'Nika', 'Culja', 'Nika', '123', 0),
(5, 'Marija', 'Maric', 'Marija', '$2y$10$KiGkFKTaq7Thvpr7vc8yxOUK2N3f4fQiihOwXL78DlctjjDhba60a', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vijesti`
--

CREATE TABLE `vijesti` (
  `id` int(11) NOT NULL,
  `datum` varchar(32) COLLATE utf8_croatian_ci DEFAULT NULL,
  `naslov` varchar(64) COLLATE utf8_croatian_ci DEFAULT NULL,
  `sazetak` text COLLATE utf8_croatian_ci DEFAULT NULL,
  `tekst` text COLLATE utf8_croatian_ci DEFAULT NULL,
  `slika` varchar(64) COLLATE utf8_croatian_ci DEFAULT NULL,
  `kategorija` varchar(64) COLLATE utf8_croatian_ci DEFAULT NULL,
  `arhiva` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `vijesti`
--

INSERT INTO `vijesti` (`id`, `datum`, `naslov`, `sazetak`, `tekst`, `slika`, `kategorija`, `arhiva`) VALUES
(28, '13.06.2024.', 'Euro 2024 : \"La sonnette d’alarme a été tirée, il faut se mobili', 'Ousmane Dembélé, en conférence de presse à Paderborn, dans l\'ouest de l\'Allemagne, le 13 juin 2024. (FRANCK FIFE / AFP)', '\"Avec la situation en France, la sonnette d’alarme a été tirée. Je pense qu’il faut se mobiliser pour aller voter.\" Interrogé en conférence de presse sur la nécessité ou non d’agir contre la montée de l’extrême droite en France, Ousmane Dembélé a tranché avec le mutisme des Bleus au sujet des élections législatives provoquées par la récente dissolution de l’Assemblée nationale.\r\n\r\n\"Il y a quelques jours, je regardais le journal de 13 heures. Je crois qu’un Français sur 2 ne vote pas. Les législatives vont arriver, il faut se mobiliser pour aller voter\", a-t-il insisté face aux journalistes, alors que le premier match des Bleus contre l\'Autriche est programmé lundi. Le joueur français a également dévoilé que la Fédération française de football (FFF) comptait mettre en place un dispositif pour que les joueurs de l’équipe de France puissent voter. Mohamed Sanhadji, l\'officier de liaison des Bleus, fera les démarches lundi avec le consulat général de France à Düsseldorf, pour que le staff et les joueurs aient la possibilité d\'établir une procuration.\r\n\r\nLa veille, Dayot Upamecano et Kingsley Coman avaient refusé de mettre un doigt de pied dans l’arène. \"Je ne suis pas venu pour parler de ça, je préfère parler de football\", avait coupé le premier. Le second a nommé l’importance de placer le football et la compétition avant tout : \"On a dit entre nous qu’on avait une compétition à préparer. On essaie de garder toute notre concentration sur le football et on ne parle pas trop politique\". Même son de cloche du côté de Ferland Mendy, pudique : \"Chacun a son avis personnel, j’ai le mien et je n’ai pas besoin de m’étaler\".', 'sport01.avif', 'sport', 0),
(65, '13.06.2024.', 'Paris 2024 : Florent Manaudou, Estelle Mossely et Alexis Hanquin', 'Alexis Hanquinquant (à g), Florent Manaudou (au c) et Estelle Mossely (à d) font partie des candidats pour devenir les porte-drapeaux de la délégation française des Jeux de Paris. (SIPA / AFP)', 'Quels athlètes guideront la délégation française lors des cérémonies d\'ouverture des Jeux olympiques et paralympiques de Paris 2024 ? À un mois de l\'annonce officielle des porte-drapeaux français le 12 juillet, le Comité national olympique et sportif français (CNOSF) et le Comité paralympique et sportif français (CPSF) ont dévoilé, jeudi 13 juin, la liste des 18 candidats, 14 pour les JO, quatre pour les Paralympiques.\r\n\r\nPour pouvoir se présenter, les athlètes devaient répondre à plusieurs critères, notamment ceux d\'avoir déjà participé à des Jeux et de n\'avoir jamais été porte-drapeau. Des critères qui ont exclu d\'emblée les judokas champions olympiques Teddy Riner et Clarisse Agbégnénou, anciens porte-drapeaux, mais aussi les néophytes des Jeux comme Victor Wembanyama ou encore Antoine Dupont, et même Kylian Mbappé s\'il venait à participer au tournoi olympique avec l\'équipe de France. Un autre critère a été retenu, celui \"d\'incarner l\'éthique et les valeurs olympiques\", a rappelé le président du CNOSF David Lappartient, excluant donc des athlètes ayant été condamnés pour des affaires de dopage ou de violences sexuelles, par exemple.', 'sport02.avif', 'sport', 0),
(66, '12.6.2024.', 'Football : l\'OM proche d\'un accord avec l\'entraîneur italien Rob', 'L\'entraineur Roberto De Zerbi lors d\'un match entre Brighton et Arsenal, à Brighton le 6 avril 2024. (GLYN KIRK / AFP)\r\n', 'L\'Olympique de Marseille a fait de l\'entraîneur italien Roberto de Zerbi une priorité pour succéder à Jean-Louis Gasset, a appris jeudi 13 juin la direction des sports de radio France, confirmant une information de RMC. Des discussions ont été entamées et un accord est espéré dans les prochaines heures, sur un contrat d\'une durée de trois saisons.\r\n\r\nL\'entraîneur de Brighton n\'était pas, à la base, dans les papiers du club olympien. La piste est jugée \"inatteignable\", estime une source proche du dossier. Mais Roberto De Zerbi a signifié son envie de travailler avec Marseille. Le technicien de 45 ans est sous contrat avec le club anglais jusqu\'en 2026. \r\n\r\nLa piste menant au Portugais Sergio Conceição semble avoir été finalement abandonnée par les instances de l\'OM. Le club discute avec l\'ancien entraineur du FC Porto depuis plusieurs semaines. Mais faute d\'accord trouvé rapidement, les dirigeants marseillais ont préféré opter pour Roberto De Zerbi.', 'sport03.avif', 'sport', 0),
(67, '12.6.2024.', 'Paris 2024 : le monde de la recherche au soutien du sport paraly', 'La para-athlète Alexandra Nouchet, recordwoman de France du 100 mètres et du saut en longueur, lors d\'une session d\'entraînement à l\'Insep, le 7 février 2023. (DIDIER ECHELARD / FFH)', '\"Il faut viser une place dans le top 8 et, pour cela, doubler le nombre de médailles d\'or par rapport à Tokyo [11 au Japon].\" Mi-mai, sur franceinfo: sport, la présidente du Comité paralympique et sportif français (CPSF), Marie-Amélie Le Fur, précisait les attentes concernant la délégation tricolore qui sera présente cet été à Paris lors des Jeux paralympiques (28 août au 8 septembre). \r\n\r\nPour tâcher d\'accompagner cette hausse des objectifs et la progression vers la haute performance des sportifs et sportives en situation de handicap, plusieurs leviers ont été activés en amont de l\'événement, notamment du côté de la recherche. Coordonné par l\'Insep (Institut national du sport, de l\'expertise et de la performance) et regroupant 38 chercheurs de plusieurs laboratoires, un projet intitulé \"Paraperf\" a vu le jour. Celui-ci doit permettre d\'investir le champ d\'étude sur 13 des 22 sports paralympiques au programme des Jeux de Paris.', 'sport04.avif', 'sport', 0),
(68, '12.6.2024.', 'REPORTAGE. Fermeture de l\'UGC Normandie sur les Champs-Elysées à', 'La façade de l\'UGC Normandie, à Paris, le 12 juin 2024. (FG/FRANCEINFO)', 'Louis, 16 ans, était là. En dépit de sa jambe cassée au foot et de ses deux béquilles, l\'adolescent est venu assister mercredi 12 juin 2024, à la dernière séance ciné de l\'UGC Normandie, salle de cinéma nonagénaire située sur la prestigieuse avenue des Champs-Elysées, à Paris. L\'adolescent est venu voir La La Land de Damien Chazelle avec Ryan Gosling et Emma Stone, un film qu\'il \"adore\".\r\n\r\n\"C\'est la dernière séance d\'un cinéma, un endroit mythique. Personnellement, je ne l\'ai pas tant vécu. Mais mes parents m\'ont raconté l\'histoire de cet endroit. (Ils) ont vécu plein de moments ici. Nous sommes venus plusieurs fois ensemble. C\'est plein de souvenirs\", confie l\'adolescent à Franceinfo Culture à la sortie d\'une séance dont la fin était prévue pour 22h45. Pourtant, beaucoup de ceux qui y ont assisté sont restés encore quelques minutes devant la salle, le regard vague et nostalgique. Certains en ont profité pour prendre la pose, histoire de graver le moment sur une pellicule.', 'kultura01.avif', 'kultura', 0),
(69, '12.6.2024.', 'Au Festival d\'Annecy, de jeunes talents du monde entier espèrent', 'Le Marché international du film d\'animation (MIFA) existe depuis 1985. (ANNECY FESTIVAL)', 'Une trentenaire qui vole la bague de fiançailles achetée par son petit ami pour ne pas avoir à refuser sa demande en mariage, un garçon qui offre tout son amour à un œuf, un personnage mythologique qui incarne la culpabilité d’un jeune enfant… Ces personnages ont en commun d’être les protagonistes de courts-métrages qui n’ont pas encore été réalisés. Ce mercredi 12 juin, à l’occasion du Marché international du film d’animation qui se tient dans le cadre du Festival d\'Annecy (du 9 au 15 juin), leurs créateurs les présentent devant un large public de festivaliers et de professionnels. Leur objectif : obtenir des financements pour que leurs personnages s’animent. \r\n\r\nOrganisées depuis un peu plus de vingt ans, ces séances de pitchs sont un incontournable du Festival. “Le MIFA n’est pas un marché au sens strict. Comme dans les autres événements, il y a de l’achat et de la vente, mais c’est aussi un marché de coproduction. Les gens viennent pour voir les nouvelles tendances, pour repérer les projets. C’est avant tout un lieu de rencontre, les pitchs font partie de cet objectif-là”, explique Véronique Encrenaz, directrice du Marché international du film d’animation. \r\n\r\nPour l’édition 2024, 41 projets ont été sélectionnés par un comité parmi plus de 700 candidatures. Ces projets se répartissent en quatre catégories – longs-métrages, courts-métrages, expériences numériques, séries & spéciaux TV –, et viennent cette année de 22 pays. Les talents disposent de dix minutes montre en main pour évoquer leur projet, du scénario à la musique en passant par le budget estimé et les techniques utilisées. À la clef : des financements mais aussi des prix permettant de remporter des résidences ou des promesses de diffusion.', 'kultura02.avif', 'kultura', 0),
(70, '13.6.2024.', '\"Ce qui m\'importe, c\'est le style et la présence des images\" : e', 'Le photographe Fifou et les deux premiers ouvrages parus chez sa maison d\'édition En Pire, \"Lost Films\" et \"New Gen\". (FIFOU / EN PIRE', 'Il y a deux ans, le photographe star du rap français sortait un beau livre épais, Fifou Archives, dans lequel il présentait l’essentiel de son travail des dernières années. Des pochettes de disques, essentiellement, de toute la crème du rap hexagonal, de Youssoupha à Gazo, PNL, Booba, Niska, Ninho, Hatik, Soprano, SCH, Dinos ou Bigflo & Oli. Depuis, cet hyperactif n’a en rien ralenti le beat. Alors qu’il atteint quarante ans, ses désirs d’avancer, d’innover et de transmettre se font plus prégnants encore. Fort du succès de son premier ouvrage paru chez Clique, Fabrice Fournier, alias Fifou, vient de fonder une maison d’édition, En Pire.\r\n\r\nObjectif : éditer de beaux livres de photographie autour de la culture urbaine et mettre en valeur de nouveaux talents. Deux livres viennent de paraître. Le premier, Lost Films, est un recueil de ses photos réalisées à l’argentique, conçu comme un carnet de voyages. Le second est un mook (entre le magazine et le livre) dans lequel il présente 25 artistes visuels (photographes, graphistes, directrices et directeurs artistiques) dont le travail lui a tapé dans l’œil.\r\n\r\nUne sélection de ces photos est actuellement exposée à la librairie La Hune Yellow Corner à Paris (Saint-Germain des Prés), où Fifou est en résidence jusqu’au 21 juin. Au début du mois, il proposait par ailleurs une masterclasse dans son studio. Parce qu’il s’ennuie vite et aime tenter de nouvelles choses, cet hyperactif s’essaye avec succès à la publicité et rêve de mettre un pied dans la mode. En parallèle, il travaille à un film d’animation pour enfants. Nous lui avons parlé.', 'kultura03.avif', 'kultura', 0),
(71, '13.6.2024.', '\"C\'est un moyen d\'expression d\'une richesse infinie\" : au Festiv', 'Jean-François Laguionie lors de l\'éditio 2024 du Festival international du film d\'animation d\'Annecy. (ANNECY FESTIVAL)\r\n', 'Annecy, le 12 juin. \"Vous savez, je ne suis plus un habitué de ce genre de conversations, pendant les huit ans de travail sur mon film, je n\'ai pas donné d\'interview, je suis en territoire de non-connaissance !\" Dans le café d\'un hôtel à quelques pas du lac, Jean-François Laguionie met en garde, mais prend plaisir à l\'exercice.\r\n\r\nÂgé de 84 ans, lauréat de nombreux prix parmi lesquels la Palme d\'or du court-métrage pour La traversée de l\'Atlantique à la rame (1978), le réalisateur compte parmi les figures majeures du cinéma d\'animation français. Il présente cette année Slocum et moi en compétition officielle au Festival d\'Annecy, un film tendre sur l\'enfance et la famille. Une ode au voyage aussi, aux traversées immobiles.\r\n\r\nFranceinfo Culture : Dans \"Slocum et moi\" vous évoquez quelques années de votre enfance marquées par un projet de votre père. Pourquoi avoir voulu raconter ce souvenir ?\r\nJean-François Laguionie : C’est assez mystérieux. J’ai réalisé beaucoup de films et je me suis rendu compte que depuis 60 ans, j’avais toujours soit un film en tête, soit en fabrication. Je me demandais d’où venaient cette imagination et ces idées qui, pour beaucoup, sont liées à la mer. De temps en temps, je pensais à mon enfance, aux vacances au bord de l’eau. Mais ces séjours ne me semblaient pas être une réponse suffisante. Je me suis souvenu d’une période de mon enfance où mon père s’était lancé dans une fabrication très étrange puisqu’on habitait en banlieue parisienne, qu’on avait un tout petit jardin. Aussi surprenant que ça puisse paraître, il s’est mis à construire un bateau, la réplique du voilier du célèbre Joshua Slocum. Raconter ce souvenir était pour moi une manière de rendre hommage à mes parents, mais aussi d\'éclairer une partie de mon enfance. J’étais fils unique, très heureux, libre, mais très solitaire', 'kultura04.avif', 'kultura', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `korisnicko_ime` (`korisnicko_ime`);

--
-- Indexes for table `vijesti`
--
ALTER TABLE `vijesti`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vijesti`
--
ALTER TABLE `vijesti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
