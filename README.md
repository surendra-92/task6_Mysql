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
.sql code
 select 
    extract(month from order_date) as order_month,
    sum(amount) as total_revenue,
    count(distinct order_id) as order_volume
from 
    online_sales_orders
where 
     order_date between '2024-10-01' and '2024-12-31'
group by 
       extract(month from order_date)
order by 
       order_month;
       




