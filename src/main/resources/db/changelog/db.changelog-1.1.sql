--liquibase formatted sql logicalFilePath:path-independent

--changeset busra:create-table-student endDelimiter:;
create table school.student ( ID int not null, NAME varchar(100) not null);
--rollback drop table student;

--changeSet busra:insert-table-student1
insert into student values(1,'test');
--rollback delete from student where id=1;


--changeSet busra:insert-table-student2
insert into student values(2,'test');
--rollback delete from student where id=2;
