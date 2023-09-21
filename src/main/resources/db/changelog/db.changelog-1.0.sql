--liquibase formatted sql logicalFilePath:path-independent

--Changeset busra:11111xv
CREATE TABLE school.classes
( id INT NOT NULL,
 name VARCHAR(50) NOT NULL,
 subject BIT(1) DEFAULT 1 NULL,
 CONSTRAINT PK_CLASSES PRIMARY KEY (id)
);
--rollback drop table classes