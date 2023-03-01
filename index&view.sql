use mydb;
select * from name_number
join post_salary on post_salary.id = name_number.id
join info on info.id = post_salary.id;

create index name on name_number(name); -- створення індексу за ім'ям - це доцільно для відділу кадрів
										-- бо це буде найчастіший запрос та найшвидше рішення пошуку.
explain select * from name_number where name like 'Ale%';
 
 --------------------------------------------------------------------------------------------------------

create view Table1
as select *,
(select place from info where name_number.id = info.id) as place
from name_number;

create view Table2
 as select birth,
 (select name from name_number where id = info.id) as name,
 (select number from name_number where id = info.id) as number
 from info
 where status = 'not married';
 
 create view Table3 
 as select birth,
 (select name from name_number where id = info.id) as name,
 (select number from name_number where id = info.id) as number
 from info
 where (select id from post_salary where id = info.id and post = 'Manager');
 
 select * from Table1;
 select * from Table2;
 select * from Table3;
 
 




 
 