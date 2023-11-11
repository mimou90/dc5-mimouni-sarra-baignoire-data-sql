/*  Sélectionner tous les officiers d'un pays spécifique (le pays avec l'ID 5)  .*/

SELECT name
FROM 
    officer
WHERE 
    country_id = 5