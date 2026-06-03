-- Databricks notebook source
USE brightlearn.data;

-- COMMAND ----------

select * 
from retail_sales;


-- COMMAND ----------

--Display only the Customer ID and Product Category columns
SELECT `Customer ID`,
       `Product Category`
FROM retail_sales;

