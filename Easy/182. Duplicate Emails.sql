--2022-04-01
select email as Email
from Person
group by email
having count(*)>1
