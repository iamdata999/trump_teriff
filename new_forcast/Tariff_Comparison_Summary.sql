SELECT 
  trump_tariffs_alleged, 
  trump_response, 
  COUNT(*) AS country_count
FROM trump_teriffs
GROUP BY trump_tariffs_alleged, trump_response
ORDER BY country_count DESC;
