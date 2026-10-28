# Northwind Sales & Shipping Analysis

## Project Overview
This project analyzes sales performance, product and category revenue, customer activity, and shipping delays using the Northwind sample database. MySQL is used for SQL analysis and validation, and Power BI is used to create an interactive dashboard.

## Tools
- MySQL / MySQL Workbench
- Power BI Desktop
- SQL and DAX
- GitHub

## Dashboard Features
- Total revenue after discounts
- Total orders
- Customers with orders
- Total units sold
- Revenue by year and category
- Top 10 products and customers by revenue
- Monthly revenue trend
- Late orders and late-shipping percentage
- Year and category slicers

## Data Validation
The SQL scripts in `sql/` validate order-detail row counts, units sold, revenue before and after discounts, total discounts, order/customer counts, and shipping delays. Compare these results with the Power BI measures before publishing.

## Files
- `sql/data_validation.sql`: data quality and KPI validation queries.
- `sql/business_analysis.sql`: sales and shipping analysis queries.
- `screenshots/`: add screenshots of your finished Power BI report here.
- `northwind_eccomerce.pbix`: add your saved Power BI report to this folder.

## How to Use
1. Open MySQL Workbench and run the SQL scripts against your `northwind_ecommerce` database.
2. Open `northwind_eccomerce.pbix` in Power BI Desktop.
3. Review the screenshots and dashboard visuals.
4. Update the Key Findings section below with findings from your own validated results.

## Key Findings
Add 2–4 findings from your actual results, for example:
- Which product category generated the most revenue.
- Which products or customers contributed the most revenue.
- How revenue changed over time.
- What proportion of shipped orders took more than 10 days from order date to ship date.

## Notes
- This project uses sample Northwind data for educational and portfolio purposes.
- Do not upload database passwords, credentials, or other private information.
- Verify all figures against your local database before publishing.
