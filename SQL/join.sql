-- iner join ,left join right join,full join
use mavenmovies;
select * from actor inner join actor_award on actor_award.actor_id=actor.actor_id;
select * from actor left join actor_award on actor_award.actor_id=actor.actor_id;
select * from actor right join actor_award on actor_award.actor_id=actor.actor_id;
-- eror select * from actor outer join actor_award on actor_award.actor_id=actor.actor_id;

-- display all the city from india
select * from country;
select * from city;
select * from address;
select city,country from city inner join country on city.country_id = country.country_id where country.country="India";
select * from city inner join country on city.country_id = country.country_id where country.country="India";

-- display all the city  with their postal code from india
SELECT 
    postal_code, city, country
FROM
    address
        INNER JOIN
    city ON address.city_id = city.city_id
        INNER JOIN
    country ON city.country_id = country.country_id
   
WHERE
    country.country = 'India';


-- display the names of actors and the names of the films they haved acted in.
select * from actor;-- names of actor
select * from film;-- common connection
select * from film_actor;-- tittle
SELECT 
    concat(first_name," ", last_name) as name,title
FROM
    actor
        INNER JOIN
    film_actor ON actor.actor_id = film_actor.actor_id
        INNER JOIN
    film ON film.film_id = film_actor.film_id;

-- problem

-- display the names of actors and the total numbers of films of the films they haved acted in.

SELECT 
    concat(first_name," ", last_name) as name,count(film_id) as count_of_movies
FROM
    actor
        LEFT JOIN
    film_actor ON actor.actor_id = film_actor.actor_id
      
group by Name
order by count_of_movies;


SELECT 
    concat(first_name," ", last_name) as name,count(title) as count_of_movies
FROM
    actor
        LEFT JOIN
    film_actor ON actor.actor_id = film_actor.actor_id
        LEFT JOIN
	film ON film.film_id= film_actor.film_id
group by Name
order by count_of_movies;
-- problem
SELECT 
    concat(a.first_name," ", a.last_name) as name,count(title) as count_of_movies
FROM
    actor a
        LEFT JOIN
    film_actor ON actor.actor_id = film_actor.actor_id
        LEFT JOIN
	film ON film.film_id= film_actor.film_id
group by Name
order by count_of_movies;
