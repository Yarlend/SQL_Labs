SELECT name, UPPER(name) as name_upcase
FROM cities
ORDER BY name ASC
LIMIT 5 OFFSET 5;

SELECT name, CHAR_LENGTH(name) as name_length
FROM cities
WHERE CHAR_LENGTH(name) NOT BETWEEN 8 AND 10; 

SELECT region, SUM(population) AS sum_population
FROM cities
WHERE region IN ('C', 'S');

SELECT region, AVG(population) AS avg_population
FROM cities
WHERE region IN ('W');

SELECT region, COUNT(name) AS name_count
FROM cities
WHERE region IN ('E');
