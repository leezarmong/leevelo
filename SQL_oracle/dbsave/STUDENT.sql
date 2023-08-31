
desc student;

select * from student;

select stu_name , stu_height , stu_no from student
order by stu_no desc;






alter table student add test varchar2 (20);
insert into student(stu_no , test) values (20120201 ,'tes');

update student set stu_height = 180
where test = 'tes';

select stu_no from student natural join emp;

alter table student rename column test to testa;

select stu_name , testa as 테스트 from student;

delete from student where testa = 'tes';

alter table student drop column testa;











ALTER TABLE student MODIFY editid VARCHAR2(4);

select * from student ;




alter table student add stu_test varchar2(10);

alter table student drop column stu_test;
select * from student;


INSERT INTO student (stu_name) VALUES ('test');

INSERT INTO student (stu_name) VALUES ('test');
insert into student (stu_no , stu_name) values(20230102,'tet');

delete from student where stu_name='tet';
select * from student;

insert into student values('20220502','리자드','상담',1,'A','M',182,58);

update student set stu_height = stu_height +1
where stu_name = '리자드';

update student set stu_height = null
where stu_name = '리자드';

update student set stu_name = '리자몽'
where stu_name = '리자드';

ALTER TABLE student
RENAME COLUMN stu_name TO name;

alter table student
rename column name to stu_name;

select * from student;

select stu_name , stu_height as 키  from student
where stu_height >= 179;


select * from student order by stu_no desc;


select stu_name , stu_no from student order by stu_no;
-- 오름차순 

select stu_name , stu_no from student order by stu_no desc  ;
-- 내림차순

select stu_no,stu_name,stu_dept,stu_weight as target from student order by target;


select * from student 



--'옥성우'학생보다 신장이 큰 학생들의 학번,이름,신장 검색
select stu_no , stu_name ,stu_height  from student where stu_height >(
select stu_height from student where stu_name = '옥성우');

select * from student;

select stu_no , stu_height from student where stu_height> (select stu_height from student where stu_name ='리자몽');
--self join
select a.stu_no,a.stu_name,a.stu_height
from student a, student b
where a.stu_height>b.stu_height and b.stu_name='옥성우';



commit;