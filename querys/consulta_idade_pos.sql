-- Idades com resultados positivos
WITH uniao AS (
  SELECT V1013 AS mes, A002 AS idade
  FROM `techchallenge3covid.2020_COVID.Julho_2020`
  WHERE B009B = 1 OR B009D = 1 OR B009F = 1

  UNION ALL

  SELECT V1013 AS mes, A002 AS idade
  FROM `techchallenge3covid.2020_COVID.Agosto_2020`
  WHERE B009B = 1 OR B009D = 1 OR B009F = 1

  UNION ALL

  SELECT V1013 AS mes, A002 AS idade
  FROM `techchallenge3covid.2020_COVID.Setembro_2020`
  WHERE B009B = 1 OR B009D = 1 OR B009F = 1
)
SELECT *
FROM uniao;



