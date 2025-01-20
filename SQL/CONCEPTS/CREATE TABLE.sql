https://www.geeksforgeeks.org/sql-create-table/

(
  CustomerId INT PRIMARY KEY,
  CustomerName varchar(50),
  LastName varchar(50),
  Country varchar(50),
  age int CHECK(age >=0 and age <= 99),
  phone int(10)
  );
  
  INSERT INTO Customer(CustomerId,CustomerName,LastName, Country,age,phone) 
  VALUES(1,'janani','ashok','india',34,'xxxxxxxxxx'),
  (2,'ssanthosh','kumar','usa',45,'xxxxxxxxxx'),
  (3,'ruth','urs','china',45,'xxxxxxxxxx');
