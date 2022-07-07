-- Join
select p.property_id, p.price, s.name
from property p join seller s
using (seller_id);


-- Natural Join
select appointment_id, appointment_date, client_id
from appointment natural join client;


-- Inner Join
select s.sdate, se.name, s.client_id, s.property_id
from selling_info s inner join seller se
using(seller_id);



-- Cross Join
select s.selling_info_id, s.sdate, se.name
from selling_info s cross join seller se;


-- Left Outer Join
select s.sdate, se.name, s.client_id, s.property_id
from selling_info s left outer join seller se
using(seller_id);


-- Right Outer Join
select s.sdate, se.name, s.client_id, s.property_id
from selling_info s right outer join seller se
using(seller_id);


-- Full Outer Join
select s.sdate, se.name, s.client_id, s.property_id
from selling_info s full outer join seller se
using(seller_id);
