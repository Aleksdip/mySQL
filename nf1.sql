use mydb;
create table weapons (
id int not null auto_increment primary key,
LastName varchar (20),
Initials varchar (20),
Office int,
Platoon int,
Weapon varchar (20),
Responsible_LastName varchar (20),
Responsible_Initials varchar (20),
Rank_responsible varchar (20)
); 

Insert into weapons
(LastName, Initials, Office, Platoon, Weapon, Responsible_LastName, Responsible_Initials, Rank_responsible)
values
('Петров', 'В.А.', 205, 222, 'АК-47', 'Буров', 'О.С.', 'майор'),
('Петров', 'В.А.', 205, 222, 'Глок20', 'Рыбаков', 'Н.Г.', 'майор'),
('Лодарев', 'П.С.', 221, 232, 'АК-74', 'Деребанов', 'В.Я.', 'подполковник'),
('Лодарев', 'П.С.', 221, 232, 'Глок20', 'Рыбаков', 'Н.Г.', 'майор'),
('Леонтьев', 'К.В.', 201, 212, 'АК-47', 'Буров', 'О.С.', 'майор'),
('Леонтьев', 'К.В.', 201, 212, 'Глок20', 'Рыбаков', 'Н.Г.', 'майор'),
('Духов', 'Р.М.', null, 200, 'АК-47', 'Буров', 'О.С.', 'майор');

select * from weapons;







