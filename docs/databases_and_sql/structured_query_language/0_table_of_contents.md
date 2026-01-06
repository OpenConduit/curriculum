## Table of Contents

Part I: Retrieving and Filtering Data
- Chapter 1: The Foundation of Querying
    - 1.1 The SELECT Statement
    - 1.2 The FROM Clause
    - 1.3 Limiting Results (LIMIT / TOP / OFFSET) [New - Essential for exploring data]
    - 1.4 DISTINCT: Eliminating Duplicates [New - Essential]
    - 1.5 Comments in SQL [New - Best Practice]
- Chapter 2: Filtering and Sorting
    - 2.1 The WHERE Clause [Old 4.2]
    - 2.2 SQL Operators [Old 2.3]
        - Comparison (=, <>, <, >)
        - Logical (AND, OR, NOT)
        - Range (BETWEEN)
        - Lists (IN)
        - Pattern Matching (LIKE, Wildcards)
    - 2.3 Handling NULL values (IS NULL, IS NOT NULL) [New - Common pitfall]
    - 2.4 The ORDER BY Clause [Old 4.2]

Part II: Transforming and Aggregating Data
- Chapter 3: Row-Level Functions (Scalar)
    - 3.1 Data Types Refresher (Brief) [Old 2.2]
    - 3.2 String Functions (CONCAT, SUBSTRING, REPLACE, UPPER, LOWER) [Old 9.1]
    - 3.3 Numeric Functions (ROUND, ABS, FLOOR, CEILING) [Old 9.2]
    - 3.4 Date and Time Functions (DATEADD, DATEDIFF, DATEPART) [Old 9.3]
    - 3.5 Data Type Conversion (Casting) [New - Requested]
        - CAST()
        - CONVERT() (if SQL Server specific) or :: syntax
    - 3.6 Conditional Logic (CASE WHEN, COALESCE, NULLIF) [Old 9.4]
- Chapter 4: Aggregation and Grouping
    - 4.1 Aggregate Functions (COUNT, SUM, AVG, MIN, MAX) [Old 6.1]
    - 4.2 The GROUP BY Clause [Old 6.2]
    - 4.3 Filtering Aggregates: The HAVING Clause [Old 6.2]
    - 4.4 Order of Execution (SQL vs English) [New - Critical Theory]
        - Explaining why you can't refer to an alias defined in SELECT inside the WHERE clause.

Part III: Combining Data Sets
- Chapter 5: Joining Tables
    - 5.1 Join Terminology & Aliasing [Old 7 intro]
    - 5.2 INNER JOIN [Old 7.1]
    - 5.3 Outer Joins (LEFT, RIGHT, FULL) [Old 7.2, 7.3, 7.4]
    - 5.4 CROSS JOIN (Cartesian Products) [Old 7.6]
    - 5.5 Self Joins [Old 7.5]
- Chapter 6: Set Operators
    - 6.1 UNION vs UNION ALL [New - Essential]
    - 6.2 INTERSECT and EXCEPT/MINUS [New - Direct application of Set Theory]
  
Part IV: Advanced Query Techniques
- Chapter 7: Subqueries and CTEs
    - 7.1 Scalar and Multi-row Subqueries [Old 8.1]
    - 7.2 Correlated Subqueries (EXISTS, NOT EXISTS) [Old 8.3]
    - 7.3 Common Table Expressions (CTEs) [Old 13.4 - Promoted]
        - Why CTEs are preferred over subqueries for readability.
    - 7.4 Recursive CTEs [Old 13.2]
- Chapter 8: Window Functions
    - 8.1 The OVER() clause and Partitioning [Old 13.1]
    - 8.2 Ranking Functions (ROW_NUMBER, RANK, DENSE_RANK) [Old 13.1]
    - 8.3 Offset Functions (LEAD, LAG) [Old 13.1]

Part V: Managing Data and Structures (DDL & DML)
- Chapter 9: Creating Database Objects
    - 9.1 CREATE TABLE and Data Types [Old 3.1]
    - 9.2 Data Constraints (PK, FK, UNIQUE, CHECK) [Old 5]
    - 9.3 ALTER and DROP statements [Old 3.2, 3.4]
    - 9.4 Temporary Tables (Local vs Global) [New - Requested]
    - 9.5 Views [Old 10]
- Chapter 10: Modifying Data
    - 10.1 INSERT [Old 4.1]
    - 10.2 UPDATE [Old 4.1]
    - 10.3 DELETE vs TRUNCATE [Old 4.1 & 3.3]
    - 10.4 Managing Transactions (BEGIN, COMMIT, ROLLBACK) [Old 11]

Part VI: Programming and Optimization
- Chapter 11: Programmable Objects
    - 11.1 Variables and Logic (IF/ELSE) [Old 12.4]
    - 11.2 Stored Procedures [Old 12.2]
    - 11.3 User-Defined Functions [Old 12.3]
    - 11.4 Dynamic SQL [Old 13.5]
- Chapter 12: Performance Basics
    - 12.1 Introduction to Indexes [New - High Priority]
      - Concept of B-Trees and lookup speeds.
    - 12.2 SARGable Queries (Writing efficient WHERE clauses) [New - High Priority]
    - 12.3 Reading an Execution Plan (Basics) [New - High Priority]