To display the structure of a table (columns, data types, constraints, etc.) or to view the data within a table, here are the commands you can use:

### 1. **Display the Structure of the Table**
- In **MySQL** or **MariaDB**:
  ```sql
  DESCRIBE Customer;
  ```
  or
  ```sql
  SHOW COLUMNS FROM Customer;
  ```

- In **PostgreSQL** or **SQLite**:
  ```sql
  \d Customer
  ```

- In **Oracle**:
  ```sql
  DESCRIBE Customer;
  ```

### 2. **Display All Data in the Table**
To view all the rows and data stored in the `Customer` table:
```sql
SELECT * FROM Customer;
```

This will show all columns and rows of the `Customer` table.

To drop a table in a database, use the following command:

```sql
DROP TABLE table_name;
```

For your specific example, if you want to drop the `Customer` table, use:

```sql
DROP TABLE Customer;
```

### Important Notes:
- **Permanent Deletion**: This command will permanently delete the entire table along with all its data.
- **Caution**: Ensure you have a backup or are certain you want to delete the table before running this command. There is no undo for `DROP TABLE`.

