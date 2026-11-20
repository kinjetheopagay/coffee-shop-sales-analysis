# Coffee Shop Sales Analysis

An end-to-end Data Analytics portfolio project using **Microsoft SQL Server** and **Microsoft Excel** to analyze coffee shop sales performance, identify trends, and generate actionable business insights.

## Project Overview

This project analyzes six months of coffee shop sales data to understand revenue performance, product popularity, store performance, and sales trends across three store locations.

Using SQL for data exploration, data quality assessment, and sales analysis, followed by Microsoft Excel for data preparation, analysis, and dashboard development, this project demonstrates how raw transactional data can be transformed into meaningful business insights.

## Project Objectives

- Evaluate overall sales and revenue performance.
- Identify top-performing products and product categories.
- Compare revenue performance across store locations.
- Examine monthly and daily sales trends.
- Identify peak sales hours.
- Develop data-driven business recommendations.

## Dataset

**Source:** [Coffee Shop Sales Dataset – Kaggle](https://www.kaggle.com/datasets/srisyra02/coffee-shop-sales-dataset/data)

The dataset contains **149,116 records** covering January 1 to June 30, 2023.

| Dataset Information | Details |
|---|---|
| Total Records | 149,116 |
| Number of Columns | 11 |
| Reporting Period | January – June 2023 |
| Store Locations | 3 |
| Product Categories | 9 |
| Product Types | 29 |

The original CSV dataset is maintained locally and used as the source dataset for the analysis.

## Tools and Technologies

- **Microsoft SQL Server (SSMS 22)** – Data exploration, data quality checks, and sales analysis.
- **Microsoft Excel** – Data preparation, calculations, PivotTables, and dashboard development.
- **GitHub** – Project documentation, version control, and portfolio presentation.

## Project Workflow

1. Dataset inspection and data quality assessment.
2. SQL data exploration and analysis.
3. Documentation of data quality findings and business insights.
4. Excel data preparation and revenue validation.
5. Excel sales analysis using formulas and PivotTables.
6. Dashboard development and visualization.
7. Documentation of findings and business recommendations.

## Project Structure

```text
coffee-shop-sales-analysis/
├── documentation/
│   ├── data_quality_report.md
│   └── project_findings.md
├── excel/
│   ├── Coffee Shop Sales - Excel Analysis.xlsx
│   └── README.md
├── sql/
│   ├── 01_data_exploration.sql
│   ├── 02_data_quality_checks.sql
│   └── 03_sales_analysis.sql
└── README.md
```

## SQL Analysis

Microsoft SQL Server was used to explore the dataset, assess data quality, and analyze sales performance.

The SQL analysis covered:

- Dataset structure and record exploration.
- Data completeness and consistency checks.
- Total revenue and quantity sold.
- Revenue by store location.
- Revenue by product category and product type.
- Monthly and daily revenue trends.
- Hourly sales performance.
- Identification of top-performing products.

SQL concepts applied include aggregate functions, filtering, grouping, sorting, joins, subqueries, Common Table Expressions (CTEs), and window functions.

## Excel Analysis and Dashboard

Microsoft Excel was used to prepare and validate the dataset, perform sales analysis, and create a dashboard titled **Coffee Shop Performance Insights**.

The completed workbook includes:

- Structured sales data with a calculated Revenue column.
- Summary metrics and PivotTable analysis.
- Monthly, daily, store, category, hourly, and product-type revenue analysis.
- A dashboard with four key performance indicators and five charts.

### Dashboard Key Performance Indicators

| KPI | Result |
|---|---:|
| Average Monthly Revenue | $116,468.72 |
| Average Daily Revenue | $3,860.84 |
| Total Items Sold | 214,470 |
| Total Revenue | $698,812.33 |

### Dashboard Visualizations

1. Tracking Monthly Sales Performance
2. Store Revenue Comparison
3. Revenue by Product Category
4. Hourly Revenue and Items Sold
5. Top 10 Product Types by Revenue

**Excel Workbook:** [View Excel Analysis and Dashboard](excel/Coffee%20Shop%20Sales%20-%20Excel%20Analysis.xlsx)

For more details, see the [Excel Analysis Documentation](excel/README.md).

## Key Findings

The combined SQL and Excel analysis revealed the following:

- **Total Revenue:** The coffee shop generated $698,812.33 in revenue during the six-month reporting period.
- **Store Performance:** Hell's Kitchen recorded the highest revenue at $236,511.17, followed by Astoria and Lower Manhattan.
- **Product Categories:** Coffee generated the highest category revenue at $269,952.45, followed by Tea at $196,405.95. Together, these categories contributed approximately 66.74% of total revenue.
- **Monthly Performance:** June recorded the highest monthly revenue at $166,485.88.
- **Hourly Performance:** 10:00 AM recorded the highest hourly revenue at $88,673.39.
- **Top Product Type:** Barista Espresso generated the highest product-type revenue at $91,406.20.
- **Daily Performance:** June 19, 2023 recorded the highest daily revenue at $6,403.91.

## Business Recommendations

Based on the findings, the following opportunities may be worth exploring:

1. **Maintain Strong Coffee and Tea Offerings** – Since Coffee and Tea account for approximately 66.74% of total revenue, management should continue monitoring the availability and performance of popular products within these categories.

2. **Review Peak-Hour Operations** – The 10:00 AM revenue peak suggests an opportunity to review staffing, product availability, and service readiness during high-demand hours.

3. **Evaluate Product Assortment** – Lower-revenue product categories may warrant further investigation into customer demand, product visibility, pricing, and assortment decisions.

4. **Monitor Store Performance** – Although Hell's Kitchen recorded the highest revenue, the three locations generated relatively close results. Management can compare store-level trends to identify practices that may be useful across locations.

5. **Investigate Monthly Growth** – Revenue increased from the beginning of the reporting period toward June. Further investigation could help identify the factors associated with this upward trend.

These recommendations are intended as opportunities for further investigation rather than confirmed operational problems.

## Data Limitations

The analysis is subject to several dataset limitations:

- The dataset covers only six months, limiting long-term and year-over-year comparisons.
- Customer information is not available, so customer-level behavior cannot be analyzed.
- Product cost information is unavailable, preventing profit and profit-margin calculations.
- The dataset does not provide a reliable order or basket identifier, limiting order-level metrics such as average order value.
- Inventory and promotional information are not included, so stock availability and promotion impact cannot be evaluated.

## Project Status

<badge color="success">Completed</badge>

- [x] SQL data exploration and analysis
- [x] Data quality checks and documentation
- [x] SQL findings documentation
- [x] Excel workbook preparation and revenue validation
- [x] Excel sales analysis
- [x] PivotTable analysis
- [x] Excel dashboard development
- [x] Project documentation and business recommendations

## Author

**Kinje Theo P. Pagay**

Bachelor of Science in Information Technology  
Cebu Institute of Technology – University

Aspiring Data Analyst
