UPDATE trump_teriffs
SET 
  us_2024_deficit = COALESCE(us_2024_deficit, 0),
  us_2024_exports = COALESCE(us_2024_exports, 0),
  us_2024_imports = COALESCE(us_2024_imports, 0),
  trump_tariffs_alleged = COALESCE(trump_tariffs_alleged, '0%'),
  trump_response = COALESCE(trump_response, '0%'),
  population = COALESCE(population, 0);



SELECT COUNT(*) 
FROM trump_teriffs
WHERE us_2024_deficit IS NULL 
   OR us_2024_exports IS NULL 
   OR us_2024_imports IS NULL 
   OR trump_tariffs_alleged IS NULL 
   OR trump_response IS NULL 
   OR population IS NULL;


SELECT*
FROM trump_teriffs




