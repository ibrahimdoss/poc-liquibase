-- Lock Database
UPDATE dating.databasechangeloglock SET LOCKED = TRUE, LOCKEDBY = 'ibrahim-ABRA-A5-V19-2 (192.168.1.43)', LOCKGRANTED = NOW() WHERE ID = 1 AND LOCKED = FALSE;

-- *********************************************************************
-- Update Database Script
-- *********************************************************************
-- Change Log: db-changelog.xml
-- Ran at: 23/03/2024, 14:56
-- Against: webuser@jdbc:postgresql://localhost:5432/manageliquibase?currentSchema=dating
-- Liquibase version: 4.26.0
-- *********************************************************************

-- Changeset db-changelog.xml::Create FK_PRO_BRE_ID::DBA presents
ALTER TABLE dating.PROFILES ADD CONSTRAINT FK_PRO_BRE_ID FOREIGN KEY (PRO_BRE_ID) REFERENCES dating.BREEDS (BRE_ID);

INSERT INTO dating.databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('Create FK_PRO_BRE_ID', 'DBA presents', 'db-changelog.xml', NOW(), 5, '9:d5a014e54263a1a0541c3d63cf6798ba', 'addForeignKeyConstraint baseTableName=PROFILES, constraintName=FK_PRO_BRE_ID, referencedTableName=BREEDS', '', 'EXECUTED', NULL, NULL, '4.26.0', '1195013441');

-- Changeset db-changelog.xml::Add PRO_GENDER column::DBA presents
ALTER TABLE dating.PROFILES ADD PRO_GENDER CHAR(1);

INSERT INTO dating.databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('Add PRO_GENDER column', 'DBA presents', 'db-changelog.xml', NOW(), 6, '9:531a7c7cf534a1bbb245d2ad63d0b5d4', 'addColumn tableName=PROFILES', '', 'EXECUTED', NULL, NULL, '4.26.0', '1195013441');

-- Release Database Lock
UPDATE dating.databasechangeloglock SET LOCKED = FALSE, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

