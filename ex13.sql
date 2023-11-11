/* Lister les intermédiaires et le nombre d'entités et d'officiers associés*/

SELECT
    intermediary.name AS Intermedaire,
    COUNT(DISTINCT assoc_inter_entity.entity) AS Nombre_entités,
    COUNT(DISTINCT assoc_officer_entity.officer) AS Nombre_officiers
FROM
    intermediary
LEFT JOIN
    assoc_inter_entity ON intermediary.id = assoc_inter_entity.inter
LEFT JOIN
    assoc_officer_entity ON assoc_inter_entity.entity = assoc_officer_entity.entity
GROUP BY
    intermediary.name;