# Write your MySQL query statement below

# Find the names of the customer that are not referred by the customer with id = 2


SELECT name
from Customer
where (referee_id <> 2) or (referee_id is null)