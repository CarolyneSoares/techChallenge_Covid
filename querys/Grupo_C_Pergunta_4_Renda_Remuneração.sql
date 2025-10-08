-- 🔹 Comparação de Renda Habitual × Efetiva - Consolidado
WITH habitual AS (
  SELECT
    CASE C01011
      WHEN 0 THEN '0 - 100'
      WHEN 1 THEN '101 - 300'
      WHEN 2 THEN '301 - 600'
      WHEN 3 THEN '601 - 800'
      WHEN 4 THEN '801 - 1.600'
      WHEN 5 THEN '1.601 - 3.000'
      WHEN 6 THEN '3.001 - 10.000'
      WHEN 7 THEN '10.001 - 50.000'
      WHEN 8 THEN '50.001 - 100.000'
      WHEN 9 THEN 'Mais de 100.000'
      ELSE 'Não aplicável'
    END AS faixa_renda,
    COUNT(*) AS pessoas_habitual
  FROM `techchallenge3covid.2020_COVID.Consolidado_C`
  GROUP BY faixa_renda
),
efetiva AS (
  SELECT
    CASE C011A11
      WHEN 0 THEN '0 - 100'
      WHEN 1 THEN '101 - 300'
      WHEN 2 THEN '301 - 600'
      WHEN 3 THEN '601 - 800'
      WHEN 4 THEN '801 - 1.600'
      WHEN 5 THEN '1.601 - 3.000'
      WHEN 6 THEN '3.001 - 10.000'
      WHEN 7 THEN '10.001 - 50.000'
      WHEN 8 THEN '50.001 - 100.000'
      WHEN 9 THEN 'Mais de 100.000'
      ELSE 'Não aplicável'
    END AS faixa_renda,
    COUNT(*) AS pessoas_efetiva
  FROM `techchallenge3covid.2020_COVID.Consolidado_C`
  GROUP BY faixa_renda
)
SELECT
  h.faixa_renda,
  h.pessoas_habitual,
  e.pessoas_efetiva
FROM habitual h
FULL OUTER JOIN efetiva e
  ON h.faixa_renda = e.faixa_renda
ORDER BY h.faixa_renda;
