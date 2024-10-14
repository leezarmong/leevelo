--emp테이블에서 부서번호(DEPTNO)가 10이고 직무(JOB)가'MANAGER'인 데이터 검색

select * from emp
where deptno = 10 and job = 'MANAGER';

--emp테이블에서 부서번호(DEPTNO)가 10번이 아닌 사원들을 검색
select * from emp
where deptno != 10;

--emp 테이블에서 급여(sal)가900 미만이거나 4000초과인 사원을 검색
select * from emp
where sal <900 or sal >4000;

--student 테이블에서 키가 170이상이고 몸무게가 80kg이상인 데이터 검색
select * from student
where stu_height >=170 and stu_weight >=80 ;

--student테이블에서 몸무게(stu_weight)가 60에서 70사이의 데이터 검색
select * from student 
where stu_weight between 60 and 70;

--student에서 이름이'김'으로 시작하는 학생의 stu_no,stu_name,stu_dept검색
select stu_no,stu_name,stu_dept from student
where stu_name like'김%';

--student 테이블에서 이름의 두 번째 글자가 '수'인 학생의 stu_no,stu_name,stu_dept검색
select stu_no, stu_name, stu_dept from student
where stu_name like '_수%';

--student테이블에서 '컴퓨터정보'과나'기계'과인 학생의stu_no,stu_name검색
select stu_no, stu_name from student
where stu_dept='컴퓨터정보' or  stu_dept='기계';

--self조인:같은 테이블 조인.테이블의 별칭을 사용
--자신의 상급자를 구하는 질의문
select a.empno as 사원번호,a.ename as 사원이름,b.empno as 상급자사원번호,b.ename as 상급자이름
from emp a, emp b
where a.mgr = b.empno;



-- 부질 의 > CASE 
--'BLACK'의 월급보다 많이 받는 사람의 사원번호,이름 월급 검색
select empno,ename,sal
from emp 
where sal > (select sal from emp where ename='BLAKE');

select empno,ename,sal 
from emp
where sal > (select sal from emp where ename='BLACK');

--박희철 학생과 같은 체중을 가지고 있는 학생의 정보 검색
select * from student
where stu_weight = (select stu_weight from student where stu_name='박희철');

--emp테이블에서 FORD 사원과 같은 급여를 받고 있는 사원들의 정보를 검색하시오
select * from emp where sal = ( select sal from emp where ename='FORD');
select * from emp
where sal=
(select sal
from emp
where  ename='FORD')
and ename <> 'FORD';


select stu_class from student;
select stu_class, stu_dept, stu_name from student where stu_dept='컴퓨터정보';
select distinct stu_class, stu_dept from student where stu_dept='컴퓨터정보';
--'컴퓨터정보'과 학생과 같은 반을 가진 학생의 정보 검색
select * from student where stu_class in ( select distinct stu_class from student where stu_dept='컴퓨터정보');
--'컴퓨터정보'과 학생과 같은 반을 가진 학생의 정보 검색
select*from student where stu_class in
(select distinct stu_class from student where stu_dept='컴퓨터정보') and stu_dept <> '컴퓨터정보';




select * from student;
-- case test 
select stu_name,
case
when stu_height >= 180 then 'A'
when stu_height >= 170 then 'B'
when stu_height >= 160 then 'C'
else 'F'
END as tall
from student;


select stu_name,stu_height,
case
when stu_height >=180 then 'A'
when stu_height >=170 then 'B'
when stu_height >=160 then 'C'
else 'D'
end as grade
from student;


select * from emp;

select ename,job,sal,
case job
when 'MANAGER' then sal*1.2
when 'ANALYST' then sal*1.1
else sal
end as 인
from emp;


select empno,ename,sal,
 case when sal between 1 and 1000 then 'LEVEL 1'
     when sal between 1001 and 2000 then 'LEVEL 2'
     when sal between 2001 and 3000 then 'LEVEL 3'
     when sal between 3001 and 4000 then 'LEVEL 4'
     else 'LV5'
end as LV
from emp
order by sal desc;



select empno , ename , sal,
case 
when sal >= 5000 then 1
when sal >= 3000 then 2
when sal >= 1000 then 3
else 0
end as 등급
from emp;

select max(sal), min(sal) from emp;


-- ddl create test
   create table test (
   memberNO number generated as identity ( start with 1 ) primary key,
   memberADD varchar2(20),
   memberNAME varchar2(20),
   CONSTRAINT fk_memberName foreign key(cateCode) references vam_bcate(cateCode)
   
   );






create table member (
memberNO number generated as identity ( start with 1 ) primary key,
memberNAME varchar2(20),
memberADD varchar2(20),
constraint fk_name foreign key(memberNAME) references memberB(memberNAME)
);


select * from student;

select empno,ename,sal,
 case when sal between 1 and 1000 then 'LEVEL 1'
     when sal between 1001 and 2000 then 'LEVEL 2'
     when sal between 2001 and 3000 then 'LEVEL 3'
     when sal between 3001 and 4000 then 'LEVEL 4'
     when sal > 4001 then 'LEVEL 5'
end as "level"
from emp
order by sal desc;

select count(*)as학생,sum(stu_height)as 신장합,
count(stu_height) as 해당학생수,avg(stu_height) as 평균신장
from student;

select stu_dept,avg(stu_weight)from student group by stu_dept;

select stu_dept, avg(stu_weight) from student group by stu_dept;


select rownum as RN, A.* from(
select * from member m
join station s
on m.member_name = s.member_name
where member_no is not null
order by m.member_no
) A;

select stu_dept, avg(stu_height) from student group by stu_dept where stu_height is not null;

select stu_dept, avg(stu_height) from student where stu_height is not null group by stu_dept;

select stu_dept, ROUND(avg(stu_height),3) from student;
select stu_dept, ROUND(avg(stu_height),3) from student where stu_height is not null group by stu_dept;


--급여 연습
select * from emp;

SELECT SUM(salColumn) AS 총급여
FROM emptable
WHERE nameColumn = 'Hong Gil-dong'  
  AND EXTRACT(MONTH FROM datecolumn) BETWEEN 1 AND 6  
  AND EXTRACT(YEAR FROM datecolumn) = 2023;
  
select sum(sal) as 총급여
from emp
where ename ='KING'
 and extract(month from hiredate) BETWEEN 1 AND 12  ;
 
--
select avg(sal) from emp
where ename='ss'
and extract(month from date) between  1 and 12
and extract(year from ydate)=2023;




select * from emp;


desc emp;



select round(avg(sal),3) as 연도평균 from emp
where hiredate between TO_DATE('1981-01-01') and to_date('1982-12-31');

SELECT ENAME, SAL 
FROM emp
WHERE HIREDATE BETWEEN TO_DATE('1981-01-01') AND TO_DATE('1982-12-31');