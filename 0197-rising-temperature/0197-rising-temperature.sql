# Write your MySQL query statement below

/*
Write a solution to find all dates' Id 
with higher temperatures compared to its previous dates (yesterday).
*/

/*
SELECT B.id
FROM Weather as A 
INNER JOIN Weather as B 
ON A.recordDate = B.recordDate - 1
WHERE B.temperature > A.temperature
order by A.recordDate asc
*/

SELECT a.id
FROM Weather a, Weather b
WHERE datediff(a.recordDate, b.recordDate) = 1
AND a.temperature > b.temperature;