/*Trouver tous les officiers et intermédiaires qui ont une association */

SELECT 
    officer.name AS non_officier, intermediary.name AS nom_intermediaire
FROM 
    assoc_inter_offi
JOIN
    officer ON assoc_inter_offi.officer = officer.id
JOIN
    intermediary ON assoc_inter_offi.inter = intermediary.id