select *from member;


select count(*) from member
where member_id='q' and member_name='q';

select * from member;


update member set member_password = 'w'
where member_id ='q' and member_name='q';


update member set member_password = '1'
where member_id ='q' and member_name='q';

select count(*) from member
where member_email='q' and member_name='q';

select member_id from member
where member_email ='q' and member_name='q';

-- ********************************************


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
    updateDate date default sysdate
);



create table vam_bcate(
    tier number(1) not null,
    cateName varchar2(30) not null,
    cateCode varchar2(30) not null,
    cateParent varchar2(30) ,
    primary key(cateCode),
    foreign key(cateParent) references vam_bcate(cateCode) 
);


select * from vam_bcate;
insert into vam_bcate(tier, cateName, cateCode) values (1, '국내', '100000');
    insert into vam_bcate(tier, cateName, cateCode, cateParent) values (2, '소설', '101000','100000');    
        insert into vam_bcate(tier, cateName, cateCode, cateParent) values (3, '한국소설', '101001','101000');
        insert into vam_bcate(tier, cateName, cateCode, cateParent) values (3, '영미소설', '101002','101000');
        insert into vam_bcate(tier, cateName, cateCode, cateParent) values (3, '일본소설', '101003','101000');
    insert into vam_bcate(tier, cateName, cateCode, cateParent) values (2, '시/에세이', '102000','100000');    
        insert into vam_bcate(tier, cateName, cateCode, cateParent) values (3, '한국시', '102001','102000');    
        insert into vam_bcate(tier, cateName, cateCode, cateParent) values (3, '해외시', '102002','102000');    
    insert into vam_bcate(tier, cateName, cateCode, cateParent) values (2, '경제/경영', '103000','100000');    
        insert into vam_bcate(tier, cateName, cateCode, cateParent) values (3, '경영일반', '103001','103000');    
        insert into vam_bcate(tier, cateName, cateCode, cateParent) values (3, '경영이론', '103002','103000');    
        insert into vam_bcate(tier, cateName, cateCode, cateParent) values (3, '경제일반', '103003','103000');    
        insert into vam_bcate(tier, cateName, cateCode, cateParent) values (3, '경제이론', '103004','103000');    
    insert into vam_bcate(tier, cateName, cateCode, cateParent) values (2, '자기계발', '104000','100000');    
        insert into vam_bcate(tier, cateName, cateCode, cateParent) values (3, '성공/처세', '104001','104000');    
        insert into vam_bcate(tier, cateName, cateCode, cateParent) values (3, '자기능력계발', '104002','104000');    
        insert into vam_bcate(tier, cateName, cateCode, cateParent) values (3, '인간관계', '104003','104000');    
    insert into vam_bcate(tier, cateName, cateCode, cateParent) values (2, '인문', '105000','100000');    
        insert into vam_bcate(tier, cateName, cateCode, cateParent) values (3, '심리학', '105001','105000');    
        insert into vam_bcate(tier, cateName, cateCode, cateParent) values (3, '교육학', '105002','105000');    
        insert into vam_bcate(tier, cateName, cateCode, cateParent) values (3, '철학', '105003','105000');    
    insert into vam_bcate(tier, cateName, cateCode, cateParent) values (2, '역사/문화', '106000','100000');
        insert into vam_bcate(tier, cateName, cateCode, cateParent) values (3, '역사일반', '106001','106000');
        insert into vam_bcate(tier, cateName, cateCode, cateParent) values (3, '세계사', '106002','106000');
        insert into vam_bcate(tier, cateName, cateCode, cateParent) values (3, '한국사', '106003','106000');
    insert into vam_bcate(tier, cateName, cateCode, cateParent) values (2, '과학', '107000','100000');
        insert into vam_bcate(tier, cateName, cateCode, cateParent) values (3, '과학이론', '107001','107000');
        insert into vam_bcate(tier, cateName, cateCode, cateParent) values (3, '수학', '107002','107000');
        insert into vam_bcate(tier, cateName, cateCode, cateParent) values (3, '물리학', '107003','107000');
insert into vam_bcate(tier, cateName, cateCode) values (1, '국외', '200000');
    insert into vam_bcate(tier, cateName, cateCode, cateParent) values (2, '문학', '201000','200000');    
        insert into vam_bcate(tier, cateName, cateCode, cateParent) values (3, '소설', '201001','201000');    
        insert into vam_bcate(tier, cateName, cateCode, cateParent) values (3, '시', '201002','201000');    
        insert into vam_bcate(tier, cateName, cateCode, cateParent) values (3, '희곡', '201003','201000');    
    insert into vam_bcate(tier, cateName, cateCode, cateParent) values (2, '인문/사회', '202000','200000');    
        insert into vam_bcate(tier, cateName, cateCode, cateParent) values (3, '교양', '202001','202000');    
        insert into vam_bcate(tier, cateName, cateCode, cateParent) values (3, '철학', '202002','202000');    
        insert into vam_bcate(tier, cateName, cateCode, cateParent) values (2, '경제/경영', '203000','200000');    
        insert into vam_bcate(tier, cateName, cateCode, cateParent) values (3, '경제학', '203001','203000');    
        insert into vam_bcate(tier, cateName, cateCode, cateParent) values (3, '경영학', '203002','203000');    
        insert into vam_bcate(tier, cateName, cateCode, cateParent) values (3, '투자', '203003','203000');    
    insert into vam_bcate(tier, cateName, cateCode, cateParent) values (2, '과학/기술', '204000','200000');    
        insert into vam_bcate(tier, cateName, cateCode, cateParent) values (3, '교양과학', '204001','204000');    
        insert into vam_bcate(tier, cateName, cateCode, cateParent) values (3, '물리학', '204002','204000');    
        insert into vam_bcate(tier, cateName, cateCode, cateParent) values (3, '수학', '204003','204000');