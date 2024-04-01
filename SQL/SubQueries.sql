-- subQueries

-- non corelated sub quesries
use mavenmovies;
select avg(amount) from payment;
select payment_id,amount from payment where amount > (select avg(amount) from payment);
select payment_id,amount from payment where amount > 4.5;

select  * from film;
-- select all the language having english only
SELECT 
    film_id, title,language_id
FROM
    film
WHERE
    language_id IN (SELECT 
            language_id
        FROM
            language
        WHERE
            name LIKE '%e%');
    -- usijng inner join        
SELECT 
    film_id, title, name,language.language_id
FROM
    film
        INNER JOIN
    language ON film.language_id = language.language_id
WHERE
    name LIKE 'e%';
            
-- find the film that have have higher rental rate than any filmin the 'Action ' genere .Display the tittle and rental rate
select * from film_category;
select * from category;
select category_id from category where name = 'Action';

select * from film_category where category_id =(select category_id from category where name = 'Action');
-- why we use in operator .why we cannot us e =
select max(rental_rate) from film  where film_id in (select film_id from film_category where category_id=(select category_id from category where name = 'Action'));
select title,rental_rate from film where rental_rate > (select max(rental_rate) from film  where film_id in (select film_id from film_category where category_id=(select category_id from category where name = 'Action')));
select  * from film where rental_rate >4.99;


select title,rental_rate from film where rental_rate > (select max(rental_rate) from film join film_category on film.film_id = film_category.film_id join category on film_category.category_id = category.category_id where name  = 'Action');


-- retrive the film that have a repacement cost higher than the average replacement cost
-- offilm in the drama genere .Display the tittle and replavce ment cost
 
 select * from film;
 select * from film_category;
 select * from category;
 select category_id ,name from category where name = 'Drama';
 
 select film_id  from film_category  where category_id in ( select category_id  from category where name = 'Drama');
select * from film where film_id in (select film_id  from film_category  where category_id in ( select category_id  from category where name = 'Drama')); # why we are using in not ==
select * from  film where replacement_cost > (select avg(replacement_cost) from film where film_id in (select film_id  from film_category  where category_id in ( select category_id  from category where name = 'Drama')));
select * from film where replacement_cost > (select avg(replacement_cost) from film join film_category on  film.film_id = film_category.film_id join category on film_category.category_id = category.category_id where name = 'Drama');

-- Retrive the title of films that have arental duration greater than the average rental duration of all films.
  select avg(rental_duration) from film;
  select * from category;
select title from film where rental_duration > (select avg(rental_duration) from film);

-- list the name of actoer who have not appered in any film ,display the actor firstname and last name.
select * from actor;
select first_name,last_name from actor where actor_id not in (select actor_id from film_actor);

-- select the fisrtname and last name of customer who have made payements;
select first_name ,last_name from customer where customer_id in (select distinct  customer_id from payment );

-- find the tittle of the film that are availabe in the inventory
select title from film where film_id in (select distinct film_id from inventory);
