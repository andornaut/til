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

## Show connections information

```
SELECT max_conn,superuser_reserved AS "reserved for superuser",used
FROM 
  (SELECT count(*) used FROM pg_stat_activity) t1,
  (SELECT setting::int superuser_reserved FROM pg_settings WHERE name=$$superuser_reserved_connections$$) t2,
  (SELECT setting::int max_conn FROM pg_settings WHERE name=$$max_connections$$) t3;
``` 

## Log all queries

* [Runtime logging configuration](https://www.postgresql.org/docs/9.5/static/runtime-config-logging.html)

```
SET log_min_duration_statement TO 0;
SET log_statement TO 'all';
```

Excerpt from a example docker-compose.yml:

```
command:
  - postgres
  - '-clog_connections=yes'
  - '-clog_statement=all'
  - '-clog_min_duration_statement=0'
```