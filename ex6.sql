/*. Trouver tous les intermédiaires et leurs adresses associées*/

SELECT 
    intermediary.name, address.address
FROM 
    intermediary
INNER JOIN address ON 
    intermediary.id_address = address.id_address
WHERE 
    address.address IS NOT NULL AND address.address != ''