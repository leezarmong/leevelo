desc member;

select * from vam_bcate;


desc vam_bcate;

select * from vam_book;

ALTER SEQUENCE book_id_sequence RESTART WITH 1;
ALTER TABLE vam_book_new RENAME TO vam_book;
