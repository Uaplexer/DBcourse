SELECT UPPER(name)
FROM cities
ORDER BY name
LIMIT 5 OFFSET 5;

SELECT name, FLOOR(LENGTH(name) / 2) AS name_len
FROM cities
WHERE FLOOR(LENGTH(name) / 2) NOT IN (8, 9, 10)

SELECT region, SUM(population) AS total_population
FROM cities
WHERE region IN ('C', 'S')
GROUP BY region;

SELECT region, AVG(population) AS avg_population
FROM cities
WHERE region = 'W';

SELECT region, COUNT(id) AS city_count
FROM cities
WHERE region = 'E';