USE [WorkerData]

/*Q-1 . Write an SQL query to sho only odd rows from a table.*/

WITH t1 as(
select * , ROW_NUMBER() over(order by ID) row_no
from worker
)
select *
from t1
where t1.row_no %2!=0

/*Q-2. Write an SQL query to clone a new table from another table.*/

select *
into Worker_clone
from worker
select * from Worker_clone
