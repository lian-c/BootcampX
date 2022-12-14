SELECT assignment_id as id, name, day, chapter, count(assistance_requests) as total_requests
FROM assignments
JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY assignment_id, name, day,chapter
ORDER BY total_requests DESC;