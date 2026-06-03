-- Databricks notebook source
USE brightlearn.data;



select * 
from retail_sales;


--Display only the Customer ID and Product Category columns
SELECT `Customer ID`,
       `Product Category`
FROM retail_sales;

