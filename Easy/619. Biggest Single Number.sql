--2022-04-02
select max(num) as num
from MyNumbers
where num in
(select num
from MyNumbers
group by num
having count(*) = 1)
