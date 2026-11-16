
-- =====================================================
-- Coffee Shop Sales Analysis
-- 01 - Initial Data Exploration
-- =====================================================

USE CoffeeShopSales;


-- 1. Check the total number of records
SELECT COUNT(*) AS total_records
FROM dbo.coffee_sales;


-- 2. Check the date range of the dataset
SELECT
    MIN(transaction_date) AS first_transaction_date,
    MAX(transaction_date) AS last_transaction_date
FROM dbo.coffee_sales;


-- 3. Count the number of unique store locations
SELECT COUNT(DISTINCT store_location) AS total_stores
FROM dbo.coffee_sales;


-- 4. Identify store IDs and their corresponding locations
SELECT DISTINCT
    store_id,
    store_location
FROM dbo.coffee_sales
ORDER BY store_location;


-- 5. Identify the unique product categories
SELECT DISTINCT product_category
FROM dbo.coffee_sales
ORDER BY product_category;


-- 6. Count the number of unique products
SELECT COUNT(DISTINCT product_id) AS total_products
FROM dbo.coffee_sales;


-- 7. Count the number of unique product types
SELECT COUNT(DISTINCT product_type) AS total_product_types
FROM dbo.coffee_sales;


-- 8. Calculate the total quantity of products sold
SELECT SUM(transaction_qty) AS total_quantity_sold
FROM dbo.coffee_sales;
