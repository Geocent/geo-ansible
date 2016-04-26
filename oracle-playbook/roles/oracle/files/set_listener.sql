create user TEST identified by password;
grant create session to TEST;
grant create table to TEST;
grant create sequence to TEST;
grant create trigger to TEST;
grant create view to TEST;
grant unlimited tablespace to TEST;
CREATE TABLESPACE myproject_tbs DATAFILE 'myproject_tbs_f1.dbf' SIZE 50M   AUTOEXTEND ON NEXT 10M MAXSIZE 10G ONLINE;
ALTER USER TEST DEFAULT TABLESPACE myproject_tbs;
--GRANT DBA TO TEST; -- needed occasionally for troubleshooting
EXEC DBMS_XDB.SETLISTENERLOCALACCESS(FALSE);
quit;
/