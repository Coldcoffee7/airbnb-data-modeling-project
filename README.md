# Airbnb Data Modeling — Analytics Engineering with dbt & Snowflake

## Project Overview
An end-to-end analytics engineering project that models raw Airbnb data using dbt (data build tool) and Snowflake. The project demonstrates modern data engineering practices including layered data architecture, incremental loading, snapshot tracking, and automated data quality testing.

## Tech Stack
- **Data Warehouse:** Snowflake
- **Transformation Tool:** dbt (data build tool)
- **Data Source:** Inside Airbnb
- **Storage:** Amazon S3

## Architecture
The project follows a layered data modeling approach:

| Layer | Description |
|-------|-------------|
| **Raw** | Source data ingested directly from Inside Airbnb (S3) |
| **Staging** | Cleaned and standardized models, one-to-one with source tables |
| **Production** | Final fact and dimension tables ready for analytics |

## Key Features

### Incremental Fact Table Loads
- Implemented incremental load strategy on fact tables to process only new or updated records
- Reduces compute cost and improves performance on large datasets

### Snapshot Tables
- Built dbt snapshots to track historical changes to slowly changing dimensions (SCDs)
- Preserves full change history for auditing and time-based analysis

### Data Quality Testing
- Configured dbt tests (not null, unique, accepted values, referential integrity) across models
- Set up error reporting to alert on test failures and ensure data accuracy