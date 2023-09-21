# Write your MySQL query statement below

/*
select a.user_id
from(
  select si.user_id, count(co.user_id) as cui
    , sum(
            case when co.action = 'confirmed' then 1
            else 0
            end 
  ) as cr
  from Signups as si
  left join Confirmations as co
  on si.user_id = co.user_id
  group by 1
) as a
where cr = cui
*/

select a.user_id, 
  (case when cr/cui is null then 0
    else round(cr/cui, 2)
    end
  ) as confirmation_rate
from(
  select si.user_id, count(co.user_id) as cui
    , sum(
            case when co.action = 'confirmed' then 1
            else 0
            end 
  ) as cr
  from Signups as si
  left join Confirmations as co
  on si.user_id = co.user_id
  group by 1
) as a
group by 1