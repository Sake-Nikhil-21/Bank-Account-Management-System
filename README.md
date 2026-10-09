# Bank Account Management System

### DBMS Capstone Project | Aditya University | Academic Year 2026–2027

## Project Overview

The Bank Account Management System is a relational database project developed to organise and manage banking information across multiple branches. It centralises branch, customer, employee, account, transaction, and loan details in a structured database.

The project uses PostgreSQL and SQL to demonstrate database design, normalisation, data integrity, CRUD operations, joins, aggregate functions, and subqueries.

## Problem Statement

Traditional branch-wise record keeping can lead to duplicated customer records, inconsistent account information, and difficulties tracking transactions. This project addresses these issues through a centralised, normalised relational database with defined relationships and integrity constraints.

## Objectives

* Design a relational database with six related tables.
* Apply primary keys and foreign keys to maintain relationships.
* Enforce data integrity using NOT NULL, UNIQUE, CHECK, and DEFAULT constraints.
* Insert and manage representative banking records.
* Perform SQL queries for retrieval, updates, transaction history, and reporting.
* Demonstrate joins, aggregate functions, GROUP BY, HAVING, and subqueries.

## Technologies Used

* **Database:** PostgreSQL
* **Query Language:** SQL
* **Database Design:** ER modelling and relational schema
* **Normalisation:** First Normal Form (1NF), Second Normal Form (2NF), Third Normal Form (3NF)
* **Version Control:** Git and GitHub
* **Documentation:** Microsoft Word

## Database Tables

The database consists of six main tables:

| Table             | Purpose                                             |
| ----------------- | --------------------------------------------------- |
| Branch            | Stores branch details and IFSC information          |
| Customer          | Stores customer identity and contact details        |
| Employee          | Stores employee information and branch association  |
| Account           | Stores account ownership, type, balance, and status |
| TransactionRecord | Records deposits, withdrawals, and transfers        |
| Loan              | Stores customer loan information                    |

## Key Features

* Branch and customer information management
* Employee and branch relationships
* Bank account and balance management
* Deposit and withdrawal operations with transaction records
* Loan information management
* SQL-based reports and data analysis
* Data validation and referential integrity
* Aggregate queries and branch-wise balance analysis

## SQL Concepts Demonstrated

* DDL: CREATE TABLE and database structure definition
* DML: INSERT and UPDATE operations
* DQL: SELECT queries
* CRUD operations
* Primary key and foreign key constraints
* UNIQUE, CHECK, NOT NULL, and DEFAULT constraints
* INNER JOIN and related table queries
* Aggregate functions such as COUNT, SUM, and AVG
* GROUP BY and HAVING
* Subqueries and data validation

## Project Files

The main SQL scripts used in the project are:

* `ddl.sql` — Creates the six tables and their constraints.
* `dml.sql` — Inserts representative sample records.
* `queries.sql` — Contains SQL operations and analytical queries.

Additional project documentation and the demonstration video may also be included in this repository.

## How to Run the Project

1. Install PostgreSQL and open a PostgreSQL-compatible SQL client.
2. Create or select a database for the project.
3. Execute `ddl.sql` to create the tables.
4. Execute `dml.sql` to insert the sample data.
5. Execute `queries.sql` to run the SQL operations and analytical queries.
6. Review the query results and verify the constraints.

**Important:** Run the scripts in the above order. Review the SQL files before execution, especially if the DDL script contains DROP TABLE statements.

## Demonstration Video

Watch the project demonstration video:

[Mymovie2.mp4](./Mymovie2.mp4)

If the video is stored using Git LFS, make sure the file is uploaded successfully and the link points to the correct filename.

## Future Enhancements

The following improvements are proposed for future development:

* User authentication and role-based access control
* Automated loan EMI calculations
* Triggers and stored procedures
* Improved transaction controls and audit logging
* Indexing for faster queries
* A front-end interface connected to the database
* Additional dashboards and banking reports

These are proposed enhancements and are not claimed as implemented features.

## Team Members

This project was developed as a team project at Aditya University.

* **CH. Vinay Kumar** — 25B11AI225
* **S. Nikhil** — 25B11AIA57
* **T. Manish** — 25B11AIB71
* **V. Karthik** — 25B11AIC38

## Project Guidance

* **Guide:** Mrs. G. L. Narasamba
* **Co-Guide:** Mr. P. V. V. S. D. Nagendrudu

Department of Artificial Intelligence and Machine Learning
Aditya University, Surampalem, Andhra Pradesh, India.

## Conclusion

The Bank Account Management System demonstrates how a normalised relational database can organise banking records, maintain relationships between entities, enforce data integrity, and support SQL-based reporting. The project provides a foundation for future development into a more comprehensive banking application.

---

**Project:** Bank Account Management System
**Course:** Database Management Systems (DBMS)
**Academic Year:** 2026–2027
