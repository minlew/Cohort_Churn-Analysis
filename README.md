# Cohort and Churn Analysis

## Project Description

This project performs subscription analysis using SQL queries and visualizes insights using Power BI. The main focus of the analysis is on understanding customer behavior, particularly around churn and retention rates. By leveraging subscription data, we calculate the weekly churn rates and retention trends for a given period.

## Key Features:
* Calculates the weekly churn and retention rates.
* Measures customer retention for a given number of weeks.
* Provides insights on customer behavior over time.
* Visualized in Power BI for ease of interpretation.

## Project Structure
* SQL Query 1:
    * This query calculates churn rates by week.
    * It uses common table expressions (CTEs) to group subscription data and calculate how many customers churned or retained within a specified number of weeks.
    * The final output includes key metrics such as:
        * `Churn_Rate`: The percentage of customers who have churned.
        * `Retention_Rate`: The percentage of customers retained over the same period.
        * `Retained`: The number of customers retained each week.
* SQL Query 2:
    * This query is a variation of the first one, but it focuses on a different dimension or timeframe, possibly providing more detailed insights into customer behavior.
* Power BI File:
    * This file contains visual representations of the subscription and churn data.
    * It helps in understanding the retention trends using interactive charts and tables.


## Requirements
* SQL environment to run the queries.
* Power BI Desktop to view the .pbix file.
* Dataset stored in Google BigQuery (based on the SQL references).

## How to Run
1. SQL Queries:
    * Load the provided SQL files into your SQL editor (e.g., Google BigQuery or any SQL-compatible environment).
    * Ensure the correct dataset is linked, as the queries use BigQuery-style SQL syntax.
    * Execute the queries to get the churn and retention analysis.
2. Power BI Visualization:
    * Open the .pbix file using Power BI Desktop.
    * Refresh the data if needed to visualize the latest insights.
    * Explore the various dashboards to gain insights into customer retention trends.

## Insights
* The analysis tracks customer behavior from the start of their subscription, calculating how long they stay with the service and when they are likely to churn.
* The retention rate is a key metric for understanding customer loyalty.
* These insights help businesses make informed decisions about customer retention strategies and potential improvements to reduce churn.
