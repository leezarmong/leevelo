desc member;

select * from vam_bcate;


desc vam_bcate;

select * from vam_book;

select * from vam_book;


-- 국가 테이블 설정
create table vam_nation(
   nationId varchar2(2) primary key,
    nationName varchar2(50)
);
insert into vam_nation values ('01', '국내');
insert into vam_nation values ('02','국외');

select * from vam_nation ;


-- 작가 테이블 설정
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


-- vam_author date 컬럼 추가
 alter table vam_author add regDate date default sysdate;
    alter table vam_author add updateDate date default sysdate;



select * from vam_nation natural join vam_author;
-- natural join 


-- authorId 증가 값 설정
ALTER TABLE vam_author MODIFY(authorId GENERATED AS IDENTITY (START WITH 1));




insert into vam_author(authorName, nationId, authorIntro) values('유홍준', '01', '작가 소개입니다' );
    insert into vam_author(authorName, nationId, authorIntro) values('김난도', '01', '작가 소개입니다' );
    insert into vam_author(authorName, nationId, authorIntro) values('폴크루그먼', '02', '작가 소개입니다' );
     insert into vam_author(authorName, nationId, authorIntro) values('폴크루그먼', '02', '작가 소개입니다' );
     


-- book 증가값 재설정  
 delete from vam_book;
 alter table vam_book modify(bookId generated as identity (start with 1));

-- author 증가값 재설정
delete from vam_author;
ALTER TABLE vam_author MODIFY(authorId GENERATED AS IDENTITY (START WITH 1));


-- book 테이블에서 fk 설정 
alter table vam_book add foreign key (authorId) references vam_author(authorId);
alter table vam_book add foreign key (cateCode) references vam_bcate(cateCode);



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




------------- 10 / 12 


-- 재귀 복사
insert into vam_book(bookName, authorId, publeYear, publisher, cateCode, bookPrice, bookStock, bookDiscount,bookIntro, bookContents)
(select bookName, authorId, publeYear, publisher, cateCode, bookPrice, bookStock, bookDiscount,bookIntro, bookContents from vam_book);



