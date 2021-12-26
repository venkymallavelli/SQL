use [WorkerData]

/*Q-1. Write an SQL query to determine the 5th highest salary without using TO P or  LIMI T method*/

with t1 as (
select * , ROW_NUMBER() over (order by [Salary] desc) as rownumber from[dbo].[worker])
select *
from t1
where rownumber = 5

/*Q-2. Write an SQL query to fetch the list of employees with the same salary.

*/

with t1 as
(select [Salary]
from [dbo].[worker]
group by [Salary] having count(*) > 1)

select * from [dbo].[worker]
where [Salary] in (select * from t1)
order by salary desc