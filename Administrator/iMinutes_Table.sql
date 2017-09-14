--會員資料--
select *
from users



--會員行程--
select u.user_id,u.user_name Name,m.start_time StartTime,m.end_time EndTime,p.place_name Location,m.meet_title Title
from (((user_schedule us
inner join meet m on us.meet_id = m.meet_id)
inner join users u on us.user_id = u.user_id)
inner join places p on m.meet_place = p.place_id)

select * from user_schedule



--參與會議紀錄--
select m.meet_title Title,m.start_time StartTime,m.end_time EndTime,u.user_name Name,is_convener Convener,is_record Recorder,IS_MEMBER Member
from ((meet_members ms 
inner join meet m on ms.meet_id = m.meet_id)
inner join users u on ms.user_id = u.user_id);



--會議室--
select meet_id, meet_title Title,start_time StartTime,end_time EndTime,place_name Location,convener Convener,meet_recordfile Record,meet_note Note 
from meet m inner join places p on m.meet_place = p.place_id



--會議室行程--
select *
from ((place_schedule ps
inner join meet m on ps.meet_id = m.meet_id)
inner join places p on ps.place_id = p.place_id)


select meet_title
from meet