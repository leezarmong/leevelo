


create table orders(
order_id VARCHAR2(20),
customer_id number,
phone number);

create table customer(
name VARCHAR2(20),
customer_id number,
address varchar2(20));


select * from orders;

select * from customer;

select * from orders natural join customer;


-- left join

select order_id , address from orders join customer on orders.customer_id = customer.customer_id
where name in ('리리코','푸리타');