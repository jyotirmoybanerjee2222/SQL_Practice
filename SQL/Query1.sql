use mavenmovies;


select * from inventory;
select * from film;

select title,description from film limit 3;

select film_id ,title from film order by film_id;
select customer_id,first_name from customer where first_name='SANDRA';

-- comparision operator < ,>,<=,>=,=,!=
select customer_id,first_name from customer where customer_id >=20;
desc payment;
select * from payment;
select * from payment  where amount > 2.99 and payment_id>100;
select * from payment  where amount > 2.99 or payment_id=100;
select * from payment  where amount > 2.99 and customer_id>100;
select * from payment  where amount > 2.99 and customer_id=100 order by amount;

select * from payment  where amount > 2.99 and customer_id=100 or staff_id=1 order by amount;
select * from film;
select * from film  where replacement_cost>20;
select * from film  where rating ='PG';
select * from film  where replacement_cost<=20;
select * from film  where rating <>'PG'; -- <> -> not equlto or we can use !=

-- Arithmatic operator +,-*,/
 select 2*4;
 select amount*2 as doubleamount,amount+1,amount/0 from payment;
 desc payment;
 
 -- amount/0 -> null not zeo division error
select * from payment where amount >= amount/2 order by amount;
-- logical operator and or not

select * from film  where rating <>'PG' and replacement_cost >20;
select * from film  where rating <>'PG' or replacement_cost >20;

select * from film  where not replacement_cost >20;
select * from film where not rating != 'pg';

select * from film where length between 56 and 100;
select * from film where length in( 56 ,90, 100);

