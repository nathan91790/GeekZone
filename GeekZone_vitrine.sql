-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Dim 18 Janvier 2015 à 22:37
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `geekzone_vitrine`
--

-- --------------------------------------------------------

--
-- Structure de la table `boutique`
--

CREATE TABLE IF NOT EXISTS `boutique` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rue` varchar(50) NOT NULL,
  `cp` varchar(50) NOT NULL,
  `ville` varchar(50) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `telephone` varchar(14) NOT NULL,
  `horaires` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `boutique`
--

INSERT INTO `boutique` (`id`, `rue`, `cp`, `ville`, `image`, `telephone`, `horaires`) VALUES
(1, '84 rte Beauvallon', '26000', 'VALENCE', 'boutique_valence.jpg', '04 75 56 27 77', 'Du lundi au samedi de 08h30 à 12h00 et de 14h00 à 19h00.'),
(2, '2 Bis av. St Roch', '38000', 'GRENOBLE', 'boutique_grenoble.jpg', '04 76 54 33 47', 'Du mardi au samedi de 8h30 à 19h30 (sans interruption) et le dimanche matin de 9h00 à 12h30.'),
(3, '7 Quai Célestins', '69002', 'LYON', 'boutique_lyon.jpg', '04 72 19 68 68', 'Ouvert 7j/7 de 8h30 à 20h30 (dimanche : 19h00).'),
(4, '35 r Jean Pierre Veyrat', '73000', 'CHAMBERY', 'boutique_chambery.jpg', '04 79 85 19 96', 'Du mardi au samedi de 8h30 à 19h30 (sans interruption) et le dimanche matin de 9h00 à 12h30.'),
(5, '32 rue Gambetta', '73200', 'ALBERTVILLE', 'boutique_albertville.jpg', '04 56 10 36 89', 'Du lundi au samedi de 08h30 à 12h00 et de 14h00 à 19h00.'),
(6, '46 av Genève', '74000', 'ANNECY', 'boutique_annecy.jpg', '04 50 57 01 13', 'Du mardi au samedi de 9h00 à 12h30 et de 14h30 à 19h30 et le dimanche de 9h00 à 12h30.'),
(7, '11 bis rue Saint-Esprit', '63000', 'CLERMONT FERRAND', 'boutique_clermont.jpeg', '09 83 70 11 98', 'Du mardi au samedi de 10h00 à 12h30 et de 13h30 à 19h00. ');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `categorie_id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`categorie_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`categorie_id`, `libelle`) VALUES
(1, 'cuisine'),
(2, 'gadget'),
(3, 'mode'),
(4, 'portable'),
(5, 'USB');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE IF NOT EXISTS `produit` (
  `produit_id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `description` varchar(450) NOT NULL,
  `detail` varchar(1500) DEFAULT NULL,
  `prix` double NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `categorie` int(11) NOT NULL,
  PRIMARY KEY (`produit_id`),
  KEY `categorie` (`categorie`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Contenu de la table `produit`
--

INSERT INTO `produit` (`produit_id`, `nom`, `description`, `detail`, `prix`, `image`, `categorie`) VALUES
(1, 'Glaçons Tetris', 'Plongez ces glaçons Tetris dans votre verre et ceux de vos amis pour recréer des parties interminables ! Un élément geek indispensable pour passer une bonne soirée à se remémorer les jeux de votre enfance ! Regardez les glaçons s''imbriquer les uns sur les autres tout en buvant votre breuvage bien frais.', 'LICENCE OFFICIELLE TETRIS\r\n<br/>\r\nRecréez une partie de Tetris mais cette fois-ci dans votre verre avec ces glaçons Tetris !<br/>\r\nSous licence officielle, ces glaçons emblématiques sont les véritables glaçons à forme de blocs Tetris : les Tetrimono !<br/>\r\nPlongez-les dans les verres de vos amis pour les ramener au bon vieux temps des jeux d''arcade !<br/>\r\n<br/>\r\nCaractéristiques :<br/>\r\n* Bac à glaçons en plastique mou, il reste souple même quand les glaçons sont gelés afin que votre glaçon en forme de tetrimono soit toujours facile à enlever.', 8.9, 'glacons-tetris.jpg', 1),
(2, 'Mug Pac-Man chaud/froid', 'Fan de Pac-Man, ce mug est fait pour vous ! Froid, c''est une grille de jeu Pac-Man ... Chaud, Pac-Man, les fantômes et les Pac-Gommes apparaissent !', 'LICENCE OFFICIELLE PAC-MAN<br/>\r\n<br/>\r\nFan de Pac-Man, ce mug est fait pour vous !<br/>\r\n<br/>\r\nFroid, c''est une grille de jeu Pac-Man ...<br/>\r\n<br/>\r\nChaud, Pac-Man, les fantômes et les Pac-Gommes apparaissent !<br/>\r\n<br/>\r\nAttention : Ne pas laver au lave-vaisselle ni utiliser au micro-onde.', 9.9, 'mug-pac-man-chaud-froid.jpg', 1),
(3, 'Magnets fridgebook', 'Recréez l''environnement de votre réseau social préféré ... sur votre frigo ! grâce à nos magnets fridgebook. Mettez à jour votre statut et commentaires à l''aide du stylo feutre fourni.', 'Recréez votre réseau social préféré ... sur votre frigo ! grâce à nos magnets Fridgebook !<br/>\r\n<br/>\r\nMettez à jour votre statut, postez des commentaires et faites de votre wall le défouloir de la maison !<br/>\r\n<br/>\r\nCe kit" pour reproduire un réseau social est livré avec un stylo feutre pour écrire facilement ainsi qu''une mini-brosse pour vite effacer les commentaires et en écrire de nouveaux.<br/>\r\n<br/>\r\nDe nombreux magnets sont inclus dans le pack :<br/>\r\n<br/>\r\n* 1 x Statuts<br/>\r\n* 2 x Comment<br/>\r\n* 2 x Wall<br/>\r\n* 2 x Friends (à personnaliser avec des photos de vos amis)<br/>\r\n* 5 Logos (Photos, Events, Notes, Like, Dislike).', 14.9, 'fridgebook-magnet-reseau-social-frigo.jpg', 1),
(4, 'Prise chargeur USB robinet', 'Un chargeur USB totalement geek pour votre smartphone?\r\nEn forme de robinet, ce chargeur USB original se branche à votre prise de courant, et comme le robinet, il suffit de tourner le bouton pour faire passer le jus (électrique bien sûr !).\r\nA la fois design et totalement geek, ce robinet chargeur Itap, rechargera les batteries de tous vos appareils .', 'Description :<br/>\r\n- compatible, câble USB, tablettes, iphone, , smartphone, appareil photo, cigarettes electroniques rechargeables par usb.<br/>\r\n- Entrée : AC 100-240V / 50-60Hz / 0.2A<br/>\r\n - Sortie : DC 5V --- 1A\r\nCâble de chargement non inclus.', 24.9, 'prise-chargeur-usb-robinet.jpg', 2),
(5, 'Souris optique pixel', 'Fatigué de votre banale souris ? Adoptez cette souris optique filaire en forme d''icône géante de pointeur de souris !  \r\n<br/>\r\nFonctionne comme une souris classique avec ses deux boutons et sa molette de défilement à votre ordinateur.\r\n<br/>\r\nGrâce à cette souris pixel, vous ajouterez une pointe de classe et d''originalité à votre bureau.', 'Caractéristiques :<br/>\r\n <br/>\r\n- Compatible PC et Mac<br/>\r\n- Fonctionne sans installation de pilote<br/>\r\n- Système optique 800 dpi<br/>\r\n- Dimensions souris : 12 cm x 9 cm x 2,5 cm<br/>\r\n- Super cadeau geek', 17.9, 'souris-optique-pixel.jpg', 2),
(6, 'Stealth switch', 'Vous avez décidé de vous accorder quelques minutes de détente ? \r\n<br/>\r\nAvec Stelth Swich vous pouvez en toute tranquilité lancer votre application favorite.<br/> \r\nSi votre boss vient à passer, une simple pression du pied sur le petit recepteur discrètement installé sous votre bureau et toutes vos fenêtres disparaitront pour laisser place aux applications professionnelles.', 'StealthSwitch ne se contente pas de réduire vos fenêtres, il les fera disparaître complètement ! <br/>\r\nMalin, il sait aussi couper le son, cacher la barre des tâches et les icones de votre choix ! <br/>\r\nUne seconde pression suffit à faire réapparaître vos applications sans aucune perte de données !<br/>\r\n <br/>\r\nTrès simple à installer, le petit logiciel de StealthSwitch vous permet de configurer selon vos désirs les fenêtres qui disparaissent ou non et celles qui s''affichent à leur place.<br/> \r\nGrâce à sa fonction de veille, StealthSwitch peut également se mettre en place de lui-même après un certain temps d''inactivité. <br/>\r\n<br/>\r\nEnfin, pour encore plus de confidentialité, vous pourrez même sécuriser par un mot de passe le retour à vos tâches préférées.<br/> \r\n<br/>\r\n• Compatible Windows 98, ME, 2000 et XP.<br/> \r\n• Connexion USB ou PS/2.<br/> \r\n• Logiciel fourni sur CD-Rom.', 45.9, 'stealth-switch.jpg', 2),
(7, 'Powerball', 'Le Powerball est un nouveau gyroscope totalement révolutionnaire tenant dans la main et capable de générer une énorme quantité d''énergie et un couple extraordinaire quand vous activez son rotor interne.', 'Puissance Extrême ! <br/>\r\n<br/>\r\nIl a à peu près la taille d''une balle de tennis et pèse juste un peu plus.<br/> \r\nPrenez un Powerball en main, mettez son rotor en mouvement avec la ficelle fournie (ou utilisez votre pouce quand vous en aurez l''habitude) et vous ferez l''expérience d''une sensation extraordinaire : <br/>\r\nLa balle prend vie du fait des forces gyroscopiques, une résistance forte et agréable accompagne vos mouvements, directement transmise à votre poignet.<br/> \r\n<br/>\r\nFaites le grimper... à des vitesse folles!<br/> \r\n<br/>\r\nAmenez votre nouveau Powerball jusqu''à...10 000 révolutions par minute... les forces sont maintenant bien plus massives, bien plus contraignantes.<br/> \r\nPlus vite ! 12 000 rpm... non, encore un peu plus.... <br/>\r\nla balle tourne de plus en plus vite jusqu''à ce que vous l''ayez portée à presque 15 000 révolutions par minute point auquel elle exerce près de 20 kg de pression sur vos membres et voyage à près de 250 tours par seconde \r\nPas de piles, pas de moteur, juste de la puissance gyroscopique pure. <br/>\r\nL''appareil à propulsion humaine le plus rapide n''ayant jamais été créé! <br/>\r\n<br/>\r\n(Il fonctionne sans pile, la lumière est générée par l''inertie du gyroscope !)', 35, 'powerball.jpg', 2),
(8, 'Bonnet barbe', 'Le bonnet barbe, l''assurance d''une pilosité chaque jour renouvelée\r\nObligé de vous raser tous les jours ? Ou homme imberbe ?<br/>\r\nUn véritable rêve s''offre à vous avec ce bonnet barbe ! Portez votre bonnet avec ou sans la barbe suivant vos envies !\r\nNe passez pas inaperçu pendant vos vacances au ski, et portez ce bonnet original avec une barbe amovible !\r\nLa tête et les joues au chaud, surfez sur les pistes avec votre bonnet barbe insolite !', 'Caractéristiques :<br/>\r\n- Matière : acrylique<br/>\r\n- Couleurs : 4 coloris différents (Gris & Noir, Orange & Vert, Vert & Bleu, Gris & Jaune)<br/>\r\n- Taille unique<br/>\r\nLavage en machine possible.', 32.9, 'bonnet-barbe.jpg', 3),
(9, 'Tee shirt détecteur wifi', 'Ce tee-shirt dispose d''un détecteur de signal Wifi, et le fait savoir !<br/>\r\nEquipé d''un petit module récepteur, vous connaitrez aisément l''intensité du réseau Wifi à votre portée.', '100% coton ce t-shirt ne pourra vous laisser indiférent.<br/>\r\nVous saurez, quelles que soient les circonstances si vous êtes en environnement hostile ou accueillant.\r\nBref, si le Wifi 802.11 est en vous, ou non !<br/>\r\nCaractéristiques techniques :<br/>\r\n• Tee-shirt 170gr est 100% coton<br/>\r\n• Détecteur Wifi intégré dans une petite poche au bas et à l''intérieur du tee shirt<br/>\r\n• Interrupteur de mise en marche/arrêt<br/>\r\n• Affichage LED sur le tee-shirt de l''intensité sur signal WiFi 802.11b ou 802.11g<br/>\r\n• Raffraichissement de l''information de signal toutes les 60 secondes.<br/>\r\n<br/>\r\n• Nécéssite 2 piles AAA (non fournies)<br/>\r\n• Ce t-shirt doit être lavé à la main et ne pas être seché en sèche-linge.', 39.9, 't-shirt-detecteur-wifi.jpg', 3),
(10, 'Tee shirt coder', 'Coder ? On y perd son latin.', 'Informations produit : <br/>\r\n<br/>\r\n. Tee-shirt noir 100% coton peigné pré-rétréci. <br/>\r\n. Coupe homme classique 170g. <br/>\r\n. Manches courtes. <br/>\r\n<br/>\r\nTous nos tee shirts sont sérigraphiés à la main .<br/> \r\nContrairement au transfert, la sérigraphie ne part pas au lavage.<br/> \r\n<br/>\r\nCertes, la sérigraphie est plus coûteuse que le transfert, mais l''encre utilisée s''intègre aux fibres textiles et contient une substance souple lui permettant de rester homogène après de nombreux lavages.<br/>\r\n<br/>\r\nLe repassage à l''envers est conseillé. \r\nLe passage du fer à repasser directement sur les motifs sérigraphiés est de nature à endommager définitivement le tee shirt .<br/> \r\n<br/>\r\nMageekstore garantit qu''aucun enfant n''a travaillé à la confection de nos tee shirts qu''elle que soit l''étape de la fabrication .<br/> \r\n<br/>\r\nConseils d''entretien : <br/>\r\nLavage 30° à l''envers, essorage doux, repassage à l''envers. <br/>\r\n<br/>\r\nATTENTION : NE JAMAIS REPASSER DIRECTEMENT LE MOTIF... ', 15.5, 't-shirt-coder.jpg', 3),
(11, 'Tee shirt jeux vidéo', 'T-Shirt avec un bien beau slogan spécial gamer : Les Jeux Vidéo ont ruiné ma vie : Il m''en reste deux !', 'T-Shirt avec un bien beau slogan spécial gamer : Les Jeux Vidéo ont ruiné ma vie : Il m''en reste deux !<br/>\r\n<br/>\r\n100% Coton<br/>\r\n<br/>\r\nColoris : Noir<br/>\r\n<br/>\r\nTaille unique<br/>\r\n<br/>\r\nConseils d''entretien :<br/>\r\n<br/>\r\n* Ne pas repasser sur le motif (repassage à l''envers)<br/>\r\n* Lavage à température basse', 17.9, 't-shirt-les-jeux-video-ont-ruine-ma-vie.jpg', 3),
(12, 'Mini ventilateur pour Iphone', 'Le ventilateur iphone est le gadget à emporter partout avec vous !<br/>\r\nCanicule ou bouffées de chaleur? Nous avons l''accessoire geek au top pour des journées où tout est chaud !<br/>\r\nBranché à votre iphone ou ipod touch il vous fera de l''air sans faire chauffer votre batterie car il ne consomme que très peu d''énergie ! <br/>\r\nPratique et malin, ce ventilateur fera des envieux les jours de grosse chaleur !', 'Caractéristiques :<br/>\r\nCompatible avec iPhones 3G, 3GS & 4 et iPod touch 1, 2 & 3<br/>\r\nCouleur : noir', 9.95, 'ventilo-pour-iphone.jpg', 4),
(13, 'Coque Iphone 4 décapsuleur', 'Avec cette coque intelligente concue avec un décapsuleur, vous serez toujours prêt à ouvrir votre boisson préférée!', 'Cette coque parfaitement ajustée pour iPhone 4 fait bien plus que protéger votre portable des chocs et des rayures ... elle intégre un décapsuleur en acier inoxydable. <br/>\r\n<br/>\r\nLa coque est de conception robuste et étudiée pour éviter tout dommage à votre smartphone (nervurée à l'' intérieure elle assure que la pression est identique sur toute la longueur de la coque)<br/> \r\n<br/>\r\nPour couronner le tout, cette élégante housse de haute qualité est fourni avec une application gratuite qui compte les bières que vous décapsulerez, affichera les images de votre bibliothèque et jouera des chansons ou sons de votre choix à chaque fois que vous utiliserez votre ouvre-bouteille. Hic!', 26.9, 'coque-iphone-4-decapsuleur.jpg', 4),
(14, 'Manette jeu pour écran tactile Istick', 'Le stick qui transforme votre smartphone en console portable', 'Une manette spécifiquement conçue pour les écrans tactiles. Cette dernière vient se fixer sur l''écran à l''endroit approprié à l''aide d''une ventouse plutôt efficace. <br/>\r\n<br/>\r\nUn accessoire nettement plus convainquant que les boutons / manettes.', 10.9, 'manette-jeu-pour-ecran-tactile-istick.jpg', 4),
(15, 'Chauffe-tasse biscuit', 'Rien ne vaut que de traîner sur ses sites préférés en compagnie d''un breuvage bien tiède juste à côté de vous. Un chocolat ? Un thé ? Un café ? Ce chauffe-tasse tout mignon en forme de petit gâteau gardera votre boisson bien au chaud jusqu''à 50° !', 'Avec le travail accumulé au cours de la journée, vous en avez complètement oublié de boire votre tasse de café, qui attend là sur votre bureau.<br/>\r\nElle a complètement refroidit alors que votre clavier lui se réchauffait !<br/> Malheureusement , votre café est désormais froid et totalement imbuvable... <br/>\r\nMais ! Grâce à cette ingénieuse petite coupelle en forme de biscuit, vous allez pouvoir garder votre boisson jusqu''à 50° !<br/>\r\nCe réchauffe tasse biscuit se branche directement dans un port USB de votre ordinateur.<br/>\r\nDonc maintenant, peu importe la durée de votre travail, ne vous souciez plus de la température de votre breuvage qui restera toujours chaud !<br/>\r\n<br/>\r\nChauffe tasse biscuit :<br/>\r\n* Plaque chauffante<br/>\r\n* Bouton On/Off pour allumer/éteindre<br/>\r\n* Voyant d''alimentation<br/>\r\n* Compatible USB Mac et PC<br/>\r\n<br/>\r\nAvertissements :<br/>\r\n- La surface peut devenir très chaude<br/>\r\n- Ne pas utiliser avec une tasse en plastique<br/>\r\n- Toujours débrancher le chauffe tasse lorsqu''il est inutilisé ou avant de le nettoyer.', 12.9, 'chauffe-tasse-biscuit-usb.jpg', 5),
(16, 'Mini aspirateur', 'Fini les miettes de pain et autres poussières incrustées dans votre clavier, grâce à ce mini aspirateur USB. Accessoire bien pratique !', 'Éliminez la saleté qui règne sur votre bureau, grâce à ce mini aspirateur USB !<br/>\r\n<br/>\r\nIdéal pour aspirer les poussières qui s''incrustent dans votre clavier, mais aussi dans votre PC ou sur votre bureau.<br/>\r\n<br/>\r\nAlimenté par le port USB de votre ordinateur, cet aspirateur est donc compatible avec tous les ordinateurs du marché (PC, MAC, etc.) et n''importe quel système d''exploitation !<br/>\r\n<br/>\r\nComprend 2 têtes changeables pour aspirer dans les moindres détails.<br/>\r\n<br/>\r\n* Fonctionne à l''aide d''un port USB libre<br/>\r\n* A brancher directement sur votre ordinateur (pas de HUB USB)<br/>\r\n* Fonction "Power Up" pour une aspiration encore plus forte !<br/>\r\n* Câble rétractable : Se range facilement<br/>\r\n* Dimensions approximatives : 15 x 5 x 5 cm<br/>\r\n<br/>\r\nLe coloris dépend de l''arrivage. Gris, Jaune, Orange ou Bleu.', 9.9, 'mini-aspirateur-usb.jpg', 5),
(17, 'Ventilateur lumineux', 'Un ventilateur USB avec tige flexible, idéal pour une utilisation sur un ordinateur portable. Petit plus : des LEDs incrustées pour une ambiance hors du commun.', 'Chaud ? Ce mini-ventilateur USB avec tige flexible saura vous rafraîchir durant vos longues journées de travail. Le petit plus de ce gadget ? Ses LEDs vertes / rouges / bleues incrustées dans les pales qui vous offriront un show d''enfer (voir vidéo de démonstration plus bas)<br/>\r\n<br/>\r\nAmbiance discothèque au bureau assurée !<br/>\r\n<br/>\r\nAuto-alimenté via USB. Compact, flexible et ajustable, idéal pour l''utilisation sur un ordinateur portable.<br/>\r\n<br/>\r\nCompatible avec tous les systèmes (nécessite 1 port USB de disponible)', 8.9, 'ventilateur-lumineux-usb.jpg', 5),
(18, 'Frigo', 'Ce mini frigo vous permettra de refroidir votre canette de soda, lors des grandes chaleurs !', 'Avouez qu''il est très désagréable, en plein été, d''aller se servir une canette fraîche dans le frigo de la cuisine, et de la voir se réchauffer très rapidement sur le bord du bureau. Cette tracasserie est maintenant finie grâce à ce frigo USB ! Un look exceptionnel et une efficacité prouvée ! Branchez ce gadget sur votre port USB et 5 minutes après la surface inférieure à l''intérieur du frigo sera refroidie jusqu''à 8.0° celsius et vous permettra ainsi de garder votre boisson au frais pendant des heures !<br/>\r\n<br/>\r\nCOLORIS NOIR <br/>\r\n<br/>\r\nPour fonctionner :<br/>\r\n* Nécessite un port USB de libre<br/>\r\n* Une canette de soda (33cl maxi)<br/>\r\n* Totalement Plug&Play : Aucun drivers !<br/>\r\n* Fonctionne sur toutes les plateformes : Windows, Mac OS, Linux, etc<br/>\r\n* Dimensions : 19.4 x 9 x 9 cm (HxLxl)', 22.9, 'frigo-usb.jpg', 5);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `produit_ibfk_1` FOREIGN KEY (`categorie`) REFERENCES `categorie` (`categorie_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
