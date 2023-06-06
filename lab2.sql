SELECT name
FROM cities
WHERE population>=1000000



SELECT name
FROM cities
WHERE region='E' OR region='W'
ORDER BY population DESC



SELECT name
FROM cities
WHERE population>50000 AND region IN ('S','C','N')



SELECT name
FROM cities
WHERE population>150000 AND population<350000 AND region IN ('E','W','N')
ORDER BY name
LIMIT 20



SELECT name
FROM cities
WHERE region NOT IN ('E','W','N')
ORDER BY population DESC
LIMIT 10 OFFSET 10