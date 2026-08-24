# PostgreSQL

## psql

```bash
psql -h ${host} -U ${user} -d ${database}
```

Meta-command | Description
--- | ---
`\l` | List databases
`\c ${database}` | Connect to another database
`\dt` | List tables
`\d ${table}` | Describe a table, including its indexes and constraints
`\du` | List roles
`\dn` | List schemas
`\x` | Toggle expanded output, which prints one column per line
`\timing` | Toggle query timing
`\e` | Edit the current query in $EDITOR
`\?` | List meta-commands
`\q` | Quit

## Show database and relation sizes

```sql
SELECT datname, pg_size_pretty(pg_database_size(datname)) AS size
FROM pg_database
ORDER BY pg_database_size(datname) DESC;

-- Largest relations in the current database, including indexes
SELECT relname, pg_size_pretty(pg_total_relation_size(relid)) AS size
FROM pg_catalog.pg_statio_user_tables
ORDER BY pg_total_relation_size(relid) DESC
LIMIT 20;
```

## Diff schemas

Use [apgdiff](https://www.apgdiff.com/).

## Query user password hash

- [Docs](https://www.postgresql.org/docs/current/sql-alterrole.html)

```sql
SELECT * FROM pg_catalog.pg_shadow;
```

## Terminate all connections to a database

```sql
# PostgreSQL version >= 9.2
SELECT pg_terminate_backend(pg_stat_activity.pid) FROM pg_stat_activity 
  WHERE datname = 'DATABASE_NAME'
  AND pid <> pg_backend_pid();
  
# PostgreSQL version < 9.2
SELECT pg_terminate_backend(procpid) FROM pg_stat_activity WHERE datname = 'DATABASE_NAME';
```

## Show connections information

```sql
SELECT max_conn,superuser_reserved AS "reserved for superuser",used
FROM 
  (SELECT count(*) used FROM pg_stat_activity) t1,
  (SELECT setting::int superuser_reserved FROM pg_settings WHERE name=$$superuser_reserved_connections$$) t2,
  (SELECT setting::int max_conn FROM pg_settings WHERE name=$$max_connections$$) t3;
```

## Log all queries

- [Runtime logging configuration](https://www.postgresql.org/docs/current/runtime-config-logging.html)

```sql
SET log_min_duration_statement TO 0;
SET log_statement TO 'all';
```

Excerpt from an example docker-compose.yml:

```bash
command:
  - postgres
  - '-clog_connections=yes'
  - '-clog_statement=all'
  - '-clog_min_duration_statement=0'
```
