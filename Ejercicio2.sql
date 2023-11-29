-- Seleccionar los campos ´address´ y ´district´ de la tabla ´address´ donde el distrito sea Texas
SELECT address, district from address where district = 'Texas';

-- Seleccionar todas las columnas de la tabla 'payment' cuyo campo 'amount' sea mayor que 11
select * from payment where amount > 11;
/*
Visualizar todos los actores de la tabla 'actor' cuyo 'firts_name' sea Penelope.
Probar varias formas de escribir el nombre para comprobar si obtenemos resultados diferentes
*/
select * from actor;
select * from actor where first_name="Penelope";
select * from actor where first_name="PENELOPE";
select * from actor where first_name="penelope";

-- Repite el proceso anterior utilizando BINARY
select * from actor where first_name= BINARY "Penelope";
select * from actor where first_name= BINARY "PENELOPE";
select * from actor where first_name= BINARY "penelope";

/*
 Visualizar las columnas 'first_name' y 'last_name' de la tabla 'customer' de aquellos clientes que esten inactivos
 (En otras palabras, que el campo 'active' sea igual a 0)
*/

select * from customer;
select first_name, last_name, active from customer where active = 0;

-- Probar la consulta anterior cambiando el 0 por False
select first_name, last_name, active from customer where active = False;


















