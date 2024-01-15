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
