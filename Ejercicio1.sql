-- Entrar en la base de datos "world"
USE world;
-- Escribir una query para recuperar todas las columnas y filas de la tabla "country"
SHOW tables;
select * from country;
-- Visualizar solo los nombres de los paises
select name from country;
-- Visualizar el nombre, el continente y la poblacion de cada pais  select name, continent, 
select name, Continent, Population from country;
-- Cambiar la cabecera de cada columna de consulta anterior traduciendo el nombre al español 
select name as nombre, continent as continente, population as poblacion from country;
-- Utilizando la columna IndepYear(Año de la independecia), averiguar cuantos años lleva un pais siendo independiente.	
 -- a. En esta consulta debemos visualizar: el nombre del pais, el año de la independencia y el numero de años transcurridos 
 -- b. El nombre de la columna en la que hagamos el calculo debera llamarse "Años_Transcurridos"
select name, IndepYear, 2023-IndepYear as "Años_Transcurridos" from country;
-- Visualizar los continentes sin que aparezcan repetidos
select distinct continent from country;
-- Visualizar los 5 primeros paises
select name from country limit 5;







