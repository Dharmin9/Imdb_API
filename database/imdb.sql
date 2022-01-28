-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2021 at 08:38 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `imdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add moviedetail', 7, 'add_moviedetail'),
(26, 'Can change moviedetail', 7, 'change_moviedetail'),
(27, 'Can delete moviedetail', 7, 'delete_moviedetail'),
(28, 'Can view moviedetail', 7, 'view_moviedetail'),
(29, 'Can add imdb', 7, 'add_imdb'),
(30, 'Can change imdb', 7, 'change_imdb'),
(31, 'Can delete imdb', 7, 'delete_imdb'),
(32, 'Can view imdb', 7, 'view_imdb'),
(33, 'Can add movie detail', 8, 'add_moviedetail'),
(34, 'Can change movie detail', 8, 'change_moviedetail'),
(35, 'Can delete movie detail', 8, 'delete_moviedetail'),
(36, 'Can view movie detail', 8, 'view_moviedetail');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'mdetail', 'moviedetail'),
(7, 'myapp', 'imdb'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-02-17 11:09:40.990966'),
(2, 'auth', '0001_initial', '2021-02-17 11:09:41.663619'),
(3, 'admin', '0001_initial', '2021-02-17 11:09:42.775032'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-02-17 11:09:43.127680'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-02-17 11:09:43.143683'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-02-17 11:09:43.321482'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-02-17 11:09:43.449792'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-02-17 11:09:43.489792'),
(9, 'auth', '0004_alter_user_username_opts', '2021-02-17 11:09:43.505828'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-02-17 11:09:43.617792'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-02-17 11:09:43.625793'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-02-17 11:09:43.641828'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-02-17 11:09:43.681889'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-02-17 11:09:43.705792'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-02-17 11:09:43.807504'),
(16, 'auth', '0011_update_proxy_permissions', '2021-02-17 11:09:43.823542'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-02-17 11:09:43.863503'),
(18, 'myapp', '0001_initial', '2021-02-17 11:09:43.911501'),
(19, 'sessions', '0001_initial', '2021-02-17 11:09:43.991541'),
(20, 'myapp', '0002_auto_20210218_1546', '2021-02-18 10:17:04.101243'),
(21, 'myapp', '0003_auto_20210218_1602', '2021-02-18 10:33:02.912798'),
(22, 'myapp', '0004_auto_20210218_1608', '2021-02-18 10:39:04.200433'),
(23, 'myapp', '0005_auto_20210218_1723', '2021-02-18 11:53:51.680034'),
(24, 'myapp', '0006_imdb_test', '2021-02-18 11:57:39.334535'),
(25, 'myapp', '0007_auto_20210218_2358', '2021-02-18 18:28:16.718486'),
(26, 'mdetail', '0001_initial', '2021-02-19 10:07:43.760963'),
(27, 'mdetail', '0002_auto_20210219_2315', '2021-02-19 17:45:27.772014');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `imdbmovie`
--

CREATE TABLE `imdbmovie` (
  `id` int(11) NOT NULL,
  `name` char(100) NOT NULL,
  `rating` char(10) NOT NULL,
  `release_date` char(32) NOT NULL,
  `duration` char(10) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `imdbmovie`
--

INSERT INTO `imdbmovie` (`id`, `name`, `rating`, `release_date`, `duration`, `description`) VALUES
(1, 'Life Is Beautiful', '8.6/10', '12 February 1999 (UK)', '1h 56min', 'When an open-minded Jewish librarian and his son become victims of the Holocaust, he uses a perfect mixture of will, humor, and imagination to protect his son from the dangers around their camp.'),
(2, '2001: A Space Odyssey', '8.3/10', '12 May 1968 (UK)', '2h 29min', 'After discovering a mysterious artifact buried beneath the Lunar surface, mankind sets off on a quest to find its origins with help from intelligent supercomputer H.A.L. 9000.'),
(3, 'Ben-Hur', '8.1/10', '27 March 1960 (UK)', '3h 32min', 'After a Jewish prince is betrayed and sent into slavery by a Roman friend, he regains his freedom and comes back for revenge.'),
(4, 'Psycho', '8.5/10', '15 September 1960 (UK)', '1h 49min', 'A Phoenix secretary embezzles $40,000 from her employer\'s client, goes on the run, and checks into a remote motel run by a young man under the domination of his mother.'),
(5, 'Neon Genesis Evangelion: The End of Evangelion', '8.1/10', '2005 (Germany)', '1h 27min', 'Concurrent theatrical ending of the TV series Neon Genesis Evangelion (1995).'),
(6, 'Eternal Sunshine of the Spotless Mind', '8.3/10', '30 April 2004 (UK)', '1h 48min', 'When their relationship turns sour, a couple undergoes a medical procedure to have each other erased from their memories.'),
(7, 'The Battle of Algiers', '8.1/10', '18 March 1971 (UK)', '2h 1min', 'In the 1950s, fear and violence escalate as the people of Algiers fight for independence from the French government.'),
(8, 'The Treasure of the Sierra Madre', '8.2/10', '24 January 1948 (USA)', '2h 6min', 'Two Americans searching for work in Mexico convince an old prospector to help them mine for gold in the Sierra Madre Mountains.'),
(9, 'Coco', '8.4/10', '19 January 2018 (UK)', '1h 45min', 'Aspiring musician Miguel, confronted with his family\'s ancestral ban on music, enters the Land of the Dead to find his great-great-grandfather, a legendary singer.'),
(10, 'Seven Samurai', '8.6/10', '26 April 1954 (Japan)', '3h 27min', 'A poor village under attack by bandits recruits seven unemployed samurai to help them defend themselves.'),
(11, 'Hacksaw Ridge', '8.1/10', '26 January 2017 (UK)', '2h 19min', 'World War II American Army Medic Desmond T. Doss, who served during the Battle of Okinawa, refuses to kill people, and becomes the first man in American history to receive the Medal of Honor without firing a shot.'),
(12, 'City of God', '8.6/10', '3 January 2003 (UK)', '2h 10min', 'In the slums of Rio, two kids\' paths diverge as one struggles to become a photographer and the other a kingpin.'),
(13, 'A Clockwork Orange', '8.3/10', '13 January 1972 (UK)', '2h 16min', 'In the future, a sadistic gang leader is imprisoned and volunteers for a conduct-aversion experiment, but it doesn\'t go as planned.'),
(14, 'Terminator 2: Judgment Day', '8.5/10', '16 August 1991 (UK)', '2h 17min', 'A cyborg, identical to the one who failed to kill Sarah Connor, must now protect her teenage son, John Connor, from a more advanced and powerful cyborg.'),
(15, 'Untouchable', '8.5/10', '21 September 2012 (UK)', '1h 52min', 'After he becomes a quadriplegic from a paragliding accident, an aristocrat hires a young man from the projects to be his caregiver.'),
(16, 'The Elephant Man', '8.1/10', '16 October 1980 (UK)', '2h 4min', 'A Victorian surgeon rescues a heavily disfigured man who is mistreated while scraping a living as a side-show freak. Behind his monstrous fa�ade, there is revealed a person of kindness, intelligence and sophistication.'),
(17, 'Vertigo', '8.3/10', '22 May 1958 (UK)', '2h 8min', 'A former police detective juggles wrestling with his personal demons and becoming obsessed with a hauntingly beautiful woman.'),
(18, 'Andrei Rublev', '8.1/10', '13 August 1973 (UK)', '3h 25min', 'The life, times and afflictions of the fifteenth-century Russian iconographer St. Andrei Rublev.'),
(19, 'Hamilton', '8.5/10', '3 July 2020 (UK)', '2h 40min', 'The real life of one of America\'s foremost founding fathers and first Secretary of the Treasury, Alexander Hamilton. Captured live on Broadway from the Richard Rodgers Theater with the original Broadway cast.'),
(20, 'V for Vendetta', '8.2/10', '17 March 2006 (UK)', '2h 12min', 'In a future British tyranny, a shadowy freedom fighter, known only by the alias of \"V\", plots to overthrow it with the help of a young woman.'),
(21, 'In the Name of the Father', '8.1/10', '11 February 1994 (UK)', '2h 13min', 'A man\'s coerced confession to an I.R.A. bombing he did not commit results in the imprisonment of his father as well. An English lawyer fights to free them.'),
(22, 'Amores Perros', '8.1/10', '18 May 2001 (UK)', '2h 34min', 'A horrific car accident connects three stories, each involving characters dealing with loss, regret, and life\'s harsh realities, all in the name of love.'),
(23, 'Some Like It Hot', '8.2/10', '19 March 1959 (USA)', '2h 1min', 'After two male musicians witness a mob hit, they flee the state in an all-female band disguised as women, but further complications set in.'),
(24, 'The Green Mile', '8.6/10', '3 March 2000 (UK)', '3h 9min', 'The lives of guards on Death Row are affected by one of their charges: a black man accused of child murder and rape, yet who has a mysterious gift.'),
(25, 'Yojimbo', '8.2/10', '25 April 1961 (Japan)', '1h 50min', 'A crafty ronin comes to a town divided by two criminal gangs and decides to play them against each other to free the town.'),
(26, 'Seven', '8.6/10', '5 January 1996 (UK)', '2h 7min', 'Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his motives.'),
(27, 'Reservoir Dogs', '8.3/10', '15 January 1993 (UK)', '1h 39min', 'When a simple jewelry heist goes horribly wrong, the surviving criminals begin to suspect that one of them is a police informant.'),
(28, 'Django Unchained', '8.4/10', '18 January 2013 (UK)', '2h 45min', 'With the help of a German bounty hunter, a freed slave sets out to rescue his wife from a brutal Mississippi plantation owner.'),
(29, 'Downfall', '8.2/10', '1 April 2005 (UK)', '2h 36min', 'Traudl Junge, the final secretary for Adolf Hitler, tells of the Nazi dictator\'s final days in his Berlin bunker at the end of WWII.'),
(30, 'City Lights', '8.5/10', '7 March 1931 (USA)', '1h 27min', 'With the aid of a wealthy erratic tippler, a dewy-eyed tramp who has fallen in love with a sightless flower girl accumulates money to be able to help her medically.'),
(31, 'The Wages of Fear', '8.1/10', '23 September 1955 (India)', '2h 11min', 'In a decrepit South American village, four men are hired to transport an urgent nitroglycerine shipment without the equipment that would make it safe.'),
(32, 'Unforgiven', '8.2/10', '18 September 1992 (UK)', '2h 10min', 'Retired Old West gunslinger William Munny reluctantly takes on one last job, with the help of his old partner Ned Logan and a young man, The \"Schofield Kid.\"'),
(33, 'Finding Nemo', '8.1/10', '10 October 2003 (UK)', '1h 40min', 'After his son is captured in the Great Barrier Reef and taken to Sydney, a timid clownfish sets out on a journey to bring him home.'),
(34, 'The Gold Rush', '8.2/10', '13 July 1925 (Brazil)', '1h 35min', 'A prospector goes to the Klondike in search of gold and finds it and more.'),
(35, 'Metropolis', '8.3/10', '6 February 1927 (France)', '2h 33min', 'In a futuristic city sharply divided between the working class and the city planners, the son of the city\'s mastermind falls in love with a working-class prophet who predicts the coming of a savior to mediate their differences.'),
(36, 'The Deer Hunter', '8.1/10', '28 February 1979 (UK)', '3h 3min', 'An in-depth examination of the ways in which the U.S. Vietnam War impacts and disrupts the lives of people in a small industrial town in Pennsylvania.'),
(37, 'Heat', '8.2/10', '2 February 1996 (UK)', '2h 50min', 'A group of professional bank robbers start to feel the heat from police when they unknowingly leave a clue at their latest heist.'),
(38, 'Star Wars: Episode V - The Empire Strikes Back', '8.7/10', '21 May 1980 (UK)', '2h 4min', 'After the Rebels are brutally overpowered by the Empire on the ice planet Hoth, Luke Skywalker begins Jedi training with Yoda, while his friends are pursued by Darth Vader and a bounty hunter named Boba Fett all over the galaxy.'),
(39, 'Avengers: Infinity War', '8.4/10', '26 April 2018 (UK)', '2h 29min', 'The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.'),
(40, 'Up', '8.2/10', '9 October 2009 (UK)', '1h 36min', '78-year-old Carl Fredricksen travels to Paradise Falls in his house equipped with balloons, inadvertently taking a young stowaway.'),
(41, 'Scarface', '8.3/10', '10 February 1984 (UK)', '2h 50min', 'In 1980 Miami, a determined Cuban immigrant takes over a drug cartel and succumbs to greed.'),
(42, 'My Father and My Son', '8.3/10', '18 November 2005 (Turkey)', '1h 52min', 'The family of a left-wing journalist is torn apart after the military coup of Turkey in 1980.'),
(43, 'Warrior', '8.2/10', '23 September 2011 (UK)', '2h 20min', 'The youngest son of an alcoholic former boxer returns home, where he\'s trained by his father for competition in a mixed martial arts tournament - a path that puts the fighter on a collision course with his estranged, older brother.'),
(44, 'Chinatown', '8.1/10', '9 August 1974 (UK)', '2h 10min', 'A private detective hired to expose an adulterer finds himself caught up in a web of deceit, corruption, and murder.'),
(45, 'The Great Dictator', '8.4/10', '7 March 1941 (USA)', '2h 5min', 'Dictator Adenoid Hynkel tries to expand his empire while a poor Jewish barber tries to avoid persecution from Hynkel\'s regime.'),
(46, 'Citizen Kane', '8.3/10', '24 January 1942 (UK)', '1h 59min', 'Following the death of publishing tycoon Charles Foster Kane, reporters scramble to uncover the meaning of his final utterance; \'Rosebud\'.'),
(47, 'Rocky', '8.1/10', '7 January 1977 (UK)', '2h', 'A small-time boxer gets a supremely rare chance to fight a heavyweight champion in a bout in which he strives to go the distance for his self-respect.'),
(48, 'Full Metal Jacket', '8.3/10', '11 September 1987 (UK)', '1h 56min', 'A pragmatic U.S. Marine observes the dehumanizing effects the Vietnam War has on his fellow recruits from their brutal boot camp training to the bloody street fighting in Hue.'),
(49, 'Judgment at Nuremberg', '8.2/10', '19 December 1961 (UK)', '2h 59min', 'In 1948, an American court in occupied Germany tries four Nazis judged for war crimes.'),
(50, 'Bicycle Thieves', '8.3/10', '24 November 1948 (Italy)', '1h 29min', 'In post-war Italy, a working-class man\'s bicycle is stolen. He and his son set out to find it.'),
(51, 'Hachi: A Dog\'s Tale', '8.1/10', '12 March 2010 (UK)', '1h 33min', 'A college professor bonds with an abandoned dog he takes into his home.'),
(52, 'Kill Bill: Vol. 1', '8.1/10', '17 October 2003 (UK)', '1h 51min', 'After awakening from a four-year coma, a former assassin wreaks vengeance on the team of assassins who betrayed her.'),
(53, 'For a Few Dollars More', '8.2/10', '5 October 1967 (UK)', '2h 12min', 'Two bounty hunters with the same intentions team up to track down a Western outlaw.'),
(54, 'Indiana Jones and the Last Crusade', '8.2/10', '30 June 1989 (UK)', '2h 7min', 'In 1938, after his father Professor Henry Jones, Sr. goes missing while pursuing the Holy Grail, Professor Henry \"Indiana\" Jones, Jr. finds himself up against Adolf Hitler\'s Nazis again to stop them from obtaining its powers.'),
(55, '3 Idiots', '8.4/10', '24 December 2009 (UK)', '2h 50min', 'Two friends are searching for their long lost companion. They revisit their college days and recall the memories of their friend who inspired them to think differently, even as the rest of the world called them \"idiots\".'),
(56, 'Gone with the Wind', '8.1/10', '8 July 2020 (India)', '3h 58min', 'A manipulative woman and a roguish man conduct a turbulent romance during the American Civil War and Reconstruction periods.'),
(57, 'One Flew Over the Cuckoo\'s Nest', '8.7/10', '26 February 1976 (UK)', '2h 13min', 'A criminal pleads insanity and is admitted to a mental institution, where he rebels against the oppressive nurse and rallies up the scared patients.'),
(58, 'Star Wars: Episode IV - A New Hope', '8.6/10', '29 January 1978 (UK)', '2h 1min', 'Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire\'s world-destroying battle station, while also attempting to rescue Princess Leia from the mysterious Darth Vader.'),
(59, 'Lock, Stock and Two Smoking Barrels', '8.2/10', '28 August 1998 (UK)', '1h 47min', 'Eddy persuades his three pals to pool money for a vital poker game against a powerful local mobster, Hatchet Harry. Eddy loses, after which Harry gives him a week to pay back 500,000 pounds.'),
(60, 'Come and See', '8.3/10', '17 October 1985 (Hungary)', '2h 22min', 'After finding an old rifle, a young boy joins the Soviet resistance movement against ruthless German forces and experiences the horrors of World War II.'),
(61, 'Catch Me If You Can', '8.1/10', '31 January 2003 (UK)', '2h 21min', 'Barely 21 yet, Frank is a skilled forger who has passed as a doctor, lawyer and pilot. FBI agent Carl becomes obsessed with tracking down the con man, who only revels in the pursuit.'),
(62, 'Back to the Future', '8.5/10', '4 December 1985 (UK)', '1h 56min', 'Marty McFly, a 17-year-old high school student, is accidentally sent thirty years into the past in a time-traveling DeLorean invented by his close friend, the eccentric scientist Doc Brown.'),
(63, 'Cinema Paradiso', '8.5/10', '23 February 1990 (UK)', '2h 35min', 'A filmmaker recalls his childhood when falling in love with the pictures at the cinema of his home village and forms a deep friendship with the cinema\'s projectionist.'),
(64, 'The Big Lebowski', '8.1/10', '24 April 1998 (UK)', '1h 57min', 'Jeff \"The Dude\" Lebowski, mistaken for a millionaire of the same name, seeks restitution for his ruined rug and enlists his bowling buddies to help get it.'),
(65, 'Goodfellas', '8.7/10', '26 October 1990 (UK)', '2h 26min', 'The story of Henry Hill and his life in the mob, covering his relationship with his wife Karen Hill and his mob partners Jimmy Conway and Tommy DeVito in the Italian-American crime syndicate.'),
(66, 'Double Indemnity', '8.3/10', '15 September 1944 (UK)', '1h 47min', 'An insurance representative lets himself be talked by a seductive housewife into a murder/insurance fraud scheme that arouses the suspicion of an insurance investigator.'),
(67, 'Drishyam', '8.2/10', '31 July 2015 (UK)', '2h 43min', 'Desperate measures are taken by a man who tries to save his family from the dark side of the law, after they commit an unexpected crime.'),
(68, 'The Prestige', '8.5/10', '10 November 2006 (UK)', '2h 10min', 'After a tragic accident, two stage magicians engage in a battle to create the ultimate illusion while sacrificing everything they have to outwit each other.'),
(69, 'Toy Story 3', '8.2/10', '19 July 2010 (UK)', '1h 43min', 'The toys are mistakenly delivered to a day-care center instead of the attic right before Andy leaves for college, and it\'s up to Woody to convince the other toys that they weren\'t abandoned and to return home.'),
(70, 'Inglourious Basterds', '8.3/10', '19 August 2009 (UK)', '2h 33min', 'In Nazi-occupied France during World War II, a plan to assassinate Nazi leaders by a group of Jewish U.S. soldiers coincides with a theatre owner\'s vengeful plans for the same.'),
(71, 'Witness for the Prosecution', '8.4/10', '6 February 1958 (USA)', '1h 56min', 'A veteran British barrister must defend his client in a murder trial that has surprise after surprise.'),
(72, 'Barry Lyndon', '8.1/10', '18 December 1975 (UK)', '3h 5min', 'An Irish rogue wins the heart of a rich widow and assumes her dead husband\'s aristocratic position in 18th-century England.'),
(73, 'The Kid', '8.3/10', 'March 1921 (UK)', '1h 8min', 'The Tramp cares for an abandoned child, but events put that relationship in jeopardy.'),
(74, 'The Lion King', '8.5/10', '7 October 1994 (UK)', '1h 28min', 'Lion prince Simba and his father are targeted by his bitter uncle, who wants to ascend the throne himself.'),
(75, 'Ran', '8.2/10', '7 March 1986 (UK)', '2h 42min', 'In Medieval Japan, an elderly warlord retires, handing over his empire to his three sons. However, he vastly underestimates how the new-found power will corrupt them and cause them to turn on each other...and him.'),
(76, 'Portrait of a Lady on Fire', '8.1/10', '28 February 2020 (UK)', '2h 2min', 'On an isolated island in Brittany at the end of the eighteenth century, a female painter is obliged to paint a wedding portrait of a young woman.'),
(77, 'Stalker', '8.2/10', '17 April 1980 (Netherlands)', '2h 42min', 'A guide leads two men through an area known as the Zone to find a room that grants wishes.'),
(78, 'To Be or Not to Be', '8.2/10', '6 March 1942 (USA)', '1h 39min', 'During the Nazi occupation of Poland, an acting troupe becomes embroiled in a Polish soldier\'s efforts to track down a German spy.'),
(79, 'The Matrix', '8.7/10', '11 June 1999 (UK)', '2h 16min', 'When a beautiful stranger leads computer hacker Neo to a forbidding underworld, he discovers the shocking truth--the life he knows is the elaborate deception of an evil cyber-intelligence.'),
(80, 'No Country for Old Men', '8.1/10', '18 January 2008 (UK)', '2h 2min', 'Violence and mayhem ensue after a hunter stumbles upon a drug deal gone wrong and more than two million dollars in cash near the Rio Grande.'),
(81, 'Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb', '8.4/10', '29 January 1964 (UK)', '1h 35min', 'An insane general triggers a path to nuclear holocaust that a War Room full of politicians and generals frantically tries to stop.'),
(82, 'Shutter Island', '8.2/10', '12 March 2010 (UK)', '2h 18min', 'In 1954, a U.S. Marshal investigates the disappearance of a murderer who escaped from a hospital for the criminally insane.'),
(83, 'Batman Begins', '8.2/10', '16 June 2005 (UK)', '2h 20min', 'After training with his mentor, Batman begins his fight to free crime-ridden Gotham City from corruption.'),
(84, 'The Usual Suspects', '8.5/10', '25 August 1995 (UK)', '1h 46min', 'A sole survivor tells of the twisty events leading up to a horrific gun battle on a boat, which began when five criminals met at a seemingly random police lineup.'),
(85, 'Three Colours: Red', '8.1/10', '11 November 1994 (UK)', '1h 39min', 'A model discovers a retired judge is keen on invading people\'s privacy.'),
(86, 'Sunset Blvd.', '8.4/10', '29 September 1950 (Australia)', '1h 50min', 'A screenwriter develops a dangerous relationship with a faded film star determined to make a triumphant return.'),
(87, 'Before Sunset', '8.1/10', '23 July 2004 (UK)', '1h 20min', 'Nine years after Jesse and Celine first met, they encounter each other again on the French leg of Jesse\'s book tour.'),
(88, 'Casablanca', '8.5/10', '23 January 1943 (USA)', '1h 42min', 'A cynical expatriate American cafe owner struggles to decide whether or not to help his former lover and her fugitive husband escape the Nazis in French Morocco.'),
(89, 'Mary and Max', '8.1/10', '9 April 2009 (Australia)', '1h 32min', 'A tale of friendship between two unlikely pen pals: Mary, a lonely, eight-year-old girl living in the suburbs of Melbourne, and Max, a forty-four-year old, severely obese man living in New York.'),
(90, 'Tangerines', '8.2/10', '18 September 2015 (UK)', '1h 27min', 'In 1992, war rages in Abkhazia, a breakaway region of Georgia. An Estonian man Ivo has decided to stay behind and harvest his crops of tangerines. In a bloody conflict at his door, a wounded man is left behind, and Ivo takes him in.'),
(91, 'Taare Zameen Par', '8.4/10', '21 December 2007 (UK)', '2h 45min', 'An eight-year-old boy is thought to be a lazy trouble-maker, until the new art teacher has the patience and compassion to discover the real problem behind his struggles in school.'),
(92, 'Star Wars: Return of the Jedi', '8.3/10', '2 June 1983 (UK)', '2h 11min', 'After a daring mission to rescue Han Solo from Jabba the Hutt, the Rebels dispatch to Endor to destroy the second Death Star. Meanwhile, Luke struggles to help Darth Vader back from the dark side without falling into the Emperor\'s trap.'),
(93, 'The Help', '8.0/10', '26 October 2011 (UK)', '2h 26min', 'An aspiring author during the civil rights movement of the 1960s decides to write a book detailing the African American maids\' point of view on the white families for which they work, and the hardships they go through on a daily basis.'),
(94, 'The Lives of Others', '8.4/10', '13 April 2007 (UK)', '2h 17min', 'In 1984 East Berlin, an agent of the secret police, conducting surveillance on a writer and his lover, finds himself becoming increasingly absorbed by their lives.'),
(95, 'Monty Python and the Holy Grail', '8.2/10', '25 May 1975 (UK)', '1h 31min', 'King Arthur and his Knights of the Round Table embark on a surreal, low-budget search for the Holy Grail, encountering many, very silly obstacles.'),
(96, 'Grave of the Fireflies', '8.5/10', '7 April 1989 (UK)', '1h 29min', 'A young boy and his little sister struggle to survive in Japan during World War II.'),
(97, 'Lawrence of Arabia', '8.3/10', '11 December 1962 (UK)', '3h 48min', 'The story of T.E. Lawrence, the English officer who successfully united and led the diverse, often warring, Arab tribes during World War I in order to fight the Turks.'),
(98, '12 Years a Slave', '8.1/10', '10 January 2014 (UK)', '2h 14min', 'In the antebellum United States, Solomon Northup, a free black man from upstate New York, is abducted and sold into slavery.'),
(99, 'Three Billboards Outside Ebbing, Missouri', '8.2/10', '12 January 2018 (UK)', '1h 55min', 'A mother personally challenges the local authorities to solve her daughter\'s murder when they fail to catch the culprit.'),
(100, 'Modern Times', '8.5/10', '11 February 1936 (UK)', '1h 27min', 'The Tramp struggles to live in modern industrial society with the help of a young homeless woman.'),
(101, 'The Sixth Sense', '8.1/10', '5 November 1999 (UK)', '1h 47min', 'A boy who communicates with spirits seeks the help of a disheartened child psychologist.'),
(102, 'Children of Heaven', '8.3/10', '1997 (Iran)', '1h 29min', 'After a boy loses his sister\'s pair of shoes, he goes on a series of adventures in order to find them. When he can\'t, he tries a new way to \"win\" a new pair.'),
(103, 'Rififi', '8.1/10', 'June 1955 (UK)', '1h 58min', 'Four men plan a technically perfect crime, but the human element intervenes...'),
(104, 'Memories of Murder', '8.1/10', '13 August 2004 (UK)', '2h 11min', 'In a small Korean province in 1986, two detectives struggle with the case of multiple young women being found raped and murdered by an unknown culprit.'),
(105, 'Raging Bull', '8.2/10', '19 February 1981 (UK)', '2h 9min', 'The life of boxer Jake LaMotta, whose violence and temper that led him to the top in the ring destroyed his life outside of it.'),
(106, '1917', '8.3/10', '10 January 2020 (UK)', '1h 59min', 'April 6th, 1917. As a regiment assembles to wage war deep in enemy territory, two soldiers are assigned to race against time and deliver a message that will stop 1,600 men from walking straight into a deadly trap.'),
(107, 'The Shining', '8.4/10', '5 October 1980 (UK)', '2h 26min', 'A family heads to an isolated hotel for the winter where a sinister presence influences the father into violence, while his psychic son sees horrific forebodings from both past and future.'),
(108, 'Capernaum', '8.4/10', '22 February 2019 (UK)', '2h 6min', 'While serving a five-year sentence for a violent crime, a 12-year-old boy sues his parents for neglect.'),
(109, 'La Haine', '8.1/10', '17 November 1995 (UK)', '1h 38min', '24 hours in the lives of three young men in the French suburbs the day after a violent riot.'),
(110, 'Saving Private Ryan', '8.6/10', '11 September 1998 (UK)', '2h 49min', 'Following the Normandy Landings, a group of U.S. soldiers go behind enemy lines to retrieve a paratrooper whose brothers have been killed in action.'),
(111, 'Alien', '8.4/10', '6 September 1979 (UK)', '1h 57min', 'After a space merchant vessel receives an unknown transmission as a distress call, one of the crew is attacked by a mysterious life form and they soon realize that its life cycle has merely begun.'),
(112, 'Gangs of Wasseypur', '8.2/10', '22 June 2012 (India)', '5h 21min', 'A clash between Sultan and Shahid Khan leads to the expulsion of Khan from Wasseypur, and ignites a deadly blood feud spanning three generations.'),
(113, 'Pan\'s Labyrinth', '8.2/10', '24 November 2006 (UK)', '1h 58min', 'In the Falangist Spain of 1944, the bookish young stepdaughter of a sadistic army officer escapes into an eerie but captivating fantasy world.'),
(114, 'Dead Poets Society', '8.1/10', '22 September 1989 (UK)', '2h 8min', 'Maverick teacher John Keating uses poetry to embolden his boarding school students to new heights of self-expression.'),
(115, 'Time of the Gypsies', '8.2/10', '30 November 1990 (UK)', '2h 22min', 'In this luminous tale set in the area around Sarajevo and in Italy, Perhan, an engaging young Romany (gypsy) with telekinetic powers, is seduced by the quick-cash world of petty crime, which threatens to destroy him and those he loves.'),
(116, 'There Will Be Blood', '8.2/10', '15 February 2008 (UK)', '2h 38min', 'A story of family, religion, hatred, oil and madness, focusing on a turn-of-the-century prospector in the early days of the business.'),
(117, 'Into the Wild', '8.1/10', '9 November 2007 (UK)', '2h 28min', 'After graduating from Emory University, top student and athlete Christopher McCandless abandons his possessions, gives his entire $24,000 savings account to charity and hitchhikes to Alaska to live in the wilderness. Along the way, Christopher encounters a series of characters that shape his life.'),
(118, 'Mad Max: Fury Road', '8.1/10', '14 May 2015 (UK)', '2h', 'In a post-apocalyptic wasteland, a woman rebels against a tyrannical ruler in search for her homeland with the aid of a group of female prisoners, a psychotic worshiper, and a drifter named Max.'),
(119, 'Logan', '8.1/10', '1 March 2017 (UK)', '2h 17min', 'In a future where mutants are nearly extinct, an elderly and weary Logan leads a quiet life. But when Laura, a mutant child pursued by scientists, comes to him for help, he must get her to safety.'),
(120, 'Nausica� of the Valley of the Wind', '8.1/10', '12 June 1987 (UK)', '1h 57min', 'Warrior and pacifist Princess Nausica� desperately struggles to prevent two warring nations from destroying themselves and their dying planet.'),
(121, 'Le Mans \'66', '8.1/10', '15 November 2019 (UK)', '2h 32min', 'American car designer Carroll Shelby and driver Ken Miles battle corporate interference and the laws of physics to build a revolutionary race car for Ford in order to defeat Ferrari at the 24 Hours of Le Mans in 1966.'),
(122, 'Gran Torino', '8.1/10', '27 February 2009 (UK)', '1h 56min', 'Disgruntled Korean War veteran Walt Kowalski sets out to reform his neighbor, Thao Lor, a Hmong teenager who tried to steal Kowalski\'s prized possession: a 1972 Gran Torino.'),
(123, 'Raiders of the Lost Ark', '8.4/10', '30 July 1981 (UK)', '1h 55min', 'In 1936, archaeologist and adventurer Indiana Jones is hired by the U.S. government to find the Ark of the Covenant before Adolf Hitler\'s Nazis can obtain its awesome powers.'),
(124, 'Jurassic Park', '8.1/10', '16 July 1993 (UK)', '2h 7min', 'A pragmatic paleontologist visiting an almost complete theme park is tasked with protecting a couple of kids after a power failure causes the park\'s cloned dinosaurs to run loose.'),
(125, 'Once Upon a Time in America', '8.4/10', '5 October 1984 (UK)', '3h 49min', 'A former Prohibition-era Jewish gangster returns to the Lower East Side of Manhattan over thirty years later, where he once again must confront the ghosts and regrets of his old life.'),
(126, 'The Invisible Guest', '8.1/10', '1 July 2017 (UK)', '1h 46min', 'A successful entrepreneur accused of murder and a witness preparation expert have less than three hours to come up with an impregnable defense.'),
(127, 'Das Boot', '8.3/10', '17 September 1981 (West Germany)', '2h 29min', 'The claustrophobic world of a WWII German U-boat; boredom, filth and sheer terror.'),
(128, 'The Thing', '8.1/10', '26 August 1982 (UK)', '1h 49min', 'A research team in Antarctica is hunted by a shape-shifting alien that assumes the appearance of its victims.'),
(129, 'Trainspotting', '8.1/10', '23 February 1996 (UK)', '1h 33min', 'Renton, deeply immersed in the Edinburgh drug scene, tries to clean up and get out, despite the allure of the drugs and influence of friends.'),
(130, 'Taxi Driver', '8.2/10', '19 August 1976 (UK)', '1h 54min', 'A mentally unstable veteran works as a nighttime taxi driver in New York City, where the perceived decadence and sleaze fuels his urge for violent action by attempting to liberate a presidential campaign worker and an underage prostitute.'),
(131, 'Leon', '8.5/10', '3 February 1995 (UK)', '1h 50min', 'Mathilda, a 12-year-old girl, is reluctantly taken in by L�on, a professional assassin, after her family is murdered. An unusual relationship forms as she becomes his prot�g�e and learns the assassin\'s trade.'),
(132, 'Harakiri', '8.6/10', '16 September 1962 (Japan)', '2h 13min', 'When a ronin requesting seppuku at a feudal lord\'s palace is told of the brutal suicide of another ronin who previously visited, he reveals how their pasts are intertwined - and in doing so challenges the clan\'s integrity.'),
(133, 'The Secret in Their Eyes', '8.2/10', '13 August 2010 (UK)', '2h 9min', 'A retired legal counselor writes a novel hoping to find closure for one of his past unresolved homicide cases and for his unreciprocated love with his superior - both of which still haunt him decades later.'),
(134, 'Rush', '8.1/10', '13 September 2013 (UK)', '2h 3min', 'The merciless 1970s rivalry between Formula One rivals James Hunt and Niki Lauda.'),
(135, 'American History X', '8.5/10', '26 March 1999 (UK)', '1h 59min', 'A former neo-nazi skinhead tries to prevent his younger brother from going down the same wrong path that he did.'),
(136, 'Spider-Man: Into the Spider-Verse', '8.4/10', '12 December 2018 (UK)', '1h 57min', 'Teen Miles Morales becomes the Spider-Man of his universe, and must join with five spider-powered individuals from other dimensions to stop a threat for all realities.'),
(137, 'Before Sunrise', '8.1/10', '20 April 1995 (UK)', '1h 41min', 'A young man and woman meet on a train in Europe, and wind up spending one evening together in Vienna. Unfortunately, both know that this will probably be their only night together.'),
(138, 'Fargo', '8.1/10', '31 May 1996 (UK)', '1h 38min', 'Jerry Lundegaard\'s inept crime falls apart due to his and his henchmen\'s bungling and the persistent police work of the quite pregnant Marge Gunderson.'),
(139, 'Am�lie', '8.3/10', '5 October 2001 (UK)', '2h 2min', 'Am�lie is an innocent and naive girl in Paris with her own sense of justice. She decides to help those around her and, along the way, discovers love.'),
(140, 'Ikiru', '8.3/10', '9 October 1952 (Japan)', '2h 23min', 'A bureaucrat tries to find a meaning in his life after he discovers he has terminal cancer.'),
(141, 'Klaus', '8.2/10', '15 November 2019 (UK)', '1h 36min', 'A simple act of kindness always sparks another, even in a frozen, faraway place. When Smeerensburg\'s new postman, Jesper, befriends toymaker Klaus, their gifts melt an age-old feud and deliver a sleigh full of holiday traditions.'),
(142, 'Platoon', '8.1/10', '24 April 1987 (UK)', '2h', 'Chris Taylor, a neophyte recruit in Vietnam, finds himself caught in a battle of wills between two sergeants, one good and the other evil. A shrewd examination of the brutality of war and the duality of man in conflict.'),
(143, 'Spotlight', '8.1/10', '29 January 2016 (UK)', '2h 9min', 'The true story of how the Boston Globe uncovered the massive scandal of child molestation and cover-up within the local Catholic Archdiocese, shaking the entire Catholic Church to its core.'),
(144, 'High and Low', '8.4/10', 'April 1967 (UK)', '2h 23min', 'An executive of a shoe company becomes a victim of extortion when his chauffeur\'s son is kidnapped and held for ransom.'),
(145, 'The 400 Blows', '8.1/10', '3 March 1960 (UK)', '1h 39min', 'A young boy, left without attention, delves into a life of petty crime.'),
(146, 'The Truman Show', '8.1/10', '9 October 1998 (UK)', '1h 43min', 'An insurance salesman discovers his whole life is actually a reality TV show.'),
(147, 'The Silence of the Lambs', '8.6/10', '31 May 1991 (UK)', '1h 58min', 'A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.'),
(148, 'Gone Girl', '8.1/10', '2 October 2014 (UK)', '2h 29min', 'With his wife\'s disappearance having become the focus of an intense media circus, a man sees the spotlight turned on him when it\'s suspected that he may not be innocent.'),
(149, 'Rear Window', '8.4/10', '15 November 1954 (UK)', '1h 52min', 'A wheelchair-bound photographer spies on his neighbors from his apartment window and becomes convinced one of them has committed murder.'),
(150, 'The Departed', '8.5/10', '6 October 2006 (UK)', '2h 31min', 'An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston.'),
(151, 'Snatch', '8.3/10', '1 September 2000 (UK)', '1h 44min', 'Unscrupulous boxing promoters, violent bookmakers, a Russian gangster, incompetent amateur robbers and supposedly Jewish jewelers fight to track down a priceless stolen diamond.'),
(152, 'In the Mood for Love', '8.1/10', '27 October 2000 (UK)', '1h 38min', 'Two neighbors, a woman and a man, form a strong bond after both suspect extramarital activities of their spouses. However, they agree to keep their bond platonic so as not to commit similar wrongs.'),
(153, 'To Kill a Mockingbird', '8.2/10', '20 December 1962 (UK)', '2h 9min', 'Atticus Finch, a lawyer in the Depression-era South, defends a black man against an undeserved rape charge, and his children against prejudice.'),
(154, 'Wild Strawberries', '8.2/10', '26 December 1957 (Sweden)', '1h 31min', 'After living a life marked by coldness, an aging professor is forced to confront the emptiness of his existence.'),
(155, 'Princess Mononoke', '8.4/10', '19 October 2001 (UK)', '2h 14min', 'On a journey to find the cure for a Tatarigami\'s curse, Ashitaka finds himself in the middle of a war between the forest gods and Tatara, a mining colony. In this quest he also meets San, the Mononoke Hime.'),
(156, 'Dangal', '8.4/10', '22 December 2016 (UK)', '2h 41min', 'Former wrestler Mahavir Singh Phogat and his two wrestler daughters struggle towards glory at the Commonwealth Games in the face of societal oppression.'),
(157, 'Apocalypse Now', '8.4/10', '19 December 1979 (UK)', '2h 27min', 'A U.S. Army officer serving in Vietnam is tasked with assassinating a renegade Special Forces Colonel who sees himself as a god.'),
(158, 'North by Northwest', '8.3/10', '20 November 1959 (UK)', '2h 16min', 'A New York City advertising executive goes on the run after being mistaken for a government agent by a group of foreign spies.'),
(159, 'Blade Runner', '8.1/10', '9 September 1982 (UK)', '1h 57min', 'A blade runner must pursue and terminate four replicants who stole a ship in space, and have returned to Earth to find their creator.'),
(160, 'The Wolf of Wall Street', '8.2/10', '17 January 2014 (UK)', '3h', 'Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.'),
(161, 'Spirited Away', '8.6/10', '12 September 2003 (UK)', '2h 5min', 'During her family\'s move to the suburbs, a sullen 10-year-old girl wanders into a world ruled by gods, witches, and spirits, and where humans are changed into beasts.'),
(162, 'The Hunt', '8.3/10', '10 January 2013 (Denmark)', '1h 55min', 'A teacher lives a lonely life, all the while struggling over his son\'s custody. His life slowly gets better as he finds love and receives good news from his son, but his new luck is about to be brutally shattered by an innocent little lie.'),
(163, 'It\'s a Wonderful Life', '8.6/10', '7 January 1947 (USA)', '2h 10min', 'An angel is sent from Heaven to help a desperately frustrated businessman by showing him what life would have been like if he had never existed.'),
(164, 'Soul', '8.1/10', '25 December 2020 (UK)', '1h 40min', 'After landing the gig of a lifetime, a New York jazz pianist suddenly finds himself trapped in a strange land between Earth and the afterlife.'),
(165, 'All About Eve', '8.2/10', '1 May 1951 (India)', '2h 18min', 'A seemingly timid but secretly ruthless ing�nue insinuates herself into the lives of an aging Broadway star and her circle of theater friends.'),
(166, 'Inside Out', '8.1/10', '24 July 2015 (UK)', '1h 35min', 'After young Riley is uprooted from her Midwest life and moved to San Francisco, her emotions - Joy, Fear, Anger, Disgust and Sadness - conflict on how best to navigate a new city, house, and school.'),
(167, 'Rebecca', '8.1/10', '4 October 1940 (UK)', '2h 10min', 'A self-conscious woman juggles adjusting to her new role as an aristocrat\'s wife and avoiding being intimidated by his first wife\'s spectral presence.'),
(168, 'The Third Man', '8.1/10', '12 October 1949 (France)', '1h 44min', 'Pulp novelist Holly Martins travels to shadowy, postwar Vienna, only to find himself investigating the mysterious death of an old friend, Harry Lime.'),
(169, 'Mr. Smith Goes to Washington', '8.1/10', '19 October 1939 (USA)', '2h 9min', 'A naive man is appointed to fill a vacancy in the United States Senate. His plans promptly collide with political corruption, but he doesn\'t back down.'),
(170, 'Joker', '8.4/10', '4 October 2019 (UK)', '2h 2min', 'In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker.'),
(171, 'Your Name.', '8.4/10', '18 November 2016 (UK)', '1h 46min', 'Two strangers find themselves linked in a bizarre way. When a connection forms, will distance be the only thing to keep them apart?'),
(172, 'Die Hard', '8.2/10', '3 February 1989 (UK)', '2h 12min', 'An NYPD officer tries to save his wife and several others taken hostage by German terrorists during a Christmas party at the Nakatomi Plaza in Los Angeles.'),
(173, 'Avengers: Endgame', '8.4/10', '25 April 2019 (UK)', '3h 1min', 'After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos\' actions and restore balance to the universe.'),
(174, 'Wild Tales', '8.1/10', '27 March 2015 (UK)', '2h 2min', 'Six short stories that explore the extremities of human behavior involving people in distress.'),
(175, 'Singin\' in the Rain', '8.3/10', '11 April 1952 (USA)', '1h 43min', 'A silent film production company and cast make a difficult transition to sound.'),
(176, 'Gladiator', '8.5/10', '12 May 2000 (UK)', '2h 35min', 'A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.'),
(177, 'The Bandit', '8.2/10', '29 November 1996 (Turkey)', '2h 8min', 'Baran the Bandit, released from prison after 35 years, searches for vengeance and his lover.'),
(178, 'Paths of Glory', '8.4/10', '20 December 1957 (UK)', '1h 28min', 'After refusing to attack an enemy position, a general accuses the soldiers of cowardice and their commanding officer must defend them.'),
(179, 'My Neighbour Totoro', '8.2/10', '17 November 1989 (UK)', '1h 26min', 'When two girls move to the country to be near their ailing mother, they have adventures with the wondrous forest spirits who live nearby.'),
(180, 'The Dark Knight Rises', '8.4/10', '20 July 2012 (UK)', '2h 44min', 'Eight years after the Joker\'s reign of anarchy, Batman, with the help of the enigmatic Catwoman, is forced from his exile to save Gotham City from the brutal guerrilla terrorist Bane.'),
(181, 'The Handmaiden', '8.1/10', '14 April 2017 (UK)', '2h 25min', 'A woman is hired as a handmaiden to a Japanese heiress, but secretly she is involved in a plot to defraud her.'),
(182, 'The Seventh Seal', '8.2/10', '16 February 1957 (Sweden)', '1h 36min', 'A man seeks answers about life, death, and the existence of God as he plays chess against the Grim Reaper during the Black Plague.'),
(183, 'Tokyo Story', '8.2/10', '3 November 1953 (Japan)', '2h 16min', 'An old couple visit their children and grandchildren in the city, but receive little attention.'),
(184, 'A Separation', '8.3/10', '29 October 2012 (India)', '2h 3min', 'A married couple are faced with a difficult decision - to improve the life of their child by moving to another country or to stay in Iran and look after a deteriorating parent who has Alzheimer\'s disease.'),
(185, 'Requiem for a Dream', '8.3/10', '19 January 2001 (UK)', '1h 42min', 'The drug-induced utopias of four Coney Island people are shattered when their addictions run deep.'),
(186, 'American Beauty', '8.3/10', '4 February 2000 (UK)', '2h 2min', 'A sexually frustrated suburban father has a mid-life crisis after becoming infatuated with his daughter\'s best friend.'),
(187, 'Oldboy', '8.4/10', '15 October 2004 (UK)', '1h 41min', 'After being kidnapped and imprisoned for fifteen years, Oh Dae-Su is released, only to find that he must find his captor in five days.'),
(188, 'Dial M for Murder', '8.2/10', '29 May 1954 (USA)', '1h 45min', 'A former tennis player tries to arrange his wife\'s murder after learning of her affair.'),
(189, 'Whiplash', '8.5/10', '16 January 2015 (UK)', '1h 46min', 'A promising young drummer enrolls at a cut-throat music conservatory where his dreams of greatness are mentored by an instructor who will stop at nothing to realize a student\'s potential.'),
(190, 'Cool Hand Luke', '8.1/10', '1 November 1967 (USA)', '2h 7min', 'A laid back Southern man is sentenced to two years in a rural prison, but refuses to conform.'),
(191, 'The Pianist', '8.5/10', '24 January 2003 (UK)', '2h 30min', 'A Polish Jewish musician struggles to survive the destruction of the Warsaw ghetto of World War II.'),
(192, 'Aliens', '8.3/10', '29 August 1986 (UK)', '2h 17min', 'Fifty-seven years after surviving an apocalyptic attack aboard her space vessel by merciless space creatures, Officer Ripley awakens from hyper-sleep and tries to warn anyone who will listen about the predators.'),
(193, 'Howl\'s Moving Castle', '8.2/10', '23 September 2005 (UK)', '1h 59min', 'When an unconfident young woman is cursed with an old body by a spiteful witch, her only chance of breaking the spell lies with a self-indulgent yet insecure young wizard and his companions in his legged, walking castle.'),
(194, 'Casino', '8.2/10', '23 February 1996 (UK)', '2h 58min', 'A tale of greed, deception, money, power, and murder occur between two best friends: a mafia enforcer and a casino executive compete against each other over a gambling empire, and over a fast-living and fast-loving socialite.'),
(195, 'Braveheart', '8.3/10', '8 September 1995 (UK)', '2h 58min', 'Scottish warrior William Wallace leads his countrymen in a rebellion to free his homeland from the tyranny of King Edward I of England.'),
(196, 'Parasite', '8.6/10', '7 February 2020 (UK)', '2h 12min', 'Greed and class discrimination threaten the newly formed symbiotic relationship between the wealthy Park family and the destitute Kim clan.'),
(197, 'The Bridge on the River Kwai', '8.1/10', '11 October 1957 (UK)', '2h 41min', 'British POWs are forced to build a railway bridge across the river Kwai for their Japanese captors, not knowing that the allied forces are planning to destroy it.'),
(198, 'Network', '8.1/10', '20 February 1977 (UK)', '2h 1min', 'A television network cynically exploits a deranged former anchor\'s ravings and revelations about the news media for its own profit.'),
(199, 'On the Waterfront', '8.1/10', '12 October 1954 (India)', '1h 48min', 'An ex-prize fighter turned longshoreman struggles to stand up to his corrupt union bosses.'),
(200, 'How to Train Your Dragon', '8.1/10', '31 March 2010 (UK)', '1h 38min', 'A hapless young Viking who aspires to hunt dragons becomes the unlikely friend of a young dragon himself, and learns there may be more to the creatures than he assumed.'),
(201, 'Good Will Hunting', '8.3/10', '6 March 1998 (UK)', '2h 6min', 'Will Hunting, a janitor at M.I.T., has a gift for mathematics, but needs help from a psychologist to find direction in his life.'),
(202, 'The Passion of Joan of Arc', '8.1/10', '6 January 1930 (UK)', '1h 50min', 'In 1431, Jeanne d\'Arc is placed on trial on charges of heresy. The ecclesiastical jurists attempt to force Jeanne to recant her claims of holy visions.'),
(203, 'Room', '8.1/10', '15 January 2016 (UK)', '1h 58min', 'Held captive for 7 years in an enclosed space, a woman and her young son finally gain their freedom, allowing the boy to experience the outside world for the first time.'),
(204, 'Andhadhun', '8.3/10', '5 October 2018 (UK)', '2h 19min', 'A series of mysterious events change the life of a blind pianist, who must now report a crime that he should technically know nothing of.'),
(205, 'Memento', '8.4/10', '20 October 2000 (UK)', '1h 53min', 'A man with short-term memory loss attempts to track down his wife\'s murderer.'),
(206, 'The Grand Budapest Hotel', '8.1/10', '7 March 2014 (UK)', '1h 39min', 'A writer encounters the owner of an aging high-class hotel, who tells him of his early years serving as a lobby boy in the hotel\'s glorious years under an exceptional concierge.'),
(207, 'Sherlock Jr.', '8.2/10', '11 May 1924 (USA)', '45min', 'A film projectionist longs to be a detective, and puts his meagre skills to work when he is framed by a rival for stealing his girlfriend\'s father\'s pocketwatch.'),
(208, 'Autumn Sonata', '8.2/10', '8 October 1978 (Sweden)', '1h 32min', 'A married daughter who longs for her mother\'s love is visited by the latter, a successful concert pianist.'),
(209, 'Monty Python\'s Life of Brian', '8.1/10', '8 November 1979 (UK)', '1h 34min', 'Born on the original Christmas in the stable next door to Jesus Christ, Brian of Nazareth spends his life being mistaken for a messiah.'),
(210, 'The General', '8.1/10', '18 April 1927 (UK)', '1h 7min', 'When Union spies steal an engineer\'s beloved locomotive, he pursues it single-handedly and straight through enemy lines.'),
(211, 'M', '8.3/10', '31 August 1931 (Sweden)', '1h 57min', 'When the police in a German city are unable to catch a child-murderer, other criminals join in the manhunt.'),
(212, 'Amadeus', '8.3/10', '17 January 1985 (UK)', '2h 40min', 'The life, success and troubles of Wolfgang Amadeus Mozart, as told by Antonio Salieri, the contemporaneous composer who was insanely jealous of Mozart\'s talent and claimed to have murdered him.'),
(213, 'Prisoners', '8.1/10', '27 September 2013 (UK)', '2h 33min', 'When Keller Dover\'s daughter and her friend go missing, he takes matters into his own hands as the police pursue multiple leads and the pressure mounts.'),
(214, 'Paris, Texas', '8.1/10', '23 August 1984 (UK)', '2h 25min', 'Travis Henderson, an aimless drifter who has been missing for four years, wanders out of the desert and must reconnect with society, himself, his life, and his family.'),
(215, 'Green Book', '8.2/10', '30 January 2019 (UK)', '2h 10min', 'A working-class Italian-American bouncer becomes the driver of an African-American classical pianist on a tour of venues through the 1960s American South.'),
(216, 'WALL�E', '8.4/10', '18 July 2008 (UK)', '1h 38min', 'In the distant future, a small waste-collecting robot inadvertently embarks on a space journey that will ultimately decide the fate of mankind.'),
(217, 'The Great Escape', '8.2/10', '8 September 1963 (UK)', '2h 52min', 'Allied prisoners of war plan for several hundred of their number to escape from a German camp during World War II.'),
(218, 'Rang De Basanti', '8.2/10', '26 January 2006 (UK)', '2h 47min', 'The story of six young Indians who assist an English woman to film a documentary on the freedom fighters from their past, and the events that lead them to relive the long-forgotten saga of freedom.'),
(219, 'It Happened One Night', '8.1/10', '22 February 1934 (USA)', '1h 45min', 'A renegade reporter and a crazy young heiress meet on a bus heading for New York, and end up stuck with each other when the bus leaves them behind at one of the stops.'),
(220, 'L.A. Confidential', '8.2/10', '31 October 1997 (UK)', '2h 18min', 'As corruption grows in 1950s Los Angeles, three policemen - one strait-laced, one brutal, and one sleazy - investigate a series of murders with their own brand of justice.'),
(221, 'Million Dollar Baby', '8.1/10', '14 January 2005 (UK)', '2h 12min', 'A determined woman works with a hardened boxing trainer to become a professional.'),
(222, 'Toy Story', '8.3/10', '22 March 1996 (UK)', '1h 21min', 'A cowboy doll is profoundly threatened and jealous when a new spaceman figure supplants him as top toy in a boy\'s room.'),
(223, 'Once Upon a Time in the West', '8.5/10', '31 August 1969 (UK)', '2h 45min', 'A mysterious stranger with a harmonica joins forces with a notorious desperado to protect a beautiful widow from a ruthless assassin working for the railroad.');
INSERT INTO `imdbmovie` (`id`, `name`, `rating`, `release_date`, `duration`, `description`) VALUES
(224, 'Monsters, Inc.', '8.1/10', '8 February 2002 (UK)', '1h 32min', 'In order to power the city, monsters have to scare children so that they scream. However, the children are toxic to the monsters, and after a child gets through, 2 monsters realize things may not be what they think.'),
(225, 'Harry Potter and the Deathly Hallows: Part 2', '8.1/10', '15 July 2011 (UK)', '2h 10min', 'Harry, Ron, and Hermione search for Voldemort\'s remaining Horcruxes in their effort to destroy the Dark Lord as the final battle rages on at Hogwarts.'),
(226, 'Incendies', '8.3/10', '24 June 2011 (UK)', '2h 11min', 'Twins journey to the Middle East to discover their family history and fulfill their mother\'s last wishes.'),
(227, 'Anand', '8.4/10', '12 March 1971 (India)', '2h 2min', 'The story of a terminally ill man who wishes to live life to the fullest before the inevitable occurs, as told by his best friend.'),
(228, 'The Sting', '8.3/10', '26 December 1973 (UK)', '2h 9min', 'Two grifters team up to pull off the ultimate con.'),
(229, 'Interstellar', '8.6/10', '7 November 2014 (UK)', '2h 49min', 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival.'),
(230, 'Rashomon', '8.2/10', '26 August 1950 (Japan)', '1h 28min', 'The rape of a bride and the murder of her samurai husband are recalled from the perspectives of a bandit, the bride, the samurai\'s ghost and a woodcutter.'),
(231, 'Hotel Rwanda', '8.1/10', '4 March 2005 (UK)', '2h 1min', 'Paul Rusesabagina, a hotel manager, houses over a thousand Tutsi refugees during their struggle against the Hutu militia in Rwanda, Africa.'),
(232, 'Stand by Me', '8.1/10', '13 March 1987 (UK)', '1h 29min', 'After the death of one of his friends, a writer recounts a childhood journey with his friends to find the body of a missing boy.'),
(233, 'A Beautiful Mind', '8.2/10', '22 February 2002 (UK)', '2h 15min', 'After John Nash, a brilliant but asocial mathematician, accepts secret work in cryptography, his life takes a turn for the nightmarish.'),
(234, 'The Apartment', '8.3/10', '29 June 1960 (Canada)', '2h 5min', 'A man tries to rise in his company by letting its executives use his apartment for trysts, but complications and a romance of his own ensue.'),
(235, 'A Silent Voice', '8.1/10', '5 June 2019 (India)', '2h 10min', 'A young man is ostracized by his classmates after he bullies a deaf girl to the point where she moves away. Years later, he sets off on a path for redemption.'),
(236, 'Persona', '8.1/10', '21 September 1967 (UK)', '1h 25min', 'A nurse is put in charge of a mute actress and finds that their personae are melding together.');

-- --------------------------------------------------------

--
-- Table structure for table `myapp_imdb`
--

CREATE TABLE `myapp_imdb` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `rating` varchar(10) NOT NULL,
  `release_date` varchar(32) NOT NULL,
  `duration` varchar(10) NOT NULL,
  `description` longtext NOT NULL,
  `test` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `imdbmovie`
--
ALTER TABLE `imdbmovie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myapp_imdb`
--
ALTER TABLE `myapp_imdb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `myapp_imdb`
--
ALTER TABLE `myapp_imdb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
