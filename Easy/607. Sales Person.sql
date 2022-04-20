--2022-04-02
select name
from SalesPerson
where name not in 
(select name
from SalesPerson s
left join Orders o on s.sales_id = o.sales_id
where com_id in (select com_id from Company where name = 'RED'))
