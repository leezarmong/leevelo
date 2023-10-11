desc member;

select * from vam_bcate;


desc vam_bcate;

select * from vam_book;

select * from vam_book;



create table vam_nation(
   nationId varchar2(2) primary key,
    nationName varchar2(50)
);
insert into vam_nation values ('01', '국내');
insert into vam_nation values ('02','국외');

select * from vam_nation ;


create table vam_nation(
   nationId varchar2(2) primary key,
    nationName varchar2(50)
);

create table vam_author(
    authorId number generated as identity (start with 1) primary key,
    authorName varchar2(50),
    nationId varchar2(2),
    authorIntro long,
    foreign key (nationId) references vam_nation(nationId)
    -- vam_author 의 nationId 가 vam_nation의 pk 인 nationId 를 참조하게 된다. 
);


insert into vam_author(authorName, nationId, authorIntro) values('유홍준', '01', '작가 소개입니다' );
insert into vam_author(authorName, nationId, authorIntro) values('김난도', '01', '작가 소개입니다' );
insert into vam_author(authorName, nationId, authorIntro) values('폴크루그먼', '02', '작가 소개입니다' );


select * from vam_nation;
select * from vam_author;


 alter table vam_author add regDate date default sysdate;
    alter table vam_author add updateDate date default sysdate;

select * from vam_author;

delete from vam_author;

select * from vam_nation natural join vam_author;
-- natural join 



ALTER TABLE vam_author MODIFY(authorId GENERATED AS IDENTITY (START WITH 1));

insert into vam_author(authorName, nationId, authorIntro) values('유홍준', '01', '작가 소개입니다' );
    insert into vam_author(authorName, nationId, authorIntro) values('김난도', '01', '작가 소개입니다' );
    insert into vam_author(authorName, nationId, authorIntro) values('폴크루그먼', '02', '작가 소개입니다' );
     insert into vam_author(authorName, nationId, authorIntro) values('폴크루그먼', '02', '작가 소개입니다' );
     
 select * from vam_author;
 select * from vam_book;
 select * from vam_nation;
 
 select count(*) from vam_author; 
 
 
 
 select * from vam_book;
 
 delete from vam_book;
 alter table vam_book modify(bookId generated as identity (start with 1));

ALTER TABLE vam_author MODIFY(authorId GENERATED AS IDENTITY (START WITH 1));


select * from vam_book;

select * from vam_author;


select * from vam_bcate;


SELECT column_name, data_type, data_length, data_precision, data_scale, nullable
FROM all_tab_columns
WHERE table_name = 'vam_author';

alter table vam_book add foreign key (authorId) references vam_author(authorId);
alter table vam_book add foreign key (cateCode) references vam_bcate(cateCode);





drop table vam_book;

alter table vam_book add foreign key (authorId) references vam_author(authorId);
alter table vam_book add foreign key (cateCode) references vam_bcate(cateCode);



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

select * from vam_book;
select * from vam_author;
select * from vam_bcate;