# How to take pg_dump of a very large postgres database?

In this post I would like to share an experience I had in the past about dumping a very large PostgreSQL DB.

The database was 2 TB.

The command I used was:

```
pg_dump database_name -C -U user_name | zip > /home/caiomoreno/warehouse_20160730.zip

```

It took 5 hours and 49 minutes hours to dump 2 TB and compress in a file with 90 GB.

To do this task I used the links before to help me chose the best option:<BR>
https://www.postgresql.org/docs/9.1/static/backup-dump.html#BACKUP-DUMP-LARGE<BR>
https://dan.langille.org/2013/06/10/using-compression-with-postgresqls-pg_dump/<BR>
https://www.postgresql.org/docs/9.3/static/app-pgdump.html<BR>
http://www.whiteboardcoder.com/2012/05/postgres-pgdumpall-with-compression.html<BR>
http://www.mad-hacking.net/documentation/linux/applications/postgres/backup-restore-database.xml<BR>

## Connect to PostgreSQL
```
sudo su
psql -d basebase -U user
```
