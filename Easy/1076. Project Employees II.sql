--2022-04-03
select t.project_id
from 
    (select project_id, rank() over(order by count(*) desc) as ranking
    from Project group by project_id) as t
where t.ranking = 1
