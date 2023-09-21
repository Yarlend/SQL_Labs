SELECT name, population
FROM cities
WHERE population>=1000000;

SELECT name, population, region
FROM cities
WHERE region IN ('E', 'W')
ORDER BY population DESC;

SELECT name, population, region
FROM cities
WHERE region IN ('S', 'C', 'N') AND population>50000
ORDER BY population ASC;

SELECT name, population, region
FROM cities
WHERE region IN ('E', 'W', 'N') AND population BETWEEN 150000 AND 350000
ORDER BY population ASC
LIMIT 20;

SELECT name, population, region
FROM cities
WHERE NOT region IN ('E', 'W')
ORDER BY population DESC
LIMIT 10 OFFSET 10;
