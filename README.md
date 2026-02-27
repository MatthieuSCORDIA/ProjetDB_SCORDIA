# ProjetDB\_SCORDIA





Projet Base de Données - Magasin de Jeux Vidéo



Partie 1 : Analyse des besoins



Le prompt utilisé:



Tu travailles dans le domaine de la distribution de produits culturels et technologiques. Ton entreprise a comme activité de vendre des jeux vidéo neufs et d'occasion, des consoles de jeux, ainsi que des produits dérivés (figurines, vêtements, accessoires de collection). 

C’est une entreprise comme Micromania-Zing. Les données sont collectées sur les clients et leurs cartes de fidélité, le catalogue de jeux et produits dérivés, les stocks par magasin, les ventes réalisées et les précommandes des nouveautés. 

Inspire-toi du site web suivant : https://www.micromania.fr/. 

Ton entreprise veut appliquer MERISE pour concevoir un système d'information. 

Tu es chargé de la partie analyse, c’est-à-dire de collecter les besoins auprès de l’entreprise. 

Elle a fait appel à un étudiant en ingénierie informatique pour réaliser ce projet, tu dois lui fournir les informations nécessaires pour qu’il applique ensuite lui-même les étapes suivantes de conception et développement de la base de données. 

D’abord, établis les règles de gestions des données de ton entreprise, sous la forme d'une liste à puce. 

Elle doit correspondre aux informations que fournit quelqu’un qui connaît le fonctionnement de l’entreprise, mais pas comment se construit un système d’information. 

Ensuite, à partir de ces règles, fournis un dictionnaire de données brutes avec les colonnes suivantes, regroupées dans un tableau : signification de la donnée, type, taille en nombre de caractères ou de chiffres. 

Il doit y avoir entre 25 et 35 données. Il sert à fournir des informations supplémentaires sur chaque donnée (taille et type) mais sans a priori sur comment les données vont être modélisées ensuite. 

Fournis donc les règles de gestion et le dictionnaire de données. 







Les règles de gestion



Ces règles dictent comment l'entreprise fonctionne au quotidien et serviront de base pour établir les relations entre les futurs objets du système.



Identité et Fidélité : Chaque client possède un compte unique identifié par un email. S'il possède une carte de fidélité, celle-ci a un niveau (Mégacarte : Star, Classic, ou Premium) qui détermine ses avantages.



Cumul de Points : Un achat de produit rapporte des points de fidélité selon un ratio simple (ex: 1€ = 10 points). Ces points peuvent être transformés en bons d'achat.



Le Catalogue Produit : Un produit est défini par un nom, une description, un prix de vente et une catégorie (Jeu, Console, Figurine, Vêtement).



Spécificité des Jeux : Pour les jeux vidéo, on doit impérativement préciser la plateforme (PS5, Switch, Xbox, PC) et l'éditeur.



Gestion de l'Occasion : Un même jeu (même code-barres éditeur) peut être vendu en état "Neuf" ou "Occasion". Le prix de l'occasion est systématiquement inférieur au prix du neuf.



Réseau de Magasins : L'entreprise dispose de plusieurs points de vente physiques. Chaque magasin a un nom, une adresse et un numéro de téléphone.



Stocks Localisés : Le stock n'est pas global ; on doit savoir exactement combien d'unités d'un produit sont disponibles dans chaque magasin spécifique.



Processus de Vente : Une vente est associée à un client (si identifié), un magasin, une date et une heure. Elle peut contenir un ou plusieurs produits en différentes quantités.



Précommandes : Les clients peuvent réserver un produit avant sa sortie officielle. On doit enregistrer la date de la précommande et savoir si un acompte a été versé pour garantir la réservation.



Produits Dérivés : Pour les vêtements, on doit gérer la taille (S, M, L, XL), et pour les figurines, la marque (Funko, Banpresto, etc.).







Le dictionnaire de données:



Signification de la donnée,Type,Taille (caract.)

Adresse email du client,Alphanumérique,100

Nom de famille du client,Alphabétique,50

Prénom du client,Alphabétique,50

Date de naissance du client,Date,10

Numéro de téléphone mobile,Numérique,10

Numéro de carte de fidélité,Alphanumérique,20

Nombre de points de fidélité cumulés,Entier,8

"Statut de la carte (Star, Classic, Premium)",Alphabétique,15

Référence interne du produit (SKU),Alphanumérique,15

Code-barres international (EAN),Numérique,13

Libellé complet du produit,Alphanumérique,150

Description détaillée,Texte,500

Prix de vente TTC,"Décimal (9,2)",11

"Catégorie de produit (Jeu, Goodies...)",Alphabétique,30

"Plateforme (PS5, Switch...)",Alphanumérique,20

État du produit (Neuf ou Occasion),Alphabétique,10

Éditeur ou Marque,Alphanumérique,50

Taille (pour les vêtements),Alphanumérique,5

Nom du magasin,Alphanumérique,50

Ville du magasin,Alphabétique,50

Code postal du magasin,Numérique,5

Quantité en stock,Entier,6

Numéro de ticket de caisse,Alphanumérique,20

Date de la transaction,Date,10

Heure de la transaction,Heure,8

Montant total de la vente,"Décimal (9,2)",11

Quantité de produits achetés,Entier,3

Numéro de précommande,Alphanumérique,20

Date de sortie officielle du produit,Date,10

Montant de l'acompte versé,"Décimal (9,2)",11

Date de la précommande,Date,10



