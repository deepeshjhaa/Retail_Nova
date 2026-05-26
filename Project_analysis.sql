create database retailnova;
use retailnova;

create table orders
(row_id INT AUTO_INCREMENT PRIMARY KEY,
order_id varchar(25) ,
Order_Date date,
Ship_Date date,
Customer_ID varchar(25),
Product_ID  varchar(25),
Sales decimal(10,2),
Quantity int,
Discount decimal(10,2),
Profit	decimal(10,2),
Ship_Mode varchar(50),
Shipping_Cost decimal(10,2),
Region varchar(50),
Market varchar(50),
Order_Priority varchar(50));

create table customer
(Customer_ID varchar(20) primary key,
Customer_Name varchar(50),
Segment varchar(50),
City varchar(50)	,
State varchar(50),
Country varchar(50),
Region varchar(50)	,
Market varchar(50));

create table products(
product_id varchar(25) primary key,
Product_Name varchar(50),
Category varchar(50),
Sub_Category varchar(50));

create table Regions
(Region varchar(50),
Market varchar(50),
Market2 varchar(50));

create table Returns(
order_id varchar(20),
Returned varchar(20));

alter table orders
add constraint fk_customer
foreign key (customer_id)
REFERENCES  customer(customer_id)
;

alter table orders
add constraint fk_product
foreign key (product_id)
REFERENCES  products(product_id);


-- Data Cleaning & Validation

-- Check null values
select 
sum(case  when order_id is null then 1 else 0 end) as id_null,
sum(case  when sales is null then 1 else 0 end) as sales_null,
sum(case  when profit is null then 1 else 0 end) as profit_null
from orders;


-- Duplicate Check
SELECT order_id,
COUNT(*) AS counts
FROM orders
GROUP BY order_id
HAVING COUNT(*) > 1;

-- Negative Sales or Profit
SELECT *
FROM orders
WHERE sales < 0
OR profit < 0;

-- Blank Customer IDs
SELECT *
FROM orders
WHERE customer_id = '';

-- Invalid Dates
SELECT *
FROM orders
WHERE ship_date < order_date;

-- Missing Customers
SELECT *
FROM orders o
LEFT JOIN customer c
ON o.customer_id = c.customer_id
WHERE c.customer_id IS NULL;

-- Negative Profit
SELECT *
FROM orders
WHERE profit < 0;


-- Creating views
create view Sales_analysis as
select o. row_id, o.order_id,o.order_date, o.ship_date, o.customer_id, 
c.customer_name, c.segment, c.city, c.state, c.country,o.product_id, 
p.product_name, p.category, p.sub_category, o.sales, o.quantity, o.discount, o.profit,
o.shipping_cost,  o.ship_mode, o.order_priority, o.region, o.market, r.returned
from orders  o
left join customer c
on o.customer_id = c.customer_id
left join products p
on o.product_id = p.product_id
left join returns r
on o.order_id = r.order_id;

select * from Sales_analysis;

select * from orders;