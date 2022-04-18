--2022-04-03
select player_id, device_id from
(select player_id, device_id, 
        dense_rank() over(partition by a.player_id order by event_date) as Ranking
from Activity a) as t
where t.Ranking = 1
