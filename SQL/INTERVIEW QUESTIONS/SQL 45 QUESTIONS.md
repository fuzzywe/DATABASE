Here are SQL commands to create and populate the `Student`, `Program`, and `Scholarship` tables based on the data from your uploaded image:

### **1. Student Table**
```sql
CREATE TABLE Student (
    STUDENT_ID INT PRIMARY KEY,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    GPA FLOAT,
    ENROLLMENT_DATE DATETIME,
    MAJOR VARCHAR(50)
);

INSERT INTO Student (STUDENT_ID, FIRST_NAME, LAST_NAME, GPA, ENROLLMENT_DATE, MAJOR) VALUES
(201, 'Suresh', 'Madhavan', 9.4, '2021-09-01 09:00:00', 'Computer Science'),
(202, 'Umesh', 'Sharma', 8.44, '2021-09-01 09:00:00', 'Mathematics'),
(203, 'Rakesh', 'Kumar', 5.6, '2021-09-02 12:00:00', 'Chemistry'),
(204, 'Ruth', 'Sharma', 9.1, '2021-09-01 09:00:00', 'Physics'),
(205, 'Kush', 'Chopra', 7.9, '2021-09-01 09:00:00', 'History'),
(206, 'Pankaj', 'Vohra', 9.8, '2021-09-01 09:00:00', 'English'),
(207, 'Navleen', 'Kaur', 7, '2021-09-06 04:30:00', 'Mathematics');
```

---

### **2. Program Table**
```sql
CREATE TABLE Program (
    STUDENT_REF_ID INT,
    PROGRAM_NAME VARCHAR(50),
    PROGRAM_START_DATE DATETIME,
    PRIMARY KEY (STUDENT_REF_ID, PROGRAM_NAME)
);

INSERT INTO Program (STUDENT_REF_ID, PROGRAM_NAME, PROGRAM_START_DATE) VALUES
(201, 'Computer Science', '2021-09-01 09:00:00'),
(202, 'Mathematics', '2021-09-01 09:00:00'),
(203, 'Mathematics', '2021-09-02 12:00:00'),
(204, 'Physics', '2021-09-01 09:00:00'),
(205, 'Chemistry', '2021-09-01 09:00:00'),
(206, 'History', '2021-09-01 09:00:00'),
(207, 'Biology', '2021-09-01 09:00:00');
```

---

### **3. Scholarship Table**
```sql
CREATE TABLE Scholarship (
    STUDENT_REF_ID INT,
    SCHOLARSHIP_AMOUNT INT,
    SCHOLARSHIP_DATE DATE,
    PRIMARY KEY (STUDENT_REF_ID)
);

INSERT INTO Scholarship (STUDENT_REF_ID, SCHOLARSHIP_AMOUNT, SCHOLARSHIP_DATE) VALUES
(201, 5000, '2021-10-05'),
(202, 4500, '2022-06-06'),
(204, 4000, '2023-03-10');
```

---

### **Explanation**
- Each table creation statement uses **appropriate data types** for each column.
- `PRIMARY KEY` is used to enforce uniqueness where necessary.
- Dates and times are formatted correctly as `DATETIME` or `DATE` based on the context.
- Data is inserted exactly as shown in the provided image.

You can run these SQL commands in your DBMS to create the tables and insert the values.



https://www.geeksforgeeks.org/sql-query-interview-questions/


The SQL command `SELECT MAJOR FROM STUDENT GROUP BY(MAJOR);` is used to **group rows** that have the same value in the `MAJOR` column and return one row for each distinct `MAJOR`. Let me break it down step by step for clarity:

### **Explanation**
1. **`SELECT MAJOR`**:  
   - This part specifies that we want to retrieve the values from the `MAJOR` column of the `STUDENT` table.
  
2. **`GROUP BY(MAJOR)`**:  
   - The `GROUP BY` clause groups rows that have the same value in the specified column, `MAJOR` in this case.
   - It effectively collapses multiple rows with the same `MAJOR` value into a single row for each unique `MAJOR`.
   - Unlike `DISTINCT`, `GROUP BY` is often used when performing **aggregate functions** (e.g., COUNT, SUM, AVG). However, even without an aggregate function, `GROUP BY` can be used just to list unique values.

### **Example of Data**
| STUDENT_ID | FIRST_NAME | LAST_NAME | GPA | ENROLLMENT_DATE       | MAJOR            |
|------------|------------|-----------|-----|----------------------|-----------------|
| 201        | Suresh     | Madhavan  | 9.4 | 2021-09-01 09:00:00  | Computer Science |
| 202        | Umesh      | Sharma    | 8.44| 2021-09-01 09:00:00  | Mathematics      |
| 203        | Rakesh     | Kumar     | 5.6 | 2021-09-02 12:00:00  | Chemistry        |
| 204        | Ruth       | Sharma    | 9.1 | 2021-09-01 09:00:00  | Physics          |
| 205        | Kush       | Chopra    | 7.9 | 2021-09-01 09:00:00  | History          |
| 206        | Pankaj     | Vohra     | 9.8 | 2021-09-01 09:00:00  | English          |
| 207        | Navleen    | Kaur      | 7   | 2021-09-06 04:30:00  | Mathematics      |

### **Result of `SELECT MAJOR FROM STUDENT GROUP BY(MAJOR);`**
| MAJOR            |
|-----------------|
| Computer Science |
| Mathematics      |
| Chemistry        |
| Physics          |
| History          |
| English          |

### **When to Use GROUP BY?**
- To summarize data by categories (e.g., count how many students are in each major):
  ```sql
  SELECT MAJOR, COUNT(*) AS StudentCount 
  FROM STUDENT 
  GROUP BY MAJOR;
  ```
  This query will show how many students are in each major.

### **Key Differences from `DISTINCT`**
- **`GROUP BY`** can be used with aggregate functions (like `SUM`, `COUNT`, etc.), while **`DISTINCT`** simply removes duplicate values without aggregation.
- Example:
  ```sql
  SELECT DISTINCT MAJOR FROM STUDENT;
  ```
  This query produces the same result as `GROUP BY` without any aggregation, just showing unique majors.

---

### **Summary of the Purpose of Your Query**
- `SELECT MAJOR FROM STUDENT GROUP BY(MAJOR);` lists all unique majors in the `STUDENT` table.  
- It groups records by the `MAJOR` field, even though no aggregation is performed in this case.


to display the first 3 rows

```sql
SELECT * FROM Student LIMIT 3;


```


The error in the query `select concat(firstName,'',lastName) as COMPLETE_NAME from students;` is caused by the use of an empty string (`''`) between the `firstName` and `lastName`. Most databases require a **space** between the names for proper concatenation. Here's how to fix it:

### **Corrected Query**
```sql
SELECT CONCAT(firstName, ' ', lastName) AS COMPLETE_NAME FROM students;
```

### **Explanation**
- **`CONCAT(firstName, ' ', lastName)`**: The space between single quotes (`' '`) adds a space between the first and last name.
- **`AS COMPLETE_NAME`**: Renames the result column as `COMPLETE_NAME`.

### **Example Data**
| firstName | lastName |
|-----------|----------|
| Janani    | Ashok    |
| Suresh    | Kumar    |

### **Result**
| COMPLETE_NAME  |
|----------------|
| Janani Ashok   |
| Suresh Kumar   |

If your database does not support `CONCAT`, you might need to use `+` for SQL Server or `||` for PostgreSQL/Oracle:
- SQL Server:
  ```sql



  To find the 5th highest GPA from a table in SQL, you can use different methods depending on the database system. Here are common ways:

### **Example Table: students**
| Student_ID | firstName | lastName | GPA |
|------------|-----------|----------|-----|
| 1          | Janani    | Ashok    | 9.5 |
| 2          | Suresh    | Kumar    | 8.7 |
| 3          | Ruth      | Urs      | 9.0 |
| 4          | Naveen    | Kaur     | 7.5 |
| 5          | Pooja     | Mehta    | 8.9 |
| 6          | Sanjay    | Iyer     | 8.1 |

---

### **1. Using `LIMIT` and `ORDER BY` (MySQL, PostgreSQL, SQLite)**
```sql
SELECT GPA 
FROM students
ORDER BY GPA DESC
LIMIT 1 OFFSET 4;
```
- `ORDER BY GPA DESC` sorts the records in descending order (highest GPA first).
- `LIMIT 1 OFFSET 4` skips the first 4 records and returns the 5th.

---

### **2. Using `ROW_NUMBER()` (SQL Server, PostgreSQL, Oracle)**
```sql
SELECT GPA 
FROM (
    SELECT GPA, ROW_NUMBER() OVER (ORDER BY GPA DESC) AS rank
    FROM students
) ranked
WHERE rank = 5;
```
- `ROW_NUMBER()` assigns a unique rank to each row.
- The outer query filters the 5th highest GPA.

---

### **3. Using `DISTINCT` with Subquery (Works in all databases)**
```sql
SELECT MAX(GPA)
FROM students
WHERE GPA < (
    SELECT MAX(GPA)
    FROM students
    WHERE GPA < (
        SELECT MAX(GPA)
        FROM students
        WHERE GPA < (
            SELECT MAX(GPA)
            FROM students
        )
    )
);
```
- This nested subquery finds the maximum GPA less than the previous highest GPA repeatedly until the 5th highest is reached.

### **Explanation**
- Use `LIMIT`/`OFFSET` or `ROW_NUMBER()` for efficiency.
- The subquery method works even if `GPA` values are not unique but is less efficient for large datasets.
  SELECT firstName + ' ' + lastName AS COMPLETE_NAME FROM students;

  
  To fetch the list of students with the same GPA (i.e., students who share a GPA with at least one other student), you can use the following SQL query:

### **Query for Finding Students with Same GPA**
```sql
SELECT firstName, lastName, GPA
FROM students
WHERE GPA IN (
    SELECT GPA
    FROM students
    GROUP BY GPA
    HAVING COUNT(GPA) > 1
);
```

### **Explanation**
- **GROUP BY GPA** groups the records by GPA values.
- **HAVING COUNT(GPA) > 1** filters the GPAs that appear more than once (i.e., shared by multiple students).
- **WHERE GPA IN (...)** retrieves all students whose GPA matches the repeated GPAs.

### **Example**
| Student_ID | firstName | lastName | GPA |
|------------|-----------|----------|-----|
| 1          | Janani    | Ashok    | 9.5 |
| 2          | Suresh    | Kumar    | 8.7 |
| 3          | Naveen    | Kaur     | 9.5 |
| 4          | Pooja     | Mehta    | 8.7 |

The query will return:
| firstName | lastName | GPA |
|-----------|----------|-----|
| Janani    | Ashok    | 9.5 |
| Suresh    | Kumar    | 8.7 |
| Naveen    | Kaur     | 9.5 |
| Pooja     | Mehta    | 8.7 |

This allows you to find students who have identical GPAs.
