
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

