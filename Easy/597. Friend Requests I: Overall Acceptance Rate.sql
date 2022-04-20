--2022-04-02
select(
    round(
        ifnull(
(select count(*) from (select distinct requester_id, accepter_id from RequestAccepted) as a)
/
(select count(*) from (select distinct sender_id, send_to_id from FriendRequest) as b),0)
    ,2)) as accept_rate
