-- E-commerce Sales Analysis Project:
create database pro2;
use pro2;
select* from pro;
-- Daily/Monthly Sales Trends – Identify the sales trends on a daily, monthly, and quarterly basis.
-- Daily Sales Trend:
select Order_Date, sum(Total_Amount) as daily_sales from pro group by Order_Date order by Order_Date;

-- Monthly Sales Trends 
select month(Order_Date) as order_month, year(Order_Date) as order_year, count(*) as total_order, sum(Total_Amount)
as daily_sales from pro group by year(order_date),month (order_date) order by order_year, order_month;

SELECT 
    MONTH(Order_Date) AS order_month, 
    YEAR(Order_Date) AS order_year, 
    COUNT(*) AS total_orders, 
    SUM(Total_Amount) AS monthly_sales
FROM pro
GROUP BY YEAR(Order_Date), MONTH(Order_Date)
ORDER BY order_year, order_month;

-- Top 5 Products by Revenue:
select * from pro;
select Product_Name, sum(Total_Amount) as total_revenue from pro group by product_Name order by total_revenue DESC limit 5;
-- Bottom 5 Products by Revenue:
select Product_name, sum(Total_Amount) as total_revenue from pro group by product_name order by 
total_revenue asc limit 5;

--  Top 5 Products by Quantity Sold:
select product_Name, sum(Quantity) as total_quantity_sold from pro group by product_name order by
  total_quantity_sold desc limit 5; 
  
  --  Bottom 5 Products by Quantity Sold:
  select Product_name, sum(Quantity) as total_quantity_sold from pro group by product_name order by
  total_quantity_sold asc limit 5; 
  
  -- Top 5 Customers by Total Orders:
select Customer_ID, COUNT(Order_ID) AS Total_order from pro group by Customer_ID order by
 Total_Order desc limit 5;
