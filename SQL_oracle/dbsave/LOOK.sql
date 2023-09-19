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

update set member_email='q'