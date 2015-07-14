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


http://justatheory.com/computers/databases/postgresql/enable-csvlogging.html
http://www.postgresql.org/docs/9.1/static/runtime-config-logging.html

Links:

http://jasonwilder.com/blog/2013/11/19/fluentd-vs-logstash/


Como encontrar uma agulha num palheiro de logs 
http://schedule.fisl16.softwarelivre.org/#/talk/132
http://hemingway.softwarelivre.org/fisl16/high/41e/sala_41e-high-201507101700.ogv
