--2022-03-31
select firstname, lastname, city, state
from Person p 
left join Address a on a.personId = p.personId
