use [WorkerData]

/*Q-1. Write an SQL query to sho w the t op  n (say 10) records of a table. 

*/

declare @n as int
set @n = 10
select top (@n) *
from [dbo].[worker]

/*Q-2. Write an SQL query to determine the nth (say n=5) highest salary from a table.*/

declare @m as int
set @m = 5;

with t1 as (
select * , ROW_NUMBER() over(order by [Salary] desc) as rownumber from [dbo].[worker])
select * from t1
where rownumber = @m