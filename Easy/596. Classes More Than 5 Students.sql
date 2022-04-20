--2022-04-02
select class 
from Courses
group by class
having count(*) >=5
