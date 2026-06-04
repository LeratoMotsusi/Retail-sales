-- Databricks notebook source
select * 
from brightlearn.data.retail_sales
limit 100;

--Display only the Customer ID and Product Category columns
SELECT `Customer ID`,
       `Product Category`
FROM brightlearn.data.retail_sales;

-- COMMAND ----------

USE brightlearn.data;






-- COMMAND ----------

select * 
from retail_sales;




-- COMMAND ----------

--Display only the Customer ID and Product Category columns
SELECT `Customer ID`,
       `Product Category`
FROM retail_sales;
