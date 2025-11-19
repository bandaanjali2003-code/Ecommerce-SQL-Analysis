# Task 3: SQL for Data Analysis

##  Overview

This project demonstrates SQL-based data analysis using an Ecommerce database. The goal is to extract insights from structured data using SQL queries such as SELECT, JOIN, GROUP BY, subqueries, views, window functions, and query optimization techniques.

This repository contains:

* A full Ecommerce dataset and complete SQL analysis file (`Ecommerce.sql`)
* This README.md explaining the entire task

---

## 🗂 Dataset Used

The database consists of four main tables:

* **customers** (Customer details)
* **products** (Product catalog)
* **orders** (Customer purchases)
* **order_items** (Detailed line items for each order)

The dataset includes:

* 50 customers
* 80 products
* 150 orders
* 100 order items

---

## 🛠 Tools Used

* MySQL / PostgreSQL / SQLite (any of your choice)
* SQL Client such as:

  * MySQL Workbench
  * PgAdmin
  * DBeaver
  * SQLite Browser

---

##  How to Run This Project

1. Download the `Ecommerce.sql` file.
2. Import it into your SQL database:

   ```sql
   SOURCE Ecommercesql;
   ```
3. Execute all analysis queries.

---

##  SQL Features Demonstrated

###  Basic Queries

* SELECT
* WHERE filters
* ORDER BY sorting

###  Aggregations

* SUM(), AVG(), COUNT()
* GROUP BY

###  Joins

* INNER JOIN
* LEFT JOIN
* RIGHT JOIN

###  Subqueries

* Nested SELECT queries
* Filtering using aggregated conditions

###  Views

* Creating reusable virtual tables for analysis

###  Window Functions

* Ranking products by price

###  Index Optimization

* Improving performance using indexes

---

##  What You Learn from This Task

By completing Task 3, you will:

* Understand how to work with relational databases
* Perform analysis using SQL queries
* Use joins effectively
* Write subqueries and CTEs
* Create views for reusable analytics
* Optimize SQL operations

---