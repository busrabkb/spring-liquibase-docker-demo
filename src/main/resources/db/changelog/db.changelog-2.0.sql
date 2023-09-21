--liquibase formatted sql logicalFilePath:path-independent

--changeset moglu:add-column-to-classes
alter table school.classes add column surname varchar(30);
--rollback alter table classes drop name;

--changeset busra:create-table-test1
create table test1 (
    id int primary key,
    name varchar(255)
);
--rollback drop table test1;

--changeset busra:insert-to-test1
insert into test1 (id, name) values (1, 'sample1');
insert into test1 (id, name) values (2, 'sample2');
--rollback delete from test1 where id=1 or id=2;