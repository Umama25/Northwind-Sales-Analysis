# Northwind Sales & Shipping Analysis

## Project Overview

This project analyzes sales performance, product and category revenue, customer activity, and shipping delays using the Northwind sample database. MySQL is used for SQL analysis and data validation, while Power BI is used to build an interactive dashboard.

## Tools & Technologies

- MySQL and MySQL Workbench
- SQL
- Power BI Desktop
- DAX
- GitHub

## Dashboard Preview

![Sales Analysis Dashboard](screenshots/sales_analysis.png)

## Dashboard Features

- Total revenue after discounts
- Total orders and customers with orders
- Total units sold
- Revenue by year and product category
- Top 10 products by revenue
- Top 10 customers by revenue
- Monthly revenue trends
- Shipping performance KPIs
- Interactive year and category slicers

## Key Findings

Based on the validated SQL results:

- **Revenue after discounts:** 1,265,793.04
- **Revenue before discounts:** 1,354,458.59
- **Total discounts:** 88,665.55
- **Units sold:** 51,317
- **Order-detail rows analyzed:** 2,155
- **Late-shipping rate:** 17.55% of shipped orders took more than 10 days from order date to ship date.

Revenue is calculated as unit price multiplied by quantity, adjusted for line-item discounts. The shipping metric measures the time between order date and ship date; it does not establish whether an order missed its required delivery date.

## SQL Analysis

The SQL scripts cover:

- Data validation and row counts
- Revenue before and after discounts
- Total discounts and units sold
- Order and customer counts
- Revenue by year and category
- Top products and customers by revenue
- Monthly revenue trends
- Shipping-delay calculations

## Project Files

- `northwind_eccomerce.pbix` — interactive Power BI report
- `sql/data_validation.sql` — validation queries
- `sql/business_analysis.sql` — sales analysis queries
- `screenshots/sales_analysis.png` — dashboard screenshot

## How to Use

1. Open MySQL Workbench and run the SQL scripts against your `northwind_ecommerce` database.
2. Open `northwind_eccomerce.pbix` in Power BI Desktop.
3. Explore the dashboard using the year and category slicers.
4. Review the SQL queries to understand how the KPIs were calculated.

## Limitations

- Northwind is a fictional sample business used for educational analysis.
- The shipping-delay metric uses order date and ship date, not actual customer delivery timestamps.
- Revenue calculations do not include freight, taxes, returns, or cost of goods sold.

## Author

Umama Bashir

Aspiring Data Analyst | SQL | Power BI | Data Analysis

- What proportion of shipped orders took more than 10 days from order date to ship date.

## Notes
- This project uses sample Northwind data for educational and portfolio purposes.
- Do not upload database passwords, credentials, or other private information.
- Verify all figures against your local database before publishing.
