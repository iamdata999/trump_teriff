SELECT
    country,
    us_2024_deficit AS deficit,
    us_2024_exports AS exports,
    us_2024_imports AS imports,
    trump_tariffs_alleged,
    trump_response,
    ROUND(us_2024_exports::numeric / NULLIF(us_2024_imports::numeric, 0), 2) AS export_to_import_ratio
FROM trump_teriffs
WHERE trump_tariffs_alleged LIKE '2%' OR trump_tariffs_alleged LIKE '3%' OR trump_tariffs_alleged LIKE '4%' 
   OR trump_tariffs_alleged LIKE '5%' OR trump_tariffs_alleged LIKE '6%' OR trump_tariffs_alleged LIKE '7%' 
   OR trump_tariffs_alleged LIKE '8%' OR trump_tariffs_alleged LIKE '9%'
ORDER BY deficit ASC;

