This document is a comprehensive guide to SQL (Structured Query Language), covering a wide range of topics from basic commands to advanced concepts like joins, constraints, and views. Below is a summary of the key sections and topics covered in the document:

---

### **1. SQL Commands Overview**
- **Types of SQL Commands**:
  - **DDL (Data Definition Language)**: Commands like `CREATE`, `DROP`, `ALTER`, `TRUNCATE`, etc., used to define and modify database structures.
  - **DML (Data Manipulation Language)**: Commands like `INSERT`, `UPDATE`, `DELETE`, used to manipulate data.
  - **DCL (Data Control Language)**: Commands like `GRANT`, `REVOKE`, used to control access to data.
  - **TCL (Transaction Control Language)**: Commands like `COMMIT`, `ROLLBACK`, `SAVEPOINT`, used to manage transactions.
  - **DQL (Data Query Language)**: The `SELECT` command used to query data.

---

### **2. Data Definition Language (DDL)**
- **CREATE**: Used to create tables.
  ```sql
  CREATE TABLE table_name (column1 datatype, column2 datatype, ...);
  ```
- **DROP**: Deletes a table and its structure.
  ```sql
  DROP TABLE table_name;
  ```
- **ALTER**: Modifies the structure of an existing table (e.g., adding or modifying columns).
  ```sql
  ALTER TABLE table_name ADD column_name datatype;
  ```
- **TRUNCATE**: Deletes all rows from a table but retains the table structure.
  ```sql
  TRUNCATE TABLE table_name;
  ```

---

### **3. Data Manipulation Language (DML)**
- **INSERT**: Adds new rows to a table.
  ```sql
  INSERT INTO table_name (column1, column2, ...) VALUES (value1, value2, ...);
  ```
- **UPDATE**: Modifies existing data in a table.
  ```sql
  UPDATE table_name SET column1 = value1 WHERE condition;
  ```
- **DELETE**: Removes rows from a table.
  ```sql
  DELETE FROM table_name WHERE condition;
  ```

---

### **4. Data Control Language (DCL)**
- **GRANT**: Gives user access privileges.
  ```sql
  GRANT SELECT, UPDATE ON table_name TO user_name;
  ```
- **REVOKE**: Removes user access privileges.
  ```sql
  REVOKE SELECT, UPDATE ON table_name FROM user_name;
  ```

---

### **5. Transaction Control Language (TCL)**
- **COMMIT**: Saves changes made during a transaction.
  ```sql
  COMMIT;
  ```
- **ROLLBACK**: Undoes changes made during a transaction.
  ```sql
  ROLLBACK;
  ```
- **SAVEPOINT**: Sets a point within a transaction to which you can roll back.
  ```sql
  SAVEPOINT savepoint_name;
  ```

---

### **6. Data Query Language (DQL)**
- **SELECT**: Retrieves data from a database.
  ```sql
  SELECT column1, column2 FROM table_name WHERE condition;
  ```

---

### **7. SQL Constraints**
- **NOT NULL**: Ensures a column cannot have NULL values.
- **DEFAULT**: Provides a default value for a column.
- **UNIQUE**: Ensures all values in a column are unique.
- **PRIMARY KEY**: Uniquely identifies each row in a table.
- **FOREIGN KEY**: Links two tables together.
- **CHECK**: Ensures values in a column satisfy a specific condition.

---

### **8. SQL Joins**
- **INNER JOIN**: Returns rows with matching values in both tables.
- **LEFT JOIN**: Returns all rows from the left table and matched rows from the right table.
- **RIGHT JOIN**: Returns all rows from the right table and matched rows from the left table.
- **FULL JOIN**: Returns all rows when there is a match in either table.
- **SELF JOIN**: Joins a table to itself.
- **CARTESIAN JOIN**: Returns the Cartesian product of two tables.

---

### **9. SQL Functions**
- **Aggregate Functions**:
  - `COUNT()`: Counts the number of rows.
  - `AVG()`: Calculates the average value.
  - `SUM()`: Calculates the total sum.
  - `MIN()`: Finds the minimum value.
  - `MAX()`: Finds the maximum value.
- **Scalar Functions**:
  - `FIRST()`: Returns the first value in a column.
  - `LAST()`: Returns the last value in a column.

---

### **10. SQL Views**
- **CREATE VIEW**: Creates a virtual table based on a SQL query.
  ```sql
  CREATE VIEW view_name AS SELECT column1, column2 FROM table_name WHERE condition;
  ```
- **DROP VIEW**: Deletes a view.
  ```sql
  DROP VIEW view_name;
  ```

---

### **11. Advanced SQL Queries**
- **2nd Highest Salary**:
  ```sql
  SELECT MAX(SALARY) FROM table_name WHERE SALARY NOT IN (SELECT MAX(SALARY) FROM table_name);
  ```
- **Nth Highest Salary**:
  ```sql
  SELECT MIN(SALARY) FROM table_name WHERE SALARY IN (SELECT TOP N SALARY FROM table_name ORDER BY SALARY DESC);
  ```

---

### **12. SQL Operators**
- **IN**: Allows specifying multiple values in a `WHERE` clause.
  ```sql
  SELECT * FROM table_name WHERE column_name IN (value1, value2, ...);
  ```
- **BETWEEN**: Selects values within a range.
  ```sql
  SELECT * FROM table_name WHERE column_name BETWEEN value1 AND value2;
  ```

---

### **13. UNION and UNION ALL**
- **UNION**: Combines the results of two `SELECT` statements (removes duplicates).
- **UNION ALL**: Combines the results of two `SELECT` statements (includes duplicates).

---

### **14. GROUP BY and HAVING**
- **GROUP BY**: Groups rows that have the same values.
- **HAVING**: Filters groups based on a condition (used with aggregate functions).

---

### **15. NULL Values**
- **IS NULL**: Checks for NULL values.
- **IS NOT NULL**: Checks for non-NULL values.

---

### **16. ALTER TABLE**
- **ADD COLUMN**: Adds a new column to a table.
- **DROP COLUMN**: Removes a column from a table.
- **MODIFY COLUMN**: Changes the data type of a column.

---

### **17. TRUNCATE TABLE**
- Deletes all rows from a table but retains the table structure.
  ```sql
  TRUNCATE TABLE table_name;
  ```

---

### **18. SQL Views**
- **CREATE VIEW**: Creates a virtual table based on a SQL query.
- **DROP VIEW**: Deletes a view.

---

This document serves as a detailed reference for SQL commands, concepts, and best practices, making it a valuable resource for both beginners and experienced SQL users.
