# Write your MySQL query statement below

/* Write a solution to find the percentage of the users registered in each contest rounded to two decimals.

Return the result table ordered by percentage in descending order. 
In case of a tie, order it by contest_id in ascending order. */

select contest_id, 
  round(count(distinct r.user_id) / (select count(distinct user_id) from users) * 100 , 2) as percentage
from register as r
group by 1
order by 2 desc, 1 asc