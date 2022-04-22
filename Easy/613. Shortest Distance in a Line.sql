--2022-04-02

--solution-1
select min(abs(a.x-b.x)) as shortest
from Point a, Point b
where b.x != a.x

--solution-2
select min(abs(a.x-b.x)) as shortest
from Point a
join Point b on b.x != a.x
