# Write your MySQL query statement below

-- ids of products that are both low fat and recyclable.

select product_id
from Products
where (low_fats = 'Y') and (recyclable = 'Y')