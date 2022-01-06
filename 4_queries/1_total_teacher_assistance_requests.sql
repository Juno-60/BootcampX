-- wrong answer for idiots

-- SELECT count(*) FROM assistance_requests
-- WHERE teacher_id = (
--   SELECT id FROM teachers
--   WHERE name = 'Waylon Boehm'
-- );

-- correct answer for smart people
SELECT count(assistance_requests.*) as total_assistances, teachers.name
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;