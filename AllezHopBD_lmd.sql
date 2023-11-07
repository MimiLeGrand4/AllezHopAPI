--
-- Script de population de la base de données du service AllezHop
--

USE AllezHop;

INSERT INTO utilisateur (nom, prénom, courriel, mot_de_passe)
VALUES
('Voirenne', 'Iris', 'iris.v@gmail.com', 'pass123'),
('Doe', 'Jane', 'jane.doe@gmail.com', 'pass123'),
('Tremblay', 'Bob', 'bob.t@gmail.com', 'pass123');

INSERT INTO trajet (destination, position_départ, heure_arrivée, heure_départ_max, utilisateur_code)
VALUES
('6400 16e Avenue, Montréal, QC H1X 2S9', '9191 Cavendish Blvd, Saint-Laurent, Quebec H4T 1M8', '2023-01-19 08:15:00', '2023-01-19 07:40:00', 1),
('6400 16e Avenue, Montréal, QC H1X 2S9', '7275 Sherbrooke St E, Montreal, Quebec H1N 1E9', '2023-11-19 15:15:00', '2023-11-01 15:00:00', 2);