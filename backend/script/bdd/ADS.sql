-- SQLite
CREATE TABLE ADS (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title varchar(50) NOT NULL,
    description TEXT,
    price INTEGER,
    picture varchar(128),
    location varchar(50),
    category  INTEGER,
    date DATE
);


INSERT INTO ADS (title, description, price, picture, location, category, date)
VALUES
  ('iPhone 13 Pro', 'iPhone 13 Pro 256 Go en excellent état', 900, 'iphone.jpg', 'Paris', 1, '2023-09-20'),
    ('Appartement à louer', 'Appartement 2 pièces, proche du centre-ville', 800, 'appartement.jpg', 'Lyon', 2, '2023-09-21'),
    ('Vélo de montagne', 'Vélo de montagne tout suspendu, en parfait état', 300, 'velo.jpg', 'Bordeaux', 3, '2023-09-22'),
    ('Ordinateur portable Dell', 'Ordinateur portable Dell XPS 15, 16 Go de RAM', 1200, 'dell.jpg', 'Paris', 4, '2023-09-23'),
    ('Studio meublé', 'Studio meublé, toutes charges comprises', 600, 'studio.jpg', 'Lyon', 2, '2023-09-24'),
    ('Table de salle à manger', 'Table en bois massif avec 6 chaises assorties', 250, 'table.jpg', 'Bordeaux', 5, '2023-09-25'),
    ('Télévision Samsung 55 pouces', 'Télévision 4K, Smart TV avec télécommande', 600, 'tv.jpg', 'Paris', 5, '2023-09-26'),
    ('Voiture d occasion', 'Toyota Camry 2019, en excellent état', 15000, 'voiture.jpg', 'Lyon', 6, '2023-09-27'),
    ('Cuisine équipée', 'Cuisine moderne avec électroménagers inclus', 2500, 'cuisine.jpg', 'Bordeaux', 7, '2023-09-28'),
    ('Canapé en cuir', 'Canapé en cuir véritable, 3 places', 800, 'canape.jpg', 'Paris', 8, '2023-09-29'),
    ('MacBook Pro 13 pouces', 'MacBook Pro avec processeur M1, 512 Go de stockage', 1400, 'macbook.jpg', 'Lyon', 4, '2023-09-30'),
    ('Appartement de luxe', 'Appartement de 4 pièces avec vue sur la rivière', 2500, 'appartement_luxe.jpg', 'Bordeaux', 2, '2023-10-01'),
    ('Vélo de route', 'Vélo de route en carbone avec groupe Shimano 105', 1200, 'velo_route.jpg', 'Paris', 3, '2023-10-02'),
    ('Tablet Samsung Galaxy', 'Tablet Samsung Galaxy Tab S7, écran AMOLED', 400, 'tablet.jpg', 'Lyon', 9, '2023-10-03'),
    ('Piano à queue Steinway', 'Piano à queue Steinway & Sons, son exceptionnel', 15000, 'piano.jpg', 'Bordeaux', 10, '2023-10-04'),
    ('Chaise de bureau ergonomique', 'Chaise de bureau avec support lombaire réglable', 200, 'chaise_bureau.jpg', 'Paris', 11, '2023-10-05'),
    ('Guitare acoustique', 'Guitare acoustique de qualité professionnelle', 800, 'guitare.jpg', 'Bordeaux', 12, '2023-10-06'),
    ('Montre Rolex Submariner', 'Montre de plongée Rolex Submariner en acier', 10000, 'rolex.jpg', 'Paris', 13, '2023-10-07'),
    ('Ordinateur de jeu', 'PC de jeu haut de gamme avec carte graphique RTX', 1800, 'ordinateur_gaming.jpg', 'Lyon', 14, '2023-10-08'),
    ('Sac à main de créateur', 'Sac à main de créateur en cuir véritable', 500, 'sac.jpg', 'Bordeaux', 15, '2023-10-09');

-- AFFICHAGE DES ANNONCES
SELECT * FROM ADS;

-- AFFICHAGE DES ANNONCES PAR VILLE
SELECT * FROM ADS WHERE LOWER(location) = 'bordeaux';

-- suppresion des annonce avec prix superieur a un montant
-- DECLARE @montant AS  INTEGER=1000;-- Déclarez la variable et attribuez-lui une valeur
DELETE FROM ADS WHERE price > 1000 ;

-- METTRE aj our les annonce du 1er september avec un rix 0
UPDATE ADS SET price=0 WHERE date='2023-09-01' 

-- AFFICHAGE DE la moynne des prix des annonces a paris 
SELECT AVG(price) FROM ADS WHERE LOWER(location) = 'paris';

--BONUS DE la moynne des prix des annonces par ville 
SELECT location, AVG(price) FROM ADS GROUP BY location;

