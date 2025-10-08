-- 🔹 Impacto Geral na Renda - Consolidado
WITH base AS (
  SELECT
    C01011 AS renda_habitual,
    C011A11 AS renda_efetiva
  FROM `techchallenge3covid.2020_COVID.Consolidado_C`
)
SELECT
  CASE
    WHEN renda_efetiva IS NULL OR renda_habitual IS NULL THEN 'Não aplicável'
    WHEN renda_efetiva < renda_habitual THEN 'Perdeu renda'
    WHEN renda_efetiva = renda_habitual THEN 'Manteve renda'
    WHEN renda_efetiva > renda_habitual THEN 'Ganhou renda'
  END AS impacto_renda,
  COUNT(*) AS pessoas,
  ROUND(100 * COUNT(*) / SUM(COUNT(*)) OVER(), 2) AS percentual
FROM base
GROUP BY impacto_renda
ORDER BY pessoas DESC;