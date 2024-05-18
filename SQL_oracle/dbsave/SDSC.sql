CREATE TABLE member (
    member_name VARCHAR2(10)
);

insert into member(member_name) values('유건희');

select * from member;

select member_name from member;


select member_name from member;


insert into member values('원동하');

delete from member where member_name='원동하';

select count(*)member_name from member;

create sequence member_seq
start with 1
INCREMENT BY 1 MAXVALUE 100
CYCLE NOCACHE;


select count(*) from member 
where member_name = '홍지오';

