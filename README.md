# Data_Analyst-Task-6
#  Sales Trend Analysis Using Aggregations (Oracle SQL)
This project focuses on analyzing monthly sales revenue and order volumes using SQL aggregation techniques in Oracle Database Express Edition 11g. The analysis helps understand time-based sales trends and identify key product insights.

---

##  Tools Used
- Oracle Database Express Edition 11g
- SQL Developer

---

##  Dataset
- **Database Name:** `Raj_task_4`
- **Tables Used:**
  - `orders` (`order_id`, `order_date`, `amount`, `product_id`)
  - `products` (`product_id`, `product_name`, `category`, `price`) *(used for extended analysis)*
---

##  Objective
To perform monthly sales trend analysis using SQL aggregations like `SUM`, `COUNT`, `GROUP BY`, and `TO_CHAR`, and to optionally derive more insights using the `products` table.

---

##  Tasks Completed

1. Created and populated `orders` and `products` tables with sample data.
2. Extracted month and year using `TO_CHAR(order_date, 'YYYY-MM')`.
3. Calculated monthly total revenue using `SUM(amount)`.
4. Counted monthly distinct orders using `COUNT(DISTINCT order_id)`.
5. Sorted results using `ORDER BY year_month`.
6. Filtered data for specific time periods (if needed).
7. **(Addtional)**: Performed product-level and category-level trend analysis by joining with `products` table.

---

##  Deliverables
- SQL script file (`sales_trend_analysis.sql`)
- Screenshots of SQL output PDF file (`Data_Analyst Task 6.pdf`)

---

##  How to Run
1. Open Oracle SQL Developer.
2. Create the required tables and insert sample data.
3. Execute the SQL queries from the script to generate the output.

---

##  Learning Outcome
- Practical understanding of SQL aggregation and grouping.
- How to analyze time-series sales data using SQL.
- Integration of product data for enhanced reporting.


