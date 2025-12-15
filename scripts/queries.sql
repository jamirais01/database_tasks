

SELECT 
    a.assignment_id,
    t.task_name,
    c.course_name
FROM Assignment a
JOIN Task t ON a.task_id = t.task_id
JOIN Course c ON a.course_id = c.course_id;


SELECT
    comp.completion_id,
    comp.completion_time,
    a.assignment_id,
    t.task_name
FROM Completion comp
JOIN Assignment a ON comp.assignment_id = a.assignment_id
JOIN Task t ON a.task_id = t.task_id;


SELECT
    s.student_name,
    c.course_name,
    cr.grade,
    cr.credits_earned
FROM Student s
JOIN Credits cr ON s.student_id = cr.student_id
JOIN Course c ON cr.course_id = c.course_id;


SELECT
    s.student_name,
    t.task_name,
    comp.completion_time
FROM Completion comp
JOIN Student s ON comp.student_id = s.student_id
JOIN Assignment a ON comp.assignment_id = a.assignment_id
JOIN Task t ON a.task_id = t.task_id;


SELECT
    c.course_name,
    COUNT(a.assignment_id) AS assignment_count
FROM Course c
LEFT JOIN Assignment a ON c.course_id = a.course_id
GROUP BY c.course_name;


SELECT
    c.course_name,
    c.course_description
FROM Course c
LEFT JOIN Assignment a ON c.course_id = a.course_id
WHERE a.assignment_id IS NULL;


SELECT
    a.assignment_id,
    t.task_name,
    comp.completion_time
FROM Completion comp
JOIN Assignment a ON comp.assignment_id = a.assignment_id
JOIN Task t ON a.task_id = t.task_id
WHERE comp.completion_time > '2025-01-01';




SELECT
    s.student_name,
    s.major
FROM Student s
LEFT JOIN Credits cr ON s.student_id = cr.student_id
WHERE cr.credits_earned IS NULL;


SELECT
    s.student_name,
    s.major
FROM Student s
WHERE s.student_id NOT IN (SELECT student_id FROM Credits);


SELECT
    c.course_name,
    COUNT(DISTINCT cr.student_id) AS total_students,
    ROUND(AVG(cr.grade),2) AS average_grade,
    SUM(cr.credits_earned) AS total_credits
FROM Course c
LEFT JOIN Credits cr ON c.course_id = cr.course_id
GROUP BY c.course_name;
