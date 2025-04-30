use Planets;

--Write queries to select the top 100 rows from each of your tables

-- Names Table:
SELECT * FROM Names LIMIT 100;

--PlanetDiscovery Table:
SELECT * FROM PlanetDiscovery LIMIT 100;

--PlanetParameters Table:
SELECT * FROM PlanetParameters LIMIT 100;

--StellarData Table:
SELECT * FROM StellarData LIMIT 100;

--SystemComposition Table:
SELECT * FROM SystemComposition LIMIT 100;

--Write a join statement to select the top 100 rows from two related tables
SELECT * 
FROM Names N
JOIN PlanetParameters P
ON N.pl_name = P.pl_name AND N.pl_letter = P.pl_letter
LIMIT 100;

--Use an aggregate (sum, count, avg) function to write a query that summarizes your dataset.
SELECT N.hostname, AVG(P.pl_mass) AS avg_planet_mass
FROM Names N
JOIN PlanetParameters P
ON N.pl_name = P.pl_name AND N.pl_letter = P.pl_letter
GROUP BY N.hostname
ORDER BY avg_planet_mass DESC
LIMIT 100;

/*
Aggregation reveals trends
AVG(pl_mass) gives the average mass of planets per star system (hostname).
This is useful for comparing different planetary systems by mass distribution.
*/