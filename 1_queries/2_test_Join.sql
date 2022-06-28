SELECT students.name as students_name, cohorts.name as cohorts_name, cohorts.start_date as cohorts_start_date, students.start_date as students_start_date
FROM students JOIN cohorts ON cohort_id = cohorts.id
WHERE students.start_date <> cohorts.start_date
ORDER BY cohorts_start_date;