select* from database;

update database set absent = absent +1
where name = '홍길동';

update database set absent = absent -1
where name = '홍길동';


update database set name ='test'
where name ='홍길동';

update database set absent = 121
where name ='test';

select absent from database;