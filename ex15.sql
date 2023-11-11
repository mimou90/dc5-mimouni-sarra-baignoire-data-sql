/*Trouver les entités et officiers associés qui ont une relation avant une certaine date (par exemple, le 1er janvier 2010)*/


SELECT
    entity.name AS Entités,
    officer.name AS Officiers,
    assoc_officer_entity.start_date AS Date
FROM
    assoc_officer_entity
INNER JOIN
    entity ON assoc_officer_entity.entity = entity.id
INNER JOIN
    officer ON assoc_officer_entity.officer = officer.id
WHERE
    assoc_officer_entity.start_date < '2010-01-01'