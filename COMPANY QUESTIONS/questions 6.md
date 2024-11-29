
The `super` and `this` keywords in Java are both used in the context of inheritance and object-oriented programming, but they serve distinct purposes and are used in different scenarios.

---

### **Key Differences Between `super` and `this`**
| Feature                          | `this`                                          | `super`                                        |
|----------------------------------|------------------------------------------------|-----------------------------------------------|
| **Primary Purpose**              | Refers to the current instance of the class.   | Refers to the immediate superclass of the current class. |
| **Constructor Invocation**       | Calls another constructor in the same class.   | Calls the constructor of the immediate superclass.       |
| **Access Members**               | Accesses members (fields/methods) of the current class. | Accesses members (fields/methods) of the superclass.     |
| **Hides Member Name**            | Resolves ambiguity for fields/methods in the current class. | Resolves ambiguity for overridden fields/methods in the superclass. |
| **Use in Static Context**        | Cannot be used in a static context.            | Cannot be used in a static context.           |
| **Inheritance Role**             | Does not play a direct role in inheritance.    | Primarily used in inheritance for accessing superclass members. |

---

### **Usage of `this`**
1. **Referring to the Current Instance:**
   The `this` keyword is used to refer to the current object instance within a class.
   ```java
   class Example {
       int value;

       Example(int value) {
           this.value = value; // Refers to the instance variable
       }
   }
   ```

2. **Calling a Constructor in the Same Class:**
   The `this()` syntax invokes another constructor in the same class.
   ```java
   class Example {
       int x, y;

       Example() {
           this(10, 20); // Calls the parameterized constructor
       }

       Example(int x, int y) {
           this.x = x;
           this.y = y;
       }
   }
   ```

3. **Passing Current Instance as an Argument:**
   The `this` keyword can pass the current object as an argument to a method or constructor.
   ```java
   class Example {
       void display(Example obj) {
           System.out.println("Current instance passed: " + obj);
       }

       void show() {
           display(this); // Passes the current instance
       }
   }
   ```

---

### **Usage of `super`**
1. **Referring to Superclass Members:**
   The `super` keyword is used to access methods or fields of the immediate superclass.
   ```java
   class Parent {
       void display() {
           System.out.println("Parent display()");
       }
   }

   class Child extends Parent {
       void display() {
           super.display(); // Calls the display() method of Parent
           System.out.println("Child display()");
       }
   }
   ```

2. **Calling Superclass Constructor:**
   The `super()` syntax invokes the constructor of the immediate superclass. It must be the **first statement** in the subclass constructor.
   ```java
   class Parent {
       Parent() {
           System.out.println("Parent constructor");
       }
   }

   class Child extends Parent {
       Child() {
           super(); // Calls the Parent constructor
           System.out.println("Child constructor");
       }
   }
   ```

3. **Resolving Ambiguity with Overridden Members:**
   When a method or variable is overridden in the subclass, `super` is used to refer to the superclass version.
   ```java
   class Parent {
       int value = 10;
   }

   class Child extends Parent {
       int value = 20;

       void show() {
           System.out.println(super.value); // Refers to the value in Parent
           System.out.println(this.value); // Refers to the value in Child
       }
   }
   ```

---

### **Key Examples**
#### **Scenario: Accessing Fields with Name Collision**
```java
class Parent {
    String name = "Parent";
}

class Child extends Parent {
    String name = "Child";

    void display() {
        System.out.println("Name in superclass: " + super.name); // Accesses Parent's name
        System.out.println("Name in current class: " + this.name); // Accesses Child's name
    }
}
```

#### **Scenario: Constructor Chaining with `this` and `super`**
```java
class Parent {
    Parent(String message) {
        System.out.println("Parent constructor: " + message);
    }
}

class Child extends Parent {
    Child() {
        this("Default Message"); // Calls the parameterized constructor in Child
    }

    Child(String message) {
        super(message); // Calls the Parent constructor
        System.out.println("Child constructor: " + message);
    }
}
```

---

### **Key Notes**
1. **Cannot Be Used Together in Constructor:**
   Both `this()` and `super()` must be the first statement in a constructor, so you cannot use them together in the same constructor.
   ```java
   // This will cause a compilation error:
   class Example extends Parent {
       Example() {
           super();  // Calls superclass constructor
           this();   // Compilation error
       }
   }
   ```

2. **Scope of Access:**
   - `this` is limited to the current class's context.
   - `super` bridges the subclass to its superclass.

By understanding these distinctions, you can effectively use `this` and `super` to manage inheritance and constructor chaining.


Here's the SQL query to find the count of employees having `grade = 3` and display their second-highest salary:

```sql
SELECT 
    COUNT(*) AS Employee_Count, 
    MAX(salary) AS Second_Highest_Salary
FROM (
    SELECT 
        salary
    FROM Employee
    WHERE grade = '3'
    GROUP BY salary
    ORDER BY salary DESC
    LIMIT 1 OFFSET 1
) AS SecondHighest;
```

---

### **Explanation**
1. **Filter Employees with Grade '3':**
   - Use the `WHERE grade = '3'` clause to filter only those employees.

2. **Find Unique Salaries:**
   - Use `GROUP BY salary` to ensure unique salary values (if duplicates exist).

3. **Order Salaries in Descending Order:**
   - `ORDER BY salary DESC` ensures the highest salary comes first.

4. **Select the Second-Highest Salary:**
   - Use `LIMIT 1 OFFSET 1`:
     - `LIMIT 1` fetches one row.
     - `OFFSET 1` skips the first row (highest salary) to get the second-highest salary.

5. **Count the Number of Employees:**
   - Use `COUNT(*)` to count the number of employees who have `grade = 3`.

6. **Combine Results:**
   - Wrap the second-highest salary query in a subquery and use `COUNT(*)` alongside `MAX(salary)` to get the desired results.

---

### **Sample Data Illustration**

| Emp_id | Grade | Salary |
|--------|-------|--------|
| 1      | 3     | 5000   |
| 2      | 3     | 7000   |
| 3      | 3     | 7000   |
| 4      | 3     | 8000   |
| 5      | 2     | 6000   |

- **Count of Employees with Grade '3':** `4` (employees 1, 2, 3, and 4).
- **Second-Highest Salary for Grade '3':** `7000`.

---

### **Expected Output**

| Employee_Count | Second_Highest_Salary |
|----------------|-----------------------|
| 4              | 7000                 |


In SQL, the `LIMIT` clause is used to restrict the number of rows returned by a query, and the `OFFSET` clause specifies how many rows to skip before starting to return rows.

### **Syntax**
```sql
LIMIT number_of_rows OFFSET number_of_rows_to_skip
```

- **`LIMIT`**: Specifies the maximum number of rows to retrieve.
- **`OFFSET`**: Specifies how many rows to skip before starting to return rows.

---

### **How It Works**
1. **LIMIT without OFFSET:**
   - If you use `LIMIT` alone, it simply limits the result to the specified number of rows from the beginning.
   ```sql
   SELECT * FROM Employee LIMIT 3;
   ```
   - This will return the first **3 rows** of the result set.

2. **LIMIT with OFFSET:**
   - When combined with `OFFSET`, the query skips a specific number of rows before applying the `LIMIT`.
   ```sql
   SELECT * FROM Employee LIMIT 2 OFFSET 1;
   ```
   - This will skip the first **1 row** and then return the next **2 rows**.

---

### **Practical Use Case**
If you're working with a sorted list and need to fetch a specific row or range of rows, the combination of `LIMIT` and `OFFSET` is useful.

#### **Example: Fetch the Second-Highest Salary**
Suppose you have a sorted list of salaries:
| Salary |
|--------|
| 8000   |
| 7000   |
| 5000   |

- Query:
  ```sql
  SELECT salary FROM Employee ORDER BY salary DESC LIMIT 1 OFFSET 1;
  ```
  - `ORDER BY salary DESC`: Sort salaries in descending order.
  - `OFFSET 1`: Skip the first row (highest salary).
  - `LIMIT 1`: Return only one row (the next highest salary).

#### **Result:**
| Salary |
|--------|
| 7000   |

---

### **Visualizing LIMIT and OFFSET**

| Row # | Salary | Action Taken with `LIMIT 1 OFFSET 1` |
|-------|--------|-------------------------------------|
| 1     | 8000   | Skipped (due to `OFFSET 1`)         |
| 2     | 7000   | Included in result                 |
| 3     | 5000   | Not included (due to `LIMIT 1`)     |

---

### **Key Points to Remember**
1. **`LIMIT` without `OFFSET`:**
   - Fetches the first `n` rows from the result.
2. **`LIMIT` with `OFFSET`:**
   - Skips `m` rows and then fetches the next `n` rows.
3. **Use Case in Pagination:**
   - Frequently used for paginating results in web applications:
     ```sql
     SELECT * FROM Employee ORDER BY Emp_id LIMIT 10 OFFSET 20;
     ```
     - Fetches rows 21 to 30.

--- 

By using `LIMIT` and `OFFSET`, you can precisely control which rows are returned, making it especially useful for tasks like pagination and finding specific rows in a dataset.
