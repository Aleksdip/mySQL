use mydb;
select * from name_number
join info
on name_number.id = info.id;

select name, birth, number from name_number
join info
on name_number.id = info.id
where status = 'not married';

select name, birth, number from name_number
join info
on name_number.id = info.id
join post_salary
on name_number.id = post_salary.id
where post = 'Manager';

---------------------------------------------------
select *,
(select place from info where name_number.id = info.id) as place
from name_number;
 
 select birth,
 (select name from name_number where id = info.id) as name,
 (select number from name_number where id = info.id) as number
 from info
 where status = 'not married';
 
 select birth,
 (select name from name_number where id = info.id) as name,
 (select number from name_number where id = info.id) as number
 from info
 where (select id from post_salary where id = info.id and post = 'Manager')
