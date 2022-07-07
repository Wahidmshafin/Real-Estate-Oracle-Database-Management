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
    PRIMARY KEY(agent_id),
    FOREIGN KEY(client_id) REFERENCES client ON DELETE CASCADE,
    FOREIGN KEY(seller_id) REFERENCES seller ON DELETE CASCADE
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