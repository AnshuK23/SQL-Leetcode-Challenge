PROBLEM : 197

Table: Weather

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| recordDate    | date    |
| temperature   | int     |
+---------------+---------+
id is the primary key for this table.
This table contains information about the temperature on a certain day.
 

Write an SQL query to find all dates' Id with higher temperatures compared to its previous dates (yesterday).

Return the result table in any order.

SOLUTION:

SELECT w1.id 
FROM Weather w1 ,Weather w2 
WHERE w1.temperature < w2.temperature AND DATEDIFF(day,w1.recordDate,w2.recordDate) =1;
