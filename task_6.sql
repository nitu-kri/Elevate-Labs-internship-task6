select * from synthetic_online_retail_data;

select product_name,
sum(quantity * price) as total_sales
from synthetic_online_retail_data
group by product_name;

select order_date, price from synthetic_online_retail_data where year(order_date) in (2024, 2025)

select Year(order_date), month(order_date), sum(price) , 
lag(sum(price) , 12) over (order By  year(order_date), month(order_date))
from synthetic_online_retail_data where  year(order_date) in (2024, 2025)
group by year(order_date), month(order_date)

select count(distinct product_id) as order_volume from synthetic_online_retail_data;

