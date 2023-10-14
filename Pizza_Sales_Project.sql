
use Pizza_Sales_Portfolio_Project

--KPI FOR PIZZA SALES

select *
from pizza_sales

--describing the data types

exec sp_help pizza_sales

--total revenue

select sum(total_price) as Revenue
from pizza_sales

--average order value

select sum(total_price)/count(distinct order_id) as avg_orders
from pizza_sales

--total pizzas sold

select sum(quantity) as pizzas_sold
from pizza_sales

--total orders made

select count(distinct order_id) as total_orders
from pizza_sales

--avg pizzas per order

select sum(quantity)/count(distinct order_id)
from pizza_sales

-----PROBLEM STATEMENT

--daily trend for total orders

select datename(dw, order_date) as order_day, count(distinct order_id) as total_orders
from pizza_sales
group by datename(dw, order_date)

--hourly trend

select datepart(hour, order_time) as order_time, count(distinct order_id) as total_orders
from pizza_sales
group by datepart(hour, order_time)
order by total_orders

--percentage of sales by pizza category

select pizza_category, sum(total_price) as total_orders, sum(total_price) * 100 / (select sum(total_price) from pizza_sales) as pct_total_orders
from pizza_sales
group by pizza_category

--pizzas sold by category

select pizza_category, sum(quantity) as pizza_sold
from pizza_sales
where month(order_date) = 12
group by pizza_category
order by pizza_sold

--top 5 best sellers

SELECT top 5 pizza_name, sum(quantity) AS sales_count
FROM pizza_sales
GROUP BY pizza_name
ORDER BY sales_count desc;

--bottom 5 worst sellers

SELECT top 5 pizza_name, sum(quantity) AS sales_count
FROM pizza_sales
GROUP BY pizza_name
ORDER BY sales_count;


