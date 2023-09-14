# Write your MySQL query statement below

Select product_name, year, price
from Sales as a
inner join Product as b
on a.product_id = b.product_id