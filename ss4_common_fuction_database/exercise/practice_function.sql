use add_management_student;
select*from class;
select*from student;
select*from subject_1;
select*from mark;

select*from subject_1 where credit =
(select max(credit) from subject_1);

select sub.sub_name , m.mark from subject_1 sub join mark m on sub.sub_id = m.sub_id
where mark =(select max(mark) from mark);

select s.student_name, m.mark from student s join mark m on s.student_id = m.student_id
 order by m.mark desc;

