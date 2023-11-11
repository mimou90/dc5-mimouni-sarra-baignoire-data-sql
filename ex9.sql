/*Lister les entités et leurs sources */

SELECT 
    entity.name AS entité, source.source AS source
FROM 
    entity
INNER JOIN 
    source ON entity.source = source.id