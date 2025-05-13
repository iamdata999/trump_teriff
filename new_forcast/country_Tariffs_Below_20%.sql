SELECT
    country,
    us_2024_deficit AS deficit,
    us_2024_exports AS exports,
    us_2024_imports AS imports,
    trump_tariffs_alleged,
    trump_response,
    ROUND(us_2024_exports::numeric / NULLIF(us_2024_imports::numeric, 0), 2) AS export_to_import_ratio
FROM trump_teriffs
WHERE trump_tariffs_alleged LIKE '1%' OR trump_tariffs_alleged = '0%'
ORDER BY deficit ASC;
