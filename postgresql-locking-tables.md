# PostgreSQL - Locking and Tables

# Query to count locks in PostgreSQL
select pid,count(1) from pg_locks group by pid
