SELECT name 
FROM cities
WHERE name LIKE '%ськ';

SELECT name 
FROM cities
WHERE name LIKE '%донец%';

SELECT CONCAT(name, ' (', region, ')') AS formatted_name
FROM cities
WHERE population > 100000
ORDER BY formatted_name ASC;

SELECT name, population, (population / 40000000.0) * 100 AS population_percentage
FROM cities
ORDER BY population DESC
LIMIT 10;

SELECT name, CONCAT(ROUND((population / 40000000.0) * 100, 2), ' %') AS population_percentage
FROM cities
WHERE (population / 40000000.0) * 100 >= 0.1
ORDER BY population_percentage DESC;