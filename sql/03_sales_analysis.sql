/*
Project: Coffee Shop Sales Analysis
Dataset: Coffee Shop Sales (January - June 2023)
Database: CoffeeShopSales
Table: dbo.coffee_sales

Purpose:
Analyze sales performance, revenue trends, and product performance
using SQL Server.

Revenue Formula:
Revenue = transaction_qty * unit_price
*/


-- =============================================
-- 1. OVERALL SALES PERFORMANCE
-- =============================================

-- 1.1 Total Revenue

SELECT CAST(SUM(transaction_qty * unit_price) AS DECIMAL(15,2)) AS total_revenue
FROM dbo.coffee_sales;


-- 1.2 Average Daily Revenue

SELECT AVG(daily_revenue) AS average_daily_revenue
FROM (SELECT transaction_date,
             SUM(transaction_qty * unit_price) AS daily_revenue
      FROM dbo.coffee_sales
      GROUP BY transaction_date) AS daily_sales;


-- =============================================
-- 2. STORE PERFORMANCE
-- =============================================

-- 2.1 Revenue by Store

SELECT store_location,
       CAST(SUM(transaction_qty * unit_price) AS DECIMAL(15,2)) AS total_revenue
FROM dbo.coffee_sales
GROUP BY store_location
ORDER BY total_revenue DESC;

-- =============================================
-- 3. PRODUCT CATEGORY PERFORMANCE
-- =============================================

-- 3.1 Revenue by Product Category

SELECT product_category,
       CAST(SUM(transaction_qty * unit_price) AS DECIMAL(15,2)) AS total_revenue
FROM dbo.coffee_sales
GROUP BY product_category
ORDER BY total_revenue DESC;

-- =============================================
-- 4. MONTHLY SALES PERFORMANCE
-- =============================================

-- 4.1 Monthly Revenue

SELECT DATENAME(MONTH, transaction_date) AS month,
       CAST(SUM(transaction_qty * unit_price) AS DECIMAL(15,2)) AS total_revenue
FROM dbo.coffee_sales
WHERE transaction_date BETWEEN '2023-01-01' AND '2023-06-30'
GROUP BY MONTH(transaction_date),
         DATENAME(MONTH, transaction_date)
ORDER BY MONTH(transaction_date);


-- =============================================
-- 5. HOURLY SALES PERFORMANCE
-- =============================================

-- 5.1 Revenue by Hour

SELECT DATEPART(HOUR, transaction_time) AS sales_hour,
       CAST(SUM(transaction_qty * unit_price) AS DECIMAL(15,2)) AS total_revenue
FROM dbo.coffee_sales
GROUP BY DATEPART(HOUR, transaction_time)
ORDER BY total_revenue DESC;

-- =============================================
-- 6. PRODUCT PERFORMANCE
-- =============================================

-- 6.1 Top Product Types by Revenue

SELECT TOP 5 product_type,
       CAST(SUM(transaction_qty * unit_price) AS DECIMAL(15,2)) AS total_revenue
FROM dbo.coffee_sales
GROUP BY product_type
ORDER BY total_revenue DESC;

-- 6.2 Top Product Types by Quantity

SELECT TOP 5 product_type,
       SUM(transaction_qty) AS total_quantity_sold
FROM dbo.coffee_sales
GROUP BY product_type
ORDER BY total_quantity_sold DESC;

-- =============================================
-- 7. REVENUE CONTRIBUTION ANALYSIS
-- =============================================

-- 7.1 Revenue Contribution by Product Type

SELECT product_revenue.product_type,
       CAST(product_revenue.total_revenue AS DECIMAL(15,2)) AS total_revenue,
       CAST((product_revenue.total_revenue / total_sales.total_revenue) * 100 AS DECIMAL(5,2)) AS revenue_percentage

FROM (SELECT product_type,
             SUM(transaction_qty * unit_price) AS total_revenue
      FROM dbo.coffee_sales
      GROUP BY product_type) AS product_revenue

CROSS JOIN (SELECT SUM(transaction_qty * unit_price) AS total_revenue
            FROM dbo.coffee_sales) AS total_sales

ORDER BY revenue_percentage DESC;
