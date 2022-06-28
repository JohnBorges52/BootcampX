SELECT day, COUNT(*)
FROM assignments
GROUP BY day
Order by day;