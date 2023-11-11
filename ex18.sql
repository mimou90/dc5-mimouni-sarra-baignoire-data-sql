/*Trouver les entités qui ont des associations avec des officiers de plus de 2 pays différents */

SELECT
    entity.name AS Entités,
    COUNT(DISTINCT officer.country_id) AS "Nombre de pays"
FROM
    entity
JOIN
    assoc_officer_entity ON entity.id = assoc_officer_entity.entity
JOIN
    officer ON assoc_officer_entity.officer = officer.id
GROUP BY
    entity.name
HAVING
    COUNT(DISTINCT officer.country_id) > 2;