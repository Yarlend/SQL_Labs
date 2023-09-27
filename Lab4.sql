SELECT name, UPPER(name) as name_upcase
FROM cities
ORDER BY name ASC
LIMIT 5 OFFSET 5;

SELECT name, LENGTH(name) as name_length
FROM cities
WHERE NOT LENGTH(name) = 8 AND NOT LENGTH(name) = 9 AND NOT LENGTH(name) = 10;

SELECT region, SUM(population) AS sum_population
FROM cities
WHERE region IN ('C', 'S');

SELECT region, AVG(population) AS avg_population
FROM cities
WHERE region IN ('W');

SELECT region, COUNT(name) AS name_count
FROM cities
WHERE region IN ('E');