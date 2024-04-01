create database pwskills;

use pwskills;

create table pwstudent(
studentid int,
student_name char(50),
student_email varchar(100),
joining_date date,
short_desc text,
marks decimal(3,2)
);


select * from pwstudent;
desc pwstudent;

drop table pwstudent;
drop database pwskills;

alter table pwstudent add weight float ;
alter table pwstudent drop column short_desc;

alter table pwstudent modify weight int;
alter table pwstudent rename column weight to mass;




insert into pwstudent value(1,"depak","depak12@gmail.com","2023-11-11",8.40,62);
insert into pwstudent value(1,"depak","depak12@gmail.com","2023-11-11",8.40,62);

truncate pwstudent;

select * from insurance_data;




use pwskills;

-- create table tablename{
-- columnname1 datatype constraint
-- columnname2 datatype constraint
-- columnname3 datatype constraint
-- }
drop table pwstudent;

create table teacher(
 t_id int,
 t_name char(50),
 primary key(t_id)
 );

create table pwstudent(
-- adhaarcard + last_name of student//composte key
studentid int,
student_name char(50) not null,
adhar_card int, -- candidate key
student_email varchar(100) unique,
joining_date date default('2023-11-05'),
age int check(age>18),
short_desc text,
teacher_id int,
marks decimal(3,2),
primary key (studentid),
foreign key (teacher_id) references teacher(t_id)
);
  -- primary key,foreign key,candidate key,super key,composite key;artificial key
desc pwstudent;

-- DML-insert update delete

-- insert into teacher

insert into teacher value(1,"nrd");
insert into teacher value(2,"Avicshek");
insert into teacher value(3,"sg");
insert into teacher  (t_id)  value(4);
-- multiple value insert at once
insert into teacher values(5,"Ekta"),(6,"krish");



select * from teacher;

-- update

-- update tablename set t_name = 'nitin' where t_id = 2;
 update teacher set t_name = 'nitin' where t_id = 2;
 delete from teacher where t_id = 4 or t_id = 2;
 
 
 drop table teacher;
 
 -- DQL -select
 show  databases;
 show tables;
 select t_id from teacher;
 
 -- operation from join,group by ,having,select,limit
 
 -- primary key
 use mavenmovies;

 select * from address;
 select district+address from address;
  select concat(district,address) from address;
-- sql predefined functions mathematical/agtgegate,functions,strings,datetime

select sum(amount) from payment;
select  avg(amount) from payment;
select count(amount) from payment;
select min(amount) from payment;
select max(amount) from payment;

-- string function

select * from actor;
select concat(first_name,"  ",last_name) as full_name from actor;-- concat to join stings
select concat(first_name,"  ",last_name) as full_name,length(concat(first_name,"  ",last_name)) as length from actor;-- length -- function is used to find number in lwength

select lower(first_name),upper(last_name) from actor;
select upper("Jyotirmoy") as full_name;
select * from address;
select substr(address,3,10) from address; -- substr(textdata,starting,no of char)
select substr("Jyotirmoy Banerjee",3,5);

-- datetime functions - month,year,day,monthname,datediff
select rental_date ,month(rental_date) ,year(rental_date),monthname(rental_date),day(rental_date) from rental;
select rental_date ,datediff(rental_date,return_date) from rental;  -- datediff is used to find difference between dates

-- what smallenst rental duration ?
select min(rental_duration) from film;
-- highest replacement cost among the films
select max(replacement_cost) from film;
-- display all the film whose title length is greater than 10 character
select length(title) from film where length(title)>10; 
 -- diplay count of unique rque rating 
 select count(distinct(rating)) from film;
 
 -- Display the list of first 4 cities which starts and ends with 'a'
 
 select * from city where city like "a%a" limit 4;
 
 
 -- group by
 select * from film;
 select rating, avg(rental_duration) from film group by rating;
  select rating, avg(rental_duration) from film where rating='PG';
select actor_id,count(film_id) from film_actor group by actor_id ;

select * from payment;

select customer_id,sum(amount) as total_amount from payment group by customer_id having total_amount >100;
select distinct(customer_id) from payment;
select customer_id from payment group by customer_id;

-- difference between where and having clause
-- when you us e filter on aggregate or group by data


