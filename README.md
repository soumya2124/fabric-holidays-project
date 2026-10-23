Microsoft Fabric Learning Projects

Two beginner end-to-end projects built in Microsoft Fabric while preparing for the DP-600 exam.

Project 1: Public Holidays Analytics (Lakehouse)

**Goal:** Turn raw public holiday data into a report showing holidays by country and year.

**Steps**
1. Created a lakehouse (`Second_Lakehouse`) and loaded the public holidays sample data.
2. Cleaned the data in a PySpark notebook (`Second_Notebook.ipynb`):
   - Removed duplicates
   - Converted the date column and added year and month columns
3. Saved the result as a silver table (`holidays_silver`).
4. Aggregated holidays per country and year into a gold table (`holidays_by_country_year`).
5. Built a Direct Lake semantic model (`Holiday_model`) with the measure `Total Holidays`.
6. Created a Power BI report (`Holiday_report`) with a bar chart and a year slicer.
7. Automated the notebook with a data pipeline (`Holiday_pipeline`).

**Data flow:** raw (`publicholidays`) → silver (`holidays_silver`) → gold (`holidays_by_country_year`)

## Project 2: NYC Taxi Analytics (Warehouse)

**Goal:** Explore taxi trip data with T-SQL and build a star schema report.

**Steps**
1. Created a warehouse (`Third_warehouse`) using the NYC Taxi sample data.
2. Wrote T-SQL queries: `TOP`, `GROUP BY`, `HAVING`, and `INNER JOIN`.
3. Built a semantic model (`third_model`, Direct Lake on SQL) with these tables:
   - Fact table: `Trip`
   - Dimension tables: `Date` and `Geography`
4. Created relationships (Date to Trip, Geography to Trip) and the measure `Total Revenue = SUM(Trip[TotalAmount])`.
5. Created a report showing revenue by day of the week, with a county slicer.

## Fabric Items Used

Lakehouse, Warehouse, Notebook, Data pipeline, Semantic model, Power BI report.

Key Concepts Practised

- Medallion architecture (raw, silver, gold)
- PySpark transformations and Delta tables
- T-SQL aggregation, joins and `HAVING` versus `WHERE`
- Star schema, relationships and DAX measures
- Direct Lake storage mode

Repository Contents

- `Second_Notebook.ipynb`: PySpark notebook for Project 1
- `images/`: screenshots of the report, pipeline and model (optional)
- `warehouse/`: T-SQL queries for Project 2 (optional)
