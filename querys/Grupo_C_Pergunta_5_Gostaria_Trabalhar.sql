-- 🔹 Gostaria de Ter Trabalhado? - Consolidado
SELECT
  CASE 
    WHEN C017A = 1 THEN 'Sim, gostaria de ter trabalhado'
    WHEN C017A = 2 THEN 'Não gostaria de ter trabalhado'
    ELSE 'Não aplicável'
  END AS gostaria_trabalhar,
  COUNT(*) AS pessoas
FROM `techchallenge3covid.2020_COVID.Consolidado_C`
GROUP BY gostaria_trabalhar
ORDER BY pessoas DESC;