# Excel Analysis

This section documents the Excel portion of the Coffee Shop Sales Analysis project. Microsoft Excel was used to prepare and validate the dataset, perform sales analysis, summarize key performance metrics, and build a dashboard to communicate business insights.

## Project Workbook

The completed Excel workbook is available here:

[**Coffee Shop Sales - Excel Analysis.xlsx**](Coffee%20Shop%20Sales%20-%20Excel%20Analysis.xlsx)

The workbook contains the following worksheets:

- `Summary`
- `Sales Data`
- `Monthly Revenue`
- `Daily Revenue`
- `Store Revenue`
- `Category Revenue`
- `Hourly Revenue`
- `Product Type Revenue`
- `Dashboard`

## 1. Workbook Preparation

- Imported the coffee shop sales dataset into Microsoft Excel.
- Saved the working file in `.xlsx` format.
- Converted the dataset into an Excel Table named `Sales`.
- Formatted `transaction_date` as Short Date.
- Formatted `transaction_time` as Time.
- Added a calculated `Revenue` column using transaction quantity multiplied by unit price.

The prepared dataset contains **149,116 records** covering January 1 to June 30, 2023.

## 2. Data Validation

Key calculations were cross-checked against the SQL analysis to verify consistency.

| Metric | Excel Result |
|---|---:|
| Total Quantity Sold | 214,470 |
| Sum of Unit Prices | 504,343.03 |
| Total Revenue | 698,812.33 |

**Validation Result:** The Excel revenue calculation matched the SQL analysis result of **698,812.33**.

## 3. Sales Analysis

PivotTables and Excel calculations were used to analyze sales performance across different dimensions:

- Monthly revenue trends
- Daily revenue performance
- Revenue by store location
- Revenue by product category
- Hourly revenue and item sales
- Revenue by product type

These analyses helped identify sales patterns, compare store performance, and determine the products and periods contributing most to revenue.

## 4. Excel Dashboard

A dashboard titled **Coffee Shop Performance Insights** was developed to present the results in a consolidated and easy-to-understand format.

The dashboard includes four key performance indicators (KPIs):

- Average Monthly Revenue: **$116,468.72**
- Average Daily Revenue: **$3,860.84**
- Total Items Sold: **214,470**
- Total Revenue: **$698,812.33**

It also features five charts:

1. **Tracking Monthly Sales Performance** – Shows monthly revenue trends from January to June 2023.
2. **Store Revenue Comparison** – Compares revenue across the three store locations.
3. **Revenue by Product Category** – Highlights the revenue contribution of each product category.
4. **Hourly Revenue and Items Sold** – Compares hourly revenue and item sales.
5. **Top 10 Product Types by Revenue** – Displays the ten highest-revenue product types.

## 5. Key Findings

- Total revenue reached **$698,812.33** during the six-month analysis period.
- Coffee generated the highest category revenue at **$269,952.45**, followed by Tea at **$196,405.95**.
- Hell's Kitchen recorded the highest store revenue at **$236,511.17**.
- June generated the highest monthly revenue at **$166,485.88**.
- 10:00 AM recorded the highest hourly revenue at **$88,673.39**.
- Barista Espresso was the highest-revenue product type, generating **$91,406.20**.

## 6. Project Status

- [x] Prepare and format the dataset in Excel.
- [x] Add calculated revenue values.
- [x] Validate key calculations against SQL results.
- [x] Create a summary sheet.
- [x] Perform sales analysis using Excel formulas and functions.
- [x] Create PivotTables for different sales dimensions.
- [x] Develop the Excel dashboard.
- [x] Document the Excel analysis.

**Status: Completed**
