create database student;
use student;
Insert into student_details (id, Name, Marks)
values(1, 'San', 70), (2, 'Hari', 90), (3, 'Arjun', 60), (4, 'Anu', 80), (5, 'Megha', 65);
select * from student_details;
select * from student_details where marks>=70 and marks<=90;
select * from student_details where Name = 'San';
select * from student_details where Name like 'A%';
select * from student_details where Name like '%n';
select * from student_details where Name like '%eg%';

select student_id as Student_rollno from student_details;

select * from student_details s where s.name= 'san';

select count(*) as total from student_details;

insert into dept values(1, 'Science'),(2, 'English'),(3, 'Maths');



select * from dept;

select * from student_details;

select * from student_details group by dept_id having dept_id>2;

select s.id, s.name, d.dept_name from dept d, student_details s where s.marks>80 and d.dept_name = 'Maths' and  s.dept_id=d.id;
select * from dept where dept_name='Maths' || dept_name='Science';
select * from student_details where dept_id in (select id from dept where dept_name='Science');
select * from student_details where dept_id=3;
select * from student_details s, dept d where s.marks>70 and d.dept_name='Maths';
