PROBLEM : 181

Table: Employee

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| salary      | int     |
| managerId   | int     |
+-------------+---------+
id is the primary key column for this table.
Each row of this table indicates the ID of an employee, their name, salary, and the ID of their manager.

Write an SQL query to find the employees who earn more than their managers.
Return the result table in any order.

SOLUTION : 
select E1.name as Employee
from Employee as E1 left join  Employee as E2 
on E1.managerId = E2.id
where (E1.salary > E2.salary);
