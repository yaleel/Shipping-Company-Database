CREATE TABLE Delivery_agent
(
deliveryAgentID INT (20)  NOT NULL,
firstName  VARCHAR(20),
lastName  VARCHAR(20),
phoneNo VARCHAR (10),
CONSTRAINT Delivery_agent_PK PRIMARY KEY (deliveryAgentID)
);
CREATE TABLE Delivery_car
(
deliveryAgentID INT (20)  NOT NULL,
car VARCHAR(20),
PRIMARY KEY(deliveryAgentID,car),
FOREIGN KEY (deliveryAgentID) REFERENCES Delivery_agent(deliveryAgentID) 
);
CREATE TABLE Employee
(
employeeID INT (20)  NOT NULL,
firstName  VARCHAR(20),
lastName  VARCHAR(20),
gender  VARCHAR(1),
phoneNo VARCHAR (10),
position  VARCHAR(20),
CONSTRAINT Employee_PK PRIMARY KEY (employeeID)
);
CREATE TABLE Dependent 
(
depname VARCHAR(20),
sex VARCHAR(1),
birthDate DATE,
CONSTRAINT Dependent_PK PRIMARY KEY (depname)
);
CREATE TABLE Dep_emp 
(
employeeID INT (20)  NOT NULL,
relationship VARCHAR (20),
depname VARCHAR(20) NOT NULL,
PRIMARY KEY (employeeID,depname),
FOREIGN KEY (employeeID) REFERENCES Employee(employeeID),
FOREIGN KEY (depname) REFERENCES Dependent(depname)
);
CREATE TABLE customer 
(
customerID INT (20)  NOT NULL,
firstName  VARCHAR(20),
lastName  VARCHAR(20),
phoneNo VARCHAR (10),
addres VARCHAR(40),
CONSTRAINT  customer_PK PRIMARY KEY (customerID)
);
CREATE TABLE Warehouse
( warehouseID INT  (20)  NOT NULL,
shipmentNum INT(20),
employeeNum VARCHAR(20),
zipode  INT  (20),
CONSTRAINT Warehouse_PK PRIMARY KEY ( warehouseID) 
 );
CREATE TABLE shipment 
(
shipmentID INT (20)  NOT NULL,
weight DECIMAL (4,2),
deliveryAgentID INT (20),
WarehouseID INT (20),
location VARCHAR(20),
customerID INT (20),
CONSTRAINT shipment_PK PRIMARY KEY (shipmentID),
CONSTRAINT shipment_FK1  FOREIGN KEY (deliveryAgentID) REFERENCES Delivery_agent(deliveryAgentID),
CONSTRAINT shipment_FK2  FOREIGN KEY (WarehouseID) REFERENCES Warehouse(warehouseID),
CONSTRAINT shipment_FK3  FOREIGN KEY (customerID) REFERENCES customer(customerID)
);

/** ----------------------------------------------**/


INSERT INTO customer
VALUES (938264926, 'Destiny','Ortega','672-5937','Forest Lane
Mentor');

INSERT INTO customer
VALUES (469452329,'Jermaine','York','622-1402','73 Beaver Ridge St.
Ellicott City');

INSERT INTO customer
VALUES (938554504,'Callie','Garza','585-3423','Campfire St.
Bradenton');

INSERT INTO customer
VALUES (284207826,'Thaddeus','Holloway','332-5440','31 Theatre Road
Eau Claire');

INSERT INTO customer
VALUES (713473115,'Dalton','Benjamin','333-3578','30 Central Ave.
Bronx');

INSERT INTO customer
VALUES (910786859,'Maxim','Cameron','920-1693','9295 Trusel Ave.
Basking Ridge');

INSERT INTO customer
VALUES (781853782,'Lily','Mclaughlin','684-2764','53 Somerset Ave.
Springfield Gardens');

INSERT INTO customer
VALUES (724275418,'Carlo','Weaver','855-4525', '6 East Locust Court
Soddy Daisy');

INSERT INTO customer
VALUES (594643165,'Luke','Hahn','841-2401','96 Jennings Street
Far Rockaway');

INSERT INTO customer
VALUES (835462961,'Regan','Baird','562-8497','95 Bay Meadows St.
Framingham');

INSERT INTO customer
VALUES (551030674,'Braylon','Whitehead','819-2423','77 Sheffield Dr.
Great Falls');

INSERT INTO customer
VALUES (334688439,'Lucia','Ali','983-0446','194 Colonial St.
Bronx');

INSERT INTO customer
VALUES (670278586,'Yandel','Arroyo','492-4156','7300 Rosewood Ave.
Rolling Meadows');

INSERT INTO customer
VALUES (850075122,'Kristopher','Riddle','791-2149','754 Peninsula Ave.
West Des Moines');

INSERT INTO customer
VALUES (495935466,'Thaddeus','Mcpherson','301-6396','8 Broad Ave.
Massillon');

INSERT INTO customer
VALUES (366816345,'Piper','Vincent','865-3135','477 Indian Summer Street
Sun City');

INSERT INTO customer
VALUES (264773851 ,'Lucian','Peck','324-8736','75 3rd Dr.
Roswell');

INSERT INTO customer
VALUES (574705523,'Alberto','Wolfe','935-9746','45 Oak Meadow St.
Portland');

INSERT INTO customer
VALUES (932218665,'Anna','Kirby','307-3713','52 Bedford Ave.
Rockville Centre');

INSERT INTO customer
VALUES (919134780, 'Damon','Deleon','476-8373','5 Union Dr.
Quakertown');

INSERT INTO customer
VALUES (133091896,'Lilah','Haley','375-0458','9509 Nicolls Street
Port Jefferson');

INSERT INTO customer
VALUES (180430161,'Seth','Horn','296-9924','54 Cherry Hill Street
Randallstown');





INSERT INTO delivery_agent
VALUES (160201316,'Danielle','Galvan','878-2702');

INSERT INTO delivery_agent
VALUES (671865814,'Misael','Buck','256-6058');

INSERT INTO delivery_agent
VALUES (434118022,'Devon','Butler','776-4152');

INSERT INTO delivery_agent
VALUES (293673353,'Yusuf','Barr','440-6089');






INSERT INTO delivery_car
VALUES (160201316,'Suzuki GZ250');

INSERT INTO delivery_car
VALUES (671865814,'Toyota Corolla');

INSERT INTO delivery_car
VALUES (671865814,'Mazda MINIVAN');

INSERT INTO delivery_car
VALUES (434118022,'Hyundai SEDAN');

INSERT INTO delivery_car
VALUES (293673353,'Ford FIESTA');

INSERT INTO delivery_car
VALUES (293673353,'Honda XR650R');





INSERT INTO dependent
VALUES ('Ellen','F','1996-11-20');

INSERT INTO dependent
VALUES ('Bradley','M','1995-04-29');

INSERT INTO dependent
VALUES ('Kieran','F','2003-05-15');

INSERT INTO dependent
VALUES ('Gustavo','M','2014-06-28');

INSERT INTO dependent
VALUES ('Hana','F','2011-12-22');

INSERT INTO dependent
VALUES ('Eddie','M','2015-05-14');

INSERT INTO dependent
VALUES ('Natalie','F','2006-03-13');

INSERT INTO dependent
VALUES ('Anderson','M','2012-09-13');






INSERT INTO employee
VALUES (546227515,'Jase','Barnett','F','807-2162','Logestics manager');

INSERT INTO employee
VALUES (538662547,'Caleb','Summers','M','318-5596','Product Export');

INSERT INTO employee
VALUES (316783115,'Lana','Pacheco','F','481-6193','Shipping Clerk');

INSERT INTO employee
VALUES (765956011,'Gary','Page','M','378-0059','Shipping Clerk');

INSERT INTO employee
VALUES (281711840,'Janae','Noble','F','338-1212','Shipping Clerk');

INSERT INTO employee
VALUES (103766101,'Scott','Whitney','M','422-8566','Customer Service');

INSERT INTO employee
VALUES (683663854,'Nancy','Warren','F','505-2962','Customer Service');

INSERT INTO employee
VALUES (743582608,'Malik','Mann','M','945-9852','Logestics manager');

INSERT INTO employee
VALUES (190803328,'Kelly','Mays','F','713-5060','Product Export');

INSERT INTO employee
VALUES (922092884,'Toby', 'Herring','M','821-1058','Regional Manager');





  


INSERT INTO dep_emp
VALUES (546227515,'Daughter','Ellen');

INSERT INTO dep_emp
VALUES (546227515,'Son','Bradley');

INSERT INTO dep_emp
VALUES (316783115,'Daughter','Kieran');

INSERT INTO dep_emp
VALUES (765956011,'Son','Gustavo');

INSERT INTO dep_emp
VALUES (922092884,'Daughter','Hana');

INSERT INTO dep_emp
VALUES (190803328,'Son','Eddie');

INSERT INTO dep_emp
VALUES (190803328,'Son','Anderson');

INSERT INTO dep_emp
VALUES (683663854,'Daughter','Natalie');





INSERT INTO warehouse
VALUES (5041768,3,3,49877);

INSERT INTO warehouse
VALUES (8683717,2,4,73244);

INSERT INTO warehouse
VALUES (4752360,5,3,60720);





INSERT INTO shipment
VALUES (803650359,4.2,160201316,5041768,'EAST',938264926);

INSERT INTO shipment
VALUES (363949357,2.5,671865814,8683717,'WEST',469452329);

INSERT INTO shipment
VALUES (217998609,3.2,434118022,4752360,'NORTH',938554504);

INSERT INTO shipment
VALUES (943696661,2.3,293673353,5041768,'EAST',284207826);

INSERT INTO shipment
VALUES (945766767,6.7,160201316,8683717,'WEST',713473115);

INSERT INTO shipment
VALUES (850495117,5.1,671865814,4752360,'NORTH',910786859);

INSERT INTO shipment
VALUES (194276643,9.3,434118022,5041768,'EAST',781853782);

INSERT INTO shipment
VALUES (689128591 ,8.4,293673353,8683717,'WEST',724275418);

INSERT INTO shipment
VALUES (723174586,8.9,160201316,4752360,'NORTH',724275418);

INSERT INTO shipment
VALUES (518990877,4.5,671865814,5041768,'EAST',594643165);

