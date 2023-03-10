use mydb;

delimiter $
drop procedure get_number_and_place;
$
create procedure get_number_and_place ()
begin
select name, number, place from name_number
join info
on name_number.id = info.id;
 end
 $
 call get_number_and_place ();
$
-----------------------------------------------------------------------

 create procedure get_number_and_birth ()
 begin
select name, birth, number from name_number
join info
on name_number.id = info.id
where status = 'not married';
 end
$
 call  get_number_and_birth ();
$
 -----------------------------------------------------------------------------
 
 create procedure get_birth_and_number_of_post (IN npost varchar(20))
 begin
select name, birth, number from name_number
join info
on name_number.id = info.id
join post_salary
on name_number.id = post_salary.id
where post = npost;
 end
$
Call get_birth_and_number_of_post ('manager')
$