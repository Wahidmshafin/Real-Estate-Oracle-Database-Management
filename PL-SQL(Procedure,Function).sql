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
