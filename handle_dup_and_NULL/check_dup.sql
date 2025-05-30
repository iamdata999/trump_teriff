<<<<<<< HEAD
SELECT 
  country, 
  us_2024_deficit, 
  us_2024_exports, 
  us_2024_imports, 
  trump_tariffs_alleged, 
  trump_response, 
  population, 
  COUNT(*) AS occurrences
FROM trump_teriffs
GROUP BY 
  country, 
  us_2024_deficit, 
  us_2024_exports, 
  us_2024_imports, 
  trump_tariffs_alleged, 
  trump_response, 
  population
HAVING COUNT(*) > 1;

SELECT SUM(occurrences) - COUNT(*) AS total_duplicates
FROM (
  SELECT COUNT(*) AS occurrences
  FROM trump_teriffs
  GROUP BY country, us_2024_deficit, us_2024_exports, us_2024_imports, trump_tariffs_alleged, trump_response, population
  HAVING COUNT(*) > 1
) dupes;

SELECT country, us_2024_deficit, us_2024_exports, us_2024_imports,
       trump_tariffs_alleged, trump_response, population,
       COUNT(*) AS occurrences
FROM trump_teriffs
GROUP BY country, us_2024_deficit, us_2024_exports, us_2024_imports,
         trump_tariffs_alleged, trump_response, population
HAVING COUNT(*) > 1;

=======
SELECT 
  country, 
  us_2024_deficit, 
  us_2024_exports, 
  us_2024_imports, 
  trump_tariffs_alleged, 
  trump_response, 
  population, 
  COUNT(*) AS occurrences
FROM trump_teriffs
GROUP BY 
  country, 
  us_2024_deficit, 
  us_2024_exports, 
  us_2024_imports, 
  trump_tariffs_alleged, 
  trump_response, 
  population
HAVING COUNT(*) > 1;

SELECT SUM(occurrences) - COUNT(*) AS total_duplicates
FROM (
  SELECT COUNT(*) AS occurrences
  FROM trump_teriffs
  GROUP BY country, us_2024_deficit, us_2024_exports, us_2024_imports, trump_tariffs_alleged, trump_response, population
  HAVING COUNT(*) > 1
) dupes;

SELECT country, us_2024_deficit, us_2024_exports, us_2024_imports,
       trump_tariffs_alleged, trump_response, population,
       COUNT(*) AS occurrences
FROM trump_teriffs
GROUP BY country, us_2024_deficit, us_2024_exports, us_2024_imports,
         trump_tariffs_alleged, trump_response, population
HAVING COUNT(*) > 1;

>>>>>>> 80d131064b6461e3cc8c87b67e43980b0dc711f4
