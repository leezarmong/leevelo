

desc emp;


select * from emp;

--emp테이블에서 FORD 사원과 같은 급여를 받고 있는 사원들의 정보를 검색하시오
select * from emp where sal = (select sal from emp where ename = 'FORD');





select *from emp;

select *from emp where sal = (select sal from emp where ename = 'FORD');

