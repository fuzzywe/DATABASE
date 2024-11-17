Here are the answers to the review questions based on the image:

1. **A row in a table can be uniquely identified by**  
   **Answer:** A primary key.

2. **The _______ includes the set of tables but not the data.**  
   **Answer:** Schema.

3. **What is the difference between the literal 'bob' stored as a CHAR(5) versus VARCHAR(5)?**  
   **Answer:** A CHAR(5) will always use 5 bytes, padding 'bob' with two spaces. A VARCHAR(5) uses only as much space as needed (3 bytes for 'bob').

4. **Can an attribute of type INTEGER have the value NULL?**  
   **Answer:** Yes, unless it is specified as `NOT NULL`.

5. **In the Restaurant Database, an item may have between _______ and _______ ingredients.**  
   **Answer:** 0 and many (or "zero and multiple").

6. **If we added a new row to vendors in the Restaurant Database with vendorid=NULL, give the list of all possible values for referdrvby.**  
   **Answer:** None. Referdrvby cannot reference a NULL vendorid because NULL is not a valid primary key value.

7. **In the Restaurant Database, would the DBMS allow a row in the vendors table with a vendorid of NULL? Explain.**  
   **Answer:** No. The primary key constraint does not allow NULL values because the primary key must uniquely identify a row.

8. **Give a type and an example literal for the following data:**  
   **Weight:** NUMERIC(5, 2), Literal: 129.3  
   **Street:** VARCHAR(50), Literal: 'Main St'  
   **Birthday:** DATE, Literal: '2000-01-01'  
   **Contract Length:** INTEGER, Literal: 12  
   **Salary:** NUMERIC(10, 2), Literal: 45000.00  
   **Gender:** CHAR(1), Literal: 'M'

9. **What is the difference between a database and a DBMS?**  
   **Answer:** A database is a collection of data, while a DBMS (Database Management System) is the software used to manage and interact with the database.

10. **In the Restaurant Database, give the name of all the ingredients in the Veggie Eatin' meal.**  
   **Answer:** The specific names depend on the database content, but the query would involve looking up ingredients associated with "Veggie Eatin'" in the relevant table.

11. **If a vendor could be recommended by multiple vendors, how would our restaurant schema change?**  
   **Answer:** A new junction table (e.g., `vendor_recommendations`) would be created with columns for `vendorid` and `recommended_by_vendorid`, supporting a many-to-many relationship.

12. **For vendors with multiple phone numbers, how would you add the number and phone type? Assume each phone number is assigned to only one vendor.**  
   **Answer:** Create a new table `vendor_phone_numbers` with columns:  
   - `vendorid` (foreign key to `vendors`)  
   - `phone_number`  
   - `phone_type` (e.g., home, cell, fax).

13. **For your restaurant, you need to create a table for customers. Give the column names and data types. What is the primary key?**  
   **Answer:**  
   - `customer_id` (Primary Key, INTEGER)  
   - `name` (VARCHAR(100))  
   - `number_of_visits` (INTEGER)  
   - `percent_discount` (NUMERIC(5, 2))  
   Primary Key: `customer_id`.

Let me know if you need further clarification!
