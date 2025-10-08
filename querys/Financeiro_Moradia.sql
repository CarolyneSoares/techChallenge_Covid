WITH uniao AS (
    SELECT 
        7 AS mes, 
        V1013, 
        A004 AS cor, 
        d0051, d0031, d0041, d0053, f001,
        f002a1, f002a2, f002a3, f002a4, f002a5,
        f0021, f0022
    FROM techchallenge3covid.2020_COVID.Julho_2020
    WHERE B009B = 1 OR B009D = 1 OR B009F = 1

    UNION ALL
    
    SELECT 
        8 AS mes, 
        V1013, 
        A004 AS cor, 
        d0051, d0031, d0041, d0053, f001,
        f002a1, f002a2, f002a3, f002a4, f002a5,
        f0021, f0022
    FROM techchallenge3covid.2020_COVID.Agosto_2020
    WHERE B009B = 1 OR B009D = 1 OR B009F = 1

    UNION ALL
    
    SELECT 
        9 AS mes, 
        V1013, 
        A004 AS cor, 
        d0051, d0031, d0041, d0053, f001,
        f002a1, f002a2, f002a3, f002a4, f002a5,
        f0021, f0022
    FROM techchallenge3covid.2020_COVID.Setembro_2020
    WHERE B009B = 1 OR B009D = 1 OR B009F = 1
)

SELECT *
FROM uniao;