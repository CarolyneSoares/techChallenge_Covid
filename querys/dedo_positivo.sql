------------------------ Testes furo no dedo positivos ----------
WITH dados AS (
  select * from `techchallenge3covid.2020_COVID.Julho_2020`
  UNION ALL
  select * from `techchallenge3covid.2020_COVID.Agosto_2020`
  UNION ALL
  select * from `techchallenge3covid.2020_COVID.Setembro_2020`
),
sintomas AS (
  SELECT UF, CAPITAL, V1013, V1022, V1023, A002, A003, A004, A005, A006, A007, A008, A009, B0011, B0012, B0013, B0014, B0015, B0016, B0017, B0018, B0019, B00110, B00111, B00112, B00113, B002, B0031, B0032, B0033, B0034, B0035, B0036, B0037, B0041, B0042, B0043, B0044, B0045, B0046, B005, B006, B007, B008, B009A, B009B, B009C, B009D, B009E, B009F, B0101, B0102, B0103, B0104, B0105, B0106
  FROM dados
),
dedo AS (
  select * from sintomas
where B009D = 1
)
SELECT * FROM dedo;