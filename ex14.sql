/*Trouver les entités qui ont été actives pendant plus de 10 ans (en supposant que "lifetime" est en années)*/

SELECT
  entity.name AS Nom, entity.lifetime AS Durée
FROM
  entity
WHERE
  entity.lifetime > 10

/*Avec conversion des jours en année*/

SELECT
  entity.name AS Nom, entity.lifetime AS Durée,
  entity.lifetime / 365.25 AS Durée_en_année
FROM
  entity
WHERE
  entity.lifetime > 10;
