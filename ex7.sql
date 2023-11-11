/*Lister les entités et leurs pays d'origine*/

SELECT 
    intermediary.name as Entités, country.country as Pays_Origine
FROM 
    intermediary
INNER JOIN address ON 
    intermediary.id_address = address.id_address
INNER JOIN 
    country ON address.countries == country.code
WHERE 
    address.address IS NOT NULL AND address.address != ''
AND 
    country.code IS NOT NULL AND country.code != ''