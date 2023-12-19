-- noinspection SqlDialectInspectionForFile

-- noinspection SqlNoDataSourceInspectionForFile

--
-- Script de population de la base de données du service AllezHop
--

USE AllezHop;
--Insert utilisateur en premier ( séparer des autres, une à la fois )
INSERT INTO utilisateur (code, nom, prénom, courriel, est_conducteur, est_passager)
VALUES
("1", 'Voirenne', 'Iris', 'iris.v@gmail.com', 1, 0),
("2", 'Doe', 'Jane', 'jane.doe@gmail.com', 1, 0),
("3", 'Tremblay', 'Bob', 'bob.t@gmail.com', 1, 0);

--Insert Adresse après (séparer des autres)
INSERT INTO Adresse (numéro_municipal, rue, ville, état, code_postal, pays)
VALUES
    ('6510', '15e avenue', 'Montréal', 'QC', 'H1X2V5', 'CA'),
    ('6400', '16e avenue', 'Montréal', 'QC', 'H1X2S9', 'CA'),
    ('6578', '16e avenue', 'Montréal', 'QC', 'H1X2T2', 'CA'),
    ('6399', '12e avenue', 'Montréal', 'QC', 'H1X3A6', 'CA'),
    ('6537', '12e avenue', 'Montréal', 'QC', 'H1X3A8', 'CA'),
    ('6092', '16e avenue', 'Montréal', 'QC', 'H1X2S8', 'CA'),
    ('5705', '16e avenue', 'Montréal', 'QC', 'H1X2S7', 'CA'),
    ('6421', 'boulevard Saint-Michel', 'Montréal', 'QC', 'H1Y2E9', 'CA'),
    ('6310', 'boulevard Saint-Michel', 'Montréal', 'QC', 'H1Y2E7', 'CA'),
    ('6195', '18e avenue', 'Montréal', 'QC', 'H1X2P8', 'CA');

INSERT INTO Adresse (appartement, numéro_municipal, rue, ville, état, code_postal, pays)
VALUES
    ('12','6411', '20e avenue', 'Montréal', 'QC', 'H1X3P8', 'CA'),
    ('22','6411', '20e avenue', 'Montréal', 'QC', 'H1X3P8', 'CA'),
    ('10','6411', '20e avenue', 'Montréal', 'QC', 'H1X3P8', 'CA'),
    ('21','6411', '20e avenue', 'Montréal', 'QC', 'H1X3P8', 'CA'),
    ('33A','6411', '20e avenue', 'Montréal', 'QC', 'H1X3P8', 'CA');


--Insert Trajet après avoir insérer Adresse
INSERT INTO trajet (destination, position_départ, heure_arrivée, heure_départ_max, conducteur)
VALUES
(1, 5, '2023-01-19 08:15:00', '2023-01-19 07:40:00', "1"),
(1, 8, '2023-11-19 15:15:00', '2023-11-01 15:00:00', "2"),
(3, 5, '2023-11-29 15:15:00', '2023-01-29 07:40:00', "1"),
(4, 5, '2023-11-20 15:15:00', '2023-01-20 07:40:00', "1");

--Insert réservation après avoir insérer réservation
INSERT INTO réservation (passager, trajet_code)
VALUES
("2", 1), 
("3", 2),
("3", 4);


