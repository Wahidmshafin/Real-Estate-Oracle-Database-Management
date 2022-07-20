-- -- Unique value
-- insert into client(client_id,name, contact, username, password) values(1,'Rahim Uddin',0151, 'rahim12', 'abcd');
-- -- Will give error becuaes rahim12 username already


-- Applying Conditions using select
select property_id, price, status, seller_id from property where seller_id=1;


--Applying range operators
select property_id, price, status from property where price>9000 and price<21000;


-- Applying range search
select property_id, price, status from property where price between 9000 and 21000;
select property_id, price, status from property where price IN(9000,21000);


-- Sort by columns
select property_id, price, status from property order by price;


-- MultiColumn Ordering
select property_id, price, status from property order by price,property_id;


-- Calculated field and giving the column a differnt name
select property_id, (price+price*0.1) as price_with_tax, status 
from property 
where price>14000;


-- Pattern Matching
select client_id, name, username from client where name like '%Khan';


-- Aggregate Functions
select max(price) from property;
select min(price) from property;
select sum(price) from property;
select count(property_id) from property;
select count(distinct(seller_id)) from property;
select avg(price) from property;
select avg(nvl(price,0)) from property;


-- Group By
select avg(nvl(price,0)), status from property
group by status;


-- Having Clause
select count(agent_id), client_id from appointment
group by client_id
having client_id=2;
