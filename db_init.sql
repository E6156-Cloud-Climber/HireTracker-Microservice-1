create schema if not exists users;
use users;

drop table if exists user;
create table user
(
    user_id  varchar(256) not null,
    nickname varchar(256) not null,
    email    varchar(256) not null,
    school   varchar(256) null,
    major    varchar(256) null,
    constraint user_pk
        primary key (user_id),
    constraint user_email
        unique (email)
);



insert into user (user_id, nickname, email, school, major)
values ('1','hahaha', 'hahaha04@gmail.com', 'Columbia University', 'Computer Science'),
       ('2','hihi', 'hihi10@gmail.com', 'Columbia University', NULL),
       ('3','ohoh', 'ohoh59@gmail.com', NULL, 'Computer Engineering');