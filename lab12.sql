-- Concatenate Course Name and Semester-- 
SELECT course_name || ' - ' || semester AS course_with_semester
FROM courses;

-- Find Courses with Labs on Fridays-- 

SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time LIKE 'Fri%';

--Assignments with Due Dates After the Current Date-- 

SELECT *
FROM assignments
WHERE due_date > Date ('now');

--Count Assignments by Status-- 

SELECT status, COUNT(*) AS assignments_count
FROM assignments
group by status;

--Find the Course with the Longest Course Name--

SELECT course_id, course_name
FROM courses
ORDER by Length(course_name) DESC
LIMIT 1;

--List All Course Names in Uppercase--

SELECT upper(course_name) AS course_name_upper
FROM courses;

--List Assignments Due in September--

SELECT title
from assignments
where due_date like '%-09-%';

--Find Assignments with Missing Due Dates--

SELECT *
FROM assignments
WHERE due_date is NULL;

--end--

