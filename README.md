# task6_Mysql 

in this mysql dataset shows that onlin_order

https://github.com/surendra-92/task6_Mysql/blob/main/Result%20table.png 

toal revenue month wise  october November December

![Result table](https://github.com/user-attachments/assets/06104a74-628c-4e4b-9866-92f2da0a3fa2)

above image shows that  <br>
month wise revenue from october November December <br>
-> In October Month total_Revenue is 15600 then Order_Volume is 60 <br>
-> In November Month total_revenue is 16579 then Order_Volume is 62 <br>
-> In december Month total_Revenue is 20020 then Order_Volume is 78 <br>

please see mysql script as well <br>
https://github.com/surendra-92/task6_Mysql/blob/main/SQL%20Script.sql 
<br>

Interview Questions:- <br>
1. How do you group data by month and year? <br>
You use the EXTRACT() function (or DATE_TRUNC() in some databases) to pull out the year and month from a date column: <br>
SELECT  <br>
  EXTRACT(YEAR FROM order_date) AS year, <br>
  EXTRACT(MONTH FROM order_date) AS month, <br>
  SUM(amount) AS total_revenue <br>
FROM orders <br>
GROUP BY year, month; <br>
✅ This gives you revenue grouped by each year/month combo (e.g., Oct 2024, Nov 2024...). <br>

2. What's the difference between COUNT(*) and COUNT(DISTINCT col)? <br>

Function	Description <br>
COUNT(*)	Counts all rows, including duplicates and NULLs  <br>
COUNT(DISTINCT col)	Counts unique non-NULL values in the column <br>
Example: <br>


order_id	customer_id <br>
1	A <br>
2	A <br>
3	B <br>
COUNT(*) = 3 <br>

COUNT(DISTINCT customer_id) = 2 (A, B) <br>

3. How do you calculate monthly revenue?  <br>
Use SUM(amount) grouped by month and year: <br>


SELECT <br>
  EXTRACT(YEAR FROM order_date) AS year, <br>
  EXTRACT(MONTH FROM order_date) AS month, <br>
  SUM(amount) AS revenue <br>
FROM orders <br>
GROUP BY year, month; <br>
4. What are aggregate functions in SQL?    <br>
Aggregate functions summarize data across rows. Most common ones: <br>

SUM() → total value 

AVG() → average value

COUNT() → number of items

MIN() → smallest value

MAX() → largest value

These are usually used with GROUP BY. <br>

5. How to handle NULLs in aggregates?     <br>
Aggregate functions like SUM(), AVG(), and COUNT(col) ignore NULLs by default. <br>

If you want to treat NULLs as zero, you can use COALESCE(): <br>


SUM(COALESCE(amount, 0)) <br>
✅ COALESCE() replaces NULLs with 0 before summing. <br>

6. What’s the role of ORDER BY and GROUP BY?     <br>

Clause	Purpose <br>
GROUP BY	Groups rows into buckets so aggregates can be applied <br>
ORDER BY	Sorts the final result (by column, ASC or DESC) <br>
Example: <br>
SELECT MONTH(order_date), SUM(amount) <br>
FROM orders <br>
GROUP BY MONTH(order_date) <br>
ORDER BY SUM(amount) DESC; <br>
7. How do you get the top 3 months by sales?     <br>
You calculate total revenue per month, sort it, and limit to top 3:  <br>

SELECT  <br>
  EXTRACT(MONTH FROM order_date) AS month, <br>
  SUM(amount) AS revenue <br>
FROM orders <br>
GROUP BY month <br>
ORDER BY revenue DESC <br>
LIMIT 3; <br>
✅ This gives you the top 3 months with the highest sales. <br>


 




