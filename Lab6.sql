-- -- Join
-- select p.property_id, p.price, s.name
-- from property p join seller s
-- using (seller_id);


-- -- Natural Join
-- select agent_id, client_id
-- from agent natural join client;


-- Inner Join
select a.agent_id, a.name, c.name, client_id
from agent a inner join client c
using (client_id);