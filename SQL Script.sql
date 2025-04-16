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
       