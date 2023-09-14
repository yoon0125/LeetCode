# Write your MySQL query statement below

# Write a solution to show the unique ID of each user, If a user does not have a unique ID replace just show null.

select unique_id, name
from Employees as a
left join EmployeeUNI as b
on a.id = b.id