
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
├── data/
│   └── README.md
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

## Business Understanding & Interview Preparation

### Why I Chose This Dataset

I chose the Coffee Shop Sales dataset because of my previous experience working as a Starbucks barista. Having firsthand experience in the coffee shop industry gave me a better understanding of how daily operations work, particularly during peak hours, product demand, inventory preparation, and customer service.

I wanted to work with a dataset related to an industry I was already familiar with so I could connect my practical experience with the technical skills I was developing in SQL and Excel.

I also saw an opportunity to investigate how sales data could help coffee shop management make better operational and business decisions.

### What I Discovered from the Data

My investigation revealed several areas where sales data could provide useful insights:

- **Peak-Hour Performance:** 10:00 AM recorded the highest hourly revenue at $88,673.39, with 9:00 AM and 8:00 AM also recording high revenue. This highlights the importance of understanding morning demand.
- **Product Performance:** Barista Espresso was the highest-revenue product type, generating $91,406.20. Coffee and Tea were also the leading product categories, contributing approximately 66.74% of total revenue.
- **Store Performance:** Hell's Kitchen recorded the highest revenue among the three locations, although the differences between stores were relatively small.
- **Monthly Trends:** Revenue increased over the reporting period, with June recording the highest monthly revenue at $166,485.88.
- **Lower-Revenue Categories:** Packaged Chocolate and Flavours generated the lowest category revenues, suggesting areas that management could investigate further.

### How I Would Help the Business

Based on the findings and my understanding of coffee shop operations, I identified several opportunities where management could use data to improve decision-making.

**1. Improve Staff Scheduling During Peak Hours**

The hourly revenue analysis shows that morning hours, particularly around 8:00 AM to 10:00 AM, are important sales periods.

Management could review staffing schedules and consider allocating sufficient personnel during these periods to handle customer demand, maintain service speed, and reduce potential waiting times.

I would also recommend analyzing hourly sales separately for each store before making staffing adjustments.

**2. Improve Inventory Planning for Popular Products**

The product analysis identifies which products generate the most revenue and attract stronger sales.

Management could use product-level quantity sold, together with supplier lead times and inventory records, to determine appropriate stock levels for popular products. This could help reduce the risk of stock shortages during high-demand periods.

**3. Review Lower-Performing Products**

Products and categories with lower sales could be investigated to understand whether their performance is related to customer demand, pricing, product visibility, or other factors.

Rather than immediately removing these products, management could consider improving product presentation, reviewing pricing, or testing promotional strategies. Products that consistently underperform could then be evaluated for possible changes to the product assortment.

**4. Monitor Store-Level Performance**

Although the three stores generated relatively similar revenue, management could investigate differences in their hourly sales patterns, product preferences, and operational performance.

This could help identify successful practices in one location that might also work in another.

**5. Track Sales Trends for Better Planning**

Monitoring monthly revenue and product performance over time could help management identify changes in demand and adjust purchasing, staffing, and sales strategies accordingly.

### Expected Business Impact

If these recommendations were supported by additional operational data and implemented effectively, they could help the business:

- Improve staff allocation during high-demand periods.
- Reduce the risk of popular products becoming unavailable.
- Make more informed purchasing and inventory decisions.
- Identify products that need improvement or further evaluation.
- Improve consistency across store locations.
- Make business decisions based on actual sales performance rather than assumptions.

To evaluate the results, management could monitor indicators such as stockout frequency, inventory waste, hourly sales, customer waiting time, product sales volume, and revenue trends.

### My Key Takeaway

This project helped me understand that data analytics is not just about writing SQL queries, creating PivotTables, or building dashboards. The real value comes from understanding what the numbers mean and how they can help a business make better decisions.

My previous experience as a barista helped me recognize operational questions worth investigating, while SQL and Excel allowed me to examine those questions using actual sales data.

As an aspiring Data Analyst, I want to combine technical analysis with business understanding to provide insights that can support practical and measurable improvements.

## Data Limitations

The analysis is subject to several dataset limitations:

- The dataset covers only six months, limiting long-term and year-over-year comparisons.
- Customer information is not available, so customer-level behavior cannot be analyzed.
- Product cost information is unavailable, preventing profit and profit-margin calculations.
- The dataset does not provide a reliable order or basket identifier, limiting order-level metrics such as average order value.
- Inventory and promotional information are not included, so stock availability and promotion impact cannot be evaluated.

## Project Status

**Status: Completed**

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
