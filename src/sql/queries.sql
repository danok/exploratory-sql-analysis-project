-- PLEASE READ THIS BEFORE RUNNING THE EXERCISE

-- ⚠️ IMPORTANT: This SQL file may crash due to two common issues: comments and missing semicolons.

-- ✅ Suggestions:
-- 1) Always end each SQL query with a semicolon `;`
-- 2) Ensure comments are well-formed:
--    - Use `--` for single-line comments only
--    - Avoid inline comments after queries
--    - Do not use `/* */` multi-line comments, as they may break execution

-- -----------------------------------------------
-- queries.sql
-- Complete each mission by writing your SQL query
-- directly below the corresponding instruction
-- -----------------------------------------------

--SELECT * FROM regions;
--SELECT * FROM species;
--SELECT * FROM climate;
--SELECT * FROM observations;


-- MISSION 1
-- Your query here;
SELECT * FROM observations limit 10;
SELECT DISTINCT region_id FROM observations;
SELECT count(DISTINCT species_id) FROM observations;
SELECT count(*)  FROM observations WHERE region_id = 2;
SELECT count(*)  FROM observations WHERE observation_date='1998-08-08';

-- MISSION 2
-- Your query here;
SELECT region_id, count(*) FROM observations Group by region_id order by count(*) desc limit 1;
SELECT species_id, count(*) FROM observations Group by species_id order by count(*) desc limit 5;
SELECT species_id, count(*) FROM observations Group by species_id having count(*)< 5;
SELECT observer, count(*) FROM observations Group by observer order by count(*) desc;


-- MISSION 3
-- Your query here;
SELECT * 
FROM observations as obs
JOIN regions as reg on obs.region_id = reg.id;

SELECT *
FROM observations as obs
JOIN species as spe on obs.species_id = spe.id;


SELECT obs.region_id, spe.scientific_name, count(*) as cuenta
FROM observations as obs
JOIN species as spe on obs.species_id = spe.id
Group by obs.region_id, spe.scientific_name
order by count(*) desc
;

-- MISSION 4
-- Your query here;
INSERT INTO observations (species_id, region_id, observer, observation_date, latitude, longitude, count) 
VALUES (100, 25, 'Test_dbg', '2001-07-04', -31.54646, 152.8572, 1);

--inserto una nueva observacion que será la que eliminare en el ultimo ejercicio
INSERT INTO observations (species_id, region_id, observer, observation_date, latitude, longitude, count) 
VALUES (1000, 25, 'Test_dbg', '2001-06-10', -31.54646, 152.8572, 1);


UPDATE species
SET scientific_name = 'Panthera onca'
WHERE scientific_name = 'Panthera oncca';


--SELECT * 
--FROM observations 
--where species_id = 1000

DELETE FROM observations
WHERE id = 502; 

-- MISSION 5
-- Your query here;


-- MISSION 6
-- Your query here;


-- MISSION 7
-- Your query here;


-- MISSION 8
-- Your query here;
