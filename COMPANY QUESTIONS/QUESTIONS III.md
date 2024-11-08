1. **What is Normalization?**
   - **Normalization** is a process in database design that organizes data to reduce redundancy and dependency. It involves dividing a database into tables and defining relationships between them, ensuring data is logically stored and efficient to retrieve.
   - **Levels of Normalization:** There are multiple "normal forms" (e.g., 1NF, 2NF, 3NF, and BCNF), each representing a level of refinement for reducing redundancy.

2. **Purpose of Normalization**
   - **Minimize Data Redundancy**: It helps in storing each piece of data in only one place, reducing data duplication.
   - **Improve Data Integrity**: By eliminating redundancy, normalization ensures data consistency and accuracy.
   - **Efficient Data Management**: It reduces the complexity of data updates and deletions, as there are fewer redundant copies of data.
   - **Optimizes Storage**: By organizing data effectively, it can minimize storage requirements and improve database performance.

3. **Difference between GROUP BY and HAVING clause**
   - **GROUP BY**: This clause groups rows with the same values in specified columns into summary rows. It’s often used with aggregate functions (e.g., SUM, COUNT) to summarize data by specific columns.
   - **HAVING**: This clause is used to filter the results of aggregated data (i.e., groups created by the `GROUP BY` clause). Unlike `WHERE`, which filters individual rows, `HAVING` filters groups after aggregation.

   | Feature        | GROUP BY              | HAVING                          |
   |----------------|-----------------------|---------------------------------|
   | Purpose       | Groups rows           | Filters aggregated groups       |
   | Usage         | Before aggregation     | After aggregation               |
   | Condition Type| Column data           | Aggregated data (SUM, COUNT)    |

4. **Difference between DELETE, DROP, and TRUNCATE**
   - **DELETE**: Removes specific rows from a table based on a condition.
     - Can be rolled back (transactional).
     - Slower since it logs each row deletion.
   - **DROP**: Deletes the entire table or database.
     - Cannot be rolled back.
     - Completely removes table structure and data.
   - **TRUNCATE**: Removes all rows from a table but retains the table structure.
     - Cannot be rolled back.
     - Faster than `DELETE` as it doesn’t log individual row deletions.

   | Command  | Action                               | Rollbackable | Speed   | Structure Retained |
   |----------|--------------------------------------|--------------|---------|---------------------|
   | DELETE   | Deletes specific rows                | Yes          | Slower  | Yes                 |
   | DROP     | Deletes entire table or database     | No           | Fast    | No                  |
   | TRUNCATE | Deletes all rows in a table          | No           | Fastest | Yes                 |


   Indexing in a DBMS is essential for enhancing data retrieval performance. Here’s why indexing is needed:

1. **Faster Query Processing**: 
   - Indexing creates a data structure that allows the DBMS to quickly locate and access rows in a table without scanning each row. This speeds up SELECT queries, especially for large databases.

2. **Reduces Disk I/O Operations**: 
   - With indexes, the DBMS can jump to the exact location of the data, minimizing the number of disk accesses. This is particularly beneficial for large tables, as it saves time by avoiding full table scans.

3. **Efficient Sorting and Ordering**:
   - Indexes allow data to be stored in an ordered format. When queries use `ORDER BY` or need sorted data, indexed columns make these operations faster and more efficient.

4. **Improves JOIN Performance**:
   - Indexes on columns used in JOIN conditions (often foreign keys) speed up join operations by reducing the amount of data that needs to be processed.

5. **Enforces Uniqueness**:
   - Unique indexes can enforce uniqueness constraints on columns, ensuring no duplicate values are stored, which helps maintain data integrity.

6. **Supports Fast Searching**:
   - Indexes help optimize queries that involve searching within specific columns, such as text searches or range queries, making these operations much faster.

### Drawbacks of Indexing (to consider as well):
   - **Storage Overhead**: Indexes consume additional disk space.
   - **Update Overhead**: Insert, update, and delete operations become slightly slower, as indexes need to be updated as well.

In summary, indexing is essential for improving database performance and ensuring efficient data retrieval, especially for read-intensive applications.

1. **What is the Primary Key?**
   - A **primary key** is a unique identifier for each record in a database table. It ensures that each row in the table is distinct and does not contain duplicate or NULL values.
   - **Characteristics**:
     - Uniqueness: No two rows can have the same primary key value.
     - Non-NULL: A primary key must always have a value; it cannot be NULL.
     - Immutable: The value of a primary key should not change over time.
   - **Example**: In a `Customers` table, `CustomerID` could serve as a primary key to uniquely identify each customer.

2. **Types of Joins**
   - Joins in SQL are used to combine records from two or more tables based on a related column.
   - **Types of Joins**:
     - **INNER JOIN**: Returns rows when there is a match in both tables. Rows without matching values are excluded.
     - **LEFT JOIN (LEFT OUTER JOIN)**: Returns all rows from the left table, and the matching rows from the right table. If no match exists, NULL values are returned from the right table.
     - **RIGHT JOIN (RIGHT OUTER JOIN)**: Returns all rows from the right table and the matching rows from the left table. If no match exists, NULL values are returned from the left table.
     - **FULL JOIN (FULL OUTER JOIN)**: Returns all rows when there is a match in either left or right table. If there is no match, NULL values are returned for the missing side.
     - **CROSS JOIN**: Returns the Cartesian product of both tables, combining each row from the first table with every row from the second table.
     - **SELF JOIN**: Joins a table with itself, often used to compare rows within the same table.

   | Type of Join  | Description                                      |
   |---------------|--------------------------------------------------|
   | INNER JOIN    | Only matching rows from both tables              |
   | LEFT JOIN     | All rows from left table + matching rows from right (NULL if no match) |
   | RIGHT JOIN    | All rows from right table + matching rows from left (NULL if no match) |
   | FULL JOIN     | All rows from both tables (NULL if no match)     |
   | CROSS JOIN    | Cartesian product of both tables                 |
   | SELF JOIN     | Join a table with itself                         |

3. **Explain the HAVING Clause**
   - The `HAVING` clause is used in SQL to filter groups of data after an aggregation has been performed, often used with `GROUP BY`.
   - **Purpose**: While `WHERE` is used to filter individual rows, `HAVING` filters aggregated data (e.g., groups created by `GROUP BY`).
   - **Example**: If you want to find departments where the total salary of employees exceeds $100,000, you would use the `HAVING` clause:
     ```sql
     SELECT department, SUM(salary) AS total_salary
     FROM employees
     GROUP BY department
     HAVING SUM(salary) > 100000;
     ```
