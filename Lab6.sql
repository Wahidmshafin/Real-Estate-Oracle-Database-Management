-- Join
select p.property_id, p.price, s.name
from property p join seller s
using (seller_id);


-- Natural Join
select appointment_id, appointment_date, client_id
from appointment natural join client;


-- Inner Join
select a.appointment_id, a.appointment_date, c.name, client_id
from appointment a inner join client c
using (client_id);

-- Cross Join
select s.selling_info_id, s.sdate, se.name
from selling_info s cross join seller se;