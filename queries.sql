-- Total Sales
select sum(sales) as Total_sales from sales_data;

--  Total Order
select count( distinct `Order ID`) as Total_orders from sales_data;

-- Total Quantity sold
SELECT SUM(Quantity) AS Total_Quantity FROM sales_data;

-- Sales by category
SELECT Category,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM sales_data
GROUP BY Category
ORDER BY Total_Sales DESC;


-- Sales by Region
SELECT Region,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM sales_data
GROUP BY Region
ORDER BY Total_Sales DESC;



-- Top 10 Customers
SELECT `Customer Name`,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM sales_data
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;

-- Top 10 Products
SELECT `Product Name`,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM sales_data
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;


-- Sales by segment
SELECT Segment,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM sales_data
GROUP BY Segment
ORDER BY Total_Sales DESC;

-- Top 10 states by sales
SELECT State,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM sales_data
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 10;

-- Top Sub Categories
SELECT `Sub-Category`,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM sales_data
GROUP BY `Sub-Category`
ORDER BY Total_Sales DESC;

-- Order by Priority
SELECT `Order Priority`,
       COUNT(*) AS Total_Orders
FROM sales_data
GROUP BY `Order Priority`;

-- Average Sales per order
SELECT ROUND(AVG(Sales),2) AS Avg_Sales
FROM sales_data;

-- Highest Revenue Product Category
SELECT Category,
       SUM(Sales) AS Revenue
FROM sales_data
GROUP BY Category
ORDER BY Revenue DESC;