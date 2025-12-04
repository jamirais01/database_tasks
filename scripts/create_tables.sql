-- Active: 1764854030803@@127.0.0.1@5432@postgres@public

CREATE TABLE Course (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100),
    course_description TEXT
);

CREATE TABLE Task (
    task_id SERIAL PRIMARY KEY,
    task_name VARCHAR(100)
);

CREATE TABLE Assignment (
    assignment_id SERIAL PRIMARY KEY,
    task_id INT REFERENCES Task(task_id),
    course_id INT REFERENCES Course(course_id)
);

CREATE TABLE Student (
    student_id SERIAL PRIMARY KEY,
    student_name VARCHAR(100),
    major VARCHAR(100)
);

CREATE TABLE Completion (
    completion_id SERIAL PRIMARY KEY,
    assignment_id INT REFERENCES Assignment(assignment_id),
    student_id INT REFERENCES Student(student_id),
    completion_time TIMESTAMP
);

CREATE TABLE Credits (
    credit_id SERIAL PRIMARY KEY,
    student_id INT REFERENCES Student(student_id),
    course_id INT REFERENCES Course(course_id),
    grade NUMERIC(4,2),
    credits_earned INT
);