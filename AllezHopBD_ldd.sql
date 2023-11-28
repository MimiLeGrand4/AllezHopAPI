--
-- Script de génération de la structure de la base de données du service AllezHop
--

CREATE TABLE IF NOT EXISTS adresse (
    `id` int NOT NULL AUTO_INCREMENT,
  `appartement` varchar(255) DEFAULT NULL,
  `numéro_municipal` varchar(255) NOT NULL,
  `rue` varchar(255) NOT NULL,
  `ville` varchar(255) NOT NULL,
  `état` char(2) DEFAULT NULL,
  `code_postal` varchar(25) NOT NULL,
  `pays` char(2) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE if not EXISTS utilisateur (
	code INT AUTO_INCREMENT PRIMARY KEY,
	nom VARCHAR(255) not null,
	prénom VARCHAR(255) not null,
	courriel VARCHAR(255) not null
);

CREATE TABLE IF NOT EXISTS rôle_utilisateur (
	utilisateur_code INT not null,
	rôle SET('conducteur', 'passager') not null,
	horodatage TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (utilisateur_code, rôle),
    FOREIGN KEY (utilisateur_code) REFERENCES utilisateur(code)

);

CREATE TABLE if not EXISTS trajet (
	`code` int NOT NULL AUTO_INCREMENT,
	`destination` int NOT NULL,
	`position_départ` int NOT NULL,
	`heure_arrivée` timestamp NOT NULL,
	`heure_départ_max` timestamp NOT NULL,
	`conducteur` int NOT NULL,
	PRIMARY KEY (`code`),
	KEY `trajet_adresse_fk1_idx` (`destination`,`position_départ`),
	KEY `trajet_adresse_fk2_idx` (`position_départ`),
	KEY `trajet_ibfk_1` (`conducteur`),
	CONSTRAINT `trajet_adresse_fk1` FOREIGN KEY (`destination`) REFERENCES `adresse` (`id`),
	CONSTRAINT `trajet_adresse_fk2` FOREIGN KEY (`position_départ`) REFERENCES `adresse` (`id`),
	CONSTRAINT `trajet_ibfk_1` FOREIGN KEY (`conducteur`) REFERENCES `utilisateur` (`code`)
);

CREATE TABLE IF NOT EXISTS réservation (
  `code` int NOT NULL AUTO_INCREMENT,
  `utilisateur_code` int NOT NULL,
  `trajet_code` int NOT NULL,
  `horodatage` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`code`),
  KEY `utilisateur_code` (`utilisateur_code`),
  KEY `trajet_code` (`trajet_code`),
  CONSTRAINT `réservation_ibfk_1` FOREIGN KEY (`utilisateur_code`) REFERENCES `utilisateur` (`code`),
  CONSTRAINT `réservation_ibfk_2` FOREIGN KEY (`trajet_code`) REFERENCES `trajet` (`code`)
);
