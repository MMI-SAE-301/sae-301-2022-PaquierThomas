--
-- code pour la création des tables
--

-- Création de la table des matériaux
CREATE TABLE Matériaux
(
    Id_Materiaux      uuid,
    materiaux_libelle VARCHAR(50),
    PRIMARY KEY (Id_Materiaux)
);

-- Création de la table montre
CREATE TABLE Montre
(
    Id_Montre          uuid,
    écran              VARCHAR(50),
    boitier            VARCHAR(50),
    bracelet           VARCHAR(50),
    montre_commandee   boolean,
    favori             boolean,
    materiaux_bracelet uuid,
    materiaux_boitier  uuid,
    user_id            uuid,
    PRIMARY KEY (Id_Montre),
    FOREIGN KEY (materiaux_bracelet) REFERENCES Matériaux (Id_Materiaux),
    FOREIGN KEY (materiaux_boitier) REFERENCES Matériaux (Id_Materiaux),
    foreign key (user_id) references auth.users (id)

);







--
-- code pour la création des vues
--


--Toutes les chaussures ayant le matériaux tissu
CREATE VIEW allTissu
AS
SELECT Id_Montre,
       écran,
       boitier,
       bracelet,
       montre_commandee,
       favori,
       materiaux_bracelet,
       materiaux_boitier

FROM Montre

where materiaux_bracelet = '3064fd19-069b-4977-b80d-6c91d4e02501'
   or materiaux_boitier = '3064fd19-069b-4977-b80d-6c91d4e02501'

-- Toutes les chaussures ayant le matériaux cuir
CREATE VIEW allCuir
AS
SELECT Id_Montre,
       écran,
       boitier,
       bracelet,
       montre_commandee,
       favori,
       materiaux_bracelet,
       materiaux_boitier

FROM Montre

where materiaux_bracelet = '93daca95-15e7-4459-8e87-c65c5e55a4b8'
   or materiaux_boitier = '93daca95-15e7-4459-8e87-c65c5e55a4b8'


-- Liste de toutes les montre commandées
CREATE VIEW MontreCommande
AS
SELECT Id_Montre,
       user_id
FROM Montre
WHERE montre_commandee = true;

-- Référence toutes les chaussures ayant un matériau
CREATE VIEW MontreMatériaux
AS
SELECT Id_Montre,
       écran,
       boitier,
       bracelet,
       materiaux_bracelet,
       materiaux_boitier,
       materiaux_boitier.materiaux_libelle  as materiaux_boitier_libelle,
       materiaux_bracelet.materiaux_libelle as materiaux_bracelet_libelle

FROM Montre,
     Matériaux as materiaux_boitier,
     Matériaux as materiaux_bracelet

WHERE Montre.materiaux_boitier = materiaux_boitier.Id_Materiaux
  AND Montre.materiaux_bracelet = materiaux_bracelet.Id_Materiaux

-- Liste de toutes les montre mises en favorites
CREATE VIEW MontreFavorite
AS
SELECT Id_Montre,
       user_id
FROM Montre
WHERE favori = true;


--
-- code pour la création des policies
--

-- Restreindre les mise à jours des montres (seuls les utilisateurs l'ayant crée peuvent la modifier)
CREATE POLICY "Les utilisateurs peuvent modifier les montres qu'ils ont crée"
    on Montre for update using (
    auth.uid() = user_id
    );

-- Seuls les personnes connectées peuvent ajouter des montres
CREATE POLICY "ajout des montres par les utilisateurs connectés"
    ON public.montre
    FOR INSERT
    TO authenticated
    WITH CHECK (true);

-- Permet de voir que ces montres
CREATE POLICY "Permet de voir ces propres chaussures" ON "public"."montre"
    AS PERMISSIVE FOR SELECT
    TO public
    USING ((uid() = user_id));

-- Supprimer ses propres Montres(sécurité)
CREATE POLICY "Supprimer ses propres montres (sécurité)" ON "public"."montre"
AS PERMISSIVE FOR DELETE
TO public
USING (auth.uid() = user_id)
