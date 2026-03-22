-- 1. Liste des produits "Console" dont le prix est supérieur à 400€ pour surveiller le segment haut de gamme.
SELECT Libelle_Produit, Prix_de_vente_TTC 
FROM PRODUIT 
WHERE Categorie = 'Console' AND Prix_de_vente_TTC > 400 
ORDER BY Prix_de_vente_TTC DESC;

-- 2. Identification des stocks critiques : Produits avec moins de 5 unités en stock dans le magasin 1.
SELECT SKU_Produit, Quantite_en_stock 
FROM STOCKER 
WHERE Id_MAGASIN = 1 AND Quantite_en_stock < 5;

-- 3. Ciblage clients : Liste des emails des clients possédant une carte 'Premium' pour une offre exclusive.
SELECT Email_Client 
FROM CARTE_FIDELITE 
WHERE Statu_Carte = 'Premium';

-- 4. Calendrier des sorties : Produits dont la sortie officielle est prévue entre mars et mai 2026.
SELECT Libelle_Produit, Date_Sortie_Officielle 
FROM PRODUIT 
WHERE Date_Sortie_Officielle BETWEEN '2026-03-01' AND '2026-05-31';

-- 5. Recherche de produits dérivés : Liste de toutes les figurines de la marque 'Funko' via un masque.
SELECT Libelle_Produit, Editeur_Marque 
FROM PRODUIT 
WHERE Categorie = 'Figurine' AND Editeur_Marque LIKE 'Funko%';