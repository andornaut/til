# PostgreSQL

## Diff schemas

Use [apgdiff](http://apgdiff.com).

## Query user password hash

- [Docs](www.postgresql.org/docs/9.3/static/sql-alterrole.html)

```
SELECT * FROM pg_catalog.pg_shadow;
```

## Terminate all connections to a database

```
# PostgreSQL version >= 9.2
SELECT pg_terminate_backend(pg_stat_activity.pid) FROM pg_stat_activity 
  WHERE datname = 'DATABASE_NAME'
  AND pid <> pg_backend_pid();
  
# PostgreSQL version < 9.2
SELECT pg_terminate_backend(procpid) FROM pg_stat_activity WHERE datname = 'DATABASE_NAME';
```
