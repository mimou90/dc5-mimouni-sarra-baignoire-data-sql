/* Trouver le nombre d'entités associées à chaque intermédiaire*/
SELECT 
    intermediary.id AS ID,
    intermediary.name AS Nom_intermediaire,
    COUNT(assoc_inter_entity.entity) AS Nombre_entités
FROM
    intermediary
LEFT JOIN
    assoc_inter_entity ON intermediary.id = assoc_inter_entity.inter
GROUP BY
    intermediary.id, intermediary.name;