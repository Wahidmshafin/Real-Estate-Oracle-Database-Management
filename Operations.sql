-- Subquery (IN)
select agent_id, name, seller_id
from agent
where seller_id in(
    select seller_id
    from seller
    where name like '%Rahman'
);


-- Union All
select client_id, sdate, seller_id
from  selling_info
where client_id>4
union all
select client_id, sdate, seller_id
from selling_info
where seller_id<7;


-- Union
select client_id, sdate, seller_id
from  selling_info
where client_id>4
union
select client_id, sdate, seller_id
from selling_info
where seller_id<7;


-- Intersect
select client_id, sdate, seller_id
from  selling_info
where client_id>4
intersect
select client_id, sdate, seller_id
from selling_info
where seller_id<7;


-- Minus
select client_id, sdate, seller_id
from  selling_info
where client_id>4
minus
select client_id, sdate, seller_id
from selling_info
where seller_id<7;

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
