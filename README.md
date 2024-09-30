# Snowflake Data Engineering Project: Health Insurance Analysis

## Project Overview
This project demonstrates a Snowflake-based data engineering pipeline to load and analyze health insurance data. The dataset used includes customer demographics and insurance premium details.

## Dataset
The dataset comes from the Kaggle Health Insurance Cross Sell Prediction competition.

### Files Used:
- `train.csv`: Contains customer demographic and insurance information.
- `test.csv`: Contains demographic information for testing purposes (not yet used).
- `sample_submission.csv`: Used for submission (not yet used).

## Steps in the Project

1. **Data Loading**:
   - Loaded `train.csv` from an S3 bucket to Snowflake using the `COPY INTO` command.
   - SQL Script: [load_data.sql](./sql_scripts/load_data.sql)

2. **Table Creation**:
   - Created the `TrainData` table in Snowflake.
   - SQL Script: [create_tables.sql](./sql_scripts/create_tables.sql)

3. **Data Transformation**:
   - Added a `Premium_Flag` column to flag high-paying customers.
   - SQL Script: [data_transformation.sql](./sql_scripts/data_transformation.sql)

4. **Data Analysis**:
   - Ran SQL queries to calculate the average premium by region.
   - SQL Script: [analysis_queries.sql](./sql_scripts/analysis_queries.sql)

## Future Work
- Add `test.csv` and `sample_submission.csv` data to the pipeline.
- Build a machine learning model to predict customer responses.

## Technologies Used:
- **Snowflake**: Data warehousing and SQL processing.
- **AWS S3**: For storing the raw data.
- **SnowSQL**: For running SQL queries from the command line.
