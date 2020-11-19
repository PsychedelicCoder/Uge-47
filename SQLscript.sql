USE sakila;

select * from actor
where last_name = "CAGE";

select * from actor 
where first_name != "ZERO" || "NICK";

select * from actor
where first_name IN ("NICK", "JOHNNY", "JAMES", "MORGAN", "WHOOPI");

#SELECT all rows from the "actor" table with an actor id ranging from 50 to 150;
select * from actor
where actor_id IN (50, 150);

#SELECT all rows from the "actor" table where first_name starts with the letter "C" (HINT: LIKE)
select * from actor 
where first_name like 'C%';

#Select all rows from the "actor" table, ordered by first_name
select * from actor
ORDER BY first_name;

#Select all rows from the "actor" table, ordered by last_name descending
select * from actor
ORDER BY last_name DESC;

#Get the count of rows in the "actor" table.
SELECT COUNT(*) FROM actor;

#Get the count of rows in the "actor" table with distinct first_name
SELECT COUNT(DISTINCT first_name) FROM actor;

#SELECT all the horror films using the IN keyword.
select * from film_category
where category_id IN (11);

#SELECT all the horror films using the AS keyword.
SELECT category_id AS film_genre
from film_category;

#INSERT a row in the "actor" table, with your own first and last name.
INSERT INTO actor (first_name, last_name) values ("Julius","Madsen");

#INSERT 5 rows in the "film_actor" table, with the actor_id given to you, along with 5 film_id's of your choosing.
insert into film_actor (actor_id, film_id) values (201, 1);
insert into film_actor (actor_id, film_id) values (201, 2);
insert into film_actor (actor_id, film_id) values (201, 3);
insert into film_actor (actor_id, film_id) values (201, 4);
insert into film_actor (actor_id, film_id) values (201, 5);

#UPDATE the first_name and last_name of the row containing your name, and set it to your newfound stage name.
UPDATE actor SET first_name = 'Julemand', last_name = 'JUL' WHERE actor_id = 201;

#Delete the row containing your data, and give up your acting career.
DELETE from actor 
where actor_id = 201;

#SELECT all rows from the category table. Note what id is "Horror" it's id 11
select * from category;

#SELECT all rows from the film table and join the film_category table on film_id. Then join the category table on the category ID and add a where clause to retrieve only films with the horror category_id.
SELECT * FROM film INNER JOIN film_category ON film.film_id = film_category.film_id WHERE film_category.category_id = 11;




