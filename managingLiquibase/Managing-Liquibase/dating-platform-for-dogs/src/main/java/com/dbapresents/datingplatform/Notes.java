package com.dbapresents.datingplatform;

public enum Notes {
}
//liquibase --driver=org.postgresql.Driver --changeLogFile=db-changelog.xml --url="jdbc:postgresql://localhost:5432/manageliquibase?currentSchema=dating" --username=webuser --password=aSecretPass update
//Yukarıdaki komutu calıstırdığım zaman db paket altındaki db-changelog.xml içindeki
/*

    <changeSet id="create Breeds table" author="ibrahim.dos">
        <createTable tableName="BREEDS">
            <column name="BRE_ID" type="int" autoIncrement="true">
                <constraints nullable="false" primaryKey="true" primaryKeyName="PK_BREEDS"/>
            </column>
            <column name="BRE_NAME" type="varchar(100)">
                <constraints nullable="false" />
            </column>
        </createTable>
    </changeSet>

bu changeseti update ediyor ve tabloyu create ediyor.*/

//liquibase --driver=org.postgresql.Driver --changeLogFile=db-changelog.xml --url="jdbc:postgresql://localhost:5432/manageliquibase?currentSchema=dating" --username=webuser --password=aSecretPass updateCount 2


//rollback.bat

//liquibase --driver=org.postgresql.Driver --changeLogFile=db-changelog.xml --url="jdbc:postgresql://localhost:5432/manageliquibase?currentSchema=dating" --username=webuser --password=aSecretPass rollbackCount 1

//Tag ile run etme ve sonrasında tag ile rollback ve update yapabilirsin.
//liquibase --driver=org.postgresql.Driver --changeLogFile=db-changelog.xml --url="jdbc:postgresql://localhost:5432/manageliquibase?currentSchema=dating" --username=webuser --password=aSecretPass tag before_update

//liquibase --driver=org.postgresql.Driver --changeLogFile=db-changelog.xml --url="jdbc:postgresql://localhost:5432/manageliquibase?currentSchema=dating" --username=webuser --password=aSecretPass updateSQL

//Bu komut xmldeki changeseti sqle map edip calıstırır output file ile de resources altında calıstırdığı sql komutlarını kaydeder.
//liquibase --driver=org.postgresql.Driver --changeLogFile=db-changelog.xml --url="jdbc:postgresql://localhost:5432/manageliquibase?currentSchema=dating" --username=webuser --password=aSecretPass --outputFile= update.sql updateSQL

//bu da yukarıda islemin aynısnı yapar ama rollback hali.
//liquibase --driver=org.postgresql.Driver --changeLogFile=db-changelog.xml --url="jdbc:postgresql://localhost:5432/manageliquibase?currentSchema=dating" --username=webuser --password=aSecretPass --outputFile=rollback.sql futureRollbackSQL