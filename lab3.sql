SELECT name 
FROM cities
WHERE name LIKE '%ськ'



SELECT name 
FROM cities
WHERE name LIKE '%донец%'



SELECT Concat(name, '(', population, ')')
FROM cities
WHERE population > 100000
ORDER BY name



SELECT name, Concat(population/400000,'%')
FROM cities
ORDER BY population DESC
LIMIT 50



SELECT Concat(name, ' - ', population/400000 , '%') AS Name
FROM cities
WHERE population/400000 > 0.1
ORDER BY population DESC
