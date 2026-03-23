-- 1. Ajout de la colonne manquante pour les vêtements
ALTER TABLE PRODUIT 
ADD COLUMN Taille VARCHAR(5) DEFAULT 'N/A';

-- 2. Correction des contraintes Clients et Fidélité
ALTER TABLE CLIENT
ADD CONSTRAINT chk_email_format CHECK (Email_Client LIKE '%@%.%');

ALTER TABLE CARTE_FIDELITE
ADD CONSTRAINT chk_points_positifs CHECK (Point_Cumules >= 0);

ALTER TABLE CARTE_FIDELITE
ADD CONSTRAINT chk_statut_carte CHECK (Statu_Carte IN ('Star', 'Classic', 'Premium'));

-- 3. Contraintes sur les Produits
ALTER TABLE PRODUIT
ADD CONSTRAINT chk_prix_positif CHECK (Prix_de_vente_TTC > 0);

ALTER TABLE PRODUIT
ADD CONSTRAINT chk_categorie_valide CHECK (Categorie IN ('Jeu', 'Console', 'Figurine', 'Vêtement'));

ALTER TABLE PRODUIT
ADD CONSTRAINT chk_etat_produit CHECK (Etat_Produit IN ('Neuf', 'Occasion'));

ALTER TABLE PRODUIT
ADD CONSTRAINT chk_plateforme_valide CHECK (Plateforme IN ('PS5', 'Switch', 'Xbox', 'PC', 'N/A'));

-- Contrainte sur la taille (maintenant que la colonne existe)
ALTER TABLE PRODUIT
ADD CONSTRAINT chk_taille_vetement CHECK (Taille IN ('S', 'M', 'L', 'XL', 'N/A'));

-- 4. Contraintes sur les Ventes et Stocks
ALTER TABLE ACHETER
ADD CONSTRAINT chk_quantite_achat CHECK (Quantite_Achetee > 0);

ALTER TABLE STOCKER
ADD CONSTRAINT chk_stock_non_negatif CHECK (Quantite_en_stock >= 0);

-- 5. Contraintes sur les Précommandes
ALTER TABLE PRECOMMANDE
ADD CONSTRAINT chk_acompte_positif CHECK (Montant_Acompte >= 0);

-- 6. Contraintes sur la localisation (Correction pour BIGINT)
ALTER TABLE MAGASIN
ADD CONSTRAINT chk_code_postal CHECK (Code_Postal BETWEEN 1000 AND 99999);