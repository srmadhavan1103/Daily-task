use sample1;
drop table orders;
create table orders(o_id int,o_name varchar(20),o_quant int,o_price int,o_date date);
insert into orders values
(1,'Biscuit',10,500,'2026-10-20'),
(2,'Milkshake',5,600,'2026-10-21'),
(3,'Burger',8,1200,'2026-10-22'),
(4,'Biscuit',20,1000,'2026-10-23'),
(5,'Milkshake',10,1200,'2026-10-24');

select count(*) as total_orders from orders;
select avg(o_price) as avg_price from orders;
select sum(o_price) as total_price from orders;
select o_name,sum(o_price) as total_price from orders group by o_name;
select max(o_price) as max_price,min(o_price) as min_price from orders;
select o_name,sum(o_price) as total_sales from orders group by o_name order by total_sales desc;


Create table Events(id int, event_name varchar(20), event_date date);
insert into Events values
(1,"Birthday",'2026-11-05'),
(2,'College Function','2026-11-15'),
(3,'Project Review','2026-12-10'),
(4,'Sports Day','2027-01-20'),
(5,'Annual Day','2027-03-05');

select now() as current_Date;
select event_name,date_format(event_date,'%d-%m-%y') as formated_date from Events;
select event_name,year(event_date) as event_year,month(event_date) as event_month from Events;
select concat(event_name,'-',date_format(event_date,'%d-%m-%y')) as Event_details from Events;
