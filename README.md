# classicmodels

## Overview
This repository contains a collection of SQL queries for practicing and learning SQL using the famous "classicmodels" sample database.
The classicmodels database is a fictional database often used for demonstrating SQL queries, relational database concepts, and more.
It contains data related to a company's customers, orders, products, and employees.

## Database Schema
The classicmodels database includes the following tables:

Customers – information about customers.

Employees – information about employees, including their office location.

Offices – details about office locations.

Orders – customer orders with status and order date.

OrderDetails – detailed information about each order's products.

Payments – customer payment transactions.

ProductLines – categories of products.

Products – specific products with their details.

## ER Diagram
![Alt text](https://www.mysqltutorial.org/wp-content/uploads/2023/10/mysql-sample-database.png)

## Setup
### Step 1: Install MySQL
To get started, you'll need MySQL installed on your local machine.

[Download and install MySQL](https://dev.mysql.com/downloads/mysql/) from the official MySQL website.
### Step 2: Download the classicmodels Database
You can download the classicmodels database script from the MySQL sample database repository:

[Download classicmodels database](https://www.mysqltutorial.org/wp-content/uploads/2023/10/mysqlsampledatabase.zip)
### Step 3: Import the Database
1- Open MySQL Workbench or any MySQL client of your choice.

2- Create a new schema (database) named classicmodels.

3- Run the provided classicmodels.sql script to populate the database.

```
CREATE DATABASE classicmodels;
USE classicmodels;
SOURCE /path/to/classicmodels.sql;
```
### Step 4: Test the Setup
Run a simple query to test the database setup:

```
SELECT * FROM customers LIMIT 10;
```
