# Write your MySQL query statement below

select st.student_id, st.student_name, sb.subject_name, count(ex.subject_name) as attended_exams
from Students as st
cross join Subjects as sb 
left join Examinations as ex
on sb.subject_name = ex.subject_name
and st.student_id = ex.student_id
group by 1, 2, 3
order by 1, 2, 3