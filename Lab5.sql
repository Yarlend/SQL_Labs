SELECT region, SUM(population) AS total_population
FROM cities
GROUP BY region;

SELECT region, SUM(population) AS total_populationn
FROM cities
GROUP BY region
HAVING COUNT(*) >= 10;

SELECT cities.name, cities.population 
FROM cities
WHERE cities.region IN (SELECT regions.uuid
                        FROM regions
                        WHERE regions.area_quantity >= 5)
     
GROUP BY cities.population DESC
LIMIT 5 OFFSET 10;

SELECT region,SUM(population)
FROM cities
WHERE name IN (SELECT name 
                FROM cities
                WHERE population > 300000)
GROUP BY region;

SELECT cities.name, population
FROM cities
WHERE cities.region IN (SELECT regions.uuid
                             FROM regions
                             WHERE regions.area_quantity <= 5)
AND cities.population NOT BETWEEN 150000 AND 500000
GROUP BY cities.population




