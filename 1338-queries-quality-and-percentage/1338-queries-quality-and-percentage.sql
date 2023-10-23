# Write your MySQL query statement below

select query_name, round(avg(q), 2) as quality, 
  round((sum(pqp)/count(distinct result)) * 100, 2) as poor_query_percentage
from(
  select query_name, result, rating, (rating / position) as q,
    case when rating < 3 then 1
    else 0
    end as pqp
  from queries
) as a
group by 1
order by 2 desc
