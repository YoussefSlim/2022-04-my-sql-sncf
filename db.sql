-- On peut commenter un fichier sql en commençant la ligne par --
/* 
 on peut aussi faire des blocks
 */
-- DROP TABLE supprime une table et tout ce qu'il y a dedans, à utiliser avec précaution. L'option if exists évitera d'avoir des erreurs si on essaye de supprimer qqch qui n'existe pas
DROP TABLE IF EXISTS superhero;
DROP TABLE IF EXISTS creator;
-- create table permet de créer une table et directement toutes les colonnes qui vont avec
CREATE TABLE superhero (
    id serial PRIMARY KEY,
    pseudo text NOT NULL,
    gender text,
    city text,
    id_creator integer NOT NULL
);
CREATE TABLE creator (
    id serial PRIMARY KEY,
    first_name text,
    last_name text
);
-- on peut tout à fait ajouter une colonne après coup
ALTER TABLE creator
ADD COLUMN date_of_birth date;
-- Tout ce qu'on a écrit jusqu'ici sert uniquement à initialiser les tables, une fois le script de création des tables prêts, on le lance 1 seule fois
-- Plus tard on peu manipuler les données de nos tables
-- c'est quand même une bonne pratique d'entourer les champs avec des ""
INSERT INTO "creator" ("first_name", "last_name", "date_of_birth")
VALUES ('John', 'Doe', '1978-05-20');
('Nathan', 'Doe', '2000-05-20');
('Olivier', 'Doe', '1950-08-20');
('Andrée', 'Doe', '1933-02-20');
('Debora', 'Doe', '1988-03-20');
('Aline', 'Doe', '1990-03-20');
('Catherine', 'Doe', '2009-04-20');
INSERT INTO "superhero" ("pseudo", "gender", "city", "id_creator")
VALUES ('Spiderman', 'Homme', 'new york', 1),
    ('Wonderwoman', 'Femme', 'washington', 2),
    ('Hulk', 'Homme', 'detroit', 1);
('Hulkoa', 'Femme', 'detroit', 2);
('Hulkvs', 'Homme', 'detroit', 1);
('Batman', 'Homme', 'Gottam', 5);
('Superman', 'Femme', 'Metropolis', 1);
('Super Women ', 'Homme', 'Metropolis', 1);
('Tangy', 'Homme', 'Pariso', 3);
('HoHo', 'Homme', 'Metropolis', 1);
('Lantak', 'Homme', 'Metropolis', 7);
('Géant', 'Homme', 'Metropolis', 2);