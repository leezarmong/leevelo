SQL 쿼리문

————————————————————————————————————————————————— 

--[인사관리]
--테이블명:사원(emp)
--empno(사원번호),ename(사원이름),job(직무),mgr(사수의 사원번호)
--hireddate(입사일자),sal(급여),comm(커미션),deptno(부서번호)

--테이블명:부서(dept)
--deptno(부서번호),dname(부서명),loc(부서위치)

--테이블명:급여구간(salgrade)
--grade(급여등급),losal(하위급여),this(상위급여)

--[학사관리]
--테이블명:학생(student)
--stu_no(학번),stu_name(이름),stu_dept(학과),stu_grade(학년)
--stu_class(반),stu_gender(성별),stu_height(키),stu_weight(체중)

--테이블명:과목(subject)
--sub_no(과목번호),sub_name(과목이름),sub_prof(교수명),sub_grade(학년),sub_dept(학과)

--테이블명:수강(enrol)
--sub_no(과목번호),stu_no(학번),enr_grade(점수)

--[2022년 12월 26일(월) 실습]

--student 테이블 구조
desc student;

--enrol 테이블 구조
desc enrol;

--subject 테이블 구조
desc subject;

--student 테이블에 있는 모든 데이터를 검색하시오
select * from student;

--student테이블에서stu_no,stu_name를 검색하시오
select stu_no,stu_name from student;

--student테이블에서stu_dept를 검색하시오
select stu_dept from student;

--student테이블에서stu_deot를 검색하시오(중복제거)
select DISTINCT stu_dept from student;

--student테이블에서stu_grade,stu_class를 검색하시오(중복제거)
select DISTINCT stu_grade,stu_class from student;

--enrol테이블에서enr_grade열의 데이터에 10점씩 더해서 검색
select stu_no,sub_no,enr_grade,enr_grade+10 from ENROL;

--student테이블에서stu_no열은ID로,stu_name열은name으로 별칭 부여
select stu_no as ID,stu_name from student;

--emp테이블에서 각ename,sal열에 이름,월급 별칭을 부여하고sal열에는12를 곱해 연봉으로 별칭부여
select ename"이름",sal"월급",sal*12"연봉"from emp;

--student테이블에서stu_no열은"학번"으로,stu_name열은"이름"으로 별칭 부여
select stu_no as"학번",stu_name as"이름"from student;

--[2022년 12월 28일(수) 실습]

--("")를 사용하면 as를 생략하여 별칭 부여 가능
select stu_no"학번", stu_name "이름" from student;

--student테이블에서 stu_deot열과stu_name열을 연결하고 학과성명으로 별칭 부여
select stu_dept||stu_name as 학과성명 from student;

select stu_dept||','||stu_name||'입니다'as 학과성명 from student;

--emp테이블에서ename을 "이름",sal을"월급",sal*12을 "연봉" 별칭을 사용(as사용)
select ename as "이름", sal as "월급", sal*12 as "연봉" from emp;

--emp 테이블에서 ename을 "이름",sal을 "월급",sal*12을 "연봉"
select ename ||'''s job is'|| job "NAME AND JOB" from emp;

--student테이블에서'컴퓨터정보'과 학생의stu_name,stu_dept,stu_grade,stu_class검색
select stu_name,stu_dept,stu_grade,stu_class
from student
where stu_dept='컴퓨터정보';

--emp테이블에서 직무(job)가 'SALESMAN"인 사원의 ename,job,sal,deptno를 검색
select ename,job,sal,deptno
from EMP
where job='SALESMAN';

--student테이블에서'컴퓨터정보'과이고 학년이 2인 학생의 stu_name,stu_dept,stu_grade,stu_class 검색
select stu_name,stu_dept,stu_grade,stu_class
from student
where stu_dept='컴퓨터정보'and stu_grade = 2;

--emp테이블에서 부서번호(DEPTNO)가 10이고 직무(JOB)가'MANAGER'인 데이터 검색
select *
from emp
where JOB='MANAGER' and DEPTNO =10;

--emp테이블에서 부서번호(DEPTNO)가 10번이 아닌 사원들을 검색
select * from emp where not DEPTNO=10;
select * from emp where deptno<>10;
select * from emp where deptno!=10;

--emp 테이블에서 급여(sal)가900 미만이거나 4000초과인 사원을 검색
select * from emp where sal <900 or sal > 4000;

--student 테이블에서 키가 170이상이고 몸무게가 80kg이상인 데이터 검색
select *
from student
where stu_height >= 170 and stu_weight >=80;

--student테이블에서 몸무게(stu_weight)가 60에서 70사이의 데이터 검색
select *
from student
where stu_weight between 60 and 70;

select *
from student
where stu_weight >=60 and stu_weight <= 70;

--emp 테이블에서 급여(sal)가 1000부터 1500사이의 데이터를 검색
select *
from emp
where sal between 1000 and 1500;

select *
from emp
where sal >=1000 and sal <=1500;

--student 테이블에서 학번(STU_NO)이 20140001부터 20149999사이의 데이터 검색
select *
from student
where stu_no between '20140001' and '20149999';

select *
from student
where stu_no >='20140001' and stu_no <= '20149999';

--student에서 이름이'김'으로 시작하는 학생의 stu_no,stu_name,stu_dept검색
select stu_no,stu_name,stu_dept
from student
where stu_name like '김%';

--emp 테이블에서 사원이름(ename)중 J자로 시작하는 사원의 정보(empno,ename,job)를 검색
SELECT empno,ename,job  
from emp
where ename like'J%';

--student 테이블에서 이름의 두 번째 글자가 '수'인 학생의 stu_no,stu_name,stu_dept검색
select stu_no,stu_name,stu_dept
from student
where stu_name like '_수%';

--emp 테이블에서 이름의 두 번째 문자가'L'인 사원의 empno,enmae,job를 검색
select empno,ename,job
from emp
where ename like '_L%';

--student테이블에서 학번(stu_no)이 '2014'로 시작하는 데이터 검색
select * 
from student
where stu_no like'2014%';

--student테이블에서 키(stu_height)가 입력안된 학생의stu_no,stu_name,stu_height검색
select stu_no,stu_name,stu_height from student;
select stu_name,stu_height/30.46 from student;
select stu_no,stu_name,stu_height from student where stu_height is null;
select stu_no,stu_name,stu_height from student where stu_height is not null;

--emp테이블에서comm이null인 사원의 empno,ename,comm을 검색
select empno,ename,comm from emp;
select empno,ename,comm from emp where comm is null;

--student테이블에서 '컴퓨터정보'과나'기계'과인 학생의stu_no,stu_name검색
select stu_no,stu_name from student where stu_dept in ('컴퓨터정보','기계');

select stu_no,stu_name,stu_dept from student where stu_dept='컴퓨터정보' or stu_dept='기계';

--emp테이블에서 부서번호(deptno)가 10,30인 부서에 근무하는 empno,deptno를 검색
select empno,deptno from emp where deptno in (10,30);
select empno,deptno from emp where deptno='10' or deptno='30';

--student테이블에서 학생들의 신상 중에서 학번을 기준으로 오름차순으로 검색
select stu_no,stu_name from student order by stu_no;

--student테이블에서 학생들의 신상 중에서 학번을 기준으로 내림차순으로 검색
select stu_no,stu_name from student order by stu_no desc;

--emp테이블에서 최근에 입사한 사원부터 검색[입사일자(hiredate)]
select *
from emp
order by hiredate desc;

--별칭이 붙어 있는 열을 기준으로 정렬하는 질의문

--별칭(target)을 기준으로 정렬
select stu_no,stu_name,stu_dept,stu_weight-5 as target from student order by target;

--열의 순서번호(4)를 이용하여 정렬
select stu_no,stu_name,stu_dept,stu_weight-5 as target from student order by 4;

--산술식의 열의 이름(stu_weight-5)을 이용하여 정렬
select stu_no,stu_name,stu_dept,stu_weight-5 as target
from student
order by stu_weight-5;

--emp 테이블에서 연봉(별칭:annuslsal)을 기준으로 오름차순으로 정렬
select empno,ename,deptno,sal*12 as annualsal from emp order by annualsal;
select empno,ename,deptno,sal*12 as annualsal from emp order by 4;
select empno,ename,deptno,sal*12 as annualsal from emp order by sal*12;

--먼저stu_dept기준 오름차순 정렬 후, target(stu_weight-5)기준 오름차순 정렬
select stu_no,stu_name,stu_dept,stu_weight-5 as target from student
order by stu_dept, target;

--먼저stu_dept기준 오름차순 정렬 후, target(stu_weight-5)기준 내림차순 정렬
select stu_no,stu_name,stu_dept,stu_weight-5 as target from student
order by stu_dept,stu_weight-5 desc;

--select절에 포함되지 않는 열으 이용하여 정렬하는 질의문
select stu_no,stu_name,stu_dept,stu_weight-5 as target from student
order by stu_height;

--select절에 포함되지 않는 hiredate로 오름차순 정렬
select empno,ename,deptno,sal*12 as annualsal from emp
order by hiredate;

--emp테이블에서 deptno,annuasal을 기준으로 오름차순 정렬
select empno,ename,deptno,sal*12 as annuasal from emp
order by deptno,annuasal;

--emp테이블에서 deptno을 기준으로 오름차순 annuasla을 기준으로 내림차순 정렬
select empno,ename,deptno,sal*12 as annuasal from emp
order by deptno, annuasal desc;

--함수(숫자함수)

--round(m,n):m값을 소숫점 n의 자리까지 반올림
select round(345.678),round(345.678,0),round(345.678,1),round(345.678,-1)
from dual;

--trunc(m,n):m값을 소숫점 n의 자리까지 유지하고, 나머지 절삭
select trunc(997.654,2)"trunc1",trunc(997.654,0)"trunc2",trunc(997.654,-1)"trunc3"
from dual;

--mod(m,n):m값을 n으로 나눈 나머지 출력
--abs(n):n의 절대값 출력
--floor(n):소숫점 이하 자리 절삭하여 출력
--power(m.n):m의 n제곱 출력
select mod(10,3),abs(-100),floor(123.456),power(2,3)from dual;

--함수(문자함수)

--upper(m):소문자를 대문자로 변환
select upper ('korea') from dual;

--lower(m):대문자를 소문자로 변환
select lower ('KOREA') from dual;

--initcap(m):첫번째 문자를 대문자로 변환
select ename,initcap(ename)"initcap"from emp;

--length(m):문자 길이 출력
select ename,length(ename)from emp;

select stu_name,length(stu_name)from student;

--concat(m,n):두 문자를 연결(연결연산자||와 유사)
select concat(ename,job)from emp where deptno=10;

--substr(a,b,c):a의 일부분을 추출(a의b번째로부터 c개의 문자 추출)
select substr('abcde',3,2),substr('abcde',-4,2)from dual;

select substr('WELECOME TO ORACLE',3,4)from dual;

select substr('웰컴투오라클',4,3)from dual;

--INSTR(인수1,인수2,인수3,인수4):문자인수 중 특정 문자의 절대위치를 반환
select instr('WELCOME TO ORACLE','O')from dual;

select instr('WELWCOME TO ORACLE','O',6,2)from dual;

--lpad(a,b,c):자릿수를 지정하고 빈 공산을 특정 문자로 왼쪽부터 채워서 출력
select ename,lpad(ename,10,'*')from emp;

--rpad(a,b,c):자릿수를 지정하고 빈 공산을 특정 문자로 오른쪽부터 채워서 출력
select ename,rpad(ename,10,'*')from emp;

--replace(a,b,c):a에서b에 해당하는 문자를 c로 대체
select ename,replace(ename,substr(ename,1,2),'**')"replace"
from emp
where deptno=10;

--ltrim(' abc '):왼쪽 공백 또는 문자 제거
--rtrim(' abc '):오른쪽 공백 또는 문자 제거
--trim(' abc '):약쪽 공백 제거
select ltrim(' abc '),rtrim(' abc '),trim(' abc ')from dual;

select ename from emp where deptno=10;
select ename,ltrim(ename,'C')from emp where deptno=10;
select ename,rtrim(ename,'R')from emp where deptno=10;

--함수(날짜함수)

--시스템의 오늘 날짜 출력
select sysdate from dual;

--오늘을 기준으로 1일 이전(어제)의 날짜
select sysdate-1 from dual;

--오늘을 기준으로 1일 이후(내일)의 날짜
select sysdate+1 from dual;

--next_day(m,n):m을 기준으로 다음에 오는 n요일의 날짜 출력
select next_day(sysdate,'토')from dual;
select next_day(sysdate,7)from dual;

--month_between(m,n):m과n의 날수 차이(월단위)
select months_between('14/10/30','14/08/30')from dual;
select months_between('14/8/31','14/09/30')from dual;

--add_month(m,n):m에 n의 달을 더하여 출력
select sysdate,add_months(sysdate,1)from dual;

--last_day(m):m이 속한 달의 마지막날 출력
select sysdate,last_day(sysdate)from dual;

--reound(m):하루의 반을 넘기면다음 날짜로 출력(반올림), trunc(m):당일로 표시(버림)
select sysdate,round(sysdate),trunc(sysdate)from dual;
select round(sysdate,'month')from dual;

--[2022년 12월 29일(목) 실습]

--함수(변환함수)

--to_char함수:숫자,날짜 데이터를 문자 데이터로 변환
select empno, ename, to_char(hiredate,'yyyy-mm')as 입사년월 from emp;

--현재날짜를'yyyy'와'yy'의 형식의 문자 데이터로 변환
select sysdate, to_char(sysdate,'yyyy'),to_char(sysdate,'yy')from dual;

--현재날짜를 'mm'과 'month'(n월)의 형식의 문자 데이터로 변환
select sysdate, to_char(sysdate,'mm'),to_char(sysdate,'month')from dual;

--현재날짜를 'dd'와'day'(n요일)의 형식의 문자 데이터로 변환
select sysdate,to_char(sysdate,'dd'),to_char(sysdate,'day')from dual;

--현재날짜를'YYYY-MM-DD:HH24:MI:SS'(연-월-일-시-분-초)와 'month'(n월)의 형식의 문자 데이터로 변환
select sysdate,to_char(sysdate,'YYYY-MM-DD:HH24:MI:SS'),to_char(sysdate,'month')from dual;

--사원들의 입사일을 출력하되 요일까지 함께 출력하기
select hiredate,to_char(hiredate,'YYYY/MM/DD DAY')from emp;

--소수점 이상 1000의 자리는 그대로 표현, 소수점 이하는 셋째자리까지 반올림
select to_char(to_number(1234.5678),'9999.999')from dual;
select to_char(to_number(1234.5678),'999.999')from dual;

select to_char(1234,'99999'),to_char(1234,'099999'),to_char(1234,'$9999'),to_char(1234,'9999.99'),
to_char(12345,'99,999')from dual;

--to_number 함수:문자 데이터를 숫자 데이터로 변환.(java의parselnt와 동일)
select 2+to_number('2')from dual;

--to_date 함수:문자 데이터를 날짜 데이터로 변환
select empno,ename from emp where hiredate = to_date('1980-12-17','yy-mm-dd');

--예시
select to_char(SYSDATE-1,'YYYY/MM/DD')어제,
       to_char(SYSDATE,'YYYY/MM/DD')오늘,
       to_char(SYSDATE+1,'YYYY/MM/DD')내일
from dual;

--nvl(m,n)함수:m이 널이면 n값을 넣고, 아니면 출력
--stu_height필드 값이 null이면 0을 넣고, 아니면 입력된 값을 출력
select nvl(stu_height,0)from student;

--emp테이블에서 comm이 null이면 0을 넣은 필드와,nomm이 null이면 100을 넣은 필드 출력
select ename,comm,nvl(comm,0),nvl(comm,100)from emp where deptno=30;

--emp테이블에서 mgr이 null이면 0을 넣은 필드 출력
select empno,mgr,nvl(mgr,0)mgr2 from emp where deptno = 10;

--nvl2(l,m,n)함수:l이 널이 아니면 m값을 넣고, 널이면 n값을 넣어 출력
--comm이 널이 아니면 sal +comm 값을 넣고, 널이면 sal 값을 넣은 필드 출력
select ename,sal,comm,nvl2(comm,sal+comm,sal)from emp;

--nullif(m,n)함수:m과n을 비교해서 값이 같으면 널, 다르면 m을 출력
--nullif('A','A')에서 두 인수가 같으므로 null을 출력하고,
--nvl(null,'널 값')에서는 첫 번쨰 인수가 null이므로 '널 값' 출력
select nullif('A','A')from dual;
select nullif('A','B')from dual;
select nvl(nullif('A','A'),'널값')from dual;

--coalesce(a,b,c,d,e)함수:a가null이 아니면 a출력, null이면 b를 검사해 null이 아니면 b출력,null 이면 c검사
--첫째, 둘째 인수가 null이므로 셋째 인수를 검사하고, 널이 아니므로 10출력
select coalesce(null,null,10,100,null)from dual;

--null은 건너뛰고 null이 아닌 처음에 오는 인수 출력
select
coalesce('A','B','C'),coalesce(null,'B','C'),
coalesce(null,null,'C'),coalesce(null,null,null)
from dual;

--case 함수:[select필드 case필드 when조건 then처리 end"별칭" from테이블
select empno, ename, sal,
case job when 'SALSEMAN'then sal * 1.1
when 'CLERK'then sal * 1.15
when 'MANAGER' then sal * 1.2
else sal
end as 급여인상
from emp;

--예시
select empno,ename,sal,
 case when sal between 1 and 1000 then 'LEVEL 1'
     when sal between 1001 and 2000 then 'LEVEL 2'
     when sal between 2001 and 3000 then 'LEVEL 3'
     when sal between 3001 and 4000 then 'LEVEL 4'
     when sal > 4001 then 'LEVEL 5'
end"LEVEL"
from emp
order by sal desc;

--decode 함수:[select필드 decode(필드,조건,처리)from 테이블;]
select empno,ename,job,sal,
decode(job,'SALESMAN',sal*1.1,'CLERK',sal*1.15,'MANAGER',sal*1.2,sal) as 인상된급여
from emp;

--그룹함수(집계함수)
--max(n),min(n):조건을 만족하는 데이터의 최대값,최소값
--enrol테이블에서 enr_grade의 최대값과 최소값 구하기
select max(enr_grade),min(enr_grade)from enrol;

--student테이블에서 stu_dept가 기계인 데이터중 stu_weight의 최소값,최대값 구하기
select min(stu_weight),max(stu_weight)from student where stu_dept='기계';

--emp테이블에서 급여(sal)가 제일 높은 급여와 제일 낮은 급여를 검색
select max(sal),min(sal)from emp;

--greatest(a,b,c,d), least(a,b,c,d)
select greatest(10,30,50,80)from dual;
select least(10,30,50,80)from dual;

--count(n):조건을 만족하는 데이터 개수
--count(*):모든 행의 개수 출력
--count(stu_height):stu_height필드에서 null값을 제외한 데이터 개수 출력
select count(*),count(stu_height)from student;

--count(stu_dept):stu_dept필드에서 null값을 제외한 데이터 개수 출력
--count(distinct stu_dept):stu_dept필드에서 중복된 데이터 제거하고 개수 출력
select count(stu_dept),count(distinct stu_dept)from student;

--emp 테이블에서 레코드 개수
select count(*) from emp;

--emp테이블에서 job의 개수 검색해서 별칭"업무수"부여(단,중복 제거)
select count(distinct job) as "업무수" from emp;

--sum(n), avg(n):조건을 만족하는 데이터의 합,평균
select sum(stu_weight),to_char(avg(stu_weight),'9999.99')
from student
where stu_dept='컴퓨터정보';

select count(*)as학생,sum(stu_height)as 신장합,
count(stu_height)"해당학생수",avg(stu_height)"평균신장"
from student;

--emp테이블에서 급여(sal)의 합
select sum(sal) from emp;

--emp테이블에서 job이 'MANAGER'인 사람의 급여(sal) 합과 평균
select sum(sal),to_char(avg(sal),'9999.99')from emp where job='MANAGER';

--rownum:레코드의 순번 출력
select rownum, empno, ename from emp;

--student테이블에서 학생들의 avg(stu_weight)(몸무게 평균)데이터 출력해서 학과(stu_dept)별로 묶기
select stu_dept,avg(stu_weight)from student group by stu_dept;

--student테이블에서 몸무게(stu_weight)가 50이상인 학생수 데이터 출력해서 학과(stu_dept)별로 묶기
select stu_dept,count(*)from student where stu_weight>=50 group by stu_dept;

--emp 테이블에서 급여의 합을 부서별 그룹화하여 출력(deptno,sum(sal))
select deptno,sum(sal) from emp group by deptno;

--student테이블에서 학생 평균키가 최대인 학과의 평균키를 소수점 둘째자리까지 표시하여 학과별로 그룹화하여 출력
select to_char(max(avg(stu_height)),'999.99')from student group by stu_dept;

--emp테이블에서 급여가 2000이상 사원들을 부서별로 그룹화하여 사원수 출력(deptno,count(*))
select deptno,count(*)from emp where sal >=2000 group by deptno;

--student테이블에서 1차로 학과별로 그룹화하고,2차로 학과 내에서 학년별로 그룹화해서 출력
select stu_dept,stu_grade,count(*)from student group by stu_dept,stu_grade;

--emp테이블에서 소속 부서별(deptno)최대 급여와 최소 급여 구하기
select deptno,max(sal)"최대급여",min(sal)"최소급여"
from emp
group by deptno;

select * from emp order by deptno;

--having(조건):그룹함수 적용 결과에 다시 조건 부여
--[select 필드 from 테이블 group by 기준 having 조건;]
--student 테이블에서 '기계'과 학생들을 학년별로 그룹화하여 평균키가 160이상인 학년의 평균키 출력
select stu_grade,avg(stu_height)
from student
where stu_dept='기계'
group by stu_grade having avg(stu_height)>=160;

--student 테이블에서 학과별 그룹화하여 최대키가 175이상인 학과의 최대키 출력
select stu_dept,max(stu_height)
from student
group by stu_dept having max(stu_height)>=175;

--emp테이블에서 직무가 'SALESMAN'이 아닌 사원에 대한 부서별 급여 합이 6500 이상인 부서의 번호 출력
select deptno,sum(sal)
from emp
where job <> 'SALESMAN'
group by deptno having sum(sal) >= 6500;

--emp테이블에서 직무가 'SALESMAN'이 아닌 사원에 대한 최대 급여가 4000이상인 부서의 번호와 급여 합 출력
select deptno,sum(sal)
from emp
where job <> 'SALESMAN'group by deptno
having max(sal)>=4000;

--[3장 실습문제]

--학생(student),과목(subject),수강(enrol)테이블

--1.과목(subject)테이블의 구조를 검색하시오.
desc subject;
--2.학생들의 학번과 이름,학년,반을 검색하시오.
select stu_no,stu_name,stu_grade,stu_class from student;
--3.학생들의 학과 중복을 제거하고 검색하시오.
select distinct stu_dept from student;
--4.학생의 이름과 학과를'컴퓨터정보과 옥한빛입니다.'식으로 검색하시오.
select stu_dept||'과'||stu_name||'입니다'from student;
--5.학과가'기계'인 학생들의 학번,이름을 검색하시오.
select stu_name,stu_no
from student
where stu_dept='기계';
--6.'컴퓨터정보'과 학생 중 1학년 학생을 모두 검색하시오.
select *
from student
where stu_dept='컴퓨터정보'and stu_grade = 1;
--7.성별이 여학생이며,체중이 60 이하인 학생을 모두 검색하시오.
select *
from student
where stu_gender ='F' and stu_weight <=60;
--8.신장이 160이상이고 170이하인 학생의 학번과 이름을 출력하시오
select stu_no,stu_name
from student
where stu_height >=160 and stu_height <=170;
--9.'김'씨 성을 가진 학생의 학번과 이름을 검색하시오.
select stu_no,stu_name
from student
where stu_name like '김%';
--10.이름에 '인'이 들어가는 학생의 이름을 검색하시오.
select stu_name
from student
where stu_name like '%인%';
--11.신장이 널값인 학생의 이름을 검색하시오.
select stu_name,stu_height
from student
where stu_height is null;
--12.학생들의 학번,이름을 이름으로 오름차순으로 검색하시오.
select stu_no,stu_name
from student order by stu_name;
--13.학생들의 이름과 이름의 첫2자를 검색하시오.(함수사용)
select stu_name,substr(stu_name,1,2)from student;
--14.학생의 이름을15자리로 하고, 뒤에'&'를 채워 검색하시오.(함수사용)
select rpad(stu_name,15,'&')from student;
--15.신장이 널값인 경우'입력요망'으로 바꾸어 학번,이름을 검색하시오.(함수사용)
select stu_no,stu_name,nvl(to_char(stu_height),'입력요망')from student;
--16.학생들의 이름에'김'이 몇 번째 있는지 검색하시오.(함수사용)
select stu_name,instr(stu_name,'김')from student;
--17.학생의 학번,이름,신장을 검색하시오.(신장은 일의 자리에서 반올림)
select stu_no,stu_name,stu_height,round(stu_height,-1)from student;
--18.학생의 성별을 남학생인 경우'남자'로 변경하시오.(함수사용)
select stu_gender,nvl(nullif(stu_gender,'M'),'남자')from student;
--19.전체 학생의 체중,신장의 최고값과 최저값을 검색하시오.(함수사용)
select max(stu_weight),min(stu_weight),max(stu_height),min(stu_height)
from student;
--20.학년별 학생들의 인원수를 검색하시오.
select stu_grade,count(*)from student group by stu_grade;
--21.학과별 학생들의 평균체중을 검색하시오.
select stu_dept,stu_grade,avg(stu_weight)from student group by stu_dept,stu_grade;
--22.학과별 학생들의 인원수를 인원수가 많은 순으로 검색하시오.
select stu_dept,count(*)from student group by stu_dept order by 2 desc;
--23.학과별 학생들의 평균신장을 편균신장이 높은 순으로 검색하시오.(평균신장은 수소이하 1자리에서 반올림함.)
select stu_dept,round(avg(stu_height),0)
from student
group by stu_dept order by 2 desc;
--24.학생들의 이름,학과를 연결하여 검색하시오(concat함수 사용)
select concat(stu_name,stu_dept)from student;
--25.학생들의 학과에'기'가몇 번째 있는지 검색하시오
select stu_dept,instr(stu_dept,'기')from student;

--[2022년 12월 30일 (금)실습]--

--4장 조인과 부질의

--학생테이블과 수강테이블 결합
select*from student;
select*from enrol;

select student.*,enrol.*
from student cross join enrol;

--사원테이블과 부서테이블 결합
select*from emp;
select*from dept;

select emp.*,dept.*
from emp cross join dept;

--EQUI 조인
--stu_no가 공통된 것이므로 student.stu_no,enrol.stu_no로 표시
select student.stu_no,stu_name,stu_dept,enr_grade
from student, enrol
where student.stu_no = enrol.stu_no;

--예시
select empno,ename,job,emp.deptno,dname,dept.deptno
from emp,dept
where emp.deptno=dept.deptno;

--101번 과목을 수강하는 학생들의 학번과 이름 검색
select student.stu_no,stu_name
from student, enrol
where student.stu_no=enrol.stu_no and sub_no=101;

--emp테이블에서 부서지역이'CHICAGO'인 사원들의 이름 검색
select empno,ename from emp,dept
where dept.deptno=emp.deptno and dept.loc='CHICAGO';

--101번이나 102번 과목을 수강하는 학생들의 학번과 이름 검색
select student.stu_no,stu_name
from student,enrol
where student.stu_no=enrol.stu_no
and(sub_no=101 or sub_no=102);

--EQUI조인을 다른 방법으로 표현하기(3가지 방법:natural join/join~using/join~on)
select stu_no,stu_name
from student natural join enrol
where sub_no=101 or sub_no=102;

select stu_no,stu_name
from student join enrol using(stu_no)
where sub_no=101 or sub_no=102;

select student.stu_no,stu_name
from student join enrol on student.stu_no=enrol.stu_no
where sub_no=101 or sub_no=102;

--3테이블 조인
--컴퓨터개론 과목을 수강하는 학생들의 학번, 이름, 과목이름 검색
select student.stu_no,stu_name,sub_name from student,enrol,subject
where student.stu_no=enrol.stu_no
and enrol.sub_no=subject.sub_no
and enrol.sub_no=101;

--non-equi조인: where절에서 사용하는'='이 아닌 연산자 사용.
select empno,ename,sal,grade
from emp,salgrade
where sal between losal and hisal;

--self조인:같은 테이블 조인.테이블의 별칭을 사용
--자신의 상급자를 구하는 질의문
select a.empno as 사원번호,a.ename as 사원이름,b.empno as 상급자사원번호,b.ename as 상급자이름
from emp a, emp b
where a.mgr = b.empno;

--outher 조인:조인조건을 만족하지 않는 행들(생략된 행들)도 null값으로 결과에 포함
--과목번호 109~111은 수상생이 없어(해당 값이 없어) 조인에서 제외
select a.*,sub_name
from enrol a, subject b
where a.sub_no=b.sub_no
order by 1;

--과목번호 109~111은 수강생 표시(빈 데이터는 null로 표시)
--1 right outher join: 오른쪽 데이터를 기준으로 조인
select a.*,sub_name from enrol a
right outer join subject b on a.sub_no=b.sub_no
order by 1;

select empno,ename,dept.deptno,dname,loc
from emp right outer join dept
on emp.deptno=dept.deptno;

--2 left outer join: 왼쪽 데이터를 기준으로 조인
select a.empno"사원번호",a.ename"사원이름",
b.empno"상급자사원번호",b.ename"상급자이름"
from emp a left outer join emp b on a.mgr=b.empno;

--3 full outer join(right outer join과 left outer join을 결합)
select a.empno"사원번호",a.ename"사원이름",
b.empno"상급자사원번호",b.ename"상급자이름"
from emp a full outer join emp b on a.mgr=b.empno;

--부질의(subquery)
--'옥성우'학생보다 신장이 큰 학생들의 학번,이름,신장 검색
select stu_height from student where stu_name='옥성우';
select stu_height from student where stu_height > 172;

select stu_no,stu_name,stu_height
from student
where stu_height >
(select stu_height
from student
where stu_name='옥성우');

--self조인 이용하기
select a.stu_no,a.stu_name,a.stu_height
from student a,student b
where a.stu_height>b.stu_height and b.stu_name='옥성우';

--예시
--'BLACK'의 월급보다 많이 받는 사람의 사원번호,이름 월급 검색
select sal from emp where ename='BLAKE';
select empno,ename,sal from emp where sal>2850;

--부질의
select empno,ename,sal
from emp 
where sal > (select sal from emp where ename='BLAKE');

--self조인 이용하기
select a.empno,a.ename,a.sal
from emp a, emp b
where a.sal>b.sal and b.ename='BLAKE';

--단일열 부질의:열의 값 한개를 반환하는 부질의
--박희철 학생과 같은 체중을 가지고 있는 학생의 정보 검색
select * from student
where stu_weight=
(select stu_weight
from student
where stu_name='박희철');

select * from student
where stu_weight=
(select stu_weight
from student
where stu_name ='박희철')
and stu_name <> '박희철';

--예시
--emp테이블에서 FORD 사원과 같은 급여를 받고 있는 사원들의 정보를 검색하시오
select*from emp
where sal=
(select sal
from emp
where ename ='FORD');

select * from emp
where sal=
(select sal
from emp
where  ename='FORD')
and ename <> 'FORD';

--다중 부질의:부질의 결과가 다중일 경우
--in 연산자 사용:또는(or)
--'컴퓨터정보'과 학생과 같은 반을 가진 학생의 정보 검색
select*from student where stu_class in
(select distinct stu_class from student where stu_dept='컴퓨터정보')
and stu_dept<>'컴퓨터정보';

--10번 부서 사원의 직무와 같은 직무를 가지고 있는 다른 부서의 사원의 정보를 검색
select job from emp where deptno=10;

select*from emp where job in
(select job from emp where deptno=10)
and deptno<>10;

--전체 학생들의 평균신장 보다 큰 학생의 정보 검색
select avg(stu_heught)from student;

select *
from student
where stu_height >
(select avg(stu_height)
from student);

--all 연산자 사용:모든 값 만족(최대갑을 기준으로 하면 됨)
--신장이 모든 학과들의 평균 신장보다 큰 학생 검색
select*from student where stu_height>all
(select avg(stu_height)from student group by stu_dept);

--max(최대값)을 사용하여 표현
select*from student where stu_height>
(select max(avg(stu_height))from student group by stu_dept);

--예시
select deptno,avg(sal) from emp group by deptno;

select*from emp
where sal>all
(select avg(sal)
from emp
group by deptno);

select*from emp 
where sal>
(select max(avg(sal))
from emp
group by deptno);

--컴퓨터정보과의 최소 신장보다 최소 신장이 더 큰 학과의 학과명과 최소 신장 검색
select stu_dept,min(stu_height)
from student
group by stu_dept having min(stu_height)>
(select min(stu_height)
from student
where stu_dept='컴퓨터정보');

--any연산자 사용:최소값 기준
select deptno,avg(sal)from emp group by deptno;

select*from emp
where sal> any
(select avg(sal)
from emp
group by deptno);

select*from emp
where sal>
(select min(avg(sal))
from emp
group by deptno);

--101번 과목을 수강한 학생들의 정보 검색
select*from student
where stu_no in
(select stu_no
from enrol
where sub_no=101);

select*from student a,enrol b
where a.stu_no=b.stu_no and b.sub_no = 101;

--101번 과목을 수강한 학생들이 학번,이름,점수를 검색
select a.stu_no,a.stu_name,b.enr_grade
from student a, enrol b
where a.stu_no=b.stu_no and b.sub_no=101;

--복수열 부질의:복수열 값을 반환하는 부질의

--(1)테이블 생성 및 데이터 입력,거색
--사원(emp)테이블과 구조가 같은 test테이블 생성
create table test(empno,ename,sal,comm,deptno)
as
select empno,ename,sal,comm,deptno
from emp
where deptno = 1;

desc test;

insert into test values(11,'apple',1000,null,30);
insert into test values(12,'banana',2000,100,30);
insert into test values(13,'chese',1000,0,10);
insert into test values(14,'dog',2000,null,20);
insert into test values(15,'egg',1000,100,20);

select*from test;

select*from test
where (sal,nvl(comm,-1))=
(select sal,nvl(comm,-1)
from test
where empno = 11);

select*from test
where(sal,nvl(comm,-1))in(select sal,nvl(comm,-1)
from test
where deptno=30);

create table a_student
as select*
from student
where stu_dept in('기계','전기전자');

select*from a_student;

create table b_student
as select*
from student
where stu_dept in('전기전자','컴퓨터정보');

select*from b_student;

--union all:중복 제거한 모두(합집합)
select*from a_student
union
select*from b_student;

--union all:중복 포함한 모두
select*from a_student
union all
select*from b_student;

--intersect:중복만(교집합)
select*from a_student
intersect
select*from b_student;

--minus:중복 제거한 나머지
select*from a_student
minus
select*from b_student;

select*from b_student
minus
select*from a_student;

--[2023년 1월2일(월) 실습]

--emp 테이블 예시
create table tmpa_emp(empno,ename,hiredate,sal,deptno)
as
select empno,ename,hiredate,sal,deptno
from emp
where deptno in(10,20);

select*from tmpa_emp;

create table tmpb_emp(empno,ename,hiredate,sal,depno)
as
select empno,ename,hiredate,sal,deptno
from emp
where deptno in(20,30);

select*from tmpb_emp;

select*from tmpa_emp
union
select*from tmpb_emp;

select*from tmpa_emp
union all
select*from tmpb_emp;

select*from tmpa_emp
intersect
select*from tmpb_emp;

select*from tmpa_emp
minus
select*from tmpb_emp;

select*from tmpb_emp
minus
select*from tmpa_emp;

--rank():순위를 구함.
select ename from emp order by ename;

--sal에 따라 오름차순 정렬했을 때 전체 순위 출력
select empno,ename,sal,rank()over(order by sal) as rank_asc from emp;

--sal에 따라 내림차순 정렬했을 때 전체 순위 출력
select empno,ename,sal,rank()over(order by sal desc)as rank_desc from emp;

--RANK() OVER()는 동일 순위인 경우 1,1,3 형식으로 출력하지만
--DENSE_RANK() OVER()는 동일 순위인 경우 1,1,2 형식으로 출력
--ROW_NUMBER() OVER()는 동일 순위인 경우 1,2,3 형식으로 출력

select empno,ename,job,sal,
rank() over(order by sal desc)sal_rank,
dense_rank() over(order by sal desc)sal_dense_rank,
row_number() over(order by sal desc)sal_row_num
from emp;

--[4장 실습 문제]

--학생(student),과목(subject),수강(enrol) 테이블

--1.학생 테이블과 수강 테이블의 모든 데이터를 검색하시오.(natural join)
select*from student natural join enrol;
--2.학번,이름,과목명,점수를 검색하시오.(equi join)
select a.stu_no,a.stu_name,c.sub_name,b.enr_grade
from student a, enrol b, subject c
where a.stu_no=b.stu_no and b.sub_no=c.sub_no;
--3.과목명과 학번,점수를 검색하시오.(natural join)
select sub_name,stu_no,enr_grade
from subject natural join enrol;
--4.과목명과 학번,점수를 검색하시오.(join ~ using)
select sub_name,stu_no,enr_grade
from subject join enrol using(sub_no);
--5.점수가 70점 이상인 학생 이름을 검색하시오.(equi join)
select stu_name
from student a,enrol b
where a.stu_no=b.stu_no and enr_grade >=70;
--6.점수가 60점 이상인 학생 이름을 검색하시오.(join ~ using)
select stu_name 
from student join enrol using(stu_no) 
where enr_grade >=60;
--7.점수가 70점 이하인 학생 이름을 검색하시오.(natural join)
select stu_name
from student natural join enrol
where enr_grade <=70;
--8.김인중 학생이 수강하는 과목명과 강의 교수를 검색하시오.(equi join)
select sub_name,sub_prof
from student a,enrol b,subject c
where a.stu_no=b.stu_no and b.sub_no=c.sub_no and stu_name='김인중';
--9.김인중 학생이 수강하는 과목명과 강의 교수를 검색하시오.(natural join)
select sub_name,sub_prof
from student natural join enrol natural join subject
where stu_name='김인중';
--10.김인중 학생이 수강하는 과목명과 강의 교수를 검색하시오.(join ~ using)
select sub_name,sub_prof
from student join enrol using(stu_no)join subject using(sub_no)
where stu_name='김인중';
--11.강종영 교수가 강의하는 과목을 수강하는 학생의 이름을 검색하시오.
--(equi join,join ~ using,natural join)
--(1)equi join
select stu_name
from student a,enrol b,subject c
where a.stu_no=b.stu_no and b.sub_no=c.sub_no and sub_prof='강종영';

--(2)join ~ useing
select stu_name
from subject join enrol using(sub_no) join student using(stu_no)
where sub_prof='강종영';

--(3)natural join
select stu_name
from subject natural join enrol natural join student
where sub_prof='강종영';

--12.컴퓨터개론을 수강하는 학생들의 학번과 이름을 검색하시오.
--(equi join,join ~ using,natural join)

--(1)equi join
select a.stu_no,stu_name
from student a,enrol b, subject c 
where a.stu_no=b.stu_no and b.sub_no=c.sub_no and sub_name='컴퓨터개론';

--(2)join ~ using
select stu_no,stu_name
from student join enrol using(stu_no) join subject using(sub_no)
where sub_name='컴퓨터개론';

--(3)natural join
select stu_no,stu_name
from student natural join enrol natural join subject
where sub_name='컴퓨터개론';

--13.시스템분석설계나 소프트웨어공학을 수강하는 학생들의 학번,이름,점수를
--성적순으로 검색하시오(equi join,join ~ using,natural join)
--(1) equi join
select a.stu_no,stu_name,enr_grade
from student a,enrol b, subject c
where (a.stu_no=b.stu_no and b.sub_no=c.sub_no and
(sub_name='시스템분석설계' or sub_name='소프트웨어공학'))
order by 3 desc;

--(2) join ~ using
select stu_no,stu_name,enr_grade
from student join enrol using(stu_no)join subject using(sub_no)
where sub_name='시스템분석설계'or sub_name='소프트웨어공학'
order by 3 desc;

--(3) natural join
select stu_no,stu_name,enr_grade
from student natural join enrol natural join subject
where sub_name='시스템분석설계'or sub_name='소프트웨어공학'
order by 3 desc;

--14.과목이 1학년 과목이거나 컴퓨터정보과에 개설된 과목일 경우 그 과목들을
--수강하는 학생들의 학번과 이름을 검색하시오.(equi join)
--(1) equi join
select a.stu_no,stu_name
from student a,enrol b,subject c
where (a.stu_no=b.stu_no and b.sub_no=c.sub_no
and(sub_grade=1 or sub_dept='컴퓨터정보'));

--15.기계 공작법이나 기초전자실험을 수강하는 학생들의 학번,이름,점수를
--성적순으로 검색하시오(natural join)
select stu_no,stu_name,enr_grade
from student natural join enrol natural join subject
where sub_name='기계공작법'or sub_name='기초전자실험'
order by enr_grade desc;

--16.김태영 교수나 김유석 교수가 강의하는 과목을 수강하는
--학생의 이름과 학번을 검색하시오.(join ~ using)
select stu_name,stu_no
from student join enrol using(stu_no) join subject using(sub_no)
where sub_prof='김태영'or sub_prof='김유석';

--17.학생의 이름과점수를 검색하시오.
--(1)equi join
select stu_name,enr_grade
from student a,enrol b
where a.stu_no=b.stu_no;

--(2)natural join
select stu_name,enr_grade
from student natural join enrol;

--(3)join ~ using
select stu_name,enr_grade
from student join enrol using(stu_no);

--18.이름이 '옥한빛'인 학생이 수강하는 과목명을 검색하시오.(equi join)
select sub_name
from student a,enrol b,subject c
where a.stu_no=b.stu_no and b.sub_no=c.sub_no and stu_name='옥한빛';

--19.여학생이 수강중이 과목이 과목명을 모두 검색하시오.
select distinct sub_name
from student natural join subject natural join enrol
where stu_gender='F';

--20.체중이 60 이상인 학생이 수강하는 과목의 과목명을 모두 검색하시오.(join ~ using)
select distinct sub_name
from student join enrol using(stu_no) join subject using(sub_no)
where stu_weight >=60;

--21.컴퓨터정보과에 개설된 과목을 수강하는 모든 학생의 학번과 이름, 과목이름을
--검색하시오.(natural join)
select stu_no,stu_name,sub_name
from student natural join subject natural join enrol
where stu_dept='컴퓨터정보';

--22.여학생이면서 구봉규 교수의 과목을 수강하는 학생의 이름을 검색하시오
--(equi join)
select stu_name
from student a,enrol b,subject c 
where stu_gender='F' and sub_prof='구봉규' and a.stu_no=b.stu_no and b.sub_no=c.sub_no;

--23.김종헌 학생의 평균 점수보다 높은 점수를 가진 학생의
--학번과 이름을 검색하시오.(equi join ~ using, natural join)

--(1)equi join
select a.stu_no,stu_name
from student a, enrol b
where a.stu_no=b.stu_no and enr_grade >=
(select avg(enr_grade)
from student a, enrol b
where a.stu_no=b.stu_no and stu_name='김종헌')
and stu_name <> '김종헌';

--(2)join ~ using
select stu_no,stu_name
from student join enrol using(stu_no)
where enr_grade >=
(select avg(enr_grade)
from student join enrol using(stu_no)
where stu_name='김종헌')
and stu_name <> '김종헌';

--natural join
select stu_no,stu_name
from student natural join enrol
where enr_grade >=
(select avg(enr_grade)
from student natural join enrol
where stu_name='김종헌')
and stu_name <> '김종헌';

--24.김인중 학생의 평균점수 보다 낮은 점수를 가진 학생의 학번과 이름,과목명을
--검색하시오.(natural join)
select stu_no,stu_name,sub_name
from student natural join enrol natural join subject
where enr_grade <
(select avg(enr_grade)
from student natural join enrol
where stu_name='김인중');

--25.전체 학생의 평균 점수보다 점수가 높은 학생의 학번,이름,과목명,점수를
--검색하시오(join ~ using)
select stu_no,stu_name,sub_name,enr_grade
from student join enrol using(stu_no)join subject using(sub_no)
where enr_grade >
(select avg(enr_grade)
from enrol);

--26.기계과 최고 점수 학생보다 최고 점수가 높은 학과의 학과명과 점수를
--검색하시오.(join ~ using)
select stu_dept,max(enr_grade)
from student join enrol using(stu_no)
group by stu_dept having max(enr_grade)>
(select max(enr_grade)
from student join enrol using(stu_no)
where stu_dept='기계');

--27.전기전자과의 최저 점수보다 최저 점수가 높은 학과의 학과명과 점수를
--검색하시오(join ~ using)
select stu_dept,min(enr_grade)
from student join enrol using(stu_no)
group by stu_dept having min(enr_grade)>
(select min(enr_grade)
from student join enrol using(stu_no)
where stu_dept='전기전자');

--28.과목별 수강 인원을 과목번호,과목명과 함께 과목번호순으로
--검색하시오(natural join)
select sub_no,sub_name,count(*)
from student natural join enrol natural join subject
group by sub_no,sub_name
order by sub_no;

--제5장 데이터 갱신과 트랜잭션 제어

--데이터 갱신(DML):insert, update, delete
--create(테이블 생성):[create table 테이블(필드 필드타입);],
--[create table 테이블1 as select from 테이블2 where 조건;]

create table c_student(stu_no number,stu_name char(10));

create table a_enrol
as
select*from enrol
where stu_no<20150000;

select*from a_enrol;

desc a_enrol;

--insert:[insert into 테이블(필드)values(입력값);] > 기본타입
insert into a_enrol(sub_no,stu_no,enr_grade)
values(108, 20151062, 92);

select*from a_enrol;

insert into a_enrol
values(109, 20152088, 85);

insert into a_enrol(sub_no,stu_no)
values(110, 201520880);

select*from a_enrol;

insert into a_enrol
values(111, 20153075,null);

select*from a_enrol;

insert into a_enrol
select*from enrol
where stu_no like'2015%';

select*from a_enrol;

--update:[update 테이블 set 변경할 내용 where 조건;]
update a_enrol
set enr_grade=enr_grade +5;

select*from a_enrol;

--조건에 맞는 데이터 변경
--과목번호가 104번의 데이터를 검색
select*from a_enrol where sub_no=104;

update a_enrol
set enr_grade = enr_grade + 10
where sub_no = 104;

--'시스템분석설계'과목의 과목번호를 검색
select sub_no from subject where sub_name = '시스템분석설계';

select*from a_enrol;

select*from subject;

--부질의를 갖는 update
update a_enrol
set enr_grade=enr_grade+10
where sub_no=
(select sub_no
from subject
where sub_name='시스템분석설계');

select*from a_enrol where sub_no = 104;

--delete:[delete from 테이블 where 조건;]
--(1)특정 데이터 삭제
select*from a_enrol where stu_no = 20131001;

delete from a_enrol
where stu_no = 20131001;

--테이블 내의 모든 데이터 삭제
delete from a_enrol;

select*from a_enrol;

--테이블 삭제
drop table a_enrol;

--[2023년 1월 3일(화) 실습]

--예제

select*from a_student;

select*from b_student;

delete from b_student;

select*from b_student;

rollback;

select*from b_student;

delete from b_student;

commit;

select*from b_student;

rollback;

--예시

desc tmpa_emp;

select*from tmpa_emp;

insert into tmpa_emp(empno,ename,hiredate,sal,deptno)
values(1,'kim',to_date('2013-01-01'),700,40);

insert into tmpa_emp(empno,ename,hiredate,sal,deptno)
values(2,'kang',to_date('2013-01-01'),800,40);

insert into tmpa_emp(empno,ename,hiredate)
values(3,'kho',to_date('2013-01-01'));

insert into tmpa_emp(empno,ename,hiredate,sal,deptno)
values(4,'lee',null,null,null);

select*from tmpa_emp;

--듀얼 테이블 보기(실습을 위한 테이블이므로 데이터 없음)
select*from dual;

--현재 사용자와 시간 검색
select user,sysdate from dual;

insert into tmpa_emp(empno,ename,hiredate,sal,deptno)
values(5,'park',sysdate,850,20);

select*from tmpa_emp;

--조건에 맞는 데이터 삽입
insert into tmpb_emp
select*from tmpa_emp
where empno<10;

select*from tmpb_emp;

--데이터 삭제(delete)
--조건에 맞는 데이터 삭제
delete from tmpa_emp
where deptno=10;

select*from tmpa_emp;

--부질의를 갖는 delete
delete tmpb_emp
where deptno=(select deptno
from dept where loc='DALLAS');

select*from tmpb_emp;

--테이블의 데이터 모두 삭제
delete from tmpa_emp;

select*from tmpa_emp;

rollback;

select*from tmpa_emp;

commit;

--update 예시
--부질의를 갖는 update
select*from tmpb_emp;

update tmpb_emp
set sal=sal+500
where deptno=(select DEPTNO
from dept where dname='SALES');

select*from tmpb_emp;

--예시(테이블에서 읽기 전용 기능)

create table t_readonly(
no number,
name varchar2(10)
);

insert into t_readonly values(1,'AAA');

select*from t_readonly;

commit;

--읽기 전용으로 변경합니다.

alter table t_readonly read only;

insert into t_readonly values(2,'BBB');

alter table t_readonly read write;

insert into t_readonly values(2,'BBB');

select*from t_readonly;

drop table t_readonly;

--[5장 실습테이블]

--학사관리2(student1,subject1,enrol1)

create table student1(
stu_no char(9),
stu_name varchar2(12),
stu_dept varchar2(20),
stu_year number(1),
stu_class char(1),
stu_gender char(1),
stu_height number(5,2),
stu_weight number(5,2),
constraint k_stu_no primary key(stu_no));

insert into student1 values('20093075','옥한빛','기계',1,'C','M',177,80);
insert into student1 values('20093088','이태연','기계',1,'C','F',162,50);
insert into student1 values('20093054','유가인','기계',2,'C','F',154,47);
insert into student1 values('20072088','조민우','전기전자',1,'C','M',188,90);
insert into student1 values('20062021','심수정','전기전자',2,'A','F',168,45);
insert into student1 values('20061062','김인중','컴퓨터정보',1,'B','M',166,67);
insert into student1 values('20061007','진현무','컴퓨터정보',2,'C','M',174,64);

select*from student1;

create table subject1(
sub_no char(3),
sub_name varchar2(30),
sub_prof varchar2(12),
sub_year number(1),
sub_dept varchar2(20),
constraint k_sub_no primary key(sub_no));

insert into subject1 values('111','데이터베이스','이재영',2,'컴퓨터정보');
insert into subject1 values('110','자동제어','정순정',2,'전기전자');
insert into subject1 values('109','자동화설계','박민영',3,'기계');
insert into subject1 values('101','컴퓨터개론','강종영',3,'컴퓨터정보');
insert into subject1 values('102','기계공작법','김태영',1,'기계');
insert into subject1 values('103','기초전자실험','김유석',1,'전기전자');
insert into subject1 values('104','시스템분석설계','강석현',3,'컴퓨터정보');
insert into subject1 values('105','기계요소설계','김명성',1,'기계');
insert into subject1 values('106','전자회로실험','최영민',3,'전기전자');
insert into subject1 values('107','CAD응용실습','구봉규',2,'기계');
insert into subject1 values('108','소프트웨어공학','권민성',1,'컴퓨터정보');

select*from subject1;

create table enrol1(
sub_no char(3),
stu_no char(9),
enr_grade number(3),
constraint k_course primary key(sub_no,stu_no));

insert into enrol1 values('101','20071001',80);
insert into enrol1 values('104','20071001',56);
insert into enrol1 values('106','20052003',72);
insert into enrol1 values('103','20072088',45);
insert into enrol1 values('101','20071025',65);
insert into enrol1 values('104','20071025',65);
insert into enrol1 values('108','20061062',81);
insert into enrol1 values('107','20093054',41);
insert into enrol1 values('102','20093075',66);
insert into enrol1 values('105','20093075',56);
insert into enrol1 values('102','20093088',61);
insert into enrol1 values('105','20093088',78);

select*from enrol1;

commit;

--[5장 실습문제]

--학생(student1),과목(subject),수강(enrol1) 테이블

--1.학번 20101059,이름 조병준,학과 컴퓨터정보,학년1,반B,키164,몸무게70인 남학생을 추가하시오.
select*from student1;
insert into student1 values('20101059','조병준','컴퓨터정보',1,'B','M',164,70);
--2.학번 20092038,이름 남지선,학과 전기전자,학년1,반C,여학생을 추가하시오.
insert into student1(stu_no,stu_name,stu_dept,stu_year,stu_class,stu_gender)
values(20092038,'남지선','전기전자',1,'C','F');

select*from student1;
--3.학번 20093009,이름 박소신,학과 기계,20093075 학생과 같은 학년,반을 갖는 남학생을 추가하시오.
insert into student1(stu_no,stu_name,stu_dept,stu_year,stu_class,stu_gender)
values('20093079','박소신','기계',
(select stu_year from student1 where stu_no='20093075'),
(select stu_class from student1 where stu_no='20093075'),'M');

select*from student1;
--4.student1 테이블에 student 테이블에3학년 학생들 데이터를 입력하시오.
insert into student1
(select*
from student
where stu_grade=3);

select*from student1;
--5.학번 20072088의 반을 B로 변경하시오.
select*from student1 where stu_no='20072088';

update student1
set stu_class='B'
where stu_no='20072088';
--6.20061062 학번의 학생의 키가 2cm자랐다.이를 DB에 반영하시오.
select*from student1 where stu_no='20061062';

update student1
set stu_height=stu_height+2
where stu_no='20061062';
--7.신학년도가 되어 학년을 한 학년씩 올려야 한다. 이를 DB에 반영하시오.
select*from student1;

update student1
set stu_year=stu_year+1;
--8.학번이 20062021인 학생의 학과를 컴퓨터정보로 바꾸시오.
select*from student1 where stu_no='20062021';

update student1
set stu_dept='컴퓨터정보'
where stu_no='20062021';
--9.기계공작법 과목의 점수를 10점을 감하시오.
select sub_no
from subject1
where sub_name='기계공작법';

select*from enrol1;

update enrol1
set enr_grade=enr_grade-10
where sub_no=(select sub_no
from subject1
where sub_name='기계공작법');
--10.김인중 학생의 소프트웨어공학 시험이 부정행위로 발견되어서 0점으로 처리하시오.
select sub_no from subject1 where sub_name='소프트웨어공학';

select*from enrol1;

update enrol1
set enr_grade=0
where stu_no=
(select stu_no from student1 where stu_name='김인중')
and sub_no=
(select sub_no from subject1 where sub_name='소프트웨어공학');
--11.학번이 20093088 학생이 자퇴하였다.학생(student1)테이블에서 삭제하시오.
select*from student1 where stu_no='20093088';

delete from student1
where stu_no='20093088';
--12.과목번호 112,과목명 자동화시스템,교수명고종민,학년3,학과기계를 추가하시오.
select*from subject1;

insert into subject1 values('112','자동화시스템','고종민',3,'기계');
--13.과목번호를 110에서501로 변경하시오.(subjet1 테이블)
select*from subject1;

update subject1
set sub_no='501'
where sub_no='101';
--14.과목번호를 101을 폐강으로 처리하시오.과목(subject1)테이블에서 삭제하시오.
select*from subject1;

delete from subject1
where sub_no='101';
--15.enrol1테이블에서 subject1테이블에 없는 과목번호를 999로 변경하시오.
select*from enrol1;
select*from subject1;

update enrol1
set sub_no='999'
where sub_no not in
(select sub_no from subject1);
--16.enrol1테이블에서 과목번호999를 삭제하시오.
select*from enrol1;

delete from enrol1
where sub_no='999';
--17.enrol1테이블에서 없는 과목들을 삭제하시오.(subject1 테이블)
select*from subject;

delete from subject1
where sub_no not in
(select distinct sub_no from enrol1);
--18.enril1테이블에서 전체 데이터를 삭제하시오.
delete from enrol1;

select*from enrol1;

commit;

--MERGER(합병)예시
--(1)테이블 생성(charge_01,charge_02)
create table charge_01
(u_date varchar2(6),
cust_no number,
u_time number,
charger number);

create table charge_02
(u_date varchar2(6),
cust_no number,
u_time number,
charger number);

--데이터 삽입
insert into charge_01 values('141001',1000,2,1000);
insert into charge_01 values('141001',1001,2,1000);
insert into charge_01 values('141001',1002,1,500);
insert into charge_02 values('141002',1000,3,1500);
insert into charge_02 values('141002',1001,4,2000);
insert into charge_02 values('141002',1003,1,500);

select*from charge_01;
select*from charge_02;

--테이블들이 병합되어 출력될 테이블 생성(ch_total)
create table ch_total
(u_date varchar2(6),
cust_no number,
u_time number,
charger number);

merge into ch_total total
using charge_01 ch01
on(total.u_date=ch01.u_date)
when matched then
update set total.cust_no = ch01.cust_no
when not matched then
insert values(ch01.u_date,ch01.cust_no,ch01.u_time,ch01.charger);

select*from ch_total;

merge into ch_total total
using charge_02 ch02
on(total.u_date=ch02.u_date)
when matched then
update set total.cust_no = ch02.cust_no
when not matched then
insert values(ch02.u_date,ch02.cust_no,ch02.u_time,ch02.charger);

select*from ch_total;

--[2022년 1월 4일(수) 실습]

--[제6장 DDL(데이터정의어)]

--(1)테이블 생성
--[create table 테이블(필드 필드속성 기본값,....);]
create table testk
(u_id varchar2(10),u_date date);

--[create table 테이블 as부질의;]
create table t_student
as
select*from student where stu_dept='기계';
desc t_student;
select*from t_student;

--(2)테이블 변경
--열 삽입:[after table 테이블 add(필드 필드속성,...);]
alter table t_student add(army char(1));
desc t_student;

--열 구조 수정, 변경:[alter table 테이블 modify(필드 필드속성,...);]
desc t_student;
alter table t_student modify(army number);

--열 삭제:[alter table 테이블 drop(필드1,필드2,...);]
alter table t_student drop(army);

--(3)테이블 이름 변경:[rename 테이블 to 테이블;]
select*from t_student;
rename t_student to test_student;
desc test_student;
select*from test_student;

--(4)테이블 내 데이터,구조 삭제:[truncate table 테이블;]
--delete from은 내용을 삭제하지만,truncate는 내용+구조 삭제
truncate table test_student;
select*from test_student;

--(5)테이블 삭제:[drop table 테이블;]
drop table test_student;

--예시(테이블 생성,구조 변경, 삭제)

--1.사원 정보를 저장하기 위한 테이블 생성 후 확인
create table emp01(
empno number(4),
ename varchar2(14),
sal number(7,3)
);

desc emp01;

--2.사원테이블에 날짜 타입을 가지는 birth 컬럼 추가한 후 확인 table emp01
alter table emp01
add(birth date);

desc emp01;

--3.사원 이름 컬럼 크기(30) 변경 후 확인
alter table emp01
modify ename varchar2(30);

--4.사원 테이블에서 사원이름 컬럼 제거한 후 확인
alter table emp01
drop(ename);

desc emp01;

--5.UNUSED 사용법
alter table emp01
set unused(empno);

desc emp01;

--6.UNUSED로 표시된 모든 컬럼을 제거하기
select*from DBA_UNUSED_COL_TABS;

alter table emp01
drop unused columns;

desc emp01;

--# 제약조건(constraints):데이터베이스 상태가 항상 만족해야 할 기본 규칙

--constraint name부여:
--[create table 테이블(필드 필드타입 constraint 제약조건명 제약조건);]

--t_student 테이블 생성
create table t_student(
stu_no char(9),
stu_name varchar2(12) constraint u_stu_name unique,
stu_dept varchar2(20) constraint n_stu_dept not null,
stu_grade number(1),
stu_class char(1),
stu_gender char(1) constraint c_stu_gender check (stu_gender in('M','F')),
stu_height number(5,2),
stu_weight number(5,2),
constraint p_stu_no primary key(stu_no)
);

desc t_student;

--t_enrol 테이블 생성
create table t_enrol(
sub_no char(3),
stu_no char(9),
enr_grade number(3),
constraint enr_stu_no foreign key(stu_no)references t_student(stu_no),
constraint p_enol primary key(sub_no,stu_no)
);

desc t_enrol;

select*from user_constraints where table_name='T_STUDENT';
select*from user_constraints where table_name='T_ENROL';

--제약조건 삭제:
--[alter table 테이블 drop constraint 조건이름[constraint_name)cascade;]

alter table t_enrol drop constraint enr_stu_no cascade;

--[alter table 테이블 disable/enable constraint 조건이름(constraint_name);]

alter table t_student disable constraint n_stu_dept;

select*from user_constraints where table_name='T_STUDENT';

alter table t_student enable constraint n_stu_dept;

--제약사항 예시

desc  user_constraints;

select constraint_name, constraint_type,table_name
from user_constraints;

select constraint_name,table_name,column_name
from user_cons_columns;

--실습예제

drop table emp01;

create table emp01(
empno number(4),
ename varchar2(10),
job varchar2(9),
deptno number(2)
);

insert into emp01
values(null,null,'사원',30);

select*from emp01;

select constraint_name, constraint_type,table_name
from user_constraints
where table_name='EMP01';

create table emp02(
empno number(4)not null,
ename varchar2(10)not null,
job varchar2(9),
deptno number(2)
);
desc emp02;

insert into emp02 values(null,null,'사원',30);

insert into emp02 values(1000,'허준','사원',30);

select*from emp02;

select constraint_name,constraint_type,table_name
from user_constraints
where table_name='EMP02';

insert into emp02 values(1000,'홍길동','과장',20);

create table emp03( 
empno number(4) unique,
ename varchar2(10)not null,
job varchar2(9),
deptno number(2)
);

insert into emp03 values(1000,'허준','사원',30);

insert into emp03 values(1000,'홍길동','과장',20);

insert into emp03 values(null,'안중근','과장',20);

insert into emp03 values(null,'이순신','부장',10);

select*from emp03;

select constraint_name,constraint_type,table_name
from user_constraints
where table_name='EMP03';

create table emp04(
empno number(4)constraint emp04_empno_uk unique,
ename varchar2(10)constraint emp04_ename_nn not null,
job varchar2(9),
deptno number(2)
);

select constraint_name,constraint_type,table_name
from user_constraints
where table_name='EMP04';

insert into emp04 values(1000,'허준','사원',30);

insert into emp04 values(1000,'홍길동','과장',20);

select*from emp04;

create table emp05(
empno number(4)constraint emp05_empno_pk primary key,
ename varchar2(10)constraint emp05_ename_nn not null,
job varchar2(9),
deptno number(2)
);

insert into emp05 values(1000,'허준','사원',30);

insert into emp05 values(1000,'홍길동','과장',20);

insert into emp05 values(null,'이순신','부장',10);

select constraint_name,constraint_type,table_name
from user_constraints
where table_name in('EMP05');

create table emp06(
empno number(4) constraint emp06_empno_pk primary key,
ename varchar2(10)constraint emp06_ename_nn not null,
job varchar2(9),
deptno number(2)constraint emp06_deptno_fk references dept(deptno)
);

insert into emp06 values(1010,'홍길동','사원',50);
select*from dept;

insert into emp06 values(1010,'홍길동','사원',30);
select*from emp06;

create table emp07(
empno number(4)constraint emp07_empno_pk primary key,
ename varchar2(10) constraint emp07_ename_nn not null,
sal number(7,2)constraint emp07_sal_ck check(sal between 500 and 5000),
gender varchar2(1) constraint emp07_gender_ck check(gender in('M','K'))
);

select*
from user_constraints
where table_name in('EMP07');

insert into emp07 values(1000,'허준',200,'M');

insert into emp07 values(1000,'허준',700,'A');

insert into emp07 values(1000,'허준',700,'M');

select*from emp07;

commit;

create table dept01(
deptno number(2)primary key,
dname varchar2(14),
loc varchar2(13)default'서울'
);

insert into dept01(deptno,dname)values(10,'경리부');

select*from dept01;

--뷰:가상의 테이블(virtual table)
--[create view 뷰(필드)as부질의;]
--단순뷰:단일 데이터베이스 테이블로부터 유도된 뷰

--뷰 생성:[create or replace view뷰이름 as 부질의;]
create or replace view v_student1
as
select*from student where stu_dept='컴퓨터정보';

--뷰 확인
select*from v_student1;

--조인뷰:2개 이상의 DB 테이블로부터 유도된 뷰
--(1)equi join 형식으로 뷰 생성
create or replace view v_enrol1
as
select sub_name,a.sub_no,stu_no,enr_grade
from enrol a, subject b
where a.sub_no=b.sub_no;

--(2)뷰 확인
select*from v_enrol1;

--뷰 예시

create or replace view v_emp1
as
select*from emp
where deptno=20;

select*from v_emp1;

--조인뷰 예시
create or replace view v_emp2
as
select empno,ename,mgr,hiredate,sal,dept.dname
from emp,dept
where emp.deptno = dept.deptno;

select*from v_emp2;

--뷰예시
select*from emp where deptno=30;

--30번 부서의 데이터를 뽑아서 v_emp3의 가상 테이블을 만드시오
create or replace view v_emp3
as
select*
from emp
where deptno=30;

select*from v_emp3;


--인라인뷰:from절에select문으로 정의된뷰
--학과별 평균 신장보다 큰 학생들의 학번,이름,신장 검색(인라인 뷰)
select stu_no,stu_name,a.stu_dept,stu_height
from student a,
(select stu_dept,avg(stu_height)as avg_height
from student
group by stu_dept)b
where a.stu_dept=b.stu_dept
and a.stu_height>b.avg_height;

--학생 테이블에서 신장이 큰 상위 5명의 학번, 이름, 신장 검색
select stu_no,stu_name,stu_height
from(select stu_no,stu_name,stu_height
from student
where stu_height is not null
order by stu_height desc)
where rownum <=5;

--인라인 뷰 예시
--부서별 사원 중 급여를 가장 많이 받는 사원의 정보를 검색하시오
select a.empno,a.ename,a.sal,c.dname
from emp a,(select deptno,max(sal)maxsal
from emp
group by deptno) b,dept c
where a.deptno=b.deptno and a.sal=b.maxsal and a.deptno=c.deptno
order by a.deptno;

--emp 테이블에서 급여를 가장 많이 받는 5명의 사원번호,이름,급여를 검색하시오
select empno,ename,sal
from (select empno,ename,sal
from emp
order by sal desc)
where rownum <=5;

--인덱스:빠른 검색을 위해 정의
--(1)인덱스 생성:[create index 인덱스명 on 테이블(필드 및 조건);]
--학색의 이름으로 인덱스 생성
create index i_stu_name on student(stu_name);

--학번과 이름을 합쳐서 인덱스 생성
create index i_stu_no_name on student(stu_no,stu_name);

--유일한 값을 인덱스 생성
--기존에 인덱스 삭제 후 실행
drop index i_stu_name;
create unique index k_stu_name on student(stu_name);

--함수나 수식을 이용해 인덱스 생성
create index i_stu_weight on student(stu_weight-5);

select*from user_indexes
where table_name='STUDENT';

--[2022년 1월 5일(목) 실습]

--시퀀스:어떤 연속적인 숫자 값을 자동적으로 증가하여 사용. 자동 넘버링
--1000부터 시작해서 10000까지 2씩 증가하는 시퀀스 생성
create sequence seq1
increment by 2
start with 1000
maxvalue 10000;

--다음 번호로 넘어가기.실행문을 실행할 때마다 2씩 증가하면서 값이 바뀜
select seq1.nextval from dual;

--현재 번호 알기
select seq1.currval from dual;

--시퀀스 예제
--시퀀스 생성
create sequence seq2
increment by 1
start with 1
maxvalue 100;

--증가시키기
select seq2.nextval from dual;

--현재 번호 확인
select seq2.currval from dual;

--증가시키기
select seq2.nextval from dual;

--증가값 변환
alter sequence seq2
increment by 2;

select seq2.nextval from dual;

--시퀀스 삭제
drop sequence seq2;

--시퀀스 구조 확인
select sequence_name,min_value,max_value,increment_by
from user_sequences;

--자동증가 적용 시, 시퀀스를 먼저 만들고 테이블 만들어서 적용하기
--(1)시퀀스 생성
create sequence emp_seq
start with 1
increment by 1
maxvalue 100000;

--(2)테이블 생성
create table emp12(
empno number(4)primary key,
ename varchar(10),
hiredate date
);

--(3)구조확인
select constraint_name,constraint_type,table_name
from user_constraints
where table_name in('EMP12');

--(4)테이블에 시퀀스, 데이터 삽입
insert into emp12
values(emp_seq.nextval,'홍길동',SYSDATE);

select*from emp12;

insert into emp12
values(emp_seq.nextval,'강감찬',SYSDATE);

select*from emp12;

--(5)시퀀스,데이터 확인

select sequence_name,min_value,max_value,increment_by
from user_sequences;

--[6장 실습문제]

--1.상품(product)테이블을 생성하시오.
create table product
(p_code char(3) not null,
p_name varchar2(30),
p_cost number,
p_group varchar2(30),
constraint p_code_pk primary key(p_code));

--2상품(product)테이블에 다음과 같은 상품 정보를 삽입하시오.
insert into product values('101','19인치 모니터',150000,'모니터');
insert into product values('102','22인치 모니터',200000,'모니터');
insert into product values('103','25인치 모니터',260000,'모니터');
insert into product values('201','유선마우스',7000,'마우스');
insert into product values('202','무선마우스',18000,'마우스');
insert into product values('301','유선키보드',8000,'키보드');
insert into product values('302','무선키보드',220000,'키보드');
insert into product values('401','2채널 스피커',10000,'스피커');
insert into product values('402','5.1채널 스피커',120000,'스피커');

--4.상품(product)테이블의 모든 데이터를 검색하시오.
select*from product;

--5.상품(product)테이블에서 비고(bigo)열을 삽입하시오.(varchar2(10))
alter table product add(bigo varchar2(10));

--6.새로운 열이 상품(product)테이블에 삽입되었는지 확인하시오.
desc product;

--7.상품(product)테이블에 비고(bigo)열의 구조를 최대 20자로 변경하시오.
alter table product modify(bigo varchar2(20));

--8.상품(product)테이블에 변경된 비고(bigo)열의 구조를 검색하시오.
desc product;

--9.상품(product)테이블에 비고(bigo)열을 삭제하시오.
alter table product drop(bigo);

--10.상품(product)테이블에 비고(bigo)열이 삭제되었는지 확인하시오.
desc product;

--11.상품(product)테이블을 product1으로 이름을 변경하시오.
rename product to product1;

--12.product1 테이블 명이 변경되었는지 확인하시오.
desc product1;

--13.다음은 product1 테이블 내의 모든 데이터를 삭제하시오.(truncate 이용)
truncate table product1;

--14.다음 확인을 위해 product1 테이블의 내용을 검색하시오.
select*from product1;

--15.product1 테이블을 삭제하시오.
drop table product1;

--16.emp 테이블과 dept 테이블을 조회하여 사원의 이름과 부서 이름을 출력하는
--viwe 를 생성하시오.(뷰이름:v_emp)
create or replace view v_emp
as
select e.ename,d.dname
from emp e,dept d
where e.deptno=d.deptno;

select*from v_emp;

--17.emp 테이블과 dept테이블을 조회하여 부서 번호와 부서별 최대 급여 및
--부서명을 출력하시오.
select e.deptno,d.dname,e.sal
from(select deptno,max(sal)sal
from emp
group by deptno)e,dept d
where e.deptno = d.deptno;

--예시1
--set serveroutput on; 은 프로그램을 켰을 때 한 번만 실행하면 됨
--begin과 end 사이의 명령어를 스크립트에 출력
--(자바에서 콘솔에 출력하는 것과 같은 개념)
--/는 실행 문장

set serveroutput on;

--예시1
begin
dbms_output.put_line('Hello World');
end;
/

--예시2
declare
vempno number(4);
vename varchar2(10);
begin
vempno:=1001;
vename:='김사랑';
dbms_output.put_line('사번 이름');
dbms_output.put_line('----------------');
dbms_output.put_line(''||vempno||''||vename);
end;
/

--예시3(부서번호로 부서명 알아내기)
declare
vempno emp.empno%type;
vename emp.ename%type;
begin
select empno,ename
into vempno,vename
from emp
where ename='SCOTT';
dbms_output.put_line('사번 이름');
dbms_output.put_line('-----------------');
dbms_output.put_line(''||vempno||''||vename);
end;
/

--예시4
declare
vempno emp.empno%type;
vename emp.ename%type;
vdeptno emp.deptno%type;
vdname varchar2(20):= null;
begin
select empno,ename,deptno
into vempno,vename,vdeptno
from emp
where empno=7788;

if(vdeptno = 10)then
vdname:= 'ACCOUNTING';
end if;
if(vdeptno = 20)then
vdname:= 'RESEARCH';
end if;
if(vdeptno = 30)then
vdname:= 'SALES';
end if;
if(vdeptno = 40)then
vdname:= 'OPERATIONS';
end if;

dbms_output.put_line('사번  이름  부서명');
dbms_output.put_line('--------------------');
dbms_output.put_line(' '||vempno||' '||vename||' '||vdname);
end;
/

--예시5
declare
vemp emp%rowtype;
annsal number(7,2);
begin
select*
into vemp
from emp
where ename='WARD';
if(vemp.comm is null)then
annsal:=vemp.sal*12;
else
annsal:=vemp.sal*12+vemp.comm;
end if;
dbms_output.put_line('사번  이름  연봉');
dbms_output.put_line('-------------------');
dbms_output.put_line(' '||vemp.empno||' '||vemp.ename||' '||annsal);
end;
/

--선택처리문
--(1)if~endif

declare
v_condition number:=1;
begin
if v_condition = 1 then
dbms_output.put_line('대한');
end if;
end;
/

--(2)if ~ else ~ end if
declare
v_condition number:= 1;
begin
if v_condition > 1 then
dbms_output.put_line('대한');
else
dbms_output.put_line('우리');
end if;
end;
/

--(3)if ~ elsif ~ end if
declare
v_condition number:= 2;
begin
if v_condition < 1 then
dbms_output.put_line('대한');
elsif v_condition < 1 then
dbms_output.put_line('민국');
else 
dbms_output.put_line('만세');
end if;
end;
/

--반복처리문
--(1)loop ~ end loop

declare
v_cnt number:= 0;
v_sum number:= 0;
begin
loop
v_cnt:=v_cnt+1;
v_sum:=v_sum+v_cnt;
dbms_output.put_line(v_cnt||' '||v_sum);
exit when v_cnt=10;
end loop;
end;
/

--(2)for ~ end loop
declare
v_cnt number;
v_sum number:= 0;
begin
for v_cnt in 1..10 loop
v_sum:=v_sum + v_cnt;
dbms_output.put_line(v_cnt||' '||v_sum);
end loop;
end;
/

declare
v_cnt number:= 0;
v_sum number:= 0;
begin
while v_cnt < 10 loop
v_cnt:= v_cnt + 1;
v_sum:= v_sum + v_cnt;
dbms_output.put_line(v_cnt||' '||v_sum);
end loop;
end;
/

--예시
--BASIC LOOP 문(1부터 5까지 출력하기)
declare
n number:= 1;
begin
loop
dbms_output.put_line(n);
n:=n+1;
if n > 5 then
exit;
end if;
end loop;
end;
/

--FOR LOOP 문(1부터 5까지 출력하기)
declare
n number:= 1;
begin
for n in 1..5 loop
dbms_output.put_line(n);
end loop;
end;
/

--WHILE LOOP 문(1부터 5까지 출력하기)
declare
n number:= 1;
begin
while n < 6 loop
dbms_output.put_line(n);
n:= n + 1;
end loop;
end;
/

--예시1(구구단 5단 구하기)
declare
dan number:= 5;
i number:= 1;
begin
loop
dbms_output.put_line(dan||'*'||i||'='||(dan*i));
i:= i+1;
if i>9 then
exit;
end if;
end loop;
end;
/

--예시2
declare
v_cnt number:= 1;
v_str varchar2(10):=null;
begin
while v_cnt <= 5 loop
v_str:=v_str||'*';
dbms_output.put_line(v_str);
v_cnt:=v_cnt + 1;
end loop;
end;
/

--예시3
select & list
from & tab
where rownum<5;

--예시4
create table pl_test2
(no number,
name varchar2(10),
addr varchar(10)
);

--데이터3개 삽입(실행 시 입력 데이터:1,a,a 2,b,b 3,c,c)
declare
v_no number:= '&no';
v_name varchar(10):='&name';
v_addr varchar(10):='&addr';
begin
insert into pl_test2
values(v_no,v_name,v_addr);
end;
/

select*from pl_test2;

--데이터 수정

begin
update pl_test2
set name='KKK'
where no = 1;
end;
/

select*from pl_test2;

--데이터 수정
begin
delete from pl_test2
where no = 3;
end;
/

select*from pl_test2;

--pl_test2 테이블에서 no=2 인 이름('홍길동')과 주소('왕십리')을 변경하시오.
begin
update pl_test2
set name='홍길동',addr='왕십리'
where no = 2;
end;
/

select*from pl_test2;

--제8장 저장 프로시저와 저장 함수

--test1:subject에 데이터 입력하기
--입력한 과목명, 교수, 학년, 학과 정보를 마지막 과목번호 다음번호로 입력하는
--프로시저 생성
create procedure test1
(v_sub_name in subject.sub_name%type,
v_sub_prof in subject.sub_prof%type,
v_sub_grade in subject.sub_grade%type,
v_sub_dept in subject.sub_dept%type)
is
v_sub_no subject.sub_no%type;
begin
select max(sub_no)
into v_sub_no
from subject;
v_sub_no:= to_number(v_sub_no)+1;

insert
into subject
values(v_sub_no,v_sub_name,v_sub_prof,v_sub_grade,v_sub_dept);
commit;
end test1;
/

select*from subject;

execute test1('컴퓨터구조','강주봉',2,'컴퓨터정보');

select*from subject;

--예시
select*from emp12;

create or replace procedure del_all
is
begin
delete from emp12;
commit;
end;
/

execute del_all;

select*from emp12;









