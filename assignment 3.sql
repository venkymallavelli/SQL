CREATE TABLE Worker (ID INT PRIMARY KEY IDENTITY(1,1) ,
                     First_Name VARCHAR (20) NOT NULL , 
                     Last_Name VARCHAR(20) , 
                     EMAIL varchar(50) ,
                     DEPARTMENT VARCHAR(20) NOT NULL , 
                     Salary INT , 
                     Join_Date DATE) 

INSERT INTO Worker Values('Hari','Mallareddy','harim@gmail.com','Finance', 45000,'2018-02-12')
INSERT INTO Worker Values('sai pavan','pervela','psp@gmail.com','Finance', 60000,  '2017-04-17')
INSERT INTO Worker Values('Sankar','Mannem','SM@gmail.com','Developer', 30000, '2017-12-20')
INSERT INTO Worker Values('vijay','Matta','VM@gmail.com','Transportor', 60000, '2019-11-12')
INSERT INTO Worker Values('manikumar','Naidu','MKN@gmail.com','CEO',30000,  '2017-09-05')
INSERT INTO Worker Values('kiran','pilli','kpilli@gmail.com','Finance', 50000,  '2020-01-14')
INSERT INTO Worker Values('maryjoy','dokuburra','mjd@gmail.com','Finance', 45000, '2018-04-23')
INSERT INTO Worker Values('Swetha','kantumuchu','devsena@gmail.com','HR', 48000, '2018-10-10')
INSERT INTO Worker Values('Raghu','mylapudi','RM@gmail.com','Marketing', 36000,  '2017-08-22')
INSERT INTO Worker Values('saikrishna','manikyem','skm@gmail.com','Finance', 45000,  '2017-08-12')
INSERT INTO Worker Values('kishore','kittu','kk@gmail.com','Purchase', 48000,  '2018-04-08')
INSERT INTO Worker Values('siddu','pamula','spm@gmail.com','PR', 50000,  '2019-09-26')
INSERT INTO Worker Values('Harshit','Kumar','harshitkumar@gmail.com','HR', 40000,  '2018-06-05')
INSERT INTO Worker Values('Ayush','Srivastav','ayushsrivastav@gmail.com','Purchase', 30000,  '2018-08-24')
INSERT INTO Worker Values('Shreyansh','Deriya','shreyanshderiya@gmail.com','PR', 35000, '2017-07-13')
INSERT INTO Worker Values('Aryan','Sharma','aryansharma@gmail.com','Finance', 60000,  '2019-10-31')
INSERT INTO Worker Values('Snehal','Reddy','snehalreddy@gmail.com','HR', 40000, '2019-03-28')
INSERT INTO Worker Values('Shubham','Mittal','shubhammittal@gmail.com','PR', 35000,'2020-02-01')
INSERT INTO Worker Values('Rakshit','Rao','rakshitao@gmail.com','Marketing', 36000, '2018-11-30')
select * from Worker

/*Q.1 Write an SQL query to print the FIRST_NAME from Worker table after removing
white spaces from the right side.*/

SELECT RTRIM(First_name)
FROM Worker

/*Q-2. Write an SQL query that fetches the unique values of DEPARTMENT from Worker
table and prints its length.*/

select distinct([DEPARTMENT]) , LEN([DEPARTMENT]) AS LENGTH
FROM Worker

/*Q-3. Write an SQL query to fetch nth max salaries from a table.*/

SELECT MAX([Salary]) AS '6TH highest salary'
from Worker
where [Salary] not in
(select distinct top 5 [Salary] 
from Worker
order by [Salary]desc)