# Write your MySQL query statement below
/*
select name
from Employee
where managerID is null
group by 1

managerId


*/


select name
from (
  select distinct managerId
  from Employee
  group by 1
  having count(managerId) >= 5
) as a
inner join Employee as b
on a.managerId = b.id


 