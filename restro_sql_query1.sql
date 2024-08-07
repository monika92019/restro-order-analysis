-- view the order deatils

SELECT * FROM order_details;

-- what is the date range of the table?

SELECT * FROM order_details
ORDER BY order_date;

SELECT MIN(order_date), MAX(order_date) FROM order_details
ORDER BY order_date;

-- how many orders were made within this date range?

SELECT COUNT(distinct order_id) from order_details;

-- how many items were ordered within this date range? 

select count(*) from order_details;

-- which order has the most numbers of items?

select order_id, count(item_id) as num_items
from order_details
group by order_id
order by num_items desc;

-- how many orders had more than 12 items?

select count(*) from
(select order_id, count(item_id) as num_items
from order_details
group by order_id
having num_items > 12) as num_orders;



