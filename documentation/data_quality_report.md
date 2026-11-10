# Data Quality Report

## 1. Overview

This report documents the initial inspection and data quality assessment of the Coffee Shop Sales dataset obtained from Kaggle.

The dataset contains coffee shop sales records covering six months of business activity. It will be used to analyze revenue, product performance, store performance, and sales trends using SQL and Microsoft Excel.

**Dataset Source:** [Coffee Shop Sales Dataset – Kaggle](https://www.kaggle.com/datasets/srisyra02/coffee-shop-sales-dataset/data)

## 2. Dataset Summary

| Attribute | Details |
|---|---|
| Total Records | 149,116 rows |
| Reporting Period | January–June 2023 |
| Expected Columns | 11 |
| Data Granularity | Individual product line items |
| Data Source | Kaggle |

### Columns

The dataset contains the following fields:

- `transaction_id`
- `transaction_date`
- `transaction_time`
- `transaction_qty`
- `store_id`
- `store_location`
- `product_id`
- `unit_price`
- `product_category`
- `product_type`
- `product_detail`

## 3. Data Quality Findings

### 3.1 Transaction Granularity

Although `transaction_id` is unique, the records do not necessarily represent complete customer orders.

Multiple rows can share the same store, transaction date, and timestamp while containing different products and transaction IDs.

The initial inspection identified 32,326 rows sharing their store, date, and time combination with another row.

This suggests that the dataset records individual product line items rather than reliably identifiable customer orders.

**Impact:** Complete customer orders cannot be reliably reconstructed because the dataset does not contain a dedicated order ID or basket ID.

### 3.2 Inconsistent Product Pricing

The initial inspection identified 15 products with inconsistent recorded unit prices, with most of the affected cases associated with one store.

These differences require further investigation before being classified as errors.

**Planned approach:** Retain the recorded prices in the primary revenue analysis and investigate the inconsistencies separately.

Revenue will be calculated using:

`Revenue = transaction_qty × unit_price`

### 3.3 Reporting Period Limitation

The dataset covers only six months, from January to June 2023.

**Impact:** The analysis can examine monthly trends within the available period but cannot provide reliable year-over-year comparisons or long-term seasonal conclusions.

### 3.4 Missing Customer Identifiers

The dataset does not contain customer IDs.

**Impact:** Customer-level purchasing behavior, retention, and customer segmentation cannot be reliably analyzed.

## 4. Analysis Considerations

The following considerations will guide the analysis:

- Preserve the original dataset during the initial analysis.
- Investigate potential data quality issues before making corrections.
- Calculate revenue using recorded quantities and unit prices.
- Avoid treating individual product line items as complete customer orders.
- Do not report average order value as a confirmed metric because order-level information is unavailable.
- Clearly distinguish verified findings from assumptions.

## 5. Conclusion

The dataset is suitable for a beginner-to-intermediate sales analytics project. It provides enough records and business attributes to investigate revenue performance, product popularity, store comparisons, and sales trends.

Although certain limitations exist, documenting and addressing these issues will help ensure that the analysis is transparent, accurate, and meaningful.

This report will be updated as additional data quality checks and SQL analysis are performed.
