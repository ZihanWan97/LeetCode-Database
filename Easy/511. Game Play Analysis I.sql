--2022-04-03
select player_id ,min(date(event_date)) as first_login 
from Activity 
group by player_id;
