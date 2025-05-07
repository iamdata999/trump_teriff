<<<<<<< HEAD
SELECT
  SUM(CASE WHEN country IS NULL THEN 1 ELSE 0 END) AS country_nulls,
  SUM(CASE WHEN us_2024_deficit IS NULL THEN 1 ELSE 0 END) AS deficit_nulls,
  SUM(CASE WHEN us_2024_exports IS NULL THEN 1 ELSE 0 END) AS exports_nulls,
  SUM(CASE WHEN us_2024_imports IS NULL THEN 1 ELSE 0 END) AS imports_nulls,
  SUM(CASE WHEN trump_tariffs_alleged IS NULL THEN 1 ELSE 0 END) AS alleged_nulls,
  SUM(CASE WHEN trump_response IS NULL THEN 1 ELSE 0 END) AS response_nulls,
  SUM(CASE WHEN population IS NULL THEN 1 ELSE 0 END) AS population_nulls
FROM trump_teriffs;
=======
SELECT
  SUM(CASE WHEN country IS NULL THEN 1 ELSE 0 END) AS country_nulls,
  SUM(CASE WHEN us_2024_deficit IS NULL THEN 1 ELSE 0 END) AS deficit_nulls,
  SUM(CASE WHEN us_2024_exports IS NULL THEN 1 ELSE 0 END) AS exports_nulls,
  SUM(CASE WHEN us_2024_imports IS NULL THEN 1 ELSE 0 END) AS imports_nulls,
  SUM(CASE WHEN trump_tariffs_alleged IS NULL THEN 1 ELSE 0 END) AS alleged_nulls,
  SUM(CASE WHEN trump_response IS NULL THEN 1 ELSE 0 END) AS response_nulls,
  SUM(CASE WHEN population IS NULL THEN 1 ELSE 0 END) AS population_nulls
FROM trump_teriffs;
>>>>>>> 80d131064b6461e3cc8c87b67e43980b0dc711f4
