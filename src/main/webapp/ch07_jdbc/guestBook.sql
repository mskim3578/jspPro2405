create table guestbook (
ser int,
name varchar2(20),
title varchar(200),
content varchar(4000));

create sequence bookseq;

insert into guestbook values (bookseq.nextval,'aaa','bbbb','ccccc' );