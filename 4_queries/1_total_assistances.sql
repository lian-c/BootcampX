SELECT  count(assistance_requests.id) as total_assistance, teachers.name as name
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY name;