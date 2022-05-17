use add_management_student;
select*from class;
select*from student;
select*from subject_1;
select*from mark;
select address,count(student_id) from student group by address;
select s.student_id,s.student_name,avg(mark) from student s join mark m on s.student_id=m.student_id group by s.student_id,s.student_name;
select s.student_id,s.student_name,avg(mark) from  student s join mark m on s.student_id=m.student_id group by s.student_id,s.student_name 
having avg(mark) > 15;
select  s.student_id,s.student_name,avg(mark) from  student s join mark m on s.student_id=m.student_id group by s.student_id,s.student_name 
having avg(mark) >= all(select avg(mark) from mark group by mark.student_id);
