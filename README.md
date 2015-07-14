# log-manager
Log Manager

Enable CSV Logging in PostgreSQL

```
ps aux | grep postgres
sudo su - postgres   
vi /Library/PostgresPlus/<version>SS/data/postgresql.conf
  
```  

```

sudo cp data/postgresql.conf /Users/caiomsouza/git/github.com/log-manager/
sudo cp /Users/caiomsouza/git/github.com/log-manager/postgresql.conf /Library/PostgreSQL/9.3/data/

```
  
  
modify it and save it.  

Stop PostgreSQL 9.3 on Mac OS X
```
sudo su - postgres
/Library/PostgreSQL/9.3/bin/pg_ctl stop -D /Library/PostgreSQL/9.3/data

```

Start PostgreSQL 9.3 on Mac OS X
```
sudo su - postgres
/Library/PostgreSQL/9.3/bin/pg_ctl start -D /Library/PostgreSQL/9.3/data

```

Output:

```

Caios-MacBook-Pro:~ postgres$ /Library/PostgreSQL/9.3/bin/pg_ctl stop -D /Library/PostgreSQL/9.3/data 
waiting for server to shut down.... done
server stopped
Caios-MacBook-Pro:~ postgres$ /Library/PostgreSQL/9.3/bin/pg_ctl start -D /Library/PostgreSQL/9.3/data 
server starting
Caios-MacBook-Pro:~ postgres$ 2015-07-14 11:23:23 EDT LOG:  redirecting log output to logging collector process
2015-07-14 11:23:23 EDT HINT:  Future log output will appear in directory "pg_log".


```

```
vi /Library/PostgreSQL/9.3/data/pg_log/postgresql-2015-07-14_112323.csv

# postgresql-2015-07-14_112323.csv
2015-07-14 11:23:23.290 EDT,,,8313,,55a5296b.2079,1,,2015-07-14 11:23:23 EDT,,0,LOG,00000,"ending log output to stderr",,"Future log output will go to log destination ""csvlog"".",,,,,,,""
2015-07-14 11:23:23.338 EDT,,,8315,,55a5296b.207b,1,,2015-07-14 11:23:23 EDT,,0,LOG,00000,"database system was shut down at 2015-07-14 11:23:15 EDT",,,,,,,,,""
2015-07-14 11:23:23.340 EDT,,,8313,,55a5296b.2079,2,,2015-07-14 11:23:23 EDT,,0,LOG,00000,"database system is ready to accept connections",,,,,,,,,""
2015-07-14 11:23:23.340 EDT,,,8319,,55a5296b.207f,1,,2015-07-14 11:23:23 EDT,,0,LOG,00000,"autovacuum launcher started",,,,,,,,,""



```


http://justatheory.com/computers/databases/postgresql/enable-csvlogging.html
http://www.postgresql.org/docs/9.1/static/runtime-config-logging.html
http://www.depesz.com/2011/05/06/understanding-postgresql-conf-log/

Links:

http://jasonwilder.com/blog/2013/11/19/fluentd-vs-logstash/

PostgreSQL Terminal Commands
http://help.theatremanager.com/book/export/html/1666

http://alvinalexander.com/blog/post/postgresql/how-start-postgres-postgresql-server-mac-osx

Como encontrar uma agulha num palheiro de logs 
http://schedule.fisl16.softwarelivre.org/#/talk/132
http://hemingway.softwarelivre.org/fisl16/high/41e/sala_41e-high-201507101700.ogv
