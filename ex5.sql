/*. Sélectionner les entités créées après une certaine date (par exemple, le 1er janvier 2000) :
 */

SELECT *
FROM 
    Entity
WHERE 
    incorporation_date > '2000-01-01'