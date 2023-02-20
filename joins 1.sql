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