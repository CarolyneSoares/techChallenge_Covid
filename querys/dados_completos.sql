--- Criando tabela "dados" com pesquisas de Julho, Agosto e Setembro
WITH dados AS (
select * from `techchallenge3covid.2020_COVID.Julho_2020`
UNION ALL
select * from `techchallenge3covid.2020_COVID.Agosto_2020`
union all
select * from `techchallenge3covid.2020_COVID.Setembro_2020`
)

SELECT * FROM dados;