
DELETE FROM Credits;
DELETE FROM Completion;
DELETE FROM Assignment;
DELETE FROM Student;
DELETE FROM Task;
DELETE FROM Course;



INSERT INTO Course (course_name, course_description) VALUES
('Database Systems', 'Introduction to relational databases and SQL.'),
('Web Development', 'Front-end and back-end web programming.'),
('Data Science', 'Statistical analysis and machine learning.'),
('Operating Systems', 'Processes, memory, and system architecture.'),
('Networking Basics', 'Fundamentals of computer networks.');


INSERT INTO Task (task_name) VALUES
('SQL Basics'),
('Joins Practice'),
('Web HTML Assignment'),
('Python Analytics'),
('Machine Learning Model'),
('Memory Management Lab'),
('Network Configuration Task');


INSERT INTO Assignment (task_id, course_id) VALUES
(1, 1),  -- SQL Basics → Database Systems
(2, 1),  -- Joins Practice → Database Systems
(3, 2),  -- HTML Assignment → Web Dev
(4, 3),  -- Python Analytics → Data Science
(5, 3),  -- ML Model → Data Science
(6, 4),  -- Memory Lab → Operating Systems
(7, 5);  -- Network Config → Networking


INSERT INTO Student (student_name, major) VALUES
('Alice Johnson', 'Computer Science'),
('Bob Smith', 'Information Technology'),
('Charlie Nguyen', 'Software Engineering'),
('Diana Lopez', 'Data Science'),
('Elias Rami', 'Computer Networks');



INSERT INTO Completion (assignment_id, student_id, completion_time) VALUES
(1, 1, '2024-12-20 10:00:00'),
(2, 1, '2025-01-10 15:00:00'),
(4, 4, '2024-12-29 09:00:00'),
(5, 4, '2025-02-01 14:45:00'),
(6, 3, '2025-01-15 08:20:00'),
(7, 5, '2024-12-18 13:50:00');


INSERT INTO Credits (student_id, course_id, grade, credits_earned) VALUES
(1, 1, 4.0, 5),
(1, 2, 3.5, 5),
(2, 2, 3.0, 5),
(4, 3, 5.0, 5),
(4, 1, 4.5, 5);
