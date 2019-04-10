drop table books;
create table books
(
id int primary key,
name varchar2(25) not null
);

create sequence seq_books_id
increment by 1
start with 1;