# MySQL

## Connect and explore

```
mysql -h ${host} -u ${user} -p ${database}
```

```
SHOW DATABASES;
USE ${database};
SHOW TABLES;
DESCRIBE ${table};

-- Running queries, and the variables/status of the server
SHOW FULL PROCESSLIST;
SHOW VARIABLES LIKE 'max_connections';
SHOW ENGINE INNODB STATUS\G
```

n.b. Ending a statement with `\G` prints one column per line, which is easier to read than a wide table.

## Show table constraints

* [StackOverflow](https://stackoverflow.com/a/12095312)

Show indexes and constraints:

```SHOW CREATE TABLE $table_name;```

Show constraints only:

```
USE INFORMATION_SCHEMA;
SELECT TABLE_NAME,
       COLUMN_NAME,
       CONSTRAINT_NAME,
       REFERENCED_TABLE_NAME,
       REFERENCED_COLUMN_NAME
FROM KEY_COLUMN_USAGE
WHERE TABLE_SCHEMA = "$database_name"
      AND TABLE_NAME = "$table_name"
      AND REFERENCED_COLUMN_NAME IS NOT NULL;
```
