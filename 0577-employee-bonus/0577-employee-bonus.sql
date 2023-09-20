# Write your MySQL query statement below


select name, bonus
from Employee as a
left join Bonus as b
on a.empId = b.empId
where (bonus is null or bonus < 1000)
