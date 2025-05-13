SELECT country, population::BIGINT
FROM trump_teriffs
ORDER BY population::BIGINT DESC
LIMIT 20;
-- The above SQL query selects the country and population columns from the trump_teriffs table.