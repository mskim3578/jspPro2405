drop table guestbook;

create table guestbook (
ser int primary key,
name varchar2(20),
title varchar(200),
content varchar(4000),
regdate date);

create sequence bookseq;

insert into guestbook values (bookseq.nextval,'aaa','bbbb','ccccc' );