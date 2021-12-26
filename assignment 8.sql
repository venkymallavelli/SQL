use [WorkerData]

/*Q-1. Write an SQL query to fetch intersecting records of two tables.*/

INSERT INTO Worker_clone Values('ravi','sherawat','ravisherawat@ineuron.com','Finance', 45000,'2018-02-12')
INSERT INTO Worker_clone Values('anuj','nehra','anujnehra@ineuron.com','HR', 60000,  '2017-04-17')
INSERT INTO Worker_clone Values('rahul','jain','rahuljain@ineuron.com','Purchase', 30000, '2017-12-20')
INSERT INTO Worker_clone Values('arohi','patil','arohipatil@ineuron.com','Finance', 60000, '2019-11-12')

select * from [dbo].[worker]
intersect
select *from Worker_clone

/*Q-2. Write an SQL query to sho records from one table that another table does not
have.*/

with t1 as (select w.ID  from [dbo].[worker] w left join Worker_clone wc on w.ID = wc.ID)
select *
from Worker_clone
where ID not in (select * from t1)

