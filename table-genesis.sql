CREATE TABLE students (
    student_id int PRIMARY KEY,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    email varchar(100) NOT NULL UNIQUE,
    enrollment_date date NOT NULL
);

INSERT INTO student (first_name, last_name, email, enrollment_date)
VALUES 
('Mustafa', 'Sarvarov', 'mustafa.sarvarov@gmail.com', '2023-10-04'),
('Arthur', 'Kim', 'arthur.kim@mail.ru', '2024-10-04'),
('Elnar', 'Moldabekov', 'elnar.moldabekov', '2023-01-16');