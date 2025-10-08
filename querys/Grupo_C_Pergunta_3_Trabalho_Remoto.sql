-- Consolidado
SELECT
  CASE
    WHEN C013 = 1 THEN 'Em home office'
    WHEN C013 = 2 THEN 'Não em home office'
    ELSE 'Não aplicável'
  END AS situacao,
  COUNT(*) AS total
FROM `techchallenge3covid.2020_COVID.Consolidado_C`
GROUP BY situacao
ORDER BY total DESC;
