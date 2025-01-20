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
