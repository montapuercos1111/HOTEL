-- Crear la base de dades
CREATE DATABASE Festa;

-- Utilitzar la base de dades creada
USE Festa;

-- Crear la taula convidats
CREATE TABLE convidats (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    edat INT NOT NULL,
    es_amfitrio BOOLEAN NOT NULL DEFAULT FALSE
);

-- Crear la taula regals
CREATE TABLE regals (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    descripcio VARCHAR(255) NOT NULL,
    convidat_id INT NOT NULL,
    FOREIGN KEY (convidat_id) REFERENCES convidats(id)
);

-- Crear la taula activitats
CREATE TABLE activitats (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    descripcio VARCHAR(255) NOT NULL,
    hora TIME NOT NULL
);

-- Crear la taula convidat_activitat
CREATE TABLE convidat_activitat (
    convidat_id INT NOT NULL,
    activitat_id INT NOT NULL,
    PRIMARY KEY (convidat_id, activitat_id),
    FOREIGN KEY (convidat_id) REFERENCES convidats(id),
    FOREIGN KEY (activitat_id) REFERENCES activitats(id)
);

-- Inserir registres a la taula convidats
INSERT INTO convidats (nom, edat, es_amfitrio) VALUES
('Joan', 30, TRUE),
('Maria', 25, FALSE),
('Pere', 28, FALSE),
('Anna', 22, FALSE);

-- Inserir registres a la taula regals
INSERT INTO regals (nom, descripcio, convidat_id) VALUES
('Harry Potter i la pedra filosofal', 'Llibre', 2),
('Catán',"Joc de taula d'estratègia", 3),
('Capell', 'Capell de palla per "Es Firó"', 4),
('Orquídia',"Planta d'interior", 1);

-- Inserir registres a la taula activitats
INSERT INTO activitats (nom, descripcio, hora) VALUES
('Joc de cartes', 'Un joc de cartes per jugar', '18:00:00'),
('Ball', 'Mùsica en directe per ballar', '19:00:00'),
('Menjar pastís', "Pastís d'aniversari per tots i totes", '20:00:00'),
('Entrega de regals', 'Entrega de regals a càrrec dels convidats', '21:00:00');

-- Inserir registres a la taula convidat_activitat
INSERT INTO convidat_activitat (convidat_id, activitat_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(2, 1),
(3, 2),
(4, 3),
(1, 4);
