create database HR;
use HR;

create table Employee_Info (
id int not null auto_increment primary key,
Last_name varchar (20),
Name varchar (20),
Birth_date date,
Passport_series varchar (20),
Passport_number varchar (20),
Phone_number varchar (20),
Adress varchar (50)
);

alter table Employee_Info
modify Passport_number int;

create table Education (
id int not null auto_increment primary key,
foreign key (id) references Employee_Info (id),
Degree varchar (20),
Institution varchar (50),
Date_start date,
Date_end date
);

alter table Education
modify Date_start int,
modify Date_end int;

create table Post_Info (
id int not null auto_increment primary key,
foreign key (id) references Employee_Info (id),
Post varchar (50),
Salary int,
Hired_date date,
Fired_date date
);

create table Personal_Info (
id int not null auto_increment primary key,
foreign key (id) references Employee_Info (id),
Married varchar(5),
Spouse_lastname varchar (20),
Spouse_name varchar(20),
Spouse_number varchar (20),
Children varchar (5)
);

insert into Employee_Info
(Last_name, Name, Birth_date, Passport_series, Passport_number, Phone_number, Adress)
values
('Viunov', 'Oleksandr', '1996-04-01', 'AO', 044736, '0502824479', 'Dnipro, Ukraine');

insert into Employee_Info
(Last_name, Name, Birth_date, Passport_series, Passport_number, Phone_number, Adress)
values
('Mask', 'Ilon', '1975-12-09', 'CH', 148915, '+177777777', 'Mars, Galaxy');

insert into Education
(Degree, Institution, Date_start, Date_end)
values
('Higher', 'DTREK', 2011, 2014);

insert into Education
(Degree, Institution, Date_start, Date_end)
values
('Higher', 'WSOTUOP', 1991, 1995);

insert into Post_info
(Post, Salary, Hired_date, Fired_date)
values
('CEO', 10000, '2017-05-22', null); 

insert into Post_info
(Post, Salary, Hired_date, Fired_date)
values
('Chief of engineer', 15000, '2013-08-11', null); 

insert into Personal_info
(Married, Spouse_lastname, Spouse_name, Spouse_number, Children)
values
('No', 'Baiden', 'Jozef', '+1111111111', 'No');

insert into Personal_info
(Married, Spouse_lastname, Spouse_name, Spouse_number, Children)
values
('Yes', 'Peternko', 'Mariya', '+1111111111', 'Yes');

select * from Employee_info;
select * from Post_info;
select * from Personal_info;
select * from Education;








