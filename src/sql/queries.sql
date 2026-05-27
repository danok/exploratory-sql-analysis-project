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


-- MISSION 3
-- Your query here;


-- MISSION 4
-- Your query here;


-- MISSION 5
-- Your query here;


-- MISSION 6
-- Your query here;


-- MISSION 7
-- Your query here;


-- MISSION 8
-- Your query here;
