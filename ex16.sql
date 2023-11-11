/*Requête 16. Trouver le nombre d'entités par pays*/

SELECT
    country.country AS Pays,
    COUNT(entity.id) AS Nb_entités
FROM
    entity
INNER JOIN
    address ON entity.id_address = address.id_address
INNER JOIN
    country ON address.countries = country.code
GROUP BY
    country.country;