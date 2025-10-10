create table students (
					  student_id int primary key ,
					  first_name varchar(50), 
					  last_name varchar(50), 
					  date_of_birth date, 
					  enrollment_date date, 
					  major varchar(50) 
					  );
					  
create table courses(
					  course_id int primary key ,
					  course_name varchar(50), 
					  credits int, 
					  department varchar(100)
					  );

create table instructors(
					  instructor_id int primary key ,
					  first_name varchar(50), 
					  last_name varchar(50), 
					  hire_date date,
					  department varchar(100)
					  );

create table enrollments(
					  enrollment_id int primary key , 
					  student_id int, 
					  course_id int,
					  semester varchar(100),
					  year int,
					  grade int 
					  );

Insert into students (student_id, first_name, last_name, date_of_birth, enrollment_date, major)
values
(1, 'Esther', 'Mgbedo', '2002-05-24', '2021-09-15', 'Computer Engineering'),
(2, 'John', 'Doe', '2001-03-12', '2020-09-10', 'Business Administration'),
(3, 'Mary', 'Johnson', '2003-07-19', '2021-09-15', 'Electrical Engineering'),
(4, 'David', 'Brown', '2000-11-02', '2019-09-10', 'Accounting'),
(5, 'Sophia', 'Williams', '2002-02-10', '2021-01-05', 'Graphic Design'),
(6, 'Michael', 'Smith', '2001-09-08', '2020-09-15', 'Computer Science'),
(7, 'Grace', 'Anderson', '2003-04-14', '2022-01-20', 'Economics'),
(8, 'Daniel', 'Clark', '2002-08-28', '2021-09-15', 'Mechanical Engineering'),
(9, 'Chloe', 'Davis', '2004-06-10', '2023-01-05', 'Marketing'),
(10, 'James', 'Wilson', '2001-12-05', '2020-09-15', 'Information Technology');
					  

insert into courses (course_id, course_name, credits, department)
values
(1, 'Database Systems', 3, 'Computer Science'),
(2, 'Microeconomics', 3, 'Economics'),
(3, 'Digital Circuits', 4, 'Electrical Engineering'),
(4, 'Financial Accounting', 3, 'Accounting'),
(5, 'Graphic Design Basics', 2, 'Arts and Design'),
(6, 'Thermodynamics', 4, 'Mechanical Engineering'),
(7, 'Marketing Principles', 3, 'Business Studies'),
(8, 'Programming in C', 3, 'Computer Science');
					  

Insert into instructors (instructor_id, first_name, last_name, hire_date, department)
values
(1, 'Dr. Samuel', 'Adams', '2015-08-10', 'Computer Science'),
(2, 'Dr. Olivia', 'Benson', '2017-01-12', 'Economics'),
(3, 'Dr. Henry', 'Clark', '2018-03-19', 'Electrical Engineering'),
(4, 'Dr. Grace', 'Morgan', '2016-06-25', 'Accounting'),
(5, 'Dr. Linda', 'Nguyen', '2020-09-14', 'Arts and Design');
				  

Insert into enrollments (enrollment_id, student_id, course_id, semester, year, grade)
values
(1, 1, 1, 'First', 2021, 85),
(2, 1, 8, 'Second', 2022, 90),
(3, 2, 7, 'First', 2021, 78),
(4, 2, 4, 'Second', 2022, 82),
(5, 3, 3, 'First', 2021, 88),
(6, 3, 6, 'Second', 2022, 79),
(7, 4, 4, 'First', 2019, 91),
(8, 4, 2, 'Second', 2020, 80),
(9, 5, 5, 'First', 2021, 87),
(10, 5, 7, 'Second', 2022, 89),
(11, 6, 1, 'First', 2020, 84),
(12, 6, 8, 'Second', 2021, 92),
(13, 7, 2, 'First', 2022, 77),
(14, 7, 7, 'Second', 2023, 83),
(15, 8, 3, 'First', 2021, 81),
(16, 8, 6, 'Second', 2022, 85),
(17, 9, 5, 'First', 2023, 93),
(18, 9, 7, 'Second', 2024, 89),
(19, 10, 1, 'First', 2020, 88),
(20, 10, 8, 'Second', 2021, 90);

Select * from students	

Select * from courses
where credits > 3;

Select * from instructors
where department = 'Accounting';
