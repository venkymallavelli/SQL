use master

/*Q-1. Write an SQL query to print details of workers excluding first names, “Vijay” and
“Shubham” from Worker table.*/

select * from [dbo].[Worker]
where [First_Name] !='vijay' and [First_Name] !='Shubham'

/*Q-2. Write an SQL query to print details of the Workers whose FIRST_NAME ends with
‘n’ and contains fifth alphabets.*/

select * from [dbo].[Worker]
where len([First_Name]) = 5 and right([First_Name],1)='n'

/*Q-3. Write a query to validate Email of Employee.*/

select [EMAIL], concat(lower([First_Name]),lower([Last_Name]),'@gmail.com') as 'Valid-Email'
from [dbo].[Worker]
where [EMAIL]= (concat(lower([First_Name]),lower([Last_Name]),'@gmail.com'))