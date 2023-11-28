--
-- Script de population de la base de données du service AllezHop
--

USE AllezHop;

INSERT INTO utilisateur (nom, prénom, courriel)
VALUES
('Voirenne', 'Iris', 'iris.v@gmail.com'),
('Doe', 'Jane', 'jane.doe@gmail.com'),
('Tremblay', 'Bob', 'bob.t@gmail.com');

INSERT INTO trajet (destination, position_départ, heure_arrivée, heure_départ_max, conducteur)
VALUES
(1, 5, '2023-01-19 08:15:00', '2023-01-19 07:40:00', 1),
(1, 8, '2023-11-19 15:15:00', '2023-11-01 15:00:00', 2),
(3, 5, '2023-11-29 15:15:00', '2023-01-29 07:40:00', 1),
(4, 5, '2023-11-20 15:15:00', '2023-01-20 07:40:00', 1);

INSERT INTO réservation (passager, trajet_code)
VALUES
(3, 1), 
(3, 2),
(3, 4);


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
