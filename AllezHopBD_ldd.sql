CREATE TABLE IF NOT EXISTS adresse (
    id INT AUTO_INCREMENT PRIMARY KEY,
    appartement VARCHAR(255),
    numéro_municipal VARCHAR(255) NOT NULL,
    rue VARCHAR(255) NOT NULL,
    ville VARCHAR(255) NOT NULL,
    état CHAR(2),
    code_postal VARCHAR(25) NOT NULL,
    pays CHAR(2) NOT NULL
);

CREATE TABLE if not EXISTS utilisateur (
	code INT AUTO_INCREMENT PRIMARY KEY,
	nom VARCHAR(255) not null,
	prénom VARCHAR(255) not null,
	courriel VARCHAR(255) not null,
	mot_de_passe VARCHAR(255) not null
);

CREATE TABLE IF NOT EXISTS rôle_utilisateur (
	utilisateur_code INT not null,
	rôle SET('conducteur', 'passager') not null,
	horodatage TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (utilisateur_code, rôle),
    FOREIGN KEY (utilisateur_code) REFERENCES utilisateur(code)

);

CREATE TABLE if not EXISTS trajet (
	code INT AUTO_INCREMENT PRIMARY KEY,
	destination VARCHAR(255) NOT NULL,
	position_départ VARCHAR(255) NOT NULL,
	heure_arrivée TIMESTAMP NOT NULL,
	heure_départ_max TIMESTAMP NOT NULL,
	utilisateur_code INT not null,
	FOREIGN KEY (utilisateur_code) REFERENCES utilisateur(code)
);

CREATE TABLE IF NOT EXISTS réservation (
	code INT AUTO_INCREMENT PRIMARY KEY,
	utilisateur_code INT not null,
	trajet_code INT not null,
	horodatage TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY (utilisateur_code) REFERENCES utilisateur(code),
	FOREIGN KEY (trajet_code) REFERENCES trajet(code)
);

CREATE TABLE IF NOT EXISTS notification (
	code INT AUTO_INCREMENT PRIMARY KEY,
	message TEXT,
	utilisateur_code INT not null,
	FOREIGN KEY (utilisateur_code) REFERENCES utilisateur(code)
);