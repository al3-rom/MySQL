-- 0: "Extraer la dirrecion(address) y dirrecion2(address2) donde la direccion 2 sea null de la tabla es address
SELECT * FROM sakila.address;
SELECT address, address2 FROM sakila.address WHERE address2 IS null;
/*
 1. Extraer el rental_id, rental_date y return_date para quellos alquileres que ya tienen fecha de devolucion de la tabla rental
 2. Utiliza la tabla: "Category", con un case introduzca alguna de las categorias
 3. Utiliza la tabla: "Payment" y la columna "Amount" segun las siguientes condiciones:
  a. amount <= 0.99 'Barato'
  b. amount entre 1 y 4.99 'Medio'
  c. amount >= 4.99 'Caro'
  d. Para cualquier otra cosa ponemos 'Otros valores'
*/
-- 1
SELECT * FROM rental;
SELECT rental_id,rental_date,return_date FROM rental WHERE staff_id;
-- 2
SELECT * from sakila.category;

SELECT name,
 CASE name 
	 when 'Action' then 'Accion'
     when 'Comedy' then 'Comedia'
     when 'Classics' then 'Clasicos'
	 else 'Categoria desconocida'
 END AS 'Categorias en español'
 FROM sakila.category;
 /*
 3. Utiliza la tabla: "Payment" y la columna "Amount" segun las siguientes condiciones:
  a. amount <= 0.99 'Barato'
  b. amount entre 1 y 4.99 'Medio'
  c. amount >= 4.99 'Caro'
  d. Para cualquier otra cosa ponemos 'Otros valores'
 */
 -- 3
SELECT * FROM payment;
SELECT amount,
 CASE 
  when amount <= 0.99 then 'Barato'
  when amount between 1 AND 4.99 then 'Medio'
  when amount >= 4.99 then 'Caro'
  else 'Otros valores'
 END AS 'Valores'
FROM sakila.payment;