use Planets;

--Write a View that provides useful information about your dataset
CREATE VIEW PlanetDiscoverySummary AS
SELECT N.pl_name,N.hostname,D.discoverymethod,D.disc_year,D.disc_facility,P.pl_mass,P.pl_radius
FROM Names N
JOIN PlanetDiscovery D ON N.pl_name = D.pl_name AND N.pl_letter = D.pl_letter
JOIN PlanetParameters P ON N.pl_name = P.pl_name AND N.pl_letter = P.pl_letter;

SELECT * FROM PlanetDiscoverySummary LIMIT 100;

/*
The PlanetDiscoverySummary view combines data from the Names, PlanetDiscovery, 
and PlanetParameters tables to provide a unified snapshot of each planet’s discovery 
and physical characteristics. It includes the planet and host star names, the method and 
year of discovery, the facility that found it, and the planet’s mass and radius. 
This view allows users to easily analyze trends in discovery methods, identify which 
observatories discovered which planets, and compare physical features like size and mass 
across planetary systems.
*/