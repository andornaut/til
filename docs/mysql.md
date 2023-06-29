# MySQL

## Show table constraints

* [StackOverflow](https://stackoverflow.com/a/12095312)

Show indexes and constraints:

```SHOW CREATE TABLE $table_name;```

Show contraints only:

```
USE INFORMATION_SCHEMA;
SELECT TABLE_NAME,
       COLUMN_NAME,
       CONSTRAINT_NAME,
       REFERENCED_TABLE_NAME,
       REFERENCED_COLUMN_NAME
FROM KEY_COLUMN_USAGE
WHERE TABLE_SCHEMA = "$database_name"
      AND TABLE_NAME = "$table_name";
      AND REFERENCED_COLUMN_NAME IS NOT NULL;
```
