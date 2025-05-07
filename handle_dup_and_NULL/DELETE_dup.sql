DELETE FROM trump_teriffs a
USING trump_teriffs b
WHERE a.ctid < b.ctid  -- important: keep the earliest physical record
  AND a.country = b.country
  AND a.us_2024_deficit = b.us_2024_deficit
  AND a.us_2024_exports = b.us_2024_exports
  AND a.us_2024_imports = b.us_2024_imports
  AND a.trump_tariffs_alleged = b.trump_tariffs_alleged
  AND a.trump_response = b.trump_response
  AND ( (a.population IS NULL AND b.population IS NULL) OR (a.population = b.population) );

SELECT country, us_2024_deficit, us_2024_exports, us_2024_imports,
       trump_tariffs_alleged, trump_response, population,
       COUNT(*)
FROM trump_teriffs
GROUP BY country, us_2024_deficit, us_2024_exports, us_2024_imports,
         trump_tariffs_alleged, trump_response, population
HAVING COUNT(*) > 1;
-- This will show you the duplicates that were not removed by the above query.
-- If you see any duplicates, you may need to adjust the criteria in the DELETE query.
