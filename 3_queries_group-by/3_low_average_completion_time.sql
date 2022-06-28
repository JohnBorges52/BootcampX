SELECT students.name as student,  avg(assignment_submissions.duration) as average_estimated_duration, avg(assignments.duration) as average_assignment_duration
FROM assignments
JOIN assignment_submissions ON assignments.id = assignment_id
JOIN students ON student_id = students.id 
WHERE end_date IS NULL
GROUP BY students.name
HAVING avg(assignments.duration) > avg(assignment_submissions.duration)
ORDER by students.name;