-- Table Creation

drop table selling_info;
drop table appointment;
drop table agent;
drop table property;
drop table seller;
drop table client;

create table client(
    client_id number NOT NULL,
    name varchar(20),
    contact number,
    username varchar(20) UNIQUE,
    password varchar(20),
    PRIMARY KEY (client_id)
);

create table seller(
    seller_id number NOT NULL,
    name varchar(20),
    contact number,
    username varchar(20) UNIQUE,
    password varchar(20),
    PRIMARY KEY (seller_id)
);

create table property(
    property_id number NOT NULL,
    seller_id number NOT NULL,
    description varchar(40),
    price number,
    status varchar(10) check(status='sold' OR status='unsold'),
    PRIMARY KEY (property_id),
    FOREIGN KEY (seller_id) REFERENCES seller ON DELETE CASCADE
);

create table agent(
    agent_id number NOT NULL,
    name varchar(20),
    contact number,
    client_id number,
    seller_id number,
    PRIMARY KEY(agent_id)
);

create table appointment(
    appointment_id number NOT NULL,
    appointment_date varchar(10),
    client_id number,
    seller_id number,
    agent_id number,
    PRIMARY KEY(appointment_id),
    FOREIGN KEY(client_id) REFERENCES client ON DELETE CASCADE,
    FOREIGN KEY(seller_id) REFERENCES seller ON DELETE CASCADE,
    FOREIGN KEY(agent_id) REFERENCES agent ON DELETE CASCADE
);

create table selling_info(
    selling_info_id number NOT NULL,
    sdate varchar(10),
    client_id number,
    seller_id number,
    property_id number,
    PRIMARY KEY(selling_info_id),
    FOREIGN KEY(client_id) REFERENCES client ON DELETE CASCADE,
    FOREIGN KEY(seller_id) REFERENCES seller ON DELETE CASCADE,
    FOREIGN KEY(property_id) REFERENCES property ON DELETE CASCADE
);

-- Insert Into Table

-- Insert to client

insert into client(client_id,name, contact, username, password) values(1,'Rahim Khan',01512541782, 'rahim12', 'abcd');
insert into client(client_id,name, contact, username, password) values(2,'Karim Khan',0152255566, 'karim12', 'abcd');
insert into client(client_id,name, contact, username, password) values(3,'Josim Khan',01538787782, 'josim12', 'abcd');
insert into client(client_id,name, contact, username, password) values(4,'Fokir Ahmed',01512147821, 'fakir34', 'abcd');
insert into client(client_id,name, contact, username, password) values(5,'Rita Akter',01522221782, 'rita12', 'abcd');
insert into client(client_id,name, contact, username, password) values(9,'Rekha Khan',01532252351, 'rekha12', 'abcd');
insert into client(client_id,name, contact, username, password) values(7,'Jane Alom ',01623541782, 'jane12', 'abcd');
insert into client(client_id,name, contact, username, password) values(10,'Bilkis Rahman',017820152254, 'bilkis12', 'abcd');
insert into client(client_id,name, contact, username, password) values(8,'Rakib Hasan',0152547788, 'rakib12', 'abcd');

--insert to seller

insert into seller(seller_id, name, contact, username, password) values(9, 'Abul Rahman', 01552887717,'abul12','abcd');
insert into seller(seller_id, name, contact, username, password) values(2, 'Selim Al Din', 01628877172,'selim12','abcd');
insert into seller(seller_id, name, contact, username, password) values(3, 'Abir Rahman', 01638812717,'abir12','abcd');
insert into seller(seller_id, name, contact, username, password) values(1, 'Rahima Begom', 01312656117,'rahima12','abcd');
insert into seller(seller_id, name, contact, username, password) values(10, 'Jerin Sayma', 01628855443,'jerin12','abcd');
insert into seller(seller_id, name, contact, username, password) values(7, 'Abdus Sohan', 01912886617,'abdus12','abcd');
insert into seller(seller_id, name, contact, username, password) values(5, 'Argho Deb', 01812884328,'argho12','abcd');
insert into seller(seller_id, name, contact, username, password) values(8, 'Tareq Rahman', 01626546172,'joty12','abcd');
insert into seller(seller_id, name, contact, username, password) values(4, 'Shirin Aktar', 01632887717,'shirin12','abcd');

--insert to property

insert into property(property_id, price, status, description, seller_id) values(1, 15000, 'unsold', 'Special', 1);
insert into property(property_id, price, status, description, seller_id) values(2, 25000, 'sold', 'General',3);
insert into property(property_id, price, status, description, seller_id) values(3, 10000, 'unsold', 'Business', 2);
insert into property(property_id, price, status, description, seller_id) values(5, 25000, 'sold', 'Special', 1);
insert into property(property_id, price, status, description, seller_id) values(4, 35000, 'unsold', 'General',7);
insert into property(property_id, price, status, description, seller_id) values(8, 10000, 'sold', 'Business', 8);
insert into property(property_id, price, status, description, seller_id) values(7, 13000, 'sold', 'Special', 4);
insert into property(property_id, price, status, description, seller_id) values(9, 22000, 'unsold', 'General',9);
insert into property(property_id, price, status, description, seller_id) values(10, 18000, 'unsold', 'Business', 10);

--insert to agent

insert into agent(agent_id, name, contact) values(1, 'Mahadi Ankon',01554223344);
insert into agent(agent_id, name, contact) values(2, 'Taslima Joty',01638812717);
insert into agent(agent_id, name, contact) values(3, 'Faiyaz Sadi',01632887717);
insert into agent(agent_id, name, contact) values(5, 'Argho Deb',01712525897);
insert into agent(agent_id, name, contact) values(4, 'Mehdy Hasan',01912886617);
insert into agent(agent_id, name, contact) values(10, 'Sabbir Ahmed',01731212548);
insert into agent(agent_id, name, contact) values(9, 'Rishad Ul Bayesh',01711472514);
insert into agent(agent_id, name, contact) values(7, 'Nur Tamim',01521436258);
insert into agent(agent_id, name, contact) values(8, 'Shoriful Islam',01502584697);

--insert to appointment

insert into appointment(appointment_id, appointment_date, client_id, seller_id, agent_id) values(1, '12/6/2022', 1, 2, 2);
insert into appointment(appointment_id, appointment_date, client_id, seller_id, agent_id) values(2, '13/6/2022', 2, 3, 1);
insert into appointment(appointment_id, appointment_date, client_id, seller_id, agent_id) values(3, '14/6/2022', 7, 7, 8);
insert into appointment(appointment_id, appointment_date, client_id, seller_id, agent_id) values(5, '16/6/2022', 8, 5, 1);
insert into appointment(appointment_id, appointment_date, client_id, seller_id, agent_id) values(6, '19/6/2022', 7, 3, 1);
insert into appointment(appointment_id, appointment_date, client_id, seller_id, agent_id) values(4, '23/6/2022', 8, 5, 8);
insert into appointment(appointment_id, appointment_date, client_id, seller_id, agent_id) values(10, '23/6/2022', 8, 7, 3);
insert into appointment(appointment_id, appointment_date, client_id, seller_id, agent_id) values(11, '24/6/2022', 2, 3, 5);
insert into appointment(appointment_id, appointment_date, client_id, seller_id, agent_id) values(7, '30/6/2022', 10, 9, 2);
insert into appointment(appointment_id, appointment_date, client_id, seller_id, agent_id) values(8, '4/7/2022', 1, 8, 1);
insert into appointment(appointment_id, appointment_date, client_id, seller_id, agent_id) values(9, '28/6/2022', 10, 1, 2);
insert into appointment(appointment_id, appointment_date, client_id, seller_id, agent_id) values(15, '2/7/2022', 9, 5, 8);
insert into appointment(appointment_id, appointment_date, client_id, seller_id, agent_id) values(14, '3/7/2022', 10, 5, 5);
insert into appointment(appointment_id, appointment_date, client_id, seller_id, agent_id) values(13, '6/6/2022', 2, 3, 5);
insert into appointment(appointment_id, appointment_date, client_id, seller_id, agent_id) values(12, '7/6/2022', 2, 9, 2);

--insert to selling_info

insert into selling_info(selling_info_id, sdate, client_id, seller_id,property_id) values(1, '12/6/2022', 2, 1, 1);
insert into selling_info(selling_info_id, sdate, client_id, seller_id,property_id) values(3, '14/6/2022', 7, 8, 8);
insert into selling_info(selling_info_id, sdate, client_id, seller_id,property_id) values(5, '16/6/2022', 8, 3,2);
insert into selling_info(selling_info_id, sdate, client_id, seller_id,property_id) values(6, '19/6/2022', 7, 2, 3);
insert into selling_info(selling_info_id, sdate, client_id, seller_id,property_id) values(4, '23/6/2022', 8, 7, 4);
insert into selling_info(selling_info_id, sdate, client_id, seller_id,property_id) values(11, '24/6/2022', 2, 3, 2);
insert into selling_info(selling_info_id, sdate, client_id, seller_id,property_id) values(7, '30/6/2022', 10, 4, 7);
insert into selling_info(selling_info_id, sdate, client_id, seller_id,property_id) values(9, '28/6/2022', 10, 1, 1);
insert into selling_info(selling_info_id, sdate, client_id, seller_id,property_id) values(15, '2/7/2022', 9, 10, 10);

-- PL-SQL(Loop)

-- Print a line
set SERVEROUTPUT on

begin
dbms_output.put_line('Hello World');
end;
/


-- find max price
set SERVEROUTPUT on

declare
max_price property.price%type;

begin
select max(price) into max_price
from property;
dbms_output.put_line(max_price);
end;
/


-- find an agent
set SERVEROUTPUT on

declare
aid agent.name%type :=1;
meeting_date appointment.appointment_date%type;
cid appointment.client_id%type;
sid appointment.seller_id%type;

begin
select appointment_date, client_id,seller_id into meeting_date, cid, sid
from appointment
where appointment_id=aid;
dbms_output.put_line('Client ' || cid || ' and Seller ' || sid || ' will meet on ' || meeting_date);
end;
/

--Finding Tax included price using IF-else
set SERVEROUTPUT on

declare
oldPrice property.price%type;
newPrice property.price%type;
id property.property_id%type;

begin
id:=1;
select price into oldPrice
from property
where property_id=id;

if oldPrice<1000 then
newPrice:=oldPrice;
elsif oldPrice>=1000 and oldPrice<1500 then
newPrice:=oldPrice+ oldPrice*0.1;
elsif oldPrice>=1500 and oldPrice<2000 then
newPrice:=oldPrice+oldPrice*.2;
else
newPrice:=oldPrice+oldPrice*.5;
end if;

dbms_output.put_line('ID: ' || id || ' Price: ' || newPrice);
end;
/


--Loop

set SERVEROUTPUT on

declare
oldPrice property.price%type;
newPrice property.price%type;
id property.property_id%type;
sellerName client.name%type;

begin
id:=1;
loop
select p.price, s.name into oldPrice, sellerName 
from property p, seller s
where property_id=id and p.property_id=s.seller_id;

if oldPrice<1000 then
newPrice:=oldPrice;
elsif oldPrice>=1000 and oldPrice<1500 then
newPrice:=oldPrice+ oldPrice*0.1;
elsif oldPrice>=1500 and oldPrice<2000 then
newPrice:=oldPrice+oldPrice*.2;
else
newPrice:=oldPrice+oldPrice*.5;
end if;

dbms_output.put_line('Seller ' || sellerName || ' Asking Price: ' || newPrice);
id:=id+1;
exit when id>5;
end loop;
end;
/


-- For Loop


set SERVEROUTPUT on

declare
oldPrice property.price%type;
newPrice property.price%type;
id property.property_id%type;
sellerName client.name%type;

begin
for id in 1..5
loop
select p.price, s.name into oldPrice, sellerName 
from property p, seller s
where property_id=id and p.property_id=s.seller_id;

if oldPrice<1000 then
newPrice:=oldPrice;
elsif oldPrice>=1000 and oldPrice<1500 then
newPrice:=oldPrice+ oldPrice*0.1;
elsif oldPrice>=1500 and oldPrice<2000 then
newPrice:=oldPrice+oldPrice*.2;
else
newPrice:=oldPrice+oldPrice*.5;
end if;

dbms_output.put_line('Seller ' || sellerName || ' Asking Price: ' || newPrice);
end loop;
end;
/


-- While Loop

set SERVEROUTPUT on

declare
oldPrice property.price%type;
newPrice property.price%type;
id property.property_id%type:=1;
sellerName client.name%type;

begin
while id <=5
loop
select p.price, s.name into oldPrice, sellerName 
from property p, seller s
where property_id=id and p.property_id=s.seller_id;

if oldPrice<1000 then
newPrice:=oldPrice;
elsif oldPrice>=1000 and oldPrice<1500 then
newPrice:=oldPrice+ oldPrice*0.1;
elsif oldPrice>=1500 and oldPrice<2000 then
newPrice:=oldPrice+oldPrice*.2;
else
newPrice:=oldPrice+oldPrice*.5;
end if;

dbms_output.put_line('Seller ' || sellerName || ' Asking Price: ' || newPrice);
id:=id+1;
end loop;
end;
/


--Cursor

set SERVEROUTPUT on;
declare
CURSOR pr_cur is select property_id, price from property order by price;
properties pr_cur%ROWTYPE;

begin
open pr_cur;
loop
fetch pr_cur into properties;
exit when pr_cur%ROWCOUNT>4;
dbms_output.put_line('ID: ' || properties.property_id || 'Price:' || properties.price );
end loop;
close pr_cur;
end;
/


-- PL-SQL(Procedure,Functions)

-- Input



-- Procedure
set SERVEROUTPUT on;
create or replace procedure callPrice is
oldPrice property.price%type;
newPrice property.price%type;
id property.property_id%type;
begin
id:=2;
select price into oldPrice
from property
where property_id=id;

if oldPrice<1000 then
newPrice:=oldPrice;
elsif oldPrice>=1000 and oldPrice<1500 then
newPrice:=oldPrice+ oldPrice*0.1;
elsif oldPrice>=1500 and oldPrice<2000 then
newPrice:=oldPrice+oldPrice*.2;
else
newPrice:=oldPrice+oldPrice*.5;
end if;

dbms_output.put_line('New Price: ' || newPrice);
end;
/
show errors;

set SERVEROUTPUT on;
begin
callPrice;
end;
/


-- Functions

set SERVEROUTPUT on;
create or replace function avg_price return int is
avgPrice property.price%type;
begin
select avg(nvl(price,0)) into avgPrice
from property;
return avgPrice;
end;
/

set SERVEROUTPUT on;
begin
dbms_output.put_line('Average Price: ' || avg_price);
end;
/


-- PL-SQL(Trigger, Others)


-- Trigger
drop trigger tr_username;
set SERVEROUTPUT on;
create trigger tr_username
before update or insert on client
for each row
declare
random_number int;
newUsername client.username%type;
begin
newUsername:='user';
select dbms_random.value(1,100) into random_number from dual;
if :new.username is null then
:new.username:=concat(newUsername,to_char(random_number));
end if;
end tr_username;
/
show errors;

insert into client(client_id,name, contact,password) values(13,'Shahran Khan',01512541782,'abcd');
select * from client where client_id=13;
delete from client where client_id=13;


-- Transaction Manager
commit;

delete from client;
select * from client;

rollback;
select * from client;


-- SavePoint

savepoint fullList;

delete from client where name like '%Khan';

savepoint halfList;

select * from client;

rollback to fullList;

select * from client;


-- Date and time

select sysdate from dual;

select current_date from dual;

select systimestamp from dual;



-- Add, Modify, Drop columns

-- Describe Tables
DESC client;
DESC seller;
DESC property;
DESC agent;
DESC appointment;
DESC selling_info;


-- Show information
select * from client;
select * from seller;
select * from property;
select * from agent;
select * from appointment;
select * from selling_info;


-- Add Column
alter table client add client_age int;
DESC client;


-- Rename Column
alter table client rename column client_age to client_occupation;
DESC client;


-- Modify Column
alter table client modify client_occupation varchar(10);
DESC client;


-- Drop Column
alter table client drop column client_occupation;
DESC client;


-- Update values
select * from property;

update property SET status='sold' where price<16000;
select * from property;


----Delete values
select * from seller;
delete from seller where username='abir12';
select * from seller;


-- Order by, Group by, Aggregate function, Having

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



-- Subquery, Intersection and others

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
from seller se left outer join  selling_info s 
using(seller_id);


-- Right Outer Join
select s.sdate, se.name, s.client_id, s.property_id
from selling_info s right outer join seller se
using(seller_id);


-- Full Outer Join
select s.sdate, se.name, s.client_id, s.property_id
from selling_info s full outer join seller se
using(seller_id);
