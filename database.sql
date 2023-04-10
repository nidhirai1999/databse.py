create database application;  
create table application.customer_info(
    id int,
    name varchar(20),
    phone_number int );
    
    
insert into customer_info values(1, 'JACK', 98765432);
insert into customer_info values(2, 'CARREY', 9875467);
insert into customer_info values(3, 'JOY', 987367862);


select * from application.customer_info;


create table application.order_info(
    id int,
    name varchar(20),
    customer_id int
    );
    
    
insert into order_info values(1, 'Yoga Mat', 2);
insert into order_info values(2, 'Google Pixel', 1);
insert into order_info values(3, 'Fossil Watch', 3);


select * from application.order_info;


select customer_info.name, order_info.name 
 from customer_info inner join order_info
 on customer_info.id= order_info.customer_id;
