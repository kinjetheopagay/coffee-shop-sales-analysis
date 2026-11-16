
-- =====================================================
-- Coffee Shop Sales Analysis
-- Script: 02_data_quality_checks.sql
-- Purpose: Assess data quality and investigate potential inconsistencies
-- Dataset: Coffee Shop Sales (January - June 2023)
-- =====================================================


-- =====================================================
-- 1. CHECK FOR MISSING VALUES (NULL)
-- =====================================================

-- Count non-NULL values in each column.
-- Compare each count with the total number of records
-- to identify columns containing missing values.

SELECT
    COUNT(*) AS total_records,
    COUNT(transaction_id) AS transaction_id_count,
    COUNT(transaction_date) AS transaction_date_count,
    COUNT(transaction_time) AS transaction_time_count,
    COUNT(transaction_qty) AS transaction_qty_count,
    COUNT(store_id) AS store_id_count,
    COUNT(store_location) AS store_location_count,
    COUNT(product_id) AS product_id_count,
    COUNT(unit_price) AS unit_price_count,
    COUNT(product_category) AS product_category_count,
    COUNT(product_type) AS product_type_count,
    COUNT(product_detail) AS product_detail_count
FROM dbo.coffee_sales;


-- FINDING:
-- All columns returned 149,116 non-NULL values.
-- No missing values were detected.


-- =====================================================
-- 2. CHECK FOR DUPLICATE TRANSACTION IDs
-- =====================================================

-- Count the number of unique transaction IDs.

SELECT COUNT(DISTINCT transaction_id) AS unique_transaction_ids
FROM dbo.coffee_sales;


-- Check whether any transaction ID appears more than once.

SELECT
    transaction_id,
    COUNT(*) AS occurrence_count
FROM dbo.coffee_sales
GROUP BY transaction_id
HAVING COUNT(*) > 1;


-- FINDING:
-- There are 149,116 unique transaction IDs.
-- No repeated transaction IDs were detected.


-- =====================================================
-- 3. CHECK FOR EXACT DUPLICATE ROWS
-- =====================================================

-- Group records using all dataset columns to identify
-- rows where every column has identical values.

SELECT
    transaction_id,
    transaction_date,
    transaction_time,
    transaction_qty,
    store_id,
    store_location,
    product_id,
    unit_price,
    product_category,
    product_type,
    product_detail,
    COUNT(*) AS occurrence_count
FROM dbo.coffee_sales
GROUP BY
    transaction_id,
    transaction_date,
    transaction_time,
    transaction_qty,
    store_id,
    store_location,
    product_id,
    unit_price,
    product_category,
    product_type,
    product_detail
HAVING COUNT(*) > 1;


-- FINDING:
-- No exact duplicate row combinations were detected.


-- =====================================================
-- 4. CHECK FOR INVALID TRANSACTION QUANTITIES
-- =====================================================

-- Identify records with zero or negative quantities.

SELECT
    COUNT(*) AS invalid_quantity_count
FROM dbo.coffee_sales
WHERE transaction_qty <= 0;


-- FINDING:
-- No zero or negative transaction quantities were detected.


-- =====================================================
-- 5. CHECK FOR INVALID UNIT PRICES
-- =====================================================

-- Identify records with zero or negative unit prices.

SELECT
    COUNT(*) AS invalid_unit_price_count
FROM dbo.coffee_sales
WHERE unit_price <= 0;


-- FINDING:
-- No zero or negative unit prices were detected.


-- =====================================================
-- 6. IDENTIFY PRODUCTS WITH VARYING UNIT PRICES
-- =====================================================

-- Compare the minimum and maximum recorded unit prices
-- for each product ID and product type.
-- Identify products with more than one recorded price.

SELECT
    product_id,
    product_type,
    MIN(unit_price) AS min_price,
    MAX(unit_price) AS max_price
FROM dbo.coffee_sales
GROUP BY
    product_id,
    product_type
HAVING MIN(unit_price) <> MAX(unit_price)
ORDER BY product_id;


-- FINDING:
-- 15 product IDs were found with varying unit prices.
-- These variations require further investigation to
-- determine whether they represent pricing adjustments
-- or potential data inconsistencies.
-- The query returned these 15 product IDs:  9, 69, 70, 71, 72, 73, 74, 75, 76, 78, 79, 81, 82, 83, 87 
-- These product_id's have a different MIN and MAX unit_price which means they are inconsistent and may have some deeper reasons of change.


-- =====================================================
-- 7. INVESTIGATE PRODUCT ID 9 - ORGANIC DECAF BLEND
-- =====================================================

-- Identify the distinct unit prices recorded for Product ID 9.

SELECT DISTINCT
    product_id,
    product_type,
    product_detail,
    unit_price
FROM dbo.coffee_sales
WHERE product_id = 9
ORDER BY unit_price;


-- Investigate prices recorded on the 7th day of each month.
-- Compare the prices across different transaction hours.

SELECT
    transaction_date,
    DATENAME(MONTH, transaction_date) AS month,
    transaction_time,
    unit_price
FROM dbo.coffee_sales
WHERE product_id = 9
AND DAY(transaction_date) = 7
GROUP BY
    transaction_date,
    transaction_time,
    unit_price
ORDER BY
    transaction_date,
    transaction_time,
    unit_price;


-- Investigate prices recorded on the 30th day of the month.

SELECT
    transaction_date,
    transaction_time,
    unit_price
FROM dbo.coffee_sales
WHERE product_id = 9
AND DAY(transaction_date) = 30
ORDER BY
    transaction_date,
    transaction_time;


-- FINDING:
-- Product ID 9 (Organic Decaf Blend) has four recorded
-- unit prices: $12.00, $22.50, $23.00, and $28.00.
--
-- Price variations were observed on selected dates and
-- transaction hours. However, no consistent pricing
-- pattern could be established from the investigation.
--
-- The reason for these variations remains undetermined.

---------------------------------------------------------------------------------------------
-- TODAY'S BIG FINDING:

-- =====================================================
-- 8. INVESTIGATE PRODUCT ID 69 - HAZELNUT BISCOTTI
-- =====================================================

-- 8.1 Identify the distinct prices recorded for Product ID 69.

SELECT DISTINCT
    product_id,
    product_type,
    product_detail,
    unit_price
FROM dbo.coffee_sales
WHERE product_id = 69
ORDER BY unit_price;


-- 8.2 Compare the recorded prices across store locations.

SELECT DISTINCT
    product_id,
    product_type,
    store_location,
    product_detail,
    unit_price
FROM dbo.coffee_sales
WHERE product_id = 69
ORDER BY unit_price;


-- 8.3 Investigate prices recorded on the 9th day of each month
-- at the Lower Manhattan store.

SELECT
    transaction_date,
    DATENAME(MONTH, transaction_date) AS month,
    transaction_time,
    unit_price
FROM dbo.coffee_sales
WHERE product_id = 69
AND DAY(transaction_date) = 9
AND store_location = 'Lower Manhattan'
GROUP BY
    transaction_date,
    unit_price,
    transaction_time
ORDER BY
    transaction_date,
    transaction_time,
    unit_price;


-- 8.4 Compare minimum and maximum prices for each month
-- at the Lower Manhattan store.

SELECT
    DATENAME(MONTH, transaction_date) AS month,
    MIN(unit_price) AS min_price,
    MAX(unit_price) AS max_price
FROM dbo.coffee_sales
WHERE product_id = 69
AND store_location = 'Lower Manhattan'
GROUP BY DATENAME(MONTH, transaction_date);


-- 8.5 Count the number of records for each unit price.

SELECT
    unit_price,
    COUNT(*) AS record_count
FROM dbo.coffee_sales
WHERE product_id = 69
AND store_location = 'Lower Manhattan'
GROUP BY unit_price;


-- 8.6 Identify which days of the month have each unit price.

SELECT
    DAY(transaction_date) AS day_of_month,
    unit_price,
    COUNT(*) AS record_count
FROM dbo.coffee_sales
WHERE product_id = 69
AND store_location = 'Lower Manhattan'
GROUP BY
    unit_price,
    DAY(transaction_date)
ORDER BY
    day_of_month,
    unit_price;


-- 8.7 Verify the exact dates when the higher price was recorded.

SELECT
    transaction_date,
    COUNT(*) AS record_count
FROM dbo.coffee_sales
WHERE product_id = 69
AND store_location = 'Lower Manhattan'
AND unit_price = 4.06
GROUP BY transaction_date
ORDER BY transaction_date;


-- FINDING:
-- Product ID 69 (Hazelnut Biscotti) has two recorded
-- unit prices: $3.25 and $4.06.
--
-- The $4.06 price appears exclusively at the Lower
-- Manhattan store.
--
-- At Lower Manhattan, 688 records have a unit price
-- of $3.25, while 21 records have a unit price of $4.06.
--
-- All 21 records with the higher price occurred on the
-- 9th day of each month from January through June 2023:
--
-- January 9:  2 records
-- February 9: 2 records
-- March 9:    5 records
-- April 9:    3 records
-- May 9:      6 records
-- June 9:     3 records
--
-- This recurring pattern may indicate a promotional
-- or pricing adjustment, but the reason cannot be
-- confirmed from the available dataset.
