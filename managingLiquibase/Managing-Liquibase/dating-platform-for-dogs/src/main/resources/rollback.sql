-- *********************************************************************
-- SQL to roll back currently unexecuted changes
-- *********************************************************************
-- Change Log: db-changelog.xml
-- Ran at: 23/03/2024, 14:59
-- Against: webuser@jdbc:postgresql://localhost:5432/manageliquibase?currentSchema=dating
-- Liquibase version: 4.26.0
-- *********************************************************************

-- Lock Database
UPDATE dating.databasechangeloglock SET LOCKED = TRUE, LOCKEDBY = 'ibrahim-ABRA-A5-V19-2 (192.168.1.43)', LOCKGRANTED = NOW() WHERE ID = 1 AND LOCKED = FALSE;

-- Rolling Back ChangeSet: db-changelog.xml::Add PRO_GENDER column::DBA presents
ALTER TABLE dating.PROFILES DROP COLUMN PRO_GENDER;

DELETE FROM dating.databasechangelog WHERE ID = 'Add PRO_GENDER column' AND AUTHOR = 'DBA presents' AND FILENAME = 'db-changelog.xml';

-- Rolling Back ChangeSet: db-changelog.xml::Create FK_PRO_BRE_ID::DBA presents
ALTER TABLE dating.PROFILES DROP CONSTRAINT FK_PRO_BRE_ID;

DELETE FROM dating.databasechangelog WHERE ID = 'Create FK_PRO_BRE_ID' AND AUTHOR = 'DBA presents' AND FILENAME = 'db-changelog.xml';

-- Release Database Lock
UPDATE dating.databasechangeloglock SET LOCKED = FALSE, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

