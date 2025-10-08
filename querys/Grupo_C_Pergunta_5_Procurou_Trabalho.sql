-- 🔹 Procurou Trabalho? - Consolidado
SELECT
  CASE 
    WHEN C015 = 1 THEN 'Sim, procurou trabalho'
    WHEN C015 = 2 THEN 'Não procurou trabalho'
    ELSE 'Não aplicável'
  END AS procurou_trabalho,
  COUNT(*) AS pessoas
FROM `techchallenge3covid.2020_COVID.Consolidado_C`
GROUP BY procurou_trabalho
ORDER BY pessoas DESC;
