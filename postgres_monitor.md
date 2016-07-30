[root@ISBPRDI01 postgres_monitor]# find . -name 'pg_stat_activity_*.csv' -a -mtime 1
./pg_stat_activity_20160728.csv
[root@ISBPRDI01 postgres_monitor]# find . -name 'pg_stat_activity_*.csv' -a -mtime 0
./pg_stat_activity_20160729.csv
./pg_stat_activity_20160730.csv
[root@ISBPRDI01 postgres_monitor]#


zip > /home/caiomoreno/warehouse_20160730.zip

find . -name 'pg_stat_activity_*.csv' -a -mtime 0 | zip > lock.zip

find . -name 'pg_stat_activity_*.csv' -a -mtime 0 | tar -zcf backup_teste.tar.gz /home/pentaho/postgres_monitor

[root@ISBPRDI01 postgres_monitor]# find . -name 'pg_stat_activity_*.csv' -a -mtime 0
./pg_stat_activity_20160729.csv
./pg_stat_activity_20160730.csv
[root@ISBPRDI01 postgres_monitor]# find . -name 'pg_stat_activity_*.csv' -a -mtime 0 | tar -zcf backup_teste.tar.gz /home/pentaho/postgres_monitor
