SELECT country, population::BIGINT
FROM trump_teriffs
ORDER BY population::BIGINT DESC
LIMIT 20;
-- The above SQL query selects the country and population columns from the trump_teriffs table.
-- It converts the population column to a BIGINT data type and orders the results in descending order based on the population.