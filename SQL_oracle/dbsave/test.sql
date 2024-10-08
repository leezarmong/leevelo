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




