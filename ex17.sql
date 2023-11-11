/*Lister les intermédiaires qui ont des associations avec plus de 5 entités */

SELECT
    intermediary.name AS Non_Intermédiaire,
    COUNT(DISTINCT assoc_inter_entity.entity) AS Nombre_Entités
FROM
    intermediary
LEFT JOIN
    assoc_inter_entity ON intermediary.id = assoc_inter_entity.inter
GROUP BY
    intermediary.name
HAVING
    COUNT(DISTINCT assoc_inter_entity.entity) > 5;