https://www.youtube.com/watch?v=qlkS-e5ym1w&ab_channel=SumitMittal

![SQL - Complete Course in 9 Hours _ SQL One Shot _ SQL Full Course by Sumit Sir 3-51 screenshot](https://github.com/user-attachments/assets/44316bea-bc9d-44ac-89cd-1092c890d7ea)

![SQL - Complete Course in 9 Hours _ SQL One Shot _ SQL Full Course by Sumit Sir 7-39 screenshot](https://github.com/user-attachments/assets/9d10be8d-1802-4501-8eee-9a39e5440674)

sql = structure query language and it is used to query relational db

**why structed query language means the data is in the form of rows and columns**

**how to see whether the data base has been created or not**

show databases;

**to create a database**

CREATE DATABASE trendytech;


**which table iam to check this use**

SELECT database();


**to create table**

CREATE TABLE employee 
(
name varchar(50),
age INT,
salary INT,
);

**to see list of tables**

show tables;

![SQL - Complete Course in 9 Hours _ SQL One Shot _ SQL Full Course by Sumit Sir 26-54 screenshot](https://github.com/user-attachments/assets/b78f503c-54cc-443c-a962-59589db1aafa)


**to see the structure of the table**

describe employee;

![SQL - Complete Course in 9 Hours _ SQL One Shot _ SQL Full Course by Sumit Sir 27-24 screenshot](https://github.com/user-attachments/assets/1b9d062d-e5e6-4f2c-afe4-31c154c2f86f)

**drop table**

drop table employee;

drop database();

---

to insert the table in particular database

![SQL - Complete Course in 9 Hours _ SQL One Shot _ SQL Full Course by Sumit Sir 31-2 screenshot](https://github.com/user-attachments/assets/b94d9c43-0668-4d7f-becc-b3ec241cec9d)



int for numeric

varchar for string


![SQL - Complete Course in 9 Hours _ SQL One Shot _ SQL Full Course by Sumit Sir 37-41 screenshot](https://github.com/user-attachments/assets/e59b9e9d-eb2b-4083-8a46-bfc30d0d516d)


![SQL - Complete Course in 9 Hours _ SQL One Shot _ SQL Full Course by Sumit Sir 45-48 screenshot](https://github.com/user-attachments/assets/17176ad5-ada7-493b-9be6-c1103b258d2c)

![SQL - Complete Course in 9 Hours _ SQL One Shot _ SQL Full Course by Sumit Sir 3-4-28 screenshot](https://github.com/user-attachments/assets/b01e7483-59bf-4ffd-a9bd-6cba696af745)

no duplicates are there

% is a wildcard character

'%ra%' means the characters ra can be anywhere in the word 

like virat

rangi

rat

if the word should start with ra the 'ra%' 

rahul.

if end with "%at"

virat

like '-----'  means the word should contain only 5 characters but it can be anything.

![SQL - Complete Course in 9 Hours _ SQL One Shot _ SQL Full Course by Sumit Sir 3-51-46 screenshot](https://github.com/user-attachments/assets/71591a07-4cef-4731-908b-15bafb019171)

![SQL - Complete Course in 9 Hours _ SQL One Shot _ SQL Full Course by Sumit Sir 3-52-24 screenshot](https://github.com/user-attachments/assets/38f6ba1c-d0f5-438d-bdea-40cfbc0d11ae)

![SQL - Complete Course in 9 Hours _ SQL One Shot _ SQL Full Course by Sumit Sir 3-55-25 screenshot](https://github.com/user-attachments/assets/95a9b95d-3644-497a-a630-aa19869497fa)

![SQL - Complete Course in 9 Hours _ SQL One Shot _ SQL Full Course by Sumit Sir 3-55-28 screenshot](https://github.com/user-attachments/assets/e1d747ff-b1d8-4ee1-86bc-16530cb5e7c5)


![SQL - Complete Course in 9 Hours _ SQL One Shot _ SQL Full Course by Sumit Sir 3-56-6 screenshot](https://github.com/user-attachments/assets/390fd086-db00-4242-96f0-b7574d89c91d)

![SQL - Complete Course in 9 Hours _ SQL One Shot _ SQL Full Course by Sumit Sir 4-0-43 screenshot](https://github.com/user-attachments/assets/0101ff55-8e98-4d91-9474-26af7cfee530)

![SQL - Complete Course in 9 Hours _ SQL One Shot _ SQL Full Course by Sumit Sir 4-1-50 screenshot](https://github.com/user-attachments/assets/74191921-d5d8-42bc-a742-3503247c1724)


select location, count(*) from students group by source_of_joining;

this will give an error because the selecting attribute should be as group by

![SQL - Complete Course in 9 Hours _ SQL One Shot _ SQL Full Course by Sumit Sir 4-2-29 screenshot](https://github.com/user-attachments/assets/2f572488-ea6d-4732-9663-639206f28e2d)

![SQL - Complete Course in 9 Hours _ SQL One Shot _ SQL Full Course by Sumit Sir 4-4-53 screenshot](https://github.com/user-attachments/assets/48545830-bf9b-4b21-bd06-c512fa46a22a)

![SQL - Complete Course in 9 Hours _ SQL One Shot _ SQL Full Course by Sumit Sir 4-9-53 screenshot](https://github.com/user-attachments/assets/2beff95f-0d50-4c80-8177-8c5e6d2f22db)

select MIN(years_of_exp),student_name from students; 

gives an error

![SQL - Complete Course in 9 Hours _ SQL One Shot _ SQL Full Course by Sumit Sir 4-11-16 screenshot](https://github.com/user-attachments/assets/250e2fb5-f0f0-47c8-b68b-25b45c1cc5a1)

select MIN(years_of_exp),student_name from students; instead of this you this

select student_fname from students order by years_of_exp limit 1;


![SQL - Complete Course in 9 Hours _ SQL One Shot _ SQL Full Course by Sumit Sir 4-12-9 screenshot](https://github.com/user-attachments/assets/4957b6e7-6558-49fd-ae86-d1a37a554e4b)


each source of joining i want to get max experienc and followed by that

![SQL - Complete Course in 9 Hours _ SQL One Shot _ SQL Full Course by Sumit Sir 4-14-43 screenshot](https://github.com/user-attachments/assets/6d75a366-4c53-4d03-aec6-488e1b382755)

![SQL - Complete Course in 9 Hours _ SQL One Shot _ SQL Full Course by Sumit Sir 4-16-27 screenshot](https://github.com/user-attachments/assets/d42eaf55-36b0-4dce-a916-b563602b31f1)

![SQL - Complete Course in 9 Hours _ SQL One Shot _ SQL Full Course by Sumit Sir 4-16-16 screenshot](https://github.com/user-attachments/assets/e50f9184-323b-4b6c-8c86-14b659ec2466)



![SQL - Complete Course in 9 Hours _ SQL One Shot _ SQL Full Course by Sumit Sir 4-17-30 screenshot](https://github.com/user-attachments/assets/7a1fc977-8cd1-4113-a866-d7f8506b47bf)


timestamp is fixed whiile creating a value to change the value on timestamp doing updating values 
use command like

![Screenshot 2024-11-21 112348](https://github.com/user-attachments/assets/c0b2eedb-22b2-4eab-99da-970c56e6a2ff)

![SQL - Complete Course in 9 Hours _ SQL One Shot _ SQL Full Course by Sumit Sir 4-47-48 screenshot](https://github.com/user-attachments/assets/535e9877-8c4c-4fa2-af49-badd7fb0cb53)

![SQL - Complete Course in 9 Hours _ SQL One Shot _ SQL Full Course by Sumit Sir 4-52-58 screenshot](https://github.com/user-attachments/assets/125ec5d4-2c11-448c-859f-d0c94ba74da6)



![SQL - Complete Course in 9 Hours _ SQL One Shot _ SQL Full Course by Sumit Sir 4-56-32 screenshot](https://github.com/user-attachments/assets/ae9bf310-66cf-4ebf-b375-9d75d033f9df)

![SQL - Complete Course in 9 Hours _ SQL One Shot _ SQL Full Course by Sumit Sir 5-1-53 screenshot](https://github.com/user-attachments/assets/b9f2976b-5602-495a-b82b-c31a9fe68870)

![SQL - Complete Course in 9 Hours _ SQL One Shot _ SQL Full Course by Sumit Sir 5-3-5 screenshot](https://github.com/user-attachments/assets/ffa13f63-b396-41c7-968e-76490d8377fd)


![Screenshot 2024-11-21 112348](https://github.com/user-attachments/assets/4f726f41-c0da-4e4a-a2a4-3bdfda285d34)


![SQL - Complete Course in 9 Hours _ SQL One Shot _ SQL Full Course by Sumit Sir 5-15-38 screenshot](https://github.com/user-attachments/assets/a3f43885-f154-4555-9369-abb5576eeed0)

![SQL - Complete Course in 9 Hours _ SQL One Shot _ SQL Full Course by Sumit Sir 5-18-51 screenshot](https://github.com/user-attachments/assets/953dcfd1-15b8-4cdc-8364-1293fbee1fdc)

![SQL - Complete Course in 9 Hours _ SQL One Shot _ SQL Full Course by Sumit Sir 5-19-9 screenshot](https://github.com/user-attachments/assets/b7a1a569-5ba9-41fd-8416-9b8a82347fcf)



