-- book 테이블 설정 
create table vam_book(
    bookId number generated as identity (start with 1) primary key,
    bookName varchar2(50)   not null,
    authorId number,
    publeYear Date not null,
    publisher varchar2(70) not null,
    cateCode varchar2(30),
    bookPrice number not null,
    bookStock number not null,
    bookDiscount number(2,2),
    bookIntro clob,
    bookContents clob,
    regDate date default sysdate,
    updateDate date default sysdate,
    foreign key(authorId) references vam_author(authorId),
    foreign key(cateCode) references vam_bcate(cateCode)
    
    
);


-- Oracle
-- 카테고리 테이블
create table vam_bcate(
    tier number(1) not null,
    cateName varchar2(30) not null,
    cateCode varchar2(30) not null,
    cateParent varchar2(30) ,
    primary key(cateCode),
    foreign key(cateParent) references vam_bcate(cateCode) 
);



create table testA(
testA number primary key,
testNmae varchar(2),
testData date default sysdate);


create table testB(
testB number primary key,
testName varchar(20),
testBb number,
foreign key (testBb) references testA(testA));



create table testC(
numId number generated as identity (start with 1) primary key,
name varchar2(20),
tall varchar2(20),
regDate date default sysdate
);




alter table testC modify name number;
alter table testC drop column name;

select * from testc;


alter table testc add name varchar2(20);



create table testD (
numId number generated as identity (start with 1),
name varchar2(20),
dateTo date default sysdate
);

insert into testd values(1,'d');


drop table test1;


CREATE TABLE TB1 ( NAME VARCHAR2(20), AGE NUMBER(3) );
CREATE TABLE TB2 ( NAME VARCHAR2(20), AGE NUMBER(3) );


insert into tb1 values ('김철수' ,30);
INSERT INTO TB1(NAME, AGE) VALUES('이영희', 35);
INSERT INTO TB1(NAME, AGE) VALUES('박영수', 40);
INSERT INTO TB1(NAME, AGE) VALUES('엄영수', 40);

INSERT INTO TB2(NAME, AGE) VALUES('김철수', 30);
INSERT INTO TB2(NAME, AGE) VALUES('최수영', 50);
INSERT INTO TB2(NAME, AGE) VALUES('하희영', 55);



select * from tb1;
select * from tb2;

select * from tb1
where age >30 order by age;


SELECT * FROM TB1 inner JOIN TB2 ON TB1.NAME = TB2.AGE;

-- LEFT OUTER JOIN : 왼쪽 테이블에 값이 있을 시 오른쪽 테이블이 조건에 맞지 않아도 나옴 
SELECT a.name as nameA , b.name as nameB FROM TB1 LEFT OUTER JOIN TB2 ON TB1.NAME = TB2.NAME;









select * from tb1 full outer join tb2 as on tb1.name = tb2.name;


select* from tb1 left outer join tb2 on tb1.name = tb2.name
where tb1.age >30 order by age;

SELECT *
FROM tb1
LEFT OUTER JOIN tb2 ON tb1.name = tb2.name
WHERE tb1.age > 30
ORDER BY tb1.age;

commit;


select name , age as 나이 from tb1 order by age;

select * from tb1
where age between 30 and 40;

insert into tb1 values ('정다운', 25);



select * from tb1;


select * from tb1 where name like '__호';





CREATE TABLE student(
stu_no  number(9),
stu_name VARCHAR(12), 
stu_dept VARCHAR(20),  
stu_grade NUMBER(1),  
stu_class CHAR(1), 
stu_gender CHAR(1), 
stu_height NUMBER(5,2),
stu_weight NUMBER(5,2), 
  CONSTRAINT stu_no_pk PRIMARY KEY(stu_no));


INSERT INTO student VALUES(20153075, '옥한빛','기계',1,'C','M',177,80);
INSERT INTO student VALUES(20153088, '이태연','기계',1,'C','F',162,50);
INSERT INTO student VALUES(20143054, '유가인','기계',2,'C','F',154,47);
INSERT INTO student VALUES(20152088, '조민우','전기전자',1,'C','M',188,90);
INSERT INTO student VALUES(20142021, '심수정','전기전자',2,'A','F',168,45);
INSERT INTO student VALUES(20132003, '박희철','전기전자',3,'B','M',null,63);
INSERT INTO student VALUES(20151062, '김인중','컴퓨터정보',1,'B','M',166,67);
INSERT INTO student VALUES(20141007, '진현무','컴퓨터정보',2,'A','M',174,64);
INSERT INTO student VALUES(20131001, '김종헌','컴퓨터정보',3,'C','M',null,72);
INSERT INTO student VALUES(20131025, '옥성우','컴퓨터정보',3,'A','F',172,63);


CREATE TABLE subject(
sub_no  CHAR(3),
sub_name VARCHAR2(30)
  CONSTRAINT sub_name_nn NOT NULL,
sub_prof VARCHAR2(12)
  CONSTRAINT sub_prof_nn NOT NULL,
sub_grade NUMBER(1)
  CONSTRAINT sub_grade_nn NOT NULL,
sub_dept VARCHAR2(20)
  CONSTRAINT sub_dept_nn NOT NULL,
  CONSTRAINT sub_no_pk PRIMARY KEY(sub_no));

INSERT INTO subject VALUES('111', '데이터베이스','이재영',2,'컴퓨터정보');
INSERT INTO subject VALUES('110', '자동제어','정순정',2,'전기전자');
INSERT INTO subject VALUES('109', '자동화설계','박민영',3,'기계');
INSERT INTO subject VALUES('101', '컴퓨터개론','강종영',3,'컴퓨터정보');
INSERT INTO subject VALUES('102', '기계공작법','김태영',1,'기계');
INSERT INTO subject VALUES('103', '기초전자실험','김유석',1,'전기전자');
INSERT INTO subject VALUES('104', '시스템분석설계','강석현',3,'컴퓨터정보');
INSERT INTO subject VALUES('105', '기계요소설계','김명성',1,'기계');
INSERT INTO subject VALUES('106', '전자회로실험','최영민',3,'전기전자');
INSERT INTO subject VALUES('107', 'CAD응용실습','구봉규',2,'기계');
INSERT INTO subject VALUES('108', '소프트웨어공학','권민성',1,'컴퓨터정보');

CREATE TABLE enrol(
sub_no      CHAR(3)
CONSTRAINT enr_sub_no_fk REFERENCES subject(sub_no),
stu_no      number(9)
CONSTRAINT enr_stu_no_fk REFERENCES student(stu_no),
enr_grade  NUMBER(3),
  CONSTRAINT enr_pk PRIMARY KEY(sub_no,stu_no));


insert into enrol values('101',20131001,80);
insert into enrol values('104',20131001,56);
insert into enrol values('106',20132003,72);
insert into enrol values('103',20152088,45);
insert into enrol values('101',20131025,65);
insert into enrol values('104',20131025,65);
insert into enrol values('108',20151062,81);
insert into enrol values('107',20143054,41);
insert into enrol values('102',20153075,66);
insert into enrol values('105',20153075,56);
insert into enrol values('102',20153088,61);
insert into enrol values('105',20153088,78);

commit;


select * from student;



select * from emp;

select * from emp
where sal=(select sal from emp where ename='ford');


select*from emp where sal=(select sal from emp where ename ='FORD');

select * from emp where sal = (select sal from emp where ename='FORD');

commit;





-----------------------------------------------------------------------------

desc student;
select * from student;
--'컴퓨터정보'과 학생과 같은 반을 가진 학생의 정보 검색



select *from student;

update student set stu_name='리자도'
where stu_name='박희철';


delete from student where stu_name='리자도';

 insert into student values(20220310 , '리자도' , '컴퓨터정보' , 1 , 'A' ,'M',179,69);
 
 
 select * from tb1 left outer join tb2 on tb1.name = tb2.name;

-- RIGHT OUTER JOIN : 오른쪽 테이블에 값이 있을 시 왼쪽 테이블이 조건에 맞지 않아도 나옴
SELECT * FROM TB1 left OUTER JOIN TB2 ON TB1.NAME = TB2.NAME;

select * from tb1 inner join tb2 on tb1.name = tb2.name;

select * from tb1;

select * from tb1 where name ='김철수';


select avg(stu_heught)from student;


select * from student where stu_height > (select avg(stu_height) from student);

update student set stu_height=184
where stu_name='조민우';

select * from student
where stu_height between 170 and 180;

alter table tm1 add constraint test_pk pri


select * from tb1 full outer join tb2 on tb1.name = tb2.age;


SELECT *
FROM tb1
RIGHT JOIN tb2 ON tb1.name = tb2.age;

select stu_height from student where stu_name='리자도';





--평균 급여보다 더 높은 사원
select * from emp where sal > (select avg(sal) from emp);


-- 부서별 평균 급여보다 더 높은 사원 
select * from emp where sal > any(select avg(sal) from emp group by deptno);


select * from student;


-- 전공 별 키의 평균 보다 높은 학생
select * from student where stu_height > any ( select avg(stu_height) from student group by stu_dept);



-- 옥성우 보다 키큰 학생
select stu_no , stu_name , stu_height 
from student 
where stu_height >(select stu_height from student where stu_name='옥성우');



-- 컴퓨터 정공 을 가진 사람과 같은 class 를 갖은 학생
select *from student where stu_class in (select stu_class from student where stu_dept ='컴퓨터정보')and stu_dept <>'컴퓨터정보';



select *from student;

-- column 이름 바꾸기 
alter table student rename column stu_no to nono;
alter table student rename column nono to stu_no;



--testA table ceate
create table testA(
userId number,
userName varchar(20),
userAd varchar(20),
userDate date default sysdate
);


drop table testA;


--생성된 테이블에 pk 추가하기 
alter table testA add primary key (userId);

--pk삭제
alter table testA drop primary key;
--생성된 테이블에 fk 추가
alter table testA add foreign key (userId) references testB(userId);




--컬럼 타입 바꾸기
alter table testA modify userName number;
alter table testA modify userName varchar(20);

--컬럼 이름 바꾸기
alter table testA rename column userName to Usernn;
alter table testA rename column Usernn to userName;

--컬럼 삭제하기
alter table testA drop column userName;
alter table testA add userName varchar(20);



--속성 보기 
desc testA;

select * from testA;


-- join을 사용 해서 두 테이블 나이가 30 이상인 사람 출략 
SELECT *FROM tb1 LEFT OUTER JOIN tb2 ON tb1.name = tb2.name WHERE tb1.age >= 30;

--30~50 의 나이를 가진 김철수 라는사람을 tb1 기준에서 뺸 나머지 출력 
select * from tb1 left outer join tb2 on tb1.name = tb2.name where (tb1.age between 30 and 50) and (tb1.name <>'김철수');

commit;





---------------------------------------- last dance 


-- create table 
create table server (
userId number generated as identity(start with 1)primary key,
userName varchar2(20),
userAdd varchar2(20),
userEmail varchar2(20)
);



-- join 

select * from tb1;
select * from tb2;

select * from tb1 inner join tb2 on tb1.name = tb2.name;

-- join 하면서 오름차순으로 tb1 기준 나이가 30 ~ 45 까지만 출력
select * from tb1 left outer join tb2 on tb1.name = tb2.name where tb1.age between 30 and 45 order by tb1.age;



select * from tb1 left outer join tb2 on tb1.name= tb2.name;
select * from tb1 right outer join tb2 on tb1.name= tb2.name;
select * from tb1 full outer join tb2 on tb1.name= tb2.name where(tb1.age between 30 and 45) and (tb1.name <>'김철수');



select *from student;

select stu_no , stu_grade , stu_name , stu_dept from student where stu_class in (select stu_class from student where stu_dept ='컴퓨터정보')and stu_dept <>'컴퓨터정보';


select * from emp;


select * from emp where sal > (select sal from emp where ename='JONES');
select * from emp where sal > any(select avg(sal) from emp group by deptno);

select * from student;


select * from student where stu_height > any(select stu_height from student where stu_name='유가인') and (stu_height between 170 and 180);




-- fianl lastdance 



create table rever(
userid number generated as identity(start with 1)primary key,
userName varchar2(20),
userAdd varchar2(20),
userSex varchar2(20)
);

alter table rever modify userSex number;
alter table rever modify userSex varchar2(20);

alter table rever drop column userSex;
alter table rever add userSex varchar2(20);

 

select * from tb1;
select * from tb2;


select * from tb1 left outer join tb2 on tb1.name = tb2.name where (tb1.age between 30 and 50) and(tb1.name <>'김철수');


select * from emp;

select * from emp where sal > any(select avg(sal) from emp group by deptno);

select * from student;

update student set stu_name='옥한빛'
where stu_name ='옥한비';


select * from student where stu_class in (select stu_class from student where stu_dept='컴퓨터정보')and stu_dept<>'컴퓨터정보';




select * from student where stu_height > any(select stu_height from student where stu_name='이태연')and stu_height between 170 and 180;



select * from tb1 left outer join tb2 on tb1.name = tb2.name where tb2.name is not null;

alter table tb1 add ans varchar(10);
alter table tb2 add ans varchar(10);

select * from tb2;

select * from tb1 left outer join tb2 on tb1.name = tb2.name where tb1.ans='N';



--select a.empno"사원번호",a.ename"사원이름",b.empno"상급자사원번호",b.ename"상급자이름"
--select a.empno,a.ename,b.empno,b.ename
select a.empno"사원번호",a.ename"사원이름",b.empno"상급자사원번호",b.ename"상급자이름"from emp a left outer join emp b on a.mgr=b.empno;
select a.empno,a.ename,b.empno,b.ename from emp a left outer join emp b on a.mgr=b.empno;
select * from emp;

select a.empno ,a.ename , b.empno , b.ename from emp a left outer join emp b on a.mgr=b.empno;

select a.empno , a.ename , b.empno , b.ename 
from emp a left outer join emp b on a.mgr = b.empno 
where a.empno between 7600 and 7800;


select * from emp;



select empno , ename ,job , sal ,
case job
when 'MANAGER' then sal *1.1
when 'CLERK' then sal * 1.15
else sal
end as 인상
from emp;

select empno , ename , sal,
case 
when sal >= 5000 then 1
when sal >= 3000 then 2
when sal >= 1000 then 3
else 0
end as 등급
from emp;




