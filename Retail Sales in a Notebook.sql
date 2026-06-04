-- Databricks notebook source
USE brightlearn.data;

select * 
from retail_sales
limit 100;

--Display only the Customer ID and Product Category columns
SELECT `Customer ID`,
       `Product Category`
FROM retail_sales;

-----------------------------------------------------------------------------------------------------------------------------
--Display all records in the retail sales table. 
SELECT * FROM retail_sales; 

--Display only the Customer_ID and Product_Category columns. 
SELECT `Customer ID`, `Product Category`
FROM retail_sales; 

--Comment: Display all Electronics sales transactions. 
SELECT * FROM retail_sales WHERE `Product Category`= 'Electronics'; 

--Comment: Display customers who are older than 40 years. 
SELECT * FROM retail_sales WHERE Age > 40; 

--Comment: Display transactions where the quantity purchased is 3 or more. 
SELECT * FROM retail_sales WHERE Quantity >= 3; 

--Display Beauty product sales where the total amount is greater than 100. 
SELECT * FROM retail_sales WHERE `Product Category` = 'Beauty' AND `Total Amount` > 100; 

--Display customers whose ages are between 25 and 35. 
SELECT * FROM retail_sales WHERE Age BETWEEN 25 AND 35; 

--Calculate the total sales amount for all transactions. 
SELECT SUM(`Total Amount`) AS Total_Sales FROM retail_sales; 

--Calculate the average age of all customers. 
SELECT AVG(Age) AS Average_Age FROM retail_sales; 

--Find the highest sale amount recorded. 
SELECT MAX(`Total Amount`) AS Highest_Sale FROM retail_sales; 

--Count the total number of transactions. 
SELECT COUNT(*) AS Total_Transactions FROM retail_sales; 

--Calculate total sales for each product category. 
SELECT `Product Category`, SUM(`Total Amount`) AS Total_Sales FROM retail_sales GROUP BY `Product Category`;

 --Calculate the average age for each gender. 
 SELECT Gender, AVG(Age) AS Average_Age FROM retail_sales GROUP BY Gender; 
 
 --Display all transactions from highest to lowest sales amount. 
 SELECT * FROM retail_sales ORDER BY `Total Amount` DESC;
 
 --Display all customers from youngest to oldest. 
 SELECT * FROM retail_sales ORDER BY Age ASC; 
 
 --Display product categories whose total sales exceed 50,000. 
 SELECT `Product Category`, SUM(`Total Amount`) AS Total_Sales FROM retail_sales GROUP BY `Product Category` HAVING SUM(`Total Amount`) > 50000; 
 
 --Display genders with more than 400 transactions. 
 SELECT Gender, COUNT(*) AS Transactions FROM retail_sales GROUP BY Gender HAVING COUNT(*) > 400; 
 
 --Display the first 10 records from the table. 
 SELECT * FROM retail_sales LIMIT 10; 
 
 --Display the top 5 highest sales transactions. 
 SELECT * FROM retail_sales ORDER BY `Total Amount` DESC LIMIT 5; 
 
 --Display the top 3 product categories by total sales where sales exceed 10,000. 
 SELECT `Product Category`, SUM(`Total Amount`) AS Total_Sales FROM retail_sales GROUP BY `Product Category` HAVING SUM(`Total Amount`) > 10000 ORDER BY Total_Sales DESC LIMIT 3;
