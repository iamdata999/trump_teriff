<<<<<<< HEAD
SELECT 
  trump_tariffs_alleged, 
  trump_response, 
  COUNT(*) AS country_count
FROM trump_teriffs
GROUP BY trump_tariffs_alleged, trump_response
ORDER BY country_count DESC;
=======
SELECT 
  trump_tariffs_alleged, 
  trump_response, 
  COUNT(*) AS country_count
FROM trump_teriffs
GROUP BY trump_tariffs_alleged, trump_response
ORDER BY country_count DESC;
>>>>>>> 80d131064b6461e3cc8c87b67e43980b0dc711f4
