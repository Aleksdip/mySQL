use carsshop;
drop function min_age_client;
delimiter !
create function min_age_client ()
returns int
DETERMINISTIC
begin
return (select min(age) from clients);
end
!
select mark, model, name, age from clients 
JOIN orders ON clients.id = orders.client_id
JOIN cars ON cars.id = orders.car_id
JOIN marks ON cars.mark_id = marks.id
where age = min_age_client ();



