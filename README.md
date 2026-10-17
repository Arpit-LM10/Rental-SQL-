# RENTIQ — Rental Market Intelligence System

**A MySQL project for rental property analysis, lease tracking, and payment intelligence.**

## Overview

RENTIQ is a relational database and SQL analytics project built to organise rental property information and generate useful business reports.

It connects property owners, buyers, property listings, lease agreements, and rent payments to analyse rental prices, property availability, owner portfolios, and payment collection performance.

## Objectives

- Compare listed rental prices across cities.
- Analyse property availability and rental listings.
- Track buyers, properties, and lease agreements.
- Calculate rent billed, payments collected, and outstanding balances.
- Evaluate property portfolios using SQL aggregations.
- Practise relational database design and analytical querying.

## Tech Stack

- **Database:** MySQL
- **SQL Environment:** MySQL Workbench
- **Version Control:** Git and GitHub

## Database Schema

The project uses five core tables:

| Table | Purpose |
|---|---|
| `owners` | Stores property owner details. |
| `buyers` | Stores buyer information associated with lease agreements. |
| `Properties` | Stores property details, location, listed rent, and availability. |
| `lease` | Connects buyers with properties and stores rental agreement details. |
| `Payments` | Stores billing periods, amounts due, amounts paid, and payment status. |

## Entity Relationship Diagram

The ER diagram represents the relationships between owners, properties, buyers, leases, and payments.

![RENTIQ ER Diagram](Documentation/rentiq_er_diagram.png)

The editable MySQL Workbench model is available at `Documentation/rentiq_er_diagram.mwb`.

## Key SQL Analysis

The project explores the following business questions:

- Which cities have higher average listed rents?
- How are properties distributed by availability status?
- How much rent was billed, collected, and left outstanding?
- Which owners manage more properties?
- Which listings are above their city's average rent?
- Which properties rank highest by rent within each city?
- How many leases and what active monthly rent are associated with each buyer?

It also explores reusable SQL views, index selection, and query execution plans using `EXPLAIN`.

## SQL Concepts Practised

- Primary keys and foreign keys
- INNER JOIN and LEFT JOIN
- Aggregate functions and GROUP BY
- ORDER BY and conditional logic with CASE WHEN
- Subqueries and Common Table Expressions (CTEs)
- Window functions such as ROW_NUMBER()
- Views and indexes
- Query-plan analysis and data validation

## Project Structure

- `SQL/` — table creation scripts and analytical queries
- `Documentation/` — ER diagram and editable Workbench model
- `README.md` — project documentation

## How to Run

1. Install MySQL Server and MySQL Workbench.
2. Clone or download this repository.
3. Execute the table creation scripts in dependency order.
4. Load the corresponding sample data.
5. Run the analysis queries section by section.
6. Review the outputs in MySQL Workbench.

**Note:** Ensure that the schema and sample-data statements are active in the scripts before running them on a fresh database.

## Data and Limitations

The project uses fictional sample data for demonstration and learning purposes. The results describe only the included dataset and do not represent actual rental-market statistics.

Listed rent is not equivalent to collected rent. Payment status and outstanding balances should be interpreted in the context of the records and business rules.

## Future Improvements

- Expand data validation and test coverage.
- Evaluate query execution plans with larger datasets.
- Add more detailed rental-market analysis.
- Explore a Python interface for data analysis and visualisation.

## Author

**Arpit Dubey**

GitHub: [Arpit-LM10](https://github.com/Arpit-LM10)
