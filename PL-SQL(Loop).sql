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


