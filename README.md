
# Power BI Dashboard for AdventureWorks 2022 Data

## Project Overview

This project involves creating a comprehensive sales and order analysis dashboard using the **AdventureWorks 2022** database. The dashboard is designed to provide clear insights into the sales, orders, and product performance data, allowing users to interactively explore the key metrics. SQL Server is used for data extraction, while **Python (Pandas)** is used for preprocessing and modeling.

You can download and view the dashboard demonstration video here:  
[Power BI Dashboard Demo (MP4)](./Power%20BI%20Dashboard%20for%20AdventureWorks.mp4)

## Tools & Technologies
- **Data Connection:** SQL Server
- **Data Modeling and Preprocessing:** Python (Pandas)
- **Visualization:** Power BI
- **Database:** AdventureWorks 2022

## Dashboard Features

### 1. **Sales Overview (TotalDue)**
   - **Key metrics:**
     - **Total Sales (Summa):** The total amount from sales for the selected year range.
     - **Average Sales:** The average sales amount over the period.
     - **Maximal Sales:** The highest sales achieved.
     - **Total Units Sold:** The total number of products sold.

   - **Visuals:**
     - **Line Chart:** Depicting the trend of sales from 2011 to 2014.
     - **Donut Chart:** Showing sales distribution by quarter (Q1, Q2, Q3, Q4).

### 2. **Country-Wise Sales Analysis**
   - **Key Metrics:**
     - Count of Cities
     - Count of Shops
     - Total Sales (Summa)
     - Average Sales

   - **Visuals:**
     - **Bar Chart:** Shows sales amount by country, highlighting the top-performing countries.
     - **Map Visualization:** Geographical representation of sales across different regions.

### 3. **Product Performance**
   - **Key Metrics:**
     - SubTotal Sales
     - Unit Price
     - Total Units Sold
     - Order Quantity

   - **Visuals:**
     - **Table:** Displaying product-wise total sales quantity and order quantity over the years.
     - **Slicer:** Allows filtering by different years and months for detailed analysis.

### 4. **Predictive Analytics (TotalDue Prediction)**
   - A **simple linear regression model** was built to predict the **TotalDue** based on historical data.
   - The prediction is displayed using **sliders** that allow users to adjust **Order Quantity**, **Freight**, and **Year** to see the predicted value of TotalDue for 2016.

## Data Preprocessing

The data was extracted from **AdventureWorks 2022** database using SQL queries and imported into Python for cleaning and preparation. The following steps were performed:

- **Data cleaning:** Handled missing values and data inconsistencies.
- **Feature selection:** Extracted relevant fields for analysis such as OrderQty, Freight, SubTotal, UnitPrice, TotalDue, etc.
- **Data transformation:** Aggregated data by year, country, and product categories.

## SQL Queries

The data was queried from SQL Server using the **AdventureWorks2022** database. Specific tables such as **SalesOrderHeader**, **SalesOrderDetail**, **Product**, and **CountryRegion** were used to extract sales data. Custom queries were written to connect the relevant data for use in the Power BI dashboard.

## Predictive Model

A simple **linear regression model** was implemented using Python’s **scikit-learn** library. The model predicts **TotalDue** for the year 2016 based on selected inputs (OrderQty, Freight, and Year).

## How to Use

1. Clone the repository and open the Power BI file.
2. Ensure that SQL Server is properly connected to the **AdventureWorks 2022** database.
3. Refresh the data to update the metrics and visuals.
4. Explore the different pages and use the slicers to analyze specific aspects such as country, product, or predicted sales.

## Conclusion

This dashboard provides an interactive platform for analyzing sales and product performance data from AdventureWorks 2022. It integrates predictive analytics to estimate future TotalDue values, offering useful insights for business decision-making.
