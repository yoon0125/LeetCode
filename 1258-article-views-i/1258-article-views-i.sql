# Write your MySQL query statement below

/*
Write a solution to find all the authors that viewed at least one of their own articles.
Return the result table sorted by id in ascending order.
*/

select distinct author_id as id
from Views
where author_id = viewer_id
order by 1 asc