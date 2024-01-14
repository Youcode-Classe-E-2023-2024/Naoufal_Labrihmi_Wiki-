-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 14 jan. 2024 à 21:04
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `ads`
--

CREATE TABLE `ads` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` text NOT NULL,
  `image` text NOT NULL,
  `start_at` int(11) NOT NULL,
  `end_at` int(11) NOT NULL,
  `page` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `ads`
--

INSERT INTO `ads` (`id`, `name`, `link`, `image`, `start_at`, `end_at`, `page`, `status`, `created`) VALUES
(5, 'Wallpapers', 'wlp.com', '9839633015ea3d5ff4f261ee110f117b7f408a49_f243e24924c2cf671b9dfd6c0c85f2855132342a.jpg', 1705183200, 1705701600, '/post/:text/:id', 'enabled', 1705256914);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `status`) VALUES
(6, 0, 'Sport', 'enabled'),
(7, 0, 'Politics', 'enabled'),
(8, 0, 'Fashion', 'enabled'),
(11, 0, 'WWE', 'enabled'),
(15, 0, 'Anime', 'enabled'),
(16, 0, 'Nature', 'enabled');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created`, `status`) VALUES
(1, 1, 2, 'fdasfads', 0, ''),
(2, 1, 1, 'fdasfasdfas', 0, ''),
(3, 1, 3, 'fdsafadsfs', 0, ''),
(4, 1, 3, 'fdsfadfsdf', 0, ''),
(5, 1, 10, 'Hello World 2', 1476168503, 'enabled'),
(6, 1, 10, 'Hello World', 1476168540, 'enabled'),
(7, 1, 10, 'Welcome Back', 1476168584, 'enabled'),
(8, 1, 10, 'Hashed ?', 1476168619, 'enabled'),
(9, 1, 9, 'Thanks', 1476168737, 'enabled'),
(10, 1, 9, 'Again', 1476168740, 'enabled'),
(11, 5, 2, 'nice', 1704540569, 'enabled'),
(12, 1, 12, 'great', 1704987708, 'enabled');

-- --------------------------------------------------------

--
-- Structure de la table `online_users`
--

CREATE TABLE `online_users` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `views` int(11) NOT NULL,
  `created` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `details`, `image`, `views`, `created`, `status`) VALUES
(33, 15, 1, 'L&#039;Attaque des Titans', '&lt;p&gt;&lt;em&gt;&lt;strong&gt;&amp;#39;Attaque des Titans&lt;/strong&gt;&lt;/em&gt;&amp;nbsp;(進撃の巨人,&amp;nbsp;&lt;em&gt;Shingeki no Kyojin&lt;/em&gt;&lt;sup&gt;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Aide:Japonais&quot; title=&quot;Aide:Japonais&quot;&gt;?&lt;/a&gt;&lt;/sup&gt;,&amp;nbsp;litt.&amp;nbsp;&lt;em&gt;Le G&amp;eacute;ant assaillant&lt;/em&gt;, souvent abr&amp;eacute;g&amp;eacute;&amp;nbsp;&lt;em&gt;SnK&lt;/em&gt;), aussi connu sous le titre am&amp;eacute;ricain&amp;nbsp;&lt;em&gt;&lt;strong&gt;Attack on Titan&lt;/strong&gt;&lt;/em&gt;, est un&amp;nbsp;&lt;em&gt;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Sh%C5%8Dnen&quot; title=&quot;Shōnen&quot;&gt;shōnen&lt;/a&gt;&lt;/em&gt;&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Manga&quot; title=&quot;Manga&quot;&gt;manga&lt;/a&gt;&amp;nbsp;&amp;eacute;crit et dessin&amp;eacute; par&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Hajime_Isayama&quot; title=&quot;Hajime Isayama&quot;&gt;Hajime Isayama&lt;/a&gt;. Il est&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Pr%C3%A9publication&quot; title=&quot;Prépublication&quot;&gt;pr&amp;eacute;publi&amp;eacute;&lt;/a&gt;&amp;nbsp;entre&amp;nbsp;septembre 2009&amp;nbsp;et&amp;nbsp;avril 2021&amp;nbsp;dans le magazine&amp;nbsp;&lt;em&gt;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Bessatsu_Sh%C5%8Dnen_Magazine&quot; title=&quot;Bessatsu Shōnen Magazine&quot;&gt;Bessatsu Shōnen Magazine&lt;/a&gt;&lt;/em&gt;&amp;nbsp;puis compil&amp;eacute; en trente-quatre&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Tank%C5%8Dbon&quot; title=&quot;Tankōbon&quot;&gt;volumes reli&amp;eacute;s&lt;/a&gt;&amp;nbsp;par l&amp;rsquo;&amp;eacute;diteur&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/wiki/K%C5%8Ddansha&quot; title=&quot;Kōdansha&quot;&gt;Kōdansha&lt;/a&gt;. La version fran&amp;ccedil;aise est publi&amp;eacute;e en int&amp;eacute;gralit&amp;eacute; par&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Pika_%C3%89dition&quot; title=&quot;Pika Édition&quot;&gt;Pika &amp;Eacute;dition&lt;/a&gt;&amp;nbsp;dans la collection&amp;nbsp;&lt;em&gt;seinen&lt;/em&gt;&amp;nbsp;entre&amp;nbsp;juin 2013&amp;nbsp;et&amp;nbsp;octobre 2021.&lt;/p&gt;\r\n\r\n&lt;p&gt;L&amp;rsquo;histoire tourne autour du personnage d&amp;rsquo;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Eren_J%C3%A4ger&quot; title=&quot;Eren Jäger&quot;&gt;Eren J&amp;auml;ger&lt;/a&gt;&amp;nbsp;dans un monde o&amp;ugrave; l&amp;rsquo;humanit&amp;eacute; vit entour&amp;eacute;e d&amp;rsquo;immenses murs pour se prot&amp;eacute;ger de cr&amp;eacute;atures gigantesques, les Titans. Le r&amp;eacute;cit raconte le combat men&amp;eacute; par l&amp;rsquo;humanit&amp;eacute; pour reconqu&amp;eacute;rir son territoire, en &amp;eacute;claircissant les myst&amp;egrave;res li&amp;eacute;s &amp;agrave; l&amp;rsquo;apparition des&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Titan_(mythologie)&quot; title=&quot;Titan (mythologie)&quot;&gt;Titans&lt;/a&gt;, du monde ext&amp;eacute;rieur et des &amp;eacute;v&amp;egrave;nements pr&amp;eacute;c&amp;eacute;dant la construction des murs.&lt;/p&gt;\r\n\r\n&lt;p&gt;Une adaptation en&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Anime&quot; title=&quot;Anime&quot;&gt;s&amp;eacute;rie t&amp;eacute;l&amp;eacute;vis&amp;eacute;e d&amp;rsquo;animation&lt;/a&gt;&amp;nbsp;de vingt-cinq &amp;eacute;pisodes produite par&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Wit_Studio&quot; title=&quot;Wit Studio&quot;&gt;Wit Studio&lt;/a&gt;&amp;nbsp;est diffus&amp;eacute;e initialement entre avril et&amp;nbsp;septembre 2013&amp;nbsp;sur la cha&amp;icirc;ne&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Mainichi_Broadcasting_System&quot; title=&quot;Mainichi Broadcasting System&quot;&gt;MBS&lt;/a&gt;&amp;nbsp;au&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Japon&quot; title=&quot;Japon&quot;&gt;Japon&lt;/a&gt;. Une deuxi&amp;egrave;me saison de douze &amp;eacute;pisodes est diffus&amp;eacute;e entre avril et&amp;nbsp;juin 2017. Une troisi&amp;egrave;me saison de vingt-deux &amp;eacute;pisodes, divis&amp;eacute;e en deux parties, est diffus&amp;eacute;e entre&amp;nbsp;juillet 2018&amp;nbsp;et&amp;nbsp;juillet 2019&amp;nbsp;sur&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/wiki/NHK_General_TV&quot; title=&quot;NHK General TV&quot;&gt;NHK General TV&lt;/a&gt;. Une quatri&amp;egrave;me et derni&amp;egrave;re saison, divis&amp;eacute;e en trois parties, est produite par&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/wiki/MAPPA&quot; title=&quot;MAPPA&quot;&gt;MAPPA&lt;/a&gt;&amp;nbsp;et diffus&amp;eacute;e de&amp;nbsp;d&amp;eacute;cembre 2020&amp;nbsp;&amp;agrave;&amp;nbsp;mars 2021&amp;nbsp;sur NHK General TV pour la premi&amp;egrave;re partie, de&amp;nbsp;janvier&amp;nbsp;&amp;agrave;&amp;nbsp;avril 2022&amp;nbsp;pour la deuxi&amp;egrave;me partie, et la troisi&amp;egrave;me partie compos&amp;eacute;e de deux &amp;eacute;pisodes sp&amp;eacute;ciaux est diffus&amp;eacute;e entre&amp;nbsp;mars&amp;nbsp;et&amp;nbsp;novembre 2023. La version originale sous-titr&amp;eacute;e en fran&amp;ccedil;ais est initialement diffus&amp;eacute;e et distribu&amp;eacute;e en simultan&amp;eacute; par&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Wakanim&quot; title=&quot;Wakanim&quot;&gt;Wakanim&lt;/a&gt;&amp;nbsp;puis&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Crunchyroll&quot; title=&quot;Crunchyroll&quot;&gt;Crunchyroll&lt;/a&gt;&amp;nbsp;en&amp;nbsp;&lt;em&gt;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Streaming&quot; title=&quot;Streaming&quot;&gt;streaming&lt;/a&gt;&lt;/em&gt;&amp;nbsp;et&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/wiki/T%C3%A9l%C3%A9chargement&quot; title=&quot;Téléchargement&quot;&gt;t&amp;eacute;l&amp;eacute;chargement&lt;/a&gt;&amp;nbsp;l&amp;eacute;gal, puis &amp;eacute;dit&amp;eacute;e par&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/wiki/@Anime&quot; title=&quot;@Anime&quot;&gt;@Anime&lt;/a&gt;&amp;nbsp;en&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/wiki/DVD&quot; title=&quot;DVD&quot;&gt;DVD&lt;/a&gt;&amp;nbsp;et&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Disque_Blu-ray&quot; title=&quot;Disque Blu-ray&quot;&gt;Blu-ray&lt;/a&gt;. Des&amp;nbsp;&lt;em&gt;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Original_video_animation&quot; title=&quot;Original video animation&quot;&gt;original video animation&lt;/a&gt;&lt;/em&gt;&amp;nbsp;sont commercialis&amp;eacute;s au format DVD avec des &amp;eacute;ditions limit&amp;eacute;es du manga, et un&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Film_live&quot; title=&quot;Film live&quot;&gt;film live&lt;/a&gt;&amp;nbsp;en deux parties est diffus&amp;eacute; lors de l&amp;rsquo;&amp;eacute;t&amp;eacute; 2015. Des adaptations en&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Jeu_vid%C3%A9o&quot; title=&quot;Jeu vidéo&quot;&gt;jeux vid&amp;eacute;o&lt;/a&gt;,&amp;nbsp;&lt;em&gt;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Light_novel&quot; title=&quot;Light novel&quot;&gt;light novels&lt;/a&gt;&lt;/em&gt;&amp;nbsp;et&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/wiki/S%C3%A9rie_d%C3%A9riv%C3%A9e&quot; title=&quot;Série dérivée&quot;&gt;s&amp;eacute;ries d&amp;eacute;riv&amp;eacute;es&lt;/a&gt;&amp;nbsp;ont &amp;eacute;galement vu le jour.&lt;/p&gt;', '74e0073ab39ce88c48efd61b06fe1649db41241f_0d492c3d8ac79f13d496bd825eceb481490607fb.jpg', 0, 1705255127, 'enabled'),
(34, 16, 1, 'Nature (philosophie)', '&lt;p&gt;La nature peut &amp;ecirc;tre d&amp;eacute;finie comme la part du r&amp;eacute;el qui&amp;nbsp;&amp;laquo;&amp;nbsp;est par elle-m&amp;ecirc;me&amp;nbsp;&amp;raquo;, c&amp;#39;est-&amp;agrave;-dire, qui na&amp;icirc;t, est et subsiste sans intervention d&amp;#39;une volont&amp;eacute; ou d&amp;#39;une activit&amp;eacute; humaine. Elle s&amp;#39;oppose alors &amp;agrave; l&amp;#39;artificiel, ce qui est fait par l&amp;#39;art (humain). Cette d&amp;eacute;finition recoupe en partie celle d&amp;#39;Aristote, qui distinguait l&amp;#39;art de l&amp;#39;artifice (cependant pour Aristote une toile d&amp;#39;araign&amp;eacute;e est aussi&amp;nbsp;&amp;laquo;&amp;nbsp;artificielle&amp;nbsp;&amp;raquo;). On la retrouve dans la philosophie romantique, notamment chez&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Jean-Jacques_Rousseau&quot; title=&quot;Jean-Jacques Rousseau&quot;&gt;Rousseau&lt;/a&gt;&amp;nbsp;et&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Karl_Marx&quot; title=&quot;Karl Marx&quot;&gt;Marx&lt;/a&gt;.&lt;/p&gt;\r\n\r\n&lt;p&gt;Cette d&amp;eacute;finition a connu une grande post&amp;eacute;rit&amp;eacute;, car elle fonde ce qui a &amp;eacute;t&amp;eacute; consid&amp;eacute;r&amp;eacute; comme un dualisme entre la nature et la culture (voir&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/w/index.php?title=Dualisme_nature-culture&amp;amp;action=edit&amp;amp;redlink=1&quot; title=&quot;Dualisme nature-culture (page inexistante)&quot;&gt;Dualisme nature-culture&lt;/a&gt;&amp;nbsp;&lt;a href=&quot;https://en.wikipedia.org/wiki/Nature%E2%80%93culture_divide&quot; title=&quot;en:Nature–culture divide&quot;&gt;(en)&lt;/a&gt;). Ce dualisme, qui a aussi &amp;eacute;t&amp;eacute; surnomm&amp;eacute; le&amp;nbsp;&amp;laquo;&amp;nbsp;grand partage&amp;nbsp;&amp;raquo;&amp;nbsp;par&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Philippe_Descola&quot; title=&quot;Philippe Descola&quot;&gt;Philippe Descola&lt;/a&gt;, oppose d&amp;#39;un c&amp;ocirc;t&amp;eacute; la nature (sans intention, sans artifice, autonome) &amp;agrave; la culture (intentionnelle, artificielle). La &amp;laquo;&amp;nbsp;nature&amp;nbsp;&amp;raquo; est alors ce qui ne subit pas la mise en forme d&amp;#39;une finalit&amp;eacute; humaine&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Technique&quot; title=&quot;Technique&quot;&gt;technique&lt;/a&gt;. C&amp;#39;est dans cette optique qu&amp;#39;existent certains produits qualifi&amp;eacute;s de &amp;laquo;&amp;nbsp;naturels&amp;nbsp;&amp;raquo; (ou biologiques), leur production n&amp;#39;ayant pas n&amp;eacute;cessit&amp;eacute; de produits &amp;laquo;&amp;nbsp;invent&amp;eacute;s&amp;nbsp;&amp;raquo; par l&amp;#39;homme (par exemple un aliment sera dit &amp;laquo;&amp;nbsp;naturel&amp;nbsp;&amp;raquo; lorsqu&amp;#39;il ne contiendra aucun adjuvant de synth&amp;egrave;se). Cette distinction sous-entend une s&amp;eacute;paration entre l&amp;#39;homme et la nature sur le crit&amp;egrave;re de l&amp;#39;intention (sens moral).&lt;/p&gt;', '7b5afe79b15685ab65961ea3a620c4ed8f7cf40c_186014d05911dffeb3e4755944d092840727d6ec.jpg', 0, 1705255426, 'enabled'),
(35, 6, 11, 'Santé', '&lt;p&gt;La&amp;nbsp;&lt;strong&gt;sant&amp;eacute;&lt;/strong&gt;&amp;nbsp;est&amp;nbsp;&amp;laquo;&amp;nbsp;un &amp;eacute;tat de complet&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Bien-%C3%AAtre&quot; title=&quot;Bien-être&quot;&gt;bien-&amp;ecirc;tre&lt;/a&gt;&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Physique&quot; title=&quot;Physique&quot;&gt;physique&lt;/a&gt;,&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Psychologie&quot; title=&quot;Psychologie&quot;&gt;mental&lt;/a&gt;&amp;nbsp;et&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Sociologie&quot; title=&quot;Sociologie&quot;&gt;social&lt;/a&gt;, et ne consiste pas seulement en une absence de&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Maladie&quot; title=&quot;Maladie&quot;&gt;maladie&lt;/a&gt;&amp;nbsp;ou d&amp;#39;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Handicap&quot; title=&quot;Handicap&quot;&gt;infirmit&amp;eacute;&lt;/a&gt;&amp;nbsp;&amp;raquo;. Dans cette d&amp;eacute;finition par l&amp;#39;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Organisation_mondiale_de_la_sant%C3%A9&quot; title=&quot;Organisation mondiale de la santé&quot;&gt;Organisation mondiale de la sant&amp;eacute;&lt;/a&gt;, OMS, depuis 1946, la sant&amp;eacute; repr&amp;eacute;sente&amp;nbsp;&amp;laquo;&amp;nbsp;l&amp;rsquo;un des&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Libert%C3%A9s_fondamentales&quot; title=&quot;Libertés fondamentales&quot;&gt;droits fondamentaux&lt;/a&gt;&amp;nbsp;de tout &amp;ecirc;tre humain, quelles que soient sa&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Race_humaine&quot; title=&quot;Race humaine&quot;&gt;race&lt;/a&gt;, sa&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Religion&quot; title=&quot;Religion&quot;&gt;religion&lt;/a&gt;, ses opinions politiques, sa condition &amp;eacute;conomique ou&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Statut_social&quot; title=&quot;Statut social&quot;&gt;sociale&lt;/a&gt;&amp;nbsp;&amp;raquo;&lt;sup&gt;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Sant%C3%A9#cite_note-0MS1-1&quot;&gt;1&lt;/a&gt;&lt;/sup&gt;&lt;sup&gt;,&lt;/sup&gt;&lt;sup&gt;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Sant%C3%A9#cite_note-2&quot; title=&quot;&quot;&gt;Note 1&lt;/a&gt;&lt;/sup&gt;. Elle implique la satisfaction de tous les&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Besoins_humains_fondamentaux&quot; title=&quot;Besoins humains fondamentaux&quot;&gt;besoins fondamentaux&lt;/a&gt;&amp;nbsp;de la personne, qu&amp;#39;ils soient&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Affection&quot; title=&quot;Affection&quot;&gt;affectifs&lt;/a&gt;,&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/wiki/S%C3%A9curit%C3%A9_sanitaire&quot; title=&quot;Sécurité sanitaire&quot;&gt;sanitaires&lt;/a&gt;,&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Alimentation_humaine&quot; title=&quot;Alimentation humaine&quot;&gt;nutritionnels&lt;/a&gt;, sociaux ou culturels&lt;sup&gt;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Sant%C3%A9#cite_note-3&quot;&gt;2&lt;/a&gt;&lt;/sup&gt;. Mais cette d&amp;eacute;finition confond les notions de sant&amp;eacute; et de&amp;nbsp;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Bien-%C3%AAtre&quot; title=&quot;Bien-être&quot;&gt;bien-&amp;ecirc;tre&lt;/a&gt;&lt;sup&gt;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Sant%C3%A9#cite_note-GW-4&quot;&gt;3&lt;/a&gt;&lt;/sup&gt;.&lt;/p&gt;\r\n\r\n&lt;p&gt;Par ailleurs,&amp;nbsp;&amp;laquo;&amp;nbsp;la sant&amp;eacute; r&amp;eacute;sulte d&amp;rsquo;une interaction constante entre l&amp;rsquo;individu et son milieu&amp;nbsp;&amp;raquo;&amp;nbsp;et repr&amp;eacute;sente donc&amp;nbsp;&amp;laquo;&amp;nbsp;cette &amp;laquo;&amp;nbsp;capacit&amp;eacute; physique, psychique et sociale des personnes d&amp;rsquo;agir dans leur milieu et d&amp;rsquo;accomplir les r&amp;ocirc;les qu&amp;rsquo;elles entendent assumer d&amp;rsquo;une mani&amp;egrave;re acceptable pour elles-m&amp;ecirc;mes et pour les groupes dont elles font partie&amp;nbsp;&amp;raquo;&lt;sup&gt;&lt;a href=&quot;https://fr.wikipedia.org/wiki/Sant%C3%A9#cite_note-5&quot;&gt;4&lt;/a&gt;&lt;/sup&gt;.&lt;/p&gt;', '279a282fd84866a4ea676ab4534208df1362df4b_6d81f727bac408d4a8cd248ea8e9d6d96611f7db.jpg', 0, 1705255721, 'enabled');

-- --------------------------------------------------------

--
-- Structure de la table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `post_tags`
--

INSERT INTO `post_tags` (`id`, `post_id`, `tag_id`) VALUES
(51, 33, 20),
(52, 33, 19),
(53, 34, 22),
(54, 34, 19),
(57, 35, 22);

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `key` varchar(100) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(17, 'site_name', 'WIKI'),
(18, 'site_email', 'admin@my-blog.com'),
(19, 'site_status', 'enabled'),
(20, 'site_close_msg', '&lt;h1&gt;Wiki&amp;trade; : Explorez, Cr&amp;eacute;ez et Partagez des Savoirs Ensemble!&lt;/h1&gt;');

-- --------------------------------------------------------

--
-- Structure de la table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tags`
--

INSERT INTO `tags` (`id`, `name`, `status`) VALUES
(9, 'TAGS EFFECT', 'enabled'),
(19, 'Exception', 'enabled'),
(20, 'Fire', 'enabled'),
(21, 'Bug', 'enabled'),
(22, 'Nature', 'enabled');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `users_group_id` int(11) NOT NULL,
  `first_name` varchar(40) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `email` varchar(96) NOT NULL,
  `password` varchar(128) NOT NULL,
  `image` varchar(255) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `birthday` int(11) NOT NULL,
  `created` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `ip` varchar(32) NOT NULL,
  `code` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `users_group_id`, `first_name`, `last_name`, `email`, `password`, `image`, `gender`, `birthday`, `created`, `status`, `ip`, `code`) VALUES
(1, 1, 'Naoufal', 'Labrihmi', 'naoufal@gmail.com', '$2y$10$JnSQbKd.JyrMSNYZHWkqDOhcd3VTjuELk52IF/t2CONLSoJtjpAi.', '626a82321c7d12c81ee0610a590397e192ca756a_1047e2fa1b08157989d69dff2b8287572a470da0.webp', 'male', 0, 1471429381, '', '', '80a315d99d01b28e68e58c0c899bc4ce2197c524'),
(11, 2, 'lb', 'lbb', 'lb@gmail.com', '$2y$10$0vf4EFI/k03lFLsxPdunpeJ9ZQb.mMGBEZVnJDwzYIi4fAhE9FJVq', '76c9942112a1edcc768668076ff05e651ec69632_61292cf41957b6667c2b19e0537419d4f3b2ba34.webp', 'male', 0, 1705255579, '', '::1', 'c935489b84f61a380c61e0ee75bad751dfe19e9c');

-- --------------------------------------------------------

--
-- Structure de la table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `users_groups`
--

INSERT INTO `users_groups` (`id`, `name`) VALUES
(1, 'Super Administrators'),
(2, 'Users');

-- --------------------------------------------------------

--
-- Structure de la table `users_group_permissions`
--

CREATE TABLE `users_group_permissions` (
  `id` int(11) NOT NULL,
  `users_group_id` int(11) NOT NULL,
  `page` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `users_group_permissions`
--

INSERT INTO `users_group_permissions` (`id`, `users_group_id`, `page`) VALUES
(48, 0, '/admin/login'),
(49, 0, '/admin/login/submit'),
(50, 0, '/admin'),
(51, 0, '/admin/dashboard'),
(52, 0, '/admin/submit'),
(53, 0, '/admin/users'),
(54, 0, '/admin/users/add'),
(55, 0, '/admin/users/submit'),
(56, 0, '/admin/users/edit/:id'),
(57, 0, '/admin/users/save/:id'),
(58, 0, '/admin/users/delete/:id'),
(59, 0, '/admin/profile/update'),
(60, 0, '/admin/users-groups'),
(61, 0, '/admin/users-groups/add'),
(62, 0, '/admin/users-groups/submit'),
(63, 0, '/admin/users-groups/edit/:id'),
(64, 0, '/admin/users-groups/save/:id'),
(65, 0, '/admin/users-groups/delete/:id'),
(66, 0, '/admin/posts'),
(67, 0, '/admin/posts/add'),
(68, 0, '/admin/posts/submit'),
(69, 0, '/admin/posts/edit/:id'),
(70, 0, '/admin/posts/save/:id'),
(71, 0, '/admin/posts/delete/:id'),
(72, 0, '/admin/posts/:id/comments'),
(73, 0, '/admin/comments/edit/:id'),
(74, 0, '/admin/comments/save/:id'),
(75, 0, '/admin/comments/delete/:id'),
(76, 0, '/admin/categories'),
(77, 0, '/admin/categories/add'),
(78, 0, '/admin/categories/submit'),
(79, 0, '/admin/categories/edit/:id'),
(80, 0, '/admin/categories/save/:id'),
(81, 0, '/admin/categories/delete/:id'),
(82, 0, '/admin/settings'),
(83, 0, '/admin/settings/save'),
(84, 0, '/admin/contacts'),
(85, 0, '/admin/contacts/reply/:id'),
(86, 0, '/admin/contacts/send/:id'),
(87, 0, '/admin/ads'),
(88, 0, '/admin/ads/add'),
(89, 0, '/admin/ads/submit'),
(90, 0, '/admin/ads/edit/:id'),
(91, 0, '/admin/ads/save/:id'),
(92, 0, '/admin/ads/delete/:id'),
(93, 0, '/admin/logout'),
(94, 0, '/admin/login'),
(95, 0, '/admin/login/submit'),
(96, 0, '/admin'),
(97, 0, '/admin/dashboard'),
(98, 0, '/admin/submit'),
(99, 0, '/admin/users'),
(100, 0, '/admin/users/add'),
(101, 0, '/admin/users/submit'),
(102, 0, '/admin/users/edit/:id'),
(103, 0, '/admin/users/save/:id'),
(104, 0, '/admin/users/delete/:id'),
(105, 0, '/admin/profile/update'),
(106, 0, '/admin/users-groups'),
(107, 0, '/admin/users-groups/add'),
(108, 0, '/admin/users-groups/submit'),
(109, 0, '/admin/users-groups/edit/:id'),
(110, 0, '/admin/users-groups/save/:id'),
(111, 0, '/admin/users-groups/delete/:id'),
(112, 0, '/admin/posts'),
(113, 0, '/admin/posts/add'),
(114, 0, '/admin/posts/submit'),
(115, 0, '/admin/posts/edit/:id'),
(116, 0, '/admin/posts/save/:id'),
(117, 0, '/admin/posts/delete/:id'),
(118, 0, '/admin/posts/:id/comments'),
(119, 0, '/admin/comments/edit/:id'),
(120, 0, '/admin/comments/save/:id'),
(121, 0, '/admin/comments/delete/:id'),
(122, 0, '/admin/categories'),
(123, 0, '/admin/categories/add'),
(124, 0, '/admin/categories/submit'),
(125, 0, '/admin/categories/edit/:id'),
(126, 0, '/admin/categories/save/:id'),
(127, 0, '/admin/categories/delete/:id'),
(128, 0, '/admin/settings'),
(129, 0, '/admin/settings/save'),
(130, 0, '/admin/contacts'),
(131, 0, '/admin/contacts/reply/:id'),
(132, 0, '/admin/contacts/send/:id'),
(133, 0, '/admin/ads'),
(134, 0, '/admin/ads/add'),
(135, 0, '/admin/ads/submit'),
(136, 0, '/admin/ads/edit/:id'),
(137, 0, '/admin/ads/save/:id'),
(138, 0, '/admin/ads/delete/:id'),
(139, 0, '/admin/logout'),
(186, 3, '/admin/login'),
(187, 3, '/admin/login/submit'),
(188, 3, '/admin'),
(189, 3, '/admin/dashboard'),
(190, 3, '/admin/submit'),
(191, 3, '/admin/profile/update'),
(192, 3, '/admin/posts'),
(193, 3, '/admin/posts/add'),
(194, 3, '/admin/posts/submit'),
(195, 3, '/admin/posts/edit/:id'),
(196, 3, '/admin/posts/save/:id'),
(197, 3, '/admin/posts/delete/:id'),
(198, 3, '/admin/logout'),
(199, 4, '/admin/login'),
(200, 4, '/admin/login/submit'),
(201, 4, '/admin'),
(202, 4, '/admin/dashboard'),
(203, 4, '/admin/submit'),
(204, 4, '/admin/profile/update'),
(205, 4, '/admin/posts'),
(206, 4, '/admin/posts/add'),
(207, 4, '/admin/posts/submit'),
(208, 4, '/admin/posts/edit/:id'),
(209, 4, '/admin/posts/save/:id'),
(210, 4, '/admin/posts/delete/:id'),
(211, 4, '/admin/logout'),
(260, 1, '/admin/login'),
(261, 1, '/admin/login/submit'),
(262, 1, '/admin'),
(263, 1, '/admin/dashboard'),
(264, 1, '/admin/submit'),
(265, 1, '/admin/users'),
(266, 1, '/admin/users/add'),
(267, 1, '/admin/users/submit'),
(268, 1, '/admin/users/edit/:id'),
(269, 1, '/admin/users/save/:id'),
(270, 1, '/admin/users/delete/:id'),
(271, 1, '/admin/profile/update'),
(272, 1, '/admin/users-groups'),
(273, 1, '/admin/users-groups/add'),
(274, 1, '/admin/users-groups/submit'),
(275, 1, '/admin/users-groups/edit/:id'),
(276, 1, '/admin/users-groups/save/:id'),
(277, 1, '/admin/users-groups/delete/:id'),
(278, 1, '/admin/posts'),
(279, 1, '/admin/posts/add'),
(280, 1, '/admin/posts/submit'),
(281, 1, '/admin/posts/edit/:id'),
(282, 1, '/admin/posts/save/:id'),
(283, 1, '/admin/posts/delete/:id'),
(284, 1, '/admin/categories'),
(285, 1, '/admin/categories/add'),
(286, 1, '/admin/categories/submit'),
(287, 1, '/admin/categories/edit/:id'),
(288, 1, '/admin/categories/save/:id'),
(289, 1, '/admin/categories/delete/:id'),
(290, 1, '/admin/tags'),
(291, 1, '/admin/tags/add'),
(292, 1, '/admin/tags/submit'),
(293, 1, '/admin/tags/edit/:id'),
(294, 1, '/admin/tags/save/:id'),
(295, 1, '/admin/tags/delete/:id'),
(296, 1, '/admin/settings'),
(297, 1, '/admin/settings/save'),
(298, 1, '/admin/contacts'),
(299, 1, '/admin/contacts/reply/:id'),
(300, 1, '/admin/contacts/send/:id'),
(301, 1, '/admin/ads'),
(302, 1, '/admin/ads/add'),
(303, 1, '/admin/ads/submit'),
(304, 1, '/admin/ads/edit/:id'),
(305, 1, '/admin/ads/save/:id'),
(306, 1, '/admin/ads/delete/:id'),
(307, 1, '/admin/logout'),
(324, 2, '/admin/login'),
(325, 2, '/admin/login/submit'),
(326, 2, '/admin/profile/update'),
(327, 2, '/admin/posts'),
(328, 2, '/admin/posts/add'),
(329, 2, '/admin/posts/submit'),
(330, 2, '/admin/posts/edit/:id'),
(331, 2, '/admin/posts/save/:id'),
(332, 2, '/admin/posts/delete/:id'),
(333, 2, '/admin/logout');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `online_users`
--
ALTER TABLE `online_users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_post_tags_post_id` (`post_id`),
  ADD KEY `fk_post_tags_tag_id` (`tag_id`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users_group_permissions`
--
ALTER TABLE `users_group_permissions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `online_users`
--
ALTER TABLE `online_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `users_group_permissions`
--
ALTER TABLE `users_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `post_tags`
--
ALTER TABLE `post_tags`
  ADD CONSTRAINT `fk_post_tags_post_id` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_post_tags_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_tags_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `post_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`),
  ADD CONSTRAINT `post_tags_ibfk_3` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
