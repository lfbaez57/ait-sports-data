@ECHO OFF
SETLOCAL
IF EXIST setter.bat (CD.. & CALL com\setter.bat) ELSE ( CALL com\setter.bat )
D:\Proyectos\laragon\bin\mysql\mysql-5.7.33-winx64\bin\mysqldump.exe -u %MysqlUserLocal.txt% -h %MysqlHost.txt% %MysqlDBLocal.txt% --no-create-info --complete-insert --default-character-set=utf8 --skip-triggers --compact --no-create-db>%FTPFolder.txt%/db-data.sql
PAUSE