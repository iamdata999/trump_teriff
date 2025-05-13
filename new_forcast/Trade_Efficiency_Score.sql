SELECT
    country,
    us_2024_exports AS exports,
    us_2024_imports AS imports,
    us_2024_deficit AS deficit,
    ROUND(us_2024_exports::numeric / NULLIF(us_2024_imports::numeric, 0), 2) AS export_to_import_ratio,
    ROUND((us_2024_exports::numeric / NULLIF(us_2024_imports::numeric, 0)) - ABS(us_2024_deficit::numeric) / 10000, 2) AS trade_efficiency_score
FROM trump_teriffs
WHERE us_2024_exports != '0' AND us_2024_imports != '0'
ORDER BY trade_efficiency_score DESC
LIMIT 20;