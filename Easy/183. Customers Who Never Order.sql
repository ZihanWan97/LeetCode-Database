--2022-04-01
select name as Customers
from Customers c
left join Orders o on o.customerId = C.id
where o.id is null
