USE ShopDB;
DROP TABLE Customers;


CREATE TABLE Customers                
(                                      
	CustumerNo int NOT NULL, 
	CustumerName varchar(25) NOT NULL,
	Address1 varchar(25) NOT NULL,
	Address2 varchar(25) NOT NULL,
	City      varchar(15) NOT NULL,
	State char(2) NOT NULL,
	Zip varchar(10) NOT NULL,
	Contact varchar(25) NOT NULL,
	Phone char(12) UNIQUE, 
	FedIDNo  varchar(10) NOT NULL,
	DateInSystem date NOT NULL 
);

INSERT INTO Customers
( CustumerNo, CustumerName, Address1, Address2, City, State, Zip, Contact, Phone, FedIDNo, DateInSystem)
VALUES
(1,'Alex', 'NewSTR', 'NewSTR2', 'City', 'NS', 'NewZip', 'dfgjs@mail.ru', '(093)1231212', 'qweq', NOW()),
(2,'Alex2', 'NewSTR2', 'NewSTR22', 'City2', 'SN', 'NewZip2', 'dfg2@mail.ru', '(093)2221212', 'qwq2', NOW());

explain select * from Customers;
explain select CustumerName from Customers where CustumerName = 'Alex';
create index Customers on Customers(CustumerName);
explain select CustumerName from Customers where CustumerName = 'Alex';

---------------------------------------------------------------------------------------------------
DROP TABLE Customers;


CREATE TABLE Customers(                                      
	CustumerNo int NOT NULL primary key auto_increment,
	CustumerName varchar(25) NOT NULL,
	Address1 varchar(25) NOT NULL,
	Address2 varchar(25) NOT NULL,
	City      varchar(15) NOT NULL,
	State char(2) NOT NULL,
	Zip varchar(10) NOT NULL,
	Contact varchar(25) NOT NULL,
	Phone char(12) UNIQUE, 
	FedIDNo  varchar(10) NOT NULL,
	DateInSystem date NOT NULL);

INSERT INTO Customers
(CustumerName, Address1, Address2, City, State, Zip, Contact, Phone, FedIDNo, DateInSystem)
VALUES
('Alex', 'NewSTR', 'NewSTR2', 'City', 'NS', 'NewZip', 'dfgjs@mail.ru', '(093)1231212', 'qweq', NOW()),
('Alex2', 'NewSTR2', 'NewSTR22', 'City2', 'SN', 'NewZip2', 'dfg2@mail.ru', '(093)2221212', 'qwq2', NOW());

explain select * from Customers;
explain select CustumerName from Customers where CustumerName = 'Alex';
create index Customers on Customers(CustumerName);
explain select CustumerName from Customers where CustumerName = 'Alex';

