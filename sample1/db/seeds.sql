drop table if exists messages;

create table messages(
    name text,
    comment text
);

insert into messages values ('aaa', 'Hello');
insert into messages(name, comment) values ('bbb', 'Hello World');
