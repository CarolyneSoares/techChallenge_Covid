-- 🔹 Motivo do Afastamento - Consolidado (apenas quem declarou estar afastado)
SELECT
  CASE
    WHEN C003 = 1 THEN 'Quarentena/isolamento/distanciamento/férias coletivas'
    WHEN C003 = 2 THEN 'Férias, folga ou jornada variável'
    WHEN C003 = 3 THEN 'Licença maternidade ou paternidade'
    WHEN C003 = 4 THEN 'Licença remunerada por saúde/acidente'
    WHEN C003 = 5 THEN 'Outro tipo de licença remunerada'
    WHEN C003 = 6 THEN 'Afastamento do próprio negócio sem remuneração previdenciária'
    WHEN C003 = 7 THEN 'Fatores ocasionais (mau tempo, transporte, etc.)'
    WHEN C003 = 8 THEN 'Outro motivo'
    ELSE 'Não aplicável'
  END AS afastamento,
  COUNT(*) AS pessoas
FROM `techchallenge3covid.2020_COVID.Consolidado_C`
WHERE C002 = 1 -- somente quem estava afastado
GROUP BY afastamento
ORDER BY pessoas DESC;
