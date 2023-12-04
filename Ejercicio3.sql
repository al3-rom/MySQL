/* 
*SAKILA DATABASE*

1. Extraer el nombre y la duracion de las peliculas que duran entre 120 y 130 minutos. Usa la tabla film. 
2. Extraer de la tabla rent el 'rental_id' y el 'rental_date' de los alquieleres de Febrero de 2006
3. Extraer de la tabla actor el 'first_name' de los actores cuyo primer nombre comience entre B y C  
*/

-- 1 
USE sakila;
SHOW TABLES;
SELECT * FROM film;

SELECT title, length FROM film  WHERE length BETWEEN 120 AND 130;

-- 2
SELECT * FROM rental;
SELECT rental_id, rental_date from rental WHERE rental_date BETWEEN "2006-02-01" AND '2006-02-28';
 
-- 3
SELECT * FROM actor;
SELECT first_name FROM actor WHERE first_name BETWEEN "B" AND "D";

/*
 1.Averigua los actores cuyo nombre comience en B y termine en A
 2.Extrae los apellidos de los clientes cuyo apellido empiece por MA
 3.Extrae los nombres y apellidos de los clientes cuyos apellidos tengan TH en cualquier parte
 4.Extrae los apellidos que tengan una A como segunda letra y una E como cuarta letra
*/

-- 1
SELECT * FROM actor;
SELECT first_name FROM actor WHERE first_name LIKE "B%A";
-- 2
SELECT * FROM customer;
SELECT last_name FROM customer WHERE last_name LIKE "MA%";
-- 3
SELECT first_name, last_name FROM customer WHERE last_name LIKE "%TH%";
-- 4
SELECT last_name FROM customer WHERE last_name LIKE "_A_E%";

/*
 1.Extraer el nombre y los apellidos de los actores cuyo nombre sea: "Hara", "Hred", "Handra", "Hd" y "Helen"
 2.Extraer el "title" y el "rental_rate" de tabla film, cuyo "rental_rate" sea 2.99 o 4.99
 3.Extraer el titulo y las caracteristicas especiales de las peliculas que sean "Deleted Scenes' o "Commentaries"
 4.Extraer el nombre de la ciudad cuyo pais es el 87 o el 60
*/
-- 1
SELECT * FROM actor;
SELECT first_name, last_name FROM actor WHERE first_name IN ('SARA', 'FRED', 'SANDRA', 'ED', 'HELEN' );
-- 2
SELECT title, rental_rate FROM film WHERE rental_rate IN (2.99, 4.99);
-- 3
SELECT title, special_features FROM film WHERE special_features in ("DELETED SCENES", "COMMENTARIES");
-- 4
SELECT * FROM city;
SELECT cityFROM city WHERE country_id in (87, 60);


