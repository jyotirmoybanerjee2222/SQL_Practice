 -- Retrive the file name that have a rental rate greater than 4.50
 use mavenmovies;
 select title from film where rental_rate >4;
 
 -- List The customer names and emails of those who  live in the address_id with id 300
 
 select first_name,last_name,email from customer where address_id=300;
 
 -- find the film with length between 120 and 150 minutes (inclusive).Display the tittle and length.
 
 
select * from film where length between 120 and 150; 

-- wildcard operator -like - _%  applicable on text data

-- select last name whose last namestarts with s
select first_name,last_name from customer where last_name like "S%";
-- select last name whose last names end with s
select first_name,last_name from customer where last_name like "%S";
-- select last name whose last names end with s and strats with s
select first_name,last_name from customer where last_name like "s%s";
-- last name contain letter s
select first_name,last_name from customer where last_name like "%s%";
select first_name,last_name from customer where last_name like "%es%";

-- retive firstname and last name whose first name contain execute
Select first_name,last_name from customer where first_name like "%e%";
-- retive firstname and last name whose first name start with e and end with a
Select first_name,last_name from customer where first_name like "%e%";
select first_name,last_name from customer where first_name like "e%a";
-- retrive the first and last name of customer where name lattrer a ison second position
select first_name,last_name from customer where first_name like "_a%";
-- retrive the first and last name of customer where name lattrer a ison second position and e is on fourt position

select first_name,last_name from customer where first_name like "_a_e%";
-- retrive the first and last name of customer where name lattrer a ison second position and last name have letter e on is on fourt position
select first_name,last_name from customer where first_name like "_a%" and last_name like "___e%";


 -- select last name whose last namestarts with s and have only 5 letters

-- sql predefined function
select sum(amount) from payment;



