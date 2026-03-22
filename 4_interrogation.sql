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

-- 6. Chiffre d'affaires total théorique : Valeur totale du stock de l'entreprise (Prix * Quantité).
SELECT SUM(p.Prix_de_vente_TTC * s.Quantite_en_stock) AS Valeur_Totale_Stock
FROM PRODUIT p
JOIN STOCKER s ON p.SKU_Produit = s.SKU_Produit;

-- 7. Performance par magasin : Nombre de ventes réalisées par chaque point de vente.
SELECT Id_MAGASIN, COUNT(*) AS Nombre_Ventes
FROM ACHETER
GROUP BY Id_MAGASIN;

-- 8. Panier moyen : Montant moyen dépensé par transaction.
SELECT AVG(Montant_Total_Ticket) AS Panier_Moyen
FROM ACHETER;

-- 9. Popularité des plateformes : Nombre de références de jeux disponibles par plateforme.
SELECT Plateforme, COUNT(*) AS Nb_Jeux
FROM PRODUIT
WHERE Categorie = 'Jeu'
GROUP BY Plateforme
HAVING COUNT(*) > 2; -- On ne garde que les plateformes avec plus de 2 jeux

-- 10. Fidélité : Nombre de points de fidélité cumulés en moyenne par statut de carte.
SELECT Statu_Carte, AVG(Point_Cumules) AS Moyenne_Points
FROM CARTE_FIDELITE
GROUP BY Statu_Carte;

-- 11. Détail des ventes : Affiche le nom du client, le libellé du produit et le nom du magasin pour chaque transaction.
SELECT c.Nom_Client, p.Libelle_Produit, m.Nom_Magasin
FROM ACHETER a
JOIN CLIENT c ON a.Email_Client = c.Email_Client
JOIN PRODUIT p ON a.SKU_Produit = p.SKU_Produit
JOIN MAGASIN m ON a.Id_MAGASIN = m.Id_MAGASIN;

-- 12. Produits jamais vendus : Identification des références en stock qui n'ont encore généré aucune vente (Jointure Externe).
SELECT p.Libelle_Produit
FROM PRODUIT p
LEFT JOIN ACHETER a ON p.SKU_Produit = a.SKU_Produit
WHERE a.Num_Ticket_Caisse IS NULL;

-- 13. Suivi des précommandes : Liste des clients ayant versé un acompte avec le nom du produit réservé.
SELECT c.Nom_Client, p.Libelle_Produit, pre.Montant_Acompte
FROM PRECOMMANDE pre
JOIN CLIENT c ON pre.Email_Client = c.Email_Client
JOIN PRODUIT p ON pre.SKU_Produit = p.SKU_Produit;

-- 14. Localisation des stocks : Voir dans quels magasins se trouve le jeu 'Elden Ring'.
SELECT m.Nom_Magasin, m.Ville, s.Quantite_en_stock
FROM STOCKER s
JOIN MAGASIN m ON s.Id_MAGASIN = m.Id_MAGASIN
JOIN PRODUIT p ON s.SKU_Produit = p.SKU_Produit
WHERE p.Libelle_Produit = 'Elden Ring';

-- 15. Recommandations croisées : Affiche les produits recommandés pour chaque produit (Association récursive).
SELECT p1.Libelle_Produit AS Produit_Principal, p2.Libelle_Produit AS Produit_Recommande
FROM RECOMMANDER r
JOIN PRODUIT p1 ON r.SKU_Produit = p1.SKU_Produit
JOIN PRODUIT p2 ON