--2022-04-01

--solution-1
delete from Person
where Id not in (select * from (select min(Id) from Person group by email) as temp)

--solution-2
delete a
from Person a, Person b
where a.email = b.email and a.Id > b.Id
