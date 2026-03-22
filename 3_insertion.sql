-- ==========================================================
-- INSERTION DES DONNEES : MAGASIN
-- ==========================================================
INSERT INTO MAGASIN (Nom_Magasin, Ville, Code_Postal) VALUES 
('Level Up Paris', 'Paris', 75001),
('Quest Log Lyon', 'Lyon', 69002),
('Save Point Bordeaux', 'Bordeaux', 33000),
('Boss Rush Lille', 'Lille', 59000),
('Mana Store Marseille', 'Marseille', 13001);

-- ==========================================================
-- INSERTION DES DONNEES : CLIENT
-- ==========================================================
INSERT INTO CLIENT (Email_Client, Nom_Client, Prenom_Client, Date_Naissance, Telephone) VALUES 
('j.dupont@email.com', 'Dupont', 'Jean', '1990-05-15', 0601020304),
('m.durand@email.com', 'Durand', 'Marie', '1985-11-20', 0611223344),
('l.lefevre@email.com', 'Lefebvre', 'Lucas', '2002-03-10', 0622334455),
('s.martin@email.com', 'Martin', 'Sophie', '1995-07-25', 0633445566),
('t.bernard@email.com', 'Bernard', 'Thomas', '1988-12-01', 0644556677),
('n.petit@email.com', 'Petit', 'Nicolas', '2005-09-14', 0655667788),
('c.roux@email.com', 'Roux', 'Camille', '1993-02-28', 0666778899),
('a.moreau@email.com', 'Moreau', 'Antoine', '1980-06-05', 0677889900),
('e.garcia@email.com', 'Garcia', 'Elena', '1998-10-30', 0688990011),
('j.masson@email.com', 'Masson', 'Julien', '2001-04-12', 0699001122);

-- ==========================================================
-- INSERTION DES DONNEES : CARTE_FIDELITE (6 clients sur 10)
-- ==========================================================
INSERT INTO CARTE_FIDELITE (Num_Carte_Fidelite, Point_Cumules, Statu_Carte, Email_Client) VALUES 
('FID-001', 50, 'Bronze', 'j.dupont@email.com'),
('FID-002', 120, 'Or', 'm.durand@email.com'),
('FID-003', 10, 'Bronze', 'l.lefevre@email.com'),
('FID-004', 85, 'Argent', 's.martin@email.com'),
('FID-005', 200, 'Platine', 't.bernard@email.com'),
('FID-006', 30, 'Bronze', 'c.roux@email.com');

-- ==========================================================
-- INSERTION DES DONNEES : PRODUIT
-- ==========================================================
-- Jeux PS5
INSERT INTO PRODUIT VALUES ('PS5-001', 0x37001, 'Elden Ring', 'Action-RPG', 59.99, 'Jeu Vidéo', 'PS5', 'Neuf', 'Bandai Namco', '2022-02-25');
INSERT INTO PRODUIT VALUES ('PS5-002', 0x37002, 'Spider-Man 2', 'Action-Aventure', 79.99, 'Jeu Vidéo', 'PS5', 'Neuf', 'Sony', '2023-10-20');
INSERT INTO PRODUIT VALUES ('PS5-003', 0x37003, 'Demon Souls', 'Action-RPG hardcore', 39.99, 'Jeu Vidéo', 'PS5', 'Occasion', 'Sony', '2020-11-12');
INSERT INTO PRODUIT VALUES ('PS5-004', 0x37004, 'Ratchet & Clank', 'Plateforme', 45.00, 'Jeu Vidéo', 'PS5', 'Neuf', 'Sony', '2021-06-11');
INSERT INTO PRODUIT VALUES ('PS5-005', 0x37005, 'Final Fantasy XVI', 'RPG', 69.99, 'Jeu Vidéo', 'PS5', 'Neuf', 'Square Enix', '2023-06-22');

-- Jeux Switch
INSERT INTO PRODUIT VALUES ('SWI-001', 0x47001, 'Zelda: TotK', 'Aventure épique', 54.99, 'Jeu Vidéo', 'Switch', 'Neuf', 'Nintendo', '2023-05-12');
INSERT INTO PRODUIT VALUES ('SWI-002', 0x47002, 'Mario Odyssey', 'Plateforme 3D', 44.99, 'Jeu Vidéo', 'Switch', 'Occasion', 'Nintendo', '2017-10-27');
INSERT INTO PRODUIT VALUES ('SWI-003', 0x47003, 'Metroid Dread', 'Action-Exploration', 49.99, 'Jeu Vidéo', 'Switch', 'Neuf', 'Nintendo', '2021-10-08');
INSERT INTO PRODUIT VALUES ('SWI-004', 0x47004, 'Mario Kart 8 Deluxe', 'Course', 44.99, 'Jeu Vidéo', 'Switch', 'Neuf', 'Nintendo', '2017-04-28');
INSERT INTO PRODUIT VALUES ('SWI-005', 0x47005, 'Animal Crossing', 'Simulation', 45.00, 'Jeu Vidéo', 'Switch', 'Neuf', 'Nintendo', '2020-03-20');

-- Figurines
INSERT INTO PRODUIT VALUES ('FIG-001', 0x57001, 'Figurine Link', 'Statue PVC 25cm', 89.90, 'Goodies', 'N/A', 'Neuf', 'First 4 Figures', '2023-01-10');
INSERT INTO PRODUIT VALUES ('FIG-002', 0x57002, 'Amiibo Mario', 'Petite figurine NFC', 14.99, 'Goodies', 'Multi', 'Neuf', 'Nintendo', '2014-11-21');
INSERT INTO PRODUIT VALUES ('FIG-003', 0x57003, 'Funko Pop Kratos', 'Figurine vinyle', 15.00, 'Goodies', 'N/A', 'Neuf', 'Funko', '2022-11-01');
INSERT INTO PRODUIT VALUES ('FIG-004', 0x57004, 'Nendoroid Zelda', 'Figurine articulée', 65.00, 'Goodies', 'N/A', 'Neuf', 'Good Smile', '2023-08-15');
INSERT INTO PRODUIT VALUES ('FIG-005', 0x57005, 'Statue Sephiroth', 'Edition collector limitée', 99.99, 'Goodies', 'N/A', 'Neuf', 'Square Enix', '2024-01-20');

-- Vêtements
INSERT INTO PRODUIT VALUES ('VET-001', 0x67001, 'T-Shirt PlayStation', 'Coton Noir Taille L', 19.99, 'Vêtements', 'N/A', 'Neuf', 'Sony', '2023-05-01');
INSERT INTO PRODUIT VALUES ('VET-002', 0x67002, 'Sweat à capuche N7', 'Inspiré Mass Effect', 49.99, 'Vêtements', 'N/A', 'Neuf', 'BioWare', '2022-11-07');
INSERT INTO PRODUIT VALUES ('VET-003', 0x67003, 'Casquette Nintendo', 'Logo rouge classique', 12.50, 'Vêtements', 'N/A', 'Neuf', 'Nintendo', '2023-02-15');
INSERT INTO PRODUIT VALUES ('VET-004', 0x67004, 'Chaussettes Pac-Man', 'Lot de 3 paires', 9.99, 'Vêtements', 'N/A', 'Neuf', 'Namco', '2023-06-10');
INSERT INTO PRODUIT VALUES ('VET-005', 0x67005, 'Veste Cyberpunk', 'Style Samurai', 85.00, 'Vêtements', 'N/A', 'Neuf', 'CD Projekt', '2021-12-01');

-- ==========================================================
-- INSERTION DES DONNEES : STOCKER (Répartition Magasins)
-- ==========================================================
INSERT INTO STOCKER (SKU_Produit, Id_MAGASIN, Quantite_en_stock) VALUES 
('PS5-001', 1, 10), ('PS5-001', 2, 5), ('PS5-002', 1, 8), ('SWI-001', 1, 15),
('SWI-001', 3, 12), ('FIG-001', 1, 2), ('FIG-001', 4, 3), ('VET-001', 5, 20),
('PS5-005', 2, 4), ('SWI-004', 4, 10), ('FIG-003', 3, 7), ('VET-002', 1, 5),
('PS5-003', 1, 3), ('SWI-002', 2, 6), ('FIG-005', 5, 1), ('PS5-004', 3, 5),
('SWI-005', 4, 8), ('VET-004', 2, 12), ('VET-005', 1, 2), ('FIG-002', 3, 25);

-- ==========================================================
-- INSERTION DES DONNEES : ACHETER (15 ventes)
-- ==========================================================
INSERT INTO ACHETER VALUES ('j.dupont@email.com', 'PS5-001', 1, 'T-1001', '2024-01-10', '14:30:00', 1, 59.99);
INSERT INTO ACHETER VALUES ('m.durand@email.com', 'SWI-001', 1, 'T-1002', '2024-01-11', '10:15:00', 1, 54.99);
INSERT INTO ACHETER VALUES ('l.lefevre@email.com', 'FIG-003', 3, 'T-1003', '2024-01-12', '16:45:00', 2, 30.00);
INSERT INTO ACHETER VALUES ('s.martin@email.com', 'VET-001', 5, 'T-1004', '2024-01-12', '11:00:00', 1, 19.99);
INSERT INTO ACHETER VALUES ('t.bernard@email.com', 'PS5-002', 1, 'T-1005', '2024-01-13', '18:20:00', 1, 79.99);
INSERT INTO ACHETER VALUES ('n.petit@email.com', 'FIG-002', 3, 'T-1006', '2024-01-14', '09:30:00', 3, 44.97);
INSERT INTO ACHETER VALUES ('c.roux@email.com', 'SWI-004', 4, 'T-1007', '2024-01-15', '13:00:00', 1, 44.99);
INSERT INTO ACHETER VALUES ('a.moreau@email.com', 'PS5-005', 2, 'T-1008', '2024-01-16', '15:10:00', 1, 69.99);
INSERT INTO ACHETER VALUES ('e.garcia@email.com', 'VET-004', 2, 'T-1009', '2024-01-16', '15:15:00', 1, 9.99);
INSERT INTO ACHETER VALUES ('j.masson@email.com', 'SWI-005', 4, 'T-1010', '2024-01-17', '17:40:00', 1, 45.00);
INSERT INTO ACHETER VALUES ('j.dupont@email.com', 'FIG-001', 1, 'T-1011', '2024-01-18', '11:20:00', 1, 89.90);
INSERT INTO ACHETER VALUES ('m.durand@email.com', 'VET-002', 1, 'T-1012', '2024-01-19', '12:05:00', 1, 49.99);
INSERT INTO ACHETER VALUES ('s.martin@email.com', 'PS5-004', 3, 'T-1013', '2024-01-20', '16:00:00', 1, 45.00);
INSERT INTO ACHETER VALUES ('t.bernard@email.com', 'FIG-005', 5, 'T-1014', '2024-01-21', '10:00:00', 1, 99.99);
INSERT INTO ACHETER VALUES ('c.roux@email.com', 'VET-003', 1, 'T-1015', '2024-01-21', '14:30:00', 2, 25.00);

-- ==========================================================
-- INSERTION DES DONNEES : PRECOMMANDE (Exemple)
-- ==========================================================
INSERT INTO PRECOMMANDE (Email_Client, Date_Precommande, Montant_Acompte, SKU_Produit) VALUES 
('j.masson@email.com', '2024-03-20 10:00:00', 10.00, 'FIG-005');