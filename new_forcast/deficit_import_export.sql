
SELECT
    country,
    us_2024_exports::NUMERIC AS exports,
    us_2024_imports::NUMERIC AS imports,
    us_2024_deficit::NUMERIC AS deficit,
    ROUND((us_2024_exports::NUMERIC / NULLIF(us_2024_imports::NUMERIC, 0)), 2) AS export_to_import_ratio
FROM
    trump_teriffs
WHERE
    us_2024_exports::TEXT ~ '^[0-9.]+$'
    AND us_2024_imports::TEXT ~ '^[0-9.]+$'
ORDER BY
    us_2024_deficit::NUMERIC ASC
LIMIT 20;
