-- 🔹 Situação de Trabalho - Consolidado (Julho a Setembro/2020)
SELECT 
  CASE 
    WHEN C001 = 1 THEN 'Trabalhou'
    WHEN C001 = 2 THEN 'Não trabalhou'
    ELSE 'Não aplicável'
  END AS situacao,
  COUNT(*) AS total
FROM `techchallenge3covid.2020_COVID.Consolidado_C`
GROUP BY situacao
ORDER BY total DESC;