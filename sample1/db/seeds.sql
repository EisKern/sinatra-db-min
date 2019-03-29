drop table if exists comments;

create table comments(
    id integer primary key,
    name text,
    comment text
);

insert into comments values (1, 'aaa', 'Hello');
insert into comments values (2, 'bbb', 'Hello World');
