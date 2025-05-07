<<<<<<< HEAD
SELECT country, us_2024_deficit::FLOAT
FROM trump_teriffs
ORDER BY us_2024_deficit::FLOAT ASC
LIMIT 20;


-- How to Interpret It:

-- A negative number means the U.S. imported more from that country than it exported — it has a trade deficit.

-- The more negative the number, the larger the trade deficit the U.S. has with that country.

-- For example:

-- "Mexico*",-50000 → The U.S. bought $50 billion more in goods/services from Mexico than it sold to Mexico.

-- "Bangladesh",-6151.8 → The U.S. had a $6.15 billion trade deficit with Bangladesh.

-- "Argentina",-2078.8 → The U.S. had a $2.08 billion deficit with Argentina.




=======
SELECT country, us_2024_deficit::FLOAT
FROM trump_teriffs
ORDER BY us_2024_deficit::FLOAT ASC
LIMIT 20;


-- How to Interpret It:

-- A negative number means the U.S. imported more from that country than it exported — it has a trade deficit.

-- The more negative the number, the larger the trade deficit the U.S. has with that country.

-- For example:

-- "Mexico*",-50000 → The U.S. bought $50 billion more in goods/services from Mexico than it sold to Mexico.

-- "Bangladesh",-6151.8 → The U.S. had a $6.15 billion trade deficit with Bangladesh.

-- "Argentina",-2078.8 → The U.S. had a $2.08 billion deficit with Argentina.




>>>>>>> 80d131064b6461e3cc8c87b67e43980b0dc711f4
