--2022-04-03
select p.product_id,sum(quantity) as total_quantity 
from Product p
join Sales s on s.product_id = p.product_id
group by p.product_id;
