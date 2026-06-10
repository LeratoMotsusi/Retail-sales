-- Databricks notebook source
-- 1. Which product categories generated more than 150,000 in total sales? 
SELECT `Product Category`,
       SUM(`Total Amount`)
FROM brightlearn.data.retail_sales
GROUP BY `Product Category`
HAVING SUM(`Total Amount`) > 150000;


-- 2. Which genders generated an average transaction value above 300?  
SELECT Gender,
       AVG(`Total Amount`)
FROM brightlearn.data.retail_sales
GROUP BY Gender
HAVING AVG(`Total Amount`) > 300;


-- 3. Find the top 5 customers with the highest total spending. 
SELECT `Customer ID`,
       `Total Amount`
FROM  brightlearn.data.retail_sales
ORDER BY `Total Amount`DESC
LIMIT 5;



-- 4. Which product categories have more than 300 transactions? 
SELECT COUNT('Customer ID'),
            `Product Category`
FROM brightlearn.data.retail_sales
GROUP BY `Product Category`
HAVING COUNT(`Customer ID`) > 300;



-- 5. What is the highest sale amount recorded for each product category? 
SELECT MAX(`Total Amount`),
        `Product Category`
FROM brightlearn.data.retail_sales
GROUP BY `Product Category`;



-- 6. Find the minimum sale amount for each gender.  
SELECT MIN(`Total Amount`),
        `Gender`
FROM brightlearn.data.retail_sales
GROUP BY `Gender`;



-- 7. Show categories where the average quantity sold is greater than 2. 
SELECT `Product Category`,
       AVG(Quantity)
FROM brightlearn.data.retail_sales
GROUP BY `Product Category`
HAVING AVG(Quantity) > 2;


-- 8. Find the total sales for customers aged between 25 and 40 who purchased Beauty or Clothing products.
SELECT `Customer ID`,
        `Product Category`,
        Age,
       SUM(`Total Amount`)
FROM brightlearn.data.retail_sales
WHERE `Product Category` = 'Beauty' OR `Product Category` = 'Clothing' AND Age BETWEEN 25 AND 40
GROUP BY `Customer ID`,
          `Product Category`,
          Age;



-- 9. Which product categories have a maximum sale amount greater than 1000? 
SELECT `Product Category`,
        MAX(`Total Amount`)
FROM brightlearn.data.retail_sales
GROUP BY `Product Category`
HAVING MAX(`Total Amount`) > 1000;



-- 10. Show the top 3 categories by average sales value, excluding customers under 25. 
SELECT `Product Category`,
        AVG(`Total Amount`) AS Average_Sales_Value
FROM brightlearn.data.retail_sales
WHERE NOT AGE > 25
GROUP BY `Product Category`;


