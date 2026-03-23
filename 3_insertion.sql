-- MAGASIN (Id_MAGASIN est AUTO_INCREMENT, on ne l'insère pas)
INSERT INTO MAGASIN (Nom_Magasin, Ville, Code_Postal) VALUES 
('Level Up Paris', 'Paris', 75001),
('Quest Log Lyon', 'Lyon', 69002),
('Save Point Bordeaux', 'Bordeaux', 33000),
('Boss Rush Lille', 'Lille', 59000),
('Mana Store Marseille', 'Marseille', 13001);

-- CLIENT
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

-- CARTE_FIDELITE (Valeurs alignées sur la contrainte CHECK)
INSERT INTO CARTE_FIDELITE (Num_Carte_Fidelite, Point_Cumules, Statu_Carte, Email_Client) VALUES 
('FID-001', 50, 'Classic', 'j.dupont@email.com'),
('FID-002', 120, 'Premium', 'm.durand@email.com'),
('FID-003', 10, 'Classic', 'l.lefevre@email.com'),
('FID-004', 85, 'Star', 's.martin@email.com'),
('FID-005', 200, 'Premium', 't.bernard@email.com'),
('FID-006', 30, 'Classic', 'c.roux@email.com');

-- PRODUIT (Ajout de la catégorie correcte et de la Taille à la fin)
INSERT INTO PRODUIT VALUES ('CON-001', 0x99001, 'PlayStation 5 Pro', 'Console ultra haute performance', 500.00, 'Console', 'PS5', 'Neuf', 'Sony', '2024-11-07', 'N/A');


-- Jeux
INSERT INTO PRODUIT VALUES ('JEU-2026', 0x88001, 'GTA VI', 'Le jeu le plus attendu', 80.00, 'Jeu', 'PS5', 'Neuf', 'Rockstar', '2026-04-15', 'N/A');
INSERT INTO PRODUIT VALUES ('PS5-001', 0x37001, 'Elden Ring', 'Action-RPG', 59.99, 'Jeu', 'PS5', 'Neuf', 'Bandai Namco', '2022-02-25', 'N/A');
INSERT INTO PRODUIT VALUES ('PS5-002', 0x37002, 'Spider-Man 2', 'Action-Aventure', 79.99, 'Jeu', 'PS5', 'Neuf', 'Sony', '2023-10-20', 'N/A');
INSERT INTO PRODUIT VALUES ('PS5-003', 0x37003, 'Demon Souls', 'Action-RPG hardcore', 39.99, 'Jeu', 'PS5', 'Occasion', 'Sony', '2020-11-12', 'N/A');
INSERT INTO PRODUIT VALUES ('PS5-004', 0x37004, 'Ratchet & Clank', 'Plateforme', 45.00, 'Jeu', 'PS5', 'Neuf', 'Sony', '2021-06-11', 'N/A');
INSERT INTO PRODUIT VALUES ('PS5-005', 0x37005, 'Final Fantasy XVI', 'RPG', 69.99, 'Jeu', 'PS5', 'Neuf', 'Square Enix', '2023-06-22', 'N/A');
INSERT INTO PRODUIT VALUES ('SWI-001', 0x47001, 'Zelda: TotK', 'Aventure épique', 54.99, 'Jeu', 'Switch', 'Neuf', 'Nintendo', '2023-05-12', 'N/A');
INSERT INTO PRODUIT VALUES ('SWI-002', 0x47002, 'Mario Odyssey', 'Plateforme 3D', 44.99, 'Jeu', 'Switch', 'Occasion', 'Nintendo', '2017-10-27', 'N/A');

-- Figurines (Catégorie 'Figurine')
INSERT INTO PRODUIT VALUES ('FIG-001', 0x57001, 'Figurine Link', 'Statue PVC 25cm', 89.90, 'Figurine', 'N/A', 'Neuf', 'First 4 Figures', '2023-01-10', 'N/A');
INSERT INTO PRODUIT VALUES ('FIG-005', 0x57005, 'Statue Sephiroth', 'Edition collector limitée', 99.99, 'Figurine', 'N/A', 'Neuf', 'Square Enix', '2024-01-20', 'N/A');
INSERT INTO PRODUIT VALUES ('FIG-002', 0x57002, 'Amiibo Mario', 'Petite figurine NFC', 14.99, 'Figurine', 'Switch', 'Neuf', 'Nintendo', '2014-11-21', 'N/A');
INSERT INTO PRODUIT VALUES ('FIG-003', 0x57003, 'Funko Pop Kratos', 'Figurine vinyle', 15.00, 'Figurine', 'N/A', 'Neuf', 'Funko', '2022-11-01', 'N/A');

-- Vêtements (Catégorie 'Vêtement' + Tailles réelles)
INSERT INTO PRODUIT VALUES ('VET-001', 0x67001, 'T-Shirt PlayStation', 'Coton Noir', 19.99, 'Vêtement', 'N/A', 'Neuf', 'Sony', '2023-05-01', 'L');
INSERT INTO PRODUIT VALUES ('VET-002', 0x67002, 'Sweat à capuche N7', 'Inspiré Mass Effect', 49.99, 'Vêtement', 'N/A', 'Neuf', 'BioWare', '2022-11-07', 'M');
INSERT INTO PRODUIT VALUES ('VET-004', 0x67004, 'Chaussettes Pac-Man', 'Lot de 3 paires', 9.99, 'Vêtement', 'N/A', 'Neuf', 'Namco', '2023-06-10', 'S');

-- STOCKER, ACHETER et PRECOMMANDE (Reste identique car les clés existent bien)
INSERT INTO STOCKER (SKU_Produit, Id_MAGASIN, Quantite_en_stock) VALUES 
('PS5-001', 1, 10), ('PS5-001', 2, 5), ('PS5-002', 1, 8), ('SWI-001', 1, 15),
('FIG-001', 1, 2), ('VET-001', 5, 20), ('PS5-005', 2, 4), ('FIG-003', 3, 7), 
('VET-002', 1, 5), ('PS5-003', 1, 3), ('SWI-002', 2, 6), ('FIG-005', 5, 1), 
('PS5-004', 3, 5), ('VET-004', 2, 12), ('FIG-002', 3, 25);

INSERT INTO ACHETER VALUES ('j.dupont@email.com', 'PS5-001', 1, 'T-1001', '2024-01-10', '14:30:00', 1, 59.99);
INSERT INTO ACHETER VALUES ('m.durand@email.com', 'SWI-001', 1, 'T-1002', '2024-01-11', '10:15:00', 1, 54.99);

INSERT INTO PRECOMMANDE (Email_Client, Date_Precommande, Montant_Acompte, SKU_Produit) VALUES 
('j.masson@email.com', '2024-03-20 10:00:00', 10.00, 'FIG-005');

-- On s'assure que FIG-003 et SWI-003 existent bien
INSERT INTO PRODUIT VALUES ('FIG-003', 0x57003, 'Funko Pop Kratos', 'Figurine vinyle', 15.00, 'Figurine', 'N/A', 'Neuf', 'Funko', '2022-11-01', 'N/A');
INSERT INTO PRODUIT VALUES ('SWI-003', 0x47003, 'Metroid Dread', 'Action-Exploration', 49.99, 'Jeu', 'Switch', 'Neuf', 'Nintendo', '2021-10-08', 'N/A');

INSERT INTO RECOMMANDER (SKU_Produit, SKU_Produit_1) VALUES 
('PS5-001', 'PS5-003'), 
('SWI-001', 'SWI-003'), 
('PS5-002', 'FIG-003');