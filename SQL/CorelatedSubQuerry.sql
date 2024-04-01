-- corelated SubQuery
-- retrive thr title of films that have a rental rate higher than the  avg rental rate of films releases to same year
select count(title) from film where rental_rate > (select avg (rental_rate) from film where release_year = (select distinct release_year from film));
select title from film f where rental_rate > (select avg (rental_rate) from film where release_year = f.release_year); -- time comsuming
select * from rental;
select * from film;
select distinct release_year from film;

-- list the customer who have made more than five payements.Display their first name and last name;
-- select  customer_id ,count(* ) from where count(* )>5 payment group by customer_id;
 select  customer_id ,count(* ) from  payment group by customer_id having count(*)>5 ;
 select first_name,last_name from customer where (select count(* ) from  payment  where payment.customer_id = customer.customer_id )>5;
 
 select first_name,last_name,count(*) from customer join payment on customer.customer_id = payment.customer_id  group by first_name,last_name having count(*)>5;
 
 
 