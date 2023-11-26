show databases;
USE WORLD;
SHOW TABLES;

-- SINTAXIS BASICA 

-- SELECT COLUMNA/S FROM TABLA;
-- SELECT * FROM TABLA;( * - TODAS LAS COLUMNAS)
-- LIMIT 100 => SHOW ONLY 100.
-- SELECT COLUMNA1, COLUMNA2 ..., COLUMNA FROM TABLA;(SELECCIONAMOS QUE COLUMNAS QUEREMOS VER Y EN QUE ORDEN)
-- LA PALABRA "AS" SIRVE PARA ASIGNAR UN NOMBRE A LA COLUMNA
-- SELECT DISTINCT => PARA CONSULTAR DIFERENTES COMBINACIONES QUE NO SE REPITEN
-- OPERACIONES ARITMETICAS:
	-- NIVEL 1: *, /, %
    -- NIVEL 2: +, -
-- SI QUEREMOS CAMBIAR EL ORDEN DE PREFERENCIA DE LAS OPERACIONES ARITMETICAS, UTILIZAMOS PARENTESIS 

SELECT * FROM CITY
LIMIT 50;

SELECT DISTRICT,COUNTRYCODE FROM CITY LIMIT 10;

SELECT 4+5;
-- ES LO MISMO QUE:
SELECT 4+5  FROM DUAL;

SELECT * FROM CITY
LIMIT 40;

SELECT NAME, POPULATION*2 AS Double_Population FROM CITY;

SELECT 4+5*10;
SELECT 4+10/5;
SELECT (4+5)*10;

SELECT * FROM CITY LIMIT 30;

SELECT distinct COUNTRYCODE FROM CITY;

SELECT * FROM COUNTRYLANGUAGE LIMIT 30; 

SELECT distinct COUNTRYCODE, LANGUAGE FROM countrylanguage;

USE CONQUERBLOCKS;

SELECT NAME, ID FROM WORLD.CITY;








