# Write your MySQL query statement below

/*
Write a solution to find the IDs of the users who visited 
without making any transactions and the number of times they made these types of visits.
*/

select distinct customer_id, count(customer_id) as count_no_trans
from Visits
where visit_id not in (select visit_id from Transactions)
group by 1
order by 2 desc