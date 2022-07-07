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