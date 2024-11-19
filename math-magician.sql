ALTER TABLE students
ADD test_score int;
update students
set test_score = case 
when student_id = 1 then 90
when student_id = 2 then 85
when student_id = 3 then 88
when student_id = 4 then 95
when student_id = 5 then 70
when student_id = 6 then 75
when student_id = 7 then 99
end 
where student_id in (1,2,3,4,5,6,7);
SELECT first_name, last_name, test_score, test_score + 5 adjusted_score FROM students;