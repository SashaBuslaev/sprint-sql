CREATE TABLE students (
    student_id int PRIMARY KEY,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    email varchar(100) NOT NULL UNIQUE,
    enrollment_date date NOT NULL
);