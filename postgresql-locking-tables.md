# PostgreSQL - Locking and Tables

# Query to count locks in PostgreSQL
```
select pid,count(1) from pg_locks group by pid
```

# Learn more about the query with more looks:
```
select query from pg_stat_activity where pid = 15133;
```
