-- 3. Cantas entradas á táboa son de África?:

SELECT COUNT(*) from countries where
continent = 'Africa';

-- 4. Cal é a poboación total de Oceanía no 2005?:

SELECT SUM(population) FROM population_years
INNER JOIN countries ON
countries.id = population_years.country_id
WHERE year = 2005
AND continent = 'Oceania';

-- 5. Cal é a poboación dos países de América do Sur no 2003?

SELECT AVG(population) FROM population_years
INNER JOIN countries ON
countries.id = population_years.country_id
WHERE year = 2003
AND continent = 'South America';

-- 6. Que país tiña a poboación más pequena no 2007?:

SELECT MIN(population), name FROM population_years
INNER JOIN countries ON
countries.id = population_years.country_id
WHERE year = 2007;

-- 7. Cal é a poboación promedia de Polonia?:

SELECT AVG(population), name FROM population_years
INNER JOIN countries ON
countries.id = population_years.country_id
WHERE name = 'Poland';

-- 8. Cantos países teñen a palabra "El" no seu nome?:

SELECT COUNT(*) FROM countries
where name LIKE "%The%";

-- 9. Cal é a poboación total de cada continente no 2010?

SELECT SUM(population), continent FROM population_years
INNER JOIN countries ON
countries.id = population_years.country_id
WHERE year = 2010
GROUP BY continent;