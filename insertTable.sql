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
insert into appointment(appointment_id, appointment_date, client_id, seller_id, agent_id) values(10, '23/6/2022', 4, 7, 3);
insert into appointment(appointment_id, appointment_date, client_id, seller_id, agent_id) values(11, '24/6/2022', 2, 3, 5);
insert into appointment(appointment_id, appointment_date, client_id, seller_id, agent_id) values(7, '30/6/2022', 10, 9, 7);
insert into appointment(appointment_id, appointment_date, client_id, seller_id, agent_id) values(8, '4/7/2022', 1, 8, 1);
insert into appointment(appointment_id, appointment_date, client_id, seller_id, agent_id) values(9, '28/6/2022', 10, 1, 2);
insert into appointment(appointment_id, appointment_date, client_id, seller_id, agent_id) values(15, '2/7/2022', 9, 5, 8);
insert into appointment(appointment_id, appointment_date, client_id, seller_id, agent_id) values(14, '3/7/2022', 10, 5, 5);
insert into appointment(appointment_id, appointment_date, client_id, seller_id, agent_id) values(13, '6/6/2022', 2, 3, 5);
insert into appointment(appointment_id, appointment_date, client_id, seller_id, agent_id) values(12, '7/6/2022', 4, 9, 2);

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
