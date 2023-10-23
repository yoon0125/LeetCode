# Write your MySQL query statement below

select project_id, round(avg(experience_years), 2) as average_years
from project as p
inner join employee as e
on p.employee_id = e.employee_id
group by 1