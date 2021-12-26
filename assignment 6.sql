create database WorkerData
use [WorkerData]

CREATE TABLE worker (ID INT PRIMARY KEY IDENTITY(1,1) ,
                     First_Name VARCHAR (20) NOT NULL , 
                     Last_Name VARCHAR(20) , 
                     EMAIL varchar(50) ,
                     DEPARTMENT VARCHAR(20) NOT NULL , 
                     Salary INT , 
                     Join_Date DATE) 

INSERT INTO Worker Values('Vishal','Rathore','vishalrathore@ineuron.com','Finance', 45000,'2018-02-12')
INSERT INTO Worker Values('Rahul','Sarathe','rahulsarathe@ineuron.com','HR', 60000,  '2017-04-17')
INSERT INTO Worker Values('Anisha','Gour','anishagour@ineuron.com','Purchase', 30000, '2017-12-20')
INSERT INTO Worker Values('Saksham','Mahajan','sakshammahajan@ineuron.com','Finance', 60000, '2019-11-12')
INSERT INTO Worker Values('Aakash','Singh','amansingh@ineuron.com','Purchase',30000,  '2017-09-05')
INSERT INTO Worker Values('Ankit','Kumar','ankitkumar@ineuron.com','Marketing', 50000,  '2020-01-14')
INSERT INTO Worker Values('Riya','Agarwal','riyaagarwal@ineuron.com','Finance', 45000, '2018-04-23')
INSERT INTO Worker Values('Nishit','Sharma','nishitsharma@ineuron.com','Purchase', 48000, '2018-10-10')
INSERT INTO Worker Values('Samay','Raina','samayraina@ineuron.com','Marketing', 36000,  '2017-08-22')
INSERT INTO Worker Values('Aman','Singh','amansingh@ineuron.com','Finance', 45000,  '2017-08-12')
INSERT INTO Worker Values('Sarthak','Jain','sarthakjain@ineuron.com','Purchase', 48000,  '2018-04-08')
INSERT INTO Worker Values('Ashutosh','Patil','ashutoshpatil@ineuron.com','PR', 50000,  '2019-09-26')
INSERT INTO Worker Values('Harshit','Kumar','harshitkumar@ineuron.com','HR', 40000,  '2018-06-05')
INSERT INTO Worker Values('Ayush','Srivastav','ayushsrivastav@ineuron.com','Purchase', 30000,  '2018-08-24')
INSERT INTO Worker Values('Shreyansh','Deriya','shreyanshderiya@ineuron.com','PR', 35000, '2017-07-13')
INSERT INTO Worker Values('Aryan','Sharma','aryansharma@ineuron.com','Finance', 60000,  '2019-10-31')
INSERT INTO Worker Values('Snehal','Reddy','snehalreddy@ineuron.com','HR', 40000, '2019-03-28')
INSERT INTO Worker Values('Shubham','Mittal','shubhammittal@ineuron.com','PR', 35000,'2020-02-01')
INSERT INTO Worker Values('Rakshit','Rao','rakshitao@ineuron.com','Marketing', 36000, '2018-11-30')
select * from [dbo].[worker]

/*Q-1. Write an SQL query to print details of the Workers who have joined in Feb’2020.*/

select *
from [dbo].[worker]
where month([Join_Date]) = 2 and year([Join_Date]) = 2020

/*Q-2. Write an SQL query to fetch duplicates  have matching data in some fields of
a table.*/

/*THERE ARE"NO DUPLICATES" IN MY WORKER TABLE*/

/*Q-3. How to remove duplicate rows from Employees table.*/

/*The duplicate rows can be removed by DELETE FROM syntax .*/