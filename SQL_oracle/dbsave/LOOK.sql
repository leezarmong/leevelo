select COUNT(*) from board;


select *from board;

select* from board
order by seq desc;

select count(*) 
as memer
from member;





select count(*) from board;

select * from member;

select *from board;

select * from board_seq;


insert into board(seq,title , writer, content) values (3, '테스트 내용', 'q','gd');
insert into board(title , writer, content) values ( '테스트 내용', 'q','gd');

select * from board order by seq;


ALTER TABLE board
ADD regdate DATE DEFAULT SYSDATE;

select  title , writer , content , regdate from(
        select rownum  as  title , writer , content ,regdate
        from board 
        ) 
where writer >= 1 ;
 
select * from board order by seq;
select * from board;



select * from board 
where seq >=1 ;

select * from board;


ALTER TABLE board
ADD (bno NUMBER GENERATED ALWAYS AS IDENTITY);

select * from board;

select * from board;

select * from board 
where seq =21;



select * from board;



UPDATE board
SET title = '수정', content = '수정됨'
WHERE seq = 14;

update board set title='11133' , content = '111'
where seq = 33;
select * from board;


select * from board;


Select * from board 
where content like '4%'and length(content) < 2;

select * from board
where content like 's%';