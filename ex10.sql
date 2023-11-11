/*Trouver tous les officiers qui n'ont pas d'url associée */

SELECT 
    officer.name 
FROM 
    officer
WHERE
    officer.url IS NULL;
