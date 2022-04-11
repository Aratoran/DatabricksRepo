-- Databricks notebook source
-- Set Up 
CREATE DATABASE IF NOT EXISTS sample_database;

-- COMMAND ----------

-- Create from External Data
USE sample_database;

--CREATE TABLE table_from_external_data LOCATION 'wasbs://courseware@dbacademy.blob.core.windows.net/how-to-ingest-data-for-databricks-sql/v01/bronze';
--SELECT * FROM table_from_external_data;

--UPDATE table_from_external_data SET topic = 'user_information' where topic = 'user_info';

--CREATE table new_table as
--select * FROM table_from_external_data;

--UPDATE new_table SET topic = 'user_information' where topic = 'user_info';
--SELECT * FROM new_table WHERE topic = 'user_information';

-- COMMAND ----------

-- Copy into Example
USE sample_database;

--CREATE TABLE copy_into_example (first_timestamp DOUBLE, gym Long, last_timestamp DOUBLE, mac STRING);

--COPY INTO copy_into_example 
--     FROM 'wasbs://courseware@dbacademy.blob.core.windows.net/how-to-ingest-data-for-databricks-sql/v01/gym-logs'
--     FILEFORMAT = JSON
--     FILES = ('20191201_2.json');
    
-- COPY INTO copy_into_example 
--     FROM 'wasbs://courseware@dbacademy.blob.core.windows.net/how-to-ingest-data-for-databricks-sql/v01/gym-logs'
--     FILEFORMAT = JSON
--     FILES = ('20191201_3.json');
    
-- COPY INTO copy_into_example 
--     FROM 'wasbs://courseware@dbacademy.blob.core.windows.net/how-to-ingest-data-for-databricks-sql/v01/gym-logs'
--     FILEFORMAT = JSON
--     PATTERN = '20191201_[0-9].json';

-- COMMAND ----------

-- Grant Privileges

-- SHOW GRANT `student@azuredatabrickstraining.onmicrosoft.com` ON DATABASE sample_database;

-- GRANT SELECT ON DATABASE sample_database TO `student@azuredatabrickstraining.onmicrosoft.com`;
-- GRANT USAGE ON DATABASE sample_database TO `student@azuredatabrickstraining.onmicrosoft.com`;

-- GRANT ALL PRIVILEGES ON DATABASE sample_database TO `student@azuredatabrickstraining.onmicrosoft.com`;

-- REVOKE SELECT ON DATABASE sample_database FROM `student@azuredatabrickstraining.onmicrosoft.com`;

-- SHOW GRANT `student@azuredatabrickstraining.onmicrosoft.com` ON DATABASE sample_database;

-- COMMAND ----------

-- Clean Up
DROP DATABASE sample_database CASCADE
