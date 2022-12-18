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
values ('1','testuser1', 'testuser1@gmail.com', 'Columbia University', 'Computer Science'),
       ('2','testuser2', 'testuser2@gmail.com', 'Columbia University', NULL),
       ('3','testuser3', 'testuser3@gmail.com', NULL, 'Computer Engineering'),
       ('4','testuser4', 'testuser4@gmail.com', NULL, 'Computer Engineering'),
       ('5','testuser5', 'testuser5@gmail.com', NULL, 'Computer Engineering');